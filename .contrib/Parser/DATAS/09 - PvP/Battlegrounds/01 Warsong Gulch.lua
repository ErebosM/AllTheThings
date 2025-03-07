-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
local ALLIANCE_FIGHT_FOR_WSG_TIER_1 = {
	8372,	-- Fight for Warsong Gulch
	8399,	-- Fight for Warsong Gulch
	8400,	-- Fight for Warsong Gulch
	8401,	-- Fight for Warsong Gulch
	8402,	-- Fight for Warsong Gulch
	8403,	-- Fight for Warsong Gulch
};
local ALLIANCE_FIGHT_FOR_WSG_TIER_2 = {	-- Repeatables
	8386,	-- Fight for Warsong Gulch
	8404,	-- Fight for Warsong Gulch
	8405,	-- Fight for Warsong Gulch
	8406,	-- Fight for Warsong Gulch
	8407,	-- Fight for Warsong Gulch
	8408,	-- Fight for Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_1 = {
	8368,	-- Battle of Warsong Gulch
	8426,	-- Battle of Warsong Gulch
	8427,	-- Battle of Warsong Gulch
	8428,	-- Battle of Warsong Gulch
	8429,	-- Battle of Warsong Gulch
	8430,	-- Battle of Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_2 = {	-- Repeatables
	8389,	-- Battle of Warsong Gulch
	8431,	-- Battle of Warsong Gulch
	8432,	-- Battle of Warsong Gulch
	8433,	-- Battle of Warsong Gulch
	8434,	-- Battle of Warsong Gulch
	8435,	-- Battle of Warsong Gulch
};
local OnTooltipForWarsongGulch = [[function(t)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
-- #if BEFORE TBC
		local repPerConcertedEffort = isHuman and 110 or 100;
		local x, n = math.ceil((42000 - reputation) / repPerConcertedEffort), math.ceil(42000 / repPerConcertedEffort);
		GameTooltip:AddDoubleLine("Concerted Efforts", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
-- #endif
		local repPerFlagCapture = isHuman and 38.5 or 35;
		local x, n = math.ceil((42000 - reputation) / repPerFlagCapture), math.ceil(42000 / repPerFlagCapture);
		GameTooltip:AddDoubleLine("Flags Captured", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddLine(" Each capture is worth " .. repPerFlagCapture .. " rep, +10 on WSG Weekend.", 1, 1, 1);
	end
end]];
local HERO_OF_WARSONG_ALLIANCE_OnUpdate = [[function(t)
	if t.collectible then
		if not t.wsg then
			local f = _.SearchForField("factionID", 890);
			if f and #f > 0 then
				t.wsg = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.wsg.standing == 8);
	end
end]];
local HERO_OF_WARSONG_HORDE_OnUpdate = [[function(t)
	if t.collectible then
		if not t.wsg then
			local f = _.SearchForField("factionID", 889);
			if f and #f > 0 then
				t.wsg = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.wsg.standing == 8);
	end
end]];
local HERO_OF_WARSONG_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = _.CreateMiniListForGroup(_.CreateAchievement(t[t.key], { t.wsg })).data;
		clone.description = t.description;
		return true;
	end
end]];
local HERO_OF_WARSONG_OnTooltip = [[function(t)
	if t.collectible then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" |T" .. t.wsg.icon .. ":0|t " .. t.wsg.text, _.L[t.wsg.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
	end
end]];
root("PVP", pvp(n(BATTLEGROUNDS, {
	m(WARSONG_GULCH, {
		["lore"] = "Warsong Gulch is a 10v10 capture-the-flag style battleground that traces the conflict between the Silverwing Sentinels seeking revenge on the orcs that chopped down the Ashenvale forest during the Third War.",
		-- #if AFTER WRATH
		["achievementID"] = 166,	-- Warsong Gulch Victory
		["maps"] = {
			859,	-- Warsong Gulch
			1339,	-- Warsong Gulch
		},
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1172, {	-- Master of Warsong Gulch
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {
						{"select","achievementID",
							167,	-- Warsong Gulch Veteran
							199,	-- Capture the Flag
							200,	-- Persistent Defender
							872,	-- Frenzied Defender
							168,	-- Warsong Gulch Perfection
							201,	-- Warsong Expedience
							204,	-- Ironman
							203,	-- Not in My House (A)
							1251,	-- Not in My House (H)
							202,	-- Quick Cap (A)
							1502,	-- Quick Cap (H)
							206,	-- Supreme Defender (A)
							1252,	-- Supreme Defender (H)
							207,	-- Save the Day
						},
					},
				}),
				ach(166, {	-- Warsong Gulch Victory
					["rank"] = 1,
				}),
				ach(167, {	-- Warsong Gulch Veteran
					["rank"] = 100,
				}),
				ach(199),	-- Capture the Flag
				ach(200),	-- Persistent Defender
				ach(872),	-- Frenzied Defender
				ach(168),	-- Warsong Gulch Perfection
				ach(201),	-- Warsong Expedience
				ach(204),	-- Ironman
				ach(203, {	-- Not in My House (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1251, {	-- Not in My House (H)
					["races"] = HORDE_ONLY,
				}),
				ach(202, {	-- Quick Cap (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1502, {	-- Quick Cap (H)
					["races"] = HORDE_ONLY,
				}),
				ach(206, {	-- Supreme Defender (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1252, {	-- Supreme Defender (H)
					["races"] = HORDE_ONLY,
				}),
				ach(207),	-- Save the Day
				ach(1259),	-- Not So Fast
				ach(713, applyclassicphase(PHASE_TWO, {	-- Silverwing Sentinel (A)
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 3.0.1
					["OnClick"] = HERO_OF_WARSONG_OnClick,
					["OnTooltip"] = HERO_OF_WARSONG_OnTooltip,
					["OnUpdate"] = HERO_OF_WARSONG_ALLIANCE_OnUpdate,
					["description"] = "Raise your reputation with the Silverwing Sentinels to Exalted.",
					-- #endif
				})),
				ach(712, applyclassicphase(PHASE_TWO, {	-- Warsong Outrider (H)
					["races"] = HORDE_ONLY,
					-- #if BEFORE 3.0.1
					["OnClick"] = HERO_OF_WARSONG_OnClick,
					["OnTooltip"] = HERO_OF_WARSONG_OnTooltip,
					["OnUpdate"] = HERO_OF_WARSONG_HORDE_OnUpdate,
					["description"] = "Raise your reputation with the Warsong Outriders to Exalted.",
					-- #endif
				})),
			}),
			n(FACTIONS, {
				faction(890, {	-- Silverwing Sentinels
					["icon"] = "Interface\\Icons\\ability_racial_shadowmeld",
					["OnTooltip"] = OnTooltipForWarsongGulch,
					["races"] = ALLIANCE_ONLY,
				}),
				faction(889, {	-- Warsong Outriders
					["icon"] = "Interface\\Icons\\Ability_Warrior_WarCry",
					["OnTooltip"] = OnTooltipForWarsongGulch,
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(8368, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 10, 19 },
				}),
				q(8426, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8427, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8428, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8429, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8430, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = HORDE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8389, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8368,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 10, 19 },
				}),
				q(8431, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8426,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8432, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8427,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8433, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8428,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8434, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8429,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8435, {	-- Battle of Warsong Gulch
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8430,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8372, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 10, 19 },
				}),
				q(8399, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8400, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8401, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8402, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8403, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8386, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8372,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 10, 19 },
				}),
				q(8404, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8399,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 20, 29 },
				}),
				q(8405, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8400,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 30, 39 },
				}),
				q(8406, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8401,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 40, 49 },
				}),
				q(8407, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8402,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 50, 59 },
				}),
				q(8408, {	-- Fight for Warsong Gulch
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8403,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 2.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 60, 69 },
				}),
				q(7868, {	-- Outrider Advanced Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
					-- #if AFTER CATA
					["coord"] = { 40.2, 20.0, NORTHERN_BARRENS },
					-- #else
					["coord"] = { 46.6, 8.4, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(19153),	-- Outrider Advanced Care Package
					},
				}),
				q(7866, {	-- Outrider Basic Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
					-- #if AFTER CATA
					["coord"] = { 40.2, 20.0, NORTHERN_BARRENS },
					-- #else
					["coord"] = { 46.6, 8.4, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(19154),	-- Outrider Basic Care Package
					},
				}),
				q(7867, {	-- Outrider Standard Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
					-- #if AFTER CATA
					["coord"] = { 40.2, 20.0, NORTHERN_BARRENS },
					-- #else
					["coord"] = { 46.6, 8.4, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(19155),	-- Outrider Standard Care Package
					},
				}),
				q(7865, {	-- Sentinel Advanced Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					-- #if AFTER CATA
					["coord"] = { 61.5, 83.9, ASHENVALE },
					-- #else
					["coord"] = { 61.6, 83.8, ASHENVALE },
					-- #endif
					["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(19152),	-- Sentinel Advanced Care Package
					},
				}),
				q(7863, {	-- Sentinel Basic Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					-- #if AFTER CATA
					["coord"] = { 61.5, 83.9, ASHENVALE },
					-- #else
					["coord"] = { 61.6, 83.8, ASHENVALE },
					-- #endif
					["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(19150),	-- Sentinel Basic Care Package
					},
				}),
				q(7864, {	-- Sentinel Standard Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					-- #if AFTER CATA
					["coord"] = { 61.5, 83.9, ASHENVALE },
					-- #else
					["coord"] = { 61.6, 83.8, ASHENVALE },
					-- #endif
					["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(19151),	-- Sentinel Standard Care Package
					},
				}),
			}),
			n(REWARDS, {
				i(20558, {	-- Warsong Gulch Mark of Honor
					["timeline"] = { "removed 3.3.3" },
				}),
			}),
			n(VENDORS, {
				n(14754, {	-- Kelm Hargunth <Warsong Supply Officer>
					-- #if AFTER CATA
					["coord"] = { 40.2, 20.0, NORTHERN_BARRENS },
					-- #else
					["coord"] = { 46.6, 8.4, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						mark(10, i(19505)),	-- Warsong Battle Tabard
						mark(3, i(19566)),	-- Advisor's Gnarled Staff
						mark(3, i(19567)),	-- Advisor's Gnarled Staff
						mark(3, i(19568)),	-- Advisor's Gnarled Staff
						mark(3, i(19569)),	-- Advisor's Gnarled Staff
						mark(3, i(20425)),	-- Advisor's Gnarled Staff
						mark(3, i(19550)),	-- Legionnaire's Sword
						mark(3, i(19551)),	-- Legionnaire's Sword
						mark(3, i(19552)),	-- Legionnaire's Sword
						mark(3, i(19553)),	-- Legionnaire's Sword
						mark(3, i(20430)),	-- Legionnaire's Sword
						mark(3, i(19558)),	-- Outrider's Bow
						mark(3, i(19559)),	-- Outrider's Bow
						mark(3, i(19560)),	-- Outrider's Bow
						mark(3, i(19561)),	-- Outrider's Bow
						mark(3, i(20437)),	-- Outrider's Bow
						mark(3, i(19542)),	-- Scout's Blade
						mark(3, i(19543)),	-- Scout's Blade
						mark(3, i(19544)),	-- Scout's Blade
						mark(3, i(19545)),	-- Scout's Blade
						mark(3, i(20441)),	-- Scout's Blade
						mark(1, i(19534)),	-- Scout's Medallion
						mark(1, i(19535)),	-- Scout's Medallion
						mark(1, i(19536)),	-- Scout's Medallion
						mark(1, i(19537)),	-- Scout's Medallion
						mark(1, i(20442)),	-- Scout's Medallion
						mark(1, i(19526)),	-- Battle Healer's Cloak
						mark(1, i(19527)),	-- Battle Healer's Cloak
						mark(1, i(19528)),	-- Battle Healer's Cloak
						mark(1, i(19529)),	-- Battle Healer's Cloak
						mark(1, i(20427)),	-- Battle Healer's Cloak
						mark(1, i(19578)),	-- Berserker Bracers
						mark(1, i(19580)),	-- Berserker Bracers
						mark(1, i(19581)),	-- Berserker Bracers
						mark(1, i(19595)),	-- Dryad's Wrist Bindings
						mark(1, i(19596)),	-- Dryad's Wrist Bindings
						mark(1, i(19597)),	-- Dryad's Wrist Bindings
						mark(1, i(19587)),	-- Forest Stalker's Bracers
						mark(1, i(19589)),	-- Forest Stalker's Bracers
						mark(1, i(19590)),	-- Forest Stalker's Bracers
						mark(1, i(19582)),	-- Windtalker's Wristguards
						mark(1, i(19583)),	-- Windtalker's Wristguards
						mark(1, i(19584)),	-- Windtalker's Wristguards
						
						applyclassicphase(PHASE_SIX, mark(2, i(22673))),	-- Outrider's Chain Leggings
						applyclassicphase(TBC_PHASE_ONE, i(30498)),	-- Outrider's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, mark(2, i(22740))),	-- Outrider's Leather Pants
						applyclassicphase(PHASE_SIX, mark(2, i(22741))),	-- Outrider's Lizardhide Pants
						applyclassicphase(PHASE_SIX, mark(2, i(22676))),	-- Outrider's Mail Leggings
						applyclassicphase(PHASE_SIX, i(22651)),	-- Outrider's Plate Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, mark(2, i(22747))),	-- Outrider's Silk Leggings
						
						mark(1, i(19518)),	-- Advisor's Ring
						mark(1, i(19519)),	-- Advisor's Ring
						mark(1, i(19520)),	-- Advisor's Ring
						mark(1, i(19521)),	-- Advisor's Ring
						mark(1, i(20426)),	-- Advisor's Ring
						mark(1, i(19510)),	-- Legionnaire's Band
						mark(1, i(19511)),	-- Legionnaire's Band
						mark(1, i(19512)),	-- Legionnaire's Band
						mark(1, i(19513)),	-- Legionnaire's Band
						mark(1, i(20429)),	-- Legionnaire's Band
						
						applyclassicphase(PHASE_SIX, mark(1, i(21567))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, mark(1, i(21568))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, mark(1, i(21565))),	-- Rune of Perfection
						applyclassicphase(PHASE_SIX, mark(1, i(21566))),	-- Rune of Perfection
					},
				}),
				n(14753, {	-- Illiyana Moonblaze <Silverwing Supply Officer>
					-- #if AFTER CATA
					["coord"] = { 61.5, 83.9, ASHENVALE },
					-- #else
					["coord"] = { 61.6, 83.8, ASHENVALE },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						mark(10, i(19506)),	-- Silverwing Battle Tabard
						mark(3, i(19570)),	-- Lorekeeper's Staff
						mark(3, i(19571)),	-- Lorekeeper's Staff
						mark(3, i(19572)),	-- Lorekeeper's Staff
						mark(3, i(19573)),	-- Lorekeeper's Staff
						mark(3, i(20434)),	-- Lorekeeper's Staff
						mark(3, i(19562)),	-- Outrunner's Bow
						mark(3, i(19563)),	-- Outrunner's Bow
						mark(3, i(19564)),	-- Outrunner's Bow
						mark(3, i(19565)),	-- Outrunner's Bow
						mark(3, i(20438)),	-- Outrunner's Bow
						mark(3, i(19554)),	-- Protector's Sword
						mark(3, i(19555)),	-- Protector's Sword
						mark(3, i(19556)),	-- Protector's Sword
						mark(3, i(19557)),	-- Protector's Sword
						mark(3, i(20440)),	-- Protector's Sword
						mark(3, i(20443)),	-- Sentinel's Blade
						mark(3, i(19546)),	-- Sentinel's Blade
						mark(3, i(19547)),	-- Sentinel's Blade
						mark(3, i(19548)),	-- Sentinel's Blade
						mark(3, i(19549)),	-- Sentinel's Blade
						mark(1, i(19538)),	-- Sentinel's Medallion
						mark(1, i(19539)),	-- Sentinel's Medallion
						mark(1, i(19540)),	-- Sentinel's Medallion
						mark(1, i(19541)),	-- Sentinel's Medallion
						mark(1, i(20444)),	-- Sentinel's Medallion
						mark(1, i(19530)),	-- Caretaker's Cape
						mark(1, i(19531)),	-- Caretaker's Cape
						mark(1, i(19532)),	-- Caretaker's Cape
						mark(1, i(19533)),	-- Caretaker's Cape
						mark(1, i(20428)),	-- Caretaker's Cape
						mark(1, i(19578)),	-- Berserker Bracers
						mark(1, i(19580)),	-- Berserker Bracers
						mark(1, i(19581)),	-- Berserker Bracers
						mark(1, i(19595)),	-- Dryad's Wrist Bindings
						mark(1, i(19596)),	-- Dryad's Wrist Bindings
						mark(1, i(19597)),	-- Dryad's Wrist Bindings
						mark(1, i(19587)),	-- Forest Stalker's Bracers
						mark(1, i(19589)),	-- Forest Stalker's Bracers
						mark(1, i(19590)),	-- Forest Stalker's Bracers
						mark(1, i(19582)),	-- Windtalker's Wristguards
						mark(1, i(19583)),	-- Windtalker's Wristguards
						mark(1, i(19584)),	-- Windtalker's Wristguards
						
						applyclassicphase(PHASE_SIX, mark(2, i(22748))),	-- Sentinel's Chain Leggings
						applyclassicphase(TBC_PHASE_ONE, mark(2, i(30497))),	-- Sentinel's Mail Leggings
						applyclassicphase(PHASE_SIX, i(22753)),	-- Sentinel's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, mark(2, i(22749))),	-- Sentinel's Leather Pants
						applyclassicphase(PHASE_SIX, mark(2, i(22750))),	-- Sentinel's Lizardhide Pants
						applyclassicphase(PHASE_SIX, i(22672)),	-- Sentinel's Plate Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, mark(2, i(22752))),	-- Sentinel's Silk Leggings
						
						mark(1, i(19522)),	-- Lorekeeper's Ring
						mark(1, i(19523)),	-- Lorekeeper's Ring
						mark(1, i(19524)),	-- Lorekeeper's Ring
						mark(1, i(19525)),	-- Lorekeeper's Ring
						mark(1, i(20431)),	-- Lorekeeper's Ring
						mark(1, i(19514)),	-- Protector's Band
						mark(1, i(19516)),	-- Protector's Band
						mark(1, i(19515)),	-- Protector's Band
						mark(1, i(19517)),	-- Protector's Band
						mark(1, i(20439)),	-- Protector's Band
						
						applyclassicphase(PHASE_SIX, mark(1, i(21567))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, mark(1, i(21568))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, mark(1, i(21565))),	-- Rune of Perfection
						applyclassicphase(PHASE_SIX, mark(1, i(21566))),	-- Rune of Perfection
					},
				}),
			}),
		},
	}),
})));