To install this into your computercraft OS do the following:

Find your 'rom' directory for computercraft. It should be located in a place similar to:

C:\Users\[your name]\AppData\Roaming\.minecraft\mods\computercraft\lua\rom


Now open the file "startup" in a text editor


In the line right after 'local sPath...' add:

	sPath = sPath..":/rom/mc"

Then at the end of the file on the last line add:

	shell.run("/rom/mc/api/_loadapis")


Then copy my scripts to the folder 'mc' within the 'rom' folder.

That's it! They are now installed!

