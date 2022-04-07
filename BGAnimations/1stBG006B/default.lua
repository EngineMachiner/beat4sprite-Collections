
local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		X_num = 1,	BGMirror = true,
		Script = "Kaleidoscopes/Main.lua"
	},

	{
		File = "/1st/Sprites/C 5x1.png",
		Static = true,
		Frames = { 1, 5 },
		Zoom = 0.25,
		Commands = { "RandomInitState" },
		Script = BGA_G.SPath .. "SpaceEffects/Bounce.lua"
	}

} )

	params[1].Actors = Def.Quad{
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:FullScreen():diffuse(color("#505050"))
			self:blend("BlendMode_Modulate"):rainbow()
			self:effectperiod( 16 * self:GetDelay() )
		end
	}

return params:Load()