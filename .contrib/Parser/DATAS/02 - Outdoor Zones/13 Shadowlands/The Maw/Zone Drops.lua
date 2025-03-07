---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------
root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.1.0" } }, {
	m(THE_MAW, {
		n(ZONE_DROPS, {
			i(187253, {	-- Maw Guard's Spiked Spaulders
				["crs"] = {
					167322,	-- Mawsworn Shackler
				},
			}),
			i(187252, {	-- Ritualist's Spiked Mantle
				["crs"] = {
					168977,	-- Mawsworn Thaumaturge
				},
			}),
		--	Blues
			i(186564, {	-- Golden Eye
				["cr"] = 177132,	-- Helsworn Soulseeker
			}),
			i(186559, {	-- Grappling Gauntlet
				["crs"] = {
					173138,	-- Mawsworn Outrider
					157824,	-- Protector of Flame
				},
			}),
			i(186727, {	-- Seal Breaker Key
				["questID"] = 62679,
				["cr"] = 177134,	-- Maldraxxi Defector
			}),
		--	Greens
			i(182771, {	-- Flickering Eviscerator
				["crs"] = {
					170694,	-- Spectral Assassin
				},
				["timeline"] = { "added 9.0.2" },
			}),
			i(183059, {	-- Mawsworn Shackles
				["crs"] = { 167322, 176198 },	-- Mawsworn Shackler
				["timeline"] = { "added 9.0.2" },
			}),
			i(186161),	-- Stygian Lockbox
		}),
	}),
})));