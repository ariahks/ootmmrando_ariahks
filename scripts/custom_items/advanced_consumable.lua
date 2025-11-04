AdvancedConsumable = CustomItem:extend()

function AdvancedConsumable:init(name, code, imagePath)
    self:createItem(name)
    self.code = code
    self:setProperty("hidden", true)
    self:setProperty("count", 0)
    self:setProperty("max_count", 0)
    self:setProperty("badge_text", nil)
    self:setProperty("badge_color", "white")
    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")
    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function AdvancedConsumable:setHidden(hidden)
    self:setProperty("hidden", hidden)
end

function AdvancedConsumable:isHidden()
    return self:getProperty("hidden")
end

function AdvancedConsumable:setCount(count)
    self:setProperty("count", count)
end

function AdvancedConsumable:getCount()
    return self:getProperty("count")
end

function AdvancedConsumable:setMaxCount(max_count)
    self:setProperty("max_count", max_count)
    if self:getCount() >= max_count then
        self:setCount(max_count)
    end

    if max_count > 0 then
        self:setHidden(false)
    else
        self:setHidden(true)
        self:clearBadgeText()
    end
end

function AdvancedConsumable:getMaxCount()
    return self:getProperty("max_count")
end

function AdvancedConsumable:setBadgeText(text, color)
    self:setProperty("badge_text", text)
    self:setProperty("badge_color", color)
end

function AdvancedConsumable:clearBadgeText()
    self:setBadgeText(nil, "white")
end

function AdvancedConsumable:updateIcon()
    if self:getCount() ~= nil and not self:isHidden() then
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

function AdvancedConsumable:onLeftClick()
    if not self:isHidden() then
        local count = self:getCount()
        local max_count = self:getMaxCount()
        if count < max_count then
            self:setCount(count + 1)
        end
    end
end

function AdvancedConsumable:onRightClick()
    if not self:isHidden() then
        local count = self:getCount()
        if count > 0 then
            self:setCount(count - 1)
        end
    end
end

function AdvancedConsumable:canProvideCode(code)
    return code == self.code
end

function AdvancedConsumable:providesCode(code)
    return code == self.code and not self:isHidden()
end

function AdvancedConsumable:advanceToCode(code)
    if code == nil or code == self.code then
        self:setHidden(false)
    end
end

function AdvancedConsumable:save()
    local data = {}
    data["hidden"] = self:isHidden()
    data["max_count"] = self:getMaxCount()
    data["count"] = self:getCount()
    return data
end

function AdvancedConsumable:load(data)
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    if data["max_count"] ~= nil then
        self:setMaxCount(data["max_count"])
    end
    if data["count"] ~= nil then
        self:setCount(data["count"])
    end
    return true
end

function AdvancedConsumable:propertyChanged(key, value)
    self:updateIcon()
end