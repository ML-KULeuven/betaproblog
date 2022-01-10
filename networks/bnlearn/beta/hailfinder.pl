%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:59:10.343014

dir(5)::wndHodograph("DCVZFavor"); dir(13)::wndHodograph("StrongWest"); dir(4)::wndHodograph("Westerly"); dir(23)::wndHodograph("Other").
dir(4)::aMDewptCalPl("Instability"); dir(15)::aMDewptCalPl("Neutral"); dir(8)::aMDewptCalPl("Stability").
dir(11)::loLevMoistAd("StrongPos"); dir(25)::loLevMoistAd("WeakPos"); dir(26)::loLevMoistAd("Neutral"); dir(2)::loLevMoistAd("Negative").
dir(10)::raoContMoist("VeryWet"); dir(6)::raoContMoist("Wet"); dir(30)::raoContMoist("Neutral"); dir(23)::raoContMoist("Dry").
dir(16)::latestCIN("None"); dir(21)::latestCIN("PartInhibit"); dir(23)::latestCIN("Stifling"); dir(22)::latestCIN("TotalInhibit").
dir(23)::vISCloudCov("Cloudy"); dir(17)::vISCloudCov("PC"); dir(19)::vISCloudCov("Clear").
dir(17)::qGVertMotion("StrongUp"); dir(9)::qGVertMotion("WeakUp"); dir(19)::qGVertMotion("Neutral"); dir(16)::qGVertMotion("Down").
dir(18)::date("May15_Jun14"); dir(21)::date("Jun15_Jul1"); dir(19)::date("Jul2_Jul15"); dir(28)::date("Jul16_Aug10"); dir(4)::date("Aug11_Aug20"); dir(17)::date("Aug20_Sep15").
dir(26)::iRCloudCover("Cloudy"); dir(9)::iRCloudCover("PC"); dir(30)::iRCloudCover("Clear").
dir(3)::morningCIN("None"); dir(4)::morningCIN("PartInhibit"); dir(25)::morningCIN("Stifling"); dir(27)::morningCIN("TotalInhibit").
dir(24)::morningBound("None"); dir(26)::morningBound("Weak"); dir(27)::morningBound("Strong").
dir(15)::n0_7muVerMo("StrongUp"); dir(5)::n0_7muVerMo("WeakUp"); dir(4)::n0_7muVerMo("Neutral"); dir(3)::n0_7muVerMo("Down").
dir(17)::lLIW("Unfavorable"); dir(8)::lLIW("Weak"); dir(13)::lLIW("Moderate"); dir(1)::lLIW("Strong").
dir(4)::aMInstabMt("None"); dir(16)::aMInstabMt("Weak"); dir(26)::aMInstabMt("Strong").
dir(8)::satContMoist("VeryWet"); dir(1)::satContMoist("Wet"); dir(6)::satContMoist("Neutral"); dir(29)::satContMoist("Dry").
dir(15)::subjVertMo("StronUp"); dir(11)::subjVertMo("WeakUp"); dir(11)::subjVertMo("Neutral"); dir(12)::subjVertMo("Down").
dir(27)::lIfr12ZDENSd("LIGt0"); dir(1)::lIfr12ZDENSd("N1GtLIGt_4"); dir(15)::lIfr12ZDENSd("N5GtLIGt_8"); dir(4)::lIfr12ZDENSd("LILt_8").
dir(7)::curPropConv("None"); dir(20)::curPropConv("Slight"); dir(14)::curPropConv("Moderate"); dir(11)::curPropConv("Strong") :- latestCIN("None"), lLIW("Unfavorable").
dir(9)::curPropConv("None"); dir(30)::curPropConv("Slight"); dir(21)::curPropConv("Moderate"); dir(23)::curPropConv("Strong") :- latestCIN("None"), lLIW("Weak").
dir(14)::curPropConv("None"); dir(11)::curPropConv("Slight"); dir(16)::curPropConv("Moderate"); dir(23)::curPropConv("Strong") :- latestCIN("None"), lLIW("Moderate").
dir(7)::curPropConv("None"); dir(17)::curPropConv("Slight"); dir(21)::curPropConv("Moderate"); dir(16)::curPropConv("Strong") :- latestCIN("None"), lLIW("Strong").
dir(13)::curPropConv("None"); dir(23)::curPropConv("Slight"); dir(14)::curPropConv("Moderate"); dir(16)::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Unfavorable").
dir(24)::curPropConv("None"); dir(5)::curPropConv("Slight"); dir(1)::curPropConv("Moderate"); dir(20)::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Weak").
dir(9)::curPropConv("None"); dir(16)::curPropConv("Slight"); dir(6)::curPropConv("Moderate"); dir(22)::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Moderate").
dir(24)::curPropConv("None"); dir(5)::curPropConv("Slight"); dir(5)::curPropConv("Moderate"); dir(4)::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Strong").
dir(22)::curPropConv("None"); dir(10)::curPropConv("Slight"); dir(12)::curPropConv("Moderate"); dir(7)::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Unfavorable").
dir(8)::curPropConv("None"); dir(12)::curPropConv("Slight"); dir(30)::curPropConv("Moderate"); dir(26)::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Weak").
dir(26)::curPropConv("None"); dir(9)::curPropConv("Slight"); dir(22)::curPropConv("Moderate"); dir(5)::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Moderate").
dir(11)::curPropConv("None"); dir(30)::curPropConv("Slight"); dir(26)::curPropConv("Moderate"); dir(22)::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Strong").
dir(3)::curPropConv("None"); dir(6)::curPropConv("Slight"); dir(18)::curPropConv("Moderate"); dir(30)::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Unfavorable").
dir(4)::curPropConv("None"); dir(6)::curPropConv("Slight"); dir(9)::curPropConv("Moderate"); dir(19)::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Weak").
dir(10)::curPropConv("None"); dir(21)::curPropConv("Slight"); dir(14)::curPropConv("Moderate"); dir(22)::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Moderate").
dir(4)::curPropConv("None"); dir(3)::curPropConv("Slight"); dir(25)::curPropConv("Moderate"); dir(27)::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Strong").
dir(2)::combClouds("Cloudy"); dir(26)::combClouds("PC"); dir(6)::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Cloudy").
dir(2)::combClouds("Cloudy"); dir(4)::combClouds("PC"); dir(13)::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("PC").
dir(30)::combClouds("Cloudy"); dir(24)::combClouds("PC"); dir(16)::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Clear").
dir(3)::combClouds("Cloudy"); dir(2)::combClouds("PC"); dir(3)::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Cloudy").
dir(7)::combClouds("Cloudy"); dir(28)::combClouds("PC"); dir(24)::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("PC").
dir(11)::combClouds("Cloudy"); dir(9)::combClouds("PC"); dir(1)::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Clear").
dir(16)::combClouds("Cloudy"); dir(29)::combClouds("PC"); dir(30)::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Cloudy").
dir(18)::combClouds("Cloudy"); dir(20)::combClouds("PC"); dir(30)::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("PC").
dir(27)::combClouds("Cloudy"); dir(4)::combClouds("PC"); dir(18)::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Clear").
dir(16)::combMoisture("VeryWet"); dir(4)::combMoisture("Wet"); dir(19)::combMoisture("Neutral"); dir(30)::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("VeryWet").
dir(17)::combMoisture("VeryWet"); dir(18)::combMoisture("Wet"); dir(30)::combMoisture("Neutral"); dir(29)::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Wet").
dir(2)::combMoisture("VeryWet"); dir(29)::combMoisture("Wet"); dir(8)::combMoisture("Neutral"); dir(15)::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Neutral").
dir(15)::combMoisture("VeryWet"); dir(6)::combMoisture("Wet"); dir(8)::combMoisture("Neutral"); dir(18)::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Dry").
dir(9)::combMoisture("VeryWet"); dir(13)::combMoisture("Wet"); dir(24)::combMoisture("Neutral"); dir(14)::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("VeryWet").
dir(12)::combMoisture("VeryWet"); dir(22)::combMoisture("Wet"); dir(15)::combMoisture("Neutral"); dir(4)::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Wet").
dir(19)::combMoisture("VeryWet"); dir(22)::combMoisture("Wet"); dir(9)::combMoisture("Neutral"); dir(7)::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Neutral").
dir(9)::combMoisture("VeryWet"); dir(24)::combMoisture("Wet"); dir(21)::combMoisture("Neutral"); dir(15)::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Dry").
dir(12)::combMoisture("VeryWet"); dir(15)::combMoisture("Wet"); dir(24)::combMoisture("Neutral"); dir(14)::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("VeryWet").
dir(4)::combMoisture("VeryWet"); dir(21)::combMoisture("Wet"); dir(4)::combMoisture("Neutral"); dir(29)::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Wet").
dir(15)::combMoisture("VeryWet"); dir(25)::combMoisture("Wet"); dir(29)::combMoisture("Neutral"); dir(1)::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Neutral").
dir(30)::combMoisture("VeryWet"); dir(30)::combMoisture("Wet"); dir(1)::combMoisture("Neutral"); dir(18)::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Dry").
dir(21)::combMoisture("VeryWet"); dir(30)::combMoisture("Wet"); dir(20)::combMoisture("Neutral"); dir(24)::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("VeryWet").
dir(16)::combMoisture("VeryWet"); dir(17)::combMoisture("Wet"); dir(25)::combMoisture("Neutral"); dir(10)::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Wet").
dir(24)::combMoisture("VeryWet"); dir(10)::combMoisture("Wet"); dir(3)::combMoisture("Neutral"); dir(4)::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Neutral").
dir(14)::combMoisture("VeryWet"); dir(6)::combMoisture("Wet"); dir(2)::combMoisture("Neutral"); dir(29)::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Dry").
dir(2)::scenario("A"); dir(17)::scenario("B"); dir(8)::scenario("C"); dir(17)::scenario("D"); dir(22)::scenario("E"); dir(16)::scenario("F"); dir(3)::scenario("G"); dir(10)::scenario("H"); dir(15)::scenario("I"); dir(16)::scenario("J"); dir(22)::scenario("K") :- date("May15_Jun14").
dir(25)::scenario("A"); dir(18)::scenario("B"); dir(22)::scenario("C"); dir(13)::scenario("D"); dir(25)::scenario("E"); dir(16)::scenario("F"); dir(2)::scenario("G"); dir(30)::scenario("H"); dir(27)::scenario("I"); dir(9)::scenario("J"); dir(28)::scenario("K") :- date("Jun15_Jul1").
dir(4)::scenario("A"); dir(27)::scenario("B"); dir(2)::scenario("C"); dir(23)::scenario("D"); dir(20)::scenario("E"); dir(2)::scenario("F"); dir(19)::scenario("G"); dir(10)::scenario("H"); dir(28)::scenario("I"); dir(1)::scenario("J"); dir(15)::scenario("K") :- date("Jul2_Jul15").
dir(25)::scenario("A"); dir(30)::scenario("B"); dir(20)::scenario("C"); dir(12)::scenario("D"); dir(6)::scenario("E"); dir(20)::scenario("F"); dir(17)::scenario("G"); dir(30)::scenario("H"); dir(23)::scenario("I"); dir(3)::scenario("J"); dir(12)::scenario("K") :- date("Jul16_Aug10").
dir(8)::scenario("A"); dir(23)::scenario("B"); dir(23)::scenario("C"); dir(10)::scenario("D"); dir(18)::scenario("E"); dir(28)::scenario("F"); dir(10)::scenario("G"); dir(4)::scenario("H"); dir(10)::scenario("I"); dir(16)::scenario("J"); dir(19)::scenario("K") :- date("Aug11_Aug20").
dir(2)::scenario("A"); dir(13)::scenario("B"); dir(15)::scenario("C"); dir(11)::scenario("D"); dir(8)::scenario("E"); dir(27)::scenario("F"); dir(11)::scenario("G"); dir(1)::scenario("H"); dir(18)::scenario("I"); dir(7)::scenario("J"); dir(20)::scenario("K") :- date("Aug20_Sep15").
dir(15)::combVerMo("StrongUp"); dir(6)::combVerMo("WeakUp"); dir(27)::combVerMo("Neutral"); dir(28)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
dir(12)::combVerMo("StrongUp"); dir(1)::combVerMo("WeakUp"); dir(28)::combVerMo("Neutral"); dir(4)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
dir(4)::combVerMo("StrongUp"); dir(30)::combVerMo("WeakUp"); dir(1)::combVerMo("Neutral"); dir(12)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
dir(6)::combVerMo("StrongUp"); dir(2)::combVerMo("WeakUp"); dir(3)::combVerMo("Neutral"); dir(8)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Down").
dir(6)::combVerMo("StrongUp"); dir(2)::combVerMo("WeakUp"); dir(10)::combVerMo("Neutral"); dir(11)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
dir(16)::combVerMo("StrongUp"); dir(21)::combVerMo("WeakUp"); dir(15)::combVerMo("Neutral"); dir(21)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
dir(4)::combVerMo("StrongUp"); dir(8)::combVerMo("WeakUp"); dir(27)::combVerMo("Neutral"); dir(24)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
dir(15)::combVerMo("StrongUp"); dir(15)::combVerMo("WeakUp"); dir(17)::combVerMo("Neutral"); dir(2)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
dir(12)::combVerMo("StrongUp"); dir(24)::combVerMo("WeakUp"); dir(7)::combVerMo("Neutral"); dir(6)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
dir(10)::combVerMo("StrongUp"); dir(1)::combVerMo("WeakUp"); dir(1)::combVerMo("Neutral"); dir(26)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
dir(27)::combVerMo("StrongUp"); dir(25)::combVerMo("WeakUp"); dir(23)::combVerMo("Neutral"); dir(7)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
dir(23)::combVerMo("StrongUp"); dir(8)::combVerMo("WeakUp"); dir(25)::combVerMo("Neutral"); dir(20)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Down").
dir(17)::combVerMo("StrongUp"); dir(4)::combVerMo("WeakUp"); dir(9)::combVerMo("Neutral"); dir(20)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
dir(7)::combVerMo("StrongUp"); dir(13)::combVerMo("WeakUp"); dir(2)::combVerMo("Neutral"); dir(14)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
dir(22)::combVerMo("StrongUp"); dir(5)::combVerMo("WeakUp"); dir(2)::combVerMo("Neutral"); dir(23)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Neutral").
dir(28)::combVerMo("StrongUp"); dir(27)::combVerMo("WeakUp"); dir(13)::combVerMo("Neutral"); dir(14)::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Down").
dir(28)::combVerMo("StrongUp"); dir(18)::combVerMo("WeakUp"); dir(26)::combVerMo("Neutral"); dir(17)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
dir(17)::combVerMo("StrongUp"); dir(17)::combVerMo("WeakUp"); dir(23)::combVerMo("Neutral"); dir(26)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
dir(10)::combVerMo("StrongUp"); dir(12)::combVerMo("WeakUp"); dir(11)::combVerMo("Neutral"); dir(7)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
dir(4)::combVerMo("StrongUp"); dir(10)::combVerMo("WeakUp"); dir(30)::combVerMo("Neutral"); dir(28)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Down").
dir(11)::combVerMo("StrongUp"); dir(19)::combVerMo("WeakUp"); dir(6)::combVerMo("Neutral"); dir(29)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
dir(8)::combVerMo("StrongUp"); dir(18)::combVerMo("WeakUp"); dir(30)::combVerMo("Neutral"); dir(25)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
dir(25)::combVerMo("StrongUp"); dir(30)::combVerMo("WeakUp"); dir(9)::combVerMo("Neutral"); dir(13)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
dir(5)::combVerMo("StrongUp"); dir(20)::combVerMo("WeakUp"); dir(22)::combVerMo("Neutral"); dir(12)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
dir(14)::combVerMo("StrongUp"); dir(28)::combVerMo("WeakUp"); dir(23)::combVerMo("Neutral"); dir(9)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
dir(8)::combVerMo("StrongUp"); dir(8)::combVerMo("WeakUp"); dir(14)::combVerMo("Neutral"); dir(22)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
dir(27)::combVerMo("StrongUp"); dir(30)::combVerMo("WeakUp"); dir(20)::combVerMo("Neutral"); dir(19)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
dir(8)::combVerMo("StrongUp"); dir(4)::combVerMo("WeakUp"); dir(30)::combVerMo("Neutral"); dir(5)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Down").
dir(19)::combVerMo("StrongUp"); dir(18)::combVerMo("WeakUp"); dir(3)::combVerMo("Neutral"); dir(2)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
dir(27)::combVerMo("StrongUp"); dir(23)::combVerMo("WeakUp"); dir(21)::combVerMo("Neutral"); dir(23)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
dir(28)::combVerMo("StrongUp"); dir(16)::combVerMo("WeakUp"); dir(11)::combVerMo("Neutral"); dir(2)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Neutral").
dir(2)::combVerMo("StrongUp"); dir(2)::combVerMo("WeakUp"); dir(2)::combVerMo("Neutral"); dir(17)::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Down").
dir(1)::combVerMo("StrongUp"); dir(2)::combVerMo("WeakUp"); dir(21)::combVerMo("Neutral"); dir(1)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
dir(12)::combVerMo("StrongUp"); dir(17)::combVerMo("WeakUp"); dir(12)::combVerMo("Neutral"); dir(11)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
dir(18)::combVerMo("StrongUp"); dir(30)::combVerMo("WeakUp"); dir(17)::combVerMo("Neutral"); dir(23)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Neutral").
dir(21)::combVerMo("StrongUp"); dir(9)::combVerMo("WeakUp"); dir(4)::combVerMo("Neutral"); dir(13)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Down").
dir(24)::combVerMo("StrongUp"); dir(15)::combVerMo("WeakUp"); dir(26)::combVerMo("Neutral"); dir(10)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
dir(26)::combVerMo("StrongUp"); dir(1)::combVerMo("WeakUp"); dir(18)::combVerMo("Neutral"); dir(29)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
dir(16)::combVerMo("StrongUp"); dir(11)::combVerMo("WeakUp"); dir(24)::combVerMo("Neutral"); dir(29)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
dir(17)::combVerMo("StrongUp"); dir(6)::combVerMo("WeakUp"); dir(20)::combVerMo("Neutral"); dir(3)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Down").
dir(7)::combVerMo("StrongUp"); dir(5)::combVerMo("WeakUp"); dir(9)::combVerMo("Neutral"); dir(27)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
dir(19)::combVerMo("StrongUp"); dir(8)::combVerMo("WeakUp"); dir(7)::combVerMo("Neutral"); dir(18)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
dir(15)::combVerMo("StrongUp"); dir(8)::combVerMo("WeakUp"); dir(12)::combVerMo("Neutral"); dir(18)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Neutral").
dir(21)::combVerMo("StrongUp"); dir(13)::combVerMo("WeakUp"); dir(20)::combVerMo("Neutral"); dir(3)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Down").
dir(19)::combVerMo("StrongUp"); dir(1)::combVerMo("WeakUp"); dir(6)::combVerMo("Neutral"); dir(27)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("StrongUp").
dir(27)::combVerMo("StrongUp"); dir(4)::combVerMo("WeakUp"); dir(21)::combVerMo("Neutral"); dir(30)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("WeakUp").
dir(2)::combVerMo("StrongUp"); dir(17)::combVerMo("WeakUp"); dir(27)::combVerMo("Neutral"); dir(6)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Neutral").
dir(25)::combVerMo("StrongUp"); dir(16)::combVerMo("WeakUp"); dir(17)::combVerMo("Neutral"); dir(13)::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Down").
dir(17)::combVerMo("StrongUp"); dir(13)::combVerMo("WeakUp"); dir(12)::combVerMo("Neutral"); dir(21)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
dir(16)::combVerMo("StrongUp"); dir(25)::combVerMo("WeakUp"); dir(22)::combVerMo("Neutral"); dir(23)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
dir(10)::combVerMo("StrongUp"); dir(11)::combVerMo("WeakUp"); dir(30)::combVerMo("Neutral"); dir(18)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Neutral").
dir(25)::combVerMo("StrongUp"); dir(12)::combVerMo("WeakUp"); dir(1)::combVerMo("Neutral"); dir(8)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Down").
dir(17)::combVerMo("StrongUp"); dir(3)::combVerMo("WeakUp"); dir(24)::combVerMo("Neutral"); dir(22)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
dir(27)::combVerMo("StrongUp"); dir(9)::combVerMo("WeakUp"); dir(18)::combVerMo("Neutral"); dir(20)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
dir(2)::combVerMo("StrongUp"); dir(26)::combVerMo("WeakUp"); dir(17)::combVerMo("Neutral"); dir(28)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
dir(14)::combVerMo("StrongUp"); dir(23)::combVerMo("WeakUp"); dir(8)::combVerMo("Neutral"); dir(5)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Down").
dir(17)::combVerMo("StrongUp"); dir(2)::combVerMo("WeakUp"); dir(21)::combVerMo("Neutral"); dir(7)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
dir(20)::combVerMo("StrongUp"); dir(13)::combVerMo("WeakUp"); dir(11)::combVerMo("Neutral"); dir(25)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
dir(16)::combVerMo("StrongUp"); dir(12)::combVerMo("WeakUp"); dir(29)::combVerMo("Neutral"); dir(24)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Neutral").
dir(3)::combVerMo("StrongUp"); dir(24)::combVerMo("WeakUp"); dir(12)::combVerMo("Neutral"); dir(24)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Down").
dir(12)::combVerMo("StrongUp"); dir(22)::combVerMo("WeakUp"); dir(2)::combVerMo("Neutral"); dir(17)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("StrongUp").
dir(24)::combVerMo("StrongUp"); dir(18)::combVerMo("WeakUp"); dir(7)::combVerMo("Neutral"); dir(29)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("WeakUp").
dir(21)::combVerMo("StrongUp"); dir(11)::combVerMo("WeakUp"); dir(12)::combVerMo("Neutral"); dir(14)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Neutral").
dir(12)::combVerMo("StrongUp"); dir(5)::combVerMo("WeakUp"); dir(30)::combVerMo("Neutral"); dir(4)::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Down").
dir(21)::windAloft("LV"); dir(3)::windAloft("SWQuad"); dir(4)::windAloft("NWQuad"); dir(12)::windAloft("AllElse") :- scenario("A").
dir(25)::windAloft("LV"); dir(2)::windAloft("SWQuad"); dir(11)::windAloft("NWQuad"); dir(28)::windAloft("AllElse") :- scenario("B").
dir(28)::windAloft("LV"); dir(6)::windAloft("SWQuad"); dir(18)::windAloft("NWQuad"); dir(21)::windAloft("AllElse") :- scenario("C").
dir(28)::windAloft("LV"); dir(12)::windAloft("SWQuad"); dir(20)::windAloft("NWQuad"); dir(30)::windAloft("AllElse") :- scenario("D").
dir(21)::windAloft("LV"); dir(13)::windAloft("SWQuad"); dir(3)::windAloft("NWQuad"); dir(4)::windAloft("AllElse") :- scenario("E").
dir(4)::windAloft("LV"); dir(19)::windAloft("SWQuad"); dir(20)::windAloft("NWQuad"); dir(26)::windAloft("AllElse") :- scenario("F").
dir(8)::windAloft("LV"); dir(22)::windAloft("SWQuad"); dir(6)::windAloft("NWQuad"); dir(25)::windAloft("AllElse") :- scenario("G").
dir(25)::windAloft("LV"); dir(18)::windAloft("SWQuad"); dir(19)::windAloft("NWQuad"); dir(12)::windAloft("AllElse") :- scenario("H").
dir(18)::windAloft("LV"); dir(12)::windAloft("SWQuad"); dir(28)::windAloft("NWQuad"); dir(27)::windAloft("AllElse") :- scenario("I").
dir(27)::windAloft("LV"); dir(2)::windAloft("SWQuad"); dir(28)::windAloft("NWQuad"); dir(15)::windAloft("AllElse") :- scenario("J").
dir(8)::windAloft("LV"); dir(15)::windAloft("SWQuad"); dir(2)::windAloft("NWQuad"); dir(21)::windAloft("AllElse") :- scenario("K").
dir(9)::dewpoints("LowEvrywhere"); dir(12)::dewpoints("LowAtStation"); dir(2)::dewpoints("LowSHighN"); dir(11)::dewpoints("LowNHighS"); dir(24)::dewpoints("LowMtsHighPl"); dir(8)::dewpoints("HighEvrywher"); dir(3)::dewpoints("Other") :- scenario("A").
dir(23)::dewpoints("LowEvrywhere"); dir(24)::dewpoints("LowAtStation"); dir(17)::dewpoints("LowSHighN"); dir(15)::dewpoints("LowNHighS"); dir(16)::dewpoints("LowMtsHighPl"); dir(4)::dewpoints("HighEvrywher"); dir(9)::dewpoints("Other") :- scenario("B").
dir(10)::dewpoints("LowEvrywhere"); dir(14)::dewpoints("LowAtStation"); dir(23)::dewpoints("LowSHighN"); dir(2)::dewpoints("LowNHighS"); dir(11)::dewpoints("LowMtsHighPl"); dir(30)::dewpoints("HighEvrywher"); dir(29)::dewpoints("Other") :- scenario("C").
dir(19)::dewpoints("LowEvrywhere"); dir(16)::dewpoints("LowAtStation"); dir(23)::dewpoints("LowSHighN"); dir(27)::dewpoints("LowNHighS"); dir(19)::dewpoints("LowMtsHighPl"); dir(6)::dewpoints("HighEvrywher"); dir(19)::dewpoints("Other") :- scenario("D").
dir(20)::dewpoints("LowEvrywhere"); dir(25)::dewpoints("LowAtStation"); dir(1)::dewpoints("LowSHighN"); dir(1)::dewpoints("LowNHighS"); dir(3)::dewpoints("LowMtsHighPl"); dir(4)::dewpoints("HighEvrywher"); dir(26)::dewpoints("Other") :- scenario("E").
dir(6)::dewpoints("LowEvrywhere"); dir(6)::dewpoints("LowAtStation"); dir(27)::dewpoints("LowSHighN"); dir(12)::dewpoints("LowNHighS"); dir(3)::dewpoints("LowMtsHighPl"); dir(15)::dewpoints("HighEvrywher"); dir(21)::dewpoints("Other") :- scenario("F").
dir(3)::dewpoints("LowEvrywhere"); dir(7)::dewpoints("LowAtStation"); dir(17)::dewpoints("LowSHighN"); dir(12)::dewpoints("LowNHighS"); dir(18)::dewpoints("LowMtsHighPl"); dir(15)::dewpoints("HighEvrywher"); dir(19)::dewpoints("Other") :- scenario("G").
dir(11)::dewpoints("LowEvrywhere"); dir(11)::dewpoints("LowAtStation"); dir(30)::dewpoints("LowSHighN"); dir(28)::dewpoints("LowNHighS"); dir(6)::dewpoints("LowMtsHighPl"); dir(12)::dewpoints("HighEvrywher"); dir(19)::dewpoints("Other") :- scenario("H").
dir(1)::dewpoints("LowEvrywhere"); dir(8)::dewpoints("LowAtStation"); dir(11)::dewpoints("LowSHighN"); dir(12)::dewpoints("LowNHighS"); dir(25)::dewpoints("LowMtsHighPl"); dir(9)::dewpoints("HighEvrywher"); dir(22)::dewpoints("Other") :- scenario("I").
dir(8)::dewpoints("LowEvrywhere"); dir(14)::dewpoints("LowAtStation"); dir(1)::dewpoints("LowSHighN"); dir(14)::dewpoints("LowNHighS"); dir(28)::dewpoints("LowMtsHighPl"); dir(5)::dewpoints("HighEvrywher"); dir(19)::dewpoints("Other") :- scenario("J").
dir(11)::dewpoints("LowEvrywhere"); dir(23)::dewpoints("LowAtStation"); dir(5)::dewpoints("LowSHighN"); dir(10)::dewpoints("LowNHighS"); dir(25)::dewpoints("LowMtsHighPl"); dir(24)::dewpoints("HighEvrywher"); dir(22)::dewpoints("Other") :- scenario("K").
dir(21)::mvmtFeatures("StrongFront"); dir(8)::mvmtFeatures("MarkedUpper"); dir(21)::mvmtFeatures("OtherRapid"); dir(20)::mvmtFeatures("NoMajor") :- scenario("A").
dir(19)::mvmtFeatures("StrongFront"); dir(2)::mvmtFeatures("MarkedUpper"); dir(1)::mvmtFeatures("OtherRapid"); dir(4)::mvmtFeatures("NoMajor") :- scenario("B").
dir(15)::mvmtFeatures("StrongFront"); dir(3)::mvmtFeatures("MarkedUpper"); dir(22)::mvmtFeatures("OtherRapid"); dir(17)::mvmtFeatures("NoMajor") :- scenario("C").
dir(29)::mvmtFeatures("StrongFront"); dir(10)::mvmtFeatures("MarkedUpper"); dir(1)::mvmtFeatures("OtherRapid"); dir(12)::mvmtFeatures("NoMajor") :- scenario("D").
dir(14)::mvmtFeatures("StrongFront"); dir(25)::mvmtFeatures("MarkedUpper"); dir(14)::mvmtFeatures("OtherRapid"); dir(21)::mvmtFeatures("NoMajor") :- scenario("E").
dir(8)::mvmtFeatures("StrongFront"); dir(7)::mvmtFeatures("MarkedUpper"); dir(19)::mvmtFeatures("OtherRapid"); dir(14)::mvmtFeatures("NoMajor") :- scenario("F").
dir(24)::mvmtFeatures("StrongFront"); dir(22)::mvmtFeatures("MarkedUpper"); dir(24)::mvmtFeatures("OtherRapid"); dir(14)::mvmtFeatures("NoMajor") :- scenario("G").
dir(10)::mvmtFeatures("StrongFront"); dir(18)::mvmtFeatures("MarkedUpper"); dir(9)::mvmtFeatures("OtherRapid"); dir(25)::mvmtFeatures("NoMajor") :- scenario("H").
dir(16)::mvmtFeatures("StrongFront"); dir(9)::mvmtFeatures("MarkedUpper"); dir(19)::mvmtFeatures("OtherRapid"); dir(14)::mvmtFeatures("NoMajor") :- scenario("I").
dir(27)::mvmtFeatures("StrongFront"); dir(29)::mvmtFeatures("MarkedUpper"); dir(6)::mvmtFeatures("OtherRapid"); dir(26)::mvmtFeatures("NoMajor") :- scenario("J").
dir(8)::mvmtFeatures("StrongFront"); dir(24)::mvmtFeatures("MarkedUpper"); dir(17)::mvmtFeatures("OtherRapid"); dir(11)::mvmtFeatures("NoMajor") :- scenario("K").
dir(29)::synForcng("SigNegative"); dir(20)::synForcng("NegToPos"); dir(26)::synForcng("SigPositive"); dir(11)::synForcng("PosToNeg"); dir(7)::synForcng("LittleChange") :- scenario("A").
dir(13)::synForcng("SigNegative"); dir(27)::synForcng("NegToPos"); dir(20)::synForcng("SigPositive"); dir(8)::synForcng("PosToNeg"); dir(28)::synForcng("LittleChange") :- scenario("B").
dir(30)::synForcng("SigNegative"); dir(26)::synForcng("NegToPos"); dir(1)::synForcng("SigPositive"); dir(3)::synForcng("PosToNeg"); dir(18)::synForcng("LittleChange") :- scenario("C").
dir(27)::synForcng("SigNegative"); dir(15)::synForcng("NegToPos"); dir(22)::synForcng("SigPositive"); dir(25)::synForcng("PosToNeg"); dir(6)::synForcng("LittleChange") :- scenario("D").
dir(20)::synForcng("SigNegative"); dir(8)::synForcng("NegToPos"); dir(12)::synForcng("SigPositive"); dir(13)::synForcng("PosToNeg"); dir(10)::synForcng("LittleChange") :- scenario("E").
dir(5)::synForcng("SigNegative"); dir(4)::synForcng("NegToPos"); dir(23)::synForcng("SigPositive"); dir(10)::synForcng("PosToNeg"); dir(1)::synForcng("LittleChange") :- scenario("F").
dir(7)::synForcng("SigNegative"); dir(21)::synForcng("NegToPos"); dir(22)::synForcng("SigPositive"); dir(13)::synForcng("PosToNeg"); dir(28)::synForcng("LittleChange") :- scenario("G").
dir(9)::synForcng("SigNegative"); dir(18)::synForcng("NegToPos"); dir(16)::synForcng("SigPositive"); dir(29)::synForcng("PosToNeg"); dir(24)::synForcng("LittleChange") :- scenario("H").
dir(13)::synForcng("SigNegative"); dir(11)::synForcng("NegToPos"); dir(3)::synForcng("SigPositive"); dir(21)::synForcng("PosToNeg"); dir(7)::synForcng("LittleChange") :- scenario("I").
dir(14)::synForcng("SigNegative"); dir(29)::synForcng("NegToPos"); dir(17)::synForcng("SigPositive"); dir(25)::synForcng("PosToNeg"); dir(19)::synForcng("LittleChange") :- scenario("J").
dir(12)::synForcng("SigNegative"); dir(24)::synForcng("NegToPos"); dir(29)::synForcng("SigPositive"); dir(8)::synForcng("PosToNeg"); dir(4)::synForcng("LittleChange") :- scenario("K").
dir(1)::sfcWndShfDis("DenvCyclone"); dir(2)::sfcWndShfDis("E_W_N"); dir(14)::sfcWndShfDis("E_W_S"); dir(12)::sfcWndShfDis("MovingFtorOt"); dir(1)::sfcWndShfDis("DryLine"); dir(23)::sfcWndShfDis("None"); dir(8)::sfcWndShfDis("Other") :- scenario("A").
dir(5)::sfcWndShfDis("DenvCyclone"); dir(28)::sfcWndShfDis("E_W_N"); dir(15)::sfcWndShfDis("E_W_S"); dir(28)::sfcWndShfDis("MovingFtorOt"); dir(20)::sfcWndShfDis("DryLine"); dir(2)::sfcWndShfDis("None"); dir(11)::sfcWndShfDis("Other") :- scenario("B").
dir(8)::sfcWndShfDis("DenvCyclone"); dir(17)::sfcWndShfDis("E_W_N"); dir(12)::sfcWndShfDis("E_W_S"); dir(24)::sfcWndShfDis("MovingFtorOt"); dir(25)::sfcWndShfDis("DryLine"); dir(17)::sfcWndShfDis("None"); dir(3)::sfcWndShfDis("Other") :- scenario("C").
dir(15)::sfcWndShfDis("DenvCyclone"); dir(20)::sfcWndShfDis("E_W_N"); dir(17)::sfcWndShfDis("E_W_S"); dir(24)::sfcWndShfDis("MovingFtorOt"); dir(7)::sfcWndShfDis("DryLine"); dir(7)::sfcWndShfDis("None"); dir(8)::sfcWndShfDis("Other") :- scenario("D").
dir(22)::sfcWndShfDis("DenvCyclone"); dir(11)::sfcWndShfDis("E_W_N"); dir(8)::sfcWndShfDis("E_W_S"); dir(21)::sfcWndShfDis("MovingFtorOt"); dir(24)::sfcWndShfDis("DryLine"); dir(27)::sfcWndShfDis("None"); dir(15)::sfcWndShfDis("Other") :- scenario("E").
dir(4)::sfcWndShfDis("DenvCyclone"); dir(1)::sfcWndShfDis("E_W_N"); dir(4)::sfcWndShfDis("E_W_S"); dir(4)::sfcWndShfDis("MovingFtorOt"); dir(13)::sfcWndShfDis("DryLine"); dir(3)::sfcWndShfDis("None"); dir(23)::sfcWndShfDis("Other") :- scenario("F").
dir(19)::sfcWndShfDis("DenvCyclone"); dir(18)::sfcWndShfDis("E_W_N"); dir(23)::sfcWndShfDis("E_W_S"); dir(20)::sfcWndShfDis("MovingFtorOt"); dir(23)::sfcWndShfDis("DryLine"); dir(6)::sfcWndShfDis("None"); dir(27)::sfcWndShfDis("Other") :- scenario("G").
dir(22)::sfcWndShfDis("DenvCyclone"); dir(21)::sfcWndShfDis("E_W_N"); dir(25)::sfcWndShfDis("E_W_S"); dir(26)::sfcWndShfDis("MovingFtorOt"); dir(16)::sfcWndShfDis("DryLine"); dir(8)::sfcWndShfDis("None"); dir(5)::sfcWndShfDis("Other") :- scenario("H").
dir(30)::sfcWndShfDis("DenvCyclone"); dir(11)::sfcWndShfDis("E_W_N"); dir(12)::sfcWndShfDis("E_W_S"); dir(11)::sfcWndShfDis("MovingFtorOt"); dir(10)::sfcWndShfDis("DryLine"); dir(21)::sfcWndShfDis("None"); dir(17)::sfcWndShfDis("Other") :- scenario("I").
dir(1)::sfcWndShfDis("DenvCyclone"); dir(18)::sfcWndShfDis("E_W_N"); dir(22)::sfcWndShfDis("E_W_S"); dir(12)::sfcWndShfDis("MovingFtorOt"); dir(22)::sfcWndShfDis("DryLine"); dir(3)::sfcWndShfDis("None"); dir(7)::sfcWndShfDis("Other") :- scenario("J").
dir(3)::sfcWndShfDis("DenvCyclone"); dir(27)::sfcWndShfDis("E_W_N"); dir(5)::sfcWndShfDis("E_W_S"); dir(18)::sfcWndShfDis("MovingFtorOt"); dir(17)::sfcWndShfDis("DryLine"); dir(10)::sfcWndShfDis("None"); dir(27)::sfcWndShfDis("Other") :- scenario("K").
dir(1)::scenRel3_4("ACEFK"); dir(23)::scenRel3_4("B"); dir(23)::scenRel3_4("D"); dir(28)::scenRel3_4("GJ"); dir(7)::scenRel3_4("HI") :- scenario("A").
dir(19)::scenRel3_4("ACEFK"); dir(16)::scenRel3_4("B"); dir(15)::scenRel3_4("D"); dir(27)::scenRel3_4("GJ"); dir(3)::scenRel3_4("HI") :- scenario("B").
dir(15)::scenRel3_4("ACEFK"); dir(23)::scenRel3_4("B"); dir(28)::scenRel3_4("D"); dir(28)::scenRel3_4("GJ"); dir(2)::scenRel3_4("HI") :- scenario("C").
dir(7)::scenRel3_4("ACEFK"); dir(15)::scenRel3_4("B"); dir(9)::scenRel3_4("D"); dir(26)::scenRel3_4("GJ"); dir(18)::scenRel3_4("HI") :- scenario("D").
dir(15)::scenRel3_4("ACEFK"); dir(25)::scenRel3_4("B"); dir(18)::scenRel3_4("D"); dir(30)::scenRel3_4("GJ"); dir(4)::scenRel3_4("HI") :- scenario("E").
dir(25)::scenRel3_4("ACEFK"); dir(23)::scenRel3_4("B"); dir(17)::scenRel3_4("D"); dir(5)::scenRel3_4("GJ"); dir(10)::scenRel3_4("HI") :- scenario("F").
dir(19)::scenRel3_4("ACEFK"); dir(7)::scenRel3_4("B"); dir(4)::scenRel3_4("D"); dir(29)::scenRel3_4("GJ"); dir(22)::scenRel3_4("HI") :- scenario("G").
dir(4)::scenRel3_4("ACEFK"); dir(14)::scenRel3_4("B"); dir(26)::scenRel3_4("D"); dir(19)::scenRel3_4("GJ"); dir(27)::scenRel3_4("HI") :- scenario("H").
dir(27)::scenRel3_4("ACEFK"); dir(27)::scenRel3_4("B"); dir(14)::scenRel3_4("D"); dir(23)::scenRel3_4("GJ"); dir(9)::scenRel3_4("HI") :- scenario("I").
dir(25)::scenRel3_4("ACEFK"); dir(6)::scenRel3_4("B"); dir(9)::scenRel3_4("D"); dir(30)::scenRel3_4("GJ"); dir(8)::scenRel3_4("HI") :- scenario("J").
dir(8)::scenRel3_4("ACEFK"); dir(18)::scenRel3_4("B"); dir(13)::scenRel3_4("D"); dir(6)::scenRel3_4("GJ"); dir(4)::scenRel3_4("HI") :- scenario("K").
dir(27)::scenRelAMCIN("AB"); dir(8)::scenRelAMCIN("CThruK") :- scenario("A").
dir(1)::scenRelAMCIN("AB"); dir(18)::scenRelAMCIN("CThruK") :- scenario("B").
dir(19)::scenRelAMCIN("AB"); dir(1)::scenRelAMCIN("CThruK") :- scenario("C").
dir(28)::scenRelAMCIN("AB"); dir(27)::scenRelAMCIN("CThruK") :- scenario("D").
dir(5)::scenRelAMCIN("AB"); dir(15)::scenRelAMCIN("CThruK") :- scenario("E").
dir(13)::scenRelAMCIN("AB"); dir(3)::scenRelAMCIN("CThruK") :- scenario("F").
dir(13)::scenRelAMCIN("AB"); dir(1)::scenRelAMCIN("CThruK") :- scenario("G").
dir(13)::scenRelAMCIN("AB"); dir(21)::scenRelAMCIN("CThruK") :- scenario("H").
dir(23)::scenRelAMCIN("AB"); dir(21)::scenRelAMCIN("CThruK") :- scenario("I").
dir(3)::scenRelAMCIN("AB"); dir(2)::scenRelAMCIN("CThruK") :- scenario("J").
dir(2)::scenRelAMCIN("AB"); dir(20)::scenRelAMCIN("CThruK") :- scenario("K").
dir(28)::midLLapse("CloseToDryAd"); dir(18)::midLLapse("Steep"); dir(29)::midLLapse("ModerateOrLe") :- scenario("A").
dir(14)::midLLapse("CloseToDryAd"); dir(18)::midLLapse("Steep"); dir(28)::midLLapse("ModerateOrLe") :- scenario("B").
dir(16)::midLLapse("CloseToDryAd"); dir(10)::midLLapse("Steep"); dir(30)::midLLapse("ModerateOrLe") :- scenario("C").
dir(17)::midLLapse("CloseToDryAd"); dir(4)::midLLapse("Steep"); dir(27)::midLLapse("ModerateOrLe") :- scenario("D").
dir(17)::midLLapse("CloseToDryAd"); dir(21)::midLLapse("Steep"); dir(6)::midLLapse("ModerateOrLe") :- scenario("E").
dir(29)::midLLapse("CloseToDryAd"); dir(29)::midLLapse("Steep"); dir(15)::midLLapse("ModerateOrLe") :- scenario("F").
dir(6)::midLLapse("CloseToDryAd"); dir(13)::midLLapse("Steep"); dir(2)::midLLapse("ModerateOrLe") :- scenario("G").
dir(3)::midLLapse("CloseToDryAd"); dir(14)::midLLapse("Steep"); dir(8)::midLLapse("ModerateOrLe") :- scenario("H").
dir(20)::midLLapse("CloseToDryAd"); dir(17)::midLLapse("Steep"); dir(26)::midLLapse("ModerateOrLe") :- scenario("I").
dir(27)::midLLapse("CloseToDryAd"); dir(12)::midLLapse("Steep"); dir(28)::midLLapse("ModerateOrLe") :- scenario("J").
dir(14)::midLLapse("CloseToDryAd"); dir(5)::midLLapse("Steep"); dir(5)::midLLapse("ModerateOrLe") :- scenario("K").
dir(8)::scenRelAMIns("ABI"); dir(3)::scenRelAMIns("CDEJ"); dir(28)::scenRelAMIns("F"); dir(28)::scenRelAMIns("G"); dir(19)::scenRelAMIns("H"); dir(30)::scenRelAMIns("K") :- scenario("A").
dir(6)::scenRelAMIns("ABI"); dir(3)::scenRelAMIns("CDEJ"); dir(14)::scenRelAMIns("F"); dir(26)::scenRelAMIns("G"); dir(21)::scenRelAMIns("H"); dir(19)::scenRelAMIns("K") :- scenario("B").
dir(8)::scenRelAMIns("ABI"); dir(8)::scenRelAMIns("CDEJ"); dir(6)::scenRelAMIns("F"); dir(25)::scenRelAMIns("G"); dir(21)::scenRelAMIns("H"); dir(1)::scenRelAMIns("K") :- scenario("C").
dir(6)::scenRelAMIns("ABI"); dir(11)::scenRelAMIns("CDEJ"); dir(22)::scenRelAMIns("F"); dir(30)::scenRelAMIns("G"); dir(27)::scenRelAMIns("H"); dir(13)::scenRelAMIns("K") :- scenario("D").
dir(15)::scenRelAMIns("ABI"); dir(29)::scenRelAMIns("CDEJ"); dir(27)::scenRelAMIns("F"); dir(26)::scenRelAMIns("G"); dir(2)::scenRelAMIns("H"); dir(6)::scenRelAMIns("K") :- scenario("E").
dir(16)::scenRelAMIns("ABI"); dir(8)::scenRelAMIns("CDEJ"); dir(13)::scenRelAMIns("F"); dir(20)::scenRelAMIns("G"); dir(27)::scenRelAMIns("H"); dir(16)::scenRelAMIns("K") :- scenario("F").
dir(8)::scenRelAMIns("ABI"); dir(14)::scenRelAMIns("CDEJ"); dir(10)::scenRelAMIns("F"); dir(8)::scenRelAMIns("G"); dir(19)::scenRelAMIns("H"); dir(8)::scenRelAMIns("K") :- scenario("G").
dir(7)::scenRelAMIns("ABI"); dir(13)::scenRelAMIns("CDEJ"); dir(17)::scenRelAMIns("F"); dir(25)::scenRelAMIns("G"); dir(9)::scenRelAMIns("H"); dir(14)::scenRelAMIns("K") :- scenario("H").
dir(3)::scenRelAMIns("ABI"); dir(18)::scenRelAMIns("CDEJ"); dir(20)::scenRelAMIns("F"); dir(20)::scenRelAMIns("G"); dir(28)::scenRelAMIns("H"); dir(10)::scenRelAMIns("K") :- scenario("I").
dir(2)::scenRelAMIns("ABI"); dir(22)::scenRelAMIns("CDEJ"); dir(22)::scenRelAMIns("F"); dir(30)::scenRelAMIns("G"); dir(26)::scenRelAMIns("H"); dir(18)::scenRelAMIns("K") :- scenario("J").
dir(17)::scenRelAMIns("ABI"); dir(28)::scenRelAMIns("CDEJ"); dir(14)::scenRelAMIns("F"); dir(6)::scenRelAMIns("G"); dir(13)::scenRelAMIns("H"); dir(3)::scenRelAMIns("K") :- scenario("K").
dir(27)::tempDis("QStationary"); dir(1)::tempDis("Moving"); dir(19)::tempDis("None"); dir(20)::tempDis("Other") :- scenario("A").
dir(6)::tempDis("QStationary"); dir(6)::tempDis("Moving"); dir(9)::tempDis("None"); dir(9)::tempDis("Other") :- scenario("B").
dir(5)::tempDis("QStationary"); dir(17)::tempDis("Moving"); dir(2)::tempDis("None"); dir(13)::tempDis("Other") :- scenario("C").
dir(14)::tempDis("QStationary"); dir(22)::tempDis("Moving"); dir(25)::tempDis("None"); dir(24)::tempDis("Other") :- scenario("D").
dir(5)::tempDis("QStationary"); dir(28)::tempDis("Moving"); dir(28)::tempDis("None"); dir(5)::tempDis("Other") :- scenario("E").
dir(10)::tempDis("QStationary"); dir(15)::tempDis("Moving"); dir(12)::tempDis("None"); dir(24)::tempDis("Other") :- scenario("F").
dir(23)::tempDis("QStationary"); dir(18)::tempDis("Moving"); dir(16)::tempDis("None"); dir(24)::tempDis("Other") :- scenario("G").
dir(21)::tempDis("QStationary"); dir(9)::tempDis("Moving"); dir(3)::tempDis("None"); dir(9)::tempDis("Other") :- scenario("H").
dir(26)::tempDis("QStationary"); dir(5)::tempDis("Moving"); dir(6)::tempDis("None"); dir(19)::tempDis("Other") :- scenario("I").
dir(14)::tempDis("QStationary"); dir(4)::tempDis("Moving"); dir(19)::tempDis("None"); dir(4)::tempDis("Other") :- scenario("J").
dir(27)::tempDis("QStationary"); dir(29)::tempDis("Moving"); dir(5)::tempDis("None"); dir(5)::tempDis("Other") :- scenario("K").
dir(17)::meanRH("VeryMoist"); dir(22)::meanRH("Average"); dir(2)::meanRH("Dry") :- scenario("A").
dir(5)::meanRH("VeryMoist"); dir(10)::meanRH("Average"); dir(21)::meanRH("Dry") :- scenario("B").
dir(13)::meanRH("VeryMoist"); dir(3)::meanRH("Average"); dir(21)::meanRH("Dry") :- scenario("C").
dir(14)::meanRH("VeryMoist"); dir(27)::meanRH("Average"); dir(30)::meanRH("Dry") :- scenario("D").
dir(26)::meanRH("VeryMoist"); dir(27)::meanRH("Average"); dir(25)::meanRH("Dry") :- scenario("E").
dir(23)::meanRH("VeryMoist"); dir(2)::meanRH("Average"); dir(3)::meanRH("Dry") :- scenario("F").
dir(23)::meanRH("VeryMoist"); dir(21)::meanRH("Average"); dir(5)::meanRH("Dry") :- scenario("G").
dir(15)::meanRH("VeryMoist"); dir(5)::meanRH("Average"); dir(28)::meanRH("Dry") :- scenario("H").
dir(1)::meanRH("VeryMoist"); dir(18)::meanRH("Average"); dir(21)::meanRH("Dry") :- scenario("I").
dir(22)::meanRH("VeryMoist"); dir(11)::meanRH("Average"); dir(16)::meanRH("Dry") :- scenario("J").
dir(26)::meanRH("VeryMoist"); dir(29)::meanRH("Average"); dir(20)::meanRH("Dry") :- scenario("K").
dir(27)::areaMeso_ALS("StrongUp"); dir(12)::areaMeso_ALS("WeakUp"); dir(8)::areaMeso_ALS("Neutral"); dir(18)::areaMeso_ALS("Down") :- combVerMo("StrongUp").
dir(14)::areaMeso_ALS("StrongUp"); dir(20)::areaMeso_ALS("WeakUp"); dir(16)::areaMeso_ALS("Neutral"); dir(27)::areaMeso_ALS("Down") :- combVerMo("WeakUp").
dir(3)::areaMeso_ALS("StrongUp"); dir(3)::areaMeso_ALS("WeakUp"); dir(15)::areaMeso_ALS("Neutral"); dir(22)::areaMeso_ALS("Down") :- combVerMo("Neutral").
dir(13)::areaMeso_ALS("StrongUp"); dir(24)::areaMeso_ALS("WeakUp"); dir(1)::areaMeso_ALS("Neutral"); dir(18)::areaMeso_ALS("Down") :- combVerMo("Down").
dir(23)::lowLLapse("CloseToDryAd"); dir(27)::lowLLapse("Steep"); dir(10)::lowLLapse("ModerateOrLe"); dir(19)::lowLLapse("Stable") :- scenario("A").
dir(25)::lowLLapse("CloseToDryAd"); dir(10)::lowLLapse("Steep"); dir(10)::lowLLapse("ModerateOrLe"); dir(29)::lowLLapse("Stable") :- scenario("B").
dir(14)::lowLLapse("CloseToDryAd"); dir(16)::lowLLapse("Steep"); dir(21)::lowLLapse("ModerateOrLe"); dir(18)::lowLLapse("Stable") :- scenario("C").
dir(3)::lowLLapse("CloseToDryAd"); dir(16)::lowLLapse("Steep"); dir(30)::lowLLapse("ModerateOrLe"); dir(30)::lowLLapse("Stable") :- scenario("D").
dir(3)::lowLLapse("CloseToDryAd"); dir(12)::lowLLapse("Steep"); dir(9)::lowLLapse("ModerateOrLe"); dir(15)::lowLLapse("Stable") :- scenario("E").
dir(9)::lowLLapse("CloseToDryAd"); dir(10)::lowLLapse("Steep"); dir(6)::lowLLapse("ModerateOrLe"); dir(28)::lowLLapse("Stable") :- scenario("F").
dir(19)::lowLLapse("CloseToDryAd"); dir(6)::lowLLapse("Steep"); dir(14)::lowLLapse("ModerateOrLe"); dir(16)::lowLLapse("Stable") :- scenario("G").
dir(6)::lowLLapse("CloseToDryAd"); dir(18)::lowLLapse("Steep"); dir(17)::lowLLapse("ModerateOrLe"); dir(15)::lowLLapse("Stable") :- scenario("H").
dir(29)::lowLLapse("CloseToDryAd"); dir(23)::lowLLapse("Steep"); dir(17)::lowLLapse("ModerateOrLe"); dir(23)::lowLLapse("Stable") :- scenario("I").
dir(20)::lowLLapse("CloseToDryAd"); dir(6)::lowLLapse("Steep"); dir(21)::lowLLapse("ModerateOrLe"); dir(21)::lowLLapse("Stable") :- scenario("J").
dir(4)::lowLLapse("CloseToDryAd"); dir(1)::lowLLapse("Steep"); dir(18)::lowLLapse("ModerateOrLe"); dir(21)::lowLLapse("Stable") :- scenario("K").
dir(28)::scnRelPlFcst("A"); dir(21)::scnRelPlFcst("B"); dir(8)::scnRelPlFcst("C"); dir(10)::scnRelPlFcst("D"); dir(5)::scnRelPlFcst("E"); dir(7)::scnRelPlFcst("F"); dir(9)::scnRelPlFcst("G"); dir(4)::scnRelPlFcst("H"); dir(27)::scnRelPlFcst("I"); dir(25)::scnRelPlFcst("J"); dir(7)::scnRelPlFcst("K") :- scenario("A").
dir(24)::scnRelPlFcst("A"); dir(8)::scnRelPlFcst("B"); dir(16)::scnRelPlFcst("C"); dir(29)::scnRelPlFcst("D"); dir(4)::scnRelPlFcst("E"); dir(14)::scnRelPlFcst("F"); dir(26)::scnRelPlFcst("G"); dir(17)::scnRelPlFcst("H"); dir(21)::scnRelPlFcst("I"); dir(21)::scnRelPlFcst("J"); dir(8)::scnRelPlFcst("K") :- scenario("B").
dir(8)::scnRelPlFcst("A"); dir(23)::scnRelPlFcst("B"); dir(11)::scnRelPlFcst("C"); dir(27)::scnRelPlFcst("D"); dir(20)::scnRelPlFcst("E"); dir(21)::scnRelPlFcst("F"); dir(6)::scnRelPlFcst("G"); dir(16)::scnRelPlFcst("H"); dir(2)::scnRelPlFcst("I"); dir(22)::scnRelPlFcst("J"); dir(19)::scnRelPlFcst("K") :- scenario("C").
dir(15)::scnRelPlFcst("A"); dir(4)::scnRelPlFcst("B"); dir(11)::scnRelPlFcst("C"); dir(14)::scnRelPlFcst("D"); dir(7)::scnRelPlFcst("E"); dir(23)::scnRelPlFcst("F"); dir(16)::scnRelPlFcst("G"); dir(29)::scnRelPlFcst("H"); dir(19)::scnRelPlFcst("I"); dir(15)::scnRelPlFcst("J"); dir(20)::scnRelPlFcst("K") :- scenario("D").
dir(30)::scnRelPlFcst("A"); dir(9)::scnRelPlFcst("B"); dir(15)::scnRelPlFcst("C"); dir(18)::scnRelPlFcst("D"); dir(9)::scnRelPlFcst("E"); dir(7)::scnRelPlFcst("F"); dir(23)::scnRelPlFcst("G"); dir(28)::scnRelPlFcst("H"); dir(1)::scnRelPlFcst("I"); dir(14)::scnRelPlFcst("J"); dir(28)::scnRelPlFcst("K") :- scenario("E").
dir(10)::scnRelPlFcst("A"); dir(22)::scnRelPlFcst("B"); dir(22)::scnRelPlFcst("C"); dir(22)::scnRelPlFcst("D"); dir(5)::scnRelPlFcst("E"); dir(14)::scnRelPlFcst("F"); dir(28)::scnRelPlFcst("G"); dir(8)::scnRelPlFcst("H"); dir(24)::scnRelPlFcst("I"); dir(19)::scnRelPlFcst("J"); dir(1)::scnRelPlFcst("K") :- scenario("F").
dir(21)::scnRelPlFcst("A"); dir(26)::scnRelPlFcst("B"); dir(11)::scnRelPlFcst("C"); dir(20)::scnRelPlFcst("D"); dir(15)::scnRelPlFcst("E"); dir(1)::scnRelPlFcst("F"); dir(3)::scnRelPlFcst("G"); dir(29)::scnRelPlFcst("H"); dir(6)::scnRelPlFcst("I"); dir(12)::scnRelPlFcst("J"); dir(13)::scnRelPlFcst("K") :- scenario("G").
dir(13)::scnRelPlFcst("A"); dir(24)::scnRelPlFcst("B"); dir(4)::scnRelPlFcst("C"); dir(3)::scnRelPlFcst("D"); dir(1)::scnRelPlFcst("E"); dir(28)::scnRelPlFcst("F"); dir(25)::scnRelPlFcst("G"); dir(16)::scnRelPlFcst("H"); dir(21)::scnRelPlFcst("I"); dir(24)::scnRelPlFcst("J"); dir(3)::scnRelPlFcst("K") :- scenario("H").
dir(15)::scnRelPlFcst("A"); dir(6)::scnRelPlFcst("B"); dir(21)::scnRelPlFcst("C"); dir(16)::scnRelPlFcst("D"); dir(16)::scnRelPlFcst("E"); dir(28)::scnRelPlFcst("F"); dir(12)::scnRelPlFcst("G"); dir(14)::scnRelPlFcst("H"); dir(24)::scnRelPlFcst("I"); dir(25)::scnRelPlFcst("J"); dir(18)::scnRelPlFcst("K") :- scenario("I").
dir(12)::scnRelPlFcst("A"); dir(7)::scnRelPlFcst("B"); dir(17)::scnRelPlFcst("C"); dir(19)::scnRelPlFcst("D"); dir(4)::scnRelPlFcst("E"); dir(28)::scnRelPlFcst("F"); dir(4)::scnRelPlFcst("G"); dir(2)::scnRelPlFcst("H"); dir(25)::scnRelPlFcst("I"); dir(4)::scnRelPlFcst("J"); dir(28)::scnRelPlFcst("K") :- scenario("J").
dir(14)::scnRelPlFcst("A"); dir(15)::scnRelPlFcst("B"); dir(8)::scnRelPlFcst("C"); dir(2)::scnRelPlFcst("D"); dir(6)::scnRelPlFcst("E"); dir(29)::scnRelPlFcst("F"); dir(27)::scnRelPlFcst("G"); dir(21)::scnRelPlFcst("H"); dir(23)::scnRelPlFcst("I"); dir(30)::scnRelPlFcst("J"); dir(5)::scnRelPlFcst("K") :- scenario("K").
dir(29)::windFieldMt("Westerly"); dir(11)::windFieldMt("LVorOther") :- scenario("A").
dir(11)::windFieldMt("Westerly"); dir(18)::windFieldMt("LVorOther") :- scenario("B").
dir(12)::windFieldMt("Westerly"); dir(27)::windFieldMt("LVorOther") :- scenario("C").
dir(24)::windFieldMt("Westerly"); dir(1)::windFieldMt("LVorOther") :- scenario("D").
dir(25)::windFieldMt("Westerly"); dir(27)::windFieldMt("LVorOther") :- scenario("E").
dir(26)::windFieldMt("Westerly"); dir(26)::windFieldMt("LVorOther") :- scenario("F").
dir(7)::windFieldMt("Westerly"); dir(19)::windFieldMt("LVorOther") :- scenario("G").
dir(27)::windFieldMt("Westerly"); dir(11)::windFieldMt("LVorOther") :- scenario("H").
dir(10)::windFieldMt("Westerly"); dir(13)::windFieldMt("LVorOther") :- scenario("I").
dir(27)::windFieldMt("Westerly"); dir(27)::windFieldMt("LVorOther") :- scenario("J").
dir(1)::windFieldMt("Westerly"); dir(12)::windFieldMt("LVorOther") :- scenario("K").
dir(22)::windFieldPln("LV"); dir(13)::windFieldPln("DenvCyclone"); dir(16)::windFieldPln("LongAnticyc"); dir(26)::windFieldPln("E_NE"); dir(20)::windFieldPln("SEQuad"); dir(9)::windFieldPln("WidespdDnsl") :- scenario("A").
dir(16)::windFieldPln("LV"); dir(8)::windFieldPln("DenvCyclone"); dir(15)::windFieldPln("LongAnticyc"); dir(22)::windFieldPln("E_NE"); dir(25)::windFieldPln("SEQuad"); dir(3)::windFieldPln("WidespdDnsl") :- scenario("B").
dir(10)::windFieldPln("LV"); dir(7)::windFieldPln("DenvCyclone"); dir(30)::windFieldPln("LongAnticyc"); dir(8)::windFieldPln("E_NE"); dir(1)::windFieldPln("SEQuad"); dir(11)::windFieldPln("WidespdDnsl") :- scenario("C").
dir(27)::windFieldPln("LV"); dir(23)::windFieldPln("DenvCyclone"); dir(15)::windFieldPln("LongAnticyc"); dir(3)::windFieldPln("E_NE"); dir(23)::windFieldPln("SEQuad"); dir(17)::windFieldPln("WidespdDnsl") :- scenario("D").
dir(8)::windFieldPln("LV"); dir(7)::windFieldPln("DenvCyclone"); dir(5)::windFieldPln("LongAnticyc"); dir(22)::windFieldPln("E_NE"); dir(10)::windFieldPln("SEQuad"); dir(27)::windFieldPln("WidespdDnsl") :- scenario("E").
dir(9)::windFieldPln("LV"); dir(22)::windFieldPln("DenvCyclone"); dir(15)::windFieldPln("LongAnticyc"); dir(3)::windFieldPln("E_NE"); dir(21)::windFieldPln("SEQuad"); dir(4)::windFieldPln("WidespdDnsl") :- scenario("F").
dir(6)::windFieldPln("LV"); dir(16)::windFieldPln("DenvCyclone"); dir(17)::windFieldPln("LongAnticyc"); dir(13)::windFieldPln("E_NE"); dir(18)::windFieldPln("SEQuad"); dir(20)::windFieldPln("WidespdDnsl") :- scenario("G").
dir(13)::windFieldPln("LV"); dir(23)::windFieldPln("DenvCyclone"); dir(5)::windFieldPln("LongAnticyc"); dir(21)::windFieldPln("E_NE"); dir(20)::windFieldPln("SEQuad"); dir(28)::windFieldPln("WidespdDnsl") :- scenario("H").
dir(3)::windFieldPln("LV"); dir(4)::windFieldPln("DenvCyclone"); dir(12)::windFieldPln("LongAnticyc"); dir(11)::windFieldPln("E_NE"); dir(22)::windFieldPln("SEQuad"); dir(18)::windFieldPln("WidespdDnsl") :- scenario("I").
dir(16)::windFieldPln("LV"); dir(16)::windFieldPln("DenvCyclone"); dir(1)::windFieldPln("LongAnticyc"); dir(8)::windFieldPln("E_NE"); dir(7)::windFieldPln("SEQuad"); dir(28)::windFieldPln("WidespdDnsl") :- scenario("J").
dir(25)::windFieldPln("LV"); dir(6)::windFieldPln("DenvCyclone"); dir(29)::windFieldPln("LongAnticyc"); dir(5)::windFieldPln("E_NE"); dir(22)::windFieldPln("SEQuad"); dir(20)::windFieldPln("WidespdDnsl") :- scenario("K").
dir(1)::rHRatio("MoistMDryL"); dir(11)::rHRatio("DryMMoistL"); dir(9)::rHRatio("Other") :- scenario("A").
dir(16)::rHRatio("MoistMDryL"); dir(16)::rHRatio("DryMMoistL"); dir(24)::rHRatio("Other") :- scenario("B").
dir(18)::rHRatio("MoistMDryL"); dir(24)::rHRatio("DryMMoistL"); dir(5)::rHRatio("Other") :- scenario("C").
dir(8)::rHRatio("MoistMDryL"); dir(15)::rHRatio("DryMMoistL"); dir(12)::rHRatio("Other") :- scenario("D").
dir(29)::rHRatio("MoistMDryL"); dir(5)::rHRatio("DryMMoistL"); dir(13)::rHRatio("Other") :- scenario("E").
dir(24)::rHRatio("MoistMDryL"); dir(5)::rHRatio("DryMMoistL"); dir(3)::rHRatio("Other") :- scenario("F").
dir(14)::rHRatio("MoistMDryL"); dir(28)::rHRatio("DryMMoistL"); dir(27)::rHRatio("Other") :- scenario("G").
dir(28)::rHRatio("MoistMDryL"); dir(21)::rHRatio("DryMMoistL"); dir(5)::rHRatio("Other") :- scenario("H").
dir(29)::rHRatio("MoistMDryL"); dir(24)::rHRatio("DryMMoistL"); dir(18)::rHRatio("Other") :- scenario("I").
dir(6)::rHRatio("MoistMDryL"); dir(22)::rHRatio("DryMMoistL"); dir(6)::rHRatio("Other") :- scenario("J").
dir(5)::rHRatio("MoistMDryL"); dir(5)::rHRatio("DryMMoistL"); dir(24)::rHRatio("Other") :- scenario("K").
dir(22)::areaMoDryAir("VeryWet"); dir(28)::areaMoDryAir("Wet"); dir(11)::areaMoDryAir("Neutral"); dir(9)::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("VeryWet").
dir(8)::areaMoDryAir("VeryWet"); dir(2)::areaMoDryAir("Wet"); dir(7)::areaMoDryAir("Neutral"); dir(27)::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Wet").
dir(27)::areaMoDryAir("VeryWet"); dir(27)::areaMoDryAir("Wet"); dir(7)::areaMoDryAir("Neutral"); dir(27)::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Neutral").
dir(13)::areaMoDryAir("VeryWet"); dir(13)::areaMoDryAir("Wet"); dir(10)::areaMoDryAir("Neutral"); dir(27)::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Dry").
dir(30)::areaMoDryAir("VeryWet"); dir(11)::areaMoDryAir("Wet"); dir(15)::areaMoDryAir("Neutral"); dir(7)::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("VeryWet").
dir(25)::areaMoDryAir("VeryWet"); dir(28)::areaMoDryAir("Wet"); dir(9)::areaMoDryAir("Neutral"); dir(19)::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Wet").
dir(16)::areaMoDryAir("VeryWet"); dir(17)::areaMoDryAir("Wet"); dir(7)::areaMoDryAir("Neutral"); dir(24)::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Neutral").
dir(26)::areaMoDryAir("VeryWet"); dir(7)::areaMoDryAir("Wet"); dir(21)::areaMoDryAir("Neutral"); dir(2)::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Dry").
dir(23)::areaMoDryAir("VeryWet"); dir(23)::areaMoDryAir("Wet"); dir(5)::areaMoDryAir("Neutral"); dir(29)::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("VeryWet").
dir(18)::areaMoDryAir("VeryWet"); dir(16)::areaMoDryAir("Wet"); dir(15)::areaMoDryAir("Neutral"); dir(7)::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Wet").
dir(30)::areaMoDryAir("VeryWet"); dir(8)::areaMoDryAir("Wet"); dir(8)::areaMoDryAir("Neutral"); dir(22)::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Neutral").
dir(6)::areaMoDryAir("VeryWet"); dir(13)::areaMoDryAir("Wet"); dir(15)::areaMoDryAir("Neutral"); dir(7)::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Dry").
dir(20)::areaMoDryAir("VeryWet"); dir(10)::areaMoDryAir("Wet"); dir(16)::areaMoDryAir("Neutral"); dir(17)::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("VeryWet").
dir(1)::areaMoDryAir("VeryWet"); dir(29)::areaMoDryAir("Wet"); dir(5)::areaMoDryAir("Neutral"); dir(17)::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Wet").
dir(7)::areaMoDryAir("VeryWet"); dir(14)::areaMoDryAir("Wet"); dir(22)::areaMoDryAir("Neutral"); dir(10)::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Neutral").
dir(29)::areaMoDryAir("VeryWet"); dir(13)::areaMoDryAir("Wet"); dir(4)::areaMoDryAir("Neutral"); dir(18)::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Dry").
dir(2)::aMCINInScen("LessThanAve"); dir(3)::aMCINInScen("Average"); dir(13)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("None").
dir(24)::aMCINInScen("LessThanAve"); dir(30)::aMCINInScen("Average"); dir(9)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("PartInhibit").
dir(18)::aMCINInScen("LessThanAve"); dir(12)::aMCINInScen("Average"); dir(17)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("Stifling").
dir(28)::aMCINInScen("LessThanAve"); dir(14)::aMCINInScen("Average"); dir(10)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("TotalInhibit").
dir(24)::aMCINInScen("LessThanAve"); dir(12)::aMCINInScen("Average"); dir(2)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("None").
dir(23)::aMCINInScen("LessThanAve"); dir(24)::aMCINInScen("Average"); dir(27)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("PartInhibit").
dir(15)::aMCINInScen("LessThanAve"); dir(30)::aMCINInScen("Average"); dir(12)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("Stifling").
dir(21)::aMCINInScen("LessThanAve"); dir(20)::aMCINInScen("Average"); dir(1)::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("TotalInhibit").
dir(22)::aMInsWliScen("LessUnstable"); dir(12)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(18)::aMInsWliScen("LessUnstable"); dir(22)::aMInsWliScen("Average"); dir(19)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(13)::aMInsWliScen("LessUnstable"); dir(12)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(27)::aMInsWliScen("LessUnstable"); dir(25)::aMInsWliScen("Average"); dir(17)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(21)::aMInsWliScen("LessUnstable"); dir(30)::aMInsWliScen("Average"); dir(1)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(16)::aMInsWliScen("LessUnstable"); dir(4)::aMInsWliScen("Average"); dir(24)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(13)::aMInsWliScen("LessUnstable"); dir(5)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(16)::aMInsWliScen("LessUnstable"); dir(26)::aMInsWliScen("Average"); dir(2)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(20)::aMInsWliScen("LessUnstable"); dir(11)::aMInsWliScen("Average"); dir(11)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(18)::aMInsWliScen("LessUnstable"); dir(28)::aMInsWliScen("Average"); dir(10)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(7)::aMInsWliScen("LessUnstable"); dir(19)::aMInsWliScen("Average"); dir(9)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(25)::aMInsWliScen("LessUnstable"); dir(6)::aMInsWliScen("Average"); dir(24)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(11)::aMInsWliScen("LessUnstable"); dir(18)::aMInsWliScen("Average"); dir(26)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(19)::aMInsWliScen("LessUnstable"); dir(23)::aMInsWliScen("Average"); dir(17)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(8)::aMInsWliScen("LessUnstable"); dir(23)::aMInsWliScen("Average"); dir(7)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(20)::aMInsWliScen("LessUnstable"); dir(7)::aMInsWliScen("Average"); dir(7)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(7)::aMInsWliScen("LessUnstable"); dir(1)::aMInsWliScen("Average"); dir(27)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(9)::aMInsWliScen("LessUnstable"); dir(2)::aMInsWliScen("Average"); dir(30)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(17)::aMInsWliScen("LessUnstable"); dir(2)::aMInsWliScen("Average"); dir(9)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(19)::aMInsWliScen("LessUnstable"); dir(14)::aMInsWliScen("Average"); dir(28)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(28)::aMInsWliScen("LessUnstable"); dir(11)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(5)::aMInsWliScen("LessUnstable"); dir(8)::aMInsWliScen("Average"); dir(8)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(6)::aMInsWliScen("LessUnstable"); dir(4)::aMInsWliScen("Average"); dir(17)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(10)::aMInsWliScen("LessUnstable"); dir(1)::aMInsWliScen("Average"); dir(23)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(24)::aMInsWliScen("LessUnstable"); dir(2)::aMInsWliScen("Average"); dir(22)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(9)::aMInsWliScen("LessUnstable"); dir(5)::aMInsWliScen("Average"); dir(27)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(7)::aMInsWliScen("LessUnstable"); dir(2)::aMInsWliScen("Average"); dir(3)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(17)::aMInsWliScen("LessUnstable"); dir(26)::aMInsWliScen("Average"); dir(11)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(24)::aMInsWliScen("LessUnstable"); dir(18)::aMInsWliScen("Average"); dir(30)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(9)::aMInsWliScen("LessUnstable"); dir(26)::aMInsWliScen("Average"); dir(20)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(7)::aMInsWliScen("LessUnstable"); dir(19)::aMInsWliScen("Average"); dir(21)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(4)::aMInsWliScen("LessUnstable"); dir(14)::aMInsWliScen("Average"); dir(16)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(24)::aMInsWliScen("LessUnstable"); dir(19)::aMInsWliScen("Average"); dir(4)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(28)::aMInsWliScen("LessUnstable"); dir(19)::aMInsWliScen("Average"); dir(1)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(26)::aMInsWliScen("LessUnstable"); dir(30)::aMInsWliScen("Average"); dir(1)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(10)::aMInsWliScen("LessUnstable"); dir(1)::aMInsWliScen("Average"); dir(28)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(2)::aMInsWliScen("LessUnstable"); dir(21)::aMInsWliScen("Average"); dir(11)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(27)::aMInsWliScen("LessUnstable"); dir(8)::aMInsWliScen("Average"); dir(11)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(29)::aMInsWliScen("LessUnstable"); dir(12)::aMInsWliScen("Average"); dir(23)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(10)::aMInsWliScen("LessUnstable"); dir(6)::aMInsWliScen("Average"); dir(27)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(27)::aMInsWliScen("LessUnstable"); dir(11)::aMInsWliScen("Average"); dir(13)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(17)::aMInsWliScen("LessUnstable"); dir(26)::aMInsWliScen("Average"); dir(21)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(18)::aMInsWliScen("LessUnstable"); dir(15)::aMInsWliScen("Average"); dir(18)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(6)::aMInsWliScen("LessUnstable"); dir(13)::aMInsWliScen("Average"); dir(8)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(12)::aMInsWliScen("LessUnstable"); dir(27)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(23)::aMInsWliScen("LessUnstable"); dir(18)::aMInsWliScen("Average"); dir(26)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(30)::aMInsWliScen("LessUnstable"); dir(14)::aMInsWliScen("Average"); dir(14)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(5)::aMInsWliScen("LessUnstable"); dir(9)::aMInsWliScen("Average"); dir(30)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(2)::aMInsWliScen("LessUnstable"); dir(7)::aMInsWliScen("Average"); dir(7)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(8)::aMInsWliScen("LessUnstable"); dir(16)::aMInsWliScen("Average"); dir(10)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(30)::aMInsWliScen("LessUnstable"); dir(20)::aMInsWliScen("Average"); dir(27)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(10)::aMInsWliScen("LessUnstable"); dir(18)::aMInsWliScen("Average"); dir(18)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(27)::aMInsWliScen("LessUnstable"); dir(5)::aMInsWliScen("Average"); dir(4)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(29)::aMInsWliScen("LessUnstable"); dir(5)::aMInsWliScen("Average"); dir(22)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(18)::aMInsWliScen("LessUnstable"); dir(27)::aMInsWliScen("Average"); dir(28)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(21)::aMInsWliScen("LessUnstable"); dir(13)::aMInsWliScen("Average"); dir(9)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(20)::aMInsWliScen("LessUnstable"); dir(17)::aMInsWliScen("Average"); dir(10)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(16)::aMInsWliScen("LessUnstable"); dir(14)::aMInsWliScen("Average"); dir(14)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(1)::aMInsWliScen("LessUnstable"); dir(30)::aMInsWliScen("Average"); dir(12)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(27)::aMInsWliScen("LessUnstable"); dir(21)::aMInsWliScen("Average"); dir(15)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(28)::aMInsWliScen("LessUnstable"); dir(3)::aMInsWliScen("Average"); dir(8)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
dir(12)::aMInsWliScen("LessUnstable"); dir(5)::aMInsWliScen("Average"); dir(6)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
dir(10)::aMInsWliScen("LessUnstable"); dir(29)::aMInsWliScen("Average"); dir(16)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
dir(22)::aMInsWliScen("LessUnstable"); dir(3)::aMInsWliScen("Average"); dir(2)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
dir(25)::aMInsWliScen("LessUnstable"); dir(7)::aMInsWliScen("Average"); dir(5)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
dir(24)::aMInsWliScen("LessUnstable"); dir(3)::aMInsWliScen("Average"); dir(15)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
dir(9)::aMInsWliScen("LessUnstable"); dir(30)::aMInsWliScen("Average"); dir(16)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
dir(2)::aMInsWliScen("LessUnstable"); dir(18)::aMInsWliScen("Average"); dir(30)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
dir(18)::aMInsWliScen("LessUnstable"); dir(29)::aMInsWliScen("Average"); dir(15)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
dir(14)::aMInsWliScen("LessUnstable"); dir(6)::aMInsWliScen("Average"); dir(30)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
dir(29)::aMInsWliScen("LessUnstable"); dir(10)::aMInsWliScen("Average"); dir(16)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
dir(3)::aMInsWliScen("LessUnstable"); dir(15)::aMInsWliScen("Average"); dir(19)::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
dir(13)::cldShadeOth("Cloudy"); dir(25)::cldShadeOth("PC"); dir(30)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
dir(24)::cldShadeOth("Cloudy"); dir(8)::cldShadeOth("PC"); dir(25)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("PC").
dir(11)::cldShadeOth("Cloudy"); dir(11)::cldShadeOth("PC"); dir(16)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
dir(19)::cldShadeOth("Cloudy"); dir(4)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
dir(25)::cldShadeOth("Cloudy"); dir(14)::cldShadeOth("PC"); dir(13)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("PC").
dir(26)::cldShadeOth("Cloudy"); dir(23)::cldShadeOth("PC"); dir(15)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
dir(18)::cldShadeOth("Cloudy"); dir(1)::cldShadeOth("PC"); dir(14)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
dir(5)::cldShadeOth("Cloudy"); dir(20)::cldShadeOth("PC"); dir(16)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("PC").
dir(18)::cldShadeOth("Cloudy"); dir(19)::cldShadeOth("PC"); dir(25)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Clear").
dir(4)::cldShadeOth("Cloudy"); dir(21)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Cloudy").
dir(18)::cldShadeOth("Cloudy"); dir(13)::cldShadeOth("PC"); dir(12)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("PC").
dir(21)::cldShadeOth("Cloudy"); dir(4)::cldShadeOth("PC"); dir(25)::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Clear").
dir(20)::cldShadeOth("Cloudy"); dir(9)::cldShadeOth("PC"); dir(19)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
dir(13)::cldShadeOth("Cloudy"); dir(12)::cldShadeOth("PC"); dir(8)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("PC").
dir(9)::cldShadeOth("Cloudy"); dir(11)::cldShadeOth("PC"); dir(13)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
dir(3)::cldShadeOth("Cloudy"); dir(11)::cldShadeOth("PC"); dir(6)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
dir(5)::cldShadeOth("Cloudy"); dir(12)::cldShadeOth("PC"); dir(9)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("PC").
dir(27)::cldShadeOth("Cloudy"); dir(24)::cldShadeOth("PC"); dir(9)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
dir(3)::cldShadeOth("Cloudy"); dir(17)::cldShadeOth("PC"); dir(3)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
dir(5)::cldShadeOth("Cloudy"); dir(14)::cldShadeOth("PC"); dir(23)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("PC").
dir(2)::cldShadeOth("Cloudy"); dir(17)::cldShadeOth("PC"); dir(15)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Clear").
dir(12)::cldShadeOth("Cloudy"); dir(5)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Cloudy").
dir(28)::cldShadeOth("Cloudy"); dir(15)::cldShadeOth("PC"); dir(7)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("PC").
dir(21)::cldShadeOth("Cloudy"); dir(5)::cldShadeOth("PC"); dir(19)::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Clear").
dir(29)::cldShadeOth("Cloudy"); dir(13)::cldShadeOth("PC"); dir(19)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
dir(30)::cldShadeOth("Cloudy"); dir(14)::cldShadeOth("PC"); dir(4)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("PC").
dir(23)::cldShadeOth("Cloudy"); dir(30)::cldShadeOth("PC"); dir(16)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Clear").
dir(23)::cldShadeOth("Cloudy"); dir(5)::cldShadeOth("PC"); dir(14)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
dir(25)::cldShadeOth("Cloudy"); dir(9)::cldShadeOth("PC"); dir(17)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("PC").
dir(17)::cldShadeOth("Cloudy"); dir(5)::cldShadeOth("PC"); dir(19)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Clear").
dir(4)::cldShadeOth("Cloudy"); dir(27)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
dir(18)::cldShadeOth("Cloudy"); dir(22)::cldShadeOth("PC"); dir(17)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("PC").
dir(28)::cldShadeOth("Cloudy"); dir(2)::cldShadeOth("PC"); dir(2)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Clear").
dir(1)::cldShadeOth("Cloudy"); dir(9)::cldShadeOth("PC"); dir(19)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Cloudy").
dir(11)::cldShadeOth("Cloudy"); dir(1)::cldShadeOth("PC"); dir(18)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("PC").
dir(16)::cldShadeOth("Cloudy"); dir(15)::cldShadeOth("PC"); dir(13)::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Clear").
dir(27)::cldShadeOth("Cloudy"); dir(20)::cldShadeOth("PC"); dir(30)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
dir(28)::cldShadeOth("Cloudy"); dir(28)::cldShadeOth("PC"); dir(28)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("PC").
dir(5)::cldShadeOth("Cloudy"); dir(29)::cldShadeOth("PC"); dir(15)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Clear").
dir(12)::cldShadeOth("Cloudy"); dir(6)::cldShadeOth("PC"); dir(7)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
dir(28)::cldShadeOth("Cloudy"); dir(10)::cldShadeOth("PC"); dir(29)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("PC").
dir(4)::cldShadeOth("Cloudy"); dir(20)::cldShadeOth("PC"); dir(22)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Clear").
dir(27)::cldShadeOth("Cloudy"); dir(30)::cldShadeOth("PC"); dir(28)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
dir(22)::cldShadeOth("Cloudy"); dir(14)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("PC").
dir(26)::cldShadeOth("Cloudy"); dir(3)::cldShadeOth("PC"); dir(15)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Clear").
dir(8)::cldShadeOth("Cloudy"); dir(18)::cldShadeOth("PC"); dir(10)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Cloudy").
dir(30)::cldShadeOth("Cloudy"); dir(6)::cldShadeOth("PC"); dir(30)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("PC").
dir(19)::cldShadeOth("Cloudy"); dir(18)::cldShadeOth("PC"); dir(24)::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Clear").
dir(13)::insInMt("None"); dir(26)::insInMt("Weak"); dir(10)::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("None").
dir(24)::insInMt("None"); dir(9)::insInMt("Weak"); dir(6)::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Weak").
dir(12)::insInMt("None"); dir(4)::insInMt("Weak"); dir(4)::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Strong").
dir(17)::insInMt("None"); dir(13)::insInMt("Weak"); dir(30)::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("None").
dir(24)::insInMt("None"); dir(5)::insInMt("Weak"); dir(1)::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Weak").
dir(27)::insInMt("None"); dir(28)::insInMt("Weak"); dir(21)::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Strong").
dir(4)::insInMt("None"); dir(8)::insInMt("Weak"); dir(20)::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("None").
dir(3)::insInMt("None"); dir(7)::insInMt("Weak"); dir(26)::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Weak").
dir(30)::insInMt("None"); dir(5)::insInMt("Weak"); dir(12)::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Strong").
dir(28)::cldShadeConv("None"); dir(6)::cldShadeConv("Some"); dir(16)::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("DCVZFavor").
dir(8)::cldShadeConv("None"); dir(24)::cldShadeConv("Some"); dir(7)::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("StrongWest").
dir(21)::cldShadeConv("None"); dir(30)::cldShadeConv("Some"); dir(22)::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Westerly").
dir(5)::cldShadeConv("None"); dir(19)::cldShadeConv("Some"); dir(29)::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Other").
dir(16)::cldShadeConv("None"); dir(7)::cldShadeConv("Some"); dir(13)::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("DCVZFavor").
dir(14)::cldShadeConv("None"); dir(6)::cldShadeConv("Some"); dir(1)::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("StrongWest").
dir(25)::cldShadeConv("None"); dir(24)::cldShadeConv("Some"); dir(16)::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Westerly").
dir(11)::cldShadeConv("None"); dir(8)::cldShadeConv("Some"); dir(27)::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Other").
dir(25)::cldShadeConv("None"); dir(27)::cldShadeConv("Some"); dir(19)::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("DCVZFavor").
dir(11)::cldShadeConv("None"); dir(24)::cldShadeConv("Some"); dir(5)::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("StrongWest").
dir(6)::cldShadeConv("None"); dir(14)::cldShadeConv("Some"); dir(9)::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Westerly").
dir(19)::cldShadeConv("None"); dir(7)::cldShadeConv("Some"); dir(28)::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Other").
dir(22)::mountainFcst("XNIL"); dir(2)::mountainFcst("SIG"); dir(9)::mountainFcst("SVR") :- insInMt("None").
dir(13)::mountainFcst("XNIL"); dir(18)::mountainFcst("SIG"); dir(26)::mountainFcst("SVR") :- insInMt("Weak").
dir(18)::mountainFcst("XNIL"); dir(8)::mountainFcst("SIG"); dir(13)::mountainFcst("SVR") :- insInMt("Strong").
dir(21)::outflowFrMt("None"); dir(27)::outflowFrMt("Weak"); dir(7)::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("DCVZFavor").
dir(5)::outflowFrMt("None"); dir(24)::outflowFrMt("Weak"); dir(12)::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("StrongWest").
dir(19)::outflowFrMt("None"); dir(7)::outflowFrMt("Weak"); dir(2)::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Westerly").
dir(19)::outflowFrMt("None"); dir(8)::outflowFrMt("Weak"); dir(4)::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Other").
dir(17)::outflowFrMt("None"); dir(20)::outflowFrMt("Weak"); dir(25)::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("DCVZFavor").
dir(28)::outflowFrMt("None"); dir(5)::outflowFrMt("Weak"); dir(30)::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("StrongWest").
dir(24)::outflowFrMt("None"); dir(1)::outflowFrMt("Weak"); dir(14)::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Westerly").
dir(13)::outflowFrMt("None"); dir(2)::outflowFrMt("Weak"); dir(8)::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Other").
dir(14)::outflowFrMt("None"); dir(2)::outflowFrMt("Weak"); dir(19)::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("DCVZFavor").
dir(17)::outflowFrMt("None"); dir(19)::outflowFrMt("Weak"); dir(3)::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("StrongWest").
dir(8)::outflowFrMt("None"); dir(8)::outflowFrMt("Weak"); dir(19)::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Westerly").
dir(21)::outflowFrMt("None"); dir(14)::outflowFrMt("Weak"); dir(26)::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Other").
dir(5)::boundaries("None"); dir(12)::boundaries("Weak"); dir(6)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("None").
dir(21)::boundaries("None"); dir(7)::boundaries("Weak"); dir(23)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Weak").
dir(1)::boundaries("None"); dir(10)::boundaries("Weak"); dir(29)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Strong").
dir(29)::boundaries("None"); dir(14)::boundaries("Weak"); dir(24)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("None").
dir(28)::boundaries("None"); dir(29)::boundaries("Weak"); dir(19)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Weak").
dir(1)::boundaries("None"); dir(16)::boundaries("Weak"); dir(2)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Strong").
dir(2)::boundaries("None"); dir(30)::boundaries("Weak"); dir(27)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("None").
dir(28)::boundaries("None"); dir(17)::boundaries("Weak"); dir(25)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Weak").
dir(11)::boundaries("None"); dir(16)::boundaries("Weak"); dir(30)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Strong").
dir(2)::boundaries("None"); dir(13)::boundaries("Weak"); dir(22)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("None").
dir(1)::boundaries("None"); dir(10)::boundaries("Weak"); dir(8)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Weak").
dir(10)::boundaries("None"); dir(2)::boundaries("Weak"); dir(17)::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Strong").
dir(22)::boundaries("None"); dir(21)::boundaries("Weak"); dir(9)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("None").
dir(17)::boundaries("None"); dir(8)::boundaries("Weak"); dir(20)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Weak").
dir(14)::boundaries("None"); dir(8)::boundaries("Weak"); dir(22)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Strong").
dir(1)::boundaries("None"); dir(20)::boundaries("Weak"); dir(5)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("None").
dir(28)::boundaries("None"); dir(13)::boundaries("Weak"); dir(23)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Weak").
dir(13)::boundaries("None"); dir(12)::boundaries("Weak"); dir(25)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Strong").
dir(5)::boundaries("None"); dir(13)::boundaries("Weak"); dir(12)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("None").
dir(1)::boundaries("None"); dir(14)::boundaries("Weak"); dir(3)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Weak").
dir(13)::boundaries("None"); dir(29)::boundaries("Weak"); dir(7)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Strong").
dir(27)::boundaries("None"); dir(29)::boundaries("Weak"); dir(10)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("None").
dir(6)::boundaries("None"); dir(11)::boundaries("Weak"); dir(8)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Weak").
dir(22)::boundaries("None"); dir(30)::boundaries("Weak"); dir(23)::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Strong").
dir(29)::boundaries("None"); dir(5)::boundaries("Weak"); dir(23)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("None").
dir(13)::boundaries("None"); dir(6)::boundaries("Weak"); dir(24)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Weak").
dir(5)::boundaries("None"); dir(22)::boundaries("Weak"); dir(6)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Strong").
dir(4)::boundaries("None"); dir(9)::boundaries("Weak"); dir(30)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("None").
dir(9)::boundaries("None"); dir(8)::boundaries("Weak"); dir(20)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Weak").
dir(10)::boundaries("None"); dir(3)::boundaries("Weak"); dir(12)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Strong").
dir(11)::boundaries("None"); dir(7)::boundaries("Weak"); dir(5)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("None").
dir(18)::boundaries("None"); dir(8)::boundaries("Weak"); dir(15)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Weak").
dir(3)::boundaries("None"); dir(24)::boundaries("Weak"); dir(26)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Strong").
dir(30)::boundaries("None"); dir(14)::boundaries("Weak"); dir(25)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("None").
dir(8)::boundaries("None"); dir(26)::boundaries("Weak"); dir(27)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Weak").
dir(11)::boundaries("None"); dir(20)::boundaries("Weak"); dir(26)::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Strong").
dir(11)::compPlFcst("IncCapDecIns"); dir(19)::compPlFcst("LittleChange"); dir(7)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(9)::compPlFcst("IncCapDecIns"); dir(25)::compPlFcst("LittleChange"); dir(24)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(17)::compPlFcst("IncCapDecIns"); dir(18)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(16)::compPlFcst("IncCapDecIns"); dir(27)::compPlFcst("LittleChange"); dir(14)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(29)::compPlFcst("IncCapDecIns"); dir(18)::compPlFcst("LittleChange"); dir(19)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(26)::compPlFcst("IncCapDecIns"); dir(5)::compPlFcst("LittleChange"); dir(28)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(10)::compPlFcst("IncCapDecIns"); dir(25)::compPlFcst("LittleChange"); dir(18)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(18)::compPlFcst("IncCapDecIns"); dir(17)::compPlFcst("LittleChange"); dir(21)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(11)::compPlFcst("IncCapDecIns"); dir(23)::compPlFcst("LittleChange"); dir(15)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(20)::compPlFcst("IncCapDecIns"); dir(27)::compPlFcst("LittleChange"); dir(14)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(27)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(19)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(19)::compPlFcst("IncCapDecIns"); dir(12)::compPlFcst("LittleChange"); dir(2)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(6)::compPlFcst("IncCapDecIns"); dir(24)::compPlFcst("LittleChange"); dir(18)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(10)::compPlFcst("IncCapDecIns"); dir(2)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(6)::compPlFcst("IncCapDecIns"); dir(9)::compPlFcst("LittleChange"); dir(7)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(18)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(5)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(11)::compPlFcst("IncCapDecIns"); dir(5)::compPlFcst("LittleChange"); dir(6)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(17)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(12)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(14)::compPlFcst("IncCapDecIns"); dir(22)::compPlFcst("LittleChange"); dir(23)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(9)::compPlFcst("IncCapDecIns"); dir(3)::compPlFcst("LittleChange"); dir(14)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(29)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(6)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(30)::compPlFcst("IncCapDecIns"); dir(9)::compPlFcst("LittleChange"); dir(20)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(25)::compPlFcst("IncCapDecIns"); dir(23)::compPlFcst("LittleChange"); dir(10)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(8)::compPlFcst("IncCapDecIns"); dir(11)::compPlFcst("LittleChange"); dir(8)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(21)::compPlFcst("IncCapDecIns"); dir(2)::compPlFcst("LittleChange"); dir(18)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(8)::compPlFcst("IncCapDecIns"); dir(17)::compPlFcst("LittleChange"); dir(19)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(28)::compPlFcst("IncCapDecIns"); dir(1)::compPlFcst("LittleChange"); dir(6)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(11)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(22)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(26)::compPlFcst("IncCapDecIns"); dir(8)::compPlFcst("LittleChange"); dir(28)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(3)::compPlFcst("IncCapDecIns"); dir(23)::compPlFcst("LittleChange"); dir(22)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(14)::compPlFcst("IncCapDecIns"); dir(24)::compPlFcst("LittleChange"); dir(30)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(23)::compPlFcst("IncCapDecIns"); dir(17)::compPlFcst("LittleChange"); dir(18)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(1)::compPlFcst("IncCapDecIns"); dir(16)::compPlFcst("LittleChange"); dir(1)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(13)::compPlFcst("IncCapDecIns"); dir(28)::compPlFcst("LittleChange"); dir(26)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(3)::compPlFcst("IncCapDecIns"); dir(25)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(19)::compPlFcst("IncCapDecIns"); dir(23)::compPlFcst("LittleChange"); dir(16)::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(12)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(26)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(18)::compPlFcst("IncCapDecIns"); dir(4)::compPlFcst("LittleChange"); dir(15)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(21)::compPlFcst("IncCapDecIns"); dir(26)::compPlFcst("LittleChange"); dir(8)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(22)::compPlFcst("IncCapDecIns"); dir(6)::compPlFcst("LittleChange"); dir(26)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(28)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(27)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(16)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(5)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(20)::compPlFcst("IncCapDecIns"); dir(3)::compPlFcst("LittleChange"); dir(13)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(3)::compPlFcst("IncCapDecIns"); dir(21)::compPlFcst("LittleChange"); dir(30)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(23)::compPlFcst("IncCapDecIns"); dir(9)::compPlFcst("LittleChange"); dir(7)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(10)::compPlFcst("IncCapDecIns"); dir(26)::compPlFcst("LittleChange"); dir(12)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(24)::compPlFcst("IncCapDecIns"); dir(21)::compPlFcst("LittleChange"); dir(1)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(26)::compPlFcst("IncCapDecIns"); dir(29)::compPlFcst("LittleChange"); dir(9)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(19)::compPlFcst("IncCapDecIns"); dir(22)::compPlFcst("LittleChange"); dir(21)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(25)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(16)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(17)::compPlFcst("IncCapDecIns"); dir(5)::compPlFcst("LittleChange"); dir(24)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(16)::compPlFcst("IncCapDecIns"); dir(30)::compPlFcst("LittleChange"); dir(23)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(30)::compPlFcst("IncCapDecIns"); dir(8)::compPlFcst("LittleChange"); dir(15)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(28)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(18)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(24)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(28)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(27)::compPlFcst("IncCapDecIns"); dir(11)::compPlFcst("LittleChange"); dir(5)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(22)::compPlFcst("IncCapDecIns"); dir(4)::compPlFcst("LittleChange"); dir(15)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(20)::compPlFcst("IncCapDecIns"); dir(26)::compPlFcst("LittleChange"); dir(5)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(2)::compPlFcst("IncCapDecIns"); dir(21)::compPlFcst("LittleChange"); dir(29)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(17)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(7)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(27)::compPlFcst("IncCapDecIns"); dir(1)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(3)::compPlFcst("IncCapDecIns"); dir(12)::compPlFcst("LittleChange"); dir(8)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(30)::compPlFcst("IncCapDecIns"); dir(13)::compPlFcst("LittleChange"); dir(28)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(1)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(30)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(24)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(5)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(24)::compPlFcst("IncCapDecIns"); dir(16)::compPlFcst("LittleChange"); dir(23)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(19)::compPlFcst("IncCapDecIns"); dir(6)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(11)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(16)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(16)::compPlFcst("IncCapDecIns"); dir(22)::compPlFcst("LittleChange"); dir(17)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(14)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(1)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(15)::compPlFcst("IncCapDecIns"); dir(5)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(10)::compPlFcst("IncCapDecIns"); dir(6)::compPlFcst("LittleChange"); dir(11)::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(21)::compPlFcst("IncCapDecIns"); dir(28)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(25)::compPlFcst("IncCapDecIns"); dir(24)::compPlFcst("LittleChange"); dir(29)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(5)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(23)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(13)::compPlFcst("IncCapDecIns"); dir(13)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(26)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(18)::compPlFcst("IncCapDecIns"); dir(8)::compPlFcst("LittleChange"); dir(22)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(2)::compPlFcst("IncCapDecIns"); dir(15)::compPlFcst("LittleChange"); dir(20)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(19)::compPlFcst("IncCapDecIns"); dir(13)::compPlFcst("LittleChange"); dir(26)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(19)::compPlFcst("IncCapDecIns"); dir(26)::compPlFcst("LittleChange"); dir(12)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(10)::compPlFcst("IncCapDecIns"); dir(27)::compPlFcst("LittleChange"); dir(21)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(10)::compPlFcst("IncCapDecIns"); dir(30)::compPlFcst("LittleChange"); dir(22)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(27)::compPlFcst("IncCapDecIns"); dir(29)::compPlFcst("LittleChange"); dir(14)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(7)::compPlFcst("IncCapDecIns"); dir(24)::compPlFcst("LittleChange"); dir(20)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(1)::compPlFcst("IncCapDecIns"); dir(17)::compPlFcst("LittleChange"); dir(25)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(5)::compPlFcst("IncCapDecIns"); dir(19)::compPlFcst("LittleChange"); dir(1)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(28)::compPlFcst("IncCapDecIns"); dir(21)::compPlFcst("LittleChange"); dir(6)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(5)::compPlFcst("IncCapDecIns"); dir(19)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(5)::compPlFcst("IncCapDecIns"); dir(12)::compPlFcst("LittleChange"); dir(2)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(29)::compPlFcst("IncCapDecIns"); dir(2)::compPlFcst("LittleChange"); dir(24)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(23)::compPlFcst("IncCapDecIns"); dir(6)::compPlFcst("LittleChange"); dir(8)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(10)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(29)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(15)::compPlFcst("IncCapDecIns"); dir(17)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(6)::compPlFcst("IncCapDecIns"); dir(7)::compPlFcst("LittleChange"); dir(14)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(16)::compPlFcst("IncCapDecIns"); dir(30)::compPlFcst("LittleChange"); dir(20)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(29)::compPlFcst("IncCapDecIns"); dir(4)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
dir(2)::compPlFcst("IncCapDecIns"); dir(24)::compPlFcst("LittleChange"); dir(6)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
dir(9)::compPlFcst("IncCapDecIns"); dir(6)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
dir(2)::compPlFcst("IncCapDecIns"); dir(14)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
dir(13)::compPlFcst("IncCapDecIns"); dir(29)::compPlFcst("LittleChange"); dir(2)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
dir(5)::compPlFcst("IncCapDecIns"); dir(18)::compPlFcst("LittleChange"); dir(22)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
dir(16)::compPlFcst("IncCapDecIns"); dir(21)::compPlFcst("LittleChange"); dir(4)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
dir(18)::compPlFcst("IncCapDecIns"); dir(9)::compPlFcst("LittleChange"); dir(23)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
dir(19)::compPlFcst("IncCapDecIns"); dir(5)::compPlFcst("LittleChange"); dir(11)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
dir(17)::compPlFcst("IncCapDecIns"); dir(13)::compPlFcst("LittleChange"); dir(12)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
dir(15)::compPlFcst("IncCapDecIns"); dir(28)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
dir(15)::compPlFcst("IncCapDecIns"); dir(12)::compPlFcst("LittleChange"); dir(3)::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
dir(17)::capChange("Decreasing"); dir(26)::capChange("LittleChange"); dir(1)::capChange("Increasing") :- compPlFcst("IncCapDecIns").
dir(16)::capChange("Decreasing"); dir(30)::capChange("LittleChange"); dir(13)::capChange("Increasing") :- compPlFcst("LittleChange").
dir(16)::capChange("Decreasing"); dir(13)::capChange("LittleChange"); dir(16)::capChange("Increasing") :- compPlFcst("DecCapIncIns").
dir(13)::insChange("Decreasing"); dir(22)::insChange("LittleChange"); dir(5)::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("IncCapDecIns").
dir(23)::insChange("Decreasing"); dir(10)::insChange("LittleChange"); dir(23)::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("LittleChange").
dir(16)::insChange("Decreasing"); dir(27)::insChange("LittleChange"); dir(8)::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("DecCapIncIns").
dir(4)::insChange("Decreasing"); dir(27)::insChange("LittleChange"); dir(1)::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("IncCapDecIns").
dir(26)::insChange("Decreasing"); dir(26)::insChange("LittleChange"); dir(24)::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("LittleChange").
dir(26)::insChange("Decreasing"); dir(15)::insChange("LittleChange"); dir(3)::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("DecCapIncIns").
dir(9)::insChange("Decreasing"); dir(15)::insChange("LittleChange"); dir(7)::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("IncCapDecIns").
dir(22)::insChange("Decreasing"); dir(24)::insChange("LittleChange"); dir(2)::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("LittleChange").
dir(29)::insChange("Decreasing"); dir(27)::insChange("LittleChange"); dir(12)::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("DecCapIncIns").
dir(17)::insChange("Decreasing"); dir(5)::insChange("LittleChange"); dir(8)::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("IncCapDecIns").
dir(15)::insChange("Decreasing"); dir(7)::insChange("LittleChange"); dir(20)::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("LittleChange").
dir(19)::insChange("Decreasing"); dir(2)::insChange("LittleChange"); dir(19)::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("DecCapIncIns").
dir(23)::insSclInScen("LessUnstable"); dir(23)::insSclInScen("Average"); dir(8)::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Decreasing").
dir(25)::insSclInScen("LessUnstable"); dir(7)::insSclInScen("Average"); dir(4)::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("LittleChange").
dir(3)::insSclInScen("LessUnstable"); dir(28)::insSclInScen("Average"); dir(23)::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Increasing").
dir(27)::insSclInScen("LessUnstable"); dir(8)::insSclInScen("Average"); dir(12)::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Decreasing").
dir(13)::insSclInScen("LessUnstable"); dir(15)::insSclInScen("Average"); dir(9)::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("LittleChange").
dir(23)::insSclInScen("LessUnstable"); dir(7)::insSclInScen("Average"); dir(25)::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Increasing").
dir(7)::insSclInScen("LessUnstable"); dir(27)::insSclInScen("Average"); dir(4)::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Decreasing").
dir(3)::insSclInScen("LessUnstable"); dir(21)::insSclInScen("Average"); dir(25)::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("LittleChange").
dir(8)::insSclInScen("LessUnstable"); dir(19)::insSclInScen("Average"); dir(18)::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Increasing").
dir(22)::capInScen("LessThanAve"); dir(3)::capInScen("Average"); dir(20)::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Decreasing").
dir(2)::capInScen("LessThanAve"); dir(27)::capInScen("Average"); dir(12)::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("LittleChange").
dir(28)::capInScen("LessThanAve"); dir(12)::capInScen("Average"); dir(8)::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Increasing").
dir(21)::capInScen("LessThanAve"); dir(9)::capInScen("Average"); dir(19)::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Decreasing").
dir(27)::capInScen("LessThanAve"); dir(6)::capInScen("Average"); dir(11)::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("LittleChange").
dir(25)::capInScen("LessThanAve"); dir(24)::capInScen("Average"); dir(28)::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Increasing").
dir(24)::capInScen("LessThanAve"); dir(26)::capInScen("Average"); dir(1)::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Decreasing").
dir(23)::capInScen("LessThanAve"); dir(5)::capInScen("Average"); dir(20)::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("LittleChange").
dir(26)::capInScen("LessThanAve"); dir(27)::capInScen("Average"); dir(30)::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Increasing").
dir(11)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(21)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(11)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(30)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(25)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(26)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(18)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(8)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(11)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(13)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(20)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(19)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(9)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(18)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(30)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(20)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(17)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(11)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(27)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(1)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(22)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(17)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(21)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(14)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(19)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(18)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(3)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(28)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(12)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(25)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(16)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(28)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(4)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(22)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(5)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(13)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(20)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(6)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(3)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(5)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(4)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(11)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(6)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(15)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(21)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
dir(10)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
dir(1)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
dir(29)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
dir(24)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
dir(27)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
dir(8)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
dir(27)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
dir(20)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
dir(20)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
dir(13)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
dir(7)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(1)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(30)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(10)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(12)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(22)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(17)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(19)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(18)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(19)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(12)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(23)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(7)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(6)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(7)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(10)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(6)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(11)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(4)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(20)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(29)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(14)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(2)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(13)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(17)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(8)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(2)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(8)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(30)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(24)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(8)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(11)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(19)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(29)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(21)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(15)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(12)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(27)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(23)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(2)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(10)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(9)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(28)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(18)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(6)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(30)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(16)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(12)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(25)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(14)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(11)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(30)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(1)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(1)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(10)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(29)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(19)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(18)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(13)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(6)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(21)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(4)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(27)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(24)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(9)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(2)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(23)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(25)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(28)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(20)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(4)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(2)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(16)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(27)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(20)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(13)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(8)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(9)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(3)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(18)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(2)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(5)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(21)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(14)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(23)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(8)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(9)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
dir(9)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
dir(16)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
dir(11)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
dir(8)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
dir(14)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
dir(6)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
dir(8)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
dir(25)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
dir(23)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
dir(16)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(24)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(25)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(8)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(24)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(18)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(28)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(24)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(26)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(23)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(29)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(22)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(20)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(29)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(11)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(12)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(17)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(6)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(18)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(23)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(26)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(10)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(25)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(18)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(29)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(11)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(13)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(25)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(5)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(26)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(27)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(5)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(20)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(27)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(20)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(30)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(21)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(23)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(11)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(23)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(21)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(10)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(9)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(1)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(2)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(29)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(19)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(23)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(18)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(19)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(15)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(11)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(28)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(9)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(26)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(3)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(26)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(21)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(7)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(2)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(8)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(10)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(30)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(16)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(27)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(7)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(3)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(22)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(12)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(21)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(24)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(15)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(13)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(29)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(12)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(22)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(13)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(20)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(4)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(16)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(29)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(28)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(23)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(18)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(25)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(14)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(29)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
dir(11)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
dir(12)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
dir(2)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
dir(30)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
dir(9)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
dir(6)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
dir(13)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
dir(14)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
dir(19)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
dir(10)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
dir(16)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(26)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(29)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(17)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(28)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(20)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(12)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(20)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(4)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(14)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(28)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(8)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(17)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(6)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(3)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(25)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(4)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(16)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(7)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(19)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(21)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(20)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(23)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(20)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(5)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(4)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(13)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(11)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(27)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(28)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(17)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(17)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(21)::plainsFcst("XNIL"); dir(6)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(16)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(17)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(7)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(12)::plainsFcst("XNIL"); dir(26)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(4)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(7)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(6)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(14)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(26)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(25)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(11)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(5)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(24)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(24)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(15)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(4)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(17)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(14)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(24)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(26)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(2)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(21)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(11)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(13)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(29)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(5)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(23)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(6)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(21)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(7)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(30)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(25)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(3)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(29)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(16)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(29)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(27)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(24)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(9)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(12)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(22)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(28)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(3)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(11)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(1)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(2)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(2)::plainsFcst("XNIL"); dir(4)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(27)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(19)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(26)::plainsFcst("XNIL"); dir(30)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(7)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(9)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(16)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(6)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(4)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(12)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(15)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(2)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(22)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(21)::plainsFcst("XNIL"); dir(13)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(30)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(18)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
dir(27)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(6)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
dir(22)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
dir(22)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
dir(15)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
dir(19)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(5)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
dir(16)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(15)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
dir(24)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
dir(22)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
dir(24)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
dir(30)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
dir(27)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(8)::plainsFcst("XNIL"); dir(22)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(20)::plainsFcst("XNIL"); dir(12)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(28)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(28)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(27)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(9)::plainsFcst("XNIL"); dir(20)::plainsFcst("SIG"); dir(1)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(16)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(17)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(25)::plainsFcst("XNIL"); dir(1)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(13)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(24)::plainsFcst("XNIL"); dir(29)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
dir(18)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
dir(12)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
dir(3)::plainsFcst("XNIL"); dir(10)::plainsFcst("SIG"); dir(11)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
dir(15)::plainsFcst("XNIL"); dir(17)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
dir(7)::plainsFcst("XNIL"); dir(2)::plainsFcst("SIG"); dir(2)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
dir(22)::plainsFcst("XNIL"); dir(14)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
dir(17)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(8)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
dir(15)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
dir(21)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(20)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
dir(16)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(16)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
dir(13)::plainsFcst("XNIL"); dir(23)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
dir(10)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
dir(6)::plainsFcst("XNIL"); dir(16)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
dir(30)::plainsFcst("XNIL"); dir(25)::plainsFcst("SIG"); dir(10)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
dir(19)::plainsFcst("XNIL"); dir(21)::plainsFcst("SIG"); dir(14)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
dir(9)::plainsFcst("XNIL"); dir(5)::plainsFcst("SIG"); dir(26)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
dir(12)::plainsFcst("XNIL"); dir(15)::plainsFcst("SIG"); dir(19)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
dir(15)::plainsFcst("XNIL"); dir(28)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
dir(6)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(28)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
dir(21)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
dir(10)::plainsFcst("XNIL"); dir(8)::plainsFcst("SIG"); dir(7)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
dir(3)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(3)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
dir(28)::plainsFcst("XNIL"); dir(9)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
dir(30)::plainsFcst("XNIL"); dir(27)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
dir(23)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(24)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
dir(29)::plainsFcst("XNIL"); dir(19)::plainsFcst("SIG"); dir(21)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
dir(4)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(9)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
dir(17)::plainsFcst("XNIL"); dir(18)::plainsFcst("SIG"); dir(25)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
dir(18)::plainsFcst("XNIL"); dir(24)::plainsFcst("SIG"); dir(30)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
dir(24)::plainsFcst("XNIL"); dir(7)::plainsFcst("SIG"); dir(27)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
dir(14)::plainsFcst("XNIL"); dir(3)::plainsFcst("SIG"); dir(13)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
dir(28)::plainsFcst("XNIL"); dir(11)::plainsFcst("SIG"); dir(4)::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
dir(10)::n34StarFcst("XNIL"); dir(8)::n34StarFcst("SIG"); dir(28)::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("XNIL").
dir(13)::n34StarFcst("XNIL"); dir(23)::n34StarFcst("SIG"); dir(18)::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SIG").
dir(7)::n34StarFcst("XNIL"); dir(18)::n34StarFcst("SIG"); dir(10)::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SVR").
dir(6)::n34StarFcst("XNIL"); dir(21)::n34StarFcst("SIG"); dir(14)::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("XNIL").
dir(13)::n34StarFcst("XNIL"); dir(8)::n34StarFcst("SIG"); dir(6)::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SIG").
dir(20)::n34StarFcst("XNIL"); dir(22)::n34StarFcst("SIG"); dir(7)::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SVR").
dir(17)::n34StarFcst("XNIL"); dir(30)::n34StarFcst("SIG"); dir(13)::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("XNIL").
dir(25)::n34StarFcst("XNIL"); dir(26)::n34StarFcst("SIG"); dir(30)::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SIG").
dir(1)::n34StarFcst("XNIL"); dir(4)::n34StarFcst("SIG"); dir(27)::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SVR").
dir(21)::n34StarFcst("XNIL"); dir(17)::n34StarFcst("SIG"); dir(25)::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("XNIL").
dir(4)::n34StarFcst("XNIL"); dir(21)::n34StarFcst("SIG"); dir(13)::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SIG").
dir(9)::n34StarFcst("XNIL"); dir(7)::n34StarFcst("SIG"); dir(22)::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SVR").
dir(1)::n34StarFcst("XNIL"); dir(28)::n34StarFcst("SIG"); dir(23)::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("XNIL").
dir(26)::n34StarFcst("XNIL"); dir(20)::n34StarFcst("SIG"); dir(13)::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SIG").
dir(22)::n34StarFcst("XNIL"); dir(6)::n34StarFcst("SIG"); dir(6)::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SVR").
dir(25)::r5Fcst("XNIL"); dir(28)::r5Fcst("SIG"); dir(15)::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("XNIL").
dir(11)::r5Fcst("XNIL"); dir(26)::r5Fcst("SIG"); dir(28)::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SIG").
dir(29)::r5Fcst("XNIL"); dir(24)::r5Fcst("SIG"); dir(8)::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SVR").
dir(14)::r5Fcst("XNIL"); dir(8)::r5Fcst("SIG"); dir(23)::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("XNIL").
dir(1)::r5Fcst("XNIL"); dir(2)::r5Fcst("SIG"); dir(7)::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SIG").
dir(27)::r5Fcst("XNIL"); dir(9)::r5Fcst("SIG"); dir(5)::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SVR").
dir(11)::r5Fcst("XNIL"); dir(21)::r5Fcst("SIG"); dir(9)::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("XNIL").
dir(9)::r5Fcst("XNIL"); dir(18)::r5Fcst("SIG"); dir(21)::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SIG").
dir(24)::r5Fcst("XNIL"); dir(12)::r5Fcst("SIG"); dir(28)::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SVR").
