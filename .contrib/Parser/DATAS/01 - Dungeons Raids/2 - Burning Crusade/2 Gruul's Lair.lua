-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root("Instances", tier(TBC_TIER, applyclassicphase(TBC_PHASE_ONE, {
	inst(746, {	-- Gruul's Lair
		["lore"] = "When the infamous Dragon Aspect, Deathwing, discovered the Dark Portal and Draenor, he felt sure that few of Draenor's denizens would dare challenge the black dragonflight, so he scattered clutches of his eggs throughout the world.\n\nDeathwing made a serious miscalculation when he chose to leave his eggs under meager guardianship in Blade's Edge Mountains. The guardian dragons were torn from the sky by the gronn living in Blade's Edge, and the leader of the gronn, Gruul, impaled the wyrms he fought on the stone spires of the mountains.\n\nToday Gruul the Dragonkiller is worshipped as a deity by the ogres of Blade's Edge Mountains. His powerful sons ravage both the spires of their home and the plains of Nagrand. Gruul's unparalleled strength and experience in battle would pose a serious threat if he ever chose to attack Horde or Alliance forces in Outland.",
		["coord"] = { 69.31, 23.67, BLADES_EDGE_MOUNTAINS },	-- Gruul's Lair, Blade's Edge Mountain
		["mapID"] = GRUULS_LAIR,
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = lvlsquish(68, 30, 68),	-- Level 68s could zone in without any attunements. TODO: Check this.
		["groups"] = {
			e(1564, {	-- High King Maulgar
				["creatureID"] = 18831,
				["groups"] = {
					i(29763, {	-- Pauldrons of the Fallen Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(29764, {	-- Pauldrons of the Fallen Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(29762, {	-- Pauldrons of the Fallen Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(28800),	-- Hammer of the Naaru
					i(28796),	-- Malefic Mask of the Shadows
					i(28801),	-- Maulgar's Warhelm
					i(28797),	-- Brute Cloak of the Ogre-Magi
					i(28795),	-- Bladespire Warbands
					i(28799),	-- Belt of Divine Inspiration
				},
			}),
			e(1565, {	-- Gruul the Dragonkiller
				["creatureID"] = 19044,
				["groups"] = {
					removeclassicphase(ach(692, {	-- Gruul's Lair
						-- #if BEFORE 3.0.1
						["sourceQuest"] = 10901,	-- The Cudgel of Kar'desh
						["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(10901)); end]],
						-- #endif
					})),
					i(29766, {	-- Leggings of the Fallen Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(29767, {	-- Leggings of the Fallen Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(29765, {	-- Leggings of the Fallen Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(28794),	-- Axe of the Gronn Lords
					i(28802),	-- Bloodmaw Magus-Blade
					i(28825),	-- Aldori Legacy Defender
					-- #if BEFORE MOP
					i(28826, {	-- Shuriken of Negation
						["timeline"] = { "removed 5.0.4.10000" },
					}),
					-- #endif
					i(28804),	-- Collar of Cho'gall
					i(28803),	-- Cowl of Nature's Breath
					i(28822),	-- Teeth of Gruul
					i(28824),	-- Gauntlets of Martial Perfection
					i(28827),	-- Gauntlets of the Dragonslayer
					i(28828),	-- Gronn-Stitched Girdle
					i(28810),	-- Windshear Boots
					i(28830),	-- Dragonspine Trophy
					i(28823),	-- Eye of Grull
					i(31750),	-- Earthen Signet
				},
			})
		},
	}),
})));