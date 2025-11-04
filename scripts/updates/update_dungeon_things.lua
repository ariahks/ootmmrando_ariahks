function update_dungeon_things()
    update_maps_and_compasses()
    update_keys()
    update_stray_fairies()
    update_silver_rupees()
end

function update_maps_and_compasses()
    local sdmac = Tracker:FindObjectForCode("setting_dungeon_maps_and_compasses")
    
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

    local frtm = Tracker:FindObjectForCode("forest_temple_map")
    local frtc = Tracker:FindObjectForCode("forest_temple_compass")
    local fitm = Tracker:FindObjectForCode("fire_temple_map")
    local fitc = Tracker:FindObjectForCode("fire_temple_compass")
    local watm = Tracker:FindObjectForCode("water_temple_map")
    local watc = Tracker:FindObjectForCode("water_temple_compass")
    local sptm = Tracker:FindObjectForCode("spirit_temple_map")
    local sptc = Tracker:FindObjectForCode("spirit_temple_compass")
    local sdtm = Tracker:FindObjectForCode("shadow_temple_map")
    local sdtc = Tracker:FindObjectForCode("shadow_temple_compass")
    
    local icm = Tracker:FindObjectForCode("ice_cavern_map")
    local icc = Tracker:FindObjectForCode("ice_cavern_compass")
    local botwm = Tracker:FindObjectForCode("bottom_of_the_well_map")
    local botwc = Tracker:FindObjectForCode("bottom_of_the_well_compass")

    if sdmac.Active then
        wftm.ItemState:setHidden(false)
        wftc.ItemState:setHidden(false)
        shtm.ItemState:setHidden(false)
        shtc.ItemState:setHidden(false)
        gbtm.ItemState:setHidden(false)
        gbtc.ItemState:setHidden(false)
        sttm.ItemState:setHidden(false)
        sttc.ItemState:setHidden(false)

        dtm.ItemState:setHidden(false)
        dtc.ItemState:setHidden(false)
        dcm.ItemState:setHidden(false)
        dcc.ItemState:setHidden(false)
        jjm.ItemState:setHidden(false)
        jjc.ItemState:setHidden(false)

        frtm.ItemState:setHidden(false)
        frtc.ItemState:setHidden(false)
        fitm.ItemState:setHidden(false)
        fitc.ItemState:setHidden(false)
        watm.ItemState:setHidden(false)
        watc.ItemState:setHidden(false)
        sptm.ItemState:setHidden(false)
        sptc.ItemState:setHidden(false)
        sdtm.ItemState:setHidden(false)
        sdtc.ItemState:setHidden(false)
        
        icm.ItemState:setHidden(false)
        icc.ItemState:setHidden(false)
        botwm.ItemState:setHidden(false)
        botwc.ItemState:setHidden(false)
    else
        wftm.ItemState:setHidden(true)
        wftc.ItemState:setHidden(true)
        shtm.ItemState:setHidden(true)
        shtc.ItemState:setHidden(true)
        gbtm.ItemState:setHidden(true)
        gbtc.ItemState:setHidden(true)
        sttm.ItemState:setHidden(true)
        sttc.ItemState:setHidden(true)

        dtm.ItemState:setHidden(true)
        dtc.ItemState:setHidden(true)
        dcm.ItemState:setHidden(true)
        dcc.ItemState:setHidden(true)
        jjm.ItemState:setHidden(true)
        jjc.ItemState:setHidden(true)

        frtm.ItemState:setHidden(true)
        frtc.ItemState:setHidden(true)
        fitm.ItemState:setHidden(true)
        fitc.ItemState:setHidden(true)
        watm.ItemState:setHidden(true)
        watc.ItemState:setHidden(true)
        sptm.ItemState:setHidden(true)
        sptc.ItemState:setHidden(true)
        sdtm.ItemState:setHidden(true)
        sdtc.ItemState:setHidden(true)
        
        icm.ItemState:setHidden(true)
        icc.ItemState:setHidden(true)
        botwm.ItemState:setHidden(true)
        botwc.ItemState:setHidden(true)
    end
end

function update_keys()
    local skr = Tracker:FindObjectForCode("setting_key_rings")

    local swftkr = Tracker:FindObjectForCode("setting_key_ring_woodfall_temple")
    local sshtkr = Tracker:FindObjectForCode("setting_key_ring_snowhead_temple")
    local sgbtkr = Tracker:FindObjectForCode("setting_key_ring_great_bay_temple")
    local ssttkr = Tracker:FindObjectForCode("setting_key_ring_stone_tower_temple")

    local sfrtkr = Tracker:FindObjectForCode("setting_key_ring_forest_temple")
    local sfitkr = Tracker:FindObjectForCode("setting_key_ring_fire_temple")
    local swatkr = Tracker:FindObjectForCode("setting_key_ring_water_temple")
    local ssptkr = Tracker:FindObjectForCode("setting_key_ring_spirit_temple")
    local ssdtkr = Tracker:FindObjectForCode("setting_key_ring_shadow_temple")
    
    local sthkr = Tracker:FindObjectForCode("setting_key_ring_thieves_hideout")
    local stcgkr = Tracker:FindObjectForCode("setting_key_ring_treasure_chest_game")
    
    local sbotwkr = Tracker:FindObjectForCode("setting_key_ring_bottom_of_the_well")
    local sgtgkr = Tracker:FindObjectForCode("setting_key_ring_gerudo_training_ground")
    local sgckr = Tracker:FindObjectForCode("setting_key_ring_ganons_castle")

    if skr.CurrentStage == 0 then
        swftkr.Active = false
        sshtkr.Active = false
        sgbtkr.Active = false
        ssttkr.Active = false
        
        sfrtkr.Active = false
        sfitkr.Active = false
        swatkr.Active = false
        ssptkr.Active = false
        ssdtkr.Active = false
        
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
            
            sfrtkr.Active = true
            sfitkr.Active = true
            swatkr.Active = true
            ssptkr.Active = true
            ssdtkr.Active = true
            
            sthkr.Active = true
            stcgkr.Active = true
            
            sbotwkr.Active = true
            sgtgkr.Active = true
            sgckr.Active = true
        end
    end
    
    local sod = Tracker:FindObjectForCode("setting_oot_dungeons")

    local dtl = Tracker:FindObjectForCode("deku_tree_label")
    local dcl = Tracker:FindObjectForCode("dodongos_cavern_label")
    local jjl = Tracker:FindObjectForCode("jabu-jabu_label")

    local frtl = Tracker:FindObjectForCode("forest_temple_label")
    local fitl = Tracker:FindObjectForCode("fire_temple_label")
    local watl = Tracker:FindObjectForCode("water_temple_label")
    local sptl = Tracker:FindObjectForCode("spirit_temple_label")
    local sdtl = Tracker:FindObjectForCode("shadow_temple_label")
    
    local icl = Tracker:FindObjectForCode("ice_cavern_label")
    local botwl = Tracker:FindObjectForCode("bottom_of_the_well_label")
    local gtgl = Tracker:FindObjectForCode("gerudo_training_ground_label")
    local gcl = Tracker:FindObjectForCode("ganons_castle_label")

    if sod.CurrentStage ~= 2 then
        dtl.CurrentStage = 0
        dcl.CurrentStage = 0
        jjl.CurrentStage = 0
        frtl.CurrentStage = 0
        fitl.CurrentStage = 0
        watl.CurrentStage = 0
        sptl.CurrentStage = 0
        sdtl.CurrentStage = 0
        icl.ItemState:setStage(0)
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
    
    local frtk = Tracker:FindObjectForCode("forest_temple_small_keys")
    local fitk = Tracker:FindObjectForCode("fire_temple_small_keys")
    local watk = Tracker:FindObjectForCode("water_temple_small_keys")
    local sptk = Tracker:FindObjectForCode("spirit_temple_small_keys")
    local sdtk = Tracker:FindObjectForCode("shadow_temple_small_keys")
    
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

        if sod.CurrentStage == 0 or frtl.CurrentStage == 1 then c = 5 --VA
        else c = 6 end                                                --MQ
        if sfrtkr.Active then
            frtk.ItemState:setMaxCount(1)
            if frtk.ItemState:getCount() > 0 then
                frtk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                frtk.ItemState:clearBadgeText()
            end
        else
            frtk.ItemState:setMaxCount(c)
            frtk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or fitl.CurrentStage == 2 then c = 5 --MQ
        else if sks.Active then c = 8                                 --VA (Keysanity)
        else c = 7 end end                                            --VA (Own Dungeon)
        if sfitkr.Active then
            fitk.ItemState:setMaxCount(1)
            if fitk.ItemState:getCount() > 0 then
                fitk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                fitk.ItemState:clearBadgeText()
            end
        else
            fitk.ItemState:setMaxCount(c)
            fitk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or watl.CurrentStage == 2 then c = 2 --MQ
        else c = 5 end                                                --VA
        if swatkr.Active then
            watk.ItemState:setMaxCount(1)
            if watk.ItemState:getCount() > 0 then
                watk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                watk.ItemState:clearBadgeText()
            end
        else
            watk.ItemState:setMaxCount(c)
            watk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 0 or sptl.CurrentStage == 1 then c = 5 --VA
        else c = 7 end                                                --MQ
        if ssptkr.Active then
            sptk.ItemState:setMaxCount(1)
            if sptk.ItemState:getCount() > 0 then
                sptk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                sptk.ItemState:clearBadgeText()
            end
        else
            sptk.ItemState:setMaxCount(c)
            sptk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 0 or sdtl.CurrentStage == 1 then c = 5 --VA
        else c = 6 end                                                --MQ
        if ssdtkr.Active then
            sdtk.ItemState:setMaxCount(1)
            if sdtk.ItemState:getCount() > 0 then
                sdtk.ItemState:setBadgeText(string.format("%d", c), "lime")
            else
                sdtk.ItemState:clearBadgeText()
            end
        else
            sdtk.ItemState:setMaxCount(c)
            sdtk.ItemState:clearBadgeText()
        end

        if sod.CurrentStage == 1 or botwl.ItemState:getStage() == 2 then c = 2 --MQ
        else c = 3 end                                                         --VA
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

        if sod.CurrentStage == 1 or gtgl.ItemState:getStage() == 2 then c = 3 --MQ
        else c = 9 end                                                        --VA
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

        if sod.CurrentStage == 0 or gcl.ItemState:getStage() == 1 then c = 2 --MQ
        else c = 3 end                                                       --VA
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
        
        frtk.ItemState:setMaxCount(0)
        fitk.ItemState:setMaxCount(0)
        watk.ItemState:setMaxCount(0)
        sptk.ItemState:setMaxCount(0)
        sdtk.ItemState:setMaxCount(0)
        
        botwk.ItemState:setMaxCount(0)
        gtgk.ItemState:setMaxCount(0)
        gck.ItemState:setMaxCount(0)
    end

    local thl = Tracker:FindObjectForCode("thieves_hideout_label")
    local sthk = Tracker:FindObjectForCode("setting_thieves_hideout_keys")
    local thk = Tracker:FindObjectForCode("thieves_hideout_small_keys")
    if sthk.Active then
        thl.ItemState:setHidden(false)
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
        thl.ItemState:setHidden(true)
        thk.ItemState:setMaxCount(0)
    end

    local tcgl = Tracker:FindObjectForCode("treasure_chest_game_label")
    local stcgk = Tracker:FindObjectForCode("setting_treasure_chest_game_keys")
    local tcgk = Tracker:FindObjectForCode("treasure_chest_game_small_keys")
    if stcgk.Active then
        tcgl.ItemState:setHidden(false)
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
        tcgl.ItemState:setHidden(true)
        tcgk.ItemState:setMaxCount(0)
    end

    local sdbk = Tracker:FindObjectForCode("setting_dungeon_boss_keys")

    local wftbk = Tracker:FindObjectForCode("woodfall_temple_boss_key")
    local shtbk = Tracker:FindObjectForCode("snowhead_temple_boss_key")
    local gbtbk = Tracker:FindObjectForCode("great_bay_temple_boss_key")
    local sttbk = Tracker:FindObjectForCode("stone_tower_temple_boss_key")
    
    local frtbk = Tracker:FindObjectForCode("forest_temple_boss_key")
    local fitbk = Tracker:FindObjectForCode("fire_temple_boss_key")
    local watbk = Tracker:FindObjectForCode("water_temple_boss_key")
    local sptbk = Tracker:FindObjectForCode("spirit_temple_boss_key")
    local sdtbk = Tracker:FindObjectForCode("shadow_temple_boss_key")

    if sdbk.Active then
        wftbk.ItemState:setHidden(false)
        shtbk.ItemState:setHidden(false)
        gbtbk.ItemState:setHidden(false)
        sttbk.ItemState:setHidden(false)
        
        frtbk.ItemState:setHidden(false)
        fitbk.ItemState:setHidden(false)
        watbk.ItemState:setHidden(false)
        sptbk.ItemState:setHidden(false)
        sdtbk.ItemState:setHidden(false)
    else
        wftbk.ItemState:setHidden(true)
        shtbk.ItemState:setHidden(true)
        gbtbk.ItemState:setHidden(true)
        sttbk.ItemState:setHidden(true)
        
        frtbk.ItemState:setHidden(true)
        fitbk.ItemState:setHidden(true)
        watbk.ItemState:setHidden(true)
        sptbk.ItemState:setHidden(true)
        sdtbk.ItemState:setHidden(true)
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

    if sdmac.Active or ssr.Active or sod.CurrentStage == 2 then
        icl.ItemState:setHidden(false)
    else
        icl.ItemState:setHidden(true)
    end

    if sdmac.Active or sdk.Active or ssr.Active or sod.CurrentStage == 2 then
        botwl.ItemState:setHidden(false)
    else
        botwl.ItemState:setHidden(true)
    end

    if sdk.Active or ssr.Active or sod.CurrentStage == 2 then
        gtgl.ItemState:setHidden(false)
    else
        gtgl.ItemState:setHidden(true)
    end

    if sdk.Active or sgbk.Active or ssr.Active or sod.CurrentStage == 2 then
        gcl.ItemState:setHidden(false)
    else
        gcl.ItemState:setHidden(true)
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

    local ctl = Tracker:FindObjectForCode("clock_town_label")
    local ctsf = Tracker:FindObjectForCode("clock_town_stray_fairy")

    if stsf.Active then
        ctl.ItemState:setHidden(false)
        ctsf.ItemState:setHidden(false)
    else
        ctl.ItemState:setHidden(true)
        ctsf.ItemState:setHidden(true)
    end
    
    local sdsf = Tracker:FindObjectForCode("setting_dungeon_stray_fairies")

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

    local stf = Tracker:FindObjectForCode("setting_transcendent_fairy")
    local tf = Tracker:FindObjectForCode("transcendent_fairy")
    if stf.Active then
        tf.ItemState:setHidden(false)
    else
        tf.ItemState:setHidden(true)
    end
end

function update_silver_rupees()
    local sod = Tracker:FindObjectForCode("setting_oot_dungeons")
    local ssr = Tracker:FindObjectForCode("setting_silver_rupees")

    local ssrp = Tracker:FindObjectForCode("setting_silver_rupee_pouches")
    local ssrpdc = Tracker:FindObjectForCode("setting_srpouch_dodongos_cavern")
    local ssrpspt = Tracker:FindObjectForCode("setting_srpouch_spirit_temple")
    local ssrpsdt = Tracker:FindObjectForCode("setting_srpouch_shadow_temple")
    local ssrpic = Tracker:FindObjectForCode("setting_srpouch_ice_cavern")
    local ssrpbotw = Tracker:FindObjectForCode("setting_srpouch_bottom_of_the_well")
    local ssrpgtg = Tracker:FindObjectForCode("setting_srpouch_gerudo_training_ground")
    local ssrpgc = Tracker:FindObjectForCode("setting_srpouch_ganons_castle")

    if ssrp.CurrentStage == 0 then
        ssrpdc.Active = false
        ssrpspt.Active = false
        ssrpsdt.Active = false
        ssrpic.Active = false
        ssrpbotw.Active = false
        ssrpgtg.Active = false
        ssrpgc.Active = false
    else
        if ssrp.CurrentStage == 2 then
            ssrpdc.Active = true
            ssrpspt.Active = true
            ssrpsdt.Active = true
            ssrpic.Active = true
            ssrpbotw.Active = true
            ssrpgtg.Active = true
            ssrpgc.Active = true
        end
    end

    local dcl = Tracker:FindObjectForCode("dodongos_cavern_label")
    local dcsr = Tracker:FindObjectForCode("dodongos_cavern_sr_staircase")

    local sptl = Tracker:FindObjectForCode("spirit_temple_label")
    local sptsrc = Tracker:FindObjectForCode("spirit_temple_sr_child")
    local sptsrs = Tracker:FindObjectForCode("spirit_temple_sr_sun")
    local sptsrb = Tracker:FindObjectForCode("spirit_temple_sr_boulders")
    local sptsrl = Tracker:FindObjectForCode("spirit_temple_sr_lobby")
    local sptsra = Tracker:FindObjectForCode("spirit_temple_sr_adult")

    local sdtl = Tracker:FindObjectForCode("shadow_temple_label")
    local sdtsrsc = Tracker:FindObjectForCode("shadow_temple_sr_scythe")
    local sdtsrp = Tracker:FindObjectForCode("shadow_temple_sr_pit")
    local sdtsrsp = Tracker:FindObjectForCode("shadow_temple_sr_spikes")
    local sdtsrb = Tracker:FindObjectForCode("shadow_temple_sr_blades")

    local icl = Tracker:FindObjectForCode("ice_cavern_label")
    local icsrs = Tracker:FindObjectForCode("ice_cavern_sr_scythe")
    local icsrb = Tracker:FindObjectForCode("ice_cavern_sr_block")

    local botwl = Tracker:FindObjectForCode("bottom_of_the_well_label")
    local botwsr = Tracker:FindObjectForCode("bottom_of_the_well_sr_basement")

    local gtgl = Tracker:FindObjectForCode("gerudo_training_ground_label")
    local gtgsrs = Tracker:FindObjectForCode("gerudo_training_ground_sr_slopes")
    local gtgsrl = Tracker:FindObjectForCode("gerudo_training_ground_sr_lava")
    local gtgsrw = Tracker:FindObjectForCode("gerudo_training_ground_sr_water")

    local gcl = Tracker:FindObjectForCode("ganons_castle_label")
    local gcsrl = Tracker:FindObjectForCode("ganons_castle_sr_light")
    local gcsrfr = Tracker:FindObjectForCode("ganons_castle_sr_forest")
    local gcsrfi = Tracker:FindObjectForCode("ganons_castle_sr_fire")
    local gcsrw = Tracker:FindObjectForCode("ganons_castle_sr_water")
    local gcsrsp = Tracker:FindObjectForCode("ganons_castle_sr_spirit")
    local gcsrsd = Tracker:FindObjectForCode("ganons_castle_sr_shadow")

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

        if sod.CurrentStage == 1 or sptl.CurrentStage == 2 then
            if ssrpspt.Active then
                sptsrl.ItemState:setMaxCount(1)
                if sptsrl.ItemState:getCount() > 0 then
                    sptsrl.ItemState:setBadgeText("5", "lime")
                else
                    sptsrl.ItemState:clearBadgeText()
                end
                
                sptsra.ItemState:setMaxCount(1)
                if sptsra.ItemState:getCount() > 0 then
                    sptsra.ItemState:setBadgeText("5", "lime")
                else
                    sptsra.ItemState:clearBadgeText()
                end
            else
                sptsrl.ItemState:setMaxCount(5)
                sptsrl.ItemState:clearBadgeText()
                sptsra.ItemState:setMaxCount(5)
                sptsra.ItemState:clearBadgeText()
            end
            sptsrc.ItemState:setMaxCount(0)
            sptsrc.ItemState:clearBadgeText()
            sptsrs.ItemState:setMaxCount(0)
            sptsrs.ItemState:clearBadgeText()
            sptsrb.ItemState:setMaxCount(0)
            sptsrb.ItemState:clearBadgeText()
        else
            if ssrpspt.Active then
                sptsrc.ItemState:setMaxCount(1)
                if sptsrc.ItemState:getCount() > 0 then
                    sptsrc.ItemState:setBadgeText("5", "lime")
                else
                    sptsrc.ItemState:clearBadgeText()
                end
                
                sptsrs.ItemState:setMaxCount(1)
                if sptsrs.ItemState:getCount() > 0 then
                    sptsrs.ItemState:setBadgeText("5", "lime")
                else
                    sptsrs.ItemState:clearBadgeText()
                end
                
                sptsrb.ItemState:setMaxCount(1)
                if sptsrb.ItemState:getCount() > 0 then
                    sptsrb.ItemState:setBadgeText("5", "lime")
                else
                    sptsrb.ItemState:clearBadgeText()
                end
            else
                sptsrc.ItemState:setMaxCount(5)
                sptsrc.ItemState:clearBadgeText()
                sptsrs.ItemState:setMaxCount(5)
                sptsrs.ItemState:clearBadgeText()
                sptsrb.ItemState:setMaxCount(5)
                sptsrb.ItemState:clearBadgeText()
            end

            sptsrl.ItemState:setMaxCount(0)
            sptsrl.ItemState:clearBadgeText()
            sptsra.ItemState:setMaxCount(0)
            sptsra.ItemState:clearBadgeText()
        end

        if ssrpsdt.Active then
            sdtsrsc.ItemState:setMaxCount(1)
            if sdtsrsc.ItemState:getCount() > 0 then
                sdtsrsc.ItemState:setBadgeText("5", "lime")
            else
                sdtsrsc.ItemState:clearBadgeText()
            end

            sdtsrp.ItemState:setMaxCount(1)
            if sdtsrp.ItemState:getCount() > 0 then
                sdtsrp.ItemState:setBadgeText("5", "lime")
            else
                sdtsrp.ItemState:clearBadgeText()
            end
        else
            sdtsrsc.ItemState:setMaxCount(5)
            sdtsrsc.ItemState:clearBadgeText()
            sdtsrp.ItemState:setMaxCount(5)
            sdtsrp.ItemState:clearBadgeText()
        end
        if sod.CurrentStage == 1 or sdtl.CurrentStage == 2 then
            if ssrpsdt.Active then
                sdtsrsp.ItemState:setMaxCount(1)
                if sdtsrsp.ItemState:getCount() > 0 then
                    sdtsrsp.ItemState:setBadgeText("10", "lime")
                else
                    sdtsrsp.ItemState:clearBadgeText()
                end
                
                sdtsrb.ItemState:setMaxCount(1)
                if sdtsrb.ItemState:getCount() > 0 then
                    sdtsrb.ItemState:setBadgeText("10", "lime")
                else
                    sdtsrb.ItemState:clearBadgeText()
                end
            else
                sdtsrsp.ItemState:setMaxCount(10)
                sdtsrsp.ItemState:clearBadgeText()
                sdtsrb.ItemState:setMaxCount(10)
                sdtsrb.ItemState:clearBadgeText()
            end
        else
            if ssrpsdt.Active then
                sdtsrsp.ItemState:setMaxCount(1)
                if sdtsrsp.ItemState:getCount() > 0 then
                    sdtsrsp.ItemState:setBadgeText("5", "lime")
                else
                    sdtsrsp.ItemState:clearBadgeText()
                end
            else
                sdtsrsp.ItemState:setMaxCount(5)
                sdtsrsp.ItemState:clearBadgeText()
            end

            sdtsrb.ItemState:setMaxCount(0)
            sdtsrb.ItemState:clearBadgeText()
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
                
                gcsrsd.ItemState:setMaxCount(1)
                if gcsrsd.ItemState:getCount() > 0 then
                    gcsrsd.ItemState:setBadgeText("5", "lime")
                else
                    gcsrsd.ItemState:clearBadgeText()
                end
            else
                gcsrw.ItemState:setMaxCount(5)
                gcsrw.ItemState:clearBadgeText()
                gcsrsd.ItemState:setMaxCount(5)
                gcsrsd.ItemState:clearBadgeText()
            end

            gcsrl.ItemState:setMaxCount(0)
            gcsrl.ItemState:clearBadgeText()
            gcsrfr.ItemState:setMaxCount(0)
            gcsrfr.ItemState:clearBadgeText()
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
                
                gcsrfr.ItemState:setMaxCount(1)
                if gcsrfr.ItemState:getCount() > 0 then
                    gcsrfr.ItemState:setBadgeText("5", "lime")
                else
                    gcsrfr.ItemState:clearBadgeText()
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
                gcsrfr.ItemState:setMaxCount(5)
                gcsrfr.ItemState:clearBadgeText()
                gcsrsp.ItemState:setMaxCount(5)
                gcsrsp.ItemState:clearBadgeText()
            end

            gcsrw.ItemState:setMaxCount(0)
            gcsrw.ItemState:clearBadgeText()
            gcsrsd.ItemState:setMaxCount(0)
            gcsrsd.ItemState:clearBadgeText()
        end
    else
        dcsr.ItemState:setMaxCount(0)

        sptsrc.ItemState:setMaxCount(0)
        sptsrs.ItemState:setMaxCount(0)
        sptsrb.ItemState:setMaxCount(0)
        sptsrl.ItemState:setMaxCount(0)
        sptsra.ItemState:setMaxCount(0)

        sdtsrsc.ItemState:setMaxCount(0)
        sdtsrp.ItemState:setMaxCount(0)
        sdtsrsp.ItemState:setMaxCount(0)
        sdtsrb.ItemState:setMaxCount(0)

        icsrs.ItemState:setMaxCount(0)
        icsrb.ItemState:setMaxCount(0)

        botwsr.ItemState:setMaxCount(0)

        gtgsrs.ItemState:setMaxCount(0)
        gtgsrl.ItemState:setMaxCount(0)
        gtgsrw.ItemState:setMaxCount(0)

        gcsrl.ItemState:setMaxCount(0)
        gcsrfr.ItemState:setMaxCount(0)
        gcsrfi.ItemState:setMaxCount(0)
        gcsrw.ItemState:setMaxCount(0)
        gcsrsp.ItemState:setMaxCount(0)
        gcsrsd.ItemState:setMaxCount(0)
    end

    local smr = Tracker:FindObjectForCode("setting_magical_rupee")
    local mr = Tracker:FindObjectForCode("magical_rupee")
    if smr.Active then
        mr.ItemState:setHidden(false)
    else
        mr.ItemState:setHidden(true)
    end
end