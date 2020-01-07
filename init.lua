dofile("mods/homing_bee/config.lua")
dofile_once("data/scripts/lib/utilities.lua")

function OnPlayerSpawned(player_entity)
    local init_check_flag = "homing_bee_done"
    if GameHasFlagRun(init_check_flag) then
        return
    end
    GameAddFlagRun(init_check_flag)

    local x, y = EntityGetTransform(player_entity)

    if (homing_bee_generate_on_player_spawned) then
        EntityLoad("mods/homing_bee/items/bee_wand.xml", x, y - 100)
    end
end

ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/homing_bee/files/gun_actions.lua")
