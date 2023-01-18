if ( SERVER ) then
	AddCSLuaFile()
else
	killicon.AddFont( "wep_jack_hmcd_rifle", "HL2MPTypeDeath", "1", Color( 255, 0, 0 ) )
	SWEP.WepSelectIcon=surface.GetTextureID("vgui/wep_jack_hmcd_suppressedrifle")
end
SWEP.Base = "wep_jack_hmcd_firearm_base"
SWEP.PrintName		= "消音毛瑟Kar98k"
SWEP.Instructions	= "这是一支老式栓动猎枪，带有瞄准镜、压制器和一个五发内藏弹夹，发射7.92x57毫米子弹。\n\n左键射击\n右键瞄准\nR（装弹）键重新装弹"
SWEP.Primary.ClipSize			= 5
SWEP.ViewModel		= "models/weapons/v_snip_jwp.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_jwp.mdl"
SWEP.ViewModelFlip=true
SWEP.Damage=115
SWEP.SprintPos=Vector(-9,0,-2)
SWEP.SprintAng=Angle(-20,-60,40)
SWEP.AimPos=Vector(1.95,-3,.5)
SWEP.ReloadTime=6
SWEP.ReloadRate=.75
SWEP.ReloadSound="snd_jack_hmcd_boltreload.wav"
SWEP.CycleSound="snd_jack_hmcd_boltcycle.wav"
SWEP.AmmoType="AR2"
SWEP.TriggerDelay=.2
SWEP.CycleTime=1.2
SWEP.Recoil=1
SWEP.Supersonic=true
SWEP.Accuracy=.9999
SWEP.ShotPitch=90
SWEP.ENT="ent_jack_hmcd_suppressedrifle"
SWEP.DeathDroppable=true
SWEP.CommandDroppable=true
SWEP.CycleType="manual"
SWEP.ReloadType="magazine"
SWEP.DrawAnim="awm_draw"
SWEP.FireAnim="awm_fire"
SWEP.ReloadAnim="awm_reload"
SWEP.CloseFireSound="snd_jack_hmcd_supppistol.wav"
SWEP.ExtraFireSound="snd_jack_hmcd_supppistol.wav"
SWEP.FarFireSound=""
SWEP.ShellType="RifleShellEject"
SWEP.Scoped=true
SWEP.Suppressed=true
SWEP.SuppressedLongGun=true
SWEP.ScopeFoV=25
SWEP.ScopedSensitivity=.1
SWEP.BarrelLength=25
SWEP.AimTime=10
SWEP.BearTime=12
SWEP.FuckedWorldModel=true
SWEP.HipHoldType="shotgun"
SWEP.AimHoldType="ar2"
SWEP.DownHoldType="passive"
SWEP.MuzzleEffect="pcf_jack_mf_suppressed"
SWEP.HolsterSlot=1
SWEP.HolsterPos=Vector(3.5,2,-4)
SWEP.HolsterAng=Angle(160,5,180)
SWEP.CarryWeight=5500