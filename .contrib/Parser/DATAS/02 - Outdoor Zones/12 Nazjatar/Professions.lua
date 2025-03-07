---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(1355, {	-- Nazjatar
		n(PROFESSIONS, {
			prof(MINING, {
				q(56103, {	-- Ounces of Osmenite (A)
					["provider"] = { "i", 168939 },	-- Osmenite Shards
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						recipe(296147),	-- Mining Technique: Osmenite Deposit (Rank 3)
					},
				}),
				q(56431, {	-- Ounces of Osmenite (H)
					["provider"] = { "i", 169597 },	-- Osmenite Shards
					["races"] = HORDE_ONLY,
					["g"] = {
						recipe(296147),	-- Mining Technique: Osmenite Deposit (Rank 3)
					},
				}),
				q(56126, {	-- Seams to be a Problem (A)
					["provider"] = { "i", 168954 },	-- Osmenite Dust
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						recipe(296143),	-- Mining Technique: Osmenite Seam (Rank 3)
					},
				}),
				q(56432, {	-- Seams to be a Problem (H)
					["provider"] = { "i", 169598 },	-- Osmenite Dust
					["races"] = HORDE_ONLY,
					["g"] = {
						recipe(296143),	-- Mining Technique: Osmenite Seam (Rank 3)
					},
				}),
			}),
			prof(SKINNING, {
				q(56565, {	-- Hanging by a Thread (A)
					["provider"] = { "i", 169767 },	-- Deteriorating Cragscales
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
					},
				}),
				q(56566, {	-- Hanging by a Thread (H)
					["provider"] = { "i", 169779 },	-- Deteriorating Cragscales
					["races"] = HORDE_ONLY,
					["g"] = {
						recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
					},
				}),
				q(56562, {	-- The Problem with Shrinkage (A)
					["provider"] = { "i", 169775 },	-- Shriveled Leather Hide
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
					},
				}),
				q(56563, {	-- The Problem with Shrinkage (H)
					["provider"] = { "i", 169772 },	-- Shriveled Leather Hide
					["races"] = HORDE_ONLY,
					["g"] = {
						recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
					},
				}),
			}),
		}),
	}),
};
