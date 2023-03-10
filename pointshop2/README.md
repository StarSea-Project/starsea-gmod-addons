Pointshop2
==========

![](https://github.com/Kamshak/Pointshop2/blob/master/images.weserv.nl.png?raw=true)

[<img width="256" src="http://www.ageofcivilizationsgame.com/uploads/monthly_2019_06/discord_button.png.3c4e31057287000ade2e552fdc414e79.png">](https://discord.gg/N9DmwwX)


Developer Guides:
- How to create a custom item type (3 step tutorial series with example code): https://physgun.netlify.app/pointshop-2/custom-item-part1/
- Adding items programatically: https://gist.github.com/Kamshak/e343784e15966b1fa8a38544793293e9
- Binding to different key: https://gist.github.com/Kamshak/a4e8246f336ba5599f01855013fe55d8
- Restrict weapon equiping for Permaweapons by Team: https://gist.github.com/Kamshak/d6cc30c828ec9d0316ba8ef0eb4e5858
- Award a random item from a category: https://gist.github.com/Kamshak/3bf0e70316fbab83c00a95d36c14d29e
- More module information & how to create settings that can be modified via GUI: http://pointshop2.kamshak.com/en/latest/developer/modules.html


## Docs

Documentation: http://pointshop2.kamshak.com/en/latest/

**Get PS2 Extensions / Plugins**:

 DLC: https://github.com/Kamshak?tab=repositories&q=ps2&type=&language=
 
 Achievements: https://github.com/Phoenixf129-2/pointshop2-achievements/

# Pointshop 2

## Welcome to Pointshop 2
Pointshop 2 is the next generation pointshop, coded from scratch to provide a better experience to both, server administrators and players. Its main features include easy creation and management of items, categories, players and settings through in-game menus as well as an innovative, inventory-based approach to item equipment. 

## Shop Management
It can be very frustrating as a server administrator to manage a shop system. Previously, items and categories would be created in Lua files, which is error prone, complicated and often a very tedious task. Frequently changing the map during modifications was very time consuming as well as making it impossible to play on the server.

Pointshop 2 takes a different approach, providing a visual interface to all options. Map changes are not required anymore and intuitive editors allow you to create items without a single line of Lua code. After item creation you simply drag & drop them into a category. Organizing your store has never been easier: create categories and up to three levels of subcategories using a simple tree editor. Click on the save button and all changes are instantly saved and sent to all clients.

## Smooth integration
Previously it could be frustrating for players to use the shop. Limitations such as not being able to use the shop while in spectator - which would be a perfect time to go shopping - are not present in Pointshop 2. It is always possible to customize ones appearance at any stage of the game.

Gaining points would previously mean waiting for some time and was usually solely based on the time spent playing. Pointshop 2 rewards active players by integrating into gamemode events. In TTT you are for example given points for identifying bodies, healing others and of course killing a traitor. No more people idling for points!

## Batteries included
The script comes with a set of exclusively designed trails as well as exclusively designed hats, accessories and badges. After installing your players can instantly have fun and play with accessories such as animated, funny pets that follow you around, animated hats and cool outfits, while you add and modify items to create an experience unique to your server.

## Multiple Currencies
A donator shop is an important feature for servers that are financed through donations.
Pointshop 2 supports your server by supporting two currencies: a standard, in game earned currency and an exclusive, premium currency. Integration into popular donation systems is being worked on.

## Extensible and customizable
Every aspect of the script can be customized. Full support for derma skins allows a complete visual makeover to fit your community's looks. The script itself is built in a modular and extensible way, you can expect many skins, addons and new item types to be made!

# Installation and Setup

Download [Pointshop2](https://github.com/Kamshak/Pointshop2/archive/master.zip) [LibK](https://github.com/Kamshak/LibK/archive/master.zip) and [PAC3](https://github.com/CapsAdmin/pac3/archive/master.zip)

Install all three addons so that you end up with three folders in your addons folder:

```
garrysmod/addons
  /libk
  /pac3
  /pointshop2
```

**It is very important that your folder names are all lowercase. You want to have a folder named libk not LibK-master. Garrysmod does not load addons where the folder name contains uppercase letters** 

Having trouble? Check [the official documentation](http://pointshop2.kamshak.com/en/latest/installation.html) for more instructions. You can also find Workshop setup and MySQL configuration options there.

## Troubleshooting

- **Hats/Texthats are lagging behind players**: This is caused by addons that use a "util.traceline" on the client. Known addons are: uTime, third person addns
- **Cannot open the shop**: Can have many reasons, always check server & client console for errors. Make sure that in addons/ all of the names are lowercase, e.g. `addons/libk` instead of `addons/LibK`.

## Credits

Pointshop 2 wouldn't be possible without the help of many people. 
Thanks go to:
- The CyberGmod community, especially Dazzaoh, STEEZE, Phoenixf129 and Reuben. Thank you for hosting the test server and the help with testing and developing the script. Special thanks for the generous donation of the PAC items included.
- NiandraLades for pointshop 2 exclusive trails and allowing the inclusion of her numerous trail Packs and her kind help with writing documentation.
- !cake for his remarkable work with GLib, a technical tool that is used throughout the script and makes it possible to handle large amounts of data very efficiently.
- MDave for his help on complex questions, especially on topics such as stencils.
- adamburton aka _Undefined for the original pointshop script
- CapsAdmin for PAC3, which is used to provide the advanced hat/accessory positioning editor and the rendering of advanced items, as well as ludata
- Vercas for vON, the flexible lua serializer
- Lexic for the creation of the lua Promises system used throughout the script to provide non-blocking, blazing fast mysql queries
