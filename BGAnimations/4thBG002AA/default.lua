local args = ...

local t = Def.ActorFrame{}

local params = beat4sprite.create {

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		MirrorX = true,	Columns = 1,
		Script = "WarpingEffects/Flag.lua"
	},

	{	
		File = "4th/Sprites/CABC 5x4.png",
		Columns = { -6, 5 },	Rows = { -3, 2 },
		States = 5,		Blend = true,	Alpha = 0.5,
		Commands = { "SpinFrame", "Rainbow", "Alpha" },
		SpinMag = { 0, 0, 90 },
		TextureZoom = 0.625,		Spin = true,			
		Script = "Texture.lua"
	}

}

params:tweak( args )

return params:Load()