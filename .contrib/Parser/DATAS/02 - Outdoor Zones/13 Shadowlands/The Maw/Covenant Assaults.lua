---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- currently all covenant assault quests show up in /attwq.  because each 'world quest' is used as a header, this makes the entirety of possible covenant assault contents show up in /attwq - this is good AND bad, in the sense that it shows you "hey, there is stuff you are missing here" but it's not necessarily clear that we do not know whether or not the stuff is up.  you can't see which quests are available in the assault until after you start it, which means there's no way to get the actually active assault quests *only* to show up in /attwq.  the choice is basically "show everything" or "show only that the assault is up and no other information."  my preference is to show everything.  perhaps a compromise would be to add a description on each header explaining this but my brain is not functional enough atm to figure out what that description should say
root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.1.0" } }, {
	m(THE_MAW, {	-- The Maw
		n(-10083, {	-- Covenant Assaults
		--	PTR - Assault quests
			-- seems similar to Mogu/Mantid etc. assaults from Uldum/Vale, it's an automatically-started zone quest that lasts a few days
			-- the quest was automatically on the map, but you had to speak to Xandria to ~activate it, and then all the other quests popped up.  weird system
			n(ACHIEVEMENTS, {
				ach(15032),		-- Breaking Their Hold
				ach(15064, {	-- Breaking the Chains
					ach(15035, {	-- On the Offensive
						ach(15000),		-- United Front
						ach(15037),		-- This Army
					}),
				}),
				ach(15036),	-- Rooting Out The Evil
				ach(15033),	-- Taking the Tremaculum
				ach(15034, {	-- Wings Against the Flames
					crit(9),	-- Kill The Flame
				}),
			}),
			n(REWARDS, {
				i(187410, {	-- Death's Advance Battlefield Drape
					["description"] = "Can be rewarded from any Maw Assault.",
				}),
			}),
			q(63824, {	-- Kyrian Assault
				["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				["provider"] = { "n", 177900 },	-- Xandria
				["isWeekly"] = true,
				["g"] = {
					crit(4, {	-- Kyrian Assault
						["achievementID"] = 15000,	-- United Front
					}),
					i(185993, {	-- Ascended War Chest
						["sym"] = {
							{"select","itemID",187410},	-- Death's Advance Battlefield Drape
						},
						["g"] = {
							i(186546),	-- Copperback Etherwyrm (PET!)
							i(187185),	-- Vesper of Faith (TOY!)
						},
					}),
					n(QUESTS, {
						q(63858, {	-- Courage of the Soul
							["provider"] = { "n", 178227 },
							["isWeekly"] = true,
							["coord"] = { 42.4, 44.1, THE_MAW },
							["g"] = {
								crit(5, {	-- Courage of the Soul
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63827, {	-- Encouraging Words
							["provider"] = { "n", 177900 },	-- Xandria
							["isWeekly"] = true,
							["coord"] = { 42.7, 44.7, THE_MAW },
							["g"] = {
								crit(4, {	-- Encouraging Words
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63843, {	-- Heart and Soul
							["provider"] = { "n", 177226 },	-- Artemede
							["isWeekly"] = true,
							["coord"] = { 42.3, 44.3, THE_MAW },
							["g"] = {
								crit(2, {	-- Heart and Soul
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63853, {	-- Kill The Flame
							["provider"] = { "n", 178005 },	-- Theotar
							["isWeekly"] = true,
							["coord"] = { 43.0, 44.5, THE_MAW },
							["g"] = {
								crit(9, {	-- Kill The Flame
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						});
						q(63828, {	-- Mine's Bigger
							["provider"] = { "n", 177175 },	-- Mikanikos
							["isWeekly"] = true,
							["coord"] = { 42.5, 45.0, THE_MAW },
							["g"] = {
								crit(1, {	-- Mine's Bigger
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63829, {	-- No One Floats Down Here
							["provider"] = { "n", 177900 },	-- Xandria
							["isWeekly"] = true,
							["coord"] = { 42.7, 44.7, THE_MAW },
							["g"] = {
								crit(3, {	-- No One Floats Down Here
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63859, {	-- Saved By The Bells
							["provider"] = { "n", 177900 },	-- Xandria
							["isWeekly"] = true,
							["coord"] = { 42.7, 44.7, THE_MAW },
							["g"] = {
								crit(6, {	-- Saved By The Bells
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63864, {	-- The Dreadful Blend
							["provider"] = { "n", 178005 },	-- Theotar
							["isWeekly"] = true,
							["coord"] = { 42.9, 44.4, THE_MAW },
							["g"] = {
								crit(10, {	-- The Dreadful Blend
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
						q(63846, {	-- The Ember Count
							["provider"] = { "n", 178091 },	-- Vulca
							["isWeekly"] = true,
							["coord"] = { 43.1, 44.3, THE_MAW },
							["g"] = {
								crit(8, {	-- The Ember Count
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
								ach(15041, {	-- The Zovaal Shuffle
									["coords"] = {
										{ 41.8, 42.2, THE_MAW },
										{ 38.8, 39.7, THE_MAW },
										{ 36.2, 37.2, THE_MAW },
										{ 34.4, 36.2, THE_MAW },
										{ 35.9, 45.2, THE_MAW },
									},
									["cr"] = 178033,	-- Gubbins
								}),
							},
						}),
						q(63863, {	-- United In Pride
							["provider"] = { "n", 178353 },	-- Pelodis
							["isWeekly"] = true,
							["coord"] = { 42.9, 45.5, THE_MAW },
							["g"] = {
								crit(7, {	-- United In Pride
									["achievementID"] = 15034,	-- Wings Against the Flames
								}),
							},
						}),
					}),
					n(SPECIAL, {
						n(179096, {	-- Sly
							["description"] = "Speak to Orator Kloe and tell her you will help find the missing Vulpin.  Follow the footprints and reassure Sly 3 times (over the course of 3 Kyrian Assaults) to earn the achievement and pet.",
							["isWeekly"] = true,
							["questID"] = 64019,
							["coord"] = { 42.1, 44.5, THE_MAW },	-- Orator Kloe
							["cr"] = 179068,	-- Orator Kloe
							["g"] = {
								q(64024, {	-- 1st Find
									["coord"] = { 40.7, 51.6, THE_MAW },
									["name"] = "1st Find",
								}),
								q(64022, {	-- 2nd Find
									["coord"] = { 38.0, 39.7, THE_MAW },
									["name"] = "2nd Find",
								}),
								q(64023, {	-- 3rd Find
									["coord"] = { 32.9, 44.2, THE_MAW },
									["name"] = "3rd Find",
								}),
								ach(15004, {	-- A Sly Fox
									i(186539),	-- Sly (PET!)
								}),
							},
						}),
					}),
					n(TREASURES, {
						o(368935, {	-- Sinfall Screecher Cage
							["questID"] = 64039,	-- To show whether the character can obtain another of the pet
							["coord"] = { 30.0, 43.1, THE_MAW },
							["crs"] = { 179189 },	-- Chain of Domination
							["g"] = {
								i(186544),	-- Sinfall Screecher (PET!)
							},
						}),
						o(368950, {	-- Stolen Anima Vessel
							["questID"] = 64057,
							["isWeekly"] = true,
							["coords"] = {
								{ 32.6, 40.9, THE_MAW },
								{ 32.6, 43.3, THE_MAW },
							},
						}),
						o(368951, {	-- Stolen Anima Vessel
							["questID"] = 64058,
							["isWeekly"] = true,
							["coords"] = {
								{ 34.1, 35.7, THE_MAW },
								{ 45.4, 47.7, THE_MAW },
							},
						}),
					}),
				},
			}),
			q(63543, {	-- Necrolord Assault
				["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				["provider"] = { "n", 177072 },	-- Baroness Draka
				["isWeekly"] = true,
				["coord"] = { 33.8, 54.8, THE_MAW },
				["g"] = {
					crit(1, {	-- Necrolord Assault
						["achievementID"] = 15000,	-- United Front
					}),
					i(185992, {	-- War Chest of the Undying Army
						["sym"] = {
							{"select","itemID",187410},	-- Death's Advance Battlefield Drape
						},
						["g"] = {
							i(186103),	-- Undying Darkhound's Harness (MOUNT!)
							i(186557),	-- Fodder (PET!)
						},
					}),
					n(ACHIEVEMENTS, {
						ach(15039, {	-- Up For Grabs
							["description"] = "There are a few Mawsworn Caches that are accessible just via grappling, but this achievement is much easier to complete when using the Overcharged Centurion from the |cFF349cffPutting A Plan Together|r quest.\n\nUse the Centurion's |cFFFFFFFFPurestep Ascension|r ability to scale walls and get to the Mawsworn Caches.",
							["cr"] = 177092,	-- Overcharged Centurion
						}),
					}),
					n(QUESTS, {
						q(63774, {	-- An Embarrassment Of Corpses
							["provider"] = { "n", 177720 },	-- Rathan
							["isWeekly"] = true,
							["coord"] = { 33.5, 55.4, THE_MAW },
							["g"] = {
								crit(4, {	-- An Embarrassment of Corpses
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63753, {	-- Centurions March!
							["sourceQuests"] = { 63772 },	-- Waiting in the Wings
							["isWeekly"] = true,
							["coord"] = { 37.0, 63.5, THE_MAW },
							["g"] = {
								crit(6, {	-- Centurions March!
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63594, {	-- Clearing the Walls
							-- TODO: not sure if completing 'Putting a Plan...' will lock out getting the Defense Map drop
							-- ["sourceQuests"] = { 63545 },	-- Putting A Plan Together
							["provider"] = { "i", 186573 },	-- Defense Map
							["isWeekly"] = true,
							["g"] = {
								i(186601),	-- Quartered Ancient Ring
							},
						}),
						q(63455, {	-- Dead On Their Feet
							["provider"] = { "n", 177076 },	-- Margrave Sin'dane
							["isWeekly"] = true,
							["coord"] = { 33.6, 54.9, THE_MAW },
							["g"] = {
								crit(1, {	-- Dead On Their Feet
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63664, {	-- Get to the Point
							["provider"] = { "n", 177126 },	-- Secutor Mevix
							["isWeekly"] = true,
							["coord"] = { 33.2, 57.0, THE_MAW },
							["g"] = {
								crit(9, {	-- Get to the Point
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63625, {	-- Here's an Axe, Get to Work!
							["provider"] = { "n", 177072 },	-- Baroness Draka
							["isWeekly"] = true,
							["coord"] = { 33.8, 54.8, THE_MAW },
							["g"] = {
								crit(2, {	-- Here's an Axe, Get to Work!
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63621, {	-- Pulling His Chain
							["sourceQuests"] = { 63772 },	-- Waiting in the Wings
							["provider"] = { "n", 177226 },	-- Artemede
							["isWeekly"] = true,
							["coord"] = { 37.0, 63.3, THE_MAW },
							["g"] = {
								crit(7, {	-- Pulling His Chain
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63545, {	-- Putting A Plan Together
							["sourceQuests"] = { 63772 },	-- Waiting in the Wings
							["provider"] = { "n", 177175 },	-- Mikanikos
							["isWeekly"] = true,
							["coord"] = { 37.0, 63.5, THE_MAW },
							["g"] = {
								crit(5, {	-- Putting a Plan Together
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63669, {	-- Somebody Feed Kevin
							["provider"] = { "n", 163295 },	-- Plague Deviser Marileth
							["isWeekly"] = true,
							["coord"] = { 32.9, 56.8, THE_MAW },
							["g"] = {
								crit(10, {	-- Somebody Feed Kevin
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(59004, {	-- Splash Damage
							["provider"] = { "n", 163295 },	-- Plague Deviser Marileth
							["isWeekly"] = true,
							["coord"] = { 32.9, 56.8, THE_MAW },
							["g"] = {
								crit(8, {	-- Splash Damage
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
						q(63772, {	-- Waiting in the Wings
							["provider"] = { "n", 177072 },	-- Baroness Draka
							["isWeekly"] = true,
							["coord"] = { 33.8, 54.8, THE_MAW },
						}),
						q(63773, {	-- You and What Army
							["provider"] = { "n", 177072 },	-- Baroness Draka
							["isWeekly"] = true,
							["coord"] = { 33.8, 54.8, THE_MAW },
							["g"] = {
								crit(4, {	-- Boil Master Yetch
									["achievementID"] = 15037,	-- This Army
									["cr"] = 177767,	-- Boil Master Yetch
								}),
								crit(1, {	-- Cutter Fin
									["achievementID"] = 15037,	-- This Army
									["cr"] = 177771,	-- Cutter Fin
								}),
								crit(5, {	-- Flytrap
									["achievementID"] = 15037,	-- This Army
									["cr"] = 158300,	-- Flytrap
								}),
								crit(2, {	-- Kearnen the Blade
									["achievementID"] = 15037,	-- This Army
									["cr"] = 177769,	-- Kearnen the Blade
								}),
								crit(3, {	-- Winslow Swan
									["achievementID"] = 15037,	-- This Army
									["cr"] = 177764,	-- Winslow Swain
								}),
								crit(3, {	-- You and What Army
									["achievementID"] = 15032,	-- Breaking Their Hold
								}),
							},
						}),
					}),
					n(TREASURES, {
						-- TODO: can ONLY this mawsworn cache object drop the map? or should this be in the 'repeated' object below?
						o(368205, {	-- Mawsworn Cache
							["questID"] = 63815,
							["isDaily"] = true,
							["coords"] = {
								{ 30.3, 55.8, THE_MAW },
								{ 32.2, 67.4, THE_MAW },
							},
							["g"] = {
								i(186573, {	-- Defense Map
									["description"] = "This item will not drop if |cFF349cffPutting A Plan Together|r is not an active quest.",
								}),
							},
						}),
						o_repeated({	-- Mawsworn Cache
							-- Contains
							i(186600),	-- Quartered Ancient Ring
							i(187011),	-- Mawsworn Enforcer's Shoulder-Spires
							i(187015),	-- Soulfeeder's Shoulderguards
							i(187026),	-- Field Warden's Torture Kit
							i(187240),	-- Field Warden's Watchful Eye
							i(187023),	-- Instructor's Mantle
							-- Objects
							o(369141, {	-- Mawsworn Cache
								["questID"] = 64209,
								["isDaily"] = true,
								["coords"] = {
									{ 27.7, 61.6, THE_MAW },	-- found ring here once 9.1 went live, not sure if other coord is still accurate
									{ 35.1, 69.7, THE_MAW },
								},
							}),
							o(368206, {	-- Mawsworn Cache
								["questID"] = 63816,
								["isDaily"] = true,
								["coord"] = { 30.1, 64.9, THE_MAW },
							}),
							o(368207, {	-- Mawsworn Cache
								["questID"] = 63817,
								["isDaily"] = true,
								["coord"] = { 34.1, 61.6, THE_MAW },
							}),
							o(368208, {	-- Mawsworn Cache
								["questID"] = 63818,
								["isDaily"] = true,
								["coord"] = { 33.5, 70.4, THE_MAW },
							}),
							o(368213, {	-- Mawsworn Cache
								["questID"] = 63825,
								["isDaily"] = true,
								["coord"] = { 32.8, 65.0, THE_MAW },
							}),
							o(368214, {	-- Mawsworn Cache
								["questID"] = 63826,
								["isDaily"] = true,
								["coords"] = {
									{ 32.0, 56.3, THE_MAW },
									{ 33.8, 57.3, THE_MAW },
								},
							}),
						}),
						i(186603, {	-- Nilganihmaht's Stone Ring
							["cost"] = {
								{ "i", 186600, 1 },	-- Quartered Ancient Ring (looted from Mawsworn Cache)
								{ "i", 186601, 1 },	-- Quartered Ancient Ring (bouncy Centurion ring)
								{ "i", 186602, 1 },	-- Quartered Ancient Ring (Mad Maw Construct)
								{ "i", 186604, 1 },	-- Quartered Ancient Ring (looted from ground)
							},
						}),
						o(369143, {	-- Quartered Ancient Ring
							["description"] = "This ring can be found in Perdition Hold once you've looted another |cFF1eff00Quartered Ancient Ring|r.",
							["coords"] = {
								{ 30.8, 58.3, THE_MAW },
								{ 33.7, 66.2, THE_MAW },
								{ 34.6, 59.7, THE_MAW },
							},
							["g"] = {
								i(186604),	-- Quartered Ancient Ring
							},
						}),
						i(186602, {	-- Quartered Ancient Ring
							["description"] = "Mad Maw Construct will spawn in or around Perdition Hold once you've looted another |cFF1eff00Quartered Ancient Ring|r.  Once it spawns, you have a short amount of time to kill it before it despawns.",
							["coords"] = {
								{ 27.0, 57.0, THE_MAW },
								{ 33.0, 57.0, THE_MAW },
								{ 33.0, 71.0, THE_MAW },
							},
							["cr"] = 179601,	-- Mad Maw Construct
						}),
						o(368946, {	-- Stolen Anima Vessel
							["questID"] = 64044,
							["isWeekly"] = true,
							["coords"] = {
								{ 30.6, 58.4, THE_MAW },
								{ 34.2, 64.6, THE_MAW },
								{ 36.7, 68.0, THE_MAW },
							},
						}),
					}),
				},
			}),
			q(63823, {	-- Night Fae Assault
				["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				["provider"] = { "n", 178828 },	-- Lord Herne
				["isWeekly"] = true,
				["coord"] = { 22.4, 43.3, THE_MAW },
				["g"] = {
					crit(3, {	-- Night Fae Assault
						["achievementID"] = 15000,	-- United Front
					}),
					i(185991, {	-- War Chest of the Wild Hunt
						["sym"] = {
							{"select","itemID",187410},	-- Death's Advance Battlefield Drape
						},
						["g"] = {
							i(186000),	-- Wild Hunt Legsplitter (MOUNT!)
							i(186547),	-- Invasive Buzzer (PET!)
							i(185052),	-- Hippo Soul
						},
					}),
					n(QUESTS, {
						q(63951, {	-- A Shady Place
							["provider"] = { "n", 178890 },	-- Margrave Sin'dane
							["isWeekly"] = true,
							["coord"] = { 22.5, 43.2, THE_MAW },
							["g"] = {
								crit(9, {	-- A Shady Place
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63968, {	-- Clean Out the Crucible
							["provider"] = { "n", 178828 },	-- Lord Herne
							["isWeekly"] = true,
							["coord"] = { 22.4, 43.2, THE_MAW },
							["g"] = {
								crit(1, {	-- Clean Out the Crucible
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63973, {	-- Double Dromans
							["provider"] = { "n", 179067 },	-- Dreamweaver
							["isWeekly"] = true,
							["coord"] = { 22.7, 43.7, THE_MAW },
							["g"] = {
								crit(6, {	-- Double Dromans
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63952, {	-- Heavy-Handed Tactics
							["provider"] = { "n", 178745 },	-- Emeni
							["isWeekly"] = true,
							["coord"] = { 22.9, 42.4, THE_MAW },
							["g"] = {
								crit(10, {	-- Heavy Handed Tactics
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63972, {	-- Just Don't Ask Me to Spell It
							["provider"] = { "n", 179066 },	-- Choofa
							["isWeekly"] = true,
							["coord"] = { 22.2, 43.3, THE_MAW },
							["g"] = {
								ach(15044, {	-- Krrprripripkraak's Heroes
									crit(1, {	-- Elder Gwenna
										["coord"] = { 20.4, 43.9, THE_MAW },
										["cr"] = 179555,	-- Elder Gwenna
									}),
									crit(2, {	-- Foreman Thorodir
										["coord"] = { 20.6, 32.8, THE_MAW },
										["cr"] = 179554,	-- Foreman Thorodir
									}),
									crit(3, {	-- Te'zan
										["coord"] = { 25.6, 39.0, THE_MAW },
										["cr"] = 179553,	-- Te'zan
									}),
									crit(4, {	-- Warden Casad
										["coord"] = { 23.7, 42.4, THE_MAW },
										["cr"] = 179561,	-- Warden Casad
									}),
									crit(5, {	-- Kivarr
										["description"] = "Inside the cave.",
										["coord"] = { 20.8, 39.3, THE_MAW },
										["cr"] = 179557,	-- Kivarr
									}),
									crit(6, {	-- Guardian Kota
										["coord"] = { 21.9, 45.7, THE_MAW },
										["cr"] = 179559,	-- Guardian Kota
									}),
								}),
								crit(5, {	-- Just Don't Ask Me to Spell It
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63969, {	-- Looming Darkness
							["provider"] = { "n", 178828 },	-- Lord Herne
							["isWeekly"] = true,
							["coord"] = { 22.4, 43.3, THE_MAW },
							["g"] = {
								crit(2, {	-- Looming Darkness
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63970, {	-- No Soul Left Behind
							["provider"] = { "n", 178884 },	-- Thiernax
							["isWeekly"] = true,
							["coord"] = { 22.9, 43.2, THE_MAW },
							["g"] = {
								crit(3, {	-- No Soul Left Behind
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63971, {	-- Snail Stomping
							["provider"] = { "n", 178885 },	-- Lady Moonberry
							["isWeekly"] = true,
							["coord"] = { 22.7, 43.7, THE_MAW },
							["g"] = {
								crit(4, {	-- Snail Stomping
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63974, {	-- That's Going to Sting
							["provider"] = { "n", 179065 },	-- Niya
							["isWeekly"] = true,
							["coord"] = { 22.2, 43.6, THE_MAW },
							["g"] = {
								-- no criteria with this exact name, i assume it should be this one (quest is currently bugged and not completable, so can't verify)
								crit(7, {	-- Needless Needlers
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
						q(63945, {	-- The Soul Blade
							["provider"] = { "n", 178690 },	-- Bonesmith Heirmir
							["isWeekly"] = true,
							["coord"] = { 22.2, 43.5, THE_MAW },
							["g"] = {
								crit(8, {	-- The Soul Blade
									["achievementID"] = 15036,	-- Rooting Out The Evil
								}),
							},
						}),
					}),
					n(-978, {	-- The Rift
						["description"] = "The things in this section are only accessible when you are in the Rift, a version of the Maw populated by shades.\n\nIn Korthia, this phase can be accessed by using a |cFF1eff00Repaired Riftkey|r on a |cFFFFFFFFMaw Rift|r. To get there in the Maw, you can either walk to the Maw after entering a |cFFFFFFFFMaw Rift|r in Korthia, or use the |cFFFFFFFFUnbalanced Riftstone|r from the Night Fae covenant assault quest |cFF349cffA Shady Place|r.",
						["g"] = {
							n(ACHIEVEMENTS, {
								ach(15001, {	-- Jailer's Personal Stash
									["description"] = "Requires entering the Rift, either via the |cFF349cffA Shady Place|r quest or a Maw Rift in Korthia.",
								}),
							}),
							n(TREASURES, {
								i(186190, {	-- Etherwyrm Cage Key
									["questID"] = 64003,	-- tracking quest triggered when looting key
									["isDaily"] = true,
									["coord"] = { 19.1, 43.6, THE_MAW },
									["cr"] = 179030,	-- Elusive Keybinder
								}),
								o(368645, {	-- Rift Hidden Cache
									["questID"] = 63993,
									["isDaily"] = true,
									["coords"] = {
										{ 20.5, 47.4, THE_MAW },
										{ 22.6, 46.2, THE_MAW },
									},
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(368646, {	-- Rift Hidden Cache
									["questID"] = 63995,
									["isDaily"] = true,
									["coord"] = { 25.3, 49.1, THE_MAW },
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(368347, {	-- Rift Hidden Cache
									["questID"] = 63996,
									["isDaily"] = true,
									["coords"] = {
										{ 20.7, 29.8, THE_MAW },	-- in a small cave
										{ 25.1, 27.1, THE_MAW },
									},
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(368648, {	-- Rift Hidden Cache
									["description"] = "At the back of the cave.",
									["questID"] = 63997,
									["isDaily"] = true,
									["coord"] = { 25.6, 32.6, THE_MAW },
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(368649, {	-- Rift Hidden Cache
									["questID"] = 63998,
									["isDaily"] = true,
									["coords"] = {
										{ 19.0, 33.4, THE_MAW },
										{ 19.0, 43.9, THE_MAW },
									},
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(368650, {	-- Rift Hidden Cache
									["questID"] = 63999,
									["isDaily"] = true,
									["coord"] = { 29.7, 42.8, THE_MAW },
									["g"] = {
										i(187251),	-- Shaded Skull Shoulderguards
									},
								}),
								o(369227, {	-- Stolen Anima Vessel
									["questID"] = 64265,
									["isWeekly"] = true,
									["coords"] = {
										{ 46.0, 83.1, THE_MAW },	-- Cave entrance
										{ 47.8, 86.5, THE_MAW },	-- Object
									},
								}),
								o(369236, {	-- Stolen Anima Vessel Loot trigger
									["questID"] = 64270,
									["isWeekly"] = true,
									["coords"] = {
										{ 27.5, 49.5, THE_MAW },
									},
								}),
							}),
						},
					}),
					n(TREASURES, {
						o(368653, {	-- Etherwyrm Cage
							["description"] = "At the back of the cave.",
							["questID"] = 64000,
							["isDaily"] = true,
							["coord"] = { 20.7, 39.7, THE_MAW },
							["cost"] = { { "i", 186190, 1 } },	-- Etherwyrm Cage Key
							["g"] = {
								i(186191),	-- Infused Etherwyrm (PET!)
							},
						}),
						o(368952, {	-- Stolen Anima Vessel
							["questID"] = 64059,
							["isWeekly"] = true,
							["coords"] = {
								{ 25.3, 38.3, THE_MAW },
								{ 25.3, 33.2, THE_MAW },
							},
						}),
						o(368953, {	-- Stolen Anima Vessel
							["questID"] = 64060,
							["isWeekly"] = true,
							["coords"] = {
								{ 19.0, 50.2, THE_MAW },
								{ 22.6, 48.6, THE_MAW },
							},
						}),
					}),
				},
			}),
			q(64554, {	-- Venthyr Assault (as reported via the world quest API, sometimes?)
				["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				["altQuests"] = { 63822 },	-- Venthyr Assault
				["provider"] = { "n", 178006 },	-- Prince Renathal
				["isWeekly"] = true,
				["coord"] = { 29.9, 17.1, THE_MAW },
			}),
			q(63822, {	-- Venthyr Assault
				["sourceQuests"] = { 63902 },	-- Good News, Everyone!
				["altQuests"] = { 64554 },	-- Venthyr Assault (as reported via the world quest API)
				["provider"] = { "n", 178006 },	-- Prince Renathal
				["isWeekly"] = true,
				["coord"] = { 29.9, 17.1, THE_MAW },
				["g"] = {
					crit(2, {	-- Venthyr Assault
						["achievementID"] = 15000,	-- United Front
					}),
					i(185990, {	-- Harvester's War Chest
						["sym"] = {
							{"select","itemID",187410},	-- Death's Advance Battlefield Drape
						},
						["g"] = {
							i(185996),	-- Harvester's Dredwing Saddle (MOUNT!)
						},
					}),
					n(QUESTS, {
						q(63837, {	-- A Tea for Every Occasion
							["provider"] = { "n", 178178 },	-- Theotar
							["isWeekly"] = true,
							["coord"] = { 29.6, 17.9, THE_MAW },
							["g"] = {
								crit(5, {	-- A Tea for Every Occasion
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
								ach(15042, {	-- Tea for the Troubled
									crit(1, {	-- Simone
										["coord"] = { 26.7, 14.6, THE_MAW },
										["cr"] = 179465,	-- Simone
									}),
									crit(2, {	-- Laurent
										["coord"] = { 31.6, 14.2, THE_MAW },
										["cr"] = 179466,	-- Laurent
									}),
									crit(3, {	-- Archivist Fane
										["coord"] = { 26.6, 20.0, THE_MAW },
										["cr"] = 179471,	-- Archivist Fane
									}),
									crit(4, {	-- The Countess
										["coord"] = { 24.8, 17.4, THE_MAW },
										["cr"] = 179473,	-- The Countess
									}),
									crit(5, {	-- Kael'thas Sunstrider
										["coord"] = { 27.0, 18.5, THE_MAW },
										["cr"] = 179475,	-- Kael'thas Sunstrider
									}),
									crit(6, {	-- Lost Sybille
										["coord"] = { 31.3, 20.5, THE_MAW },
										["cr"] = 179476,	-- Lost Sybille
									}),
									crit(7, {	-- Vulca
										["coord"] = { 27.3, 20.2, THE_MAW },
										["cr"] = 179477,	-- Vulca
									}),
									crit(8, {	-- Iven
										["coord"] = { 32.7, 14.8, THE_MAW },
										["cr"] = 179478,	-- Iven
									}),
								}),
							},
						}),
						q(63838, {	-- Duelist's Challenge
							["provider"] = { "n", 178105 },	-- Nadjia the Mistblade
							["isWeekly"] = true,
							["coord"] = { 31.5, 15.0, THE_MAW },
							["g"] = {
								crit(6, {	-- Duelist's Challenge
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63836, {	-- Fangcrack's Fan Club
							["provider"] = { "n", 178112 },	-- Rendle
							["isWeekly"] = true,
							["coord"] = { 31.2, 15.3, THE_MAW },
							["g"] = {
								crit(4, {	-- Fangcrack's Fan Club
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
								ach(15043, {	-- Hoarder of Torghast
									["coord"] = { 31.1, 13.0, THE_MAW },
									["cr"] = 178118,	-- Fangcrack
								}),
							},
						}),
						q(63839, {	-- If Even One is Worthy
							["provider"] = { "n", 178063 },	-- The Accuser
							["isWeekly"] = true,
							["coord"] = { 30.9, 16.0, THE_MAW },
							["g"] = {
								crit(7, {	-- If Even One is Worthy
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63833, {	-- Terrorizing the Tremaculum
							["provider"] = { "n", 178006 },	-- Prince Renathal
							["isWeekly"] = true,
							["coord"] = { 29.9, 17.1, THE_MAW },
							["g"] = {
								crit(1, {	-- Terrorizing the Tremaculum
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63842, {	-- That's a Good Trick
							["provider"] = { "n", 178172 },	-- Lady Moonberry
							["isWeekly"] = true,
							["coord"] = { 29.9, 17.1, THE_MAW },
							["g"] = {
								crit(3, {	-- That's a Good Trick
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63841, {	-- The Skyhunt
							["provider"] = { "n", 178180 },	-- Hunt-Captain Korayn
							["isWeekly"] = true,
							["coord"] = { 29.3, 18.1, THE_MAW },
							["g"] = {
								crit(9, {	-- The Skyhunt
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63840, {	-- They Grow Up So Quickly
							["provider"] = { "n", 178179 },	-- Niya
							["isWeekly"] = true,
							["coord"] = { 29.5, 18.0, THE_MAW },
							["g"] = {
								crit(8, {	-- They Grow Up So Quickly
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63834, {	-- Weapons of the Tremaculum
							["provider"] = { "n", 178066 },	-- General Draven
							["isWeekly"] = true,
							["coord"] = { 30.0, 17.1, THE_MAW },
							["g"] = {
								crit(2, {	-- Weapons of the Tremaculum
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
						q(63835, {	-- Wrath of the Party Herald
							["provider"] = { "n", 178078 },	-- The Curator
							["isWeekly"] = true,
							["coord"] = { 30.3, 16.8, THE_MAW },
							["g"] = {
								crit(10, {	-- Wrath of the Party Herald
									["achievementID"] = 15033,	-- Taking the Tremaculum
								}),
							},
						}),
					}),
					n(TREASURES, {
						o(368948, {	-- Stolen Anima Vessel
							["questID"] = 64055,
							["isWeekly"] = true,
							["coords"] = {
								{ 25.2, 12.5, THE_MAW },
								{ 27.9, 19.4, THE_MAW },
							},
						}),
						o(368949, {	-- Stolen Anima Vessel
							["questID"] = 64056,
							["isWeekly"] = true,
							["coords"] = {
								{ 26.1, 19.6, THE_MAW },
								{ 29.7, 11.6, THE_MAW },
							},
						}),
					}),
				},
			}),
		}),
	}),
})));

root("HiddenQuestTriggers", {
--	TODO: Stolen Anima Vessels probably need to be added at some point, but i'm not really sure how they work (example: NF ones are all the fuck over, in and out of the rift, some have multiple coords, can't tell when/how they reset, etc.) so i am just throwing them here for now
--	Kyrian

--	Necrolord
	q(63807),	-- selecting Boil Master Yetch to accompany you on You and What Army
	q(63809),	-- selecting Cutter Fin to accompany you on You and What Army
	q(63806),	-- selecting Flytrap to accompany you on You and What Army
	q(63808),	-- selecting Kearnen the Blade to accompany you on You and What Army
	q(63805),	-- selecting Winslow Swain to accompany you on You and What Army
	q(64150),	-- turning in 'Centurion's March' (63753)

--	Night Fae
	q(63821),	-- triggered when completing the assault (#63823)

--	Venthyr
	q(63938),	-- triggered when returning Shadow to Reldorn on "They Grow Up So Quickly"
	q(63939),	-- triggered when returning Goo Goo to Reldorn on "They Grow Up So Quickly"
	q(63940),	-- triggered when returning Roots to Reldorn on "They Grow Up So Quickly"
	q(63941),	-- triggered when returning Creep to Reldorn on "They Grow Up So Quickly"
	q(63942),	-- triggered when returning Bubbles to Reldorn on "They Grow Up So Quickly"
	q(63943),	-- triggered when returning Stinky to Reldorn on "They Grow Up So Quickly"

	-- Stolen Anima Vessels
	q(64575), 	-- After anima vessel, in Maw (rifted)
});