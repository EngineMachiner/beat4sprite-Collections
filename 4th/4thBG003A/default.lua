
local args = ...

local t = BGA_G.Frame()

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		BGMirror = true,
		X_num = 1
	},

	{	
		File = "4th/Sprites/ABCD 5x4.png",
		Frames = { 7, 10 },		Zoom = 1.0635,
		Script = "SpiralStaticTrace.lua",
		Commands = "TwoSprites"
	},

	{
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },
		X_num = { 0, 4 },	Y_num = { -2, 1 },
		Spacing = { 1.0635, 1 },
		Color = "Rainbow",
		Commands = { "StairsStates", "Fade" }
	},

	{
		File = { 
			THEME:GetPathG("","_blank"),
			"4th/Backgrounds/C.png"
		},
		Dir = true,		LoadOnce = true,
		Script = "SplitScreen.lua"
	}

} )
 
	params:ParTweak( args )

	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:diffusealpha(1)
			self:queuecommand("Hide")
		end,
		HideCommand=function(self)
			local d = self:GetDelay(2)
			self:sleep(8*d):linear(4):diffusealpha(0)
		end
	}
	params[1]:Load( t[#t] )

	t[#t+1] = Def.ActorFrame{
		Def.Quad{
			OnCommand=function(self)
				local scl = SCREEN_HEIGHT / 240
				self:setsize(320 * scl, 240 * scl)
				self:Center()
				self:diffuse(Color.Black)
			end
		},
		Def.ActorFrame{
			OnCommand=function(self)
				BGA_G.ObjFuncs(self)
				self:GetParent():diffusealpha(1)
				self:queuecommand("Hide")
			end,
			HideCommand=function(self)
				local d = self:GetDelay(2)
				self:GetParent():sleep(4*d):diffusealpha(0)
			end
		}
	}
	params[3]:Load( t[#t][2] )

	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:y(23)
			self:diffusealpha(1)
			self:queuecommand("Hide")
		end,
		HideCommand=function(self)
			local d = self:GetDelay(2)
			self:sleep(8*d):diffusealpha(0)
		end
	}
	params[2]:Load( t[#t] )

	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:diffusealpha(0)
			self:queuecommand("Hide")
		end,
		HideCommand=function(self)
			local d = self:GetDelay(2)
			self:sleep(8*d):diffusealpha(1)
			self:sleep(4*d):diffusealpha(0)
		end
	}
	params[4]:Load( t[#t] )

	t[#t+1] = Def.ActorFrame{
		Def.ActorFrame{
			OnCommand=function(self)
				BGA_G.ObjFuncs(self)
				self:queuecommand("Hide")
			end,
			HideCommand=function(self)
				local d = self:GetDelay(2)
				local p = self:GetParent()
				p:diffusealpha(0)
				p:sleep(12*d):diffusealpha(1)
				p:sleep(4*d):diffusealpha(0)
			end
		}
	}

	local p = params[4]:Copy( {
		File = params[4].File[2],
		Script = "WarpingEffects/Bob.lua"
	} )

	p:Load( t[#t][1] )
	
	BGA_G.Load( {
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },
		Blend = "BlendMode_Add",
		Spin = true,	Even = true,
		Script = "Explode.lua"
	}, t[#t] )

	p = params[1]:Copy( { Commands = "Cross" } ):Load(t)

	t[#t+1] = Def.ActorFrame{

		Def.Quad{	
			OnCommand=function(self)
				self:FullScreen()
				self:diffuse(Color.Black)
			end
		},

		Def.ActorFrame{
			loadfile( BGA_G.RPath .. "default.lua" )(),
			OnCommand=function(self)
				BGA_G.ObjFuncs(self)
				self:GetParent():diffusealpha(0)
				self:queuecommand("Hide")
			end,
			HideCommand=function(self)
				local d = self:GetDelay(2)
				self:GetParent():sleep(16*d):diffusealpha(1)
			end
		}

	}
	
return Def.ActorFrame{ t }