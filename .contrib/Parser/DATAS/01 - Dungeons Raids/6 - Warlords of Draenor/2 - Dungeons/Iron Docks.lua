-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = { tier(WOD_TIER, {
	inst(558, {	-- Iron Docks
		["mapID"] = 595,
		["coord"] = { 45.36, 13.52, GORGROND },
		["lvl"] = 92,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(9838, {	-- What A Strange, Interdimensional Trip It's Been
					["collectible"] = false,
					["g"] = {
						crit(2),	-- Skulloc, Son of Gruul
					},
				}),
			}),
			d(1,  {	-- Normal
				e(1235, {	-- Fleshrender Nok'gar
					["crs"] = {
						81297,	-- Dreadfang
						81305,	-- Fleshrender Nok'gar
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, CHEST},
						{"sub", "common_wod_dungeon_drop", 1, FINGER},
					},
					["g"] = {
						i(110055),	-- Gutwrench Goreaxe
						i(110002),	-- Fleshrender's Meathook
						n(TITANFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110055),	-- Gutwrench Goreaxe
							i(110002),	-- Fleshrender's Meathook
						})),
					},
				}),
				e(1236, {	-- Grimrail Enforcers
					["crs"] = {
						80816,	-- Ahri'ok Dugru
						80805,	-- Makogg Emberblade
						80808,	-- Neesa Nox
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, HEAD},
						{"sub", "common_wod_dungeon_drop", 1, NECK},
					},
					["g"] = {
						i(110056),	-- Black Iron Sniper Rifle
						i(110017),	-- Enforcer's Stun Grenade
						n(TITANFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110056),	-- Black Iron Sniper Rifle
							i(110017),	-- Enforcer's Stun Grenade
						})),
					},
				}),
				e(1237, {	-- Oshir
					["crs"] = { 79852 },	-- Oshir
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, WRIST},
						{"sub", "common_wod_dungeon_drop", 1, WAIST},
					},
					["g"] = {
						i(110057),	-- Mindbreaker Scepter
						i(109997),	-- Kihra's Adrenaline Injector
						n(TITANFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110057),	-- Mindbreaker Scepter
							i(109997),	-- Kihra's Adrenaline Injector
						})),
					},
				}),
				e(1238, {	-- Skulloc
					["crs"] = {
						83613,	-- Koramar
						83612,	-- Skulloc
						83616,	-- Zoggosh
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 1, HANDS},
						{"sub", "common_wod_dungeon_drop", 1, LEGS},
					},
					["g"] = {
						ach(9038),	-- Iron Docks
						i(110059),	-- Chasmwrench Docking Hook
						i(110058),	-- Bloodied Hand of Woe
						i(110060),	-- Painbringer's Crystal
						n(TITANFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110059),	-- Chasmwrench Docking Hook
							i(110058),	-- Bloodied Hand of Woe
							i(110060),	-- Painbringer's Crystal
						})),
					},
				}),
			}),
			d(2,  {	-- Heroic
				n(ACHIEVEMENTS, {
					ach(9081),	-- Expert Timing
				}),
				e(1235, {	-- Fleshrender Nok'gar
					["crs"] = {
						81297,	-- Dreadfang
						81305,	-- Fleshrender Nok'gar
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, CHEST},
						{"sub", "common_wod_dungeon_drop", 2, FINGER},
					},
					["g"] = {
						ach(9083),	-- Militaristic, Expansionist
						i(110055),	-- Gutwrench Goreaxe
						i(110002),	-- Fleshrender's Meathook
					},
				}),
				e(1236, {	-- Grimrail Enforcers
					["crs"] = {
						80816,	-- Ahri'ok Dugru
						80805,	-- Makogg Emberblade
						80808,	-- Neesa Nox
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, HEAD},
						{"sub", "common_wod_dungeon_drop", 2, NECK},
					},
					["g"] = {
						i(110056),	-- Black Iron Sniper Rifle
						i(110017),	-- Enforcer's Stun Grenade
					},
				}),
				e(1237, {	-- Oshir
					["crs"] = { 79852 },	-- Oshir
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, WRIST},
						{"sub", "common_wod_dungeon_drop", 2, WAIST},
					},
					["g"] = {
						i(110057),	-- Mindbreaker Scepter
						i(109997),	-- Kihra's Adrenaline Injector
					},
				}),
				e(1238, {	-- Skulloc
					["crs"] = {
						83613,	-- Koramar
						83612,	-- Skulloc
						83616,	-- Zoggosh
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 2, HANDS},
						{"sub", "common_wod_dungeon_drop", 2, LEGS},
					},
					["g"] = {
						ach(9047),	-- Heroic: Iron Docks
						ach(9082),	-- Take Cover!
						i(110059),	-- Chasmwrench Docking Hook
						i(110058),	-- Bloodied Hand of Woe
						i(110060),	-- Painbringer's Crystal
					},
				}),
			}),
			d(23, {	-- Mythic
				e(1235, {	-- Fleshrender Nok'gar
					["crs"] = {
						81297,	-- Dreadfang
						81305,	-- Fleshrender Nok'gar
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 23, CHEST},
						{"sub", "common_wod_dungeon_drop", 23, FINGER},
					},
					["g"] = {
						i(110055),	-- Gutwrench Goreaxe
						i(110002),	-- Fleshrender's Meathook
					},
				}),
				e(1236, {	-- Grimrail Enforcers
					["crs"] = {
						80816,	-- Ahri'ok Dugru
						80805,	-- Makogg Emberblade
						80808,	-- Neesa Nox
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 23, HEAD},
						{"sub", "common_wod_dungeon_drop", 23, NECK},
					},
					["g"] = {
						i(110056),	-- Black Iron Sniper Rifle
						i(110017),	-- Enforcer's Stun Grenade
					},
				}),
				e(1237, {	-- Oshir
					["crs"] = { 79852 },	-- Oshir
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 23, WRIST},
						{"sub", "common_wod_dungeon_drop", 23, WAIST},
					},
					["g"] = {
						i(110057),	-- Mindbreaker Scepter
						i(109997),	-- Kihra's Adrenaline Injector
					},
				}),
				e(1238, {	-- Skulloc
					["crs"] = {
						83613,	-- Koramar
						83612,	-- Skulloc
						83616,	-- Zoggosh
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 23, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 23, HANDS},
						{"sub", "common_wod_dungeon_drop", 23, LEGS},
					},
					["g"] = {
						ach(10079),	-- Mythic: Iron Docks
						i(110059),	-- Chasmwrench Docking Hook
						i(110058),	-- Bloodied Hand of Woe
						i(110060),	-- Painbringer's Crystal
					},
				}),
			}),
			-- #if AFTER 8.1.5.29701
			d(24, {	-- Timewalking
				["sym"] = {	-- link in Timewalking content
					{"sub", "tw_instance", 558 },	-- this instance version of timewalking
				},
			}),
			-- #endif
		},
	}),
})};
root("HiddenQuestTriggers", {
	tier(WOD_TIER, {
		q(34536),	-- Iron Docks Challenge Mode - Bronze Addition (Nth)
		q(34526),	-- Iron Docks Challenge Mode - Consolation (Nth)
		q(34538),	-- Iron Docks Challenge Mode - Gold Addition (Nth)
		q(34537),	-- Iron Docks Challenge Mode - Silver Addition (Nth)
		q(35958),	-- Iron Docks Reward Quest
	}),
});