if(SERVER)then
	AddCSLuaFile()
elseif(CLIENT)then
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false

	SWEP.ViewModelFOV = 55
	SWEP.UseHands = true

	SWEP.Slot = 1
	SWEP.SlotPos = 3

	killicon.AddFont("wep_hz_hmcd_pipelead", "HL2MPTypeDeath", "5", Color(0, 0, 255, 255))

	function SWEP:Initialize()
		--wat
	end

	function SWEP:DrawViewModel()	
		return false
	end

	function SWEP:DrawWorldModel()	
		self:DrawModel()
	end

	function SWEP:DrawHUD()
		--
	end
end

SWEP.Base="weapon_base"

SWEP.ViewModel = "models/weapons/tfa_nmrih/me_pipe_lead/v_me_pipe_lead_homicide.mdl"
SWEP.WorldModel = "models/weapons/tfa_nmrih/me_pipe_lead/w_pipe_lead.mdl"
if(CLIENT)then SWEP.WepSelectIcon=surface.GetTextureID("vgui/hud/tfa_nmrih_lpipe");SWEP.BounceWeaponIcon=false end
SWEP.PrintName = "水管"
SWEP.Instructions	= "这是一个从水管道拆下的其中一节小管道.你想怎么用就怎么用(伤害比棒球棍高一点点).\n每次攻击消耗30%体力.\n左键攻击."
SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.BobScale=3
SWEP.SwayScale=3
SWEP.Weight	= 3
SWEP.AutoSwitchTo		= true
SWEP.AutoSwitchFrom		= false

SWEP.CommandDroppable=false

SWEP.Spawnable			= true
SWEP.AdminOnly			= true

SWEP.Primary.Delay			= 0.5
SWEP.Primary.Recoil			= 3
SWEP.Primary.Damage			= 120
SWEP.Primary.NumShots		= 1	
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= -1
SWEP.Primary.Force			= 900
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic   	= true
SWEP.Primary.Ammo         	= "none"

SWEP.Secondary.Delay		= 0.9
SWEP.Secondary.Recoil		= 0
SWEP.Secondary.Damage		= 0
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic   	= false
SWEP.Secondary.Ammo         = "none"

SWEP.ENT="ent_hz_hmcd_pipelead"
SWEP.DeathDroppable=true
SWEP.HomicideSWEP=true
SWEP.CarryWeight=3000

function SWEP:Initialize()
	self:SetHoldType("melee2")
	self:SetWindUp(0)
	self.NextWindThink=CurTime()
end

function SWEP:SetupDataTables()
	self:NetworkVar("Float",0,"WindUp")
end

function SWEP:PrimaryAttack()
	--for i=0,10 do PrintTable(self.Owner:GetViewModel():GetAnimInfo(i)) end
	if(self.Owner.Stamina<30)then return end
	if(self.Owner:KeyDown(IN_SPEED))then return end
	if not(IsFirstTimePredicted())then
		timer.Simple(.2,function() if(IsValid(self))then self:DoBFSAnimation("idle") end end)
		return
	end
	sound.Play("snd_jack_hmcd_tinyswish",self.Owner:GetShootPos(),60,math.random(80,90))
	self:SetWindUp(1)
	self:DoBFSAnimation("idle")
	self:SetNextPrimaryFire(CurTime()+1.2)
	self.Owner:ViewPunch(Angle(0,-10,0))
	timer.Simple(.1,function()
		if(IsValid(self))then
			self.Owner:SetAnimation(PLAYER_ATTACK1)
		end
	end)
	timer.Simple(.2,function()
		if(IsValid(self))then
			self:DoBFSAnimation("Attack_Quick")
			timer.Simple(.1,function()
				if(IsValid(self))then
					self:AttackFront()
				end
			end)
		end
	end)
end

function SWEP:Deploy()
	if not(IsFirstTimePredicted())then
		self:DoBFSAnimation("draw")
		self.Owner:GetViewModel():SetPlaybackRate(.1)
		return
	end
	self:DoBFSAnimation("draw")
	self.Owner:GetViewModel():SetPlaybackRate(.25)
	if(SERVER)then sound.Play("Canister.ImpactSoft",self:GetPos(),65,math.random(90,110)) end
	return true
end

function SWEP:SecondaryAttack()
	--
end

function SWEP:Think()
	local Time=CurTime()
	if(self.NextWindThink<Time)then
		self.NextWindThink=Time+.05
		self:SetWindUp(math.Clamp(self:GetWindUp()-.1,0,1))
	end
end

function SWEP:AttackFront()
	if(CLIENT)then return end
	self.Owner:ViewPunch(Angle(0,20,0))
	self.Owner:LagCompensation(true)
	HMCD_StaminaPenalize(self.Owner,20)
	local Ent,HitPos,HitNorm=HMCD_WhomILookinAt(self.Owner,.4,70)
	local AimVec,Mul=self.Owner:GetAimVector(),1
	sound.Play("weapons/iceaxe/iceaxe_swing1.wav",self.Owner:GetShootPos(),65,math.random(60,70))
	if((IsValid(Ent))or((Ent)and(Ent.IsWorld)and(Ent:IsWorld())))then
		local SelfForce=150
		if(self:IsEntSoft(Ent))then
			sound.Play("Flesh.ImpactHard",HitPos+vector_up,65,math.random(90,110))
			SelfForce=30
			sound.Play("Flesh.ImpactHard",HitPos,65,math.random(90,110))
			sound.Play("Flesh.ImpactHard",HitPos-vector_up,65,math.random(90,110))
		else
			sound.Play("Canister.ImpactHard",HitPos,65,math.random(90,110))
			sound.Play("Canister.ImpactHard",HitPos-vector_up,65,math.random(90,110))
		end
		sound.Play("Canister.ImpactSoft",HitPos,65,math.random(90,110))
		local DamageAmt=math.random(23,30)
		local Dam=DamageInfo()
		Dam:SetAttacker(self.Owner)
		Dam:SetInflictor(self.Weapon)
		Dam:SetDamage(DamageAmt*Mul)
		Dam:SetDamageForce(AimVec*Mul/5)
		Dam:SetDamageType(DMG_CLUB)
		Dam:SetDamagePosition(HitPos)
		Ent:TakeDamageInfo(Dam)
		local Phys=Ent:GetPhysicsObject()
		if(IsValid(Phys))then
			if(Ent:IsPlayer())then Ent:SetVelocity(AimVec*SelfForce/10) end
			Phys:ApplyForceOffset(AimVec*15000*Mul,HitPos)
			Ent:SetPhysicsAttacker(self.Owner,3)
			self.Owner:SetVelocity(-AimVec*SelfForce/10)
		end
		if(Ent:GetClass()=="func_breakable_surf")then
			if(math.random(1,2)==2)then Ent:Fire("break","",0) end
		end
	end
	self.Owner:LagCompensation(false)
end

function SWEP:Reload()
	--
end

function SWEP:DoBFSAnimation(anim)
	local vm=self.Owner:GetViewModel()
	vm:SendViewModelMatchingSequence(vm:LookupSequence(anim))
end

function SWEP:IsEntSoft(ent)
	return ((ent:IsNPC())or(ent:IsPlayer())or(ent:GetClass()=="prop_ragdoll"))
end

function SWEP:Holster()
	return true
end

function SWEP:OnDrop()
	local Ent=ents.Create(self.ENT)
	Ent.HmcdSpawned=self.HmcdSpawned
	Ent:SetPos(self:GetPos())
	Ent:SetAngles(self:GetAngles())
	Ent:Spawn()
	Ent:Activate()
	Ent:GetPhysicsObject():SetVelocity(self:GetVelocity()/2)
	self:Remove()
end

if(CLIENT)then
	local DownAmt=0
	function SWEP:GetViewModelPosition(pos,ang)
		if(self.Owner:KeyDown(IN_SPEED))then
			DownAmt=math.Clamp(DownAmt+.6,0,50)
		else
			DownAmt=math.Clamp(DownAmt-.6,0,50)
		end
		ang:RotateAroundAxis(ang:Forward(),10)
		return pos+ang:Up()*0-ang:Forward()*(DownAmt-10)-ang:Up()*DownAmt+ang:Right()*(3+self:GetWindUp()*5),ang
	end
	function SWEP:DrawWorldModel()
		local Pos,Ang=self.Owner:GetBonePosition(self.Owner:LookupBone("ValveBiped.Bip01_R_Hand"))
		if(self.DatWorldModel)then
			if((Pos)and(Ang)and(GAMEMODE:ShouldDrawWeaponWorldModel(self)))then
				self.DatWorldModel:SetRenderOrigin(Pos+Ang:Forward()*4+Ang:Right()-Ang:Up()*7)
				Ang:RotateAroundAxis(Ang:Forward(),180)
				self.DatWorldModel:SetRenderAngles(Ang)
				self.DatWorldModel:DrawModel()
			end
		else
			self.DatWorldModel=ClientsideModel("models/weapons/tfa_nmrih/me_pipe_lead/w_pipe_lead.mdl")
			self.DatWorldModel:SetPos(self:GetPos())
			self.DatWorldModel:SetParent(self)
			self.DatWorldModel:SetNoDraw(true)
		end
	end
end