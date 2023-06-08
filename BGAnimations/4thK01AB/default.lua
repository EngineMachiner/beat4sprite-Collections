
local args = ...

local tweaks = {
	Index = 2,
	Remove = true,
	tweak = beat4sprite.tweak
}

local params = beat4sprite.create( {
	Index = 3,
	File = "4th/Sprites/ABCDEF 5x4.png",
	States = 16,	Columns = 5,
	Rows = { -2, 3 },	Zoom = 0.925,
	tweenRate = 2,
	Commands = { "Rainbow", "SpinFrame", "Alpha" },
	TextureZoom = 0.625,		Spin = true,			
	Script = "Texture.lua"
} )

tweaks:tweak( args )
params:tweak( args )
	
return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("4thK01A") )( tweaks ),
	params:Load()
}