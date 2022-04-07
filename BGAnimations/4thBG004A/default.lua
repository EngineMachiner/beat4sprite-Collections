

local args = ...

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	BGMirror = true,
	X_num = 1
} )

params:ParTweak( args )
		
return Def.ActorFrame{

	BGA_G.Load(params),

	Def.ActorFrame{
		OnCommand=function(af)
			BGA_G.ObjFuncs(af)
			af:diffusealpha(1)
			af:queuecommand("Sequence")
		end,
		SequenceCommand=function(af)
			af:sleep(1.5):diffusealpha(0)
			af:sleep(2.5):diffusealpha(1)
			af:queuecommand("Sequence")
		end,
		BGA_G.Load( {
			File = "4th/Backgrounds/F.png",
			X_pos = -0.5
		} ),
		BGA_G.Load( {
			File = "4th/Backgrounds/F2.png",
			X_pos = 0.5
		} )
	},

	Def.ActorFrame{
		loadfile( BGA_G.BPath("4thK02A") )( { 
			Index = 2, 
			Remove = true 
		} ),
		OnCommand=function(af)
			BGA_G.ObjFuncs(af)
			af:diffusealpha(0)
			af:queuecommand("Sequence")
		end,
		SequenceCommand=function(af)
			af:sleep(1.5):diffusealpha(1)
			af:sleep(1.5):diffusealpha(0)
			af:sleep(1)
			af:queuecommand("Sequence")
		end		
	}
	
}