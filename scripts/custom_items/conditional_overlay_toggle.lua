ConditionalOverlayToggle = CustomItem:extend()

function ConditionalOverlayToggle:init(name, code, loop, imagePath, overlayPath, rightClickTogglesOverlay)
    self:createItem(name)
    self.code = code
    self:setProperty("active", false)
    self:setProperty("hidden", false)
    self:setProperty("overlayed", false)
    self:setProperty("loop", loop)
    self:setProperty("rcto", rightClickTogglesOverlay)
    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.activeImageOverlay = ImageReference:FromPackRelativePath(imagePath, "overlay|" .. overlayPath)
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")
    self.disabledImageOverlay = ImageReference:FromPackRelativePath(imagePath, "overlay|" .. overlayPath .. ",@disabled")
    self.disabledImageOverlayRCTO = ImageReference:FromPackRelativePath(imagePath, "@disabled,overlay|" .. overlayPath)
    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function ConditionalOverlayToggle:setActive(active)
    self:setProperty("active", active)
end

function ConditionalOverlayToggle:isActive()
    return self:getProperty("active")
end

function ConditionalOverlayToggle:setHidden(hidden)
    self:setProperty("hidden", hidden)
    if hidden then
        self:setActive(false)
    end
end

function ConditionalOverlayToggle:isHidden()
    return self:getProperty("hidden")
end

function ConditionalOverlayToggle:setOverlayed(overlayed)
    self:setProperty("overlayed", overlayed)
end

function ConditionalOverlayToggle:isOverlayed()
    return self:getProperty("overlayed")
end

function ConditionalOverlayToggle:updateIcon()
    if not self:isHidden() then
        if self:isActive() then
            if self:isOverlayed() then
                self.ItemInstance.Icon = self.activeImageOverlay
            else
                self.ItemInstance.Icon = self.activeImage
            end
        else
            if self:isOverlayed() then
                if self:getProperty("rcto") then
                    self.ItemInstance.Icon = self.disabledImageOverlayRCTO
                else
                    self.ItemInstance.Icon = self.disabledImageOverlay
                end
            else
                self.ItemInstance.Icon = self.disabledImage
            end
            self.ItemInstance.BadgeText = 0
        end
    else
        self.ItemInstance.Icon = nil
    end
end

function ConditionalOverlayToggle:onLeftClick()
    if not self:isHidden() then
        if self:getProperty("loop") then
            self:setActive(not self:isActive())
        else
            self:setActive(true)
        end
    end
end

function ConditionalOverlayToggle:onRightClick()
    if not self:isHidden() then
        if self:getProperty("rcto") then
            self:setOverlayed(not self:isOverlayed())
        else 
            if self:getProperty("loop") then
                self:setActive(not self:isActive())
            else
                self:setActive(false)
            end
        end
    end
end

function ConditionalOverlayToggle:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function ConditionalOverlayToggle:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function ConditionalOverlayToggle:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("active", true)
    end
end

function ConditionalOverlayToggle:save()
    local saveData = {}
    saveData["active"] = self:isActive()
    saveData["hidden"] = self:isHidden()
    saveData["overlayed"] = self:isOverlayed()
    saveData["loop"] = self:getProperty("loop")
    saveData["rcto"] = self:getProperty("rcto")
    return saveData
end

function ConditionalOverlayToggle:load(data)
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    if data["overlayed"] ~= nil then
        self:setOverlayed(data["overlayed"])
    end
    if data["loop"] ~= nil then
        self:setProperty("loop", data["loop"])
    end
    if data["rcto"] ~= nil then
        self:setProperty("rcto", data["rcto"])
    end
    return true
end

function ConditionalOverlayToggle:propertyChanged(key, value)
    self:updateIcon()
end