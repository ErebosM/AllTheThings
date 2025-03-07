---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.0.2" } }, {
	m(MALDRAXXUS, {
		n(VENDORS, {
			n(166640, {	-- Au'larrynar <Enhancers>
				["coord"] = { 53.6, 47.9, MALDRAXXUS },
				["g"] = {
					i(180706),	-- Caustic Muck
					i(180657),	-- Crystallized Ichor
					i(179613),	-- Extra Sticky Spidey Webs
					i(181623),	-- Flourescent Slime Sample
					i(177957),	-- Necessary Enhancers
					i(180771),	-- Potion of Unusual Strength
					i(180659),	-- Soul Siphoning Shard
					i(180969, {	-- Spiral Deathroc Horn
						["description"] = "Take this to Ta'ruca in Revendreth |cffffffff(51.1, 78.8)|r.",
					}),
					i(180694),	-- Tome of Power
					i(180658),	-- Witherlight Crystal
					i(179939),	-- Wriggling Spider Sac
				},
			}),
			n(168429, {	-- Melody Madcap <Fungus and Drinks>
				["coord"] = { 40.2, 41.2, MALDRAXXUS },
				["g"] = {
					i(184203),	-- Fungal Hair Tonic
				},
			}),
			n(173003, {	-- Nalcorn Talsen <Undying Army Quartermaster>
				["coord"] = { 50.6, 53.4, MALDRAXXUS },
				["g"] = {
					i(182082, {	-- Lurid Bloodtusk (MOUNT)
						["cost"] = 300000000, -- 30,000g
					}),
					i(183112, {	-- Animated Radius
						["description"] = "Combine with the other bones to craft the pet:\n|cFF0070ddAnimated Ulna|r: A rare reward from pet battle WQs in Maldraxxus.\n|cFF0070ddFlexing Phalanges|r: Skeletal Hand Fragments (47.4, 62.1 in Maldraxxus).",
						["cost"] = { { "i", 163036, 250 } },	-- 250x Polished Pet Charm
						["g"] = {
							i(183114),	-- Carpal (PET!)
						},
					}),
					i(181272, {	-- Toenail
						["cost"] = { { "i", 163036, 250 } },	-- 250x Polished Pet Charm
					}),
					i(183101, {	-- Pattern: Shadowlace Cloak
						["cost"] = 13500000, -- 1,350g
					}),
					i(183095, {	-- Plans: Shadowsteel Pauldrons
						["cost"] = 13500000, -- 1,350g
					}),
					i(183858, {	-- Schematic: Wormhole Generator: Shadowlands
						["cost"] = 13500000, -- 1,350g
					}),
					i(183104, {	-- Technique: Contract: The Undying Army
						["cost"] = 17650000, -- 1,765g
						["recipeID"] = 311411,
					}),
					i(184741),	-- Apprentice Necromancer's Gloves
					i(184738),	-- Chainmail of the March Warden
					i(184737),	-- Chestplate of the March Warden
					i(180456, {	-- Colors of the Undying Army
						["cost"] = 2500000, -- 250g
					}),
					i(184740),	-- Fortified Jawcrackers
					i(184744),	-- Gnarled Boneloop
					i(183189, {	-- Illusion: Undying Spirit
						["cost"] = 12500000, -- 1,250g
					}),
					i(183244, {	-- Memory of the Rattle of the Maw
						["cost"] = 11000000, -- 1,100g
					}),
					i(184739),	-- Pallid Stitched Gloves
					i(184742),	-- Rattling Bonefists
					i(184736),	-- Robe of the March Warden
					i(184745),	-- Tunic of the March Warden
					i(190644, {	-- Vessel of Profound Possibilities
						["timeline"] = { "added 9.2.0" },
						["sym"] = {
							{"select","tierID",SL_TIER},{"pop"},	-- SL Tier
							{"where","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
						},
					}),
					n(NECROLORD, sharedData({["customCollect"] = { "SL_COV_NEC" }},{
						i(181807, {	-- Barbarous Osteowings
							["cost"] = 5000000, -- 500g
						}),
						i(181808, {	-- Death Fetish
							["cost"] = 5000000, -- 500g
						}),
					})),
				},
			}),
			n(169964, {	-- One-Eyed Joby <Unusual Wares>
				["coord"] = { 53.2, 41.2, MALDRAXXUS },
				["g"] = {
					i(181798),	-- Stuffed Construct
				},
			}),
			n(164588, {	-- Shinbone Slim <Food and Attire>
				["coord"] = { 47.0, 48.8, MALDRAXXUS },
				["g"] = {
					i(184036),	-- Dundae's Hat
				},
			}),
		}),
	}),
})));