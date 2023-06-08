

local args = ...

local sub = beat4sprite.createInternals { File = "4th/Sprites/Gradients/B.png" }

local params = beat4sprite.create {

	{ 

		File = beat4sprite.GAMESTATE.getSongBG(),
		Script = "Kaleidoscopes/Single.lua",

		Actors = beat4sprite.Actor(sub) .. {
			OnCommand=function(self)
				self:Load(sub.File)
				self:FullScreen():zoom( self:GetZoom() * 2 ) 
				self:diffuse( color("#0000FF") )
				self:blend("BlendMode_WeightedMultiply")
				self:spin():effectmagnitude( 0, 0, - 45 * 0.5 )
			end
		}

	},

	{	
		File = "4th/Sprites/AB2 5x4.png",
		States = { 2, 15 },			Move = "Up",
		Blend = 'add',				Color = "RainbowFlashing",
		numberOf = 18 * 3,			Script = "SpaceEffects/Particles.lua"
	}

}

params:tweak( args )

return params:Load()