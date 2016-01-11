This project is designed to be a resource pack for Minecraft. To install, copy
the contents of this project into the resourcepacks folder of minecraft.

It should look something like this:

minecraft\resourcepacks\MCComputerCraftScripts\

The ending tree should look something like this:

minecraft\resourcepacks\MCComputerCraftScripts\assets\computercraft\lua\rom\mc

How to make it work

When you need ths scripts run /rom/mc/install on the computer/turtle that you want to use.

If you want the scripts to always start up then create a file called startup on
the device and put in the following:

	shell.run("/rom/mc/install")
