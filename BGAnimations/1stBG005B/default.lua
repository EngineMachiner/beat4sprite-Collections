
local tweaks = {
	Index = 2,
	EffectColors = { Color.Black, color("0,0.5,0,1") },
	Fade = { 0, 1 },	EffectPeriod = 2,
	Commands = { "Mirror", "Fade" }
}

return loadfile( beat4sprite.Paths.getBGAFile("1stBG005") )( tweaks )