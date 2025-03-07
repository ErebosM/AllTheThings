-- Skinning - Skill ID 393 / Spell ID 8613
profession(SKINNING, {
	n(DROPS, {
		i(111351, {		-- A Guide to Skinning in Draenor
			["collectible"] = false,
			["description"] = "This can drop from any Warlords of Draenor mob after skinning it.",
		}),
		n(103675, {	-- Felhide Gargantuan
			["description"] = "These mobs are only available during a World Quest. They can only be skinned one time, similarly to the Slice of Bacon cooking quests.",
			["groups"] = {
				i(124116, {	-- Felhide
					q(40156, {	-- Felhide Sample
						["provider"] = { "i", 129863 },	-- Felhide Sample
						["maps"] = {
							AZSUNA,
							HIGHMOUNTAIN,
							STORMHEIM,
							VALSHARAH,
						},
						["groups"] = {
							recipe(194167),	-- Felhide [Rank 1]
						},
					}),
					q(40157, {	-- An Unseemly Task
						["sourceQuest"] = 40156,	-- Felhide Sample
						["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
					}),
					q(40158, {	-- Darkheart Thicket: Demons Be Different
						["sourceQuest"] = 40157,	-- An Unseemly Task
						["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
						["groups"] = {
							recipe(194168),	-- Felhide [Rank 2]
						},
					}),
					q(40159, {	-- The Emerald Nightmare: The Pestilential Hide of Nythendra
						["sourceQuest"] = 40158,	-- Darkheart Thicket: Demons Be Different
						["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
						["groups"] = {
							recipe(194169),	-- Felhide [Rank 3]
						},
					}),
				}),
			},
		}),
		i(151566, {	-- Fiendish Leather
			q(48040, {	-- Tainted Scraps
				["provider"] = { "i", 151866 },	-- Tainted Scraps
				["maps"] = {
					885,	-- Antoran Wastes
					830,	-- Krokuun
					882,	-- Eredath
				},
				["groups"] = {
					recipe(247842),	-- Fiendish Leather [Rank 1]
				},
			}),
			q(48041, {	-- A Larger Cut
				["provider"] = { "i", 151867 },	-- Spoiled Fiendish Leather
				["sourceQuest"] = 48040,	-- Tainted Scraps
				["maps"] = {
					885,	-- Antoran Wastes
					830,	-- Krokuun
					882,	-- Eredath
				},
				["groups"] = {
					recipe(247843),	-- Fiendish Leather [Rank 2]
				},
			}),
			q(48042, {	-- Order of Operations
				["provider"] = { "i", 151868 },	-- Corrupted Tooth
				["sourceQuest"] = 48041,	-- A Larger Cut
				["maps"] = {
					885,	-- Antoran Wastes
					830,	-- Krokuun
					882,	-- Eredath
				},
				["groups"] = {
					recipe(247844),	-- Fiendish Leather [Rank 3]
				},
			}),
		}),
		i(124115, {	-- Stormscale
			q(40141, {	-- Stormscale Sample
				["provider"] = { "i", 129862 },	-- Stormscale Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40142, {	-- The Core of the Stormscale
				["sourceQuest"] = 40141,	-- Stormscale Sample
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["groups"] = {
					recipe(194164),	-- Stormscale [Rank 1]
				},
			}),
			q(40143, {	-- Unfinished Treatise on the Properties of Stormscale
				["provider"] = { "i", 129865 },	-- Unfinished Treatise on the Properties of Stormscale
				["sourceQuests"] = { 40142 },	-- The Core of the Stormscale
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40144, {	-- Glielle
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40145, {	-- Under Down
				["sourceQuest"] = 40144,	-- Glielle
				["provider"] = { "n", 98791 },	-- Glielle <Skinning Trainer>
				["coord"] = { 47.0, 45.2, AZSUNA },
				["groups"] = {
					recipe(194165),	-- Stormscale [Rank 2]
				},
			}),
			q(40146, {	-- Seymour and Agnes
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40147, {	-- Mother's Prized Knife
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["provider"] = { "n", 98721 },	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
			}),
			q(40148, {	-- Red-Eyed Revenge
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["provider"] = { "n", 98721 },	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
			}),
			q(40149, {	-- Drakol'nir Must Die
				["sourceQuests"] = {
					40147,	-- Mother's Prized Knife
					40148	-- Seymour and Agnes
				},
				["provider"] = { "n", 98721 },	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
				["groups"] = {
					i(130102),	-- Mother's Skinning Knife
				},
			}),
			q(40151, {	-- Immaculate Stormscale
				["provider"] = { "i", 129867 },	-- Immaculate Stormscale
				["sourceQuest"] = 40145,	-- Under Down
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40152, {	-- Scales for Ske'rit
				["sourceQuest"] = 40151,	-- Immaculate Stormscale
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["maps"] = { LEGION_DALARAN },	-- TODO replace with coord
			}),
			q(40153, {	-- Return to Karazhan: Scales of Legend
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
			}),
			q(40154, {	-- Eye of Azshara: The Scales of Serpentrix
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
			}),
			q(40155, {	-- Eye of Azshara: The Scales of Serpentrix
				["sourceQuests"] = {
					40153,	-- Return to Karazhan: Scales of Legend
					40154	-- Eye of Azshara: The Scales of Serpentrix
				},
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
				["groups"] = {
					recipe(194166),	-- Stormscale [Rank 3]
				},
			}),
		}),
		i(124113, {	-- Stonehide Leather
			q(40131, {	-- Stonehide Leather Sample
				["provider"] = { "i", 129860 },	-- Stonehide Leather Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40132, {	-- In One Piece
				["sourceQuest"] = 40131,	-- Stonehide Leather Sample
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.6, LEGION_DALARAN },
				["groups"] = {
					recipe(194161),	-- Stonehide Leather [Rank 1]
				},
			}),
			q(40133, {	-- Scrap of Pants
				["sourceQuest"] = 40132,	-- In One Piece
				["provider"] = { "i", 129864 },	-- Scrap of Pants
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40134, {	-- Highmountain Hides
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["provider"] = { "n", 94409 },	-- Hemet Nesingwary <Hemet's Hunting Party>
				["groups"] = {
					i(130064, {	-- Deadeye Monocle
						["description"] = "In order to mark this item as collected you will need to do a Shift+Click on the header.",
					}),
				},
			}),
			q(40135, {	-- The Freedom to Roam
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["provider"] = { "n", 94409 },	-- Hemet Nesingwary <Hemet's Hunting Party>
				["groups"] = {
					recipe(194162),	-- Stonehide Leather [Rank 2]
				},
			}),
			q(40136, {	-- Immaculate Stonehide Leather
				["sourceQuest"] = 40135,	-- In One Piece
				["provider"] = { "i", 129866 },	-- Immaculate Stonehide Leather
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40137, {	-- Leather for Ske'rit
				["sourceQuest"] = 40136,	-- Immaculate Stonehide Leather
				["provider"] = { "n", 93541 },	-- Kondal Huntsworn <Skinning Trainer>
				["maps"] = { SURAMAR },
			}),
			q(40138, {	-- Trial of the Crusader: Hides of Legend
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
			}),
			q(40139, {	-- Halls of Valor: The Hide of Fenryr
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
			}),
			q(40140, {	-- Ske'rit's Leather Handbook
				["sourceQuests"] = {
					40138,	-- Trial of the Crusader: Hides of Legend
					40139	-- Halls of Valor: The Hide of Fenryr
				},
				["provider"] = { "n", 98720 },	-- Ske'rit <Skinning Trainer>
				["groups"] = {
					recipe(194163),    -- Stonehide Leather [Rank 3]
				},
			}),
		}),
	}),
	filter(BATTLE_PETS, {
		i(153057),	-- Fossorial Bile Larva
	}),
	filter(TOYS, {
		i(130102),	--  Mother's Skinning Knife
	}),
	--[==[--
	filter(RECIPES, {
		tier(LEGION_TIER, {
			recipe(194167),	-- Felhide [Rank 1]
			recipe(194168),	-- Felhide [Rank 2]
			recipe(194169),	-- Felhide [Rank 3]
			recipe(247842),	-- Fiendish Leather [Rank 1]
			recipe(247843),	-- Fiendish Leather [Rank 2]
			recipe(247844),	-- Fiendish Leather [Rank 3]
			recipe(194173),	-- Legion Butchery
			recipe(194203),	-- Legion Gutting
			recipe(194161),	-- Stonehide Leather [Rank 1]
			recipe(194162),	-- Stonehide Leather [Rank 2]
			recipe(194163),	-- Stonehide Leather [Rank 3]
			recipe(194164),	-- Stormscale [Rank 1]
			recipe(194165),	-- Stormscale [Rank 2]
			recipe(194166),	-- Stormscale [Rank 3]
			recipe(194171),	-- Unbroken Claw
			recipe(194170),	-- Unbroken Tooth
		}),
		tier(BFA_TIER, {
			recipe(257152),	-- Bone Gathering [Rank 1]
			recipe(257153),	-- Bone Gathering [Rank 2]
			recipe(257154),	-- Bone Gathering [Rank 3]
			recipe(257146),	-- Leather Gathering [Rank 1]
			recipe(257147),	-- Leather Gathering [Rank 2]
			recipe(257148),	-- Leather Gathering [Rank 3]
			recipe(257149),	-- Scale Gathering [Rank 1]
			recipe(257150),	-- Scale Gathering [Rank 2]
			recipe(257151),	-- Scale Gathering [Rank 3]
		}),
	}),
	--]==]--
});
