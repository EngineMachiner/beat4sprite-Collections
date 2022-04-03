
local t = BGA_G.Create( {

	{
		File = "4th/Sprites/Gradients/A.png",
		X_num = { -6, 5 },
		Y_num = { -3, 2 },
		Zoom =  0.93,
		SpinMag = { 0, 0, 90 },
		Commands = "SpinFrame",
		Color = color("#0000FF"),
		Script = "AFTSpin.lua"
	},

	{
		File = "4th/Sprites/ABCD 5x4.png",
		Frames = 1
	},

	{
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },
		Even = true
	},

	{
		File = "4th/Sprites/ABCDE 5x4.png",
		Frames = { 5, 20 },		Sleep = 4
	}

} )

t[4] = t[2]:Copy( t[4] )
t[5] = t[3]:Copy( { Sleep = 4 } )

for i=2,5 do
	t[i]:ParTweak( {
		Script = "Explode.lua",	Blend = "BlendMode_Add",
		Spin = true,	AFT = true
	} )
end
t[4].Spin = false

return Def.ActorFrame{ t:Load() }
