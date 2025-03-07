--------------------------------------------------
--    A C H I E V E M E N T S    M O D U L E    --
--------------------------------------------------

root("Achievements", pvp(achcat(ACHIEVEMENT_CATEGORY_PVP, {
	achcat(ACHIEVEMENT_CATEGORY_WINTERGRASP, {
		ach(1752, {	-- Master of Wintergrasp
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {
				{"select","achievementID",
					1722,	-- Archavon the Stone Watcher (10 player)
					1721,	-- Archavon the Stone Watcher (25 player)
					2080,	-- Black War Mammoth
					1737,	-- Destruction Derby (A)
					2476,	-- Destruction Derby (H)
					1751,	-- Didn't Stand a Chance
					1727,	-- Leaning Tower
					1723,	-- Vehicular Gnomeslaughter
					2199,	-- Wintergrasp Ranger
					1718,	-- Wintergrasp Veteran
					1755,	-- Within Our Grasp
				},
			},
		}),
		ach(1717, {	-- Wintergrasp Victory
			["rank"] = 1,
		}),
		ach(1718, {	-- Wintergrasp Veteran
			["rank"] = 100,
		}),
		ach(1722),	-- Archavon the Stone Watcher [10 Man]
		ach(1721),	-- Archavon the Stone Watcher [25 Man]
		ach(2080),	-- Black War Mammoth
		ach(1737, {	-- Destruction Derby (A)
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				crit(1),	-- Wintergrasp Catapult
				crit(2),	-- Wintergrasp Demolisher
				crit(3),	-- Wintergrasp Siege Engine
				crit(4),	-- Wintergrasp Tower Cannon
			},
		}),
		ach(2476, {	-- Destruction Derby (H)
			["races"] = HORDE_ONLY,
			["g"] = {
				crit(1),	-- Wintergrasp Catapult
				crit(2),	-- Wintergrasp Demolisher
				crit(3),	-- Wintergrasp Siege Engine
				crit(4),	-- Wintergrasp Tower Cannon
			},
		}),
		ach(1751),	-- Didn't Stand a Chance
		ach(3136),	-- Emalon the Storm Watcher (10 player)
		ach(3137),	-- Emalon the Storm Watcher (25 player)
		ach(3836),	-- Koralon the Flame Watcher (10 player)
		ach(3837),	-- Koralon the Flame Watcher (25 player)
		ach(1727),	-- Leaning Tower
		ach(4585),	-- Toravon the Ice Watcher (10 player)
		ach(4586),	-- Toravon the Ice Watcher (25 player)
		ach(1723),	-- Vehicular Gnomeslaughter
		ach(2199, {	-- Wintergrasp Ranger
			crit(1),	-- Wintergrasp Fortress
			crit(2),	-- Eastspark Workshop
			crit(3),	-- Flamewatch Tower
			crit(4),	-- The Broken Temple
			crit(5),	-- Shadowsight Tower
			crit(6),	-- The Cauldron of Flames
			crit(7),	-- The Sunken Ring
			crit(8),	-- Winter's Edge Tower
			crit(9),	-- Westspark Workshop
			crit(10),	-- The Chilled Quagmire
		}),
		ach(1755),	-- Within Our Grasp
	}),
})));
