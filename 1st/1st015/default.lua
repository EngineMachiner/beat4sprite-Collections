
local q = Def.Quad{
	AtBack = true,
	OnCommand=function(self)
		self:FullScreen()
		self:diffuse(Color.Black)
	end
}

local params = {
	{ File = "/1st/Backgrounds/ID.png", Actors = q },
	{ File = "/1st/Backgrounds/IDA.png" },
	{ File = "/1st/Backgrounds/IDAB.png" }
}

for i=1,3 do
	params[i].X_num = 1
	params[i].Commands = "Blink"
	params[i].Period = 4
	params[i].Offset = i
end

params = BGA_G.Create( params )

return params:Load()