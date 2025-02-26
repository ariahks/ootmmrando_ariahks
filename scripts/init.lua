Tracker:AddItems("items/dungeons.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/masks.json")
Tracker:AddItems("items/options.json")

ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")

ScriptHost:LoadScript("scripts/custom_items/checkable_progressive.lua")
ScriptHost:LoadScript("scripts/custom_items/checkable_toggle.lua")
ScriptHost:LoadScript("scripts/custom_items/conditional_consumable.lua")
ScriptHost:LoadScript("scripts/custom_items/progressive_variable_image.lua")
ScriptHost:LoadScript("scripts/custom_items/conditional_label.lua")
ScriptHost:LoadScript("scripts/custom_items/conditional_toggle.lua")
ScriptHost:LoadScript("scripts/custom_items/conditional_overlay_toggle.lua")
ScriptHost:LoadScript("scripts/custom_items/items.lua")

ScriptHost:LoadScript("scripts/update_capacity_upgrades.lua")
ScriptHost:LoadScript("scripts/update_configurables.lua")
ScriptHost:LoadScript("scripts/update_dungeon_things.lua")
ScriptHost:LoadScript("scripts/updates.lua")

Tracker:AddLayouts("layouts/songs.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tradequests.json")
Tracker:AddLayouts("layouts/dungeons.json")
Tracker:AddLayouts("layouts/quest.json")
Tracker:AddLayouts("layouts/equipment.json")
Tracker:AddLayouts("layouts/masks.json")
Tracker:AddLayouts("layouts/options.json")

if string.find(Tracker.ActiveVariantUID, "Souls") then
    Tracker:AddLayouts("layouts/souls.json")
    Tracker:AddLayouts("layouts/layouts.json")
    Tracker:AddLayouts("layouts/tracker_souls.json")
    Tracker:AddLayouts("layouts/broadcast_souls.json")
else
    Tracker:AddLayouts("layouts/layouts.json")
    Tracker:AddLayouts("layouts/tracker.json")
    Tracker:AddLayouts("layouts/broadcast.json")
end