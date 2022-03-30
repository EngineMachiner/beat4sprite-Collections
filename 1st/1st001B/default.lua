
local t = Def.ActorFrame{}

local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/A.png",
		X_num = 1,
		Delay = 4,
	},

	{
		File = "1st/Sprites/J 3x5.png",
		X_num = 1,
		Spacing = { 1, 0.65 },
		Y_num = 1,
		Zoom = 2.5,
		Frame_l = 15,
		Color = Color.Orange,
		Blend = 'add'
	}

} )

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:diffuse(Color.Black)
		end
	}

	params[1]:Load( t )
	
	t[2].OnCommand = function(self)
		self:zoomx( 0.5 )
		self:x(25)
	end

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:blend("BlendMode_InvertDest")
		end
	}

local matrix = {
	{ 0, 0.625 },
	{ 0.5, 0 }
}

for i=-1,1 do
	for k=1,2 do
		t[#t+1] = Def.Sprite{
			Texture=BGA_G.GPath .. "1st/Backgrounds/G.png",
			OnCommand=function(self)

				BGA_G.ObjFuncs(self)
				self:Center()

				local p = BGA_G.Create( {} )

				self:SetStates(p)

				self:x( self:GetX() + self:GetZoomedWidth() * i )
				self:cropleft(matrix[1][k])
				self:cropright(matrix[2][k])

				if math.abs(i) == 1 then 
					self:zoomx( - self:GetZoomX() )
				end

			end
		}
	end
end

params[2]:Load( t )

return Def.ActorFrame{ t }