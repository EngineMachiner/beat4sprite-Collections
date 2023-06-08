
local quad = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }

local params = {
	{ File = "/1st/Backgrounds/ID.png", Actors = quad },
	{ File = "/1st/Backgrounds/IDA.png" },
	{ File = "/1st/Backgrounds/IDAB.png" }
}

for i=1,3 do

	local set = params[i]
	
	set.Columns = 1					set.Commands = "Blink"
	set.EffectPeriod = 4			set.EffectOffset = i
	
end

return beat4sprite.Load(params)