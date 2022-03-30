

local t = Def.ActorFrame{}

local params = BGA_G.Create( {

	{	
		File = "/5th/Sprites/DABC 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 13,
		Cleanup = true
	},

	{ Remove = true }

} )

t[#t+1] = loadfile( BGA_G.BPath("5th001A") )( params )

params = BGA_G.Create( {
	File = "/5th/Sprites/DABC 4x4.png",
	X_num = { -4, 3 },
	Y_num = { -2, 1 },
	BGMirror = true,
	Commands = { "LineStates", "Mirror" },
	Frame_i = 7,
	Frame_l = 8
} )

t[#t+1] = Def.ActorFrame{
	params:Load(),
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		local d = self:GetDelay() * 4
		self:diffusealpha(0):sleep(d)
		self:diffusealpha(1):sleep(d)
		self:diffusealpha(0):sleep(d*2)
		self:queuecommand("Repeat")
	end
}
	
t[#t+1] = Def.ActorFrame{
	loadfile(BGA_G.BPath("5th041A"))(),
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		local d = self:GetDelay() * 8
		self:diffusealpha(0):sleep(d)
		self:diffusealpha(1):sleep(d)
		self:queuecommand("Repeat")
	end
}

params = BGA_G.Create( {
	File = "/5th/Sprites/X1 5x1.png",
	X_num = 5,
	Frame_i = 1,
	Frame_l = 5,
	Commands = { "StairsStates", "SpinX" }
} )

t[#t+1] = params:Load()

return t