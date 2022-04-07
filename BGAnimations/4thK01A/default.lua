

local args = ...

local params = BGA_G.Create( {

	{ 
		File = BGA_G.SongBGPath(),
		Script = "Kaleidoscopes/Main.lua"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },		Dir = "Up",
		Blend = "BlendMode_Add",
		Color = "RainbowFlash",
		Num = 18 * 3,	Script = "Particles.lua"
	}

} )

params:ParTweak( args )

return BGA_G.Frame() .. {

	params[1]:Load(),
	
	Def.Sprite{
		OnCommand=function(self)
			local path = BGA_G.GPath
			path = path .. "4th/Sprites/Gradients/B.png"
			BGA_G.ObjFuncs(self)
			self:Load(path)
			self:FullScreen()
			self:zoom( self:GetZoom() * 2 ) 
			self:diffuse(color("#0000FF"))
			self:blend("BlendMode_WeightedMultiply")
			self:spin()
			self:effectmagnitude(0,0,-45*0.5)
		end,
	},

	params[2]:Load()
	
}