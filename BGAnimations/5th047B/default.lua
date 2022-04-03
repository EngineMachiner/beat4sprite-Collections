
local tweaks = {
	Commands = "Move",
	Y_coord = 1,	Y_num = 2
}

local params = BGA_G.Create( {
	File = "5th/Sprites/DA 4x3.png",
	Dir = "Down",	Frame_i = 5,
	Frame_l = 6,	Spin = true,
	Commands = "TwoSprites",
	Script = "Particles.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th047A") )( tweaks ),
	params:Load()
}