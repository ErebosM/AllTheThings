---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(KALIMDOR, {
		m(DARNASSUS, {
			petbattle(filter(BATTLE_PETS, {
				p(479, {	-- Elfin Rabbit
					["crs"] = { 62178 },	-- Elfin Rabbit
				}),
				p(478, {	-- Forest Moth
					["crs"] = { 62177 },	-- Forest Moth
				}),
				p(452, {	-- Red-Tailed Chipmunk
					["crs"] = { 61757 },	-- Red-Tailed Chipmunk
				}),
				p(419, {	-- Small Frog
					["crs"] = { 61071 },	-- Small Frog
				}),
			})),
		}),
	}),
};
