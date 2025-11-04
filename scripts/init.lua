Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/masks.json")
Tracker:AddItems("items/settings.json")

ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")
ScriptHost:LoadScript("scripts/custom_items/advanced_static.lua")
ScriptHost:LoadScript("scripts/custom_items/advanced_consumable.lua")
ScriptHost:LoadScript("scripts/custom_items/advanced_toggle.lua")
ScriptHost:LoadScript("scripts/custom_items/advanced_progressive.lua")
ScriptHost:LoadScript("scripts/custom_items/dungeon_reward.lua")
ScriptHost:LoadScript("scripts/custom_items/items.lua")

ScriptHost:LoadScript("scripts/updates/update_configurables.lua")
ScriptHost:LoadScript("scripts/updates/update_capacity_upgrades.lua")
ScriptHost:LoadScript("scripts/updates/update_dungeon_things.lua")
ScriptHost:LoadScript("scripts/updates/updates.lua")

Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/songs.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tradequests.json")
Tracker:AddLayouts("layouts/dungeons.json")
Tracker:AddLayouts("layouts/equipment.json")
Tracker:AddLayouts("layouts/masks.json")

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