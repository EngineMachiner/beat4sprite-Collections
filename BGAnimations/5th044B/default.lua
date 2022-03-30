
local tweaks = ...

local params = BGA_G.Create( {
	{},		{ Remove = true }
} )

local params_2 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	Frame_i = 11,	Frame_l = 15,
	Dir = "Up", 	Script = "Particles.lua"
} )

params:ParTweak( tweaks )
params_2:ParTweak( tweaks )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th044A") )( params ),
	params_2:Load()
}