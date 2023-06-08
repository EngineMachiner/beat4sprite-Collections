
local params = beat4sprite.create( {

	{
		File = "1st/Sprites/E 4x1.png",
		lastState = 4,
		AnimationRate = 0.25,
		Run = function(self) self:fadeleft(0.125):faderight(0.025) end
	},

	{
		File = "1st/Sprites/Gradients/SkullR2 5x6.png",
		Columns = 2,
		Zoom = 2,
		Rows = 1,
		lastState = 30,
		Blend = "BlendMode_Add",
		Commands = "Blend"
	}

} ) 

return params:Load()