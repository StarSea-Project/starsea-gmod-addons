if(SERVER)then
	AddCSLuaFile()
elseif(CLIENT)then
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false
	SWEP.ViewModelFOV = 65
	SWEP.Slot = 4
	SWEP.SlotPos = 3
	killicon.AddFont("wep_jack_hmcd_molotov", "HL2MPTypeDeath", "5", Color(0, 0, 255, 255))
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
SWEP.ViewModel = "models/w_models/weapons/w_jj_pipebomb.mdl"
SWEP.WorldModel = "models/w_models/weapons/w_jj_pipebomb.mdl"
if(CLIENT)then SWEP.WepSelectIcon=surface.GetTextureID("vgui/wep_jack_hmcd_pipebomb");SWEP.BounceWeaponIcon=false end
SWEP.PrintName = "管状炸弹"
SWEP.Instructions	= "这种简易爆炸装置是一根装满黑火药的重型钢管，周围有钉子。它有一个简单的短烟火引信。这种装置通过对黑火药（一种低爆炸药）的严密封存，实现了高爆炸速度和弹片投射。不过，它仍然不如适当的手榴弹那样致命或可靠。\n\n左键点燃并扔出"
SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.BobScale=3
SWEP.SwayScale=3
SWEP.Weight	= 3
SWEP.AutoSwitchTo		= true
SWEP.AutoSwitchFrom		= false
SWEP.ViewModelFlip=true
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
SWEP.Primary.Automatic   	= false
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
SWEP.HomicideSWEP=true
SWEP.CommandDroppable=true
SWEP.ENT="ent_jack_hmcd_pipebomb"
SWEP.CarryWeight=1200
--models/w_models/weapons/w_eq_pipebomb.mdl
--models/w_models/weapons/w_eq_painpills.mdl
function SWEP:Initialize()
	self:SetHoldType("grenade")
	self.Thrown=false
end
function SWEP:SetupDataTables()
	--
end
function SWEP:PrimaryAttack()
	if not(IsFirstTimePredicted())then return end
	if(self.Owner:KeyDown(IN_SPEED))then return end
	self.DownAmt=60
	self:EmitSound("snd_jack_hmcd_lighter.wav")
	timer.Simple(.5,function()
		if(IsValid(self))then
			self.Owner:ViewPunch(Angle(-10,-5,0))
			self:EmitSound("snd_jack_hmcd_throw.wav")
			self.Owner:SetAnimation(PLAYER_ATTACK1)
		end
	end)
	timer.Simple(.75,function()
		if(IsValid(self))then
			self.Owner:ViewPunch(Angle(20,10,0))
			self:ThrowGrenade()
		end
	end)
	self:SetNextPrimaryFire(CurTime()+1.5)
	self:SetNextSecondaryFire(CurTime()+1.5)
end
function SWEP:Deploy()
	if not(IsFirstTimePredicted())then return end
	self.DownAmt=10
	self:SetNextPrimaryFire(CurTime()+1)
	self:SetNextSecondaryFire(CurTime()+1)
	return true
end
function SWEP:ThrowGrenade()
	if(CLIENT)then return end
	self.Owner:SetLagCompensated(true)
	local Grenade=ents.Create("ent_jack_hmcd_pipebomb")
	Grenade.HmcdSpawned=self.HmcdSpawned
	Grenade:SetAngles(VectorRand():Angle())
	Grenade:SetPos(self.Owner:GetShootPos()+self.Owner:GetAimVector()*20)
	Grenade.Owner=self.Owner
	Grenade:Spawn()
	Grenade:Activate()
	Grenade:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity()+self.Owner:GetAimVector()*750)
	Grenade:Arm()
	self.Owner:SetLagCompensated(false)
	timer.Simple(.1,function() if(IsValid(self))then self:Remove() end end)
end
function SWEP:SecondaryAttack()
	--
end
function SWEP:Think()
	if(SERVER)then
		local HoldType="grenade"
		if(self.Owner:KeyDown(IN_SPEED))then
			HoldType="normal"
		end
		self:SetHoldType(HoldType)
	end
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
function SWEP:Reload()
	--
end
if(CLIENT)then
	local DownAmt=0
	function SWEP:GetViewModelPosition(pos,ang)
		if not(self.DownAmt)then self.DownAmt=0 end
		if(self.Owner:KeyDown(IN_SPEED))then
			self.DownAmt=math.Clamp(self.DownAmt+.2,0,60)
		else
			self.DownAmt=math.Clamp(self.DownAmt-.2,0,60)
		end
		pos=pos-ang:Up()*(self.DownAmt+7)+ang:Forward()*20-ang:Right()*13
		ang:RotateAroundAxis(ang:Up(),-10)
		return pos,ang
	end
	function SWEP:DrawWorldModel()
		local Pos,Ang=self.Owner:GetBonePosition(self.Owner:LookupBone("ValveBiped.Bip01_R_Hand"))
		if(self.DatWorldModel)then
			if((Pos)and(Ang)and(GAMEMODE:ShouldDrawWeaponWorldModel(self)))then
				self.DatWorldModel:SetRenderOrigin(Pos+Ang:Forward()*3.5+Ang:Right()*2-Ang:Up()*1)
				Ang:RotateAroundAxis(Ang:Right(),180)
				--Ang:RotateAroundAxis(Ang:Right(),90)
				self.DatWorldModel:SetRenderAngles(Ang)
				self.DatWorldModel:DrawModel()
			end
		else
			self.DatWorldModel=ClientsideModel("models/w_models/weapons/w_jj_pipebomb.mdl")
			self.DatWorldModel:SetPos(self:GetPos())
			self.DatWorldModel:SetParent(self)
			self.DatWorldModel:SetNoDraw(true)
			--self.DatWorldModel:SetModelScale(1,0)
		end
	end
end