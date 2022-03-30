
local t = Def.ActorFrame{}

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		Frame_i = 13,	X_num = 4,
		Y_num = 2,	X_coord = -1,
		Y_coord = -1,	Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

} )

local s = BGA_G.BPath("5th001A")
t[#t+1] = loadfile( s )( params )

params:ParTweak( {
	Class = "Quad",
	Fade = { 1, -1 },	Color = Color.Red,
	Blend = "BlendMode_Modulate"
} )

t[#t+1] = loadfile( s )( params )

params = BGA_G.Create( {
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 1,	Frame_l = 2,
	Script = "LineXY.lua"
} )

params:Load(t)

return Def.ActorFrame{ t }
