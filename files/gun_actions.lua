table.insert(actions,
        {
            id = "HOMING_BEE",
            name = "Homing Bee",
            description = "Summon bee.",
            sprite = "data/ui_gfx/gun_actions/bee.png",
            type = ACTION_TYPE_PROJECTILE,
            spawn_level = "1,2,3,4,5",
            spawn_probability = "1,1,1,1,1",
            price = 280,
            mana = 20,
            max_uses = 150,
            action = function()
                add_projectile("mods/homing_bee/items/homing_bee.xml")
                c.extra_entities = c.extra_entities .. "data/entities/misc/chaotic_arc.xml,"
                for _ = 1, 10 do
                    c.extra_entities = c.extra_entities .. "data/entities/misc/homing.xml,data/entities/particles/tinyspark_white.xml,"
                end
                add_projectile("mods/homing_bee/items/homing_bee.xml")
            end,
        }
)