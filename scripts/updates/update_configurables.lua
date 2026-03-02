function update_configurables()
    update_settings()

    -- Common
    update_oot_mm_sprites()

    -- Equipment
    update_bronze_scale()
    update_biggoron_sword()
    update_wallet()
    update_skulltula_tokens()
    update_tingle_maps()

    -- Songs
    update_songs()
    update_c_buttons()

    -- Items
    update_bombchu_bags()
    update_magic_beans()
    update_bottles()
    update_clocks()
    update_coins()
    update_owl_statues()

    -- Trade Quests
    update_eggs_and_letter()

    -- Dungeons
    update_triforce_pieces()

    if string.find(Tracker.ActiveVariantUID, "Souls") then
        update_souls()
    end
end

function update_settings()
    sod = Tracker:FindObjectForCode("setting_oot_dungeons")
    sk = Tracker:FindObjectForCode("setting_keysanity")

    if sod.CurrentStage == 1 then
        sk.ItemState:useAlt(true)
    else
        sk.ItemState:useAlt(false)
    end
end

function update_oot_mm_sprites()
    local uoms = Tracker:FindObjectForCode("setting_use_oot_mm_sprites")
    local ks = Tracker:FindObjectForCode("kokiri_sword")
    local hhs = Tracker:FindObjectForCode("hylian_heros_shield")
    local ms = Tracker:FindObjectForCode("mirror_shield")
    local fhb = Tracker:FindObjectForCode("fairy_heros_bow")
    local hs = Tracker:FindObjectForCode("hookshot")

    if uoms.CurrentStage == 1 then
        ks.ItemState:useAlt(true)
        hhs.ItemState:useAlt(true)
        ms.ItemState:useAlt(true)
        fhb.ItemState:useAlt(true)
        hs.ItemState:useAlt(true)
    else
        ks.ItemState:useAlt(false)
        hhs.ItemState:useAlt(false)
        ms.ItemState:useAlt(false)
        fhb.ItemState:useAlt(false)
        hs.ItemState:useAlt(false)
    end
end

setting_bronze_scale_expected = false
function load_bronze_scale()
    if Tracker:FindObjectForCode("setting_bronze_scale").Active then
        setting_bronze_scale_expected = true
    end
end

function update_bronze_scale()
    local sbs = Tracker:FindObjectForCode("setting_bronze_scale")
    local s = Tracker:FindObjectForCode("scale")

    if sbs.Active then
        s.ItemState:useAlt(true)
        if not setting_bronze_scale_expected then
            setting_bronze_scale_expected = true
            if s.ItemState:isActive() then
                s.ItemState:setStage(s.ItemState:getStage() + 1)
            end
        end
    else
        if setting_bronze_scale_expected then
            setting_bronze_scale_expected = false
            local stage = s.ItemState:getStage()
            if stage > 0 then
                s.ItemState:setStage(stage - 1)
            else
                if s.ItemState:isActive() then
                    s.ItemState:setActive(false)
                end
            end
        end
        s.ItemState:useAlt(false)
    end
end

function update_biggoron_sword()
    local pkb = Tracker:FindObjectForCode("setting_progressive_knife_and_biggoron")
    local bs = Tracker:FindObjectForCode("biggoron_sword")

    if not pkb.Active then
        if bs.CurrentStage == 1 then
            bs.CurrentStage = 3
        else
            if bs.CurrentStage == 2 then
                bs.CurrentStage = 0
            end
        end
    end
end

function update_wallet()
    local smw = Tracker:FindObjectForCode("setting_max_wallet")
    local smws = smw.CurrentStage
    local w = Tracker:FindObjectForCode("wallet")
    local ws = w.ItemState:getStage()
    w.ItemState:setBadgeText("9999", "lime")

    if ws == 4 and smws > 1 then
    else
        if ws == 4 then
            ws = 3
            w.ItemState:setStage(3)
        end

        if ws == 3 and smws > 0 then
            local color = "white"
            if smws == 1 then
                color = "lime"
            end
            w.ItemState:setBadgeText("999", color)
        else
            if ws == 3 then
                ws = 2
                w.ItemState:setStage(2)
            end
            
            if ws == 2 then
                local color = "white"
                if smws == 0 then
                    color = "lime"
                end
                w.ItemState:setBadgeText("500", color)
            else
                if ws == 1 then
                    w.ItemState:setBadgeText("200", "white")
                else
                    if w.ItemState:isActive() then
                        w.ItemState:setBadgeText("99", "white")
                    else
                        w.ItemState:clearBadgeText()
                    end
                end
            end
        end
    end
end

function update_skulltula_tokens()
    local sst = Tracker:FindObjectForCode("setting_skulltula_tokens")
    local g = Tracker:FindObjectForCode("gold_skulltula_tokens")
    local s = Tracker:FindObjectForCode("swamp_skulltula_tokens")
    local o = Tracker:FindObjectForCode("ocean_skulltula_tokens")

    if sst.CurrentStage > 2 then
        g.ItemState:setMaxCount(100)
        s.ItemState:setMaxCount(30)
        o.ItemState:setMaxCount(30)
    else
        if sst.CurrentStage > 1 then
            g.ItemState:setMaxCount(0)
            s.ItemState:setMaxCount(30)
            o.ItemState:setMaxCount(30)
        else
            if sst.CurrentStage > 0 then
                g.ItemState:setMaxCount(100)
                s.ItemState:setMaxCount(0)
                o.ItemState:setMaxCount(0)
            else
                g.ItemState:setMaxCount(0)
                s.ItemState:setMaxCount(0)
                o.ItemState:setMaxCount(0)
            end
        end
    end

    local spt = Tracker:FindObjectForCode("setting_platinum_skulltula_token")
    local pt = Tracker:FindObjectForCode("platinum_skulltula_token")

    if spt.Active then
        pt.ItemState:setHidden(false)
    else
        pt.ItemState:setHidden(true)
    end
end

function update_tingle_maps()
    local stm = Tracker:FindObjectForCode("setting_tingle_maps")
    local ct = Tracker:FindObjectForCode("tingle_map_clock_town")
    local rr = Tracker:FindObjectForCode("tingle_map_romani_ranch")
    local wf = Tracker:FindObjectForCode("tingle_map_woodfall")
    local sh = Tracker:FindObjectForCode("tingle_map_snowhead")
    local gb = Tracker:FindObjectForCode("tingle_map_great_bay")
    local st = Tracker:FindObjectForCode("tingle_map_stone_tower")

    if stm.Active then
        ct.ItemState:setHidden(false)
        rr.ItemState:setHidden(false)
        wf.ItemState:setHidden(false)
        sh.ItemState:setHidden(false)
        gb.ItemState:setHidden(false)
        st.ItemState:setHidden(false)
    else
        ct.ItemState:setHidden(true)
        rr.ItemState:setHidden(true)
        wf.ItemState:setHidden(true)
        sh.ItemState:setHidden(true)
        gb.ItemState:setHidden(true)
        st.ItemState:setHidden(true)
    end
end

function update_songs()
    local sns = Tracker:FindObjectForCode("setting_note_shuffle")
    local flo = Tracker:FindObjectForCode("setting_full_lullaby_only")

    local szelda = Tracker:FindObjectForCode("zeldas_lullaby")
    local sepona = Tracker:FindObjectForCode("eponas_song")
    local ssaria = Tracker:FindObjectForCode("sarias_song")
    local ssun = Tracker:FindObjectForCode("suns_song")

    local stime = Tracker:FindObjectForCode("song_of_time")
    local shealing = Tracker:FindObjectForCode("song_of_healing")
    local ssoaring = Tracker:FindObjectForCode("song_of_soaring")
    local sstorms = Tracker:FindObjectForCode("song_of_storms")

    local sminuet = Tracker:FindObjectForCode("minuet_of_forest")
    local sbolero = Tracker:FindObjectForCode("bolero_of_fire")
    local sserenade = Tracker:FindObjectForCode("serenade_of_water")
    local srequiem = Tracker:FindObjectForCode("requiem_of_spirit")
    local snocturne = Tracker:FindObjectForCode("nocturne_of_shadow")
    local sprelude = Tracker:FindObjectForCode("prelude_of_light")

    local ssonata = Tracker:FindObjectForCode("sonata_of_awakening")
    local slullaby = Tracker:FindObjectForCode("goron_lullaby")
    local sbnova = Tracker:FindObjectForCode("new_wave_bossa_nova")
    local selegy = Tracker:FindObjectForCode("elegy_of_emptiness")
    local soath = Tracker:FindObjectForCode("oath_to_order")

    if sns.Active then
        szelda.ItemState:setProperty("rcta", false)
        sepona.ItemState:setProperty("rcta", false)
        ssaria.ItemState:setProperty("rcta", false)
        ssun.ItemState:setProperty("rcta", false)

        stime.ItemState:setProperty("rcta", false)
        shealing.ItemState:setProperty("rcta", false)
        ssoaring.ItemState:setProperty("rcta", false)
        sstorms.ItemState:setProperty("rcta", false)

        sminuet.ItemState:setProperty("rcta", false)
        sbolero.ItemState:setProperty("rcta", false)
        sserenade.ItemState:setProperty("rcta", false)
        srequiem.ItemState:setProperty("rcta", false)
        snocturne.ItemState:setProperty("rcta", false)
        sprelude.ItemState:setProperty("rcta", false)

        ssonata.ItemState:setProperty("rcta", false)
        slullaby.ItemState:setProperty("rcta", false)
        sbnova.ItemState:setProperty("rcta", false)
        selegy.ItemState:setProperty("rcta", false)
        soath.ItemState:setProperty("rcta", false)

        local ls = slullaby.ItemState:getStage()
        if flo.CurrentStage == 1 then
            if ls == 8 then
                ls = 11
            else if ls == 9 then
                ls = 6
            else if ls == 10 then
                ls = 7 
            end end end
        else
            if ls == 6 then
                ls = 9
            else if ls == 7 then
                ls = 10
            else if ls == 8 then
                ls = 5
            end end end
        end
        slullaby.ItemState:setStage(ls)
    else
        szelda.ItemState:setProperty("rcta", true)
        if szelda.ItemState:getStage() > 0 then
            szelda.ItemState:setStageToMax()
        end
        sepona.ItemState:setProperty("rcta", true)
        if sepona.ItemState:getStage() > 0 then
            sepona.ItemState:setStageToMax()
        end
        ssaria.ItemState:setProperty("rcta", true)
        if ssaria.ItemState:getStage() > 0 then
            ssaria.ItemState:setStageToMax()
        end
        ssun.ItemState:setProperty("rcta", true)
        if ssun.ItemState:getStage() > 0 then
            ssun.ItemState:setStageToMax()
        end

        stime.ItemState:setProperty("rcta", true)
        if stime.ItemState:getStage() > 0 then
            stime.ItemState:setStageToMax()
        end
        shealing.ItemState:setProperty("rcta", true)
        if shealing.ItemState:getStage() > 0 then
            shealing.ItemState:setStageToMax()
        end
        ssoaring.ItemState:setProperty("rcta", true)
        if ssoaring.ItemState:getStage() > 0 then
            ssoaring.ItemState:setStageToMax()
        end
        sstorms.ItemState:setProperty("rcta", true)
        if sstorms.ItemState:getStage() > 0 then
            sstorms.ItemState:setStageToMax()
        end

        sminuet.ItemState:setProperty("rcta", true)
        if sminuet.ItemState:getStage() > 0 then
            sminuet.ItemState:setStageToMax()
        end
        sbolero.ItemState:setProperty("rcta", true)
        if sbolero.ItemState:getStage() > 0 then
            sbolero.ItemState:setStageToMax()
        end
        sserenade.ItemState:setProperty("rcta", true)
        if sserenade.ItemState:getStage() > 0 then
            sserenade.ItemState:setStageToMax()
        end
        srequiem.ItemState:setProperty("rcta", true)
        if srequiem.ItemState:getStage() > 0 then
            srequiem.ItemState:setStageToMax()
        end
        snocturne.ItemState:setProperty("rcta", true)
        if snocturne.ItemState:getStage() > 0 then
            snocturne.ItemState:setStageToMax()
        end
        sprelude.ItemState:setProperty("rcta", true)
        if sprelude.ItemState:getStage() > 0 then
            sprelude.ItemState:setStageToMax()
        end

        ssonata.ItemState:setProperty("rcta", true)
        if ssonata.ItemState:getStage() > 0 then
            ssonata.ItemState:setStageToMax()
        end
        slullaby.ItemState:setProperty("rcta", true)
        local ls = slullaby.ItemState:getStage()
        if flo.CurrentStage == 1 then
            if ls > 0 then
                slullaby.ItemState:setStageToMax()
            end
        else
            if ls > 0 and ls < 8 then
                slullaby.ItemState:setStage(8)
            else
                if ls > 8 then
                    slullaby.ItemState:setStageToMax()
                end
            end
        end
        sbnova.ItemState:setProperty("rcta", true)
        if sbnova.ItemState:getStage() > 0 then
            sbnova.ItemState:setStageToMax()
        end
        selegy.ItemState:setProperty("rcta", true)
        if selegy.ItemState:getStage() > 0 then
            selegy.ItemState:setStageToMax()
        end
        soath.ItemState:setProperty("rcta", true)
        if soath.ItemState:getStage() > 0 then
            soath.ItemState:setStageToMax()
        end
    end

    local sss = Tracker:FindObjectForCode("setting_scarecrow_songs")
    local sso = Tracker:FindObjectForCode("scarecrow_song_oot")
    local ssm = Tracker:FindObjectForCode("scarecrow_song_mm")

    if sss.Active then
        sso.ItemState:setHidden(false)
        ssm.ItemState:setHidden(false)
    else
        sso.ItemState:setHidden(true)
        ssm.ItemState:setHidden(true)
    end
end

function update_c_buttons()
    local scb = Tracker:FindObjectForCode("setting_shuffle_c_buttons")
    local a = Tracker:FindObjectForCode("a")
    local cu = Tracker:FindObjectForCode("c-up")
    local cl = Tracker:FindObjectForCode("c-left")
    local cd = Tracker:FindObjectForCode("c-down")
    local cr = Tracker:FindObjectForCode("c-right")

    if scb.Active then
        a.ItemState:setHidden(false)
        cu.ItemState:setHidden(false)
        cl.ItemState:setHidden(false)
        cd.ItemState:setHidden(false)
        cr.ItemState:setHidden(false)
    else
        a.ItemState:setHidden(true)
        cu.ItemState:setHidden(true)
        cl.ItemState:setHidden(true)
        cd.ItemState:setHidden(true)
        cr.ItemState:setHidden(true)
    end
end

function update_bombchu_bags()
    local sb = Tracker:FindObjectForCode("setting_bombchus")
    local b = Tracker:FindObjectForCode("bombchus")

    if sb.CurrentStage == 2 then
        b.ItemState:useAlt(true)
        if not b.ItemState:isActive() then
            b.ItemState:clearBadgeText()
        else
            if b.ItemState:getStage() == 0 then
                b.ItemState:setBadgeText("20", "white")
            else
                if b.ItemState:getStage() == 1 then
                    b.ItemState:setBadgeText("30", "white")
                else
                    if b.ItemState:getStage() == 2 then
                        b.ItemState:setBadgeText("40", "lime")
                    end
                end
            end
        end
    else
        b.ItemState:useAlt(false)
        b.ItemState:clearBadgeText()
    end
end

function update_magic_beans()
    local sppbo = Tracker:FindObjectForCode("setting_pre-planted_beans_oot")
    local mbo = Tracker:FindObjectForCode("magic_beans_oot")
    local mbm = Tracker:FindObjectForCode("magic_beans_mm")

    if sppbo.Active then
        mbo.ItemState:setHidden(true)
        mbm.ItemState:useAlt(true)
    else
        mbo.ItemState:setHidden(false)
        mbm.ItemState:useAlt(false)
    end
end

function update_bottles()
    local srbc = Tracker:FindObjectForCode("setting_random_bottle_contents")

    local b1 = Tracker:FindObjectForCode("bottle1")
    local b2 = Tracker:FindObjectForCode("bottle2")
    local b3 = Tracker:FindObjectForCode("bottle3")
    local b4 = Tracker:FindObjectForCode("bottle4")

    if srbc.Active then
        b1.ItemState:useAlt(true)
        b1.ItemState:setProperty("loop", true)
        b2.ItemState:useAlt(true)
        b2.ItemState:setProperty("loop", true)
        b3.ItemState:useAlt(true)
        b3.ItemState:setProperty("loop", true)
        b4.ItemState:useAlt(true)
        b4.ItemState:setProperty("loop", true)
    else
        b1.ItemState:useAlt(false)
        b1.ItemState:setProperty("loop", false)
        b2.ItemState:useAlt(false)
        b2.ItemState:setProperty("loop", false)
        b3.ItemState:useAlt(false)
        b3.ItemState:setProperty("loop", false)
        b4.ItemState:useAlt(false)
        b4.ItemState:setProperty("loop", false)
    end
end

function update_clocks()
    local sc = Tracker:FindObjectForCode("setting_clocks")

    local c1d = Tracker:FindObjectForCode("1st_day_clock")
    local c1n = Tracker:FindObjectForCode("1st_night_clock")
    local c2d = Tracker:FindObjectForCode("2nd_day_clock")
    local c2n = Tracker:FindObjectForCode("2nd_night_clock")
    local c3d = Tracker:FindObjectForCode("3rd_day_clock")
    local c3n = Tracker:FindObjectForCode("3rd_night_clock")

    if sc.Active then
        c1d.ItemState:setHidden(false)
        c1n.ItemState:setHidden(false)
        c2d.ItemState:setHidden(false)
        c2n.ItemState:setHidden(false)
        c3d.ItemState:setHidden(false)
        c3n.ItemState:setHidden(false)
    else
        c1d.ItemState:setHidden(true)
        c1n.ItemState:setHidden(true)
        c2d.ItemState:setHidden(true)
        c2n.ItemState:setHidden(true)
        c3d.ItemState:setHidden(true)
        c3n.ItemState:setHidden(true)
    end
end

function update_coins()
    local srcc = Tracker:FindObjectForCode("setting_red_coin_count")
    local rc = Tracker:FindObjectForCode("red_coins")
    local sycc = Tracker:FindObjectForCode("setting_yellow_coin_count")
    local yc = Tracker:FindObjectForCode("yellow_coins")
    local sgcc = Tracker:FindObjectForCode("setting_green_coin_count")
    local gc = Tracker:FindObjectForCode("green_coins")
    local sbcc = Tracker:FindObjectForCode("setting_blue_coin_count")
    local bc = Tracker:FindObjectForCode("blue_coins")

    rc.ItemState:setMaxCount(srcc.AcquiredCount)
    yc.ItemState:setMaxCount(sycc.AcquiredCount)
    gc.ItemState:setMaxCount(sgcc.AcquiredCount)
    bc.ItemState:setMaxCount(sbcc.AcquiredCount)
end

function update_owl_statues()
    local sos = Tracker:FindObjectForCode("setting_owl_statues")

    local oct = Tracker:FindObjectForCode("owl_clock_town")
    local omr = Tracker:FindObjectForCode("owl_milk_road")
    local oss = Tracker:FindObjectForCode("owl_southern_swamp")
    local owf = Tracker:FindObjectForCode("owl_woodfall")
    local omv = Tracker:FindObjectForCode("owl_mountain_village")
    local osh = Tracker:FindObjectForCode("owl_snowhead")
    local ogbc = Tracker:FindObjectForCode("owl_great_bay_coast")
    local ozc = Tracker:FindObjectForCode("owl_zora_cape")
    local oic = Tracker:FindObjectForCode("owl_ikana_canyon")
    local ost = Tracker:FindObjectForCode("owl_stone_tower")

    if sos.Active then
        oct.ItemState:setHidden(false)
        omr.ItemState:setHidden(false)
        oss.ItemState:setHidden(false)
        owf.ItemState:setHidden(false)
        omv.ItemState:setHidden(false)
        osh.ItemState:setHidden(false)
        ogbc.ItemState:setHidden(false)
        ozc.ItemState:setHidden(false)
        oic.ItemState:setHidden(false)
        ost.ItemState:setHidden(false)
    else
        oct.ItemState:setHidden(true)
        omr.ItemState:setHidden(true)
        oss.ItemState:setHidden(true)
        owf.ItemState:setHidden(true)
        omv.ItemState:setHidden(true)
        osh.ItemState:setHidden(true)
        ogbc.ItemState:setHidden(true)
        ozc.ItemState:setHidden(true)
        oic.ItemState:setHidden(true)
        ost.ItemState:setHidden(true)
    end
end

function update_eggs_and_letter()
    local sokg = Tracker:FindObjectForCode("setting_open_kakariko_gate")
    local sscz = Tracker:FindObjectForCode("setting_skip_child_zelda")
    local se = Tracker:FindObjectForCode("setting_eggs")

    local l = Tracker:FindObjectForCode("zeldas_letter")
    local c = Tracker:FindObjectForCode("chicken")
    local e = Tracker:FindObjectForCode("eggs")

    if sokg.Active then
        l.ItemState:setHidden(true)
    else
        l.ItemState:setHidden(false)
    end

    if sscz.Active then
        c.ItemState:setHidden(true)
    else
        c.ItemState:setHidden(false)
    end

    if se.Active then
        e.ItemState:setMaxCount(2)
    else
        e.ItemState:setMaxCount(0)
    end
end

function update_triforce_pieces()
    local stq = Tracker:FindObjectForCode("setting_triforce_quest")
    local stpn = Tracker:FindObjectForCode("setting_triforce_pieces_needed")

    local thl = Tracker:FindObjectForCode("triforce_hunt_label")
    local tp = Tracker:FindObjectForCode("triforce_pieces")

    if stq.Active then
        stpn.AcquiredCount = 0
        thl.CurrentStage = 2
        tp.ItemState:setMaxCount(3)
    else
        if stpn.AcquiredCount > 0 then
            thl.CurrentStage = 1
        else
            thl.CurrentStage = 0
        end
        tp.ItemState:setMaxCount(stpn.AcquiredCount)
    end
end

function update_souls()
    local lbg = Tracker:FindObjectForCode("setting_souls_label_by_game").Active

    local sboss = Tracker:FindObjectForCode("setting_souls_boss")
    local blabel = Tracker:FindObjectForCode("boss_souls_label")
    local bfiller = Tracker:FindObjectForCode("soul_boss_filler")

    local bqg = Tracker:FindObjectForCode("soul_queen_gohma")
    local bkd = Tracker:FindObjectForCode("soul_king_dodongo")
    local bb = Tracker:FindObjectForCode("soul_barinade")
    
    local bo = Tracker:FindObjectForCode("soul_odolwa")
    local bgo = Tracker:FindObjectForCode("soul_goht")
    local bgy = Tracker:FindObjectForCode("soul_gyorg")
    local btm = Tracker:FindObjectForCode("soul_twinmold")
    
    local bpg = Tracker:FindObjectForCode("soul_phantom_ganon")
    local bv = Tracker:FindObjectForCode("soul_volvagia")
    local bm = Tracker:FindObjectForCode("soul_morpha")
    local btr = Tracker:FindObjectForCode("soul_twinrova")
    local bbb = Tracker:FindObjectForCode("soul_bongo_bongo")
    
    local bi = Tracker:FindObjectForCode("soul_igos")

    if sboss.Active then
        blabel.ItemState:setHidden(false)
        bfiller.ItemState:setHidden(false)

        bqg.ItemState:setHidden(false)
        bqg.ItemState:setOverlay(lbg)
        bkd.ItemState:setHidden(false)
        bkd.ItemState:setOverlay(lbg)
        bb.ItemState:setHidden(false)
        bb.ItemState:setOverlay(lbg)

        bo.ItemState:setHidden(false)
        bo.ItemState:setOverlay(lbg)
        bgo.ItemState:setHidden(false)
        bgo.ItemState:setOverlay(lbg)
        bgy.ItemState:setHidden(false)
        bgy.ItemState:setOverlay(lbg)
        btm.ItemState:setHidden(false)
        btm.ItemState:setOverlay(lbg)

        bpg.ItemState:setHidden(false)
        bpg.ItemState:setOverlay(lbg)
        bv.ItemState:setHidden(false)
        bv.ItemState:setOverlay(lbg)
        bm.ItemState:setHidden(false)
        bm.ItemState:setOverlay(lbg)
        btr.ItemState:setHidden(false)
        btr.ItemState:setOverlay(lbg)
        bbb.ItemState:setHidden(false)
        bbb.ItemState:setOverlay(lbg)

        bi.ItemState:setHidden(false)
        bi.ItemState:setOverlay(lbg)
    else
        blabel.ItemState:setHidden(true)
        bfiller.ItemState:setHidden(true)
        
        bqg.ItemState:setHidden(true)
        bkd.ItemState:setHidden(true)
        bb.ItemState:setHidden(true)
        
        bo.ItemState:setHidden(true)
        bgo.ItemState:setHidden(true)
        bgy.ItemState:setHidden(true)
        btm.ItemState:setHidden(true)
        
        bpg.ItemState:setHidden(true)
        bv.ItemState:setHidden(true)
        bm.ItemState:setHidden(true)
        btr.ItemState:setHidden(true)
        bbb.ItemState:setHidden(true)
        
        bi.ItemState:setHidden(true)
    end

    local senemy = Tracker:FindObjectForCode("setting_souls_enemy")
    local elabel = Tracker:FindObjectForCode("enemy_souls_label")

    local ean = Tracker:FindObjectForCode("soul_anubis")
    local ear = Tracker:FindObjectForCode("soul_armos")
    local ebab = Tracker:FindObjectForCode("soul_baby_dodongos")
    local ebad = Tracker:FindObjectForCode("soul_bad_bats")
    local ebea = Tracker:FindObjectForCode("soul_beamos")
    local ebio = Tracker:FindObjectForCode("soul_bio_babas")
    local ebir = Tracker:FindObjectForCode("soul_biris_baris")

    local eboe = Tracker:FindObjectForCode("soul_boes")
    local ebub = Tracker:FindObjectForCode("soul_bubbles")
    local eca = Tracker:FindObjectForCode("soul_captain_keeta")
    local ech = Tracker:FindObjectForCode("soul_chuchus")
    local edark = Tracker:FindObjectForCode("soul_dark_link")
    local edead = Tracker:FindObjectForCode("soul_dead_hands")
    local edeep = Tracker:FindObjectForCode("soul_deep_pythons")

    local edekb = Tracker:FindObjectForCode("soul_deku_babas")
    local edeks = Tracker:FindObjectForCode("soul_deku_scrubs")
    local edexi = Tracker:FindObjectForCode("soul_dexihands")
    local edodo = Tracker:FindObjectForCode("soul_dodongos")
    local edrag = Tracker:FindObjectForCode("soul_dragonflies")
    local eee = Tracker:FindObjectForCode("soul_eenoes")
    local eey = Tracker:FindObjectForCode("soul_eyegores")

    local efla = Tracker:FindObjectForCode("soul_flare_dancers")
    local eflo = Tracker:FindObjectForCode("soul_floormasters")
    local efly = Tracker:FindObjectForCode("soul_flying_pots")
    local efre = Tracker:FindObjectForCode("soul_freezards")
    local egar = Tracker:FindObjectForCode("soul_garo")
    local egek = Tracker:FindObjectForCode("soul_gekkos")
    local eger = Tracker:FindObjectForCode("soul_gerudo_pirate_fighters")

    local egoh = Tracker:FindObjectForCode("soul_gohma_larvae")
    local egom = Tracker:FindObjectForCode("soul_gomess")
    local egua = Tracker:FindObjectForCode("soul_guays")
    local ehip = Tracker:FindObjectForCode("soul_hiploops")
    local ei = Tracker:FindObjectForCode("soul_iron_knuckles")
    local ej = Tracker:FindObjectForCode("soul_jabu_jabus_parasites")
    local ek = Tracker:FindObjectForCode("soul_keese")

    local elee = Tracker:FindObjectForCode("soul_leevers")
    local elik = Tracker:FindObjectForCode("soul_like_likes")
    local eliz = Tracker:FindObjectForCode("soul_lizalfos_dinolfos")
    local em = Tracker:FindObjectForCode("soul_moblins")
    local en = Tracker:FindObjectForCode("soul_nejirons")
    local eo = Tracker:FindObjectForCode("soul_octoroks")
    local epe = Tracker:FindObjectForCode("soul_peahats")

    local epo = Tracker:FindObjectForCode("soul_poes")
    local erea = Tracker:FindObjectForCode("soul_real_bombchu")
    local ered = Tracker:FindObjectForCode("soul_redeads_gibdos")
    local esha = Tracker:FindObjectForCode("soul_shaboms")
    local eshe = Tracker:FindObjectForCode("soul_shell_blades")
    local eskk = Tracker:FindObjectForCode("soul_skull_kids")
    local eskf = Tracker:FindObjectForCode("soul_skullfish")

    local eskt = Tracker:FindObjectForCode("soul_skulltulas")
    local eskw = Tracker:FindObjectForCode("soul_skullwalltulas")
    local esna = Tracker:FindObjectForCode("soul_snappers")
    local espi = Tracker:FindObjectForCode("soul_spikes")
    local estc = Tracker:FindObjectForCode("soul_stalchildren")

    local estf = Tracker:FindObjectForCode("soul_stalfos")
    local esti = Tracker:FindObjectForCode("soul_stingers")
    local etai = Tracker:FindObjectForCode("soul_tailpasarans")
    local etak = Tracker:FindObjectForCode("soul_takkuri")
    local etek = Tracker:FindObjectForCode("soul_tektites")

    local etor = Tracker:FindObjectForCode("soul_torch_slugs")
    local ewal = Tracker:FindObjectForCode("soul_wallmasters")
    local ewar = Tracker:FindObjectForCode("soul_warts")
    local ewiz = Tracker:FindObjectForCode("soul_wizzrobes")
    local ewol = Tracker:FindObjectForCode("soul_wolfos")

    if senemy.Active then
        elabel.ItemState:setHidden(false)

        ean.ItemState:setHidden(false)
        ean.ItemState:setOverlay(lbg)
        ear.ItemState:setHidden(false)
        ear.ItemState:setOverlay(lbg)
        ebab.ItemState:setHidden(false)
        ebab.ItemState:setOverlay(lbg)
        ebad.ItemState:setHidden(false)
        ebad.ItemState:setOverlay(lbg)
        ebea.ItemState:setHidden(false)
        ebea.ItemState:setOverlay(lbg)
        ebio.ItemState:setHidden(false)
        ebio.ItemState:setOverlay(lbg)
        ebir.ItemState:setHidden(false)
        ebir.ItemState:setOverlay(lbg)
        eboe.ItemState:setHidden(false)
        eboe.ItemState:setOverlay(lbg)

        ebub.ItemState:setHidden(false)
        ebub.ItemState:setOverlay(lbg)
        eca.ItemState:setHidden(false)
        eca.ItemState:setOverlay(lbg)
        ech.ItemState:setHidden(false)
        ech.ItemState:setOverlay(lbg)
        edark.ItemState:setHidden(false)
        edark.ItemState:setOverlay(lbg)
        edead.ItemState:setHidden(false)
        edead.ItemState:setOverlay(lbg)
        edeep.ItemState:setHidden(false)
        edeep.ItemState:setOverlay(lbg)
        edekb.ItemState:setHidden(false)
        edekb.ItemState:setOverlay(lbg)
        edeks.ItemState:setHidden(false)
        edeks.ItemState:setOverlay(lbg)

        edexi.ItemState:setHidden(false)
        edexi.ItemState:setOverlay(lbg)
        edodo.ItemState:setHidden(false)
        edodo.ItemState:setOverlay(lbg)
        edrag.ItemState:setHidden(false)
        edrag.ItemState:setOverlay(lbg)
        eee.ItemState:setHidden(false)
        eee.ItemState:setOverlay(lbg)
        eey.ItemState:setHidden(false)
        eey.ItemState:setOverlay(lbg)
        efla.ItemState:setHidden(false)
        efla.ItemState:setOverlay(lbg)
        eflo.ItemState:setHidden(false)
        eflo.ItemState:setOverlay(lbg)
        efly.ItemState:setHidden(false)
        efly.ItemState:setOverlay(lbg)

        efre.ItemState:setHidden(false)
        efre.ItemState:setOverlay(lbg)
        egar.ItemState:setHidden(false)
        egar.ItemState:setOverlay(lbg)
        egek.ItemState:setHidden(false)
        egek.ItemState:setOverlay(lbg)
        eger.ItemState:setHidden(false)
        eger.ItemState:setOverlay(lbg)
        egoh.ItemState:setHidden(false)
        egoh.ItemState:setOverlay(lbg)
        egom.ItemState:setHidden(false)
        egom.ItemState:setOverlay(lbg)
        egua.ItemState:setHidden(false)
        egua.ItemState:setOverlay(lbg)
        ehip.ItemState:setHidden(false)
        ehip.ItemState:setOverlay(lbg)

        ei.ItemState:setHidden(false)
        ei.ItemState:setOverlay(lbg)
        ej.ItemState:setHidden(false)
        ej.ItemState:setOverlay(lbg)
        ek.ItemState:setHidden(false)
        ek.ItemState:setOverlay(lbg)
        elee.ItemState:setHidden(false)
        elee.ItemState:setOverlay(lbg)
        elik.ItemState:setHidden(false)
        elik.ItemState:setOverlay(lbg)
        eliz.ItemState:setHidden(false)
        eliz.ItemState:setOverlay(lbg)
        em.ItemState:setHidden(false)
        em.ItemState:setOverlay(lbg)
        en.ItemState:setHidden(false)
        en.ItemState:setOverlay(lbg)

        eo.ItemState:setHidden(false)
        eo.ItemState:setOverlay(lbg)
        epe.ItemState:setHidden(false)
        epe.ItemState:setOverlay(lbg)
        epo.ItemState:setHidden(false)
        epo.ItemState:setOverlay(lbg)
        erea.ItemState:setHidden(false)
        erea.ItemState:setOverlay(lbg)
        ered.ItemState:setHidden(false)
        ered.ItemState:setOverlay(lbg)
        esha.ItemState:setHidden(false)
        esha.ItemState:setOverlay(lbg)
        eshe.ItemState:setHidden(false)
        eshe.ItemState:setOverlay(lbg)
        eskk.ItemState:setHidden(false)
        eskk.ItemState:setOverlay(lbg)

        eskf.ItemState:setHidden(false)
        eskf.ItemState:setOverlay(lbg)
        eskt.ItemState:setHidden(false)
        eskt.ItemState:setOverlay(lbg)
        eskw.ItemState:setHidden(false)
        eskw.ItemState:setOverlay(lbg)
        esna.ItemState:setHidden(false)
        esna.ItemState:setOverlay(lbg)
        espi.ItemState:setHidden(false)
        espi.ItemState:setOverlay(lbg)
        estc.ItemState:setHidden(false)
        estc.ItemState:setOverlay(lbg)
        estf.ItemState:setHidden(false)
        estf.ItemState:setOverlay(lbg)
        esti.ItemState:setHidden(false)
        esti.ItemState:setOverlay(lbg)

        etai.ItemState:setHidden(false)
        etai.ItemState:setOverlay(lbg)
        etak.ItemState:setHidden(false)
        etak.ItemState:setOverlay(lbg)
        etek.ItemState:setHidden(false)
        etek.ItemState:setOverlay(lbg)
        etor.ItemState:setHidden(false)
        etor.ItemState:setOverlay(lbg)
        ewal.ItemState:setHidden(false)
        ewal.ItemState:setOverlay(lbg)
        ewar.ItemState:setHidden(false)
        ewar.ItemState:setOverlay(lbg)
        ewiz.ItemState:setHidden(false)
        ewiz.ItemState:setOverlay(lbg)
        ewol.ItemState:setHidden(false)
        ewol.ItemState:setOverlay(lbg)
    else
        elabel.ItemState:setHidden(true)

        ean.ItemState:setHidden(true)
        ear.ItemState:setHidden(true)
        ebab.ItemState:setHidden(true)
        ebad.ItemState:setHidden(true)
        ebea.ItemState:setHidden(true)
        ebio.ItemState:setHidden(true)
        ebir.ItemState:setHidden(true)
        eboe.ItemState:setHidden(true)

        ebub.ItemState:setHidden(true)
        eca.ItemState:setHidden(true)
        ech.ItemState:setHidden(true)
        edark.ItemState:setHidden(true)
        edead.ItemState:setHidden(true)
        edeep.ItemState:setHidden(true)
        edekb.ItemState:setHidden(true)
        edeks.ItemState:setHidden(true)

        edexi.ItemState:setHidden(true)
        edodo.ItemState:setHidden(true)
        edrag.ItemState:setHidden(true)
        eee.ItemState:setHidden(true)
        eey.ItemState:setHidden(true)
        efla.ItemState:setHidden(true)
        eflo.ItemState:setHidden(true)
        efly.ItemState:setHidden(true)

        efre.ItemState:setHidden(true)
        egar.ItemState:setHidden(true)
        egek.ItemState:setHidden(true)
        eger.ItemState:setHidden(true)
        egoh.ItemState:setHidden(true)
        egom.ItemState:setHidden(true)
        egua.ItemState:setHidden(true)
        ehip.ItemState:setHidden(true)

        ei.ItemState:setHidden(true)
        ej.ItemState:setHidden(true)
        ek.ItemState:setHidden(true)
        elee.ItemState:setHidden(true)
        elik.ItemState:setHidden(true)
        eliz.ItemState:setHidden(true)
        em.ItemState:setHidden(true)
        en.ItemState:setHidden(true)
        
        eo.ItemState:setHidden(true)
        epe.ItemState:setHidden(true)
        epo.ItemState:setHidden(true)
        erea.ItemState:setHidden(true)
        ered.ItemState:setHidden(true)
        esha.ItemState:setHidden(true)
        eshe.ItemState:setHidden(true)
        eskk.ItemState:setHidden(true)

        eskf.ItemState:setHidden(true)
        eskt.ItemState:setHidden(true)
        eskw.ItemState:setHidden(true)
        esna.ItemState:setHidden(true)
        espi.ItemState:setHidden(true)
        estc.ItemState:setHidden(true)
        estf.ItemState:setHidden(true)
        esti.ItemState:setHidden(true)

        etai.ItemState:setHidden(true)
        etak.ItemState:setHidden(true)
        etek.ItemState:setHidden(true)
        etor.ItemState:setHidden(true)
        ewal.ItemState:setHidden(true)
        ewar.ItemState:setHidden(true)
        ewiz.ItemState:setHidden(true)
        ewol.ItemState:setHidden(true)
    end

    local snpc = Tracker:FindObjectForCode("setting_souls_npc")
    local nlabel = Tracker:FindObjectForCode("npc_souls_label")

    local na = Tracker:FindObjectForCode("soul_astronomer")
    local nbaz = Tracker:FindObjectForCode("soul_bazaar_shopkeeper_swamp_archery_owner")
    local nbea = Tracker:FindObjectForCode("soul_bean_salesman")
    local nbeg = Tracker:FindObjectForCode("soul_beggar_banker")
    local nbig = Tracker:FindObjectForCode("soul_biggoron")
    local nbla = Tracker:FindObjectForCode("soul_blacksmiths")
    local nboa = Tracker:FindObjectForCode("soul_boat_cruise_man")

    local nbbs = Tracker:FindObjectForCode("soul_bombchu_bombs_shopkeeper")
    local nbbc = Tracker:FindObjectForCode("soul_bombchu_bowling_chest_game_lady")
    local ncas = Tracker:FindObjectForCode("soul_carpenters")
    local ncam = Tracker:FindObjectForCode("soul_carpet_man_swordsman")
    local nche = Tracker:FindObjectForCode("soul_chest_game_owner_fisherman")
    local nchi = Tracker:FindObjectForCode("soul_child_baby_goron")
    local ncom = Tracker:FindObjectForCode("soul_composer_bros")

    local ncuc = Tracker:FindObjectForCode("soul_cucco_lady_anju")
    local ndam = Tracker:FindObjectForCode("soul_dampe")
    local ndar = Tracker:FindObjectForCode("soul_darunia")
    local ndeb = Tracker:FindObjectForCode("soul_deku_butler")
    local ndek = Tracker:FindObjectForCode("soul_deku_king")
    local ndep = Tracker:FindObjectForCode("soul_deku_princess")
    local ndog = Tracker:FindObjectForCode("soul_dog_lady")

    local nf = Tracker:FindObjectForCode("soul_fishing_pond_trading_post_owner")
    local nger = Tracker:FindObjectForCode("soul_gerudo_pirate_guards")
    local ngoe = Tracker:FindObjectForCode("soul_goron_elder")
    local ngon = Tracker:FindObjectForCode("soul_gorons")
    local ngos = Tracker:FindObjectForCode("soul_goron_shopkeeper")
    local ngra = Tracker:FindObjectForCode("soul_graveyard_bombers_kids")
    local ngur = Tracker:FindObjectForCode("soul_guru_guru")

    local nhc = Tracker:FindObjectForCode("soul_hylian_clock_town_citizens")
    local nhg = Tracker:FindObjectForCode("soul_hylian_guard")
    local ni = Tracker:FindObjectForCode("soul_ingo_gorman_bros")
    local nkaf = Tracker:FindObjectForCode("soul_kafei")
    local nkea = Tracker:FindObjectForCode("soul_keaton")
    local nkin = Tracker:FindObjectForCode("soul_king_zora")
    local nkok = Tracker:FindObjectForCode("soul_kokiri")

    local nkos = Tracker:FindObjectForCode("soul_kokiri_shopkeeper")
    local nkou = Tracker:FindObjectForCode("soul_koume_and_kotake")
    local nla = Tracker:FindObjectForCode("soul_lakeside_marine_scientist")
    local nlo = Tracker:FindObjectForCode("soul_lovers_honey_and_darling")
    local nma = Tracker:FindObjectForCode("soul_madame_aroma")
    local nmr = Tracker:FindObjectForCode("soul_malon_romani_cremia")
    local nmd = Tracker:FindObjectForCode("soul_mayor_dotour")

    local nme = Tracker:FindObjectForCode("soul_medigoron_keg_trial_goron")
    local nmi = Tracker:FindObjectForCode("soul_mido")
    local nmo = Tracker:FindObjectForCode("soul_moon_children")
    local no = Tracker:FindObjectForCode("soul_old_hag_anjus_grandmother")
    local npla = Tracker:FindObjectForCode("soul_playground_scrubs")
    local npoe = Tracker:FindObjectForCode("soul_poe_collector_poe_hut_owner")
    local npot = Tracker:FindObjectForCode("soul_potion_shopkeeper")

    local npun = Tracker:FindObjectForCode("soul_punk_boy_grog")
    local nro = Tracker:FindObjectForCode("soul_rooftop_man_part_timer")
    local nru = Tracker:FindObjectForCode("soul_ruto_lulu")
    local nsar = Tracker:FindObjectForCode("soul_saria")
    local nshe = Tracker:FindObjectForCode("soul_sheik")
    local nsho = Tracker:FindObjectForCode("soul_shooting_gallery_town_archery_owner")
    local ntal = Tracker:FindObjectForCode("soul_talon_mr_barten")

    local ntin = Tracker:FindObjectForCode("soul_tingle")
    local ntoi = Tracker:FindObjectForCode("soul_toilet_hand")
    local ntot = Tracker:FindObjectForCode("soul_toto")
    local nzel = Tracker:FindObjectForCode("soul_zelda")
    local nzom = Tracker:FindObjectForCode("soul_zora_musicians")
    local nzor = Tracker:FindObjectForCode("soul_zoras")
    local nzos = Tracker:FindObjectForCode("soul_zora_shopkeeper")

    if snpc.Active then
        nlabel.ItemState:setHidden(false)

        na.ItemState:setHidden(false)
        na.ItemState:setOverlay(lbg)
        nbaz.ItemState:setHidden(false)
        nbaz.ItemState:setOverlay(lbg)
        nbea.ItemState:setHidden(false)
        nbea.ItemState:setOverlay(lbg)
        nbeg.ItemState:setHidden(false)
        nbeg.ItemState:setOverlay(lbg)
        nbig.ItemState:setHidden(false)
        nbig.ItemState:setOverlay(lbg)
        nbla.ItemState:setHidden(false)
        nbla.ItemState:setOverlay(lbg)
        nboa.ItemState:setHidden(false)
        nboa.ItemState:setOverlay(lbg)

        nbbs.ItemState:setHidden(false)
        nbbs.ItemState:setOverlay(lbg)
        nbbc.ItemState:setHidden(false)
        nbbc.ItemState:setOverlay(lbg)
        ncas.ItemState:setHidden(false)
        ncas.ItemState:setOverlay(lbg)
        ncam.ItemState:setHidden(false)
        ncam.ItemState:setOverlay(lbg)
        nche.ItemState:setHidden(false)
        nche.ItemState:setOverlay(lbg)
        nchi.ItemState:setHidden(false)
        nchi.ItemState:setOverlay(lbg)
        ncom.ItemState:setHidden(false)
        ncom.ItemState:setOverlay(lbg)

        ncuc.ItemState:setHidden(false)
        ncuc.ItemState:setOverlay(lbg)
        ndam.ItemState:setHidden(false)
        ndam.ItemState:setOverlay(lbg)
        ndar.ItemState:setHidden(false)
        ndar.ItemState:setOverlay(lbg)
        ndeb.ItemState:setHidden(false)
        ndeb.ItemState:setOverlay(lbg)
        ndek.ItemState:setHidden(false)
        ndek.ItemState:setOverlay(lbg)
        ndep.ItemState:setHidden(false)
        ndep.ItemState:setOverlay(lbg)
        ndog.ItemState:setHidden(false)
        ndog.ItemState:setOverlay(lbg)

        nf.ItemState:setHidden(false)
        nf.ItemState:setOverlay(lbg)
        nger.ItemState:setHidden(false)
        nger.ItemState:setOverlay(lbg)
        ngoe.ItemState:setHidden(false)
        ngoe.ItemState:setOverlay(lbg)
        ngon.ItemState:setHidden(false)
        ngon.ItemState:setOverlay(lbg)
        ngos.ItemState:setHidden(false)
        ngos.ItemState:setOverlay(lbg)
        ngra.ItemState:setHidden(false)
        ngra.ItemState:setOverlay(lbg)
        ngur.ItemState:setHidden(false)
        ngur.ItemState:setOverlay(lbg)

        nhc.ItemState:setHidden(false)
        nhc.ItemState:setOverlay(lbg)
        nhg.ItemState:setHidden(false)
        nhg.ItemState:setOverlay(lbg)
        ni.ItemState:setHidden(false)
        ni.ItemState:setOverlay(lbg)
        nkaf.ItemState:setHidden(false)
        nkaf.ItemState:setOverlay(lbg)
        nkea.ItemState:setHidden(false)
        nkea.ItemState:setOverlay(lbg)
        nkin.ItemState:setHidden(false)
        nkin.ItemState:setOverlay(lbg)
        nkok.ItemState:setHidden(false)
        nkok.ItemState:setOverlay(lbg)

        nkos.ItemState:setHidden(false)
        nkos.ItemState:setOverlay(lbg)
        nkou.ItemState:setHidden(false)
        nkou.ItemState:setOverlay(lbg)
        nla.ItemState:setHidden(false)
        nla.ItemState:setOverlay(lbg)
        nlo.ItemState:setHidden(false)
        nlo.ItemState:setOverlay(lbg)
        nma.ItemState:setHidden(false)
        nma.ItemState:setOverlay(lbg)
        nmr.ItemState:setHidden(false)
        nmr.ItemState:setOverlay(lbg)
        nmd.ItemState:setHidden(false)
        nmd.ItemState:setOverlay(lbg)

        nme.ItemState:setHidden(false)
        nme.ItemState:setOverlay(lbg)
        nmi.ItemState:setHidden(false)
        nmi.ItemState:setOverlay(lbg)
        nmo.ItemState:setHidden(false)
        nmo.ItemState:setOverlay(lbg)
        no.ItemState:setHidden(false)
        no.ItemState:setOverlay(lbg)
        npla.ItemState:setHidden(false)
        npla.ItemState:setOverlay(lbg)
        npoe.ItemState:setHidden(false)
        npoe.ItemState:setOverlay(lbg)
        npot.ItemState:setHidden(false)
        npot.ItemState:setOverlay(lbg)

        npun.ItemState:setHidden(false)
        npun.ItemState:setOverlay(lbg)
        nro.ItemState:setHidden(false)
        nro.ItemState:setOverlay(lbg)
        nru.ItemState:setHidden(false)
        nru.ItemState:setOverlay(lbg)
        nsar.ItemState:setHidden(false)
        nsar.ItemState:setOverlay(lbg)
        nshe.ItemState:setHidden(false)
        nshe.ItemState:setOverlay(lbg)
        nsho.ItemState:setHidden(false)
        nsho.ItemState:setOverlay(lbg)
        ntal.ItemState:setHidden(false)
        ntal.ItemState:setOverlay(lbg)

        ntin.ItemState:setHidden(false)
        ntin.ItemState:setOverlay(lbg)
        ntoi.ItemState:setHidden(false)
        ntoi.ItemState:setOverlay(lbg)
        ntot.ItemState:setHidden(false)
        ntot.ItemState:setOverlay(lbg)
        nzel.ItemState:setHidden(false)
        nzel.ItemState:setOverlay(lbg)
        nzom.ItemState:setHidden(false)
        nzom.ItemState:setOverlay(lbg)
        nzor.ItemState:setHidden(false)
        nzor.ItemState:setOverlay(lbg)
        nzos.ItemState:setHidden(false)
        nzos.ItemState:setOverlay(lbg)
    else
        nlabel.ItemState:setHidden(true)

        na.ItemState:setHidden(true)
        nbaz.ItemState:setHidden(true)
        nbea.ItemState:setHidden(true)
        nbeg.ItemState:setHidden(true)
        nbig.ItemState:setHidden(true)
        nbla.ItemState:setHidden(true)
        nboa.ItemState:setHidden(true)

        nbbs.ItemState:setHidden(true)
        nbbc.ItemState:setHidden(true)
        ncas.ItemState:setHidden(true)
        ncam.ItemState:setHidden(true)
        nche.ItemState:setHidden(true)
        nchi.ItemState:setHidden(true)
        ncom.ItemState:setHidden(true)

        ncuc.ItemState:setHidden(true)
        ndam.ItemState:setHidden(true)
        ndar.ItemState:setHidden(true)
        ndeb.ItemState:setHidden(true)
        ndek.ItemState:setHidden(true)
        ndep.ItemState:setHidden(true)
        ndog.ItemState:setHidden(true)

        nf.ItemState:setHidden(true)
        nger.ItemState:setHidden(true)
        ngoe.ItemState:setHidden(true)
        ngon.ItemState:setHidden(true)
        ngos.ItemState:setHidden(true)
        ngra.ItemState:setHidden(true)
        ngur.ItemState:setHidden(true)

        nhc.ItemState:setHidden(true)
        nhg.ItemState:setHidden(true)
        ni.ItemState:setHidden(true)
        nkaf.ItemState:setHidden(true)
        nkea.ItemState:setHidden(true)
        nkin.ItemState:setHidden(true)
        nkok.ItemState:setHidden(true)

        nkos.ItemState:setHidden(true)
        nkou.ItemState:setHidden(true)
        nla.ItemState:setHidden(true)
        nlo.ItemState:setHidden(true)
        nma.ItemState:setHidden(true)
        nmr.ItemState:setHidden(true)
        nmd.ItemState:setHidden(true)

        nme.ItemState:setHidden(true)
        nmi.ItemState:setHidden(true)
        nmo.ItemState:setHidden(true)
        no.ItemState:setHidden(true)
        npla.ItemState:setHidden(true)
        npoe.ItemState:setHidden(true)
        npot.ItemState:setHidden(true)

        npun.ItemState:setHidden(true)
        nro.ItemState:setHidden(true)
        nru.ItemState:setHidden(true)
        nsar.ItemState:setHidden(true)
        nshe.ItemState:setHidden(true)
        nsho.ItemState:setHidden(true)
        ntal.ItemState:setHidden(true)

        ntin.ItemState:setHidden(true)
        ntoi.ItemState:setHidden(true)
        ntot.ItemState:setHidden(true)
        nzel.ItemState:setHidden(true)
        nzom.ItemState:setHidden(true)
        nzor.ItemState:setHidden(true)
        nzos.ItemState:setHidden(true)
    end

    local sanimal = Tracker:FindObjectForCode("setting_souls_animal")
    local alabel = Tracker:FindObjectForCode("animal_souls_label")

    local ab = Tracker:FindObjectForCode("soul_butterflies")
    local aco = Tracker:FindObjectForCode("soul_cows")
    local acu = Tracker:FindObjectForCode("soul_cuccos")
    local ad = Tracker:FindObjectForCode("soul_dogs")

    if sanimal.Active then
        alabel.ItemState:setHidden(false)

        ab.ItemState:setHidden(false)
        ab.ItemState:setOverlay(lbg)
        aco.ItemState:setHidden(false)
        aco.ItemState:setOverlay(lbg)
        acu.ItemState:setHidden(false)
        acu.ItemState:setOverlay(lbg)
        ad.ItemState:setHidden(false)
        ad.ItemState:setOverlay(lbg)
    else
        alabel.ItemState:setHidden(true)

        ab.ItemState:setHidden(true)
        aco.ItemState:setHidden(true)
        acu.ItemState:setHidden(true)
        ad.ItemState:setHidden(true)
    end

    local smisc = Tracker:FindObjectForCode("setting_souls_misc")
    local mlabel = Tracker:FindObjectForCode("misc_souls_label")

    local mbs = Tracker:FindObjectForCode("soul_business_scrubs")
    local mgs = Tracker:FindObjectForCode("soul_gold_skulltulas")

    if smisc.Active then
        mlabel.ItemState:setHidden(false)

        mbs.ItemState:setHidden(false)
        mbs.ItemState:setOverlay(lbg)
        mgs.ItemState:setHidden(false)
        mgs.ItemState:setOverlay(lbg)
    else
        mlabel.ItemState:setHidden(true)

        mbs.ItemState:setHidden(true)
        mgs.ItemState:setHidden(true)
    end
end