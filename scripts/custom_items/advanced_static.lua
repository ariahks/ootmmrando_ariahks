AdvancedStatic = CustomItem:extend()

function AdvancedStatic:init(name, code, imagePath)
    self:createItem(name)
    self.code = code
    self:setProperty("hidden", false)
    self.image = ImageReference:FromPackRelativePath(imagePath)
    self.ItemInstance.PotentialIcon = self.image

    self:updateIcon()
end

function AdvancedStatic:setHidden(hidden)
    self:setProperty("hidden", hidden)
end

function AdvancedStatic:isHidden()
    return self:getProperty("hidden")
end

function AdvancedStatic:updateIcon()
    if not self:isHidden() then
        self.ItemInstance.Icon = self.image
    else
        self.ItemInstance.Icon = nil
    end
end

function AdvancedStatic:canProvideCode(code)
    return code == self.code
end

function AdvancedStatic:providesCode(code)
    return code == self.code and not self:isHidden()
end

function AdvancedStatic:advanceToCode(code)
    if code == nil or code == self.code then
        self:setHidden(false)
    end
end

function AdvancedStatic:save()
    local data = {}
    data["hidden"] = self:isHidden()
    return data
end

function AdvancedStatic:load(data)
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    return true
end

function AdvancedStatic:propertyChanged(key, value)
    self:updateIcon()
end