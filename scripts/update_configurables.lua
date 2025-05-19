function update_configurables()
    update_clocks()
    update_owl_statues()
    update_eggs_and_letter()
    update_skulltula_tokens()
    update_tingle_maps()
    update_wallet()
    update_triforce_pieces()
    update_coins()
    update_biggoron_sword()
    update_songs()
    update_oot_mm_sprites()
    update_c_buttons()
    update_bombchu_bags()

    if string.find(Tracker.ActiveVariantUID, "Souls") then
        update_souls()
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
        oct.ItemState:useAlt(false)
        omr.ItemState:useAlt(false)
        oss.ItemState:useAlt(false)
        owf.ItemState:useAlt(false)
        omv.ItemState:useAlt(false)
        osh.ItemState:useAlt(false)
        ogbc.ItemState:useAlt(false)
        ozc.ItemState:useAlt(false)
        oic.ItemState:useAlt(false)
        ost.ItemState:useAlt(false)
    else
        oct.ItemState:useAlt(true)
        omr.ItemState:useAlt(true)
        oss.ItemState:useAlt(true)
        owf.ItemState:useAlt(true)
        omv.ItemState:useAlt(true)
        osh.ItemState:useAlt(true)
        ogbc.ItemState:useAlt(true)
        ozc.ItemState:useAlt(true)
        oic.ItemState:useAlt(true)
        ost.ItemState:useAlt(true)
    end
end

function update_eggs_and_letter()
    local se = Tracker:FindObjectForCode("setting_eggs")
    local sscz = Tracker:FindObjectForCode("setting_skip_child_zelda")
    local sokg = Tracker:FindObjectForCode("setting_open_kakariko_gate")

    local e = Tracker:FindObjectForCode("eggs")
    local c = Tracker:FindObjectForCode("chicken")
    local l = Tracker:FindObjectForCode("zeldas_letter")

    if se.Active then
        e.ItemState:setMaxCount(2)
    else
        e.ItemState:setMaxCount(0)
    end

    if sscz.Active then
        c.ItemState:setHidden(true)
    else
        c.ItemState:setHidden(false)
    end

    if sokg.Active then
        l.ItemState:setHidden(true)
    else
        l.ItemState:setHidden(false)
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

function update_wallet()
    local smw = Tracker:FindObjectForCode("setting_max_wallet")
    local smws = smw.CurrentStage
    local w = Tracker:FindObjectForCode("wallet")
    local ws = w.ItemState:getStage()

    if ws == 5 and smws > 1 then
        w.ItemState:setBadgeText("9999", "lime")
    else
        if ws == 5 then
            ws = 4
            w.ItemState:setStage(4)
        end

        if ws == 4 and smws > 0 then
            local color = "white"
            if smws == 1 then
                color = "lime"
            end
            w.ItemState:setBadgeText("999", color)
        else
            if ws == 4 then
                ws = 3
                w.ItemState:setStage(3)
            end

            if ws == 3 then
                local color = "white"
                if smws == 0 then
                    color = "lime"
                end
                w.ItemState:setBadgeText("500", color)
            else
                if ws == 2 then
                    w.ItemState:setBadgeText("200", "white")
                else
                    if ws == 1 then
                        w.ItemState:setBadgeText("99", "white")
                    else
                        w.ItemState:setBadgeText(0, "white")
                    end
                end
            end
        end
    end
end

function update_triforce_pieces()
    local tp = Tracker:FindObjectForCode("triforce_pieces")
    local tpn = Tracker:FindObjectForCode("setting_triforce_pieces_needed")
    local tpq = Tracker:FindObjectForCode("setting_triforce_quest")
    local tpl = Tracker:FindObjectForCode("triforce_hunt_label")
    
    if tpq.Active then
        tp.ItemState:setMaxCount(3)
        tpl.CurrentStage = 2
        tpn.AcquiredCount = 0
    else
        if tpn.AcquiredCount > 0 then
            tpl.CurrentStage = 1
        else
            tpl.CurrentStage = 0
        end
        tp.ItemState:setMaxCount(tpn.AcquiredCount)
    end
end

function update_coins()
    local rc = Tracker:FindObjectForCode("red_coins")
    local rcc = Tracker:FindObjectForCode("setting_red_coin_count")
    local yc = Tracker:FindObjectForCode("yellow_coins")
    local ycc = Tracker:FindObjectForCode("setting_yellow_coin_count")
    local gc = Tracker:FindObjectForCode("green_coins")
    local gcc = Tracker:FindObjectForCode("setting_green_coin_count")
    local bc = Tracker:FindObjectForCode("blue_coins")
    local bcc = Tracker:FindObjectForCode("setting_blue_coin_count")

    rc.ItemState:setMaxCount(rcc.AcquiredCount)
    yc.ItemState:setMaxCount(ycc.AcquiredCount)
    gc.ItemState:setMaxCount(gcc.AcquiredCount)
    bc.ItemState:setMaxCount(bcc.AcquiredCount)
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

function update_songs()
    local flo = Tracker:FindObjectForCode("setting_full_lullaby_only")
    local gl = Tracker:FindObjectForCode("goron_lullaby")

    if flo.CurrentStage == 1 then
        if gl.ItemState:getStage() == 1 then
            gl.ItemState:setStage(2)
        end
    end

    local ss = Tracker:FindObjectForCode("setting_scarecrow_songs")
    local sso = Tracker:FindObjectForCode("scarecrow_song_oot")
    local ssm = Tracker:FindObjectForCode("scarecrow_song_mm")

    if ss.Active then
        sso.ItemState:setHidden(false)
        ssm.ItemState:setHidden(false)
    else
        sso.ItemState:setHidden(true)
        ssm.ItemState:setHidden(true)
    end
end

function update_oot_mm_sprites()
    local uoms = Tracker:FindObjectForCode("setting_use_oot_mm_sprites")
    local hhs = Tracker:FindObjectForCode("hylian_heros_shield")
    local ms = Tracker:FindObjectForCode("mirror_shield")
    local ks = Tracker:FindObjectForCode("kokiri_sword")
    local fhb = Tracker:FindObjectForCode("fairy_heros_bow")
    local hs = Tracker:FindObjectForCode("hookshot")
    
    if uoms.CurrentStage == 1 then
        hhs.ItemState:useAlt(true)
        ms.ItemState:useAlt(true)
        ks.ItemState:useAlt(true)
        fhb.ItemState:useAlt(true)
        hs.ItemState:useAlt(true)
    else
        hhs.ItemState:useAlt(false)
        ms.ItemState:useAlt(false)
        ks.ItemState:useAlt(false)
        fhb.ItemState:useAlt(false)
        hs.ItemState:useAlt(false)
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

function update_souls()
    local lbg = Tracker:FindObjectForCode("setting_souls_label_by_game").Active

    local sboss = Tracker:FindObjectForCode("setting_souls_boss")
    local blabel = Tracker:FindObjectForCode("label_boss_souls")
    local bfiller = Tracker:FindObjectForCode("soul_filler_boss")

    local bqg = Tracker:FindObjectForCode("soul_queen_gohma")
    local bkd = Tracker:FindObjectForCode("soul_king_dodongo")
    local bb = Tracker:FindObjectForCode("soul_barinade")
    local bpg = Tracker:FindObjectForCode("soul_phantom_ganon")
    local bv = Tracker:FindObjectForCode("soul_volvagia")
    local bm = Tracker:FindObjectForCode("soul_morpha")
    local btr = Tracker:FindObjectForCode("soul_twinrova")
    local bbb = Tracker:FindObjectForCode("soul_bongo_bongo")

    local boa = Tracker:FindObjectForCode("soul_odolwa")
    local bgt = Tracker:FindObjectForCode("soul_goht")
    local bgg = Tracker:FindObjectForCode("soul_gyorg")
    local btm = Tracker:FindObjectForCode("soul_twinmold")
    local bis = Tracker:FindObjectForCode("soul_igos")

    if sboss.Active then
        blabel.ItemState:setHidden(false)
        bfiller.ItemState:setHidden(false)

        bqg.ItemState:setHidden(false)
        bqg.ItemState:setOverlayed(lbg)
        bkd.ItemState:setHidden(false)
        bkd.ItemState:setOverlayed(lbg)
        bb.ItemState:setHidden(false)
        bb.ItemState:setOverlayed(lbg)
        bpg.ItemState:setHidden(false)
        bpg.ItemState:setOverlayed(lbg)
        bv.ItemState:setHidden(false)
        bv.ItemState:setOverlayed(lbg)
        bm.ItemState:setHidden(false)
        bm.ItemState:setOverlayed(lbg)
        btr.ItemState:setHidden(false)
        btr.ItemState:setOverlayed(lbg)
        bbb.ItemState:setHidden(false)
        bbb.ItemState:setOverlayed(lbg)

        boa.ItemState:setHidden(false)
        boa.ItemState:setOverlayed(lbg)
        bgt.ItemState:setHidden(false)
        bgt.ItemState:setOverlayed(lbg)
        bgg.ItemState:setHidden(false)
        bgg.ItemState:setOverlayed(lbg)
        btm.ItemState:setHidden(false)
        btm.ItemState:setOverlayed(lbg)
        bis.ItemState:setHidden(false)
        bis.ItemState:setOverlayed(lbg)
    else
        blabel.ItemState:setHidden(true)
        bfiller.ItemState:setHidden(true)

        bqg.ItemState:setHidden(true)
        bkd.ItemState:setHidden(true)
        bb.ItemState:setHidden(true)
        bpg.ItemState:setHidden(true)
        bv.ItemState:setHidden(true)
        bm.ItemState:setHidden(true)
        btr.ItemState:setHidden(true)
        bbb.ItemState:setHidden(true)

        boa.ItemState:setHidden(true)
        bgt.ItemState:setHidden(true)
        bgg.ItemState:setHidden(true)
        btm.ItemState:setHidden(true)
        bis.ItemState:setHidden(true)
    end
    
    local senemy = Tracker:FindObjectForCode("setting_souls_enemy")
    local elabel = Tracker:FindObjectForCode("label_enemy_souls")

    local eanubis = Tracker:FindObjectForCode("soul_anubis")
    local earmos = Tracker:FindObjectForCode("soul_armos")
    local ebdongos = Tracker:FindObjectForCode("soul_baby_dodongos")
    local ebadbats = Tracker:FindObjectForCode("soul_bad_bats")
    local ebeamos = Tracker:FindObjectForCode("soul_beamos")
    local ebiobabas = Tracker:FindObjectForCode("soul_bio_babas")
    local ebairis = Tracker:FindObjectForCode("soul_biris_baris")
    
    local eboes = Tracker:FindObjectForCode("soul_boes")
    local ebubbles = Tracker:FindObjectForCode("soul_bubbles")
    local ekeeta = Tracker:FindObjectForCode("soul_captain_keeta")
    local echuchus = Tracker:FindObjectForCode("soul_chuchus")
    local edlink = Tracker:FindObjectForCode("soul_dark_link")
    local edhands = Tracker:FindObjectForCode("soul_dead_hands")
    local edpythons = Tracker:FindObjectForCode("soul_deep_pythons")
    
    local edbabas = Tracker:FindObjectForCode("soul_deku_babas")
    local edscrubs = Tracker:FindObjectForCode("soul_deku_scrubs")
    local edexihands = Tracker:FindObjectForCode("soul_dexihands")
    local edongos = Tracker:FindObjectForCode("soul_dodongos")
    local edflies = Tracker:FindObjectForCode("soul_dragonflies")
    local eeenoes = Tracker:FindObjectForCode("soul_eenoes")
    local eeyegores = Tracker:FindObjectForCode("soul_eyegores")
    
    local efthieves = Tracker:FindObjectForCode("soul_fighting_thieves")
    local efdancers = Tracker:FindObjectForCode("soul_flare_dancers")
    local efmasters = Tracker:FindObjectForCode("soul_floormasters")
    local efpots = Tracker:FindObjectForCode("soul_flying_pots")
    local efzards = Tracker:FindObjectForCode("soul_freezards")
    local egaro = Tracker:FindObjectForCode("soul_garo")
    local egekkos = Tracker:FindObjectForCode("soul_gekkos")
    
    local eglarvaes = Tracker:FindObjectForCode("soul_gohma_larvaes")
    local egomess = Tracker:FindObjectForCode("soul_gomess")
    local eguays = Tracker:FindObjectForCode("soul_guays")
    local ehloops = Tracker:FindObjectForCode("soul_hiploops")
    local eknuckles = Tracker:FindObjectForCode("soul_iron_knuckles")
    local ejpsites = Tracker:FindObjectForCode("soul_jabu_jabus_parasites")
    local ekeese = Tracker:FindObjectForCode("soul_keese")
    
    local eleevers = Tracker:FindObjectForCode("soul_leevers")
    local ellikes = Tracker:FindObjectForCode("soul_like_likes")
    local elizdino = Tracker:FindObjectForCode("soul_lizalfos_dinolfos")
    local emoblins = Tracker:FindObjectForCode("soul_moblins")
    local enejirons = Tracker:FindObjectForCode("soul_nejirons")
    local eoctoroks = Tracker:FindObjectForCode("soul_octoroks")
    local epeahats = Tracker:FindObjectForCode("soul_peahats")
    
    local erbombchu = Tracker:FindObjectForCode("soul_real_bombchu")
    local eredgib = Tracker:FindObjectForCode("soul_redeads_gibdos")
    local eshaboms = Tracker:FindObjectForCode("soul_shaboms")
    local esblades = Tracker:FindObjectForCode("soul_shell_blades")
    local eskids = Tracker:FindObjectForCode("soul_skull_kids_oot")
    local esfish = Tracker:FindObjectForCode("soul_skullfish_mm")
    local estulas = Tracker:FindObjectForCode("soul_skulltulas")
    
    local eswtulas = Tracker:FindObjectForCode("soul_skullwalltulas")
    local esnappers = Tracker:FindObjectForCode("soul_snappers")
    local espikes = Tracker:FindObjectForCode("soul_spikes")
    local eschildren = Tracker:FindObjectForCode("soul_stalchildren")
    local estalfos = Tracker:FindObjectForCode("soul_stalfos_oot")
    local estingers = Tracker:FindObjectForCode("soul_stingers")
    local etailp = Tracker:FindObjectForCode("soul_tailpasarans")
    
    local etakkuri = Tracker:FindObjectForCode("soul_takkuri")
    local etektites = Tracker:FindObjectForCode("soul_tektites")
    local etslugs = Tracker:FindObjectForCode("soul_torch_slugs")
    local ewmasters = Tracker:FindObjectForCode("soul_wallmasters")
    local ewarts = Tracker:FindObjectForCode("soul_warts")
    local ewrobes = Tracker:FindObjectForCode("soul_wizzrobes")
    local ewolfos = Tracker:FindObjectForCode("soul_wolfos")

    if senemy.Active then
        elabel.ItemState:setHidden(false)

        eanubis.ItemState:setHidden(false)
        eanubis.ItemState:setOverlayed(lbg)
        earmos.ItemState:setHidden(false)
        earmos.ItemState:setOverlayed(lbg)
        ebdongos.ItemState:setHidden(false)
        ebdongos.ItemState:setOverlayed(lbg)
        ebadbats.ItemState:setHidden(false)
        ebadbats.ItemState:setOverlayed(lbg)
        ebeamos.ItemState:setHidden(false)
        ebeamos.ItemState:setOverlayed(lbg)
        ebiobabas.ItemState:setHidden(false)
        ebiobabas.ItemState:setOverlayed(lbg)
        ebairis.ItemState:setHidden(false)
        ebairis.ItemState:setOverlayed(lbg)
        
        eboes.ItemState:setHidden(false)
        eboes.ItemState:setOverlayed(lbg)
        ebubbles.ItemState:setHidden(false)
        ebubbles.ItemState:setOverlayed(lbg)
        ekeeta.ItemState:setHidden(false)
        ekeeta.ItemState:setOverlayed(lbg)
        echuchus.ItemState:setHidden(false)
        echuchus.ItemState:setOverlayed(lbg)
        edlink.ItemState:setHidden(false)
        edlink.ItemState:setOverlayed(lbg)
        edhands.ItemState:setHidden(false)
        edhands.ItemState:setOverlayed(lbg)
        edpythons.ItemState:setHidden(false)
        edpythons.ItemState:setOverlayed(lbg)
        
        edbabas.ItemState:setHidden(false)
        edbabas.ItemState:setOverlayed(lbg)
        edscrubs.ItemState:setHidden(false)
        edscrubs.ItemState:setOverlayed(lbg)
        edexihands.ItemState:setHidden(false)
        edexihands.ItemState:setOverlayed(lbg)
        edongos.ItemState:setHidden(false)
        edongos.ItemState:setOverlayed(lbg)
        edflies.ItemState:setHidden(false)
        edflies.ItemState:setOverlayed(lbg)
        eeenoes.ItemState:setHidden(false)
        eeenoes.ItemState:setOverlayed(lbg)
        eeyegores.ItemState:setHidden(false)
        eeyegores.ItemState:setOverlayed(lbg)
        
        efthieves.ItemState:setHidden(false)
        efthieves.ItemState:setOverlayed(lbg)
        efdancers.ItemState:setHidden(false)
        efdancers.ItemState:setOverlayed(lbg)
        efmasters.ItemState:setHidden(false)
        efmasters.ItemState:setOverlayed(lbg)
        efpots.ItemState:setHidden(false)
        efpots.ItemState:setOverlayed(lbg)
        efzards.ItemState:setHidden(false)
        efzards.ItemState:setOverlayed(lbg)
        egaro.ItemState:setHidden(false)
        egaro.ItemState:setOverlayed(lbg)
        egekkos.ItemState:setHidden(false)
        egekkos.ItemState:setOverlayed(lbg)
        
        eglarvaes.ItemState:setHidden(false)
        eglarvaes.ItemState:setOverlayed(lbg)
        egomess.ItemState:setHidden(false)
        egomess.ItemState:setOverlayed(lbg)
        eguays.ItemState:setHidden(false)
        eguays.ItemState:setOverlayed(lbg)
        ehloops.ItemState:setHidden(false)
        ehloops.ItemState:setOverlayed(lbg)
        eknuckles.ItemState:setHidden(false)
        eknuckles.ItemState:setOverlayed(lbg)
        ejpsites.ItemState:setHidden(false)
        ejpsites.ItemState:setOverlayed(lbg)
        ekeese.ItemState:setHidden(false)
        ekeese.ItemState:setOverlayed(lbg)
        
        eleevers.ItemState:setHidden(false)
        eleevers.ItemState:setOverlayed(lbg)
        ellikes.ItemState:setHidden(false)
        ellikes.ItemState:setOverlayed(lbg)
        elizdino.ItemState:setHidden(false)
        elizdino.ItemState:setOverlayed(lbg)
        emoblins.ItemState:setHidden(false)
        emoblins.ItemState:setOverlayed(lbg)
        enejirons.ItemState:setHidden(false)
        enejirons.ItemState:setOverlayed(lbg)
        eoctoroks.ItemState:setHidden(false)
        eoctoroks.ItemState:setOverlayed(lbg)
        epeahats.ItemState:setHidden(false)
        epeahats.ItemState:setOverlayed(lbg)
        
        erbombchu.ItemState:setHidden(false)
        erbombchu.ItemState:setOverlayed(lbg)
        eredgib.ItemState:setHidden(false)
        eredgib.ItemState:setOverlayed(lbg)
        eshaboms.ItemState:setHidden(false)
        eshaboms.ItemState:setOverlayed(lbg)
        esblades.ItemState:setHidden(false)
        esblades.ItemState:setOverlayed(lbg)
        eskids.ItemState:setHidden(false)
        eskids.ItemState:setOverlayed(lbg)
        esfish.ItemState:setHidden(false)
        esfish.ItemState:setOverlayed(lbg)
        estulas.ItemState:setHidden(false)
        estulas.ItemState:setOverlayed(lbg)
        
        eswtulas.ItemState:setHidden(false)
        eswtulas.ItemState:setOverlayed(lbg)
        esnappers.ItemState:setHidden(false)
        esnappers.ItemState:setOverlayed(lbg)
        espikes.ItemState:setHidden(false)
        espikes.ItemState:setOverlayed(lbg)
        eschildren.ItemState:setHidden(false)
        eschildren.ItemState:setOverlayed(lbg)
        estalfos.ItemState:setHidden(false)
        estalfos.ItemState:setOverlayed(lbg)
        estingers.ItemState:setHidden(false)
        estingers.ItemState:setOverlayed(lbg)
        etailp.ItemState:setHidden(false)
        etailp.ItemState:setOverlayed(lbg)
        
        etakkuri.ItemState:setHidden(false)
        etakkuri.ItemState:setOverlayed(lbg)
        etektites.ItemState:setHidden(false)
        etektites.ItemState:setOverlayed(lbg)
        etslugs.ItemState:setHidden(false)
        etslugs.ItemState:setOverlayed(lbg)
        ewmasters.ItemState:setHidden(false)
        ewmasters.ItemState:setOverlayed(lbg)
        ewarts.ItemState:setHidden(false)
        ewarts.ItemState:setOverlayed(lbg)
        ewrobes.ItemState:setHidden(false)
        ewrobes.ItemState:setOverlayed(lbg)
        ewolfos.ItemState:setHidden(false)
        ewolfos.ItemState:setOverlayed(lbg)
    else
        elabel.ItemState:setHidden(true)

        eanubis.ItemState:setHidden(true)
        earmos.ItemState:setHidden(true)
        ebdongos.ItemState:setHidden(true)
        ebadbats.ItemState:setHidden(true)
        ebeamos.ItemState:setHidden(true)
        ebiobabas.ItemState:setHidden(true)
        ebairis.ItemState:setHidden(true)
        
        eboes.ItemState:setHidden(true)
        ebubbles.ItemState:setHidden(true)
        ekeeta.ItemState:setHidden(true)
        echuchus.ItemState:setHidden(true)
        edlink.ItemState:setHidden(true)
        edhands.ItemState:setHidden(true)
        edpythons.ItemState:setHidden(true)
        
        edbabas.ItemState:setHidden(true)
        edscrubs.ItemState:setHidden(true)
        edexihands.ItemState:setHidden(true)
        edongos.ItemState:setHidden(true)
        edflies.ItemState:setHidden(true)
        eeenoes.ItemState:setHidden(true)
        eeyegores.ItemState:setHidden(true)
        
        efthieves.ItemState:setHidden(true)
        efdancers.ItemState:setHidden(true)
        efmasters.ItemState:setHidden(true)
        efpots.ItemState:setHidden(true)
        efzards.ItemState:setHidden(true)
        egaro.ItemState:setHidden(true)
        egekkos.ItemState:setHidden(true)
        
        eglarvaes.ItemState:setHidden(true)
        egomess.ItemState:setHidden(true)
        eguays.ItemState:setHidden(true)
        ehloops.ItemState:setHidden(true)
        eknuckles.ItemState:setHidden(true)
        ejpsites.ItemState:setHidden(true)
        ekeese.ItemState:setHidden(true)
        
        eleevers.ItemState:setHidden(true)
        ellikes.ItemState:setHidden(true)
        elizdino.ItemState:setHidden(true)
        emoblins.ItemState:setHidden(true)
        enejirons.ItemState:setHidden(true)
        eoctoroks.ItemState:setHidden(true)
        epeahats.ItemState:setHidden(true)
        
        erbombchu.ItemState:setHidden(true)
        eredgib.ItemState:setHidden(true)
        eshaboms.ItemState:setHidden(true)
        esblades.ItemState:setHidden(true)
        eskids.ItemState:setHidden(true)
        esfish.ItemState:setHidden(true)
        estulas.ItemState:setHidden(true)
        
        eswtulas.ItemState:setHidden(true)
        esnappers.ItemState:setHidden(true)
        espikes.ItemState:setHidden(true)
        eschildren.ItemState:setHidden(true)
        estalfos.ItemState:setHidden(true)
        estingers.ItemState:setHidden(true)
        etailp.ItemState:setHidden(true)
        
        etakkuri.ItemState:setHidden(true)
        etektites.ItemState:setHidden(true)
        etslugs.ItemState:setHidden(true)
        ewmasters.ItemState:setHidden(true)
        ewarts.ItemState:setHidden(true)
        ewrobes.ItemState:setHidden(true)
        ewolfos.ItemState:setHidden(true)
    end

    local snpc = Tracker:FindObjectForCode("setting_souls_npc")
    local nlabel = Tracker:FindObjectForCode("label_npc_souls")
    
    local nbgoron = Tracker:FindObjectForCode("soul_biggoron")
    local nbsmiths = Tracker:FindObjectForCode("soul_blacksmiths")
    local nbclady = Tracker:FindObjectForCode("soul_bombchu_bowling_chest_game_lady")
    local ncarps = Tracker:FindObjectForCode("soul_carpenters")
    local ncitz = Tracker:FindObjectForCode("soul_citizens")
    local ncbros = Tracker:FindObjectForCode("soul_composer_bros")
    local nanju = Tracker:FindObjectForCode("soul_cucco_lady_anju")
    
    local ndampe = Tracker:FindObjectForCode("soul_dampe")
    local ndarunia = Tracker:FindObjectForCode("soul_darunia")
    local nfptpo = Tracker:FindObjectForCode("soul_fishing_pond_trading_post_owner")
    local ngorons = Tracker:FindObjectForCode("soul_gorons")
    local nguruguru = Tracker:FindObjectForCode("soul_guru_guru")
    local nhydg = Tracker:FindObjectForCode("soul_honey_darling")
    local nhguard = Tracker:FindObjectForCode("soul_hylian_guard")
    
    local nigbros = Tracker:FindObjectForCode("soul_ingo_gorman_bros")
    local nkafei = Tracker:FindObjectForCode("soul_kafei")
    local nkeaton = Tracker:FindObjectForCode("soul_keaton")
    local nkzora = Tracker:FindObjectForCode("soul_king_zora")
    local nkokiri = Tracker:FindObjectForCode("soul_kokiri")
    local nkshop = Tracker:FindObjectForCode("soul_kokiri_shopkeeper")
    local nknk = Tracker:FindObjectForCode("soul_koume_and_kotake")
    
    local naroma = Tracker:FindObjectForCode("soul_madame_aroma_mm")
    local nmrc = Tracker:FindObjectForCode("soul_malon_romani_cremia")
    local nmayor = Tracker:FindObjectForCode("soul_mayor_dotour")
    local nmedi = Tracker:FindObjectForCode("soul_medigoron_keg_trial_goron")
    local nmido = Tracker:FindObjectForCode("soul_mido")
    local nmoon = Tracker:FindObjectForCode("soul_moon_children")
    local npscrubs = Tracker:FindObjectForCode("soul_playground_scrubs")
    
    local npgho = Tracker:FindObjectForCode("soul_poe_collector_ghost_hut_owner")
    local npshop = Tracker:FindObjectForCode("soul_potion_shopkeeper")
    local nroof = Tracker:FindObjectForCode("soul_rooftop_man_part_timer")
    local nrulu = Tracker:FindObjectForCode("soul_ruto_lulu")
    local nsaria = Tracker:FindObjectForCode("soul_saria")
    local nsheik = Tracker:FindObjectForCode("soul_sheik")
    local ntalon = Tracker:FindObjectForCode("soul_talon_mr_barten")
    
    local nastro = Tracker:FindObjectForCode("soul_astronomer")
    local nbazaar = Tracker:FindObjectForCode("soul_bazaar_swamp_archery_owner")
    local nbean = Tracker:FindObjectForCode("soul_bean_salesman")
    local nbegbank = Tracker:FindObjectForCode("soul_beggar_banker")
    local nbshop = Tracker:FindObjectForCode("soul_bombchu_bomb_shop_owner")
    local ncarpet = Tracker:FindObjectForCode("soul_carpet_man_swordsman")
    local ncgof = Tracker:FindObjectForCode("soul_chest_game_owner_fisherman")
    
    local ndbutler = Tracker:FindObjectForCode("soul_deku_butler")
    local ndking = Tracker:FindObjectForCode("soul_deku_king")
    local ndpcess = Tracker:FindObjectForCode("soul_deku_princess")
    local ndlady = Tracker:FindObjectForCode("soul_dog_lady")
    local ngcb = Tracker:FindObjectForCode("soul_goron_child_baby")
    local ngelder = Tracker:FindObjectForCode("soul_goron_elder")
    local ngshop = Tracker:FindObjectForCode("soul_goron_shopkeeper")
    
    local nbombers = Tracker:FindObjectForCode("soul_graveyard_kid_bombers")
    local nhag = Tracker:FindObjectForCode("soul_old_hag_anjus_grandmother")
    local nptac = Tracker:FindObjectForCode("soul_patrolling_thieves_and_their_chief")
    local npkg = Tracker:FindObjectForCode("soul_punk_kid_grog")
    local nsctst = Tracker:FindObjectForCode("soul_scientist")
    local nsgtao = Tracker:FindObjectForCode("soul_shooting_gallery_town_archery_owner")
    local nzmus = Tracker:FindObjectForCode("soul_zora_musicians")
    
    local nzshop = Tracker:FindObjectForCode("soul_zora_shopkeeper")
    local ntingle = Tracker:FindObjectForCode("soul_tingle")
    local nthand = Tracker:FindObjectForCode("soul_toilet_hand")
    local ntoto = Tracker:FindObjectForCode("soul_toto_mm")
    local ntco = Tracker:FindObjectForCode("soul_tourist_center_owner")
    local nzelda = Tracker:FindObjectForCode("soul_zelda")
    local nzoras = Tracker:FindObjectForCode("soul_zoras")

    if snpc.Active then
        nlabel.ItemState:setHidden(false)

        nbgoron.ItemState:setHidden(false)
        nbgoron.ItemState:setOverlayed(lbg)
        nbsmiths.ItemState:setHidden(false)
        nbsmiths.ItemState:setOverlayed(lbg)
        nbclady.ItemState:setHidden(false)
        nbclady.ItemState:setOverlayed(lbg)
        ncarps.ItemState:setHidden(false)
        ncarps.ItemState:setOverlayed(lbg)
        ncitz.ItemState:setHidden(false)
        ncitz.ItemState:setOverlayed(lbg)
        ncbros.ItemState:setHidden(false)
        ncbros.ItemState:setOverlayed(lbg)
        nanju.ItemState:setHidden(false)
        nanju.ItemState:setOverlayed(lbg)

        ndampe.ItemState:setHidden(false)
        ndampe.ItemState:setOverlayed(lbg)
        ndarunia.ItemState:setHidden(false)
        ndarunia.ItemState:setOverlayed(lbg)
        nfptpo.ItemState:setHidden(false)
        nfptpo.ItemState:setOverlayed(lbg)
        ngorons.ItemState:setHidden(false)
        ngorons.ItemState:setOverlayed(lbg)
        nguruguru.ItemState:setHidden(false)
        nguruguru.ItemState:setOverlayed(lbg)
        nhydg.ItemState:setHidden(false)
        nhydg.ItemState:setOverlayed(lbg)
        nhguard.ItemState:setHidden(false)
        nhguard.ItemState:setOverlayed(lbg)
        
        nigbros.ItemState:setHidden(false)
        nigbros.ItemState:setOverlayed(lbg)
        nkafei.ItemState:setHidden(false)
        nkafei.ItemState:setOverlayed(lbg)
        nkeaton.ItemState:setHidden(false)
        nkeaton.ItemState:setOverlayed(lbg)
        nkzora.ItemState:setHidden(false)
        nkzora.ItemState:setOverlayed(lbg)
        nkokiri.ItemState:setHidden(false)
        nkokiri.ItemState:setOverlayed(lbg)
        nkshop.ItemState:setHidden(false)
        nkshop.ItemState:setOverlayed(lbg)
        nknk.ItemState:setHidden(false)
        nknk.ItemState:setOverlayed(lbg)

        naroma.ItemState:setHidden(false)
        naroma.ItemState:setOverlayed(lbg)
        nmrc.ItemState:setHidden(false)
        nmrc.ItemState:setOverlayed(lbg)
        nmayor.ItemState:setHidden(false)
        nmayor.ItemState:setOverlayed(lbg)
        nmedi.ItemState:setHidden(false)
        nmedi.ItemState:setOverlayed(lbg)
        nmido.ItemState:setHidden(false)
        nmido.ItemState:setOverlayed(lbg)
        nmoon.ItemState:setHidden(false)
        nmoon.ItemState:setOverlayed(lbg)
        npscrubs.ItemState:setHidden(false)
        npscrubs.ItemState:setOverlayed(lbg)

        npgho.ItemState:setHidden(false)
        npgho.ItemState:setOverlayed(lbg)
        npshop.ItemState:setHidden(false)
        npshop.ItemState:setOverlayed(lbg)
        nroof.ItemState:setHidden(false)
        nroof.ItemState:setOverlayed(lbg)
        nrulu.ItemState:setHidden(false)
        nrulu.ItemState:setOverlayed(lbg)
        nsaria.ItemState:setHidden(false)
        nsaria.ItemState:setOverlayed(lbg)
        nsheik.ItemState:setHidden(false)
        nsheik.ItemState:setOverlayed(lbg)
        ntalon.ItemState:setHidden(false)
        ntalon.ItemState:setOverlayed(lbg)

        nastro.ItemState:setHidden(false)
        nastro.ItemState:setOverlayed(lbg)
        nbazaar.ItemState:setHidden(false)
        nbazaar.ItemState:setOverlayed(lbg)
        nbean.ItemState:setHidden(false)
        nbean.ItemState:setOverlayed(lbg)
        nbegbank.ItemState:setHidden(false)
        nbegbank.ItemState:setOverlayed(lbg)
        nbshop.ItemState:setHidden(false)
        nbshop.ItemState:setOverlayed(lbg)
        ncarpet.ItemState:setHidden(false)
        ncarpet.ItemState:setOverlayed(lbg)
        ncgof.ItemState:setHidden(false)
        ncgof.ItemState:setOverlayed(lbg)
        
        ndbutler.ItemState:setHidden(false)
        ndbutler.ItemState:setOverlayed(lbg)
        ndking.ItemState:setHidden(false)
        ndking.ItemState:setOverlayed(lbg)
        ndpcess.ItemState:setHidden(false)
        ndpcess.ItemState:setOverlayed(lbg)
        ndlady.ItemState:setHidden(false)
        ndlady.ItemState:setOverlayed(lbg)
        ngcb.ItemState:setHidden(false)
        ngcb.ItemState:setOverlayed(lbg)
        ngelder.ItemState:setHidden(false)
        ngelder.ItemState:setOverlayed(lbg)
        ngshop.ItemState:setHidden(false)
        ngshop.ItemState:setOverlayed(lbg)
        
        nbombers.ItemState:setHidden(false)
        nbombers.ItemState:setOverlayed(lbg)
        nhag.ItemState:setHidden(false)
        nhag.ItemState:setOverlayed(lbg)
        nptac.ItemState:setHidden(false)
        nptac.ItemState:setOverlayed(lbg)
        npkg.ItemState:setHidden(false)
        npkg.ItemState:setOverlayed(lbg)
        nsctst.ItemState:setHidden(false)
        nsctst.ItemState:setOverlayed(lbg)
        nsgtao.ItemState:setHidden(false)
        nsgtao.ItemState:setOverlayed(lbg)
        nzmus.ItemState:setHidden(false)
        nzmus.ItemState:setOverlayed(lbg)
        
        nzshop.ItemState:setHidden(false)
        nzshop.ItemState:setOverlayed(lbg)
        ntingle.ItemState:setHidden(false)
        ntingle.ItemState:setOverlayed(lbg)
        nthand.ItemState:setHidden(false)
        nthand.ItemState:setOverlayed(lbg)
        ntoto.ItemState:setHidden(false)
        ntoto.ItemState:setOverlayed(lbg)
        ntco.ItemState:setHidden(false)
        ntco.ItemState:setOverlayed(lbg)
        nzelda.ItemState:setHidden(false)
        nzelda.ItemState:setOverlayed(lbg)
        nzoras.ItemState:setHidden(false)
        nzoras.ItemState:setOverlayed(lbg)
    else
        nlabel.ItemState:setHidden(true)

        nbgoron.ItemState:setHidden(true)
        nbsmiths.ItemState:setHidden(true)
        nbclady.ItemState:setHidden(true)
        ncarps.ItemState:setHidden(true)
        ncitz.ItemState:setHidden(true)
        ncbros.ItemState:setHidden(true)
        nanju.ItemState:setHidden(true)

        ndampe.ItemState:setHidden(true)
        ndarunia.ItemState:setHidden(true)
        nfptpo.ItemState:setHidden(true)
        ngorons.ItemState:setHidden(true)
        nguruguru.ItemState:setHidden(true)
        nhydg.ItemState:setHidden(true)
        nhguard.ItemState:setHidden(true)
        
        nigbros.ItemState:setHidden(true)
        nkafei.ItemState:setHidden(true)
        nkeaton.ItemState:setHidden(true)
        nkzora.ItemState:setHidden(true)
        nkokiri.ItemState:setHidden(true)
        nkshop.ItemState:setHidden(true)
        nknk.ItemState:setHidden(true)

        naroma.ItemState:setHidden(true)
        nmrc.ItemState:setHidden(true)
        nmayor.ItemState:setHidden(true)
        nmedi.ItemState:setHidden(true)
        nmido.ItemState:setHidden(true)
        nmoon.ItemState:setHidden(true)
        npscrubs.ItemState:setHidden(true)

        npgho.ItemState:setHidden(true)
        npshop.ItemState:setHidden(true)
        nroof.ItemState:setHidden(true)
        nrulu.ItemState:setHidden(true)
        nsaria.ItemState:setHidden(true)
        nsheik.ItemState:setHidden(true)
        ntalon.ItemState:setHidden(true)

        nastro.ItemState:setHidden(true)
        nbazaar.ItemState:setHidden(true)
        nbean.ItemState:setHidden(true)
        nbegbank.ItemState:setHidden(true)
        nbshop.ItemState:setHidden(true)
        ncarpet.ItemState:setHidden(true)
        ncgof.ItemState:setHidden(true)
        
        ndbutler.ItemState:setHidden(true)
        ndking.ItemState:setHidden(true)
        ndpcess.ItemState:setHidden(true)
        ndlady.ItemState:setHidden(true)
        ngcb.ItemState:setHidden(true)
        ngelder.ItemState:setHidden(true)
        ngshop.ItemState:setHidden(true)
        
        nbombers.ItemState:setHidden(true)
        nhag.ItemState:setHidden(true)
        nptac.ItemState:setHidden(true)
        npkg.ItemState:setHidden(true)
        nsctst.ItemState:setHidden(true)
        nsgtao.ItemState:setHidden(true)
        nzmus.ItemState:setHidden(true)
        
        nzshop.ItemState:setHidden(true)
        ntingle.ItemState:setHidden(true)
        nthand.ItemState:setHidden(true)
        ntoto.ItemState:setHidden(true)
        ntco.ItemState:setHidden(true)
        nzelda.ItemState:setHidden(true)
        nzoras.ItemState:setHidden(true)
    end

    local smisc = Tracker:FindObjectForCode("setting_souls_misc")
    local mlabel = Tracker:FindObjectForCode("label_misc_souls")
    
    local mbs = Tracker:FindObjectForCode("soul_business_scrubs")
    local mgs = Tracker:FindObjectForCode("soul_gold_skulltulas")

    if smisc.Active then
        mlabel.ItemState:setHidden(false)

        mbs.ItemState:setHidden(false)
        mbs.ItemState:setOverlayed(false)
        mgs.ItemState:setHidden(false)
        mgs.ItemState:setOverlayed(false)
    else
        mlabel.ItemState:setHidden(true)

        mbs.ItemState:setHidden(true)
        mgs.ItemState:setHidden(true)
    end

end

function update_bombchu_bags()
    local obb = Tracker:FindObjectForCode("setting_bombchu_bags")
    local b = Tracker:FindObjectForCode("bombchus")

    if obb.Active then
        b.ItemState:useAlt(true)
        if b.ItemState:getStage() == 0 then
            b.ItemState:setBadgeText(0, "white")
        else
            if b.ItemState:getStage() == 1 then
                b.ItemState:setBadgeText("20", "white")
            else
                if b.ItemState:getStage() == 2 then
                    b.ItemState:setBadgeText("30", "white")
                else
                    if b.ItemState:getStage() == 3 then
                        b.ItemState:setBadgeText("40", "lime")
                    end
                end
            end
        end
    else
        b.ItemState:useAlt(false)
        b.ItemState:setBadgeText(0, "white")
    end
end