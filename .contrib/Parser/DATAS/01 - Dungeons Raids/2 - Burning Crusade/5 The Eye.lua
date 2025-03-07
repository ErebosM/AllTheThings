-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- #if ANYCLASSIC
local legendary = function(itemID, creatureID)
	if creatureID then
		return i(itemID, {
			["cr"] = creatureID,
		});
	else
		return i(itemID);
	end
end;
-- #else
local legendary = function(itemID, creatureID)
	if creatureID then
		return i(itemID, {
			["collectible"] = false,
			["cr"] = creatureID,
			["u"] = 15,
		});
	else
		return i(itemID, {
			["collectible"] = false,
			["u"] = 15,
		});
	end
end;
-- #endif
root("Instances", tier(TBC_TIER, applyclassicphase(TBC_PHASE_TWO, {
	inst(749, {	-- The Eye
		["lore"] = "With Outland serving as the strategic battlefront in the ongoing Burning Crusade, the Naaru used Tempest Keep to reach the shattered land. However, when the Naaru set out from their stronghold, Prince Kael'thas and his blood elves quickly raided the dimensional fortress and assumed control over its satellite structures. Guided by some unknown purpose, Kael'thas manipulates the keep’s otherworldly technologies, using them to harness the chaotic energies of the Netherstorm itself.",
		["coord"] = { 73.73, 63.71, NETHERSTORM },	-- The Eye, Netherstorm
		["mapID"] = TEMPEST_KEEP_THE_EYE,
		-- #if BEFORE WRATH
		["sourceQuest"] = 10888,	-- Trial of the Naaru: Magtheridon
		-- #endif
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = lvlsquish(70, 30, 68),	-- The attunement quests were originally level 70 required, but once removed, level 68s could zone in.
		["groups"] = {
			n(QUESTS, {
				q(11007, {	-- Kael'thas and the Verdant Sphere
					["provider"] = { "i", 32405 },	-- Verdant Sphere
					["groups"] = {
						i(30018),	-- Lord Sanguinar's Claim
						i(30017),	-- Telonicus' Pendant of Mayhem
						i(30007),	-- The Darkener's Grasp
						i(30015),	-- The Sun King's Talisman
					},
				}),
				q(10946, {	-- Ruse of the Ashtongue
					["qg"] = 21700,	-- Akama
					["sourceQuest"] = 10944,	-- The Secret Compromised
					["coord"] = { 58.0, 48.2, SHADOWMOON_VALLEY },
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 31946 },	-- Ashtongue Cowl
							["cr"] = 19514,	-- A'lar
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				["crs"] = {
					20043,	-- Apprentice Star Scryer
					20033,	-- Astromancer
					20046,	-- Astromancer Lord
					20031,	-- Bloodwarder Legionnaire
					20035,	-- Bloodwarder Marshal
					20036,	-- Bloodwarder Squire
					20032,	-- Bloodwarder Vindicator
					20047,	-- Crimson Hand Battle Mage
					20049,	-- Crimson Hand Blood Knight
					20048,	-- Crimson Hand Centurion
					20050,	-- Crimson Hand Inquisitor
					20040,	-- Crystalcore Devastator
					20052,	-- Crystalcore Mechanic
					20041,	-- Crystalcore Sentinel
					20045,	-- Nether Scryer
					20044,	-- Novice Astromancer
					20039,	-- Phoenix-Hawk
					20034,	-- Star Scryer
					20037,	-- Tempest Falconer
					20042,	-- Tempest-Smith
					19514,	-- Al'ar
					19516,	-- Void Reaver
					18805,	-- High Astromancer Solarian
					19622,	-- Kael'thas Sunstrider
				},
				["groups"] = {
					i(30280),	-- Pattern: Belt of Blasting
					i(30302, {	-- Pattern: Belt of Deep Shadow
						["spellID"] = 36351,	-- Belt of Deep Shadow
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30301, {	-- Pattern: Belt of Natural Power
						["spellID"] = 36349,	-- Belt of Natural Power
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30303, {	-- Pattern: Belt of the Black Eagle
						["spellID"] = 36352,	-- Belt of the Black Eagle
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30281),	-- Pattern: Belt of the Long Road
					i(30282),	-- Pattern: Boots of Blasting
					i(30305, {	-- Pattern: Boots of Natural Grace
						["spellID"] = 36355,	-- Boots of Natural Grace
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30307, {	-- Pattern: Boots of the Crimson Hawk
						["spellID"] = 36358,	-- Boots of the Crimson Hawk
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30283),	-- Pattern: Boots of the Long Road
					i(30306, {	-- Pattern: Boots of Utter Darkness
						["spellID"] = 36357,	-- Boots of Utter Darkness
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30308, {	-- Pattern: Hurricane Boots
						["spellID"] = 36359,	-- Hurricane Boots
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30304, {	-- Pattern: Monsoon Belt
						["spellID"] = 36353,	-- Monsoon Belt
						["requireSkill"] = LEATHERWORKING,
						["f"] = RECIPES,
					}),
					i(30321),	-- Plans: Belt of the Guardian
					i(30323),	-- Plans: Boots of the Protector
					i(30322),	-- Plans: Red Belt of Battle
					i(30324),	-- Plans: Red Havoc Boots
					i(30026),	-- Bands of the Celestial Archer
					i(30029),	-- Bark-Gloves of Ancient Wisdom
					i(30020),	-- Fire-Cord of the Magus
					i(30030),	-- Girdle of Fallen Stars
					i(30024),	-- Mantle of the Elven Kings
					i(30028),	-- Seventh Ring of the Tirisfalen
					i(30183),	-- Nether Vortex
				},
			}),
			e(1573, {	-- Al'ar
				["creatureID"] = 19514,
				["groups"] = {
					i(97557, {	-- Brilliant Phoenix Hawk Feather (PET!)
						["timeline"] = { "added 5.3.0.16758" },
					}),
					i(29949),	-- Arcanite Steam-Pistol
					i(29948),	-- Claw of the Phoenix
					i(29924),	-- Netherbane
					i(29923),	-- Talisman of the Sun King
					i(32944),	-- Talon of the Phoenix
					i(29925),	-- Phoenix-Wing Cloak
					i(29921),	-- Fire Crest Breastplate
					i(29918),	-- Mindstorm Wristbands
					i(29947),	-- Gloves of the Searing Grip
					i(29922),	-- Band of Al'ar
					i(29920),	-- Phoenix-Ring of Rebirth
					i(30448, {	-- Talon of Al'ar
						["classes"] = { HUNTER },
					}),
					i(30447, {	-- Tome of Fiery Redemption
						["classes"] = { PALADIN },
					}),
				},
			}),
			e(1574, {	-- Void Reaver
				["creatureID"] = 19516,
				["groups"] = {
					i(97555, {	-- Tiny Fel Engine Key (PET!)
						["timeline"] = { "added 5.3.0.16758" },
					}),
					i(30248, {	-- Pauldrons of the Vanquished Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(30249, {	-- Pauldrons of the Vanquished Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(30250, {	-- Pauldrons of the Vanquished Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(29986),	-- Cowl of the Grand Engineer
					i(29983),	-- Fel-Steel Warhelm
					i(32515),	-- Wristguards of Determination
					i(29984),	-- Girdle of Zaetar
					i(29985),	-- Void Reaver Greaves
					i(30619),	-- Fel Reaver's Piston
					i(30450, {	-- Warp-Spring Coil
						["classes"] = { ROGUE },
					}),
				},
			}),
			e(1575, {	-- High Astromancer Solarian
				["creatureID"] = 18805,
				["groups"] = {
					i(97556, {	-- Crystal of the Void (PET!)
						["timeline"] = { "added 5.3.0.16758" },
					}),
					i(29981),	-- Ethereum Life-Staff
					i(29962),	-- Heartrazor
					i(29982),	-- Wand of the Forgotten Star
					i(29966),	-- Vambraces of Ending
					i(29976),	-- Worldstorm Gauntlets
					i(29965),	-- Girdle of the Righteous Path
					i(29950),	-- Greaves of the Bloodwarder
					i(29977),	-- Star-Soul Breeches
					i(29972),	-- Trousers of the Astromancer
					i(32267),	-- Boots of the Resilient
					i(29951),	-- Star-Strider Boots
					i(30446, {	-- Solarian's Sapphire
						["classes"] = { WARRIOR },
					}),
					i(30449, {	-- Void Star Talisman
						["classes"] = { WARLOCK },
					}),
				},
			}),
			e(1576, {	-- Kael'thas Sunstrider
				["creatureID"] = 19622,
				["groups"] = {
					removeclassicphase(ach(696, {	-- Tempest Keep
						-- #if BEFORE 3.0.1
						["sourceQuests"] = {
							10445,	-- The Vials of Eternity
							11007,	-- Kael'thas and the Verdant Sphere
						},
						["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(10445) or C_QuestLog.IsQuestFlaggedCompleted(11007)); end]],
						-- #endif
					})),
					removeclassicphase(ach(885, {	-- Ashes of Al'ar
						["provider"] = { "i", 32458 },	-- Ashes of Al'ar
						["filterID"] = MOUNTS,
						-- #if BEFORE WRATH
						["description"] = "Obtain the Ashes of Al'ar from Kael'thas Sunstrider in Tempest Keep.",
						["OnUpdate"] = [[function(t)
							local collected = false;
							for i,provider in ipairs(t.providers) do
								if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
									collected = true;
									break;
								end
							end
							t.SetAchievementCollected(t.achievementID, collected);
						end]],
						-- #endif
					})),
					i(32458),	-- Ashes of Al'ar (MOUNT!)
					i(32405),	-- Verdant Sphere
					i(30236, {	-- Chestguard of the Vanquished Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(30237, {	-- Chestguard of the Vanquished Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(30238, {	-- Chestguard of the Vanquished Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(29996),	-- Rod of the Sun King
					i(29988),	-- The Nexus Key
					i(29993),	-- Twinblade of the Phoenix
					i(29990),	-- Crown of the Sun
					i(29992),	-- Royal Cloak of the Sunstriders
					i(29987),	-- Gauntlets of the Sun King
					i(29998),	-- Royal Gauntlets of Silvermoon
					i(29989),	-- Sunshower Light Cloak
					i(29994),	-- Thalassian Wildercloak
					i(29995),	-- Leggings of Murderous Intent
					i(29991),	-- Sunhawk Leggings
					i(29997),	-- Band of the Ranger-General
					i(30320, {	-- Bundle of Nether Spikes
						["description"] = "Contains 6 stacks of Nether Spike arrows.",
						["timeline"] = { "removed 4.0.1.10000" },
						["cr"] = 21268,	-- Netherstrand Longbow
						["groups"] = {
							i(30319, {	-- Nether Spike
								["timeline"] = { "removed 4.0.1.10000" },
							}),
						},
					}),
					legendary(30317, 21270),	-- Cosmic Infuser
					legendary(30316, 21269),	-- Devastation
					legendary(30312, 21271),	-- Infinity Blade
					legendary(30318, 21268),	-- Netherstrand Longbow
					legendary(30314, 21273),	-- Phaseshift Bulwark
					legendary(30313, 21274),	-- Staff of Disintegration
					legendary(30311, 21272),	-- Warp Slicer
					i(32896, {	-- Scroll of the Sun
						["timeline"] = { "removed 4.0.3.10000" },	-- TODO: Determine exactly when to remove this.
						["groups"] = {
							i(32897),	-- Mark of the Illidari
						},
					}),
					i(29905),	-- Kael's Vial Remnant
				},
			}),
		},
	}),
})));