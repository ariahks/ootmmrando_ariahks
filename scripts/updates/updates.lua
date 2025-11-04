tracker_ready = true

function tracker_on_begin_loading_save_file()
    tracker_ready = false
end

function tracker_on_finish_loading_save_file()
    tracker_ready = true
    load_bronze_scale()
    update_all()
end

function tracker_on_accessibility_updated()
    if tracker_ready then
        update_all()
    end
end

function update_all()
    update_configurables()
    update_capacity_upgrades()
    update_dungeon_things()
end