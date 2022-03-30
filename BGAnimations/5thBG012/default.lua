
local sub = ...

local t = Def.ActorFrame{}
t[#t+1] = loadfile( BGA_G.BPath("5thBG000") )()

local params = BGA_G.Create( {
	File = "/5th/Backgrounds/BABC 2x2.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_i = 2,	Commands = "Mirror"
} )

params:ParTweak( sub )

t[#t+1] = Def.ActorFrame{
	params:Load(),
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		local d = self:GetDelay() * 2
		self:diffusealpha(0):sleep(d)
		self:diffusealpha(1):sleep(d)
		self:diffusealpha(0):sleep(2*d)
		self:queuecommand("Repeat")
	end
}

params = BGA_G.Create( {
	File = "/5th/Backgrounds/BABC 2x2.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_i = 3,	Commands = "Mirror"
} )

params:ParTweak( sub )

t[#t+1] = Def.ActorFrame{
	params:Load(),
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		local d = self:GetDelay() * 2
		self:diffusealpha(0):sleep(2*d)
		self:diffusealpha(1):sleep(d)
		self:diffusealpha(0):sleep(d)
		self:queuecommand("Repeat")
	end
}

return Def.ActorFrame{ t }