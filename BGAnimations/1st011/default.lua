
local params = {

	{
		File = "/1st/Sprites/HSV/A 4x1.png",
		Columns = 1,
		firstState = 2,
		MirrorX = true
	},

	{
		File = "/1st/Backgrounds/B.png",
		Columns = 1,
		Commands = { "Color", "Mirror" },
		MirrorX = true,
		Color = Color.Black
	}

}

local p = beat4sprite.copy( params[1], { firstState = 4 } )

params[1].Actors = beat4sprite.Load(p) .. {
	OnCommand=function(self) self:queuecommand("Repeat") end,
	RepeatCommand=function(self)
		local t = self:getTweenRate( p:getInternals() ) * 2
		self:sleep(t):diffusealpha(0):sleep(t):diffusealpha(1)
		self:queuecommand("Repeat")
	end
}
	
return beat4sprite.Load(params)