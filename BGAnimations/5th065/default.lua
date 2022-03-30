
local sub = ...

local t = BGA_G.Frame()

local params = BGA_G.Create( {

	File = "/5th/Backgrounds/C.png",
	X_num = 1,
	Commands = "Mirror",
	BGMirror = true

} )

params:ParTweak( sub )

t[#t+1] = params:Load()

params = BGA_G.Create( {

	Index = 2,
	File = "/5th/Backgrounds/CA.png",
	X_num = 1,
	Commands = "Mirror",
	BGMirror = true,
	Sleep = 1

} )

params:ParTweak( sub )

t[#t+1] = Def.ActorFrame{
	params:Load(),
	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,
	RepeatCommand=function(self)
		local d = self:GetDelay() * params.Sleep
		self:diffusealpha(0):sleep(d)
		self:diffusealpha(1):sleep(d)
		self:queuecommand("Repeat")
	end
}

return Def.ActorFrame{ t }