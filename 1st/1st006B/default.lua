
local params = BGA_G.Create( {
	File = "1st/Backgrounds/A.png",
	X_num = 1,
	Commands = "Color",
	Color = color("#f80060")
} )

return Def.ActorFrame{ 
	loadfile(BGA_G.BPath("1st006"))(),
	params:Load()
}