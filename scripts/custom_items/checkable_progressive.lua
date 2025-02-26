CheckableProgressive = CustomItem:extend()

function CheckableProgressive:init(name, code, imagePaths, allowInitialStageCheck)
    self:createItem(name)
    self.code = code
    self:setProperty("stage", 0)
    self:setProperty("checked", false)
    self:setProperty("allow_initial_stage_check", allowInitialStageCheck)

    self.images = {}
    self.imagesChecked = {}
    for i, v in ipairs(imagePaths) do
        if v[2] then
            self.images[i] = ImageReference:FromPackRelativePath(v[1], v[2])
            self.imagesChecked[i] = ImageReference:FromPackRelativePath(v[1], v[2] .. ",overlay|images/check.png")
        else
            if v[1] ~= nil then
                self.images[i] = ImageReference:FromPackRelativePath(v[1])
                self.imagesChecked[i] = ImageReference:FromPackRelativePath(v[1], "overlay|images/check.png")
            else
                self.images[i] = nil
                self.imagesChecked[i] = nil
            end
        end
    end

    self.ItemInstance.PotentialIcon = self.images[1]

    self:updateIcon()
end

function CheckableProgressive:setStage(stage)
    local imgs = self.images
    if self:isChecked() then
        imgs = self.imagesChecked
    end

    if not imgs[stage + 1] then
        if imgs[stage] then
            self:setProperty("stage", 0)
        else
            if imgs[stage + 2] then
                local sc = 0
                for _ in pairs(imgs) do
                    sc = sc + 1
                end
                self:setProperty("stage", sc - 1)
            else
                if not imgs[stage] then
                    self:setProperty("stage", 0)
                end
            end
        end
    else
        self:setProperty("stage", stage)
    end

    if self:getStage() == 0 and not self:getProperty("allow_initial_stage_check") then
        self:setChecked(false)
    end
end

function CheckableProgressive:getStage()
    return self:getProperty("stage")
end

function CheckableProgressive:setChecked(checked)
    if self:getStage() == 0 and not self:getProperty("allow_initial_stage_check") then
        self:setProperty("checked", false)
    else
        self:setProperty("checked", checked)
    end
end

function CheckableProgressive:isChecked()
    return self:getProperty("checked")
end

function CheckableProgressive:updateIcon()
    if self.images ~= nil and self.imagesChecked ~= nil then
        if self:isChecked() then
            self.ItemInstance.Icon = self.imagesChecked[self:getStage() + 1]
        else
            self.ItemInstance.Icon = self.images[self:getStage() + 1]
        end
    else
        self.ItemInstance.Icon = nil
    end
end

function CheckableProgressive:onLeftClick()
    self:setStage(self:getStage() + 1)
end

function CheckableProgressive:onRightClick()
    self:setChecked(not self:isChecked())
end

function CheckableProgressive:canProvideCode(code)
    if code == self.code then
        return true
    else
        return false
    end
end

function CheckableProgressive:providesCode(code)
    if code == self.code and self:isActive() then
        return 1
    end
    return 0
end

function CheckableProgressive:advanceToCode(code)
    if code == nil or code == self.code then
        self:setProperty("stage", self:getStage() + 1)
    end
end

function CheckableProgressive:save()
    local saveData = {}
    saveData["stage"] = self:getStage()
    saveData["checked"] = self:isChecked()
    saveData["allow_initial_stage_check"] = self:getProperty("allow_initial_stage_check")
    return saveData
end

function CheckableProgressive:load(data)
    if data["active"] ~= nil then
        self:setStage(data["stage"])
    end
    if data["checked"] ~= nil then
        self:setChecked(data["checked"])
    end
    if data["allow_initial_stage_check"] ~= nil then
        self:setProperty("allow_initial_stage_check", data["allow_initial_stage_check"])
    end
    return true
end

function CheckableProgressive:propertyChanged(key, value)
    self:updateIcon()
end