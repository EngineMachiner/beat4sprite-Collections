
local sub = ...

local params = BGA_G.Create( {

    File = {
        BGA_G.SongBGPath(),
        "5th/Backgrounds/CABCD.png",
        "5th/Backgrounds/C.png",
        "5th/Backgrounds/CA.png"
    },
    Script = "SplitScreen.lua",
    Alphas = { 2, 3 },      LoadOnce = true

} )

params:ParTweak( sub )

return params:Load()