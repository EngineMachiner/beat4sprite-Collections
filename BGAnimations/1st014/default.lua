
local t = Def.ActorFrame{}

local params = BGA_G.Create( {
	{
		File = "/1st/Backgrounds/HA.png",
		X_num = 1, Zoom = 2,
		BGMirror = true, Reversed = true,
		Commands = "StairsStates",
		StopAtFrame = 0.5,
		HurryTweenBy = 2,
		TCV = { 0, -1 }
	}
} )

params[1]:Load( t )

local dirs = {
	BGA_G.SongBGPath(),
	"/1st/Backgrounds/IDABC.png",
	BGA_G.SongBGPath(),
	"/1st/Backgrounds/IBAB.png",
}

for i=1,#dirs do
	if BGA_G.FileCheck( dirs[i] ) then
		dirs[i] = BGA_G.GPath .. dirs[i]
	end
end

local function CycleWithDelay(self, t)
	if not self.T then
		if t == 4 then
			self:diffuse(Color.Yellow)
		end
		self:sleep(t-1)
		self:diffusealpha(1)
		self.T = true
	end
	self:sleep(1)
	self:diffusealpha(0)
	self:sleep(#dirs-1)
	self:diffusealpha(1)
	self:queuecommand("Cycle")
end

t[#t+1] = Def.ActorFrame{
	OnCommand=function(self)
		self:diffusealpha(0.5)
		self:queuecommand("Cycle")
	end
}

local t2 = t[#t]
for i=1,4 do

	params[i+1] = {
		Index = i+1,
		File = dirs[i],
		Script = BGA_G.SPath .. "Kaleidoscopes/Main.lua"
	}

	t2[#t2+1] = Def.ActorFrame{
		OnCommand=function(self) 
			self:diffusealpha(0) 
		end,
		CycleCommand=function(self)
			CycleWithDelay(self, i)
		end,
		loadfile( params[i+1].Script )( params[i+1] )
	}

end

return Def.ActorFrame{ t }