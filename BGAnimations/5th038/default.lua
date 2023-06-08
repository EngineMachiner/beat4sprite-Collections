
local params = beat4sprite.create( {
	File = "5th/Sprites/AB 4x4.png",
	States = { 16, 16 },
	Columns = 4,
	Rows = { -2, 1 }
} )

return beat4sprite.ActorFrame() .. {

	OnCommand=function(af)
		af:RunCommandsOnChildren(function(c)
			c:set_tween_uses_effect_delta(true)
			c:effectclock('beat')
		end)
		af:queuecommand("Repeat")
	end,

	loadfile(beat4sprite.Paths.getBGAFile("5th037B"))(),

	Def.ActorFrame{
		loadfile(beat4sprite.Paths.getBGAFile("5th012A"))(),
		RepeatCommand=function(self)
			local d = beat4sprite.GAMESTATE.getDelay(self)
			self:diffusealpha(0):sleep(d)
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep( 2 * d )
			self:queuecommand("Repeat")
		end
	},

	Def.ActorFrame{
		loadfile(beat4sprite.Paths.getBGAFile("5th016A"))(),
		RepeatCommand=function(self)
			local d = beat4sprite.GAMESTATE.getDelay(self)
			self:diffusealpha(0):sleep(2*d)
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep(d)
			self:queuecommand("Repeat")
		end
	},

	Def.ActorFrame{
		params:Load(),
		RepeatCommand=function(self)
			local d = beat4sprite.GAMESTATE.getDelay(self)
			self:diffusealpha(0):sleep(3*d)
			self:diffusealpha(1):sleep(d)
			self:queuecommand("Repeat")
		end
	}

}