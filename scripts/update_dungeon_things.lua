function update_dungeon_things()
    update_maps_and_compasses()
    update_keys()
    update_stray_fairies()
    update_silver_rupees()
end

function update_maps_and_compasses()
    local sdmac = Tracker:FindObjectForCode("setting_dungeon_maps_and_compasses")
    local sod = Tracker:FindObjectForCode("setting_oot_dungeons")

    local wftm = Tracker:FindObjectForCode("woodfall_temple_map")
    local wftc = Tracker:FindObjectForCode("woodfall_temple_compass")
    local shtm = Tracker:FindObjectForCode("snowhead_temple_map")
    local shtc = Tracker:FindObjectForCode("snowhead_temple_compass")
    local gbtm = Tracker:FindObjectForCode("great_bay_temple_map")
    local gbtc = Tracker:FindObjectForCode("great_bay_temple_compass")
    local sttm = Tracker:FindObjectForCode("stone_tower_temple_map")
    local sttc = Tracker:FindObjectForCode("stone_tower_temple_compass")
    local dtm = Tracker:FindObjectForCode("deku_tree_map")
    local dtc = Tracker:FindObjectForCode("deku_tree_compass")
    local dcm = Tracker:FindObjectForCode("dodongos_cavern_map")
    local dcc = Tracker:FindObjectForCode("dodongos_cavern_compass")
    local jjm = Tracker:FindObjectForCode("jabu-jabu_map")
    local jjc = Tracker:FindObjectForCode("jabu-jabu_compass")

    local frstm = Tracker:FindObjectForCode("forest_temple_map")
    local frstc = Tracker:FindObjectForCode("forest_temple_compass")
    local firem = Tracker:FindObjectForCode("fire_temple_map")
    local firec = Tracker:FindObjectForCode("fire_temple_compass")
    local watrm = Tracker:FindObjectForCode("water_temple_map")
    local watrc = Tracker:FindObjectForCode("water_temple_compass")
    local sprtm = Tracker:FindObjectForCode("spirit_temple_map")
    local sprtc = Tracker:FindObjectForCode("spirit_temple_compass")
    local shdwm = Tracker:FindObjectForCode("shadow_temple_map")
    local shdwc = Tracker:FindObjectForCode("shadow_temple_compass")

    local icl = Tracker:FindObjectForCode("ice_cavern_label")
    local icm = Tracker:FindObjectForCode("ice_cavern_map")
    local icc = Tracker:FindObjectForCode("ice_cavern_compass")

    local botwl = Tracker:FindObjectForCode("bottom_of_the_well_label")

    local botwm = Tracker:FindObjectForCode("bottom_of_the_well_map")
    local botwc = Tracker:FindObjectForCode("bottom_of_the_well_compass")
    local botwk = Tracker:FindObjectForCode("bottom_of_the_well_small_keys")

    if sdmac.Active then
        wftm.ItemState:setActive(true)
        wftc.ItemState:setActive(true)
        shtm.ItemState:setActive(true)
        shtc.ItemState:setActive(true)
        gbtm.ItemState:setActive(true)
        gbtc.ItemState:setActive(true)
        sttm.ItemState:setActive(true)
        sttc.ItemState:setActive(true)
        dtm.ItemState:setActive(true)
        dtc.ItemState:setActive(true)
        dcm.ItemState:setActive(true)
        dcc.ItemState:setActive(true)
        jjm.ItemState:setActive(true)
        jjc.ItemState:setActive(true)

        frstm.ItemState:setActive(true)
        frstc.ItemState:setActive(true)
        firem.ItemState:setActive(true)
        firec.ItemState:setActive(true)
        watrm.ItemState:setActive(true)
        watrc.ItemState:setActive(true)
        sprtm.ItemState:setActive(true)
        sprtc.ItemState:setActive(true)
        shdwm.ItemState:setActive(true)
        shdwc.ItemState:setActive(true)

        icm.ItemState:useAlt(false)
        icc.ItemState:useAlt(false)
        botwm.ItemState:useAlt(false)
        botwc.ItemState:useAlt(false)
    else
        wftm.ItemState:setActive(false)
        wftc.ItemState:setActive(false)
        shtm.ItemState:setActive(false)
        shtc.ItemState:setActive(false)
        gbtm.ItemState:setActive(false)
        gbtc.ItemState:setActive(false)
        sttm.ItemState:setActive(false)
        sttc.ItemState:setActive(false)
        dtm.ItemState:setActive(false)
        dtc.ItemState:setActive(false)
        dcm.ItemState:setActive(false)
        dcc.ItemState:setActive(false)
        jjm.ItemState:setActive(false)
        jjc.ItemState:setActive(false)

        frstm.ItemState:setActive(false)
        frstc.ItemState:setActive(false)
        firem.ItemState:setActive(false)
        firec.ItemState:setActive(false)
        watrm.ItemState:setActive(false)
        watrc.ItemState:setActive(false)
        sprtm.ItemState:setActive(false)
        sprtc.ItemState:setActive(false)
        shdwm.ItemState:setActive(false)
        shdwc.ItemState:setActive(false)

        icm.ItemState:useAlt(true)
        icc.ItemState:useAlt(true)
        botwm.ItemState:useAlt(true)
        botwc.ItemState:useAlt(true)
    end
end

function update_keys()
    local skr = Tracker:FindObjectForCode("setting_key_rings")
    
    local swftkr = Tracker:FindObjectForCode("setting_key_ring_woodfall_temple")
    local sshtkr = Tracker:FindObjectForCode("setting_key_ring_snowhead_temple")
    local sgbtkr = Tracker:FindObjectForCode("setting_key_ring_great_bay_temple")
    local ssttkr = Tracker:FindObjectForCode("setting_key_ring_stone_tower_temple")

    local sfrstkr = Tracker:FindObjectForCode("setting_key_ring_forest_temple")
    local sfirekr = Tracker:FindObjectForCode("setting_key_ring_fire_temple")
    local swatrkr = Tracker:FindObjectForCode("setting_key_ring_water_temple")
    local ssprtkr = Tracker:FindObjectForCode("setting_key_ring_spirit_temple")
    local sshdwkr = Tracker:FindObjectForCode("setting_key_ring_shadow_temple")

    local sthkr = Tracker:FindObjectForCode("setting_key_ring_thieves_hideout")
    local stcgkr = Tracker:FindObjectForCode("setting_key_ring_treasure_chest_game")

    local sbotwkr = Tracker:FindObjectForCode("setting_key_ring_bottom_of_the_well")
    local sgtgkr = Tracker:FindObjectForCode("setting_key_ring_gerudo_training_grounds")
    local sgckr = Tracker:FindObjectForCode("setting_key_ring_ganons_castle")

    if skr.CurrentStage == 0 then
        swftkr.Active = false
        sshtkr.Active = false
        sgbtkr.Active = false
        ssttkr.Active = false

        sfrstkr.Active = false
        sfirekr.Active = false
        swatrkr.Active = false
        ssprtkr.Active = false
        sshdwkr.Active = false

        sthkr.Active = false
        stcgkr.Active = false

        sbotwkr.Active = false
        sgtgkr.Active = false
        sgckr.Active = false
    else
        if skr.CurrentStage == 2 then
            swftkr.Active = true
            sshtkr.Active = true
            sgbtkr.Active = true
            ssttkr.Active = true

            sfrstkr.Active = true
            sfirekr.Active = true
            swatrkr.Active = true
            ssprtkr.Active = true
            sshdwkr.Active = true

            sthkr.Active = true
            stcgkr.Active = true

            sbotwkr.Active = true
            sgtgkr.Active = true
            sgckr.Active = true
        end
    end

    local sod = Tracker:FindObjectForCode("setting_oot_dungeons")

    local townl = Tracker:FindObjectForCode("clock_town_label")
    local dtl = Tracker:FindObjectForCode("deku_tree_label")
    local dcl = Tracker:FindObjectForCode("dodongos_cavern_label")
    local jjl = Tracker:FindObjectForCode("jabu-jabu_label")
    local frstl = Tracker:FindObjectForCode("forest_temple_label")
    local firel = Tracker:FindObjectForCode("fire_temple_label")
    local watrl = Tracker:FindObjectForCode("water_temple_label")
    local sprtl = Tracker:FindObjectForCode("spirit_temple_label")
    local shdwl = Tracker:FindObjectForCode("shadow_temple_label")
    local icel = Tracker:FindObjectForCode("ice_cavern_label")
    local botwl = Tracker:FindObjectForCode("bottom_of_the_well_label")
    local gtgl = Tracker:FindObjectForCode("gerudo_training_ground_label")
    local gcl = Tracker:FindObjectForCode("ganons_castle_label")

    if sod.CurrentStage ~= 2 then
        dtl.CurrentStage = 0
        dcl.CurrentStage = 0
        jjl.CurrentStage = 0
        frstl.CurrentStage = 0
        firel.CurrentStage = 0
        watrl.CurrentStage = 0
        sprtl.CurrentStage = 0
        shdwl.CurrentStage = 0
        icel.ItemState:setStage(0)
        botwl.ItemState:setStage(0)
        gtgl.ItemState:setStage(0)
        gcl.ItemState:setStage(0)
    end

    local sdk = Tracker:FindObjectForCode("setting_dungeon_small_keys")
    local sks = Tracker:FindObjectForCode("setting_keysanity")

    local wftk = Tracker:FindObjectForCode("woodfall_temple_small_keys")
    local shtk = Tracker:FindObjectForCode("snowhead_temple_small_keys")
    local gbtk = Tracker:FindObjectForCode("great_bay_temple_small_keys")
    local sttk = Tracker:FindObjectForCode("stone_tower_temple_small_keys")

    local frstk = Tracker:FindObjectForCode("forest_temple_small_keys")
    local firek = Tracker:FindObjectForCode("fire_temple_small_keys")
    local watrk = Tracker:FindObjectForCode("water_temple_small_keys")
    local sprtk = Tracker:FindObjectForCode("spirit_temple_small_keys")
    local shdwk = Tracker:FindObjectForCode("shadow_temple_small_keys")

    local botwk = Tracker:FindObjectForCode("bottom_of_the_well_small_keys")
    local gtgk = Tracker:FindObjectForCode("gerudo_training_ground_small_keys")
    local gck = Tracker:FindObjectForCode("ganons_castle_small_keys")

    if sdk.Active then
        local c = 0

        wftk.ItemState:setMaxCount(1)
        if sshtkr.Active then
            shtk.ItemState:setMaxCount(1)
            if shtk.ItemState:getCount() > 0 then
                shtk.ItemState:setBadgeText("3", "lime")
            else
                shtk.ItemState:clearBadgeText()
            end
        else
            shtk.ItemState:setMaxCount(3)
            shtk.ItemState:clearBadgeText()
        end

        gbtk.ItemState:setMaxCount(1)
        if ssttkr.Active then
            sttk.ItemState:setMaxCount(1)
            if sttk.ItemState:getCount() > 0 then
                sttk.ItemState:setBadgeText("4", "lime")
            else
                sttk.ItemState:clearBadgeText()
            end
        else
            sttk.ItemState:setMaxCount(4)
            sttk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 0 or frstl.CurrentStage == 1 then c = 5      --Vanilla
        else c = 6 end                                                      --MQ
        if sfrstkr.Active then
            frstk.ItemState:setMaxCount(1)
            if frstk.ItemState:getCount() > 0 then
                frstk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                frstk.ItemState:clearBadgeText()
            end
        else
            frstk.ItemState:setMaxCount(c)
            frstk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or firel.CurrentStage == 2 then c = 5          --MQ
        else if sks.Active then c = 8                                           --Vanilla (Keysanity)
        else c = 7 end end                                                      --Vanilla (Own Dungeon)
        if sfirekr.Active then
            firek.ItemState:setMaxCount(1)
            if firek.ItemState:getCount() > 0 then
                firek.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                firek.ItemState:clearBadgeText()
            end
        else
            firek.ItemState:setMaxCount(c)
            firek.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or watrl.CurrentStage == 2 then c = 2          --MQ
        else c = 5 end                                                          --Vanilla
        if swatrkr.Active then
            watrk.ItemState:setMaxCount(1)
            if watrk.ItemState:getCount() > 0 then
                watrk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                watrk.ItemState:clearBadgeText()
            end
        else
            watrk.ItemState:setMaxCount(c)
            watrk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 0 or sprtl.CurrentStage == 1 then c = 5          --Vanilla
        else c = 7 end                                                          --MQ
        if ssprtkr.Active then
            sprtk.ItemState:setMaxCount(1)
            if sprtk.ItemState:getCount() > 0 then
                sprtk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                sprtk.ItemState:clearBadgeText()
            end
        else
            sprtk.ItemState:setMaxCount(c)
            sprtk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 0 or shdwl.CurrentStage == 1 then c = 5          --Vanilla
        else c = 6 end                                                          --MQ
        if sshdwkr.Active then
            shdwk.ItemState:setMaxCount(1)
            if shdwk.ItemState:getCount() > 0 then
                shdwk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                shdwk.ItemState:clearBadgeText()
            end
        else
            shdwk.ItemState:setMaxCount(c)
            shdwk.ItemState:clearBadgeText()
        end
            
        if sod.CurrentStage == 1 or botwl.ItemState:getStage() == 2 then c = 2  --MQ
        else c = 3 end                                                          --Vanilla
        if sbotwkr.Active then
            botwk.ItemState:setMaxCount(1)
            if botwk.ItemState:getCount() > 0 then
                botwk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                botwk.ItemState:clearBadgeText()
            end
        else
            botwk.ItemState:setMaxCount(c)
            botwk.ItemState:clearBadgeText()
        end
            
        if sod.CurrentStage == 1 or gtgl.ItemState:getStage() == 2 then c = 3   --MQ
        else c = 9 end                                                          --Vanilla
        if sgtgkr.Active then
            gtgk.ItemState:setMaxCount(1)
            if gtgk.ItemState:getCount() > 0 then
                gtgk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                gtgk.ItemState:clearBadgeText()
            end
        else
            gtgk.ItemState:setMaxCount(c)
            gtgk.ItemState:clearBadgeText()
        end
            
        if sod.CurrentStage == 0 or gcl.ItemState:getStage() == 1 then c = 2    --Vanilla
        else c = 3 end                                                          --MQ
        if sgckr.Active then
            gck.ItemState:setMaxCount(1)
            if gck.ItemState:getCount() > 0 then
                gck.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                gck.ItemState:clearBadgeText()
            end
        else
            gck.ItemState:setMaxCount(c)
            gck.ItemState:clearBadgeText()
        end
    else
        wftk.ItemState:setMaxCount(0)
        shtk.ItemState:setMaxCount(0)
        gbtk.ItemState:setMaxCount(0)
        sttk.ItemState:setMaxCount(0)

        frstk.ItemState:setMaxCount(0)
        firek.ItemState:setMaxCount(0)
        watrk.ItemState:setMaxCount(0)
        sprtk.ItemState:setMaxCount(0)
        shdwk.ItemState:setMaxCount(0)
        
        botwk.ItemState:setMaxCount(0)
        gtgk.ItemState:setMaxCount(0)
        gck.ItemState:setMaxCount(0)
    end


    local thl = Tracker:FindObjectForCode("thieves_hideout_label")
    local sthk = Tracker:FindObjectForCode("setting_thieves_hideout_keys")
    local thk = Tracker:FindObjectForCode("thieves_hideout_small_keys")
    if sthk.Active then
        thl.ItemState:useAlt(false)
        if sthkr.Active then
            thk.ItemState:setMaxCount(1)
            if thk.ItemState:getCount() > 0 then
                thk.ItemState:setBadgeText("4", "lime")
            else
                thk.ItemState:clearBadgeText()
            end
        else
            thk.ItemState:setMaxCount(4)
            thk.ItemState:clearBadgeText()
        end
    else
        thl.ItemState:useAlt(true)
        thk.ItemState:setMaxCount(0)
    end

    local tcgl = Tracker:FindObjectForCode("treasure_chest_game_label")
    local stcgk = Tracker:FindObjectForCode("setting_treasure_chest_game_keys")
    local tcgk = Tracker:FindObjectForCode("treasure_chest_game_small_keys")
    if stcgk.Active then
        tcgl.ItemState:useAlt(false)
        if stcgkr.Active then
            tcgk.ItemState:setMaxCount(1)
            if tcgk.ItemState:getCount() > 0 then
                tcgk.ItemState:setBadgeText("6", "lime")
            else
                tcgk.ItemState:clearBadgeText()
            end
        else
            tcgk.ItemState:setMaxCount(6)
            tcgk.ItemState:clearBadgeText()
        end
    else
        tcgl.ItemState:useAlt(true)
        tcgk.ItemState:setMaxCount(0)
    end
    
    local sdbk = Tracker:FindObjectForCode("setting_dungeon_boss_keys")

    local wftbk = Tracker:FindObjectForCode("woodfall_temple_boss_key")
    local shtbk = Tracker:FindObjectForCode("snowhead_temple_boss_key")
    local gbtbk = Tracker:FindObjectForCode("great_bay_temple_boss_key")
    local sttbk = Tracker:FindObjectForCode("stone_tower_temple_boss_key")

    local frstbk = Tracker:FindObjectForCode("forest_temple_boss_key")
    local firebk = Tracker:FindObjectForCode("fire_temple_boss_key")
    local watrbk = Tracker:FindObjectForCode("water_temple_boss_key")
    local sprtbk = Tracker:FindObjectForCode("spirit_temple_boss_key")
    local shdwbk = Tracker:FindObjectForCode("shadow_temple_boss_key")

    if sdbk.Active then
        wftbk.ItemState:setHidden(false)
        shtbk.ItemState:setHidden(false)
        gbtbk.ItemState:setHidden(false)
        sttbk.ItemState:setHidden(false)

        frstbk.ItemState:setHidden(false)
        firebk.ItemState:setHidden(false)
        watrbk.ItemState:setHidden(false)
        sprtbk.ItemState:setHidden(false)
        shdwbk.ItemState:setHidden(false)
    else
        wftbk.ItemState:setHidden(true)
        shtbk.ItemState:setHidden(true)
        gbtbk.ItemState:setHidden(true)
        sttbk.ItemState:setHidden(true)

        frstbk.ItemState:setHidden(true)
        firebk.ItemState:setHidden(true)
        watrbk.ItemState:setHidden(true)
        sprtbk.ItemState:setHidden(true)
        shdwbk.ItemState:setHidden(true)
    end

    local sgbk = Tracker:FindObjectForCode("setting_ganon_boss_key")

    local gcbk = Tracker:FindObjectForCode("ganons_castle_boss_key")

    if sgbk.Active then
        gcbk.ItemState:setHidden(false)
    else
        gcbk.ItemState:setHidden(true)
    end
    

    local sdmac = Tracker:FindObjectForCode("setting_dungeon_maps_and_compasses")
    local ssr = Tracker:FindObjectForCode("setting_silver_rupees")

    local icl = Tracker:FindObjectForCode("ice_cavern_label")
    if sdmac.Active or ssr.Active or sod.CurrentStage == 2 then
        icl.ItemState:useAlt(false)
    else
        icl.ItemState:useAlt(true)
    end

    if sdmac.Active or sdk.Active or ssr.Active or sod.CurrentStage == 2 then
        botwl.ItemState:useAlt(false)
    else
        botwl.ItemState:useAlt(true)
    end

    if sdk.Active or ssr.Active or sod.CurrentStage == 2 then
        gtgl.ItemState:useAlt(false)
    else
        gtgl.ItemState:useAlt(true)
    end

    if sdk.Active or sgbk.Active or ssr.Active or sod.CurrentStage == 2 then
        gcl.ItemState:useAlt(false)
    else
        gcl.ItemState:useAlt(true)
    end

    local ssk = Tracker:FindObjectForCode("setting_skeleton_key")
    local sk = Tracker:FindObjectForCode("skeleton_key")
    if ssk.Active then
        sk.ItemState:setHidden(false)
    else
        sk.ItemState:setHidden(true)
    end
end

function update_stray_fairies()
    local stsf = Tracker:FindObjectForCode("setting_town_stray_fairy")
    local sdsf = Tracker:FindObjectForCode("setting_dungeon_stray_fairies")

    local ctl = Tracker:FindObjectForCode("clock_town_label")
    local ctsf = Tracker:FindObjectForCode("clock_town_stray_fairy")

    if stsf.Active then
        ctl.ItemState:useAlt(false)
        ctsf.ItemState:setHidden(false)
    else
        ctl.ItemState:useAlt(true)
        ctsf.ItemState:setHidden(true)
    end

    local wftsf = Tracker:FindObjectForCode("woodfall_temple_stray_fairies")
    local shtsf = Tracker:FindObjectForCode("snowhead_temple_stray_fairies")
    local gbtsf = Tracker:FindObjectForCode("great_bay_temple_stray_fairies")
    local sttsf = Tracker:FindObjectForCode("stone_tower_temple_stray_fairies")

    if sdsf.Active then
        wftsf.ItemState:setMaxCount(15)
        shtsf.ItemState:setMaxCount(15)
        gbtsf.ItemState:setMaxCount(15)
        sttsf.ItemState:setMaxCount(15)
    else
        wftsf.ItemState:setMaxCount(0)
        shtsf.ItemState:setMaxCount(0)
        gbtsf.ItemState:setMaxCount(0)
        sttsf.ItemState:setMaxCount(0)
    end
end

function update_silver_rupees()
    local sod = Tracker:FindObjectForCode("setting_oot_dungeons")
    local ssr = Tracker:FindObjectForCode("setting_silver_rupees")

    local ssrp = Tracker:FindObjectForCode("setting_silver_rupee_pouches")
    local ssrpdc = Tracker:FindObjectForCode("setting_srpouch_dodongos_cavern")
    local ssrpsprt = Tracker:FindObjectForCode("setting_srpouch_spirit_temple")
    local ssrpshdw = Tracker:FindObjectForCode("setting_srpouch_shadow_temple")
    local ssrpic = Tracker:FindObjectForCode("setting_srpouch_ice_cavern")
    local ssrpbotw = Tracker:FindObjectForCode("setting_srpouch_bottom_of_the_well")
    local ssrpgtg = Tracker:FindObjectForCode("setting_srpouch_gerudo_training_ground")
    local ssrpgc = Tracker:FindObjectForCode("setting_srpouch_ganons_castle")
    
    if ssrp.CurrentStage == 0 then
        ssrpdc.Active = false
        ssrpsprt.Active = false
        ssrpshdw.Active = false
        ssrpic.Active = false
        ssrpbotw.Active = false
        ssrpgtg.Active = false
        ssrpgc.Active = false
    else
        if ssrp.CurrentStage == 2 then
            ssrpdc.Active = true
            ssrpsprt.Active = true
            ssrpshdw.Active = true
            ssrpic.Active = true
            ssrpbotw.Active = true
            ssrpgtg.Active = true
            ssrpgc.Active = true
        end
    end

    local dcl = Tracker:FindObjectForCode("dodongos_cavern_label")
    local dcsr = Tracker:FindObjectForCode("dodongos_cavern_sr")                    -- x5:mq

    local sprtl = Tracker:FindObjectForCode("spirit_temple_label")
    local sprtsrc = Tracker:FindObjectForCode("spirit_temple_sr_child")             -- x5:van
    local sprtsrs = Tracker:FindObjectForCode("spirit_temple_sr_sun")               -- x5:van
    local sprtsrb = Tracker:FindObjectForCode("spirit_temple_sr_boulders")          -- x5:van
    local sprtsrl = Tracker:FindObjectForCode("spirit_temple_sr_lobby")             -- x5:mq
    local sprtsra = Tracker:FindObjectForCode("spirit_temple_sr_adult")             -- x5:mq

    local shdwl = Tracker:FindObjectForCode("shadow_temple_label")
    local shdwsrsc = Tracker:FindObjectForCode("shadow_temple_sr_scythe")           -- x5:both
    local shdwsrp = Tracker:FindObjectForCode("shadow_temple_sr_pit")               -- x5:both
    local shdwsrsp = Tracker:FindObjectForCode("shadow_temple_sr_spikes")           -- x5:van, x10:mq
    local shdwsrb = Tracker:FindObjectForCode("shadow_temple_sr_blades")            -- x10:m1

    local icl = Tracker:FindObjectForCode("ice_cavern_label")
    local icsrs = Tracker:FindObjectForCode("ice_cavern_sr_scythe")                 -- x5:van
    local icsrb = Tracker:FindObjectForCode("ice_cavern_sr_block")                  -- x5:van

    local botwl = Tracker:FindObjectForCode("bottom_of_the_well_label")
    local botwsr = Tracker:FindObjectForCode("bottom_of_the_well_sr")               -- x5:van

    local gtgl = Tracker:FindObjectForCode("gerudo_training_ground_label")
    local gtgsrs = Tracker:FindObjectForCode("gerudo_training_ground_sr_slopes")    -- x5:both
    local gtgsrl = Tracker:FindObjectForCode("gerudo_training_ground_sr_lava")      -- x5:van, x6:mq
    local gtgsrw = Tracker:FindObjectForCode("gerudo_training_ground_sr_water")     -- x5:van, x3:mq

    local gcl = Tracker:FindObjectForCode("ganons_castle_label")
    local gcsrl = Tracker:FindObjectForCode("ganons_castle_sr_light")               -- x5:van
    local gcsrfo = Tracker:FindObjectForCode("ganons_castle_sr_forest")             -- x5:van
    local gcsrfi = Tracker:FindObjectForCode("ganons_castle_sr_fire")               -- x5:both
    local gcsrw = Tracker:FindObjectForCode("ganons_castle_sr_water")               -- x5:mq
    local gcsrsp = Tracker:FindObjectForCode("ganons_castle_sr_spirit")             -- x5:van
    local gcsrsh = Tracker:FindObjectForCode("ganons_castle_sr_shadow")             -- x5:mq

    if ssr.Active then
        if sod.CurrentStage == 1 or dcl.CurrentStage == 2 then
            if ssrpdc.Active then
                dcsr.ItemState:setMaxCount(1)
                if dcsr.ItemState:getCount() > 0 then
                    dcsr.ItemState:setBadgeText("5", "lime")
                else
                    dcsr.ItemState:clearBadgeText()
                end
            else
                dcsr.ItemState:setMaxCount(5)
                dcsr.ItemState:clearBadgeText()
            end
        else
            dcsr.ItemState:setMaxCount(0)
            dcsr.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or sprtl.CurrentStage == 2 then
            if ssrpsprt.Active then
                sprtsrl.ItemState:setMaxCount(1)
                if sprtsrl.ItemState:getCount() > 0 then
                    sprtsrl.ItemState:setBadgeText("5", "lime")
                else
                    sprtsrl.ItemState:clearBadgeText()
                end
                sprtsra.ItemState:setMaxCount(1)
                if sprtsra.ItemState:getCount() > 0 then
                    sprtsra.ItemState:setBadgeText("5", "lime")
                else
                    sprtsra.ItemState:clearBadgeText()
                end
            else
                sprtsrl.ItemState:setMaxCount(5)
                sprtsrl.ItemState:clearBadgeText()
                sprtsra.ItemState:setMaxCount(5)
                sprtsra.ItemState:clearBadgeText()
            end
            sprtsrc.ItemState:setMaxCount(0)
            sprtsrc.ItemState:clearBadgeText()
            sprtsrs.ItemState:setMaxCount(0)
            sprtsrs.ItemState:clearBadgeText()
            sprtsrb.ItemState:setMaxCount(0)
            sprtsrb.ItemState:clearBadgeText()
        else
            if ssrpsprt.Active then
                sprtsrc.ItemState:setMaxCount(1)
                if sprtsrc.ItemState:getCount() > 0 then
                    sprtsrc.ItemState:setBadgeText("5", "lime")
                else
                    sprtsrc.ItemState:clearBadgeText()
                end
                sprtsrs.ItemState:setMaxCount(1)
                if sprtsrs.ItemState:getCount() > 0 then
                    sprtsrs.ItemState:setBadgeText("5", "lime")
                else
                    sprtsrs.ItemState:clearBadgeText()
                end
                sprtsrb.ItemState:setMaxCount(1)
                if sprtsrb.ItemState:getCount() > 0 then
                    sprtsrb.ItemState:setBadgeText("5", "lime")
                else
                    sprtsrb.ItemState:clearBadgeText()
                end
            else
                sprtsrc.ItemState:setMaxCount(5)
                sprtsrc.ItemState:clearBadgeText()
                sprtsrs.ItemState:setMaxCount(5)
                sprtsrs.ItemState:clearBadgeText()
                sprtsrb.ItemState:setMaxCount(5)
                sprtsrb.ItemState:clearBadgeText()
            end

            sprtsrl.ItemState:setMaxCount(0)
            sprtsrl.ItemState:clearBadgeText()
            sprtsra.ItemState:setMaxCount(0)
            sprtsra.ItemState:clearBadgeText()
        end

        if ssrpshdw.Active then
            shdwsrsc.ItemState:setMaxCount(1)
            if shdwsrsc.ItemState:getCount() > 0 then
                shdwsrsc.ItemState:setBadgeText("5", "lime")
            else
                shdwsrsc.ItemState:clearBadgeText()
            end
            shdwsrp.ItemState:setMaxCount(1)
            if shdwsrp.ItemState:getCount() > 0 then
                shdwsrp.ItemState:setBadgeText("5", "lime")
            else
                shdwsrp.ItemState:clearBadgeText()
            end
        else
            shdwsrsc.ItemState:setMaxCount(5)
            shdwsrsc.ItemState:clearBadgeText()
            shdwsrp.ItemState:setMaxCount(5)
            shdwsrp.ItemState:clearBadgeText()
        end
        if sod.CurrentStage == 1 or shdwl.CurrentStage == 2 then
            if ssrpshdw.Active then
                shdwsrsp.ItemState:setMaxCount(1)
                if shdwsrsp.ItemState:getCount() > 0 then
                    shdwsrsp.ItemState:setBadgeText("10", "lime")
                else
                    shdwsrsp.ItemState:clearBadgeText()
                end
                shdwsrb.ItemState:setMaxCount(1)
                if shdwsrb.ItemState:getCount() > 0 then
                    shdwsrb.ItemState:setBadgeText("10", "lime")
                else
                    shdwsrb.ItemState:clearBadgeText()
                end
            else
                shdwsrsp.ItemState:setMaxCount(10)
                shdwsrsp.ItemState:clearBadgeText()
                shdwsrb.ItemState:setMaxCount(10)
                shdwsrb.ItemState:clearBadgeText()
            end
        else
            if ssrpshdw.Active then
                shdwsrsp.ItemState:setMaxCount(1)
                if shdwsrsp.ItemState:getCount() > 0 then
                    shdwsrsp.ItemState:setBadgeText("5", "lime")
                else
                    shdwsrsp.ItemState:clearBadgeText()
                end
            else
                shdwsrsp.ItemState:setMaxCount(5)
                shdwsrsp.ItemState:clearBadgeText()
            end

            shdwsrb.ItemState:setMaxCount(0)
            shdwsrb.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or icl.ItemState:getStage() == 2 then
            icsrs.ItemState:setMaxCount(0)
            icsrs.ItemState:clearBadgeText()
            icsrb.ItemState:setMaxCount(0)
            icsrb.ItemState:clearBadgeText()
        else
            if ssrpic.Active then
                icsrs.ItemState:setMaxCount(1)
                if icsrs.ItemState:getCount() > 0 then
                    icsrs.ItemState:setBadgeText("5", "lime")
                else
                    icsrs.ItemState:clearBadgeText()
                end
                icsrb.ItemState:setMaxCount(1)
                if icsrb.ItemState:getCount() > 0 then
                    icsrb.ItemState:setBadgeText("5", "lime")
                else
                    icsrb.ItemState:clearBadgeText()
                end
            else
                icsrs.ItemState:setMaxCount(5)
                icsrs.ItemState:clearBadgeText()
                icsrb.ItemState:setMaxCount(5)
                icsrb.ItemState:clearBadgeText()
            end
        end

        if sod.CurrentStage == 1 or botwl.ItemState:getStage() == 2 then
            botwsr.ItemState:setMaxCount(0)
            botwsr.ItemState:clearBadgeText()
        else
            if ssrpbotw.Active then
                botwsr.ItemState:setMaxCount(1)
                if botwsr.ItemState:getCount() > 0 then
                    botwsr.ItemState:setBadgeText("5", "lime")
                else
                    botwsr.ItemState:clearBadgeText()
                end
            else
                botwsr.ItemState:setMaxCount(5)
                botwsr.ItemState:clearBadgeText()
            end
        end

        if ssrpgtg.Active then
            gtgsrs.ItemState:setMaxCount(1)
            if gtgsrs.ItemState:getCount() > 0 then
                gtgsrs.ItemState:setBadgeText("5", "lime")
            else
                gtgsrs.ItemState:clearBadgeText()
            end
        else
            gtgsrs.ItemState:setMaxCount(5)
            gtgsrs.ItemState:clearBadgeText()
        end
        if sod.CurrentStage == 1 or gtgl.ItemState:getStage() == 2 then
            if ssrpgtg.Active then
                gtgsrl.ItemState:setMaxCount(1)
                if gtgsrl.ItemState:getCount() > 0 then
                    gtgsrl.ItemState:setBadgeText("6", "lime")
                else
                    gtgsrl.ItemState:clearBadgeText()
                end
                gtgsrw.ItemState:setMaxCount(1)
                if gtgsrw.ItemState:getCount() > 0 then
                    gtgsrw.ItemState:setBadgeText("3", "lime")
                else
                    gtgsrw.ItemState:clearBadgeText()
                end
            else
                gtgsrl.ItemState:setMaxCount(6)
                gtgsrl.ItemState:clearBadgeText()
                gtgsrw.ItemState:setMaxCount(3)
                gtgsrw.ItemState:clearBadgeText()
            end
        else
            if ssrpgtg.Active then
                gtgsrl.ItemState:setMaxCount(1)
                if gtgsrl.ItemState:getCount() > 0 then
                    gtgsrl.ItemState:setBadgeText("5", "lime")
                else
                    gtgsrl.ItemState:clearBadgeText()
                end
                gtgsrw.ItemState:setMaxCount(1)
                if gtgsrw.ItemState:getCount() > 0 then
                    gtgsrw.ItemState:setBadgeText("5", "lime")
                else
                    gtgsrw.ItemState:clearBadgeText()
                end
            else
                gtgsrl.ItemState:setMaxCount(5)
                gtgsrl.ItemState:clearBadgeText()
                gtgsrw.ItemState:setMaxCount(5)
                gtgsrw.ItemState:clearBadgeText()
            end
        end

        if ssrpgc.Active then
            gcsrfi.ItemState:setMaxCount(1)
            if gcsrfi.ItemState:getCount() > 0 then
                gcsrfi.ItemState:setBadgeText("5", "lime")
            else
                gcsrfi.ItemState:clearBadgeText()
            end
        else
            gcsrfi.ItemState:setMaxCount(5)
            gcsrfi.ItemState:clearBadgeText()
        end
        if sod.CurrentStage == 1 or gcl.ItemState:getStage() == 2 then
            if ssrpgc.Active then
                gcsrw.ItemState:setMaxCount(1)
                if gcsrw.ItemState:getCount() > 0 then
                    gcsrw.ItemState:setBadgeText("5", "lime")
                else
                    gcsrw.ItemState:clearBadgeText()
                end
                gcsrsh.ItemState:setMaxCount(1)
                if gcsrsh.ItemState:getCount() > 0 then
                    gcsrsh.ItemState:setBadgeText("5", "lime")
                else
                    gcsrsh.ItemState:clearBadgeText()
                end
            else
                gcsrw.ItemState:setMaxCount(5)
                gcsrw.ItemState:clearBadgeText()
                gcsrsh.ItemState:setMaxCount(5)
                gcsrsh.ItemState:clearBadgeText()
            end

            gcsrl.ItemState:setMaxCount(0)
            gcsrl.ItemState:clearBadgeText()
            gcsrfo.ItemState:setMaxCount(0)
            gcsrfo.ItemState:clearBadgeText()
            gcsrsp.ItemState:setMaxCount(0)
            gcsrsp.ItemState:clearBadgeText()
        else
            if ssrpgc.Active then
                gcsrl.ItemState:setMaxCount(1)
                if gcsrl.ItemState:getCount() > 0 then
                    gcsrl.ItemState:setBadgeText("5", "lime")
                else
                    gcsrl.ItemState:clearBadgeText()
                end
                gcsrfo.ItemState:setMaxCount(1)
                if gcsrfo.ItemState:getCount() > 0 then
                    gcsrfo.ItemState:setBadgeText("5", "lime")
                else
                    gcsrfo.ItemState:clearBadgeText()
                end
                gcsrsp.ItemState:setMaxCount(1)
                if gcsrsp.ItemState:getCount() > 0 then
                    gcsrsp.ItemState:setBadgeText("5", "lime")
                else
                    gcsrsp.ItemState:clearBadgeText()
                end
            else
                gcsrl.ItemState:setMaxCount(5)
                gcsrl.ItemState:clearBadgeText()
                gcsrfo.ItemState:setMaxCount(5)
                gcsrfo.ItemState:clearBadgeText()
                gcsrsp.ItemState:setMaxCount(5)
                gcsrsp.ItemState:clearBadgeText()
            end

            gcsrw.ItemState:setMaxCount(0)
            gcsrsh.ItemState:setMaxCount(0)
        end
    else
        dcsr.ItemState:setMaxCount(0)

        sprtsrc.ItemState:setMaxCount(0)
        sprtsrs.ItemState:setMaxCount(0)
        sprtsrb.ItemState:setMaxCount(0)
        sprtsrl.ItemState:setMaxCount(0)
        sprtsra.ItemState:setMaxCount(0)

        shdwsrsc.ItemState:setMaxCount(0)
        shdwsrp.ItemState:setMaxCount(0)
        shdwsrsp.ItemState:setMaxCount(0)
        shdwsrb.ItemState:setMaxCount(0)

        icsrs.ItemState:setMaxCount(0)
        icsrb.ItemState:setMaxCount(0)

        botwsr.ItemState:setMaxCount(0)

        gtgsrs.ItemState:setMaxCount(0)
        gtgsrl.ItemState:setMaxCount(0)
        gtgsrw.ItemState:setMaxCount(0)

        gcsrl.ItemState:setMaxCount(0)
        gcsrfo.ItemState:setMaxCount(0)
        gcsrfi.ItemState:setMaxCount(0)
        gcsrw.ItemState:setMaxCount(0)
        gcsrsp.ItemState:setMaxCount(0)
        gcsrsh.ItemState:setMaxCount(0)
    end

    local smr = Tracker:FindObjectForCode("setting_magical_rupee")
    local mr = Tracker:FindObjectForCode("magical_rupee")
    if smr.Active then
        mr.ItemState:setHidden(false)
    else
        mr.ItemState:setHidden(true)
    end
end