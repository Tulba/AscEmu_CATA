--
-- Cleanup the creature_spawns for Argent Vanguard phase 1
--
DELETE FROM `creature_spawns` WHERE `id` IN(44241,100428,108154,108189,108191,108234,121184,121187,123276,123280,123592,123594,123595,123736,123740,123741,123743,123746,123759,123763,123793,123794,124429,124430,124431,125210,125211,125212,125213,125214,125215,125216,125435,125514,125529,125530,125531,125532,125533,125534,125535,125536,125537,125538,125539,125540,125541,125542,125543,125544,125545,125546,125547,125548,125549,125550,125551,125552,125553,125554,125555,125556,125557,125558,125559,125560,125561,125562,125563,125564,125565,125566,125567,125568,125586,126666,126667,126668,126669,126670,126671,126672,126673,126674,126675,126676,126677,126678,126679,126680,126681,126682,126683,126684,126685,126686,126687,126688,126689,126690,126692,126693,126694,126696,126698,126699,126700,126701,126702,126703,126704,126705,126706,126710,126711,126717,126723,126729,126732,126734,126738,126739,126743,126745,126781,126782,126786,126787,126789,126790,126791,126792,126793,126794,126798,126799,126802,126803,126804,126805,126807,126810,126811,126812,126813,126814,126815,126816,126817,126818,126819,126820,126828,126829,126833,126835,126836,126837,126838,126839,127079,127515,127516,129838,129839,129840,129841,134783,134784,138317,138318,138319,138320,138321,138322,138324,138325,138326,138327,138328,138329,138330,138940,139042,139043,139044,139045,139046,139047,139048,139049,139050,139051,139052,139061,139062,139063,139064,139065,139066,139067,139068,139069,139070,139071,139072,139073,139074,139075,139076,139077,139078,139079,139080,139082,139140,139141,139180,139181,139182,139183,139184,139237,139238,139240,139241,139242,139243,139244,139245,139246,139247,139248,139249,139250,139251,139252,139253,139256,139257,139258,139259,139260,139261,139274,139275,139276,139277,139278,139279,139280,139281,139282,139283,139288,139289,139290,139291,139292,139293,139294,139295,139296,139297,139298,139299,139300,139301,139302,139303,139304,139305,139306,139307,139308,139309,139310,139311,139312,139313,139314,139315,139316,139317,139361,139364,139365,139366,139367,139387,139388,139389,139390,139391,139392,139633,139634,139635,139636,139637,139638,139639,139640,139641,139642,139643,139644,139645,139646,139647,139648,139649,139650,139651,139652,139653,139654,139655,139656,139657,139658,139659,139660,139661,139662,139663,139664,139665,139666,139667,139668,139669,139728,139729,139730,139731,139732,139733,139874,139875,139876,140104,140387,140388,140389,140393,140394,140395,140396,140397,140398,140399,140400,140450,140451,140452,140453,140454,140455,140456,140551,140552,140553,140554,140555,140556,140557,140558,140563,140568,140569,140571,140575,140579,140581,140582,140583,140584,140585,140586,140587,140588,140589,140590,140591,140592,140593,140594,140595,140771,140953,141025,141026,141027,141028,141029,141030,141469,141470,141472,141473,141474,141475,141477,141478,141479,141480,141481,141482,141483,141484,141485,141486,141487,141488,141489,141490,141491,141492,141493,141494,141495,141496,141497,141557,141558,141559,141560,141561,141562,141563,141564,141565,141566,141567,141568,141569,141570,141571,141572,141573,141574,141575,141576,141577,141578,141579,141580,141581,141582,141583,141584,141585,141586,141587,141588,141589,141590,141591,141592,141593,141594,141595,141596,141597,141598,141599,141600,141601,141602,141603,141604,141605,141606,141607,141608,141609,141610,141611,141612,141613,141614,141615,141616,141617,141618,141619,141620,141621,141622,141623,141624,141625,141626,141627,141628,141629,141630,141631,141632,141633,141635,141636,141637,141638,141639,141640,141641,141642,141643,141645,141646,141647,141648,141649,141650,141656);

--
-- Cleanup the creature_waypoints for Argent Vanguard phase 1
--
DELETE FROM `creature_waypoints` WHERE `spawnid` IN(44241,100428,108154,108189,108191,108234,121184,121187,123276,123280,123592,123594,123595,123736,123740,123741,123743,123746,123759,123763,123793,123794,124429,124430,124431,125210,125211,125212,125213,125214,125215,125216,125435,125514,125529,125530,125531,125532,125533,125534,125535,125536,125537,125538,125539,125540,125541,125542,125543,125544,125545,125546,125547,125548,125549,125550,125551,125552,125553,125554,125555,125556,125557,125558,125559,125560,125561,125562,125563,125564,125565,125566,125567,125568,125586,126666,126667,126668,126669,126670,126671,126672,126673,126674,126675,126676,126677,126678,126679,126680,126681,126682,126683,126684,126685,126686,126687,126688,126689,126690,126692,126693,126694,126696,126698,126699,126700,126701,126702,126703,126704,126705,126706,126710,126711,126717,126723,126729,126732,126734,126738,126739,126743,126745,126781,126782,126786,126787,126789,126790,126791,126792,126793,126794,126798,126799,126802,126803,126804,126805,126807,126810,126811,126812,126813,126814,126815,126816,126817,126818,126819,126820,126828,126829,126833,126835,126836,126837,126838,126839,127079,127515,127516,129838,129839,129840,129841,134783,134784,138317,138318,138319,138320,138321,138322,138324,138325,138326,138327,138328,138329,138330,138940,139042,139043,139044,139045,139046,139047,139048,139049,139050,139051,139052,139061,139062,139063,139064,139065,139066,139067,139068,139069,139070,139071,139072,139073,139074,139075,139076,139077,139078,139079,139080,139082,139140,139141,139180,139181,139182,139183,139184,139237,139238,139240,139241,139242,139243,139244,139245,139246,139247,139248,139249,139250,139251,139252,139253,139256,139257,139258,139259,139260,139261,139274,139275,139276,139277,139278,139279,139280,139281,139282,139283,139288,139289,139290,139291,139292,139293,139294,139295,139296,139297,139298,139299,139300,139301,139302,139303,139304,139305,139306,139307,139308,139309,139310,139311,139312,139313,139314,139315,139316,139317,139361,139364,139365,139366,139367,139387,139388,139389,139390,139391,139392,139633,139634,139635,139636,139637,139638,139639,139640,139641,139642,139643,139644,139645,139646,139647,139648,139649,139650,139651,139652,139653,139654,139655,139656,139657,139658,139659,139660,139661,139662,139663,139664,139665,139666,139667,139668,139669,139728,139729,139730,139731,139732,139733,139874,139875,139876,140104,140387,140388,140389,140393,140394,140395,140396,140397,140398,140399,140400,140450,140451,140452,140453,140454,140455,140456,140551,140552,140553,140554,140555,140556,140557,140558,140563,140568,140569,140571,140575,140579,140581,140582,140583,140584,140585,140586,140587,140588,140589,140590,140591,140592,140593,140594,140595,140771,140953,141025,141026,141027,141028,141029,141030,141469,141470,141472,141473,141474,141475,141477,141478,141479,141480,141481,141482,141483,141484,141485,141486,141487,141488,141489,141490,141491,141492,141493,141494,141495,141496,141497,141557,141558,141559,141560,141561,141562,141563,141564,141565,141566,141567,141568,141569,141570,141571,141572,141573,141574,141575,141576,141577,141578,141579,141580,141581,141582,141583,141584,141585,141586,141587,141588,141589,141590,141591,141592,141593,141594,141595,141596,141597,141598,141599,141600,141601,141602,141603,141604,141605,141606,141607,141608,141609,141610,141611,141612,141613,141614,141615,141616,141617,141618,141619,141620,141621,141622,141623,141624,141625,141626,141627,141628,141629,141630,141631,141632,141633,141635,141636,141637,141638,141639,141640,141641,141642,141643,141645,141646,141647,141648,141649,141650,141656);


--
-- Add new creature_spawns for Argent Vanguard phase 1
--

INSERT INTO `creature_spawns` (`id`, `entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movetype`, `displayid`, `faction`, `flags`, `bytes0`, `bytes1`, `bytes2`, `emote_state`, `npc_respawn_link`, `channel_spell`, `channel_target_sqlid`, `channel_target_sqlid_creature`, `standstate`, `death_state`, `mountdisplayid`, `slot1item`, `slot2item`, `slot3item`, `CanFly`, `phase`) VALUES
	(143611, 30013, 571, 6728.47, -127.282, 1064.67, 5.48793, 2, 26466, 1732, 32832, 16777472, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143612, 30013, 571, 6726.34, -30.36, 999.096, 1.33553, 2, 26466, 1732, 32832, 16777472, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143613, 29255, 571, 5958.8, 541.595, 660.573, 0.383972, 0, 26071, 2129, 33536, 2048, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143614, 29255, 571, 5990.72, 549.154, 660.573, 3.36848, 0, 26071, 2129, 33536, 2048, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143615, 29792, 571, 6717.14, -62.1521, 781.318, 3.13842, 1, 26554, 1711, 32768, 16843008, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143616, 29792, 571, 6765.97, -27.0604, 764.135, 1.24603, 1, 26554, 1711, 32768, 16843008, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143617, 29792, 571, 6769.5, -48.9791, 755.978, 0.140997, 1, 26554, 1711, 32768, 16843008, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143618, 29792, 571, 6723.19, -48.1131, 749.283, 2.97586, 1, 26553, 1711, 32768, 16843008, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143619, 29793, 571, 6829.03, 41.1422, 773.231, 3.52556, 1, 26552, 1711, 32768, 67584, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143620, 29793, 571, 6809.66, -0.104655, 758.342, 0.792065, 1, 26552, 1711, 32768, 67584, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143621, 29793, 571, 6748.79, -75.3914, 743.463, 0.680678, 1, 26552, 1711, 32768, 67584, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143622, 29808, 571, 6678.46, 21.8316, 752.695, 2.47837, 1, 26566, 1999, 0, 16777472, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143623, 29808, 571, 6710.08, 53.0191, 749.479, 5.34071, 1, 26566, 1999, 0, 16777472, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143624, 29672, 571, 5990.34, 536.62, 661.157, 4.99164, 0, 26503, 714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143625, 29676, 571, 5974.76, 544.652, 661.779, 1.97222, 0, 26505, 714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143626, 31240, 571, 6386.76, 462.427, 516.462, 5.42797, 0, 27526, 1981, 33536, 16777472, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143627, 31241, 571, 6379.6, 465.147, 516.483, 0.261799, 0, 27527, 1892, 33536, 16777472, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143628, 31033, 571, 6396.28, 426.492, 511.375, 0.418879, 0, 26844, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143629, 31033, 571, 6429.67, 424.552, 508.657, 5.89921, 0, 26842, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143630, 31033, 571, 6401.28, 522.744, 506.615, 0.436332, 0, 26843, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143631, 31033, 571, 6453.87, 400.382, 491.584, 0.191986, 0, 26845, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143632, 31033, 571, 6397.92, 537.339, 505.606, 1.60691, 2, 26842, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143633, 31033, 571, 6402.59, 444.336, 511.375, 6.21337, 0, 26845, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143634, 31033, 571, 6405.23, 453.111, 511.374, 5.89921, 0, 26843, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143635, 31033, 571, 6502.34, 481.952, 422.752, 1.71042, 0, 26843, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143636, 31033, 571, 6443.46, 404.977, 495.84, 5.38011, 2, 26844, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143637, 31033, 571, 6422.97, 411.065, 507.086, 5.5676, 0, 26845, 2131, 32768, 66048, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 42543, 0, 0, 1),
	(143638, 31037, 571, 6858.02, 453.902, 471.767, 4.7822, 0, 26852, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42426, 0, 0, 0, 1),
	(143639, 31037, 571, 6835.59, 414.643, 471.77, 0.802851, 0, 26852, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42426, 0, 0, 0, 1),
	(143640, 31037, 571, 6747.13, 456.848, 419.284, 1.39626, 0, 26852, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42426, 0, 0, 0, 1),
	(143641, 31037, 571, 6745.99, 449.016, 419.284, 4.4855, 0, 26852, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42426, 0, 0, 0, 1),
	(143642, 31039, 571, 6760.42, 515.039, 411.837, 3.66099, 2, 23883, 2068, 32768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143643, 31039, 571, 6697.87, 429.598, 406.569, 1.77104, 2, 23883, 2068, 32768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143644, 31039, 571, 6575.6, 465.094, 407.446, 2.69257, 2, 23883, 2068, 32768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143645, 31039, 571, 6641.92, 396.595, 408.673, 2.55359, 2, 23883, 2068, 32768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143646, 32320, 571, 6382.19, 439.719, 545.899, 1.8326, 0, 556, 2070, 33536, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1902, 0, 0, 0, 1),
	(143647, 32320, 571, 6394.13, 463.248, 528.416, 3.94444, 0, 556, 2070, 33536, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1902, 0, 0, 0, 1),
	(143648, 32320, 571, 6390.08, 468.587, 537.739, 3.97935, 0, 556, 2070, 33536, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1902, 0, 0, 0, 1),
	(143649, 32320, 571, 6387.17, 440.626, 545.921, 1.88496, 0, 556, 2070, 33536, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1902, 0, 0, 0, 1),
	(143650, 31040, 571, 6753.66, 410.408, 446.625, 3.19529, 2, 0, 2068, 32768, 66048, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143651, 31040, 571, 6559.29, 413.281, 462.263, 6.13325, 2, 0, 2068, 32768, 66048, 50331648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143652, 31043, 571, 6770.55, 386.311, 421.153, 2.7317, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143653, 31043, 571, 6655.04, 328.894, 442.276, 0.929563, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143654, 31043, 571, 6526.88, 512.588, 412.274, 2.77181, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143655, 31043, 571, 6513.35, 523.34, 415.136, 0.501217, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143656, 31043, 571, 6697.52, 476.907, 401.588, 2.99677, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143657, 31043, 571, 6704.82, 441.489, 406.499, 3.35221, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143658, 31043, 571, 6723.74, 417.997, 412.953, 4.18409, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143659, 31043, 571, 6644.93, 422.78, 401.853, 3.19711, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143660, 31043, 571, 6654.72, 492.468, 398.206, 2.81552, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143661, 31043, 571, 6630.65, 458.047, 398.995, 5.84132, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143662, 31043, 571, 6563.32, 539.29, 404.559, 0.919091, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143663, 31043, 571, 6617.92, 519.797, 396.795, 1.55615, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143664, 31043, 571, 6707.83, 535.834, 405.493, 5.84095, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143665, 31043, 571, 6758.07, 512.831, 410.903, 2.78648, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143666, 31043, 571, 6764.6, 535.115, 415.201, 3.48219, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143667, 31043, 571, 6669.68, 527.603, 401.525, 5.13205, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143668, 31043, 571, 6545.45, 535.57, 407.359, 1.50529, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143669, 31043, 571, 6576.55, 460.06, 408.104, 0.763302, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143670, 31043, 571, 6606.58, 489.339, 398.158, 5.60417, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143671, 31043, 571, 6563.66, 505.381, 403.489, 0.430917, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143672, 31043, 571, 6579.71, 401.572, 416.112, 6.10437, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143673, 31043, 571, 6632.51, 382.456, 412.855, 5.91518, 1, 27553, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143674, 31043, 571, 6721.48, 346.299, 424.582, 5.91108, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143675, 31043, 571, 6657.63, 385.761, 411.832, 2.05191, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143676, 31043, 571, 6709.57, 384.33, 414.698, 3.57468, 1, 26851, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143677, 31043, 571, 6722.58, 492.852, 405.603, 5.6035, 1, 27552, 2068, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143678, 31044, 571, 6426.66, 440.038, 511.307, 0.296706, 0, 22209, 2073, 32832, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 13262, 0, 0, 0, 1),
	(143679, 31045, 571, 6399.26, 440.382, 511.375, 0, 0, 2325, 2070, 768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143680, 31059, 571, 6425.99, 441.844, 511.099, 0.15708, 0, 26862, 2070, 32768, 16777472, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143681, 31063, 571, 6406.79, 432.179, 511.366, 0.506145, 0, 26864, 2070, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2786, 39290, 40596, 0, 0, 1),
	(143682, 31067, 571, 6407.62, 429.987, 511.365, 0.733038, 0, 26865, 2070, 32768, 512, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143683, 31069, 571, 6401.22, 464.245, 512.632, 1.23918, 0, 26867, 2070, 32768, 16777472, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143684, 31070, 571, 6398.8, 403.924, 553.351, 5.61996, 0, 26883, 2070, 32768, 16777472, 50331649, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143685, 31070, 571, 6404.87, 409.443, 553.153, 5.60251, 0, 26883, 2070, 32768, 16777472, 50331649, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143686, 31070, 571, 6418.24, 497.34, 514.255, 6.23082, 0, 26883, 2070, 32768, 16777472, 50331649, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143687, 31070, 571, 6419.36, 488.429, 516.486, 0.331613, 0, 26883, 2070, 32768, 16777472, 50331649, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
	(143688, 31115, 571, 6385.98, 453.537, 513.774, 5.98648, 0, 27476, 2071, 32768, 66048, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42544, 0, 0, 0, 1),
	(143689, 26525, 571, 6845.74, 532.454, 423.892, 5.26021, 1, 23902, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143690, 26525, 571, 6739, 517.328, 406.877, 1.4079, 1, 23902, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143691, 26525, 571, 6572.66, 526.666, 401.857, 1.41592, 1, 23902, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143692, 26525, 571, 6696.39, 446.606, 405.106, 4.589, 1, 23902, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143693, 30656, 571, 6409.12, 422.382, 511.348, 0.628319, 0, 27212, 2007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143694, 6491, 571, 6068.46, 94.7759, 370.063, 5.43011, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(143695, 24879, 571, 6717.53, 184.454, 626.635, 6.10438, 1, 0, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

--
-- Add waypoints for new spawns
--

INSERT INTO `creature_waypoints` (`spawnid`, `waypointid`, `position_x`, `position_y`, `position_z`, `waittime`, `flags`, `forwardemoteoneshot`, `forwardemoteid`, `backwardemoteoneshot`, `backwardemoteid`, `forwardskinid`, `backwardskinid`)
VALUES
   (143611, 1, 6630.1, -152.596, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 2, 6663.15, -136.394, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 3, 6705.55, -94.231, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 4, 6728.9, 43.0447, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 5, 6628.84, 175.643, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 6, 6520.25, 148.976, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 7, 6386.17, -22.6662, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 8, 6253.46, -195.814, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 9, 6330.91, -276.611, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143611, 10, 6537.5, -198.99, 999.096, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 1, 6725.23, -25.5343, 999.721, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 2, 6638.64, -52.1545, 991.158, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 3, 6567.93, -153.043, 1001.6, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 4, 6591.39, -224.503, 1003.98, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 5, 6695.52, -252.929, 1022.53, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 6, 6802.43, -243.026, 1022.41, 0, 256, 0, 0, 0, 0, 0, 0),
   (143612, 7, 6798.22, -161.789, 1046.53, 0, 256, 0, 0, 0, 0, 0, 0),
   (143632, 1, 6404.67, 525.957, 506.415, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 2, 6403.92, 507.188, 508.29, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 3, 6405.14, 485.523, 510.609, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 4, 6407.19, 468.246, 511.359, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 5, 6408.98, 456.417, 511.396, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 6, 6412.9, 441.48, 511.396, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 7, 6416.24, 428.495, 511.348, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 8, 6413.35, 428.259, 511.348, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 9, 6409.15, 447.218, 511.396, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 10, 6405.21, 471.995, 511.359, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 11, 6406.19, 474.395, 511.359, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 12, 6406.02, 500.001, 509.109, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 13, 6405.04, 527.318, 506.29, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 14, 6398.44, 538.284, 505.481, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 15, 6380.73, 559.505, 503.481, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 16, 6362.59, 577.563, 491.415, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 17, 6369.19, 588.76, 480.577, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 18, 6389.31, 600.742, 459.133, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 19, 6370.35, 587.624, 480.577, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 20, 6362.34, 579.598, 490.04, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 21, 6369.45, 569.483, 498.077, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 22, 6381.52, 559.138, 503.731, 0, 0, 0, 0, 0, 0, 0, 0),
   (143632, 23, 6397.92, 537.339, 505.606, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 1, 6464.22, 404.819, 489.215, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 2, 6487.38, 411.147, 482.595, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 3, 6512.12, 424.221, 461.774, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 4, 6516.9, 441.15, 446.9, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 5, 6505.98, 455.014, 440.025, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 6, 6498.7, 486.042, 422.395, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 7, 6505.98, 455.014, 440.025, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 8, 6516.9, 441.15, 446.9, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 9, 6512.12, 424.221, 461.774, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 10, 6487.43, 411.14, 482.595, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 11, 6464.22, 404.819, 489.215, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 12, 6443.46, 404.977, 495.84, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 13, 6426.75, 418.776, 508.098, 0, 0, 0, 0, 0, 0, 0, 0),
   (143636, 14, 6443.46, 404.977, 495.84, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 1, 6751.58, 521.709, 409.087, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 2, 6775.59, 535.639, 418.22, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 3, 6790.69, 546.924, 424.095, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 4, 6797.82, 545.099, 424.47, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 5, 6787.22, 530.424, 421.059, 0, 0, 0, 0, 0, 0, 0, 0),
   (143642, 6, 6760.42, 515.039, 411.837, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 1, 6698.5, 458.598, 404.586, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 2, 6695.69, 473.044, 401.838, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 3, 6665, 494.007, 397.863, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 4, 6621.27, 520.385, 397.423, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 5, 6601.79, 552.183, 399.092, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 6, 6579.75, 536.627, 401.438, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 7, 6599.6, 508.629, 398.578, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 8, 6627.41, 480.195, 397.408, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 9, 6643.31, 442.918, 399.225, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 10, 6674.23, 416.566, 405.944, 0, 0, 0, 0, 0, 0, 0, 0),
   (143643, 11, 6697.87, 429.598, 406.569, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 1, 6552.96, 457.401, 412.93, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 2, 6551.69, 432.508, 416.436, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 3, 6568.85, 415.311, 415.444, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 4, 6572.9, 410.44, 415.694, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 5, 6577.95, 406.559, 415.694, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 6, 6591.15, 393.959, 416.312, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 7, 6624.85, 389.377, 412.855, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 8, 6642.71, 398.137, 408.048, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 9, 6642.51, 414.137, 403.978, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 10, 6613.73, 435.694, 403.495, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 11, 6598.72, 453.969, 403.196, 0, 0, 0, 0, 0, 0, 0, 0),
   (143644, 12, 6575.6, 465.094, 407.446, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 1, 6665.69, 385.118, 411.923, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 2, 6688.12, 372.121, 414.309, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 3, 6681.71, 337.864, 421.782, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 4, 6711.15, 330.663, 422.912, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 5, 6729, 353.407, 426.957, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 6, 6759.39, 371.963, 426.169, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 7, 6742.83, 378.436, 419.544, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 8, 6710.78, 380.507, 415.679, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 9, 6685.82, 397.148, 408.809, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 10, 6655.42, 406.866, 405.478, 0, 0, 0, 0, 0, 0, 0, 0),
   (143645, 11, 6641.92, 396.595, 408.673, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 1, 6585.6, 408.848, 446.514, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 2, 6607.57, 400.701, 444.745, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 3, 6647.89, 401.573, 444.745, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 4, 6667.63, 414.847, 433.912, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 5, 6648.87, 462.506, 444.745, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 6, 6592.11, 478.371, 444.745, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 7, 6501.26, 474.703, 444.745, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 8, 6484.09, 430.145, 485.097, 0, 0, 0, 0, 0, 0, 0, 0),
   (143651, 9, 6519.88, 419.711, 485.097, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 1, 6764.29, 413.94, 446.625, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 2, 6727.13, 417.659, 446.625, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 3, 6709.2, 445.43, 446.625, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 4, 6714.21, 476.942, 446.625, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 5, 6760.44, 491.312, 446.625, 0, 0, 0, 0, 0, 0, 0, 0),
   (143650, 6, 6786.47, 463.163, 446.625, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- Update world_db_version
--

UPDATE `world_db_version` SET `LastUpdate` = '2015-10-21_02_creature_spawns' WHERE `LastUpdate` = '2015-10-21_01_phase_spawns_map_571';
