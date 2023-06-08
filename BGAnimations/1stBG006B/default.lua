
local params = beat4sprite.create {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Script = "Kaleidoscopes/Single.lua"
	},

	{
		File = "/1st/Sprites/C 5x1.png",
		States = { 1, 5 },		Zoom = 0.25,
		Script = "SpaceEffects/Bounce.lua",
		AnimationTypes = "Static"
	}

}

local p = params[1].Actors

local quad = beat4sprite.Sprite.colorQuad( color("#505050") ) .. { OnCommand=function(self)
		self:blend("BlendMode_Modulate"):rainbow()
		self:effectperiod( 16 * self:getTweenRate(p) )
end }

p = quad

return params:Load()