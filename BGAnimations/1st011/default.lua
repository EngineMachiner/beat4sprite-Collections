
local params = BGA_G.Create( {

	{
		File = "/1st/Sprites/HSV/A 4x1.png",
		X_num = 1,
		Frame_i = 2,
		BGMirror = true
	},

	{
		File = "/1st/Backgrounds/B.png",
		X_num = 1,
		Commands = { "Color", "Mirror" },
		BGMirror = true,
		Color = color("0,0,0,1")
	}

} ) 

local p = {	Frame_i = 4 }
p = BGA_G.Copy( params[1], p )

params[1].Actors = Def.ActorFrame{
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		self:sleep(2):diffusealpha(0)
		self:sleep(2):diffusealpha(1)
		self:queuecommand("Repeat")
	end
}

p:Load( params[1].Actors )
	
return params:Load()