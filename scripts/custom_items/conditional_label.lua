ConditionalLabel = CustomItem:extend()

function ConditionalLabel:init(name, code, imagePath)
    self:createItem(name)
    self.code = code
    self:setProperty("hidden", false)
    self.image = ImageReference:FromPackRelativePath(imagePath)
    self.ItemInstance.PotentialIcon = self.image

    self:updateIcon()
end

function ConditionalLabel:setHidden(hidden)
    self:setProperty("hidden", hidden)
end

function ConditionalLabel:isHidden()
    return self:getProperty("hidden")
end

function ConditionalLabel:updateIcon()
    if not self:isHidden() then
        self.ItemInstance.Icon = self.image
    else
        self.ItemInstance.Icon = nil
    end
end

function ConditionalLabel:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function ConditionalLabel:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function ConditionalLabel:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("active", true)
    end
end

function ConditionalLabel:save()
    local saveData = {}
    saveData["hidden"] = self:isHidden()
    return saveData
end

function ConditionalLabel:load(data)
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    return true
end

function ConditionalLabel:propertyChanged(key, value)
    self:updateIcon()
end