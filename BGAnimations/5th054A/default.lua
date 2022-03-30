
local t = Def.ActorFrame{}

-- Delay
local d = ... or 1

local g = {}
for i=1, 3, 2 do
	g[#g+1] = { Frame = i - 1 }
end

local params = BGA_G.Create( {
	FileTweak = BGA_G.BPath("5th037"),
	File = "/5th/Backgrounds/BABC 2x2.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Cleanup = true,		CustomFrames = g,
	FrmDelay = d
} )
params:Load(t)

params = BGA_G.Create( {
	FileTweak = BGA_G.BPath("5th037"),
	File = "/5th/Sprites/BAB 4x4.png",
	X_num = { -4, 3 },	Y_num = { -2, 1 },
	Cleanup = true,		Frames = { 9, 10 },
	FrmDelay = d
} )
params:Load(t)

return Def.ActorFrame{ t }