
local scripts = {
	BGA_G.BPath("5thR003B"),
	BGA_G.BPath("5thR003C"),
	BGA_G.BPath("5thR003D"),
	BGA_G.BPath("5thR003E")
}

local t = BGA_G.Frame()

for i = #scripts, 1, -1 do
	t[#t+1] = Def.ActorFrame{
		loadfile(scripts[i])(),
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:diffusealpha(1):sleep( ( i - 1 ) * 2 )
			self:diffusealpha(0):sleep( ( #scripts - 1 ) * 2 )
			self:queuecommand("Repeat")
		end,
		GoCommand=function(self)
			self:queuecommand("Repeat")
		end,
		RepeatCommand=function(self)
			local d = self:GetDelay() * 2
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep( ( #scripts - 1 ) * d )
			self:queuecommand("Go")
		end
	}
end

return Def.ActorFrame{ t }