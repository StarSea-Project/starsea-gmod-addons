if ( SERVER ) then
	AddCSLuaFile()
else
	killicon.AddFont( "wep_jack_hmcd_suppressed", "HL2MPTypeDeath", "1", Color( 255, 0, 0 ) )
	SWEP.WepSelectIcon=surface.GetTextureID("vgui/wep_jack_hmcd_suppressed")
end
SWEP.Base = "wep_jack_hmcd_firearm_base"
SWEP.PrintName		= "瓦尔特P22半自动手枪"
SWEP.Instructions	= "这是一把半自动的小手枪，有一个10发的弹夹和一个自制的消音器。它发射的是.22LR。用它来谨慎地杀死无辜的人。\n\n左键射击\n右键瞄准\nR（装弹）键重新装弹\n射击位置很重要。\n蹲下有助于稳定。\n子弹可以跳弹并穿透。"
SWEP.Primary.ClipSize			= 10
SWEP.SlotPos=2
SWEP.ViewModel		= "models/weapons/v_pist_j228.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_p228.mdl"
SWEP.ViewModelFlip=false
SWEP.Damage=10
SWEP.SprintPos=Vector(2,.5,-12)
SWEP.SprintAng=Angle(80,0,0)
SWEP.AimPos=Vector(-2.1,0,.7)
SWEP.EjectType="auto"
SWEP.ReloadTime=3.5
SWEP.ReloadRate=.75
SWEP.ReloadSound="snd_jack_hmcd_spreload.wav"
SWEP.AmmoType="AlyxGun"
SWEP.TriggerDelay=.1
SWEP.CycleTime=.05
SWEP.Recoil=.5
SWEP.Supersonic=false
SWEP.Accuracy=.985
SWEP.CloseFireSound="snd_jack_hmcd_supppistol.wav"
SWEP.ExtraFireSound="snd_jack_hmcd_suppburst.wav"
SWEP.FarFireSound=""
SWEP.ENT="ent_jack_hmcd_revolver"
SWEP.FireAnim="fire1"
SWEP.LastFireAnim="fire_last"
SWEP.Suppressed=true
SWEP.DeathDroppable=false
SWEP.CommandDroppable=false
SWEP.MuzzleEffect="pcf_jack_mf_suppressed"
SWEP.CustomColor=Color(50,50,50,255)
SWEP.CarryWeight=1200