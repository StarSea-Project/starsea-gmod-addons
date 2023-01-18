if ( SERVER ) then
	AddCSLuaFile()
else
	killicon.AddFont( "wep_jack_hmcd_pistol", "HL2MPTypeDeath", "1", Color( 255, 0, 0 ) )
end
SWEP.Base = "wep_jack_hmcd_smallpistol"
SWEP.PrintName		= "Beretta PX4-Storm SubCompact"
SWEP.Instructions	= "这是你信赖的9x19毫米手枪。在你认为合适的时候使用它。\n\n左键射击\n右键瞄准\nR键装弹.\n射击位置很重要。\n蹲下有助于瞄准\n子弹可以跳弹并穿透。"
SWEP.Primary.ClipSize			= 13
SWEP.ENT="ent_jack_hmcd_pistol"
SWEP.CustomColor=Color(50,50,50,255)
SWEP.HolsterSlot=2
SWEP.DeathDroppable=true
SWEP.CloseFireSound="snd_jack_hmcd_smp_close.wav"
SWEP.FarFireSound="snd_jack_hmcd_smp_far.wav"
SWEP.CarryWeight=1200