----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[[
--           JJJJJJJJJJJ                                   kkkkkkkk                                                                                            d::::::d                       --
--           J:::::::::J                                   k::::::k                                                                                            d::::::d                       --
--           J:::::::::J                                   k::::::k                                                                                            d::::::d                       --
--           JJ:::::::JJ                                   k::::::k                                                                                            d:::::d                        --
--             J:::::J  aaaaaaaaaaaaa      cccccccccccccccc k:::::k    kkkkkkkaaaaaaaaaaaaa  rrrrr   rrrrrrrrr   uuuuuu    uuuuuunnnn  nnnnnnnn        ddddddddd:::::d   aaaaaaaaaaaaa        --
--             J:::::J  a::::::::::::a   cc:::::::::::::::c k:::::k   k:::::k a::::::::::::a r::::rrr:::::::::r  u::::u    u::::un:::nn::::::::nn    dd::::::::::::::d   a::::::::::::a       --
--             J:::::J  aaaaaaaaa:::::a c:::::::::::::::::c k:::::k  k:::::k  aaaaaaaaa:::::ar:::::::::::::::::r u::::u    u::::un::::::::::::::nn  d::::::::::::::::d   aaaaaaaaa:::::a      --
--             J:::::j           a::::ac:::::::cccccc:::::c k:::::k k:::::k            a::::arr::::::rrrrr::::::ru::::u    u::::unn:::::::::::::::nd:::::::ddddd:::::d            a::::a      --
--             J:::::J    aaaaaaa:::::ac::::::c     ccccccc k::::::k:::::k      aaaaaaa:::::a r:::::r     r:::::ru::::u    u::::u  n:::::nnnn:::::nd::::::d    d:::::d     aaaaaaa:::::a      --
-- JJJJJJJ     J:::::J  aa::::::::::::ac:::::c              k:::::::::::k     aa::::::::::::a r:::::r     rrrrrrru::::u    u::::u  n::::n    n::::nd:::::d     d:::::d   aa::::::::::::a      --
-- J:::::J     J:::::J a::::aaaa::::::ac:::::c              k:::::::::::k    a::::aaaa::::::a r:::::r            u::::u    u::::u  n::::n    n::::nd:::::d     d:::::d  a::::aaaa::::::a      --
-- J::::::J   J::::::Ja::::a    a:::::ac::::::c     ccccccc k::::::k:::::k  a::::a    a:::::a r:::::r            u:::::uuuu:::::u  n::::n    n::::nd:::::d     d:::::d a::::a    a:::::a      --
-- J:::::::JJJ:::::::Ja::::a    a:::::ac:::::::cccccc:::::ck::::::k k:::::k a::::a    a:::::a r:::::r            u:::::::::::::::uun::::n    n::::nd::::::ddddd::::::dda::::a    a:::::a      --
--  JJ:::::::::::::JJ a:::::aaaa::::::a c:::::::::::::::::ck::::::k  k:::::ka:::::aaaa::::::a r:::::r             u:::::::::::::::un::::n    n::::n d:::::::::::::::::da:::::aaaa::::::a      --
--    JJ:::::::::JJ    a::::::::::aa:::a cc:::::::::::::::ck::::::k   k:::::ka::::::::::aa:::ar:::::r              uu::::::::uu:::un::::n    n::::n  d:::::::::ddd::::d a::::::::::aa:::a     --
--      JJJJJJJJJ       aaaaaaaaaa  aaaa   cccccccccccccccckkkkkkkk    kkkkkkkaaaaaaaaaa  aaaarrrrrrr                uuuuuuuu  uuuunnnnnn    nnnnnn   ddddddddd   ddddd  aaaaaaaaaa  aaaa     --
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
GM.Name 	= "谋杀模式Plus：Homicide"
GM.Author 	= "Jackarunda(English ver.); Francisgray & Shirakaze(Chinese)"
GM.Email 	= ""
GM.Website 	= ""
GM.Version = "35"
game.AddParticles("particles/pcfs_jack_muzzleflashes.pcf")
game.AddParticles("particles/pcfs_jack_explosions_small3.pcf")
game.AddParticles("particles/pcfs_jack_explosions_incendiary2.pcf")
game.AddDecal("hmcd_jackanail","decals/mat_jack_hmcd_nailhead")
game.AddDecal("hmcd_jackatape","decals/mat_jack_hmcd_ducttape")
player_manager.AddValidModel("Homicide Murderer","models/player/mkx_jajon.mdl")
player_manager.AddValidHands("Homicide Murderer","models/player/mkx_jajon_hands.mdl",0,"10000000")
player_manager.AddValidModel("Homicide Alpha-Zombie","models/player/zombie_classic.mdl")
---- TODO: ----
-- remove the medal shit from the tips
-- the prop of the arrow kills, why
-- hiding in object when the round ends
-- speed up wep aiming, reduce wep wobble, fix bug with containers getting you stuck, add sounds to container enter/exit, make knife quieter, make the pedestrian indicator shorter ranged in DM
-- the living respawn as cops at coptime
-- export the css glock18 pistol model
-- make a different wepselect system
-- change loot to containers you gotta open
-- the dead have a deathmatch with 1 ethereal firearm
-- the dead have a range of ethereal weapons of powers corresponding to how long they lived
-- multiple killers when there are enough players
-- blowdart
-- stungun
-- peperspray
----
HMCD_SkillAwards={
	{"pt",4.6,999999},
	{"au",3.7,4.6},
	{"pd",2.9,3.7},
	{"ir",2.2,2.9},
	{"os",1.6,2.2},
	{"ru",1.1,1.6},
	{"ag",.7,1.1},
	{"sn",.4,.7},
	{"ni",.2,.4},
	{"cu",0,.2}
}
HMCD_ExperienceAwards={
	{"10",15360,999999},
	{"9",7680,15360},
	{"8",3840,7680},
	{"7",1920,3840},
	{"6",960,1920},
	{"5",480,960},
	{"4",240,480},
	{"3",120,240},
	{"2",60,120},
	{"1",0,60}
}

HMCD_Tips={
	"手里剑不是杀人的武器。它对毒害和削除无法触及的人很有用。",
	"凶手的刀背刺时伤害更大。",
	"简易爆炸装置可以藏在大多数道具里面。某些道具会给爆炸增加特殊效果（弹片、火焰等）。",
	"在地图上到处都有物品产生，供平民使用。食物、武器、建筑材料，等等。",
	"如果物品没有在你的地图上生成，请联系作者Jackarunda，这样他可以调查并改进生成的算法。",
	"如果你出生时经常卡在地图上的墙壁里，请联系作者Jackarunda，这样他可以调查并改进出生算法。",
	"如果你被什么东西卡住了，可以尝试蹲下（移动你的碰撞体）或用你的拳头击打来让自己动。",
	"射击位置也很重要。肢体射击不会造成太多的伤害，尽管它们有其他效果。",
	"腿部中弹会导致暂时无法动弹。",
	"手臂中弹后，你要重新切换武器（切换到空手）。",
	"吃食物可以获得一个体力恢复的奖励，也可以让你缓慢地回血。",
	-- "Bandages only stop bleeding; they don't restore health.",
	-- "If you can't reach a particular ledge, try punching the wall downward to give yourself an upward boost while crouch-jumping.",
	-- "The murderer has many ways to poison people: injection, item contact, weapon strike and food poisoning.",
	-- "If you can't jump or walk, you're probably exhausted. Just sit still for a moment and let your stamina (flashing bar) regenerate.",
	-- "Drawing the fake pistol will likely expose you as the murderer if you do it too soon. Drop the thing instead to act as bait.",
	-- "The silenced pistol shoots a .22LR, a very weak round. Headshots are the shots of choice for this weapon.",
	-- "When stabbing, the murderer immobilizes victims, preventing them from turning or moving. Don't get caught.",
	-- "There are many weapons that bystanders can use to defend themselves. Bats, pocket knives, fists, etc.",
	-- "The axe and hatchet can only be used by the murderer.",
	-- "The hatchet is the only throwing weapon that can easily deal lethal damage to someone.",
	-- "The axe can actually break down map doors with enough swings.",
	-- "Duct tape and hammer/nails can be used to seal map doors, though it uses a lot of tape/nails.",
	-- "A bare IED can blow down map doors.",
	-- "An IED inside a dense metal prop will create metal fragments upon detonation, tripling lethality.",
	-- "An IED inside a flammable prop (such as a gasoline canister) will burst into flames upon detonation.",
	-- "Don't equip the psycho disguise unless you have an escape plan. Its purpose is only to hide your true identity.",
	-- "The bolt action rifle is not an ideal weapon in close quarters. It is very long, slow and unwieldy.",
	-- "The shotgun is a great close-quarters weapon. It has tons of killing power.",
	-- "The AR15 is an optimal weapon, posessing accuracy, maneuverability, firepower, a high rate of fire and a large magazine.",
	-- "Even in normal homicide mode, additional 9mm ammunition can be found all around the map, though it is rare.",
	-- "It is possible for bystanders to find pistols, though they are rare.",
	-- "Collect bandages. They stop bleeding and can save you from a ton of damage.",
	-- "Bandages only stop bleeding; they do not instantly restore health. Nothing does.",
	-- "The only way to regain health is to slowly heal, which food and medkits help you do.",
	-- "Bandages and medkits are more effective when used on someone other than the person holding them. Be a pal.",
	-- "You can apply bandages and medkits to other people. Doing so causes the items to be applied much faster and be more effective.",
	-- "Medkits stop bleeding, provide pain relief, boost stamina regeneration and induce health regeneration.",
	-- "Pain pills provide temporary pain relief, which allows you to move normally even when you're wounded.",
	-- "The murderer's adrenaline shot allows the murderer to temporarily run and jump at nearly superhuman speeds, despite wounds.",
	-- "The murderer's adrenaline shot does not give any extra health or stop bleeding, it merely raises movement speed and stamina.",
	-- "If you can manage to find some duct tape or a hammer and nails, you can build forts and barricades.",
	-- "Barricades can be built using props and fastening equipment, like duct tape and nails. Barricades can save you from the murderer.",
	-- "The murderer can bust through doors and barricades with an axe. Here's Johnny!",
	-- "As this game is meant for public servers, RDMing is dealt with very harshly. Turn on sv_cheats if you don't want penalties.",
	-- "When you RDM, you accumulate Guilt. Too much guilt can cause you to be gimped at spawn, or kickbanned at the end of a round.",
	-- "Kickbans for RDMing only last one minute, just to prevent instant rejoining.",
	-- "You can be punished for RDMing even if you don't kill anyone. Repeated punching over multiple rounds can get you in trouble.",
	-- "Asault laws are a thing. As a normal non-murdering citizen, you are subject to harsh penalties for RDMing.",
	-- "Loot only spawns in places where players aren't. If you want loot, move around the map and find places where no one is.",
	-- "The police will shoot the murderer and anyone else who has a weapon drawn, even fists.",
	-- "The national guardsmen will shoot the traitor and anyone else who attacks an innocent while they're around.",
	-- "Rejoining a server does NOT reset your RDM guilt. Guilt is stored per steam-ID.",
	-- "Turning on sv_cheats disables RDM penalties and anticheat features (good for messing around or making videos).",
	-- "The murderer generally stands no chance in open confrontation with a gunman. Stealth and cunning are necessary.",
	-- "You can set a custom name and appearance for use in Homicide using an identity.txt file. For details type 'homicide_identity_help'",
	-- "Holding right-click with your fists blocks, reducing incoming punch damage.",
	-- "We live in a lawful society with assault laws. RDMing is dealt with very harshly. Turn on sv_cheats to disable penalties.",
	"绷带只能止血，它们不能恢复生命值。",
	"如果你不能到达某个窗台，可以尝试向下打墙以在蹲下跳的时候给自己一个向上推力F。",
	"凶手有很多方法可以让人中毒：注射、物品接触、武器打击和食物中毒。",
	"如果你跳不起来或走不动，你可能已经筋疲力尽。只要静坐一会儿，让你的体力（闪光条）再生就可以了。",
	"如果你过早地拔出假手枪，很可能会暴露你是凶手。改为丢掉这个东西，充当诱饵。",
	"消音手枪发射的是.22LR子弹，它是一种非常弱的子弹。爆头是这种武器的首选射击方式。",
	"刺杀时，凶手会让受害者无法动弹，防止他们转身或移动。不要被抓住。",
	"旁观者可以使用许多武器来保护自己。棒球棒、小刀、拳头，等等。",
	"斧头和手斧只能由凶手使用。",
	"手斧是唯一可以轻易对人造成致命伤害的投掷武器。",
	"斧子只要挥舞得够多，实际上就能把地图上的门打碎。",
	"胶带和锤子/钉子可以用来封住地图门，尽管它使用了大量的胶带/钉子。",
	-- Duct tape and hammer/nails can be used to seal map doors, though it uses a lot of tape/nails.
	"一个裸露的简易爆炸装置可以炸毁地图门。",
	"密集的金属道具内的简易爆炸装置在引爆后会产生金属碎片，使杀伤力增加两倍。",
	"易燃道具（如汽油罐）内的简易爆炸装置在引爆会起火。",
	"除非你有一个逃跑计划，否则不要伪装。它的目的只是为了隐藏你的真实身份。",
	"栓动步枪在近距离内不是一种理想的武器。它很长，很慢，很不方便。",
	"霰弹枪是一种伟大的近距离武器。它有大量的杀伤力。",
	"AR15是一种极佳的武器，拥有准确性、机动性、火力、高射速和大弹匣。",
	"即使在正常的杀人模式下，也可以在地图周围找到额外的9毫米弹药，尽管这很罕见。",
	"平民有可能找到手枪，尽管它们很罕见。",
	"收集绷带。它们可以止血，并能让你在受大量的伤害后活下来。",
	"绷带只能止血，它们不能立即恢复健康。没有什么能做到的。",
	"恢复健康的唯一方法是慢慢治疗，食物和医药箱可以帮助你做到这一点。",
	"绷带和医疗包在拿着它们的人以外的人身上使用时更有效，做个好朋友。",
	"你可以给其他人使用绷带和医疗包。这样做会使物品应用得更快，更有效。",
	"医疗包可以止血，提供疼痛缓解，促进体力再生，并诱导健康再生。",
	"止痛药提供暂时的疼痛缓解，这使你即使在受伤的情况下也能正常行动。",
	"凶手的肾上腺素针剂允许凶手暂时以近乎超人的速度奔跑和跳跃，尽管他/她有伤口。",
	"凶手的肾上腺素针剂并不提供任何额外的健康或止血，它只是提高移动速度和耐力。",
	"如果你能设法找到一些胶带或锤子和钉子，你可以建造堡垒和街垒。",
	"可以使用道具和紧固设备，如胶带和钉子来建造路障。路障可以把你从凶手中救出来。",
	"凶手可以用斧头砸开门和路障。Here's Johnny!",
	"由于这个游戏是为公共服务器准备的，所以对RDM的处理是非常严厉的。如果你不希望受到惩罚，请打开sv_cheats。",
	"当你进行RDM时，你会积累内疚百分比。太多的内疚百分比会导致你在出生时被淘汰，或者在一个回合结束时被踢出局。",
	"对RDM的封禁只持续一分钟，只是为了防止瞬间重新加入。",
	"即使你没有杀死任何人，你也会因为RDM而受到惩罚。在多个回合中反复打拳会让你陷入困境。",
	"攻击性法律是一种东西。作为一个正常的不杀人的公民，你会因为RDMing而受到严厉的惩罚。",
	"战利品只在玩家不在的地方产生。如果你想要战利品，去找没有人的地方。",
	"警察会射杀杀人犯和其他任何拔出武器的人，甚至是拳头。",
	"国民警卫队会射杀叛徒和其他任何在他们周围攻击无辜者的人。",
	"重新加入一个服务器并不会重置你的RDM罪责。罪责是按steam-ID存储的。",
	"打开sv_cheats可以禁用RDM惩罚和反作弊功能（适合乱搞或制作视频）",
	"凶手通常没有机会与枪手公开对抗。隐蔽和狡猾是必要的。",
	"你可以使用identity.txt文件设置一个自定义的名字和外观，在凶杀案中使用。详情请输入'homicide_identity_help'。",
	"用拳头按住右键阻挡，减少传来的拳头伤害。",
	"我们生活在一个有攻击性法律的法制社会。RDM是非常严厉的处理方式。但打开sv_cheats可以禁用惩罚。",
	-- "Your RDM offenses are forgiven over time. Go an entire round without losing your innocence and you get bonus forgiveness.",
	-- "The IED isn't terribly lethal on its own. Put it in something that'll fragment, like a metal container.",
	-- "As the traitor/murderer, you start with more gear than bystanders. Don't give yourself away by showing it too early.",
	-- "Just because someone has additional gear or items doesn't mean they're the murderer. Items can be found around the map all the time.",
	-- "The curare poison can be applied to any bladed weapon. The first person struck with the poisoned weapon will die after a while.",
	-- "The VX poison can be applied to any pick-up-able item. The first person who touches the poisoned item will die after a while.",
	-- "The batrachotoxin needle can be used to quietly prick someone from behind. The poisoned person will die after a while.",
	-- "The tetrodotoxin poison can be mixed into any food or drink lying around. Anyone who eats the item will die after a while.",
	-- "The door wedge can be used to completely block a door from one side.",
	-- "Can't jump high enough? Just chill for a minute. Let your stamina regenerate.",
	-- "A basic understanding of aerobic stamina/fatigue is necessary to effectively flee from the murderer.",
	-- "Your merit (kills, assists etc) are stored in the server's database, and used in your skill (SK) calculation.",
	-- "Your demerits (deaths, teamkills etc) are stored in the server's database, and used in your skill (SK) calculation.",
	-- "The total time you've been alive during gameplay is stored in the server's database, and used in your experience (XP) calculation.",
	-- "State-of-Emergency mode can be forced on or off with the console command 'homicide_setmode 1/0'",
	-- "If a mass murderer gets loose in a gun-free zone, you'd better run or hide and hope the cops double-time it.",
	-- "Localized chaos can break out after natural disasters, especially in 2nd and 3rd world countries. This is a state of emergency.",
	-- "Gun-Free-Zone mode is similar to a hunt or a deadly game of hide-and-seek.",
	-- "Some State-of-Emergency rounds will be Bonus Deathmatch rounds, where it's a classic free-for-all gunfight with increased rewards.",
	-- "Wild-West mode is where everyone has a gun, even the murderer.",
	-- "In Jihad Mode, a suicidal lunatic is trying to blow everyone up.",
	-- "The longer you spin the grappling hook, the further you will throw it.",
	-- "The grappling hook must come to rest upon something in order to anchor. Listen for the anchoring sound before climbing the rope.",
	-- "If you rapel down from somewhere using a grappling hook, you'll have to leave it behind.",
	-- "The grappling hook's rope does not have collision or hang around corners. This is simply a limitation of GMod.",
	-- "Pull the grappling hook's rope taut in mid-flight to get it to land where you want.",
	-- "If you spawn stuck in something, aim where you want to go and use the *unstick chat command. You only get one try per round.",
	-- "The *unstick chat command can get you free from being stuck in the map. You can only do it once per round, though.",
	-- "People can hide inside large containers by pressing RMB+E. Deadly prophunt.",
	-- "While hiding inside an object, you can nudge the object in different directions with WASD.",
	-- "The Zyklon-B poison gas canister will contaminate an area for about 4 minutes.",
	-- "Poison gas is less deadly in wide open spaces and more deadly in small enclosed spaces.",
	-- "Poison gas will expand to fill rooms and will flow down hallways. Closing doors is a good way to contain the gas.",
	-- "The poison gas canister can easily poison the murderer if he isn't careful to avoid the area he placed it in.",
	-- "Pro-tip: hide the poison gas canister where it won't be found, like behind furniture. The gas will fill the room all the same.",
	-- "The murderer can silence his own footsteps by holding ALT.",
	-- "Don't use your scroll wheel to change weapons, noob, use your number keys.",
	-- "Your number keys change weapons much faster than your scrollwheel. Learn to play computer games.",
	-- "As an alpha zombie, you can order the other zombies to charge a location or to return to you.",
	-- "As an alpha zombie, you can smell the living. Your vision becomes more red as you close on your nearest target.",
	-- "As an alpha zombie, use other zombies as meatshields. The round ends if you are destroyed.",
	-- "Travel light. Everything you carry slows you down.",
	-- "Bad people are generally at greater risk of bad things happen to them. No rest for the wicked.",
	-- "You can specify your custom identity easily using the identity UI console command: homicide_appearance_menu",
	"你的RDM罪行会随着时间的推移而被宽恕。如果一整轮都没有失去信用，你就会得到额外的宽恕。",
	"简易爆炸装置本身并不是非常致命的。把它放在会碎裂的东西里，比如金属容器。",
	"作为叛徒/杀人犯，你开始时比旁观者拥有更多的装备。不要过早地展示自己的装备。",
	"仅仅因为某人有额外的装备或物品，并不意味着他们是凶手。在地图周围一直可以找到物品。",
	"Curare毒药可以应用于任何带刃的武器。第一个被中毒武器击中的人将在一段时间后死亡。",
	"VX毒药可以应用于任何可拾取的物品。第一个接触到中毒物品的人将在一段时间后死亡。",
	"Batrachotoxin针头可以用来从后面悄悄地刺伤人。中毒的人将在一段时间后死亡。",
	"河豚毒素毒药可以混入周围的任何食物或饮料中。任何吃了这个东西的人都会在一段时间后死亡。",
	"门楔可以用来从一边完全堵住一扇门。",
	"跳得不够高？就冷静一下吧。恢复一下你的耐力。",
	"了解耐力/疲劳状况是有效逃离凶手的必要条件。",
	"你的功绩（杀敌、助攻等）储存在服务器的数据库中，并用于你的技能（SK）计算。",
	"你的扣分（死亡、团灭等）储存在服务器的数据库中，并用于你的技能（SK）计算。",
	"你在游戏中活着的总时间被储存在服务器的数据库中，并用于你的经验（XP）计算。",
	"紧急状态模式可以通过控制台命令'homicide_setmode 1/0'强制打开或关闭",
	"如果一个大规模的杀人犯在无枪区脱逃，你最好逃跑或躲起来，并希望警察能尽快赶到。",
	"自然灾害发生后会出现局部混乱，特别是在第二和第三世界国家。这是一种紧急状态。",
	"无枪区模式类似于狩猎或致命的捉迷藏游戏。",
	"一些紧急状态回合将是奖金死亡竞赛回合，这是一个经典的自由战斗的枪战，奖励增加。",
	"狂野西部模式是每个人都有一把枪，杀人犯也有。",
	"在圣战模式中，一个有自杀倾向的疯子正试图炸死所有人。",
	"你旋转抓钩的时间越长，你会把它扔得越远。",
	"抓钩必须靠在某个东西上，以便锚定。在攀登绳索前要听清楚锚定的声音。",
	"如果你用抓钩从某个地方扒下来，钩子就会留下来。",
	"抓钩的绳子没有碰撞或挂在角落里。这只是GMod的一个限制。",
	"在飞行过程中拉紧抓钩的绳子，让它在你想要的地方降落。",
	"如果你被什么东西卡住了，请瞄准你想去的地方，并使用*unstick聊天命令。你每轮只有一次尝试的机会。",
	"*unstick 聊天命令可以让你摆脱被卡在地图中的情况。不过每一轮你只能做一次。",
	"人们可以通过按鼠标右键+E键躲在大型集装箱内。致命的躲猫猫。",
	"当躲在一个物体里面时，你可以用WASD向不同的方向轻推该物体。",
	"Zyklon-B毒气罐将污染一个地区大约4分钟。", 
	"毒气在宽阔的空地上的杀伤力较小，而在小的封闭空间内的杀伤力较大。",
	"毒气会膨胀到充满房间，并会流向走廊。关门是遏制毒气的一个好办法。",
	"如果凶手不小心避开他放置毒气的区域，毒气罐很容易让他中毒。",
	"专业建议：将毒气罐藏在不会被发现的地方，比如家具后面。毒气同样会充满整个房间。",
	"凶手可以通过按住ALT键让自己的脚步声安静下来。",
	"不要用你的滚轮来换武器，傻瓜，用你的数字键。",
	"你的数字键换武器比你的滚轮快得多。要学会玩电脑游戏。",
	"作为一个首领僵尸，你可以命令其他僵尸冲锋陷阵或回到你身边。",
	"作为一个首领僵尸，你可以闻到活人的气味。当你接近最近的目标时，你的视野会变得更红。",
	"作为一个首领僵尸，使用其他僵尸作为肉盾。如果你被摧毁，回合就会结束。",
	"轻装出行。你携带的所有东西都会使你变慢。",
	"坏人一般会有更大的风险，坏事会发生在他们身上。恶人没有休息。", 
	"你可以使用身份UI控制台命令轻松指定你的自定义身份： homicide_appearance_menu",
	"通过使用控制台指令homicide_appearance_menu来设置一个自定义身份，成为街区最酷的孩子。",
	"自定义身份（衣服、配件、游戏模型、颜色等）可以通过使用控制台指令 homicide_appearance_menu来设置。",

	-- "Be the coolest kid on the block by using the concommand homicide_appearance_menu to set a custom identity.",
	-- "Custom identities (clothes, accessory, playermodel, color etc) can be set by using the concommand homicide_appearance_menu.",
	-- "If you don't set a custom identity with the concommand homicide_appearance_menu, you will be assigned a random identity every round.",
	-- "As the alpha zombie, your vision turns more red when you look in the direction of the living.",
	-- "If you ever spawn stuck in something, or get stuck in something, look where you want to go and type *unstick in chat.",
	-- "If you are killed unjustly but you ain't even mad, you can press F shortly after dying to forgive your attackers (prevent them from gaining guilt).",
	-- "If you are wrongfully killed and mad about it, don't press F after dying. Let your attackers gain guilt and eventually be kicked.",
	-- "Pressing F shortly after death will forgive your attackers, if you were wrongfully killed. This will prevent them from gaining guilt.",
	-- "If your friend accidentally kills you wrongfully, press F after death to forgive him and prevent him from gaining guilt."

	
	"通过使用命令 homicide_appearance_menu 来设置一个自定义身份，可以拿来耍耍酷。",
	"可以通过使用命令 homicide_appearance_menu来设置身份(衣服、配件、游戏模型、颜色等。)。",
	"如果你没有用命令 homicide_appearance_menu 设置一个自定义身份，你将在每一轮被分配一个随机身份。",
	"作为Alpha Zombie时，当你看向活人的方向时，你的视线会变得更红。",
	"如果你有一天被什么东西卡住了，或者被什么东西卡住了，对准你想去的地方，在聊天中输入*unstick。",
	"如果你被无故的杀害了，但你对此并不在意，你可以在死后不久按下F来原谅那个攻击你的人(这样可以防止他们的内疚百分比上升)。",
	"如果你被无故的杀害了，但是你对此十分在意甚至生气，你在死后不要进行任何操作(这样才能让他们的内疚百分比上升,然后被踢出服务器)。",
	"如果你是被误杀的，死后不久按F键会原谅攻击你的人，这将防止他们获得内疚百分比。",
	"如果你的朋友不小心错杀了你，请在死后按F键原谅他，防止他获得内疚百分比。"
}

HMCD_ValidModels={
	"male01","male02","male03",
	"male04","male05","male06",
	"male07","male08","male09",
	"female01","female02","female03",
	"female04","female05","female06"
}

HMCD_ValidClothes={
	"normal","casual","formal","young","cold","striped","plaid"
}

HMCD_AllowedEntities={
	"logic_","phys_","gmod_","manipulate_","predicted_","physics_",
	"player_","reserved_","ai_","info_","hint","npc_zombie_torso",
	"npc_fastzombie_torso","prop_physics","prop_physics_multiplayer",
	"prop_dynamic","prop_ragdoll","worldspawn","soundent","prop_static",
	"func_","beam","spotlight_","ambient_","scene_","npc_heli_",
	"env_","trigger_","sky_","bodyque","move_","keyframe_","shadow_",
	"water_","network","light","point_","_firesmoke","raggib","prop_door",
	"prop_door_rotating","ally_","script_","math_","prop_scalable","aiscripted_",
	"path_","filter_","cycler","relationship","color_","scripted_","goal_",
	"npc_event","npc_template","gib","material_","vort_","entityflame","npc_furniture",
	"sound","npc_enemyfinder","lua_run","fish","momentary_","game_",
	"infodecal","entity_"
}

HMCD_SurfaceHardness={
	[MAT_METAL]=.95,[MAT_COMPUTER]=.95,[MAT_VENT]=.95,[MAT_GRATE]=.95,[MAT_FLESH]=.5,[MAT_ALIENFLESH]=.3,
	[MAT_SAND]=.1,[MAT_DIRT]=.3,[74]=.1,[85]=.2,[MAT_WOOD]=.5,[MAT_FOLIAGE]=.5,
	[MAT_CONCRETE]=.9,[MAT_TILE]=.8,[MAT_SLOSH]=.05,[MAT_PLASTIC]=.3,[MAT_GLASS]=.6
}

HMCD_DamageTypes={
	[DMG_SLASH]="slashed",
	[DMG_CLUB]="beaten",
	[DMG_BURN]="immolated",
	[DMG_DIRECT]="burned",
	[DMG_CRUSH]="thwacked",
	[DMG_GENERIC]="damaged",
	[DMG_SHOCK]="electrocuted",
	[DMG_BULLET]="shot",
	[DMG_BUCKSHOT]="blast-fragment shredded",
	[DMG_POISON]="poisoned",
	[DMG_BLAST]="blasted",
	[DMG_DROWN]="asphyxiated"
}

HMCD_FlammableModels={
	"models/props_c17/canister01a.mdl",
	"models/props_c17/canister02a.mdl",
	"models/props_c17/oildrum001_explosive.mdl",
	"models/props_junk/gascan001a.mdl",
	"models/props_junk/metalgascan.mdl",
	"models/props_junk/propane_tank001a.mdl",
	"models/props_junk/propanecanister001a.mdl"
}
HMCD_ContainerModels={
	"models/props_junk/cardboard_box001a.mdl",
	"models/props_junk/cardboard_box001b.mdl",
	"models/props_junk/cardboard_box002a.mdl",
	"models/props_junk/cardboard_box002b.mdl",
	"models/props_junk/cardboard_box003a.mdl",
	"models/props_junk/cardboard_box003b.mdl",
	"models/props_junk/wood_crate001a.mdl",
	"models/props_junk/wood_crate001a_damaged.mdl",
	"models/props_junk/wood_crate001a_damagedmax.mdl",
	"models/props_junk/wood_crate002a.mdl",
	"models/props_c17/furnituredrawer001a.mdl",
	"models/props_c17/furnituredrawer003a.mdl",
	"models/props_c17/furnituredresser001a.mdl",
	"models/props_c17/woodbarrel001.mdl",
	"models/props_lab/dogobject_wood_crate001a_damagedmax.mdl",
	"models/items/item_item_crate.mdl",
	"models/props/de_inferno/claypot02.mdl",
	"models/props/de_inferno/claypot01.mdl"
}
HMCD_JunkLootModels={
	-- breakable containers
	"models/props_junk/cardboard_box001a.mdl",
	"models/props_junk/cardboard_box001b.mdl",
	"models/props_junk/cardboard_box002a.mdl",
	"models/props_junk/cardboard_box002b.mdl",
	"models/props_junk/cardboard_box003a.mdl",
	"models/props_junk/cardboard_box003b.mdl",
	"models/props_junk/cardboard_box004a.mdl",
	"models/props_junk/wood_crate001a.mdl",
	"models/props_junk/wood_crate001a_damaged.mdl",
	"models/props_junk/wood_crate001a_damagedmax.mdl",
	"models/props_junk/wood_crate002a.mdl",
	"models/props_c17/furnituredrawer001a.mdl",
	"models/props_c17/furnituredrawer003a.mdl",
	"models/props_lab/dogobject_wood_crate001a_damagedmax.mdl",
	-- flammable
	"models/props_c17/canister01a.mdl",
	"models/props_c17/canister02a.mdl",
	"models/props_junk/gascan001a.mdl",
	"models/props_junk/metalgascan.mdl",
	"models/props_junk/propane_tank001a.mdl",
	"models/props_junk/propanecanister001a.mdl",
	-- frag-able
	"models/props_interiors/pot01a.mdl",
	"models/props_c17/oildrum001.mdl",
	"models/props_junk/metal_paintcan001a.mdl",
	"models/props_wasteland/controlroom_filecabinet001a.mdl",
	"models/props_junk/metal_paintcan001b.mdl",
	"models/props_trainstation/trashcan_indoor001a.mdl",
	-- good for bombs
	"models/props_c17/suitcase001a.mdl",
	"models/props_c17/suitcase_passenger_physics.mdl",
	"models/props_c17/briefcase001a.mdl",
	-- good for construction
	"models/props_phx/construct/metal_plate1.mdl",
	"models/props_phx/construct/metal_plate1_tri.mdl",
	"models/props_phx/construct/glass/glass_plate1x1.mdl",
	"models/props_phx/construct/glass/glass_plate1x2.mdl",
	"models/hunter/plates/plate1x1.mdl",
	"models/hunter/plates/plate1x2.mdl",
	"models/props_phx/construct/wood/wood_panel1x1.mdl",
	"models/props_phx/construct/wood/wood_panel1x2.mdl",
	"models/props_phx/construct/wood/wood_panel2x2.mdl",
	"models/props_phx/construct/wood/wood_boardx1.mdl",
	"models/props_phx/construct/wood/wood_boardx2.mdl"
}

HMCD_PersonContainers={
	"models/props_junk/wood_crate001a.mdl",
	"models/props_junk/wood_crate001a_damaged.mdl",
	"models/props_junk/wood_crate001a_damagedmax.mdl",
	"models/props_junk/wood_crate002a.mdl",
	"models/props_borealis/bluebarrel001.mdl",
	"models/props_c17/oildrum001.mdl",
	"models/props_junk/trashbin01a.mdl",
	"models/props_c17/furnituredresser001a.mdl",
	"models/props_c17/woodbarrel001.mdl",
	"models/props_lab/dogobject_wood_crate001a_damagedmax.mdl",
	"models/props_wasteland/controlroom_storagecloset001a.mdl",
	"models/props_wasteland/controlroom_storagecloset001b.mdl",
	"models/props/cs_assault/dryer_box.mdl",
	"models/props/cs_assault/dryer_box2.mdl",
	"models/props/cs_assault/washer_box.mdl",
	"models/props/cs_assault/washer_box2.mdl",
	"models/props/cs_militia/crate_extrasmallmill.mdl",
	"models/props/de_dust/du_crate_64x64.mdl",
	"models/props/de_dust/du_crate_64x80.mdl",
	"models/props/de_inferno/wine_barrel.mdl",
	"models/props/de_nuke/crate_extrasmall.mdl",
	"models/props/de_nuke/crate_small.mdl",
	"models/props/de_prodigy/prodcratesb.mdl",
	"models/props_2fort/miningcrate002.mdl",
	"models/props_2fort/miningcrate001.mdl",
	"models/props_2fort/oildrum.mdl",
	"models/props_2fort/locker001.mdl",
	"models/props_junk/cardboard_box001a.mdl",
	"models/props_junk/cardboard_box001b.mdl",
	"models/props_junk/cardboard_box002a.mdl",
	"models/props_junk/cardboard_box002b.mdl",
	"models/props_trainstation/trashcan_indoor001a.mdl",
	"models/props_wasteland/kitchen_fridge001a.mdl",
	"models/props_wasteland/cargo_container01.mdl",
	"models/props_wasteland/laundry_washer001a.mdl",
	"models/props_c17/furniturefridge001a.mdl"--[[,
	"models/props_junk/trashdumpster01a.mdl",
	"models/props_trainstation/train003.mdl",
	"models/props_vehicles/car002a_physics.mdl",
	"models/props_vehicles/car002a.mdl",
	"models/props_vehicles/apc001.mdl",
	"models/props_vehicles/car004a_physics.mdl",
	"models/props_vehicles/car004a.mdl",
	"models/props_vehicles/car005a_physics.mdl",
	"models/props_vehicles/car005a.mdl",
	"models/props_vehicles/trailer001a.mdl",
	"models/props_vehicles/car003a_physics.mdl",
	"models/props_vehicles/car003a.mdl",
	"models/props_trainstation/train001.mdl"--]]
}

-- full disclosure: i made a spinoff of homicide called Apocalypse, meant to be my version of Zombie Survival
-- it got really far and is really cool but ultimately i decided to just make ZS a mini gamemode in homicide
-- because homicide is already successful and i was having a hard time making a good ZS without rounds
-- the whole round system stabilizes a game and gives players tangible objectives
-- so there's a lot of borrowed code in here from Apocalypse. I came up with a lot of cool shit in apoc that i imported to here
-- My time was not wasted :D
HMCD_ProjectileJunkModels={
	"models/props_junk/gascan001a.mdl",
	"models/props_junk/metalgascan.mdl",
	"models/props_junk/propanecanister001a.mdl",
	"models/props_interiors/pot01a.mdl",
	"models/props_interiors/pot02a.mdl",
	"models/props_interiors/refrigeratorDoor02a.mdl",
	"models/props_interiors/SinkKitchen01a.mdl",
	"models/props_junk/MetalBucket01a.mdl",
	"models/props_junk/MetalBucket02a.mdl",
	"models/props_junk/sawblade001a.mdl",
	"models/props_junk/TrafficCone001a.mdl",
	"models/props_lab/lockerdoorleft.mdl",
	"models/props_trainstation/TrackSign02.mdl",
	"models/props_vehicles/tire001c_car.mdl",
	"models/props_wasteland/barricade001a.mdl",
	"models/props_wasteland/controlroom_filecabinet001a.mdl",
	"models/props_wasteland/controlroom_chair001a.mdl",
	"models/props_c17/streetsign004f.mdl",
	"models/props_c17/tv_monitor01.mdl",
	"models/props_junk/PlasticCrate01a.mdl",
	"models/props_interiors/Furniture_chair01a.mdl",
	"models/props_interiors/Furniture_chair03a.mdl",
	"models/props_combine/breenglobe.mdl",
	"models/props_junk/watermelon01.mdl",
	"models/props_lab/desklamp01.mdl",
	"models/props_lab/monitor01a.mdl",
	"models/props_lab/monitor02.mdl",
	"models/props_lab/binderbluelabel.mdl",
	"models/props_lab/cactus.mdl",
	"models/props_junk/terracotta01.mdl",
	"models/props_lab/reciever01b.mdl",
	"models/props_lab/citizenradio.mdl",
	"models/props_vehicles/carparts_wheel01a.mdl",
	"models/props_vehicles/carparts_door01a.mdl",
	"models/props_lab/harddrive02.mdl",
	"models/props_lab/harddrive01.mdl",
	"models/props_lab/reciever01d.mdl",
	"models/props_junk/CinderBlock01a.mdl",
	"models/props_junk/metal_paintcan001a.mdl",
	"models/props_junk/metal_paintcan001b.mdl",
	"models/props_c17/suitcase001a.mdl",
	"models/props_c17/suitcase_passenger_physics.mdl",
	"models/props_c17/briefcase001a.mdl",
	"models/props_phx/construct/wood/wood_boardx1.mdl",
	"models/props_phx/construct/wood/wood_panel1x1.mdl",
	"models/props_c17/cashregister01a.mdl",
	"models/props_c17/consolebox03a.mdl",
	
}
HMCD_BigProjectileJunkModels={
	"models/props_borealis/bluebarrel001.mdl",
	"models/props_c17/canister01a.mdl",
	"models/props_c17/canister_propane01a.mdl",
	"models/props_c17/bench01a.mdl",
	"models/props_c17/door01_left.mdl",
	"models/props_c17/FurnitureBathtub001a.mdl",
	"models/props_c17/FurnitureCouch001a.mdl",
	"models/props_c17/FurnitureCouch002a.mdl",
	"models/props_c17/FurnitureDrawer001a.mdl",
	"models/props_c17/FurnitureDresser001a.mdl",
	"models/props_c17/FurnitureFireplace001a.mdl",
	"models/props_c17/FurnitureFridge001a.mdl",
	"models/props_c17/FurnitureRadiator001a.mdl",
	"models/props_c17/furnitureStove001a.mdl",
	"models/props_c17/FurnitureWashingmachine001a.mdl",
	"models/props_c17/oildrum001.mdl",
	"models/props_c17/Lockers001a.mdl",
	"models/props_c17/shelfunit01a.mdl",
	"models/props_combine/breenchair.mdl",
	"models/props_combine/breendesk.mdl",
	"models/props_interiors/BathTub01a.mdl",
	"models/props_interiors/Furniture_Couch01a.mdl",
	"models/props_interiors/Furniture_Couch02a.mdl",
	"models/props_interiors/Furniture_Lamp01a.mdl",
	"models/props_interiors/VendingMachineSoda01a.mdl",
	"models/props_junk/TrashDumpster01a.mdl",
	"models/props_junk/TrashBin01a.mdl",
	"models/props_junk/wood_crate002a.mdl",
	"models/props_junk/wood_crate001a_damaged.mdl",
	"models/props_junk/PushCart01a.mdl",
	"models/props_trainstation/trashcan_indoor001a.mdl",
	"models/props_trainstation/trashcan_indoor001b.mdl",
	"models/props_vehicles/apc_tire001.mdl",
	"models/props_wasteland/barricade002a.mdl",
	"models/props_wasteland/controlroom_filecabinet002a.mdl",
	"models/props_wasteland/controlroom_storagecloset001a.mdl",
	"models/props_wasteland/laundry_cart001.mdl",
	"models/props_wasteland/laundry_cart002.mdl",
	"models/props_wasteland/kitchen_fridge001a.mdl",
	"models/props_wasteland/kitchen_counter001b.mdl",
	"models/props_wasteland/kitchen_shelf001a.mdl",
	"models/props_wasteland/kitchen_stove001a.mdl",
	"models/props_c17/FurnitureWashingmachine001a.mdl",
	"models/props_lab/reciever_cart.mdl"
}

HMCD_LootReplacements={
	["prop_vehicle_jeep"]={"REPLACEVEHICLE",1},
	["prop_vehcle_jeep_old"]={"REPLACEVEHICLE",1},
	["prop_vehicle_airboat"]={"REPLACEVEHICLE",1},
	["weapon_crowbar"]={"ent_jack_hmcd_baseballbat",.5},
	["weapon_stunstick"]={"ent_jack_hmcd_pocketknife",.5},
	["weapon_pistol"]={"ent_jack_hmcd_pistol",.5},
	["weapon_357"]={"ent_jack_hmcd_revolver",.5,true},
	["weapon_shotgun"]={"ent_jack_hmcd_shotgun",.5,true},
	["weapon_crossbow"]={"ent_jack_hmcd_rifle",.5,true},
	["weapon_ar2"]={"ent_jack_hmcd_assaultrifle",.3,true},
	["weapon_smg1"]={"ent_jack_hmcd_assaultrifle",.3,true},
	["weapon_frag"]={"ent_jack_hmcd_pipebomb",.5,true},
	["weapon_slam"]={"ent_jack_hmcd_molotov",.5,true},
	["weapon_rpg"]={"ent_jack_hmcd_ammo",.5,true,"AlyxGun"},
	["item_ammo_ar2_altfire"]={"ent_jack_hmcd_molotov",.5,true},
	["item_ammo_357"]={"ent_jack_hmcd_ammo",.6,true,"357"},
	["item_ammo_357_large"]={"ent_jack_hmcd_ammo",.6,true,"357"},
	["item_ammo_pistol"]={"ent_jack_hmcd_ammo",.6,false,"Pistol"},
	["item_ammo_pistol_large"]={"ent_jack_hmcd_ammo",.6,false,"Pistol"},
	["item_ammo_ar2"]={"ent_jack_hmcd_ammo",.6,false,"AR2"},
	["item_ammo_ar2_large"]={"ent_jack_hmcd_ammo",.6,false,"AR2"},
	["item_ammo_ar2_smg1"]={"ent_jack_hmcd_ammo",.6,false,"SMG1"},
	["item_ammo_ar2_large"]={"ent_jack_hmcd_ammo",.6,false,"AR2"},
	["item_ammo_smg1"]={"ent_jack_hmcd_ammo",.6,false,"SMG1"},
	["item_ammo_smg1_large"]={"ent_jack_hmcd_ammo",.6,false,"SMG1"},
	["item_box_buckshot"]={"ent_jack_hmcd_ammo",.6,false,"Buckshot"},
	["item_box_buckshot_large"]={"ent_jack_hmcd_ammo",.6,false,"Buckshot"},
	["item_rpg_round"]={"ent_jack_hmcd_ammo",.6,true,"AlyxGun"},
	["item_ammo_crate"]={"ent_jack_hmcd_ammo",1,false,"Pistol"},
	["item_healthvial"]={"ent_jack_hmcd_bandage",.5},
	["item_healthkit"]={"ent_jack_hmcd_medkit",.5},
	["item_healthcharger"]={"ent_jack_hmcd_medkit",1},
	["item_suitcharger"]={"ent_jack_hmcd_painpills",1},
	["item_battery"]={"ent_jack_hmcd_painpills",.5}
}

HMCD_AmmoWeights={
	["AlyxGun"]=4,
	["Pistol"]=12,
	["357"]=15,
	["AirboatGun"]=3,
	["Buckshot"]=60,
	["AR2"]=50,
	["SMG1"]=18,
	["XBowBolt"]=22
}

HMCD_AmmoNames={
	["AlyxGun"]="5.7x16mm (.22 long rifle)",
	["Pistol"]="9x19mm (9mm luger/parabellum)",
	["357"]="9x29mmR (.38 special)",
	["SMG1"]="5.56x45mm (.223 remington)",
	["Buckshot"]="18.5x70mmR (12 gauge shotshell)",
	["AR2"]="7x57mm (7mm mauser)",
	["XBowBolt"]="6x735mm broadhead hunting arrow",
	["AirboatGun"]="2x89mm Carpentry Nail"
	--["Battery"]="14x50mm Alkaline Battery"
	--["StriderMinigun"]="2x50mm Strike-Anywhere Match"
}

HMCD_PlayerModelInfoTable={}
function GM:addModel(model,sex,clothes)
	local t = {}
	t.model = model
	t.sex = sex
	t.clothes=clothes
	table.insert(HMCD_PlayerModelInfoTable,t)
end
GM:addModel("male01", "male",3)
GM:addModel("male02", "male",2)
GM:addModel("male03", "male",4)
GM:addModel("male04", "male",4)
GM:addModel("male05", "male",4)
GM:addModel("male06", "male",0)
GM:addModel("male07", "male",4)
GM:addModel("male08", "male",0)
GM:addModel("male09", "male",2)
GM:addModel("female01", "female",2)
GM:addModel("female02", "female",3)
GM:addModel("female03", "female",3)
GM:addModel("female04", "female",1)
GM:addModel("female05", "female",2)
GM:addModel("female06", "female",4)

-- name = model, bone, male{pos,ang,scale}, female{pos,ang,scale}, is a hat (optional)
HMCD_Accessories={
	["none"]={},
	["eyeglasses"]={"models/captainbigbutt/skeyler/accessories/glasses01.mdl","ValveBiped.Bip01_Head1",{Vector(2.1,3,0),Angle(0,-70,-90),.9},{Vector(2.75,2,0),Angle(0,-70,-90),.8},false,0},
	["bugeye sunglasses"]={"models/captainbigbutt/skeyler/accessories/glasses02.mdl","ValveBiped.Bip01_Head1",{Vector(2.9,2.2,0),Angle(0,-70,-90),.9},{Vector(3.5,1.25,0),Angle(0,-70,-90),.8},false,0},
	["large sunglasses"]={"models/captainbigbutt/skeyler/accessories/glasses04.mdl","ValveBiped.Bip01_Head1",{Vector(3.25,2.4,0),Angle(0,-70,-90),.9},{Vector(3.5,1.25,0),Angle(0,-70,-90),.8},false,0},
	["aviators"]={"models/gmod_tower/aviators.mdl","ValveBiped.Bip01_Head1",{Vector(2.2,2.9,0),Angle(0,-75,-90),.9},{Vector(2.8,1.9,0),Angle(0,-75,-90),.85},false,0},
	["nerd glasses"]={"models/gmod_tower/klienerglasses.mdl","ValveBiped.Bip01_Head1",{Vector(2.6,2.9,0),Angle(0,-75,-90),1},{Vector(2.6,2.3,0),Angle(0,-80,-90),.9},false,0},
	["headphones"]={"models/gmod_tower/headphones.mdl","ValveBiped.Bip01_Head1",{Vector(.5,3,0),Angle(0,-90,-90),.9},{Vector(1,2.3,0),Angle(0,-90,-90),.8},false,0},
	["baseball cap"]={"models/gmod_tower/jaseballcap.mdl","ValveBiped.Bip01_Head1",{Vector(.05,5.1,0),Angle(0,-75,-90),1.125},{Vector(0,4.2,0),Angle(0,-75,-90),1.1},true,0},
	["fedora"]={"models/captainbigbutt/skeyler/hats/fedora.mdl","ValveBiped.Bip01_Head1",{Vector(.25,5.5,0),Angle(0,-75,-90),.7},{Vector(0,4.8,0),Angle(0,-75,-90),.65},true,0},
	["stetson"]={"models/captainbigbutt/skeyler/hats/cowboyhat.mdl","ValveBiped.Bip01_Head1",{Vector(.3,6,0),Angle(0,-70,-90),.75},{Vector(.25,5.6,0),Angle(0,-75,-90),.7},true,0},
	["straw hat"]={"models/captainbigbutt/skeyler/hats/strawhat.mdl","ValveBiped.Bip01_Head1",{Vector(.75,5,0),Angle(0,-75,-90),.85},{Vector(.5,4.5,0),Angle(0,-75,-90),.75},true,0},
	["sun hat"]={"models/captainbigbutt/skeyler/hats/sunhat.mdl","ValveBiped.Bip01_Head1",{Vector(-1.5,3.5,0),Angle(0,-75,-90),.8},{Vector(-1.5,3,0),Angle(0,-75,-90),.75},true,0},
	["bling cap"]={"models/captainbigbutt/skeyler/hats/zhat.mdl","ValveBiped.Bip01_Head1",{Vector(.7,3.75,.3),Angle(0,-75,-90),.75},{Vector(.3,3,.25),Angle(0,-75,-90),.75},true,0},
	["top hat"]={"models/player/items/humans/top_hat.mdl","ValveBiped.Bip01_Head1",{Vector(2,-1,0),Angle(0,-80,-90),1.025},{Vector(2,-1,0),Angle(0,-80,-90),.95},true,0},
	["backpack"]={"models/makka12/bag/jag.mdl","ValveBiped.Bip01_Spine4",{Vector(0,-3,0),Angle(0,90,90),.7},{Vector(.5,-3,0),Angle(0,90,90),.6},false,0},
	["purse"]={"models/props_c17/BriefCase001a.mdl","ValveBiped.Bip01_Spine1",{Vector(-3,-10,7),Angle(0,90,90),.6},{Vector(-3,-10,7),Angle(0,90,90),.6},false,0},
	-- gen 2
	["gray cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,0},
	["light gray cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,2},
	["white cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,3},
	["green cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,4},
	["dark green cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,5},
	["brown cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,6},
	["blue cap"]={"models/modified/hat07.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4.5,.2),Angle(0,-75,-90),1},{Vector(0,4.5,0),Angle(0,-75,-90),.95},true,7},

	["bandana"]={"models/modified/bandana.mdl","ValveBiped.Bip01_Head1",{Vector(1.1,-1.2,0),Angle(0,-75,-90),1},{Vector(1,-1.5,0),Angle(0,-80,-90),.9},false,0},

	["white scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,0},
	["gray scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,1},
	["black scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,2},
	["blue scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,3},
	["red scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,4},
	["green scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,5},
	["pink scarf"]={"models/sal/acc/fix/scarf01.mdl","ValveBiped.Bip01_Spine4",{Vector(-10,-17,0),Angle(0,70,90),1},{Vector(-9,-19.5,0),Angle(0,70,90),1},false,6},

	["red earmuffs"]={"models/modified/headphones.mdl","ValveBiped.Bip01_Head1",{Vector(1,2.5,0),Angle(0,-90,-90),.9},{Vector(1,2,0),Angle(0,-90,-90),.9},false,0},
	["pink earmuffs"]={"models/modified/headphones.mdl","ValveBiped.Bip01_Head1",{Vector(1,2.5,0),Angle(0,-90,-90),.9},{Vector(1,2,0),Angle(0,-90,-90),.9},false,1},
	["green earmuffs"]={"models/modified/headphones.mdl","ValveBiped.Bip01_Head1",{Vector(1,2.5,0),Angle(0,-90,-90),.9},{Vector(1,2,0),Angle(0,-90,-90),.9},false,2},
	["yellow earmuffs"]={"models/modified/headphones.mdl","ValveBiped.Bip01_Head1",{Vector(1,2.5,0),Angle(0,-90,-90),.9},{Vector(1,2,0),Angle(0,-90,-90),.9},false,3},

	["gray fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,0},
	["black fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,1},
	["white fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,2},
	["beige fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,3},
	["black/red fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,5},
	["blue fedora"]={"models/modified/hat01_fix.mdl","ValveBiped.Bip01_Head1",{Vector(-.1,4.1,0),Angle(0,-75,-90),.9},{Vector(-.5,4,0),Angle(0,-75,-90),.9},true,7},

	["striped beanie"]={"models/modified/hat03.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4,0),Angle(0,-75,-90),1},{Vector(-.2,3.5,0),Angle(0,-75,-90),1},true,0},
	["periwinkle beanie"]={"models/modified/hat03.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4,0),Angle(0,-75,-90),1},{Vector(-.2,3.5,0),Angle(0,-75,-90),1},true,1},
	["fuschia beanie"]={"models/modified/hat03.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4,0),Angle(0,-75,-90),1},{Vector(-.2,3.5,0),Angle(0,-75,-90),1},true,2},
	["white beanie"]={"models/modified/hat03.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4,0),Angle(0,-75,-90),1},{Vector(-.2,3.5,0),Angle(0,-75,-90),1},true,3},
	["gray beanie"]={"models/modified/hat03.mdl","ValveBiped.Bip01_Head1",{Vector(.1,4,0),Angle(0,-75,-90),1},{Vector(-.2,3.5,0),Angle(0,-75,-90),1},true,4},

	["large red backpack"]={"models/modified/backpack_1.mdl","ValveBiped.Bip01_Spine4",{Vector(-2,-8,0),Angle(0,90,90),1},{Vector(-2,-8,0),Angle(0,90,90),.9},false,0},
	["large gray backpack"]={"models/modified/backpack_1.mdl","ValveBiped.Bip01_Spine4",{Vector(-2,-8,0),Angle(0,90,90),1},{Vector(-2,-8,0),Angle(0,90,90),.9},false,1},

	["medium backpack"]={"models/modified/backpack_3.mdl","ValveBiped.Bip01_Spine4",{Vector(-3,-6,0),Angle(0,90,90),.9},{Vector(-3,-6,0),Angle(0,90,90),.8},false,0},
	["medium gray backpack"]={"models/modified/backpack_3.mdl","ValveBiped.Bip01_Spine4",{Vector(-3,-6,0),Angle(0,90,90),.9},{Vector(-3,-6,0),Angle(0,90,90),.8},false,1}
}

function table.FullCopy(tab)
	if (!tab) then return nil end
	local res = {}
	for k, v in pairs( tab ) do
		if (type(v) == "table") then
			res[k] = table.FullCopy(v) // recursion ho!
		elseif (type(v) == "Vector") then
			res[k] = Vector(v.x, v.y, v.z)
		elseif (type(v) == "Angle") then
			res[k] = Angle(v.p, v.y, v.r)
		else
			res[k] = v
		end
	end
	return res
end

function GM:CreateTeams()
	team.SetUp(1,"Spectators",Color(150,150,150))
	team.SetUp(2,"Players",Color(26,120,245))
end

-- you can only sprint forwards, for fuck's sake
function GM:SetupMove(ply,mov,cmd)
	if((CLIENT)and(!ply:Alive())and(ply.ForgiveTime)and(ply.ForgiveTime>CurTime())and(input.IsKeyDown(KEY_F))and not(ply:IsTyping()))then
		net.Start("hmcd_forgive")
		net.SendToServer()
		ply.ForgiveTime=0
	end
end

function GM:EntityEmitSound(t) -- this is so cool for making videos
	local SoundModded=false
	if((t.OriginalSoundName=="Weapon_Shotgun.Special1")and(IsValid(t.Entity))and(t.Entity:IsPlayer()))then -- stupid garry shit
		t.Volume=.01
		SoundModded=true
	end
	--if((CLIENT)and(true))then
	--	PrintTable(t)
	--	t.Volume=1
	--	t.SoundLevel=100
	--	SoundModded=true
	--end
	local p=t.Pitch
	if(game.GetTimeScale()!= 1)then p=p*game.GetTimeScale() end
	if(GetConVarNumber("host_timescale")!=1 && GetConVarNumber("sv_cheats")>= 1)then p=p*GetConVarNumber("host_timescale") end
	if(p!=t.Pitch)then t.Pitch=math.Clamp(p,0,255);SoundModded=true end
	if(CLIENT && engine.GetDemoPlaybackTimeScale()!=1)then t.Pitch=math.Clamp(t.Pitch*engine.GetDemoPlaybackTimeScale(),0,255);SoundModded=true end
	if(SoundModded)then return true end
end

function HMCD_WhomILookinAt(ply,cone,dist)
	local CreatureTr,ObjTr,OtherTr=nil,nil,nil
	for i=1,(150*cone) do
		local Vec=(ply:GetAimVector()+VectorRand()*cone):GetNormalized()
		local Tr=util.QuickTrace(ply:GetShootPos(),Vec*dist,{ply})
		if((Tr.Hit)and not(Tr.HitSky)and(Tr.Entity))then
			local Ent,Class=Tr.Entity,Tr.Entity:GetClass()
			if((Ent:IsPlayer())or(Ent:IsNPC()))then
				CreatureTr=Tr
			elseif((Class=="prop_physics")or(Class=="prop_physics_multiplayer")or(Class=="prop_ragdoll")or(Ent.IsLoot))then
				ObjTr=Tr
			else
				OtherTr=Tr
			end
		end
	end
	if(CreatureTr)then return CreatureTr.Entity,CreatureTr.HitPos,CreatureTr.HitNormal end
	if(ObjTr)then return ObjTr.Entity,ObjTr.HitPos,ObjTr.HitNormal end
	if(OtherTr)then return OtherTr.Entity,OtherTr.HitPos,OtherTr.HitNormal end
	return nil,nil,nil
end

local FragMats={
	"canister","chain","combine_metal","floating_metal_barrel","grenade","metal","metal_barrel","metal_bouncy","Metal_Box",
	"metal_seafloorcar","metalgrate","metalpanel","metalvent","metalvehicle","paintcan","roller","slipperymetal","solidmetal","weapon",
	"glass","combine_glass","computer"
}
function HMCD_ExplosiveType(self)
	-- 1 = inert (default HE), 2 = fragmentary, 3 = incendiary
	if not(IsValid(self))then return 1 end
	local Phys=self:GetPhysicsObject()
	if(IsValid(Phys))then
		if(table.HasValue(HMCD_FlammableModels,string.lower(self:GetModel())))then return 3 end
		local Mass,Volume,Mat,MassRequirement=Phys:GetMass(),Phys:GetVolume(),Phys:GetMaterial(),5
		if((Mat=="weapon")or(Mat=="computer"))then MassRequirement=20 end
		local Density=Mass/(self:OBBMaxs():Length())
		--JackaPrint(Mat,Volume,Mass,Density)
		if((Mass)and(tonumber(Mass))and(Mass>=MassRequirement)and(Mass<=100)and(Volume)and(tonumber(Volume))and(Volume>=300)and(Volume<=30000)and(Density>=.38))then
			if(table.HasValue(FragMats,Mat))then return 2 end
		end
	end
	return 1
end

function HMCD_IsDoor(ent)
	local Class=ent:GetClass()
	return ((Class=="prop_door")or(Class=="prop_door_rotating")or(Class=="func_door")or(Class=="func_door_rotating")or(Class=="func_breakable"))
end

function GM:ShouldCollide(ent1,ent2)
	if(ent1.HmcdGas)then
		return ent2:IsWorld() or HMCD_IsDoor(ent2)
	elseif(ent2.HmcdGas)then
		return ent1:IsWorld() or HMCD_IsDoor(ent1)
	end
end

function GM:OnEntityCreated(ent)
	if(self.ZOMBIE)then
		local Class=ent:GetClass()
		if(SERVER)then
			if((Class=="npc_headcrab")or(Class=="npc_headcrab_fast")or(Class=="npc_headcrab_black"))then
				SafeRemoveEntity(ent)
				return
			elseif(Class=="npc_headcrab_poison")then -- thrown
				timer.Simple(0,function()
					if((IsValid(ent))and(ent:GetVelocity():Length()>200))then
						local Prop=ents.Create("prop_physics")
						Prop:SetModel(table.Random(HMCD_ProjectileJunkModels))
						Prop:SetPos(ent:GetPos())
						Prop:SetAngles(VectorRand():Angle())
						Prop.HmcdSpawned=true
						Prop:Spawn();Prop:Activate()
						local Dir,Spd=ent:GetVelocity():GetNormalized(),ent:GetVelocity():Length()
						Prop:GetPhysicsObject():SetMass(Prop:GetPhysicsObject():GetMass()*2)
						Prop:GetPhysicsObject():AddAngleVelocity(VectorRand()*1000)
						Prop:GetPhysicsObject():SetVelocity((Dir+Vector(math.Rand(-.1,.1),math.Rand(-.1,.1),math.Rand(-.3,-.1)))*Spd*2)
					end
					if(IsValid(ent))then ent:Remove() end
				end)
				return
			end
		elseif(CLIENT)then
			if(Class=="class C_ClientRagdoll")then
				local Mod=ent:GetModel()
				if((Mod=="models/headcrabclassic.mdl")or(Mod=="models/headcrabfast.mdl")or(Mod=="models/headcrabblack.mdl"))then ent:Remove() end
			end
		end
	end
end

function GM:DoAnimationEvent(pl,event,data)
	if((event==PLAYERANIMEVENT_ATTACK_PRIMARY)and(self.ZOMBIE)and(pl.Murderer))then
		pl:AnimRestartGesture(GESTURE_SLOT_ATTACK_AND_RELOAD,ACT_GMOD_GESTURE_RANGE_ZOMBIE,true)
		return ACT_INVALID
	end
end

function GM:CanPlayerEnterVehicle(ply,veh,role)
	if((self.ZOMBIE)and(ply.Murderer))then return false end
end