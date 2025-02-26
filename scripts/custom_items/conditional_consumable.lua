ConditionalConsumable = CustomItem:extend()

function ConditionalConsumable:init(name, code, imagePath)
    self:createItem(name)
    self.code = code
    self:setProperty("active", false)
    self:setProperty("count", 0)
    self:setProperty("max_count", 0)
    self:setProperty("badge_text", nil)
    self:setProperty("badge_color", "white")
    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")
    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function ConditionalConsumable:isActive()
    return self:getProperty("active")
end

function ConditionalConsumable:setCount(count)
    self:setProperty("count", count)
end

function ConditionalConsumable:getCount()
    return self:getProperty("count")
end

function ConditionalConsumable:setMaxCount(max_count)
    self:setProperty("max_count", max_count)
    if self:getCount() >= max_count then
        self:setCount(max_count)
    else
        self:setCount(self:getCount())
    end

    if max_count > 0 then
        self:setProperty("active", true)
    else
        self:setProperty("active", false)
        self:clearBadgeText()
    end
end

function ConditionalConsumable:getMaxCount()
    return self:getProperty("max_count")
end

function ConditionalConsumable:setBadgeText(text, color)
    self:setProperty("badge_text", text)
    self:setProperty("badge_color", color)
end

function ConditionalConsumable:clearBadgeText()
    self:setBadgeText(nil, "white")
end

function ConditionalConsumable:updateIcon()
    if self:isActive() then
        if self:getCount() > 0 then
            self.ItemInstance.Icon = self.activeImage

            if self:getProperty("badge_text") ~= nil then
                self.ItemInstance.BadgeText = self:getProperty("badge_text")
                self.ItemInstance.BadgeTextColor = self:getProperty("badge_color")
            else
                self.ItemInstance.BadgeText = string.format("%d", self:getCount())
                if self:getCount() < self:getMaxCount() then
                    self.ItemInstance.BadgeTextColor = "white"
                else
                    self.ItemInstance.BadgeTextColor = "lime"
                end
            end
        else
            self.ItemInstance.Icon = self.disabledImage
            self.ItemInstance.BadgeText = 0
        end
    else
        self.ItemInstance.Icon = nil
        self.ItemInstance.BadgeText = 0
    end
end

function ConditionalConsumable:onLeftClick()
    if self:getProperty("active") then
        local count = self:getProperty("count")
        local max_count = self:getProperty("max_count")
        if count < max_count then
            self:setCount(count + 1)
        end
    end
end

function ConditionalConsumable:onRightClick()
    if self:getProperty("active") then
        local count = self:getProperty("count")
        if count > 0 then
            self:setCount(count - 1)
        end
    end
end

function ConditionalConsumable:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function ConditionalConsumable:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function ConditionalConsumable:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("active", true)
    end
end

function ConditionalConsumable:save()
    local saveData = {}
    saveData["max_count"] = self:getMaxCount()
    saveData["count"] = self:getCount()
    return saveData
end

function ConditionalConsumable:load(data)
    if data["max_count"] ~= nil then
        self:setMaxCount(data["max_count"])
    end
    if data["count"] ~= nil then
        self:setCount(data["count"])
    end
    return true
end

function ConditionalConsumable:propertyChanged(key, value)
    self:updateIcon()
end