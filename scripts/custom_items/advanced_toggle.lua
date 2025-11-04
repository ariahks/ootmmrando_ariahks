AdvancedToggle = CustomItem:extend()

function AdvancedToggle:init(name, code, imagePath, overlayPath, loop, rightClickTogglesOverlay, allowOverlayWhenDisabled, overlayActiveWhenDisabled)
    self:createItem(name)
    self.code = code
    self:setProperty("hidden", false)
    self:setProperty("active", false)
    self:setProperty("overlay", false)
    self:setProperty("loop", loop or false)
    self:setProperty("rcto", rightClickTogglesOverlay or false)
    self:setProperty("aowd", allowOverlayWhenDisabled or false)
    self:setProperty("oawd", overlayActiveWhenDisabled or false)
    self:setProperty("badge_text", nil)
    self:setProperty("badge_color", "white")

    self.activeImage = ImageReference:FromPackRelativePath(imagePath)
    self.disabledImage = ImageReference:FromPackRelativePath(imagePath, "@disabled")

    self.activeImageOverlay = nil
    self.disabledImageOverlayActive = nil
    self.disabledImageOverlayDisabled = nil

    if overlayPath ~= nil then
        self.activeImageOverlay = ImageReference:FromPackRelativePath(imagePath, "overlay|" .. overlayPath)
        self.disabledImageOverlayActive = ImageReference:FromPackRelativePath(imagePath, "@disabled,overlay|" .. overlayPath)
        self.disabledImageOverlayDisabled = ImageReference:FromPackRelativePath(imagePath, "overlay|" .. overlayPath .. ",@disabled")
    end

    self.ItemInstance.PotentialIcon = self.activeImage

    self:updateIcon()
end

function AdvancedToggle:setHidden(hidden)
    self:setProperty("hidden", hidden)
end

function AdvancedToggle:isHidden()
    return self:getProperty("hidden")
end

function AdvancedToggle:setActive(active)
    self:setProperty("active", active)
    if active == false and not self:getProperty("aowd") then
        self:setOverlay(false)
    end
end

function AdvancedToggle:isActive()
    return self:getProperty("active")
end

function AdvancedToggle:setOverlay(overlay)
    if overlay and self.activeImageOverlay == nil then
        overlay = false
    end
    self:setProperty("overlay", overlay)
end

function AdvancedToggle:isOverlayed()
    return self:getProperty("overlay")
end

function AdvancedToggle:setBadgeText(text, color)
    self:setProperty("badge_text", text)
    self:setProperty("badge_color", color)
end

function AdvancedToggle:clearBadgeText()
    self:setBadgeText(nil, "white")
end

function AdvancedToggle:updateIcon()
    if not self:isHidden() then
        if self:isActive() then
            if self:isOverlayed() then
                self.ItemInstance.Icon = self.activeImageOverlay
            else
                self.ItemInstance.Icon = self.activeImage
            end
        else
            if self:isOverlayed() then
                if self:getProperty("oawd") then
                    self.ItemInstance.Icon = self.disabledImageOverlayActive
                else
                    self.ItemInstance.Icon = self.disabledImageOverlayDisabled
                end
            else
                self.ItemInstance.Icon = self.disabledImage
            end
        end

        if self:getProperty("badge_text") ~= nil then
            self.ItemInstance.BadgeText = self:getProperty("badge_text")
            self.ItemInstance.BadgeTextColor = self:getProperty("badge_color")
        else
            self.ItemInstance.BadgeText = 0
        end
    else
        self.ItemInstance.Icon = nil
    end
end

function AdvancedToggle:onLeftClick()
    if not self:isHidden() then
        if self:getProperty("loop") then
            self:setActive(not self:isActive())
        else
            self:setActive(true)
        end
    end
end

function AdvancedToggle:onRightClick()
    if not self:isHidden() then
        if self:getProperty("rcto") then
            if self:isActive() or self:getProperty("aowd") then
                self:setOverlay(not self:isOverlayed())
            end
        else
            if self:getProperty("loop") then
                self:setActive(not self:isActive())
            else
                self:setActive(false)
            end
        end
    end
end

function AdvancedToggle:canProvideCode(code)
    return code == self.code
end

function AdvancedToggle:providesCode(code)
    return code == self.code and not self:isHidden()
end

function AdvancedToggle:advanceToCode(code)
    if code == nil or code == self.code then
        self:setHidden(false)
    end
end

function AdvancedToggle:save()
    local data = {}
    data["hidden"] = self:isHidden()
    data["active"] = self:isActive()
    data["overlay"] = self:isOverlayed()
    return data
end

function AdvancedToggle:load(data)
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["overlay"] ~= nil then
        self:setOverlay(data["overlay"])
    end
    return true
end

function AdvancedToggle:propertyChanged(key, value)
    self:updateIcon()
end