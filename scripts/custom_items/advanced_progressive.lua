AdvancedProgressive = CustomItem:extend()

function AdvancedProgressive:init(name, code, imagePaths, loop, rightClickTogglesAlt, allowDisabled)
    self:createItem(name)
    self.code = code

    if allowDisabled == nil then
        allowDisabled = true
    end

    self:setProperty("hidden", false)
    self:setProperty("active", not allowDisabled)
    self:setProperty("alt", false)
    self:setProperty("stage", 0)
    self:setProperty("loop", loop or false)
    self:setProperty("rcta", rightClickTogglesAlt or false)
    self:setProperty("ad", allowDisabled)
    self:setProperty("badge_text", nil)
    self:setProperty("badge_color", "white")

    self.images = {}
    self.altImages = {}    
    self.disabledImage = nil
    self.altDisabledImage = nil

    if imagePaths ~= nil then
        if type(imagePaths) == "table" then
            if type(imagePaths[1]) == "table" then
                for i, v in ipairs(imagePaths[1]) do
                    if v ~= nil then
                        if type(v) == "table" then
                            self.images[i] = ImageReference:FromPackRelativePath(v[1], v[2])
                            if i == 1 and allowDisabled then
                                self.disabledImage = ImageReference:FromPackRelativePath(v[1], v[2] .. ",@disabled")
                            end
                        else
                            self.images[i] = ImageReference:FromPackRelativePath(v)
                            if i == 1 and allowDisabled then
                                self.disabledImage = ImageReference:FromPackRelativePath(v, "@disabled")
                            end
                        end
                    else
                        self.images[i] = nil
                    end
                end
                for i, v in ipairs(imagePaths[2]) do
                    if v ~= nil then
                        if type(v) == "table" then
                            self.altImages[i] = ImageReference:FromPackRelativePath(v[1], v[2])
                            if i == 1 and allowDisabled then
                                self.altDisabledImage = ImageReference:FromPackRelativePath(v[1], v[2] .. ",@disabled")
                            end
                        else
                            self.altImages[i] = ImageReference:FromPackRelativePath(v)
                            if i == 1 and allowDisabled then
                                self.altDisabledImage = ImageReference:FromPackRelativePath(v, "@disabled")
                            end
                        end
                    else
                        self.altImages[i] = nil
                    end
                end
            else
                for i, v in ipairs(imagePaths) do
                    if v ~= nil then
                        self.images[i] = ImageReference:FromPackRelativePath(v)
                        if i == 1 and allowDisabled then
                            self.disabledImage = ImageReference:FromPackRelativePath(v, "@disabled")
                        end
                    else
                        self.images[i] = nil
                    end
                end
                self.altImages = self.images
                self.altDisabledImage = self.disabledImage
            end
        else
            self.images[1] = ImageReference:FromPackRelativePath(imagePaths)
            self.altImages = self.images
            if allowDisabled then
                self.disabledImage = ImageReference:FromPackRelativePath(imagePaths, "@disabled")
                self.altDisabledImage = self.disabledImage
            end
        end
    else
        self.images[1] = nil
        self.altImages = self.images
    end
    self.ItemInstance.PotentialIcon = self.images[1]

    self:updateIcon()
end

function AdvancedProgressive:setHidden(hidden)
    self:setProperty("hidden", hidden)
end

function AdvancedProgressive:isHidden()
    return self:getProperty("hidden")
end

function AdvancedProgressive:setActive(active)
    if not self:getProperty("ad") then
        active = true
    end
    self:setProperty("active", active)

    if not active then
        self:setStage(0)
    end
end

function AdvancedProgressive:isActive()
    return self:getProperty("active")
end

function AdvancedProgressive:useAlt(alt)
    self:setProperty("alt", alt)
    self:setStage(self:getStage())
end

function AdvancedProgressive:usingAlt()
    return self:getProperty("alt")
end

function AdvancedProgressive:setStage(stage)
    local imgs = self.images
    if self:usingAlt() then
        imgs = self.altImages
    end

    if not imgs[stage + 1] then
        if imgs[stage] then
            if self:getProperty("loop") then
                self:setProperty("stage", 0)
                self:setActive(false)
            else
                self:setProperty("stage", stage - 1)
            end
        else
            if imgs[stage + 2] then
                if self:getProperty("loop") then
                    local sc = 0
                    for _ in pairs(imgs) do
                        sc = sc + 1
                    end
                    self:setProperty("stage", sc - 1)
                else
                    self:setProperty("stage", stage + 1)
                end
            else
                if not imgs[stage] then
                    self:setProperty("stage", 0)
                end
            end
        end
    else
        self:setProperty("stage", stage)
    end
end

function AdvancedProgressive:setStageToMax()
    self:setStage(#self.images - 1)
end

function AdvancedProgressive:getStage()
    return self:getProperty("stage")
end

function AdvancedProgressive:setBadgeText(text, color)
    self:setProperty("badge_text", text)
    self:setProperty("badge_color", color)
end

function AdvancedProgressive:clearBadgeText()
    self:setBadgeText(nil, "white")
    self.ItemInstance.BadgeText = 0
end

function AdvancedProgressive:updateIcon()
    if self.images ~= nil and self.altImages ~= nil and not self:isHidden() then
        if self:usingAlt() then
            if self:isActive() then
                self.ItemInstance.Icon = self.altImages[self:getStage() + 1]
            else
                self.ItemInstance.Icon = self.altDisabledImage
            end
        else
            if self:isActive() then
                self.ItemInstance.Icon = self.images[self:getStage() + 1]
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
        self:clearBadgeText()
    end
end

function AdvancedProgressive:onLeftClick()
    if not self:isHidden() then
        if self:isActive() then
            self:setStage(self:getStage() + 1)
        else
            self:setActive(true)
        end
    end
end

function AdvancedProgressive:onRightClick()
    if not self:isHidden() then
        if self:getProperty("rcta") then
            self:useAlt(not self:usingAlt())
        else
            if self:isActive() then
                if self:getProperty("ad") and self:getStage() - 1 == -1 then
                    self:setActive(false)
                else
                    self:setStage(self:getStage() - 1)
                end
            else
                if self:getProperty("loop") then
                    self:setActive(true)
                    self:setStage(self:getStage() - 1)
                end
            end
        end
    end
end

function AdvancedProgressive:canProvideCode(code)
    return code == self.code
end

function AdvancedProgressive:providesCode(code)
    return code == self.code and not self:isHidden()
end

function AdvancedProgressive:advanceToCode(code)
    if code == nil or code == self.code then
        self:setHidden(false)
    end
end

function AdvancedProgressive:save()
    local data = {}
    data["hidden"] = self:isHidden()
    data["active"] = self:isActive()
    data["alt"] = self:usingAlt()
    data["stage"] = self:getStage()
    return data
end

function AdvancedProgressive:load(data)
    if data["hidden"] ~= nil then
        self:setHidden(data["hidden"])
    end
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    if data["alt"] ~= nil then
        self:useAlt(data["alt"])
    end
    if data["stage"] ~= nil then
        self:setStage(data["stage"])
    end
    return true
end

function AdvancedProgressive:propertyChanged(key, value)
    self:updateIcon()
end