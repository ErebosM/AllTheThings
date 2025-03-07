-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root("Instances", tier(TBC_TIER, applyclassicphase(TBC_PHASE_ONE, {
	inst(261, {	-- The Steamvault
		["lore"] = "The Steamvault serves as the mechanical heart of the Naga's draining operations in Zangarmarsh. The mechanisms on display within the massive cavern supply the power for the actual act of removing the marsh's water.",
		["coord"] = { 50.35, 33.39, ZANGARMARSH },	-- The Steamvault, Zangarmarsh
		["maps"] = {
			COILFANG_RESERVOIR_STEAMVAULT,
			264,	-- The Cooling Pools
		},
		["lvl"] = lvlsquish(65, 20, 65),
		["groups"] = {
			n(QUESTS, {
				q(29613, {	-- A Proper Fate
					["qg"] = 54848,	-- Watcher Jhang
					["timeline"] = { "added 4.3.0.14732" },
					["lvl"] = lvlsquish(67, 20, 67),
					["groups"] = {
						objective(1, {	-- Warlord Kalithresh slain
							["provider"] = { "n", 17798 },	-- Warlord Kalithresh
						}),
					},
				}),
				q(29614, {	-- Containment is Key
					["qg"] = 54849,	-- Naturalist Bite
					["timeline"] = { "added 4.3.0.14732" },
					["lvl"] = lvlsquish(67, 20, 67),
					["groups"] = {
						objective(1, {	-- 0/3 Bog Overlord slain
							["provider"] = { "n", 21694 },	-- Bog Overlord
						}),
						objective(2, {	-- 0/6 Coilfang Leper slain
							["provider"] = { "n", 21338 },	-- Coilfang Leper
						}),
						objective(3, {	-- 0/1 Irradiated Gear
							["provider"] = { "i", 72574 },	-- Irradiated Gear
						}),
					},
				}),
				q(9764, {	-- Orders from Lady Vashj
					["provider"] = { "i", 24367 },	-- Orders from Lady Vashj
					["timeline"] = { "removed 4.3.0.14732" },
					["lvl"] = lvlsquish(67, 20, 67),
				}),
				q(29616, {	-- Storming the Steamvault
					["qg"] = 17841,	-- Ysiel Windsinger
					["coord"] = { 78.4, 62, ZANGARMARSH },
					["timeline"] = { "added 4.3.0.14732" },
					["lvl"] = lvlsquish(67, 20, 67),
				}),
				q(9763, bubbleDown({ ["timeline"] = { "removed 4.3.0.14732" } }, {	-- The Warlord's Hideout
					["qg"] = 17884,	-- Watcher Jhang
					["coord"] = { 52.3, 36.0, ZANGARMARSH },
					["lvl"] = lvlsquish(67, 20, 67),
					["groups"] = {
						objective(1, {	-- Warlord Kalithresh slain
							["provider"] = { "n", 17798 },	-- Warlord Kalithresh
						}),
						i(28181),	-- Earthwarden's Coif
						i(28182),	-- Helm of the Claw
						i(28183),	-- Hydromancer's Headwrap
						i(28180),	-- Myrmidon's Headdress
					},
				})),
				q(10667, {	-- Underworld Loam
					["qg"] = 21465,	-- David Wayne
					["sourceQuests"] = {
						10665,	-- Fresh From the Mechanar
						10666,	-- The Lexicon Demonica
					},
					["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
					["lvl"] = lvlsquish(67, 20, 67),
					["groups"] = {
						objective(1, {	-- 0/1 Vial of Underworld Loam
							["provider"] = { "i", 30828 },	-- Vial of Underworld Loam
						}),
					},
				}),
				q(29615, {	-- Windcaller Claw and the Water Thief
					["qg"] = 54851,	-- Windcaller Claw
					["timeline"] = { "added 4.3.0.14732" },
					["lvl"] = lvlsquish(67, 20, 67),
					["groups"] = {
						objective(1, {	-- Hydromancer Thespia slain
							["provider"] = { "n", 17797 },	-- Hydromancer Thespia
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(24368),	-- Coilfang Armaments
				i(24159, {	-- Design: Khorium Band of Frost
					["cr"] = 17722,	-- Coilfang Sorceress
				}),
				i(22533, {	-- Formula: Enchant Bracer - Fortitude
					["cr"] = 17803,	-- Coilfang Oracle
				}),
				i(24367, {	-- Orders from Lady Vashj
					["timeline"] = { "removed 4.3.0.14732" },
					-- #if BEFORE 4.3.0.14732
					["crs"] = {
						17721,	-- Coilfang Engineer
						17800,	-- Coilfang Myrmidon
						17801,	-- Coilfang Siren
						17802,	-- Coilfang Warrior
						17803,	-- Coilfang Oracle
						17805,	-- Coilfang Slavemaster
					},
					-- #endif
				}),
				i(24487, {	-- Second Key Fragment
					["coord"] = { 59.0, 24.8, COILFANG_RESERVOIR_STEAMVAULT },
					["cr"] = 22891,	-- Second Fragment Guardian
				}),
			}),
			d(1, {	-- Normal
				e(573, {	-- Hydromancer Thespia
					["creatureID"] = 17797,
					["groups"] = {
						i(27789),	-- Cloak of Whispering Shells
						-- #if AFTER 7.3.5
						i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved from Warlord Kalithresh)
						i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved from Warlord Kalithresh)
						-- #endif
						i(27508),	-- Incanter's Gloves
						-- #if BEFORE 7.3.5
						i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved to Mekgineer Steamrigger)
						-- #endif
						i(27783),	-- Moonrage Girdle
						i(27784),	-- Scintillating Coral Band
						i(29673, {	-- Pattern: Frost Armor Kit
							["timeline"] = { "removed 5.0.4.10000" },
						}),
						i(30828),	-- Vial of Underworld Loam
					},
				}),
				e(574, {	-- Mekgineer Steamrigger
					["creatureID"] = 17796,
					["groups"] = {
						i(27791),	-- Serpentcrest Life-Staff
						i(27794),	-- Recoiless Rocket Ripper X-54
						i(27790),	-- Mask of Penance
						i(27792),	-- Steam-Hinge Chain of Valor
						-- #if AFTER 7.3.5
						i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved from Hydromancer Thespia)
						-- #endif
						i(27793),	-- Earth Mantle Handwraps
						-- #if AFTER 7.3.5
						i(27795),	-- Sash of Serpentra (7.3.5 - Moved from Warlord Kalithresh)
						-- #endif
						i(23887),	-- Schematic: Rocket Boots Xtreme
						i(72574, {	-- Irradiated Gear
							["timeline"] = { "added 4.3.0.14732" },
						}),
					},
				}),
				e(575, {	-- Warlord Kalithresh
					["creatureID"] = 17798,
					["groups"] = {
						removeclassicphase(ach(656, {	-- The Steamvault
							-- #if BEFORE 3.0.1
							["sourceQuests"] = {
								9763,	-- The Warlord's Hideout
								10885,	-- Trial of the Naaru: Strength
							},
							["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(9763) or C_QuestLog.IsQuestFlaggedCompleted(10885)); end]],
							-- #endif
						})),
						-- #if AFTER 7.3.5
						i(29351),	-- Wrathtide Longbow
						-- #endif
						i(27801),	-- Beast Lord Mantle
						i(27738),	-- Incanter's Pauldrons
						i(27737),	-- Moonglade Shoulders
						i(27804),	-- Devilshark Cape
						i(28203),	-- Breastplate of the Righteous
						i(27799),	-- Vermillion Robes of the Dominant
						-- #if AFTER 7.3.5
						i(29463),	-- Amber Bands of the Aggressor
						i(29243),	-- Wave-Fury Vambraces
						-- #endif
						-- #if BEFORE 7.3.5
						i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved to Hydromancer Thespia)
						i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved to Hydromancer Thespia)
						-- #endif
						i(27510),	-- Tidefury Gauntlets
						-- #if BEFORE 7.3.5
						i(27795),	-- Sash of Serpentra (7.3.5 - Moved to Mekgineer Steamrigger)
						-- #endif
						i(27874),	-- Beast Lord Leggings
						-- #if AFTER 7.3.5
						i(30543),	-- Pontifex Kilt
						-- #endif
						i(27805),	-- Ring of the Silver Hand
						i(24313),	-- Pattern: Battlecast Hood
					},
				}),
			}),
			d(2, {	-- Heroic
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30623, 1 },	-- Reservoir Key
				},
				-- #endif
				["lvl"] = lvlsquish(70, 30, 70),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17797,	-- Hydromancer Thespia
							17796,	-- Mekgineer Steamrigger
							17798,	-- Warlord Kalithresh
						},
						["groups"] = {
							-- #if BEFORE CATA
							i(29434),	-- Badge of Justice
							-- #endif
							i(30551),	-- Infused Fire Opal
							i(30549),	-- Shifting Tanzanite
							i(30550),	-- Sundered Chrysoprase
						},
					}),
					e(573, {	-- Hydromancer Thespia
						["creatureID"] = 17797,
						["groups"] = {
							i(27789),	-- Cloak of Whispering Shells
							-- #if AFTER 7.3.5
							i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved from Warlord Kalithresh)
							i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved from Warlord Kalithresh)
							-- #endif
							i(27508),	-- Incanter's Gloves
							-- #if BEFORE 7.3.5
							i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved to Mekgineer Steamrigger)
							-- #endif
							i(27783),	-- Moonrage Girdle
							i(27784),	-- Scintillating Coral Band
							i(29673, {	-- Pattern: Frost Armor Kit
								["timeline"] = { "removed 5.0.4.10000" },
							}),
							i(30828),	-- Vial of Underworld Loam
						},
					}),
					e(574, {	-- Mekgineer Steamrigger
						["creatureID"] = 17796,
						["groups"] = {
							i(27791),	-- Serpentcrest Life-Staff
							i(27794),	-- Recoiless Rocket Ripper X-54
							i(27790),	-- Mask of Penance
							i(27792),	-- Steam-Hinge Chain of Valor
							-- #if AFTER 7.3.5
							i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved from Hydromancer Thespia)
							-- #endif
							i(27793),	-- Earth Mantle Handwraps
							-- #if AFTER 7.3.5
							i(27795),	-- Sash of Serpentra (7.3.5 - Moved from Warlord Kalithresh)
							-- #endif
							i(23887),	-- Schematic: Rocket Boots Xtreme
							i(72574, {	-- Irradiated Gear
								["timeline"] = { "added 4.3.0.14732" },
							}),
						},
					}),
					e(575, {	-- Warlord Kalithresh
						["creatureID"] = 17798,
						["groups"] = {
							removeclassicphase(ach(677, {	-- Heroic: The Steamvault
								-- #if BEFORE 3.0.1
								["sourceQuest"] = 10885,	-- Trial of the Naaru: Strength
								["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(10885)); end]],
								-- #endif
							})),
							i(29351),	-- Wrathtide Longbow
							i(27801),	-- Beast Lord Mantle
							i(27738),	-- Incanter's Pauldrons
							i(27737),	-- Moonglade Shoulders
							i(27804),	-- Devilshark Cape
							i(28203),	-- Breastplate of the Righteous
							i(27799),	-- Vermillion Robes of the Dominant
							i(29463),	-- Amber Bands of the Aggressor
							i(29243),	-- Wave-Fury Vambraces
							-- #if BEFORE 7.3.5
							i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved to Hydromancer Thespia)
							i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved to Hydromancer Thespia)
							-- #endif
							i(27510),	-- Tidefury Gauntlets
							-- #if BEFORE 7.3.5
							i(27795),	-- Sash of Serpentra (7.3.5 - Moved to Mekgineer Steamrigger)
							-- #endif
							i(27874),	-- Beast Lord Leggings
							i(30543),	-- Pontifex Kilt
							i(27805),	-- Ring of the Silver Hand
							i(24313),	-- Pattern: Battlecast Hood
							i(31721),	-- Kalithresh's Trident
							i(33827),	-- The Warlord's Treatise
						},
					}),
				},
			}),
		},
	}),
})));
_.HiddenQuestTriggers = {
	tier(WOD_TIER, {
		q(35533),	-- The Steamvault Reward Quest - Normal completion
		q(35534),	-- The Steamvault Reward Quest - Heroic completion
	}),
};