
local params = beat4sprite.create {

	{
		File = "/1st/Backgrounds/HA.png",
		Columns = 1,		Rows = 1,		Zoom = 2,
		Commands = "Mirror",
		Scroll = { 0, -1 }
	},	{}

}

params[2] = params[1]:copy():tweak { Alpha = 0.5,	Scroll = { 0, 1 } }

return params:Load()