taken_rewards = { false, false, false, false, false, false, false, false, false, false, false, false, false }

DungeonReward = CustomItem:extend()

function DungeonReward:init(name, code)
    self:createItem(name)
    self.code = code
    self:setProperty("active", false)
    self:setProperty("reward", 0)

    local imagePaths = { "images/dungeons/rewards/kokiris_emerald.png", "images/dungeons/rewards/gorons_ruby.png", "images/dungeons/rewards/zoras_sapphire.png", "images/dungeons/rewards/forest_medallion.png", "images/dungeons/rewards/fire_medallion.png", "images/dungeons/rewards/water_medallion.png", "images/dungeons/rewards/spirit_medallion.png", "images/dungeons/rewards/shadow_medallion.png", "images/dungeons/rewards/light_medallion.png", "images/dungeons/rewards/odolwas_remains.png","images/dungeons/rewards/gohts_remains.png", "images/dungeons/rewards/gyorgs_remains.png", "images/dungeons/rewards/twinmolds_remains.png" }

    self.activeImages = {}
    self.disabledImages = {}
    for i, v in ipairs(imagePaths) do
        self.activeImages[i] = ImageReference:FromPackRelativePath(v)
        self.disabledImages[i] = ImageReference:FromPackRelativePath(v, "@disabled")
    end

    self.activeImages[0] = ImageReference:FromPackRelativePath("images/dungeons/rewards/unknown.png")
    self.disabledImages[0] = ImageReference:FromPackRelativePath("images/dungeons/rewards/unknown.png", "@disabled")
    
    self.ItemInstance.PotentialIcon = self.activeImages[0]

    self:updateIcon()
end

function DungeonReward:setActive(active)
    self:setProperty("active", active)
end

function DungeonReward:isActive()
    return self:getProperty("active")
end

function DungeonReward:setReward(reward)
    if reward > 0 then
        taken_rewards[reward] = true
    end
    self:setProperty("reward", reward)
end

function DungeonReward:getReward()
    return self:getProperty("reward")
end

function DungeonReward:updateIcon()
    if self.activeImages ~= nil and self.disabledImages ~= nil then
        if self:isActive() then
            self.ItemInstance.Icon = self.activeImages[self:getReward()]
        else
            self.ItemInstance.Icon = self.disabledImages[self:getReward()]
        end
    end
end

function DungeonReward:onLeftClick()
    self:setActive(not self:isActive())
end

function DungeonReward:onRightClick()
    local reward = self:getReward()
    
    if reward > 0 then
        taken_rewards[reward] = false
    end

    while true do
        reward = reward + 1

        if reward > 13 then
            reward = 0
            break
        else
            if not taken_rewards[reward] then
                break
            end
        end
    end

    self:setReward(reward)
end

function DungeonReward:canProvideCode(code)
    return code == self.code
end

function DungeonReward:providesCode(code)
    return code == self.code
end

function DungeonReward:save()
    local data = {}
    data["active"] = self:isActive()
    data["reward"] = self:getReward()
    return data
end

function DungeonReward:load(data)
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["reward"] ~= nil then
        self:setReward(data["reward"])
    end
    return true
end

function DungeonReward:propertyChanged(key, value)
    self:updateIcon()
end