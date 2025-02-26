ConditionalToggle = CustomItem:extend()

function ConditionalToggle:init(name, code, loop, imagePath)
    self:createItem(name)
    self.code = code
    self:setProperty("active", false)
    self:setProperty("hidden", true)
    self:setProperty("loop", loop)
    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")
    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function ConditionalToggle:setActive(active)
    self:setProperty("active", active)
end

function ConditionalToggle:isActive()
    return self:getProperty("active")
end

function ConditionalToggle:setHidden(hidden)
    self:setProperty("hidden", hidden)
    if hidden then
        self:setActive(false)
    end
end

function ConditionalToggle:isHidden()
    return self:getProperty("hidden")
end

function ConditionalToggle:updateIcon()
    if not self:isHidden() then
        if self:isActive() then
            self.ItemInstance.Icon = self.activeImage
        else
            self.ItemInstance.Icon = self.disabledImage
            self.ItemInstance.BadgeText = 0
        end
    else
        self.ItemInstance.Icon = nil
    end
end

function ConditionalToggle:onLeftClick()
    if not self:isHidden() then
        if self:getProperty("loop") then
            self:setActive(not self:isActive())
        else
            self:setActive(true)
        end
    end
end

function ConditionalToggle:onRightClick()
    if not self:isHidden() then
        if self:getProperty("loop") then
            self:setActive(not self:isActive())
        else
            self:setActive(false)
        end
    end
end

function ConditionalToggle:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function ConditionalToggle:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function ConditionalToggle:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("active", true)
    end
end

function ConditionalToggle:save()
    local saveData = {}
    saveData["active"] = self:isActive()
    saveData["hidden"] = self:isHidden()
    saveData["loop"] = self:getProperty("loop")
    return saveData
end

function ConditionalToggle:load(data)
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    if data["loop"] ~= nil then
        self:setProperty("loop", data["loop"])
    end
    return true
end

function ConditionalToggle:propertyChanged(key, value)
    self:updateIcon()
end