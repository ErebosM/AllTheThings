-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

-- TODO: reformat achievs here
_.Instances = { tier(WOTLK_TIER, {
	inst(281, {	-- The Nexus
		["lvl"] = 59,
		["mapID"] = 129,
		["maps"] = {
			370,	-- The Nexus (Dragonwrath, Tarecgosa's Rest Quest Chain)
		},
		["groups"] = {
			n(QUESTS, {
				q(13094,{	-- Have They No Shame?
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 55537 },	-- Image of Warmage Kaitlyn
					["g"] = {
						i(43182),	-- Cured Mammoth Hide Mantle
						i(43181),	-- Shoulders of the Northern Lights
						i(43184),	-- Tundra Pauldrons
						i(43183),	-- Tundra Tracker's Shoulderguards
					},
				}),
				q(13095,{	-- Have They No Shame?
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 55537 },	-- Image of Warmage Kaitlyn
					["g"] = {
						i(43182),	-- Cured Mammoth Hide Mantle
						i(43181),	-- Shoulders of the Northern Lights
						i(43184),	-- Tundra Pauldrons
						i(43183),	-- Tundra Tracker's Shoulderguards
					},
				}),
				q(11905,{	-- Postponing the Inevitable
					["provider"] = { "n", 55535 },	-- Image of Warmage Kaitlyn
					["g"] = {
						i(42763),	-- Bindings of Sabotage
						i(42765),	-- Gauntlets of the Disturbed Giant
						i(42761),	-- Time-Stop Gloves
						i(42758),	-- Time-Twisted Wraps
					},
				}),
				q(11973,{	-- Prisoner of War
					["provider"] = { "n", 55531 },	-- Warmage Kaitlyn
					["g"] = {
						i(38223),	-- Cloak of Azure Lights
						i(38222),	-- Mantle of Keristrasza
						i(38221),	-- Shroud of Fluid Strikes
					},
				}),
				q(11911,{	-- Quickening
					["provider"] = { "n", 55536 },	-- Image of Warmage Kaitlyn
					["g"] = {
						i(42768),	-- Boots of the Unbowed Protector
						i(42767),	-- Invigorating Sabatons
						i(42760),	-- Sandals of Mystical Evolution
						i(42766),	-- Spiked Treads of Mutation
						i(42762),	-- Treads of Torn Future
					},
				}),
			}),
			d(1, {	-- Normal
				cr(26731, e(618, {	-- Grand Magus Telestra
					{	-- The Nexus: Grand Magus Telestra
						["achievementID"] = 478,	-- The Nexus
						["criteriaID"] = 1,	-- Grand Magus Telestra
					},
					i(35617),	-- Wand of Shimmering Scales
					i(37134),	-- Telestra's Journal
					i(37135),	-- Arcane-Shielded Helm
					i(37139),	-- Spaulders of the Careless Thief
					i(37138),	-- Bands of Channeled Energy
					i(35604),	-- Insulating Bindings
					i(35605),	-- Belt of Draconic Runes
				})),
				cr(26763, e(619, {	-- Anomalus
					{	-- The Nexus: Anomalus
						["achievementID"] = 478,	-- The Nexus
						["criteriaID"] = 2,	-- Anomalus
					},
					i(35598),	--	 Tome of the Lore Keepers
					i(37149),	-- Helm of Anomalus
					i(37141),	-- Amulet of Dazzling Light
					i(37144),	-- Hauberk of the Arcane Wraith
					i(35599),	-- Gauntlets of Serpent Scales
					i(35600),	-- Cleated Ice Boots
					i(37150),	-- Rift Striders
				})),
				cr(26794, e(620, {	-- Ormorok the Tree-Shaper
					{	-- The Nexus: Ormorok the Tree-Shaper
						["achievementID"] = 478,	-- The Nexus
						["criteriaID"] = 3,	-- Ormorok the Tree-Shaper
					},
					i(35601),	-- Drakonid Arm Blade
					i(35602),	-- Chiseled Stalagmite Pauldrons
					i(37153),	-- Gloves of the Crystal Gardener
					i(157559),	-- Chilly Cinch
					i(37152),	-- Girdle of Ice
					i(37155),	-- Frozen Forest Kilt
					i(35603),	-- Greaves of the Blue Flight
					i(37151),	-- Band of Frosted Thorns
				})),
				cr(26723, e(621, {	-- Keristrasza
					{	-- The Nexus: Keristrasza
						["achievementID"] = 478,	-- The Nexus
						["criteriaID"] = 4,	-- Keristrasza
					},
					i(35595),	-- Glacier Sharpened Vileblade
					i(37169),	-- War Mace of Unrequited Love
					i(37162),	-- Bulwark of the Noble Protector
					i(37165),	-- Crystal-Infused Tunic
					i(37170),	-- Interwoven Scale Bracers
					i(37172),	-- Gloves of Glistening Runes
					i(157565),	-- Tangler-Leather Gloves
					i(37171),	-- Flame-Bathed Steel Girdle
					i(35596),	-- Attuned Crystalline Boots
					i(37167),	-- Dragon Slayer's Sabatons
					i(35597),	-- Band of Glittering Permafrost
					i(37166),	-- Sphere of Red Dragon's Blood
				})),
			}),
			d(2, {	-- Heroic
				["lvl"] = 80,
				["groups"] = {
					a(cr(26798, e(833, {	-- Commander Stoutbeard
						i(37728),	-- Cloak of the Enemy
						i(37729),	-- Grips of Sculptured Icicles
						i(37731),	-- Opposed Stasis Leggings
						i(37730),	-- Cleric's Linen Shoes
					}))),
					h(cr(26796, e(617, {	-- Commander Kolurg
						i(37728),	-- Cloak of the Enemy
						i(37729),	-- Grips of Sculptured Icicles
						i(37731),	-- Opposed Stasis Leggings
						i(37730),	-- Cleric's Linen Shoes
					}))),
					cr(26731, e(618, {	-- Grand Magus Telestra
						{	-- Heroic: The Nexus: Grand Magus Telestra
							["achievementID"] = 490,	-- Heroic: The Nexus
							["criteriaID"] = 1,	-- Grand Magus Telestra
						},
						ach(2150),	-- Split Personality
						i(35617),	-- Wand of Shimmering Scales
						i(37134),	-- Telestra's Journal
						i(37135),	-- Arcane-Shielded Helm
						i(37139),	-- Spaulders of the Careless Thief
						i(37138),	-- Bands of Channeled Energy
						i(35604),	-- Insulating Bindings
						i(35605),	-- Belt of Draconic Runes
					})),
					cr(26763, e(619, {	-- Anomalus
						ach(2037),	-- Chaos Theory
						{	-- Heroic: The Nexus: Anomalus
							["achievementID"] = 490,	-- Heroic: The Nexus
							["criteriaID"] = 2,	-- Anomalus
						},
						i(35598),	-- Tome of the Lore Keepers
						i(37149),	-- Helm of Anomalus
						i(37141),	-- Amulet of Dazzling Light
						i(37144),	-- Hauberk of the Arcane Wraith
						i(35599),	-- Gauntlets of Serpent Scales
						i(35600),	-- Cleated Ice Boots
						i(37150),	-- Rift Striders
					})),
					cr(26794, e(620, {	-- Ormorok the Tree-Shaper
						{	-- Heroic: The Nexus: Ormorok the Tree-Shaper
							["achievementID"] = 490,	-- Heroic: The Nexus
							["criteriaID"] = 3,	-- Ormorok the Tree-Shaper
						},
						i(35601),	-- Drakonid Arm Blade
						i(35602),	-- Chiseled Stalagmite Pauldrons
						i(37153),	-- Gloves of the Crystal Gardener
						i(157559),	-- Chilly Cinch
						i(37152),	-- Girdle of Ice
						i(37155),	-- Frozen Forest Kilt
						i(35603),	-- Greaves of the Blue Flight
						i(37151),	-- Band of Frosted Thorns
					})),
					cr(26723, e(621, {	-- Keristrasza
						{	-- Champion of the Frozen Wastes
							["achievementID"] = 1658,	-- Champion of the Frozen Wastes
							["criteriaID"] = 6,			-- Keristrasza slain
						},
						{	-- Heroic: The Nexus: Keristrasza
							["achievementID"] = 490,	-- Heroic: The Nexus
							["criteriaID"] = 4,	-- Keristrasza
						},
						ach(2036),	-- Intense Cold
						i(35595),	-- Glacier Sharpened Vileblade
						i(37169),	-- War Mace of Unrequited Love
						i(37162),	-- Bulwark of the Noble Protector
						i(37165),	-- Crystal-Infused Tunic
						i(37170),	-- Interwoven Scale Bracers
						i(37172),	-- Gloves of Glistening Runes
						i(157565),	-- Tangler-Leather Gloves
						i(37171),	-- Flame-Bathed Steel Girdle
						i(35596),	-- Attuned Crystalline Boots
						i(37167),	-- Dragon Slayer's Sabatons
						i(35597),	-- Band of Glittering Permafrost
						i(37166),	-- Sphere of Red Dragon's Blood
					})),
				},
			}),
			-- #if AFTER 6.2.3.20601
			d(24, {	-- Timewalking
				["sym"] = {	-- link in Timewalking content
					{"sub", "tw_instance", 281 },	-- this instance version of timewalking
				},
			}),
			-- #endif
		},
	}),
})};
_.HiddenQuestTriggers = {
	tier(WOD_TIER, {
		q(35513),	-- The Nexus - Reward Quest - Normal completion
		q(35514),	-- The Nexus - Reward Quest - Heroic completion
		q(35515),	-- The Nexus - Bonus Objective Reward Quest - kill Commander Stoutbeard (A) / Commander Kolurg (H) (Heroic only)
	}),
};