
local sub = ...

local params = beat4sprite.create {

    File = {
        beat4sprite.GAMESTATE.getSongBG(),
        "5th/Backgrounds/CABCD.png",
        "5th/Backgrounds/C.png",
        "5th/Backgrounds/CA.png"
    },
    Script = "Cyclic/SplitScreen.lua",
    Alphas = { 2, 3 }

}

params:tweak(sub)

return params:Load()