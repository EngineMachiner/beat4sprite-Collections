
local t = Def.ActorFrame{}

local bg = {
	"1st/Sprites/HSV/A 4x1.png",
	"1st/Backgrounds/F2.png",
	"1st/Sprites/HSV/A 4x1.png",
	"1st/Backgrounds/D2.png"
}

for i=1,#bg do
	bg[i] = BGA_G.FileCheck( bg[i] ) and BGA_G.GPath .. bg[i] or bg[i]
end

local params = BGA_G.Create( {
	File = "1st/Sprites/Clock 6x5.png",
	Commands = "ZWrite",
	Frame_i = 1,	Frame_l = 30,
	Zoom = 5,	FrmDelay = 2
} )

local bpm = GAMESTATE:GetSongBPS() * 60
if bpm > 200 then
	local d = params.FrmDelay
	d = d * math.floor( bpm * 0.01 )
	d = d * params.InternalDelay
	params.FrmDelay = d
end

for i=1,2 do

	t[#t+1] = BGA_G.Frame()
	
	local t = t[#t]

	if i > 1 then
		params:Copy(copy):Load( t )
	end

	t[#t+1] = Def.Sprite{
		OnCommand=function(self)

			BGA_G.ObjFuncs(self)
			self.num = i

			local p = { Frames = {0,0} }
			
			self:Center()
			self:Load(bg[self.num])
			self:SetStates( BGA_G.Create( p ) )
			self:animate(false)

			self.s = 0
			self:ztest(true)

			self:queuecommand("Repeat")

		end,
		RepeatCommand=function(self)
			
			while self.num > #bg do
				self.num = self.num - #bg
			end

			self:Load(bg[self.num])

			if self.num == 4 then 
				self:cropleft(0.375)
				self:cropright(0.375)
			else
				self:cropleft(0):cropright(0)
			end

			local fake = { Frames = {0,0} }
			fake.Frames = self.num == 1 and {0,0} or fake.Frames
			fake.Frames = self.num == 3 and {2,2} or fake.Frames
			self:SetStates( BGA_G.Create( fake ) )

			self.num = self.num + 1

			self:sleep( ( params.FrmDelay - self.s ) )
			self.s = 0

			self:queuecommand("Repeat")

		end
	}

end

return Def.ActorFrame{ 
	BGA_G.Load( {
		File = bg[1], 
		X_num = 1, 
		Commands = "Mirror", 
		BGMirror = true 
	} ), t
}