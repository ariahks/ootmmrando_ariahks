ProgressiveVariableImage = CustomItem:extend()

function ProgressiveVariableImage:init(name, code, loop, imagePaths, imagePathsAlt)
    self:createItem(name)
    self.code = code
    self:setProperty("stage", 0)
    self:setProperty("loop", loop)
    self:setProperty("alt", false)
    self:setProperty("active", true)

    self.images = {}
    for i, v in ipairs(imagePaths) do
        if v[2] then
            self.images[i] = ImageReference:FromPackRelativePath(v[1], v[2])
        else
            if v[1] ~= nil then
                self.images[i] = ImageReference:FromPackRelativePath(v[1])
            else
                self.images[i] = nil
            end
        end
    end

    self.imagesAlt = {}
    for i, v in ipairs(imagePathsAlt) do
        if v[2] then
            self.imagesAlt[i] = ImageReference:FromPackRelativePath(v[1], v[2])
        else
            if v[1] ~= nil then
                self.imagesAlt[i] = ImageReference:FromPackRelativePath(v[1])
            else
                self.imagesAlt[i] = nil
            end
        end
    end

    self.ItemInstance.PotentialIcon = self.images[1]

    self:updateIcon()
end

function ProgressiveVariableImage:setActive(active)
    self:setProperty("active", active)
    if not active then
        self:setStage(0)
    end
end

function ProgressiveVariableImage:isActive()
    return self:getProperty("active")
end

function ProgressiveVariableImage:useAlt(alt)
    self:setProperty("alt", alt)

    self:setStage(self:getStage())
end

function ProgressiveVariableImage:usingAlt()
    return self:getProperty("alt")
end

function ProgressiveVariableImage:setStage(stage)
    local imgs = self.images
    if self:usingAlt() then
        imgs = self.imagesAlt
    end

    if not imgs[stage + 1] then
        if imgs[stage] then
            if self:doesLoop() then
                self:setProperty("stage", 0)
            else
                self:setProperty("stage", stage - 1)
            end
        else
            if imgs[stage + 2] then
                if self:doesLoop() then
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

function ProgressiveVariableImage:getStage()
    return self:getProperty("stage")
end

function ProgressiveVariableImage:doLoop(loop)
    self:setProperty("loop", loop)
end

function ProgressiveVariableImage:doesLoop()
    return self:getProperty("loop")
end

function ProgressiveVariableImage:setBadgeText(text, color)
    self.ItemInstance.BadgeText = text
    self.ItemInstance.BadgeTextColor = color
end

function ProgressiveVariableImage:updateIcon()
    if self.images ~= nil and self.imagesAlt ~= nil then
        if self:isActive() then
            if self:usingAlt() then
                self.ItemInstance.Icon = self.imagesAlt[self:getStage() + 1]
            else
                self.ItemInstance.Icon = self.images[self:getStage() + 1]
            end
        else
            self.ItemInstance.Icon = nil
            self:setBadgeText(0, "white")
        end
    end
end

function ProgressiveVariableImage:onLeftClick()
    if self:isActive() then
        self:setStage(self:getStage() + 1)
    end
end

function ProgressiveVariableImage:onRightClick()
    if self:isActive() then
        self:setStage(self:getStage() - 1)
    end
end

function ProgressiveVariableImage:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function ProgressiveVariableImage:providesCode(code)
    if self:canProvideCode(code) then
        return 1
    end
    return 0
end

function ProgressiveVariableImage:advanceToCode(code)
    if code == nil or self:canProvideCode(code) then
        self:setStage(self:getStage() + 1)
    end
end

function ProgressiveVariableImage:save()
    local saveData = {}
    saveData["alt"] = self:usingAlt()
    saveData["stage"] = self:getStage()
    saveData["loop"] = self:doesLoop()
    saveData["active"] = self:isActive()
    return saveData
end

function ProgressiveVariableImage:load(data)
    if data["alt"] ~= nil then
        self:useAlt(data["alt"])
    end
    if data["stage"] ~= nil then
        self:setStage(data["stage"])
    end
    if data["loop"] ~= nil then
        self:doLoop(data["loop"])
    end
    if data["active"] ~= nil then
        self:setActive(data["active"])
    end
    return true
end

function ProgressiveVariableImage:propertyChanged(key, value)
    self:updateIcon()
end