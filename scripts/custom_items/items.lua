-- Settings
AdvancedProgressive("Keysanity (Only Affects Fire Temple Key Count)", "setting_keysanity", {{"images/settings/keysanity.png"}, {"images/settings/blank.png"}}, true)

-- Equipment
AdvancedProgressive("Scale", "scale", {{ "images/equipment/silver_scale.png", "images/equipment/golden_scale.png" }, { "images/equipment/bronze_scale.png", "images/equipment/silver_scale.png", "images/equipment/golden_scale.png" }})

AdvancedProgressive("Kokiri Sword", "kokiri_sword", {{ "images/equipment/kokiri_sword_oot.png", "images/equipment/razor_sword.png", "images/equipment/gilded_sword.png" }, { "images/equipment/kokiri_sword_mm.png", "images/equipment/razor_sword.png", "images/equipment/gilded_sword.png" }})
AdvancedProgressive("Hylian/Hero's Shield", "hylian_heros_shield", {{ "images/equipment/hylian_shield.png" }, { "images/equipment/heros_shield.png" }})
AdvancedProgressive("Mirror Shield", "mirror_shield", {{ "images/equipment/mirror_shield_oot.png" }, { "images/equipment/mirror_shield_mm.png" }})
AdvancedProgressive("Wallet", "wallet", { "images/equipment/wallet1.png", "images/equipment/wallet1.png", "images/equipment/wallet2.png", "images/equipment/wallet2.png", "images/equipment/wallet2.png" }):setActive(true)

AdvancedConsumable("Gold Skulltula Tokens", "gold_skulltula_tokens", "images/sidequests/gold_skulltula_token.png")
AdvancedConsumable("Swamp Skulltula Tokens", "swamp_skulltula_tokens", "images/sidequests/swamp_skulltula_token.png")
AdvancedConsumable("Ocean Skulltula Tokens", "ocean_skulltula_tokens", "images/sidequests/ocean_skulltula_token.png")

AdvancedToggle("Clock Town Map", "tingle_map_clock_town", "images/equipment/maps/clock_town.png")
AdvancedToggle("Romani Ranch Map", "tingle_map_romani_ranch", "images/equipment/maps/romani_ranch.png")
AdvancedToggle("Woodfall Map", "tingle_map_woodfall", "images/equipment/maps/woodfall.png")
AdvancedToggle("Snowhead Map", "tingle_map_snowhead", "images/equipment/maps/snowhead.png")
AdvancedToggle("Great Bay Map", "tingle_map_great_bay", "images/equipment/maps/great_bay.png")
AdvancedToggle("Stone Tower Map", "tingle_map_stone_tower", "images/equipment/maps/stone_tower.png")


-- Songs
AdvancedProgressive("Zelda's Lullaby", "zeldas_lullaby", {{ {"images/songs/zeldas_lullaby.png", "@disabled"}, 
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"}, 
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"}, 
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"}, 
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"}, 
                                                             "images/songs/zeldas_lullaby.png" },
                                                          { {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                            {"images/songs/zeldas_lullaby.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Epona's Song", "eponas_song", {{ {"images/songs/eponas_song.png", "@disabled"},
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                       "images/songs/eponas_song.png" },
                                                    { {"images/songs/eponas_song.png", "@disabled,overlay|images/check.png"},
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"}, 
                                                      {"images/songs/eponas_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                      {"images/songs/eponas_song.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Saria's Song", "sarias_song", {{ {"images/songs/sarias_song.png", "@disabled"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                       "images/songs/sarias_song.png" },
                                                    { {"images/songs/sarias_song.png", "@disabled,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                      {"images/songs/sarias_song.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Sun's Song", "suns_song", {{ {"images/songs/suns_song.png", "@disabled"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                   "images/songs/suns_song.png" },
                                                { {"images/songs/suns_song.png", "@disabled,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                  {"images/songs/suns_song.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedToggle("Scarecrow Song (OoT)", "scarecrow_song_oot", "images/songs/scarecrow_song_oot.png", "images/check.png", true, true, true, true)

AdvancedProgressive("Song of Time", "song_of_time", {{ {"images/songs/song_of_time.png", "@disabled"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                        "images/songs/song_of_time.png" },
                                                     { {"images/songs/song_of_time.png", "@disabled,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                       {"images/songs/song_of_time.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Song of Healing", "song_of_healing", {{ {"images/songs/song_of_healing.png", "@disabled"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                              "images/songs/song_of_healing.png" },
                                                           { {"images/songs/song_of_healing.png", "@disabled,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_healing.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Song of Soaring", "song_of_soaring", {{ {"images/songs/song_of_soaring.png", "@disabled"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                              "images/songs/song_of_soaring.png" },
                                                           { {"images/songs/song_of_soaring.png", "@disabled,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                             {"images/songs/song_of_soaring.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Song of Storms", "song_of_storms", {{ {"images/songs/song_of_storms.png", "@disabled"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                            "images/songs/song_of_storms.png" },
                                                         { {"images/songs/song_of_storms.png", "@disabled,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                           {"images/songs/song_of_storms.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedToggle("Scarecrow Song (MM)", "scarecrow_song_mm", "images/songs/scarecrow_song_mm.png", "images/check.png", true, true, true, true)

AdvancedProgressive("Minuet of Forest", "minuet_of_forest", {{ {"images/songs/minuet_of_forest.png", "@disabled"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                                "images/songs/minuet_of_forest.png" },
                                                             { {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                               {"images/songs/minuet_of_forest.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Bolero of Fire", "bolero_of_fire", {{ {"images/songs/bolero_of_fire.png", "@disabled"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/1.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/2.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/3.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/4.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/5.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/6.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/7.png"},
                                                            "images/songs/bolero_of_fire.png" },
                                                         { {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/7.png,overlay|images/check.png"},
                                                           {"images/songs/bolero_of_fire.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Serenade of Water", "serenade_of_water", {{ {"images/songs/serenade_of_water.png", "@disabled"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/1.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/2.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/3.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/4.png"},
                                                                  "images/songs/serenade_of_water.png" },
                                                               { {"images/songs/serenade_of_water.png", "@disabled,overlay|images/check.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                                 {"images/songs/serenade_of_water.png", "@disabled,overlay|images/overlays/of5.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                                 {"images/songs/serenade_of_water.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Requiem of Spirit", "requiem_of_spirit", {{ {"images/songs/requiem_of_spirit.png", "@disabled"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                                  "images/songs/requiem_of_spirit.png" },
                                                               { {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                                 {"images/songs/requiem_of_spirit.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Nocturne of Shadow", "nocturne_of_shadow", {{ {"images/songs/nocturne_of_shadow.png", "@disabled"},
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png"}, 
                                                                    "images/songs/nocturne_of_shadow.png" },
                                                                 { {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/check.png"},
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png,overlay|images/check.png"}, 
                                                                   {"images/songs/nocturne_of_shadow.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Prelude of Light", "prelude_of_light", {{ {"images/songs/prelude_of_light.png", "@disabled"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                                "images/songs/prelude_of_light.png" },
                                                             { {"images/songs/prelude_of_light.png", "@disabled,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                               {"images/songs/prelude_of_light.png", "overlay|images/check.png"} }}, true, true, false)

AdvancedProgressive("Sonata of Awakening", "sonata_of_awakening", {{ {"images/songs/sonata_of_awakening.png", "@disabled"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png"},
                                                                      "images/songs/sonata_of_awakening.png" },
                                                                   { {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                                     {"images/songs/sonata_of_awakening.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Goron Lullaby", "goron_lullaby", {{ {"images/songs/goron_lullaby.png", "@disabled"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/1.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/2.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/3.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/4.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/5.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/6.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/7.png"},
                                                          "images/songs/lullaby_intro.png",
                                                         {"images/songs/lullaby_intro.png", "overlay|images/overlays/of8.png,overlay|images/overlays/6.png"},
                                                         {"images/songs/lullaby_intro.png", "overlay|images/overlays/of8.png,overlay|images/overlays/7.png"},
                                                          "images/songs/goron_lullaby.png" },
                                                       { {"images/songs/goron_lullaby.png", "@disabled,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "@disabled,overlay|images/overlays/of8.png,overlay|images/overlays/7.png,overlay|images/check.png"},
                                                         {"images/songs/lullaby_intro.png", "overlay|images/check.png"},
                                                         {"images/songs/lullaby_intro.png", "overlay|images/overlays/of8.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                         {"images/songs/lullaby_intro.png", "overlay|images/overlays/of8.png,overlay|images/overlays/7.png,overlay|images/check.png"},
                                                         {"images/songs/goron_lullaby.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("New Wave Bossa Nova", "new_wave_bossa_nova", {{ {"images/songs/new_wave_bossa_nova.png", "@disabled"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png"},
                                                                      "images/songs/new_wave_bossa_nova.png" },
                                                                   { {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                                     {"images/songs/new_wave_bossa_nova.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Elegy of Emptiness", "elegy_of_emptiness", {{ {"images/songs/elegy_of_emptiness.png", "@disabled"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png"},
                                                                    "images/songs/elegy_of_emptiness.png" },
                                                                 { {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "@disabled,overlay|images/overlays/of7.png,overlay|images/overlays/6.png,overlay|images/check.png"},
                                                                   {"images/songs/elegy_of_emptiness.png", "overlay|images/check.png"} }}, true, true, false)
AdvancedProgressive("Oath to Order", "oath_to_order", {{ {"images/songs/oath_to_order.png", "@disabled"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png"},
                                                          "images/songs/oath_to_order.png" },
                                                       { {"images/songs/oath_to_order.png", "@disabled,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/1.png,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/2.png,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/3.png,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/4.png,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "@disabled,overlay|images/overlays/of6.png,overlay|images/overlays/5.png,overlay|images/check.png"},
                                                         {"images/songs/oath_to_order.png", "overlay|images/check.png"} }}, true, true, false)

AdvancedToggle("A", "a", "images/ocarina_buttons/a.png")
AdvancedToggle("C-Up", "c-up", "images/ocarina_buttons/c-up.png")
AdvancedToggle("C-Right", "c-right", "images/ocarina_buttons/c-right.png")
AdvancedToggle("C-Down", "c-down", "images/ocarina_buttons/c-down.png")
AdvancedToggle("C-Left", "c-left", "images/ocarina_buttons/c-left.png")


-- Items
AdvancedProgressive("Fairy/Hero's Bow", "fairy_heros_bow", {{ "images/items/fairy_bow.png", "images/items/fairy_bow.png", "images/items/fairy_bow.png" }, { "images/items/heros_bow.png", "images/items/heros_bow.png", "images/items/heros_bow.png" }})
AdvancedProgressive("Bombchus", "bombchus", {{ "images/items/bombchu.png" }, { "images/items/bombchu.png", "images/items/bombchu.png", "images/items/bombchu.png" }})
AdvancedProgressive("Hookshot", "hookshot", {{ "images/items/short_hookshot.png", "images/items/longshot.png" }, { "images/items/short_hookshot.png", "images/items/mm_hookshot.png" }})

AdvancedToggle("Magic Beans (OoT)", "magic_beans_oot", "images/items/magic_beans_oot.png")
AdvancedProgressive("Magic Beans (MM)", "magic_beans_mm", {{ "images/items/magic_beans_mm.png" }, { "images/items/magic_beans.png" }})

--AdvancedToggle("Bottle (Ruto's Letter)", "bottle_rutos_letter", "images/items/bottles/rutos_letter.png", "images/check.png", true, true)
--AdvancedToggle("Bottle (Gold Dust)", "bottle_gold_dust", "images/items/bottles/gold_dust.png", "images/check.png", true, true)
AdvancedProgressive("Bottle (Ruto's Letter)", "bottle_rutos_letter", {{"images/items/bottles/rutos_letter.png", {"images/items/bottles/rutos_letter.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Bottle (Gold Dust)", "bottle_gold_dust", {{"images/items/bottles/gold_dust.png", {"images/items/bottles/gold_dust.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Bottle", "bottle1", {{"images/items/bottles/empty.png"}, {"images/items/bottles/empty.png", "images/items/bottles/red_potion.png", "images/items/bottles/green_potion.png", "images/items/bottles/blue_potion.png", "images/items/bottles/fairy.png", "images/items/bottles/milk.png", "images/items/bottles/chateau_romani.png", "images/items/bottles/fish.png", "images/items/bottles/bugs.png", "images/items/bottles/blue_fire.png", "images/items/bottles/poe.png", "images/items/bottles/big_poe.png"}}, true)
AdvancedProgressive("Bottle", "bottle2", {{"images/items/bottles/red_potion.png"}, {"images/items/bottles/empty.png", "images/items/bottles/red_potion.png", "images/items/bottles/green_potion.png", "images/items/bottles/blue_potion.png", "images/items/bottles/fairy.png", "images/items/bottles/milk.png", "images/items/bottles/chateau_romani.png", "images/items/bottles/fish.png", "images/items/bottles/bugs.png", "images/items/bottles/blue_fire.png", "images/items/bottles/poe.png", "images/items/bottles/big_poe.png"}}, true)
AdvancedProgressive("Bottle", "bottle3", {{"images/items/bottles/milk.png"}, {"images/items/bottles/empty.png", "images/items/bottles/red_potion.png", "images/items/bottles/green_potion.png", "images/items/bottles/blue_potion.png", "images/items/bottles/fairy.png", "images/items/bottles/milk.png", "images/items/bottles/chateau_romani.png", "images/items/bottles/fish.png", "images/items/bottles/bugs.png", "images/items/bottles/blue_fire.png", "images/items/bottles/poe.png", "images/items/bottles/big_poe.png"}}, true)
AdvancedProgressive("Bottle", "bottle4", {{"images/items/bottles/chateau_romani.png"}, {"images/items/bottles/empty.png", "images/items/bottles/red_potion.png", "images/items/bottles/green_potion.png", "images/items/bottles/blue_potion.png", "images/items/bottles/fairy.png", "images/items/bottles/milk.png", "images/items/bottles/chateau_romani.png", "images/items/bottles/fish.png", "images/items/bottles/bugs.png", "images/items/bottles/blue_fire.png", "images/items/bottles/poe.png", "images/items/bottles/big_poe.png"}}, true)

AdvancedToggle("1st Day Clock", "1st_day_clock", "images/clocks/1st_day.png")
AdvancedToggle("1st Night Clock", "1st_night_clock", "images/clocks/1st_night.png")
AdvancedToggle("2nd Day Clock", "2nd_day_clock", "images/clocks/2nd_day.png")
AdvancedToggle("2nd Night Clock", "2nd_night_clock", "images/clocks/2nd_night.png")
AdvancedToggle("3rd Day Clock", "3rd_day_clock", "images/clocks/3rd_day.png")
AdvancedToggle("3rd Night Clock", "3rd_night_clock", "images/clocks/3rd_night.png")

AdvancedConsumable("Red Coins", "red_coins", "images/coins/red_coin.png")
AdvancedConsumable("Yellow Coins", "yellow_coins", "images/coins/yellow_coin.png")
AdvancedConsumable("Green Coins", "green_coins", "images/coins/green_coin.png")
AdvancedConsumable("Blue Coins", "blue_coins", "images/coins/blue_coin.png")

AdvancedToggle("Clock Town Owl Statue", "owl_clock_town", "images/owls/clock_town.png")
AdvancedToggle("Milk Road Owl Statue", "owl_milk_road", "images/owls/milk_road.png")
AdvancedToggle("Southern Swamp Owl Statue", "owl_southern_swamp", "images/owls/southern_swamp.png")
AdvancedToggle("Woodfall Owl Statue", "owl_woodfall", "images/owls/woodfall.png")
AdvancedToggle("Mountain Village Owl Statue", "owl_mountain_village", "images/owls/mountain_village.png")
AdvancedToggle("Snowhead Owl Statue", "owl_snowhead", "images/owls/snowhead.png")
AdvancedToggle("Great Bay Coast Owl Statue", "owl_great_bay_coast", "images/owls/great_bay_coast.png")
AdvancedToggle("Zora Cape Owl Statue", "owl_zora_cape", "images/owls/zora_cape.png")
AdvancedToggle("Ikana Canyon Owl Statue", "owl_ikana_canyon", "images/owls/ikana_canyon.png")
AdvancedToggle("Stone Tower Owl Statue", "owl_stone_tower", "images/owls/stone_tower.png")


-- Trade Quests
AdvancedProgressive("Pocket Cucco", "pocket_cucco", {{"images/sidequests/cucco.png", {"images/sidequests/cucco.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Cojiro", "cojiro", {{"images/sidequests/cojiro.png", {"images/sidequests/cojiro.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Odd Mushroom", "odd_mushroom", {{"images/sidequests/odd_mushroom.png", {"images/sidequests/odd_mushroom.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Odd Potion", "odd_potion", {{"images/sidequests/odd_potion.png", {"images/sidequests/odd_potion.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Poacher's Saw", "poachers_saw", {{"images/sidequests/poachers_saw.png", {"images/sidequests/poachers_saw.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Broken Goron Sword", "broken_goron_sword", {{"images/sidequests/broken_goron_sword.png", {"images/sidequests/broken_goron_sword.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Prescription", "prescription", {{"images/sidequests/prescription.png", {"images/sidequests/prescription.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Eyeball Frog", "eyeball_frog", {{"images/sidequests/eyeball_frog.png", {"images/sidequests/eyeball_frog.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Eye Drops", "eye_drops", {{"images/sidequests/eye_drops.png", {"images/sidequests/eye_drops.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Claim Check", "claim_check", {{"images/sidequests/claim_check.png", {"images/sidequests/claim_check.png", "overlay|images/check.png"}},{}})

AdvancedProgressive("Moon's Tear", "moons_tear", {{"images/sidequests/moons_tear.png", {"images/sidequests/moons_tear.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Land Title Deed", "land_title_deed", {{"images/sidequests/land_title_deed.png", {"images/sidequests/land_title_deed.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Swamp Title Deed", "swamp_title_deed", {{"images/sidequests/swamp_title_deed.png", {"images/sidequests/swamp_title_deed.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Mountain Title Deed", "mountain_title_deed", {{"images/sidequests/mountain_title_deed.png", {"images/sidequests/mountain_title_deed.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Ocean Title Deed", "ocean_title_deed", {{"images/sidequests/ocean_title_deed.png", {"images/sidequests/ocean_title_deed.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Room Key", "room_key", {{"images/sidequests/room_key.png", {"images/sidequests/room_key.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Letter to Kafei", "letter_to_kafei", {{"images/sidequests/letter_to_kafei.png", {"images/sidequests/letter_to_kafei.png", "overlay|images/check.png"}},{}})
AdvancedToggle("Pendant of Memories", "pendant_of_memories", "images/sidequests/pendant_of_memories.png")
AdvancedProgressive("Special Delivery to Mama", "special_delivery_to_mama", {{"images/sidequests/special_delivery_to_mama.png", {"images/sidequests/special_delivery_to_mama.png", "overlay|images/check.png"}, {"images/sidequests/special_delivery_to_mama.png", "overlay|images/check2.png"}},{}})

AdvancedProgressive("Zelda's Letter", "zeldas_letter", {{"images/sidequests/zeldas_letter.png", {"images/sidequests/zeldas_letter.png", "overlay|images/check.png"}},{}})
AdvancedProgressive("Chicken", "chicken", {{"images/sidequests/cucco.png", {"images/sidequests/cucco.png", "overlay|images/check.png"}},{}})
AdvancedConsumable("Eggs", "eggs", "images/sidequests/egg.png")


-- Dungeons
DungeonReward("Woodfall Temple Reward", "woodfall_temple_reward")
AdvancedToggle("Woodfall Temple Map", "woodfall_temple_map", "images/dungeons/map.png")
AdvancedToggle("Woodfall Temple Compass", "woodfall_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Woodfall Temple Small Keys", "woodfall_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Woodfall Temple Boss Key", "woodfall_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Woodfall Temple Stray Fairies", "woodfall_temple_stray_fairies", "images/dungeons/woodfall_fairy.png")

DungeonReward("Snowhead Temple Reward", "snowhead_temple_reward")
AdvancedToggle("Snowhead Temple Map", "snowhead_temple_map", "images/dungeons/map.png")
AdvancedToggle("Snowhead Temple Compass", "snowhead_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Snowhead Temple Small Keys", "snowhead_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Snowhead Temple Boss Key", "snowhead_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Snowhead Temple Stray Fairies", "snowhead_temple_stray_fairies", "images/dungeons/snowhead_fairy.png")

DungeonReward("Great Bay Temple Reward", "great_bay_temple_reward")
AdvancedToggle("Great Bay Temple Map", "great_bay_temple_map", "images/dungeons/map.png")
AdvancedToggle("Great Bay Temple Compass", "great_bay_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Great Bay Temple Small Keys", "great_bay_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Great Bay Temple Boss Key", "great_bay_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Great Bay Temple Stray Fairies", "great_bay_temple_stray_fairies", "images/dungeons/greatbay_fairy.png")

DungeonReward("Stone Tower Temple Reward", "stone_tower_temple_reward")
AdvancedToggle("Stone Tower Temple Map", "stone_tower_temple_map", "images/dungeons/map.png")
AdvancedToggle("Stone Tower Temple Compass", "stone_tower_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Stone Tower Temple Small Keys", "stone_tower_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Stone Tower Temple Boss Key", "stone_tower_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Stone Tower Temple Stray Fairies", "stone_tower_temple_stray_fairies", "images/dungeons/stonetower_fairy.png")

DungeonReward("Deku Tree Reward", "deku_tree_reward")
AdvancedToggle("Deku Tree Map", "deku_tree_map", "images/dungeons/map.png")
AdvancedToggle("Deku Tree Compass", "deku_tree_compass", "images/dungeons/compass.png")
AdvancedStatic("Clock Town Label", "clock_town_label", "images/dungeons/labels/clock_town.png")
AdvancedToggle("Clock Town Stray Fairy", "clock_town_stray_fairy", "images/dungeons/clocktown_fairy.png")

DungeonReward("Dodongo's Cavern Reward", "dodongos_cavern_reward")
AdvancedToggle("Dodongo's Cavern Map", "dodongos_cavern_map", "images/dungeons/map.png")
AdvancedToggle("Dodongo's Cavern Compass", "dodongos_cavern_compass", "images/dungeons/compass.png")
AdvancedConsumable("Dodongo's Cavern Silver Rupees (Staircase)", "dodongos_cavern_sr_staircase", "images/dungeons/silver_rupee.png") --MQ Only

DungeonReward("Jabu-Jabu Reward", "jabu-jabu_reward")
AdvancedToggle("Jabu-Jabu Map", "jabu-jabu_map", "images/dungeons/map.png")
AdvancedToggle("Jabu-Jabu Compass", "jabu-jabu_compass", "images/dungeons/compass.png")

DungeonReward("Forest Temple Reward", "forest_temple_reward")
AdvancedToggle("Forest Temple Map", "forest_temple_map", "images/dungeons/map.png")
AdvancedToggle("Forest Temple Compass", "forest_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Forest Temple Small Keys", "forest_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Forest Temple Boss Key", "forest_temple_boss_key", "images/dungeons/boss_key.png")

DungeonReward("Fire Temple Reward", "fire_temple_reward")
AdvancedToggle("Fire Temple Map", "fire_temple_map", "images/dungeons/map.png")
AdvancedToggle("Fire Temple Compass", "fire_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Fire Temple Small Keys", "fire_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Fire Temple Boss Key", "fire_temple_boss_key", "images/dungeons/boss_key.png")

DungeonReward("Water Temple Reward", "water_temple_reward")
AdvancedToggle("Water Temple Map", "water_temple_map", "images/dungeons/map.png")
AdvancedToggle("Water Temple Compass", "water_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Water Temple Small Keys", "water_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Water Temple Boss Key", "water_temple_boss_key", "images/dungeons/boss_key.png")

DungeonReward("Spirit Temple Reward", "spirit_temple_reward")
AdvancedToggle("Spirit Temple Map", "spirit_temple_map", "images/dungeons/map.png")
AdvancedToggle("Spirit Temple Compass", "spirit_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Spirit Temple Small Keys", "spirit_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Spirit Temple Boss Key", "spirit_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Spirit Temple Silver Rupees (Child)", "spirit_temple_sr_child", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Spirit Temple Silver Rupees (Sun)", "spirit_temple_sr_sun", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Spirit Temple Silver Rupees (Boulders)", "spirit_temple_sr_boulders", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Spirit Temple Silver Rupees (Lobby)", "spirit_temple_sr_lobby", "images/dungeons/silver_rupee.png") --MQ Only
AdvancedConsumable("Spirit Temple Silver Rupees (Adult)", "spirit_temple_sr_adult", "images/dungeons/silver_rupee.png") --MQ Only

DungeonReward("Shadow Temple Reward", "shadow_temple_reward")
AdvancedToggle("Shadow Temple Map", "shadow_temple_map", "images/dungeons/map.png")
AdvancedToggle("Shadow Temple Compass", "shadow_temple_compass", "images/dungeons/compass.png")
AdvancedConsumable("Shadow Temple Small Keys", "shadow_temple_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Shadow Temple Boss Key", "shadow_temple_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Shadow Temple Silver Rupees (Scythe)", "shadow_temple_sr_scythe", "images/dungeons/silver_rupee.png")
AdvancedConsumable("Shadow Temple Silver Rupees (Blades)", "shadow_temple_sr_blades", "images/dungeons/silver_rupee.png") --MQ Only
AdvancedConsumable("Shadow Temple Silver Rupees (Pit)", "shadow_temple_sr_pit", "images/dungeons/silver_rupee.png")
AdvancedConsumable("Shadow Temple Silver Rupees (Spikes)", "shadow_temple_sr_spikes", "images/dungeons/silver_rupee.png")

DungeonReward("Free Reward", "free_reward")

AdvancedConsumable("Triforce Pieces", "triforce_pieces", "images/equipment/triforce_piece.png")
AdvancedToggle("Skeleton Key", "skeleton_key", "images/dungeons/skeleton_key.png")
AdvancedToggle("Magical Rupee", "magical_rupee", "images/dungeons/magical_rupee.png")
AdvancedToggle("Transcendent Fairy", "transcendent_fairy", "images/dungeons/transcendent_fairy.png")

AdvancedProgressive("Ice Cavern", "ice_cavern_label", {{"images/dungeons/labels/ice_cavern.png", {"images/dungeons/labels/ice_cavern.png", "overlay|images/overlays/va.png"}, {"images/dungeons/labels/ice_cavern.png", "overlay|images/overlays/mq.png"}}, {}}, true, false, false)
AdvancedToggle("Ice Cavern Map", "ice_cavern_map", "images/dungeons/map.png")
AdvancedToggle("Ice Cavern Compass", "ice_cavern_compass", "images/dungeons/compass.png")
AdvancedConsumable("Ice Cavern Silver Rupees (Scythe)", "ice_cavern_sr_scythe", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Ice Cavern Silver Rupees (Block)", "ice_cavern_sr_block", "images/dungeons/silver_rupee.png") --VA Only

AdvancedProgressive("Bottom of the Well", "bottom_of_the_well_label", {{"images/dungeons/labels/bottom_of_the_well.png", {"images/dungeons/labels/bottom_of_the_well.png", "overlay|images/overlays/va.png"}, {"images/dungeons/labels/bottom_of_the_well.png", "overlay|images/overlays/mq.png"}}, {}}, true, false, false)
AdvancedToggle("Bottom of the Well Map", "bottom_of_the_well_map", "images/dungeons/map.png")
AdvancedToggle("Bottom of the Well Compass", "bottom_of_the_well_compass", "images/dungeons/compass.png")
AdvancedConsumable("Bottom of the Well Small Keys", "bottom_of_the_well_small_keys", "images/dungeons/small_key.png")
AdvancedConsumable("Bottom of the Well Silver Rupees (Basement)", "bottom_of_the_well_sr_basement", "images/dungeons/silver_rupee.png") --VA Only

AdvancedStatic("Thieves' Hideout", "thieves_hideout_label", "images/dungeons/labels/thieves_hideout.png")
AdvancedConsumable("Thieves' Hideout Small Keys", "thieves_hideout_small_keys", "images/dungeons/small_key.png")

AdvancedProgressive("Gerudo Training Ground", "gerudo_training_ground_label", {{"images/dungeons/labels/gerudo_training_ground.png", {"images/dungeons/labels/gerudo_training_ground.png", "overlay|images/overlays/va.png"}, {"images/dungeons/labels/gerudo_training_ground.png", "overlay|images/overlays/mq.png"}}, {}}, true, false, false)
AdvancedConsumable("Gerudo Training Ground Small Keys", "gerudo_training_ground_small_keys", "images/dungeons/small_key.png")
AdvancedConsumable("Gerudo Training Ground Silver Rupees (Slopes)", "gerudo_training_ground_sr_slopes", "images/dungeons/silver_rupee.png")
AdvancedConsumable("Gerudo Training Ground Silver Rupees (Lava)", "gerudo_training_ground_sr_lava", "images/dungeons/silver_rupee.png")
AdvancedConsumable("Gerudo Training Ground Silver Rupees (Water)", "gerudo_training_ground_sr_water", "images/dungeons/silver_rupee.png")

AdvancedStatic("Treasure Chest Game", "treasure_chest_game_label", "images/dungeons/labels/treasure_chest_game.png")
AdvancedConsumable("Treasure Chest Game Small Keys", "treasure_chest_game_small_keys", "images/dungeons/small_key.png")

AdvancedProgressive("Ganon's Castle", "ganons_castle_label", {{"images/dungeons/labels/ganons_castle.png", {"images/dungeons/labels/ganons_castle.png", "overlay|images/overlays/va.png"}, {"images/dungeons/labels/ganons_castle.png", "overlay|images/overlays/mq.png"}}, {}}, true, false, false)
AdvancedConsumable("Ganon's Castle Small Keys", "ganons_castle_small_keys", "images/dungeons/small_key.png")
AdvancedToggle("Ganon's Castle Boss Key", "ganons_castle_boss_key", "images/dungeons/boss_key.png")
AdvancedConsumable("Ganon's Castle Silver Rupees (Spirit)", "ganons_castle_sr_spirit", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Ganon's Castle Silver Rupees (Light)", "ganons_castle_sr_light", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Ganon's Castle Silver Rupees (Fire)", "ganons_castle_sr_fire", "images/dungeons/silver_rupee.png")
AdvancedConsumable("Ganon's Castle Silver Rupees (Forest)", "ganons_castle_sr_forest", "images/dungeons/silver_rupee.png") --VA Only
AdvancedConsumable("Ganon's Castle Silver Rupees (Shadow)", "ganons_castle_sr_shadow", "images/dungeons/silver_rupee.png") --MQ Only
AdvancedConsumable("Ganon's Castle Silver Rupees (Water)", "ganons_castle_sr_water", "images/dungeons/silver_rupee.png") --MQ Only

-- Souls
if string.find(Tracker.ActiveVariantUID, "Souls") then
    AdvancedStatic("Boss Souls", "boss_souls_label", "images/souls/boss/label.png")

    AdvancedToggle("Soul of Queen Gohma", "soul_queen_gohma", "images/souls/boss/queen_gohma.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of King Dodongo", "soul_king_dodongo", "images/souls/boss/king_dodongo.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Barinade", "soul_barinade", "images/souls/boss/barinade.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Odolwa", "soul_odolwa", "images/souls/boss/odolwa.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Goht", "soul_goht", "images/souls/boss/goht.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Gyorg", "soul_gyorg", "images/souls/boss/gyorg.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Twinmold", "soul_twinmold", "images/souls/boss/twinmold.png", "images/overlays/mm.png", false, false, true)
    
    AdvancedToggle("Soul of Phantom Ganon", "soul_phantom_ganon", "images/souls/boss/phantom_ganon.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Volvagia", "soul_volvagia", "images/souls/boss/volvagia.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Morpha", "soul_morpha", "images/souls/boss/morpha.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Twinrova", "soul_twinrova", "images/souls/boss/twinrova.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Bongo Bongo", "soul_bongo_bongo", "images/souls/boss/bongo_bongo.png", "images/overlays/oot.png", false, false, true)
    AdvancedStatic("", "soul_boss_filler", "images/souls/filler.png")
    AdvancedToggle("Soul of Igos", "soul_igos", "images/souls/boss/igos.png", "images/overlays/mm.png", false, false, true)
    
    AdvancedStatic("Enemy Souls", "enemy_souls_label", "images/souls/enemy/label.png")

    AdvancedToggle("Soul of Anubis", "soul_anubis", "images/souls/enemy/anubis.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Armos", "soul_armos", "images/souls/enemy/armos.png")
    AdvancedToggle("Soul of Baby Dodongos", "soul_baby_dodongos", "images/souls/enemy/baby_dodongos.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Bad Bats", "soul_bad_bats", "images/souls/enemy/bad_bats.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Beamos", "soul_beamos", "images/souls/enemy/beamos.png")
    AdvancedToggle("Soul of Bio Babas", "soul_bio_babas", "images/souls/enemy/bio_babas.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Biris/Baris", "soul_biris_baris", "images/souls/enemy/biris_baris.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Boes", "soul_boes", "images/souls/enemy/boes.png", "images/overlays/mm.png", false, false, true)
    
    AdvancedToggle("Soul of Bubbles", "soul_bubbles", "images/souls/enemy/bubbles.png")
    AdvancedToggle("Soul of Captain Keeta", "soul_captain_keeta", "images/souls/enemy/captain_keeta.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Chuchus", "soul_chuchus", "images/souls/enemy/chuchus.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Dark Link", "soul_dark_link", "images/souls/enemy/dark_link.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Dead Hands", "soul_dead_hands", "images/souls/enemy/dead_hands.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Deep Pythons", "soul_deep_pythons", "images/souls/enemy/deep_pythons.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Deku Babas", "soul_deku_babas", "images/souls/enemy/deku_babas.png")
    AdvancedToggle("Soul of Deku Scrubs", "soul_deku_scrubs", "images/souls/enemy/deku_scrubs.png")
    
    AdvancedToggle("Soul of Dexihands", "soul_dexihands", "images/souls/enemy/dexihands.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Dodongos", "soul_dodongos", "images/souls/enemy/dodongos.png")
    AdvancedToggle("Soul of Dragonflies", "soul_dragonflies", "images/souls/enemy/dragonflies.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Eenoes", "soul_eenoes", "images/souls/enemy/eenoes.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Eyegores", "soul_eyegores", "images/souls/enemy/eyegores.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Flare Dancers", "soul_flare_dancers", "images/souls/enemy/flare_dancers.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Floormasters", "soul_floormasters", "images/souls/enemy/floormasters.png")
    AdvancedToggle("Soul of Flying Pots", "soul_flying_pots", "images/souls/enemy/flying_pots.png")
    
    AdvancedToggle("Soul of Freezards", "soul_freezards", "images/souls/enemy/freezards.png")
    AdvancedToggle("Soul of Garo", "soul_garo", "images/souls/enemy/garo.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Gekkos", "soul_gekkos", "images/souls/enemy/gekkos.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Gerudo/Pirate Fighters", "soul_gerudo_pirate_fighters", "images/souls/enemy/gerudo_pirate_fighters.png")
    AdvancedToggle("Soul of Gohma Larvae", "soul_gohma_larvae", "images/souls/enemy/gohma_larvae.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Gomess", "soul_gomess", "images/souls/enemy/gomess.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Guays", "soul_guays", "images/souls/enemy/guays.png")
    AdvancedToggle("Soul of Hiploops", "soul_hiploops", "images/souls/enemy/hiploops.png", "images/overlays/mm.png", false, false, true)
    
    AdvancedToggle("Soul of Iron Knuckles", "soul_iron_knuckles", "images/souls/enemy/iron_knuckles.png")
    AdvancedToggle("Soul of Jabu-Jabu's Parasites", "soul_jabu_jabus_parasites", "images/souls/enemy/jabu_jabus_parasites.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Keese", "soul_keese", "images/souls/enemy/keese.png")
    AdvancedToggle("Soul of Leevers", "soul_leevers", "images/souls/enemy/leevers.png")
    AdvancedToggle("Soul of Like-Likes", "soul_like_likes", "images/souls/enemy/like_likes.png")
    AdvancedToggle("Soul of Lizalfos/Dinolfos", "soul_lizalfos_dinolfos", "images/souls/enemy/lizalfos_dinolfos.png")
    AdvancedToggle("Soul of Moblins", "soul_moblins", "images/souls/enemy/moblins.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Nejirons", "soul_nejirons", "images/souls/enemy/nejirons.png", "images/overlays/mm.png", false, false, true)
    
    AdvancedToggle("Soul of Octoroks", "soul_octoroks", "images/souls/enemy/octoroks.png")
    AdvancedToggle("Soul of Peahats", "soul_peahats", "images/souls/enemy/peahats.png")
    AdvancedToggle("Soul of Poes", "soul_poes", "images/souls/enemy/poes.png")
    AdvancedToggle("Soul of Real Bombchu", "soul_real_bombchu", "images/souls/enemy/real_bombchu.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of ReDeads/Gibdos", "soul_redeads_gibdos", "images/souls/enemy/redeads_gibdos.png")
    AdvancedToggle("Soul of Shaboms", "soul_shaboms", "images/souls/enemy/shaboms.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Shell Blades", "soul_shell_blades", "images/souls/enemy/shell_blades.png")
    AdvancedToggle("Soul of Skull Kids", "soul_skull_kids", "images/souls/enemy/skull_kids.png", "images/overlays/oot.png", false, false, true)
    
    AdvancedToggle("Soul of Skullfish", "soul_skullfish", "images/souls/enemy/skullfish.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Skulltulas", "soul_skulltulas", "images/souls/enemy/skulltulas.png")
    AdvancedToggle("Soul of Skullwalltulas", "soul_skullwalltulas", "images/souls/enemy/skullwalltulas.png")
    AdvancedToggle("Soul of Snappers", "soul_snappers", "images/souls/enemy/snappers.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Spikes", "soul_spikes", "images/souls/enemy/spikes.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Stalchildren", "soul_stalchildren", "images/souls/enemy/stalchildren.png")
    AdvancedToggle("Soul of Stalfos", "soul_stalfos", "images/souls/enemy/stalfos.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Stingers", "soul_stingers", "images/souls/enemy/stingers.png", "images/overlays/oot.png", false, false, true)
    
    AdvancedToggle("Soul of Tailpasarans", "soul_tailpasarans", "images/souls/enemy/tailpasarans.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Takkuri", "soul_takkuri", "images/souls/enemy/takkuri.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Tektites", "soul_tektites", "images/souls/enemy/tektites.png")
    AdvancedToggle("Soul of Torch Slugs", "soul_torch_slugs", "images/souls/enemy/torch_slugs.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Wallmasters", "soul_wallmasters", "images/souls/enemy/wallmasters.png")
    AdvancedToggle("Soul of Warts", "soul_warts", "images/souls/enemy/warts.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Wizzrobes", "soul_wizzrobes", "images/souls/enemy/wizzrobes.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Wolfos", "soul_wolfos", "images/souls/enemy/wolfos.png")

    AdvancedStatic("NPC Souls", "npc_souls_label", "images/souls/npc/label.png")

    AdvancedToggle("Soul of Astronomer", "soul_astronomer", "images/souls/npc/astronomer.png")
    AdvancedToggle("Soul of Bazaar Shopkeeper/Swamp Archery Owner", "soul_bazaar_shopkeeper_swamp_archery_owner", "images/souls/npc/bazaar_shopkeeper_swamp_archery_owner.png")
    AdvancedToggle("Soul of Bean Salesman", "soul_bean_salesman", "images/souls/npc/bean_salesman.png")
    AdvancedToggle("Soul of Beggar/Banker", "soul_beggar_banker", "images/souls/npc/beggar_banker.png")
    AdvancedToggle("Soul of Biggoron", "soul_biggoron", "images/souls/npc/biggoron.png")
    AdvancedToggle("Soul of Blacksmiths", "soul_blacksmiths", "images/souls/npc/blacksmiths.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Boat Cruise Man", "soul_boat_cruise_man", "images/souls/npc/boat_cruise_man.png", "images/overlays/mm.png", false, false, true)

    AdvancedToggle("Soul of Bombchu/Bombs Shopkeeper", "soul_bombchu_bombs_shopkeeper", "images/souls/npc/bombchu_bombs_shopkeeper.png")
    AdvancedToggle("Soul of Bombchu Bowling/Chest Game Lady", "soul_bombchu_bowling_chest_game_lady", "images/souls/npc/bombchu_bowling_chest_game_lady.png")
    AdvancedToggle("Soul of Carpenters", "soul_carpenters", "images/souls/npc/carpenters.png")
    AdvancedToggle("Soul of Carpet Man/Swordsman", "soul_carpet_man_swordsman", "images/souls/npc/carpet_man_swordsman.png")
    AdvancedToggle("Soul of Chest Game Owner/Fisherman", "soul_chest_game_owner_fisherman", "images/souls/npc/chest_game_owner_fisherman.png")
    AdvancedToggle("Soul of Child/Baby Goron", "soul_child_baby_goron", "images/souls/npc/child_baby_goron.png")
    AdvancedToggle("Soul of Composer Bros.", "soul_composer_bros", "images/souls/npc/composer_bros.png")

    AdvancedToggle("Soul of Cucco Lady/Anju", "soul_cucco_lady_anju", "images/souls/npc/cucco_lady_anju.png")
    AdvancedToggle("Soul of Dampe", "soul_dampe", "images/souls/npc/dampe.png")
    AdvancedToggle("Soul of Darunia", "soul_darunia", "images/souls/npc/darunia.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Deku Butler", "soul_deku_butler", "images/souls/npc/deku_butler.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Deku King", "soul_deku_king", "images/souls/npc/deku_king.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Deku Princess", "soul_deku_princess", "images/souls/npc/deku_princess.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Dog Lady", "soul_dog_lady", "images/souls/npc/dog_lady.png")

    AdvancedToggle("Soul of Fishing Pond/Trading Post Owner", "soul_fishing_pond_trading_post_owner", "images/souls/npc/fishing_pond_trading_post_owner.png")
    AdvancedToggle("Soul of Gerudo/Pirate Guards", "soul_gerudo_pirate_guards", "images/souls/npc/gerudo_pirate_guards.png")
    AdvancedToggle("Soul of Goron Elder", "soul_goron_elder", "images/souls/npc/goron_elder.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Gorons", "soul_gorons", "images/souls/npc/gorons.png")
    AdvancedToggle("Soul of Goron Shopkeeper", "soul_goron_shopkeeper", "images/souls/npc/goron_shopkeeper.png")
    AdvancedToggle("Soul of Graveyard/Bombers' Kids", "soul_graveyard_bombers_kids", "images/souls/npc/graveyard_bombers_kids.png")
    AdvancedToggle("Soul of Guru-Guru", "soul_guru_guru", "images/souls/npc/guru_guru.png")

    AdvancedToggle("Soul of Hylian/Clock Town Citizens", "soul_hylian_clock_town_citizens", "images/souls/npc/hylian_clock_town_citizens.png")
    AdvancedToggle("Soul of Hylian Guard", "soul_hylian_guard", "images/souls/npc/hylian_guard.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Ingo/Gorman & Bros.", "soul_ingo_gorman_bros", "images/souls/npc/ingo_gorman_bros.png")
    AdvancedToggle("Soul of Kafei", "soul_kafei", "images/souls/npc/kafei.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Keaton", "soul_keaton", "images/souls/npc/keaton.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of King Zora", "soul_king_zora", "images/souls/npc/king_zora.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Kokiri", "soul_kokiri", "images/souls/npc/kokiri.png", "images/overlays/oot.png", false, false, true)

    AdvancedToggle("Soul of Kokiri Shopkeeper", "soul_kokiri_shopkeeper", "images/souls/npc/kokiri_shopkeeper.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Koume & Kotake", "soul_koume_and_kotake", "images/souls/npc/koume_and_kotake.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Lakeside/Marine Scientist", "soul_lakeside_marine_scientist", "images/souls/npc/lakeside_marine_scientist.png")
    AdvancedToggle("Soul of Lovers/Honey & Darling", "soul_lovers_honey_and_darling", "images/souls/npc/lovers_honey_and_darling.png")
    AdvancedToggle("Soul of Madame Aroma", "soul_madame_aroma", "images/souls/npc/madame_aroma.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Malon/Romani/Cremia", "soul_malon_romani_cremia", "images/souls/npc/malon_romani_cremia.png")
    AdvancedToggle("Soul of Mayor Dotour", "soul_mayor_dotour", "images/souls/npc/mayor_dotour.png", "images/overlays/mm.png", false, false, true)

    AdvancedToggle("Soul of Medigoron/Keg Trial Goron", "soul_medigoron_keg_trial_goron", "images/souls/npc/medigoron_keg_trial_goron.png")
    AdvancedToggle("Soul of Mido", "soul_mido", "images/souls/npc/mido.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Moon Children", "soul_moon_children", "images/souls/npc/moon_children.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Old Hag/Anju's Grandmother", "soul_old_hag_anjus_grandmother", "images/souls/npc/old_hag_anjus_grandmother.png")
    AdvancedToggle("Soul of Playground Scrubs", "soul_playground_scrubs", "images/souls/npc/playground_scrubs.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Poe Collector/Poe Hut Owner", "soul_poe_collector_poe_hut_owner", "images/souls/npc/poe_collector_poe_hut_owner.png")
    AdvancedToggle("Soul of Potion Shopkeeper", "soul_potion_shopkeeper", "images/souls/npc/potion_shopkeeper.png", "images/overlays/oot.png", false, false, true)

    AdvancedToggle("Soul of Punk Boy/Grog", "soul_punk_boy_grog", "images/souls/npc/punk_boy_grog.png")
    AdvancedToggle("Soul of Rooftop Man/Part-Timer", "soul_rooftop_man_part_timer", "images/souls/npc/rooftop_man_part_timer.png")
    AdvancedToggle("Soul of Ruto/Lulu", "soul_ruto_lulu", "images/souls/npc/ruto_lulu.png")
    AdvancedToggle("Soul of Saria", "soul_saria", "images/souls/npc/saria.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Sheik", "soul_sheik", "images/souls/npc/sheik.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Shooting Gallery/Town Archery Owner", "soul_shooting_gallery_town_archery_owner", "images/souls/npc/shooting_gallery_town_archery_owner.png")
    AdvancedToggle("Soul of Talon/Mr. Barten", "soul_talon_mr_barten", "images/souls/npc/talon_mr_barten.png")

    AdvancedToggle("Soul of Tingle", "soul_tingle", "images/souls/npc/tingle.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Toilet Hand", "soul_toilet_hand", "images/souls/npc/toilet_hand.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Toto", "soul_toto", "images/souls/npc/toto.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Zelda", "soul_zelda", "images/souls/npc/zelda.png", "images/overlays/oot.png", false, false, true)
    AdvancedToggle("Soul of Zora Musicians", "soul_zora_musicians", "images/souls/npc/zora_musicians.png", "images/overlays/mm.png", false, false, true)
    AdvancedToggle("Soul of Zoras", "soul_zoras", "images/souls/npc/zoras.png")
    AdvancedToggle("Soul of Zora Shopkeeper", "soul_zora_shopkeeper", "images/souls/npc/zora_shopkeeper.png")
    
    AdvancedStatic("Animal Souls", "animal_souls_label", "images/souls/animal/label.png")

    AdvancedToggle("Soul of Butterflies", "soul_butterflies", "images/souls/animal/butterflies.png")
    AdvancedToggle("Soul of Cows", "soul_cows", "images/souls/animal/cows.png")
    AdvancedToggle("Soul of Cuccos", "soul_cuccos", "images/souls/animal/cuccos.png")
    AdvancedToggle("Soul of Dogs", "soul_dogs", "images/souls/animal/dogs.png")

    AdvancedStatic("Misc. Souls", "misc_souls_label", "images/souls/misc/label.png")
    
    AdvancedToggle("Soul of Business Scrubs", "soul_business_scrubs", "images/souls/misc/business_scrubs.png")
    AdvancedToggle("Soul of Gold Skulltulas", "soul_gold_skulltulas", "images/souls/misc/gold_skulltulas.png")
end