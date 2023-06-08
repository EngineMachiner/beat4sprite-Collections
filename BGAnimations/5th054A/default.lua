
local t = Def.ActorFrame{}

-- Delay
local d = ... or 1

local g = {}
for i=1, 3, 2 do g[#g+1] = { Frame = i - 1 } end

local params = beat4sprite.create {
	tweakScript = beat4sprite.Paths.getBGAFile("5th037"),
	File = "/5th/Backgrounds/BABC 2x2.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	Cleanup = true,			CustomStates = g,
	AnimationRate = d
}
params:Load(t)

params = beat4sprite.create {
	tweakScript = beat4sprite.Paths.getBGAFile("5th037"),
	File = "/5th/Sprites/BAB 4x4.png",
	Columns = { -4, 3 },	Rows = { -2, 1 },
	Cleanup = true,		States = { 9, 10 },
	AnimationRate = d
}
params:Load(t)

return Def.ActorFrame{ t }