local tweaks = { { Index = 3, Remove = true } }
tweaks[2] = { Index = 4, Remove = true }
return loadfile( BGA_G.BPath("5th048A") )( tweaks )