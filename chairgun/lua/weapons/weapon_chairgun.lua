SWEP.PrintName = "Chair Gun"
SWEP.Author = "FrancisGray"
SWEP.Instructions = "一把可以发射方块的枪XD"
SWEP.Spawnable = true
SWEP.AdminOnly = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 1
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.ViewModel = "models/weapons/c_rpg.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
--以上，初始化武器属性--
function SWEP:PrimaryAttack()
    self: SetNextPrimaryFire( CurTime() + 0.1 )
    self: ThrowCube("models/weapons/w_c4.mdl")
    self: EmitSound( "AlyxEMP.Charge" )
end

function SWEP:SecondaryAttack()
    self: SetNextPrimaryFire( CurTime() + 0.1 )
    self: ThrowCube("models/weapons/w_bugbait.mdl")
    self: EmitSound( "AlyxEMP.Discharge")
end

function SWEP:ThrowCube( model_file )
    local owner = self: GetOwner()
    if( not owner:IsValid() ) then 
        return end
    if( CLIENT ) then
        return end

    local ent = ents.Create( "prop_physics" )
    if( not ent:IsValid() ) then
        return end
    
    ent:SetModel( model_file )

    local aimvec = owner:GetAimVector()
    local pos = aimvec * 16
    pos: Add( owner:EyePos() )

    ent: SetPos( pos )
    
    ent: SetAngles( owner:EyeAngles() )
    ent: Spawn()

    local phys = ent:GetPhysicsObject()
    if( not phys:IsValid() ) then
        ent:Remove()
        return end
    
    aimvec: Mul( 10000 )
    aimvec: Add( VectorRand(-10, 10) )
    phys:ApplyForceCenter( aimvec )

    cleanup.Add( owner, "props", ent)
    undo.Create( "Throw_Cube" )
        undo.AddEntity( ent )
        undo.SetPlayer( owner )
    undo.Finish()
    timer.Simple( 10, function() if ent and ent:IsValid() then ent:Remove() end end )
    end      


