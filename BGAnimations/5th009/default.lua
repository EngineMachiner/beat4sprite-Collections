
local t = Def.ActorFrame{}

local params = beat4sprite.create {

	{
		File = "5th/Sprites/DABC 4x4.png",
		firstState = 13,	Columns = 4,
		Rows = 2,	scrollX = -1,
		scrollY = -1,	Commands = "Scroll",
		Cleanup = true
	},

	{ Remove = true }

}

local s = beat4sprite.Paths.getBGAFile("5th001A")
t[#t+1] = loadfile(s)(params)

params:tweak {
	Class = "Quad",
	Fade = "UpRight",	Color = Color.Red,
	Blend = "BlendMode_Modulate"
}

t[#t+1] = loadfile(s)(params)

params = beat4sprite.create {
	File = "5th/Sprites/DABC 4x4.png",
	firstState = 1,	lastState = 2,
	Script = "LineXY.lua"
}

params:Load(t)

return Def.ActorFrame{ t }
