function update_capacity_upgrades()
    update_bombs()
    update_bow()
    update_slingshot()
    update_sticks()
    update_nuts()
end

function update_bombs()
    local bombs = Tracker:FindObjectForCode("bombs")

    if bombs.AcquiredCount == 19 then
        bombs.AcquiredCount = 0
    end
    if bombs.AcquiredCount == 1 or bombs.AcquiredCount == 29 then
        bombs.AcquiredCount = 20
    end
    if bombs.AcquiredCount == 21 or bombs.AcquiredCount == 39 then
        bombs.AcquiredCount = 30
    end
    if bombs.AcquiredCount == 31 then 
        bombs.AcquiredCount = 40
    end
end

function update_bow()
    local bow = Tracker:FindObjectForCode("fairy_heros_bow")

    if bow.ItemState:getStage() == 0 then
        bow.ItemState:setBadgeText(0, "white")
    else
        if bow.ItemState:getStage() == 1 then
            bow.ItemState:setBadgeText("30", "white")
        else
            if bow.ItemState:getStage() == 2 then
                bow.ItemState:setBadgeText("40", "white")
            else
                if bow.ItemState:getStage() == 3 then
                    bow.ItemState:setBadgeText("50", "lime")
                end
            end
        end
    end
end

function update_slingshot()
    local slingshot = Tracker:FindObjectForCode("fairy_slingshot")

    if slingshot.AcquiredCount == 29 then
        slingshot.AcquiredCount = 0
    else
        if slingshot.AcquiredCount == 1 or slingshot.AcquiredCount == 39 then
            slingshot.AcquiredCount = 30
        else
            if slingshot.AcquiredCount == 31 or slingshot.AcquiredCount == 49 then
                slingshot.AcquiredCount = 40
            else
                if slingshot.AcquiredCount == 41 then
                    slingshot.AcquiredCount = 50
                end
            end
        end
    end
end

function update_sticks()
    local sticks = Tracker:FindObjectForCode("deku_sticks")

    if sticks.AcquiredCount == 9 then
        sticks.AcquiredCount = 0
    end
    if sticks.AcquiredCount == 1 or sticks.AcquiredCount == 19 then
        sticks.AcquiredCount = 10
    end
    if sticks.AcquiredCount == 11 or sticks.AcquiredCount == 29 then
        sticks.AcquiredCount = 20
    end
    if sticks.AcquiredCount == 21 then
        sticks.AcquiredCount = 30
    end
end

function update_nuts()
    local nuts = Tracker:FindObjectForCode("deku_nuts")

    if nuts.AcquiredCount == 19 then
        nuts.AcquiredCount = 0
    end
    if nuts.AcquiredCount == 1 or nuts.AcquiredCount == 29 then
        nuts.AcquiredCount = 20
    end
    if nuts.AcquiredCount == 21 or nuts.AcquiredCount == 39 then
        nuts.AcquiredCount = 30
    end
    if nuts.AcquiredCount == 31 then
        nuts.AcquiredCount = 40
    end
end