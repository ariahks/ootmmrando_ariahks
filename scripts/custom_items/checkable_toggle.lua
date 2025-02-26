CheckableToggle = CustomItem:extend()

function CheckableToggle:init(name, code, imagePath, allowDisabledCheck)
    self:createItem(name)
    self.code = code
    self:setProperty("active", false)
    self:setProperty("checked", false)
    self:setProperty("allow_disabled_check", allowDisabledCheck)
    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.activeImageChecked = ImageReference:FromPackRelativePath(imagePath, "overlay|images/check.png")
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")
    self.disabledImageChecked = ImageReference:FromPackRelativePath(imagePath, "@disabled,overlay|images/check.png")

    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function CheckableToggle:setActive(active)
    self:setProperty("active", active)
end

function CheckableToggle:isActive()
    return self:getProperty("active")
end

function CheckableToggle:setChecked(checked)
    self:setProperty("checked", checked)
end

function CheckableToggle:isChecked()
    return self:getProperty("checked")
end

function CheckableToggle:updateIcon()
    if self:isActive() then
        if self:isChecked() then
            self.ItemInstance.Icon = self.activeImageChecked
        else
            self.ItemInstance.Icon = self.activeImage
        end
    else
        if self:isChecked() then
            self.ItemInstance.Icon = self.disabledImageChecked
        else
            self.ItemInstance.Icon = self.disabledImage
        end
    end
end

function CheckableToggle:onLeftClick()
    if self:isActive() and not self:getProperty("allow_disabled_check") then
        self:setChecked(false)
    end
    self:setActive(not self:isActive())
end

function CheckableToggle:onRightClick()
    if not self:isActive() and not self:getProperty("allow_disabled_check") then
        self:setChecked(false)
    else
        self:setChecked(not self:isChecked())
    end
end

function CheckableToggle:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function CheckableToggle:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function CheckableToggle:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("active", true)
    end
end

function CheckableToggle:save()
    local saveData = {}
    saveData["active"] = self:isActive()
    saveData["checked"] = self:isChecked()
    saveData["allow_disabled_check"] = self:getProperty("allow_disabled_check")
    return saveData
end

function CheckableToggle:load(data)
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["checked"] ~= nil then
        self:setChecked(data["checked"])
    end
    if data["allow_disabled_check"] ~= nil then
        self:setProperty("allow_disabled_check", data["allow_disabled_check"])
    end
    return true
end

function CheckableToggle:propertyChanged(key, value)
    self:updateIcon()
end