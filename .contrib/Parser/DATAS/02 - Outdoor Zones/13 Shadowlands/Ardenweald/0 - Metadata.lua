---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.0.2" } }, {
	m(ARDENWEALD, {
		["achievementID"] = 14304,	-- Explore Ardenweald
		["lore"] = "A vibrant afterlife for those closely connected to the wild, Ardenweald is a domain of endless restoration tended by the mystic night fae. Within this eternal forest, massive dream trees draw in precious anima —soul essence— to feed the spirits of nature awaiting rebirth.",
		["maps"] = {
			1829,	-- Ardenweald_Micro_B
			1816,	-- Claw's Edge (submap for the inn)
			1824,	-- Matriarch's Den
			1825,	-- The Root Cellar (Marasmius daily)
			1826,	-- The Root Cellar (Marasmius daily)
			1827,	-- The Root Cellar (Marasmius daily)
			1818,	-- Tirna Vaal
		},
	}),
})));