%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:59:10.343014

?::wndHodograph("DCVZFavor"); ?::wndHodograph("StrongWest"); ?::wndHodograph("Westerly"); ?::wndHodograph("Other").
?::aMDewptCalPl("Instability"); ?::aMDewptCalPl("Neutral"); ?::aMDewptCalPl("Stability").
?::loLevMoistAd("StrongPos"); ?::loLevMoistAd("WeakPos"); ?::loLevMoistAd("Neutral"); ?::loLevMoistAd("Negative").
?::raoContMoist("VeryWet"); ?::raoContMoist("Wet"); ?::raoContMoist("Neutral"); ?::raoContMoist("Dry").
?::latestCIN("None"); ?::latestCIN("PartInhibit"); ?::latestCIN("Stifling"); ?::latestCIN("TotalInhibit").
?::vISCloudCov("Cloudy"); ?::vISCloudCov("PC"); ?::vISCloudCov("Clear").
?::qGVertMotion("StrongUp"); ?::qGVertMotion("WeakUp"); ?::qGVertMotion("Neutral"); ?::qGVertMotion("Down").
?::date("May15_Jun14"); ?::date("Jun15_Jul1"); ?::date("Jul2_Jul15"); ?::date("Jul16_Aug10"); ?::date("Aug11_Aug20"); ?::date("Aug20_Sep15").
?::iRCloudCover("Cloudy"); ?::iRCloudCover("PC"); ?::iRCloudCover("Clear").
?::morningCIN("None"); ?::morningCIN("PartInhibit"); ?::morningCIN("Stifling"); ?::morningCIN("TotalInhibit").
?::morningBound("None"); ?::morningBound("Weak"); ?::morningBound("Strong").
?::n0_7muVerMo("StrongUp"); ?::n0_7muVerMo("WeakUp"); ?::n0_7muVerMo("Neutral"); ?::n0_7muVerMo("Down").
?::lLIW("Unfavorable"); ?::lLIW("Weak"); ?::lLIW("Moderate"); ?::lLIW("Strong").
?::aMInstabMt("None"); ?::aMInstabMt("Weak"); ?::aMInstabMt("Strong").
?::satContMoist("VeryWet"); ?::satContMoist("Wet"); ?::satContMoist("Neutral"); ?::satContMoist("Dry").
?::subjVertMo("StronUp"); ?::subjVertMo("WeakUp"); ?::subjVertMo("Neutral"); ?::subjVertMo("Down").
?::lIfr12ZDENSd("LIGt0"); ?::lIfr12ZDENSd("N1GtLIGt_4"); ?::lIfr12ZDENSd("N5GtLIGt_8"); ?::lIfr12ZDENSd("LILt_8").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("None"), lLIW("Unfavorable").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("None"), lLIW("Weak").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("None"), lLIW("Moderate").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("None"), lLIW("Strong").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Unfavorable").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Weak").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Moderate").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Strong").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Unfavorable").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Weak").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Moderate").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Strong").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Unfavorable").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Weak").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Moderate").
?::curPropConv("None"); ?::curPropConv("Slight"); ?::curPropConv("Moderate"); ?::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Strong").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Cloudy").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("PC").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Clear").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Cloudy").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("PC").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Clear").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Cloudy").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("PC").
?::combClouds("Cloudy"); ?::combClouds("PC"); ?::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Clear").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("VeryWet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Wet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Neutral").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Dry").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("VeryWet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Wet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Neutral").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Dry").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("VeryWet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Wet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Neutral").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Dry").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("VeryWet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Wet").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Neutral").
?::combMoisture("VeryWet"); ?::combMoisture("Wet"); ?::combMoisture("Neutral"); ?::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Dry").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("May15_Jun14").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("Jun15_Jul1").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("Jul2_Jul15").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("Jul16_Aug10").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("Aug11_Aug20").
?::scenario("A"); ?::scenario("B"); ?::scenario("C"); ?::scenario("D"); ?::scenario("E"); ?::scenario("F"); ?::scenario("G"); ?::scenario("H"); ?::scenario("I"); ?::scenario("J"); ?::scenario("K") :- date("Aug20_Sep15").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Down").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("StrongUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("WeakUp").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Neutral").
?::combVerMo("StrongUp"); ?::combVerMo("WeakUp"); ?::combVerMo("Neutral"); ?::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Down").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("A").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("B").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("C").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("D").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("E").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("F").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("G").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("H").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("I").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("J").
?::windAloft("LV"); ?::windAloft("SWQuad"); ?::windAloft("NWQuad"); ?::windAloft("AllElse") :- scenario("K").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("A").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("B").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("C").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("D").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("E").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("F").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("G").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("H").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("I").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("J").
?::dewpoints("LowEvrywhere"); ?::dewpoints("LowAtStation"); ?::dewpoints("LowSHighN"); ?::dewpoints("LowNHighS"); ?::dewpoints("LowMtsHighPl"); ?::dewpoints("HighEvrywher"); ?::dewpoints("Other") :- scenario("K").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("A").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("B").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("C").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("D").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("E").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("F").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("G").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("H").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("I").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("J").
?::mvmtFeatures("StrongFront"); ?::mvmtFeatures("MarkedUpper"); ?::mvmtFeatures("OtherRapid"); ?::mvmtFeatures("NoMajor") :- scenario("K").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("A").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("B").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("C").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("D").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("E").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("F").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("G").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("H").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("I").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("J").
?::synForcng("SigNegative"); ?::synForcng("NegToPos"); ?::synForcng("SigPositive"); ?::synForcng("PosToNeg"); ?::synForcng("LittleChange") :- scenario("K").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("A").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("B").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("C").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("D").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("E").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("F").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("G").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("H").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("I").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("J").
?::sfcWndShfDis("DenvCyclone"); ?::sfcWndShfDis("E_W_N"); ?::sfcWndShfDis("E_W_S"); ?::sfcWndShfDis("MovingFtorOt"); ?::sfcWndShfDis("DryLine"); ?::sfcWndShfDis("None"); ?::sfcWndShfDis("Other") :- scenario("K").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("A").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("B").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("C").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("D").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("E").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("F").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("G").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("H").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("I").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("J").
?::scenRel3_4("ACEFK"); ?::scenRel3_4("B"); ?::scenRel3_4("D"); ?::scenRel3_4("GJ"); ?::scenRel3_4("HI") :- scenario("K").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("A").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("B").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("C").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("D").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("E").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("F").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("G").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("H").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("I").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("J").
?::scenRelAMCIN("AB"); ?::scenRelAMCIN("CThruK") :- scenario("K").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("A").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("B").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("C").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("D").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("E").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("F").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("G").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("H").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("I").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("J").
?::midLLapse("CloseToDryAd"); ?::midLLapse("Steep"); ?::midLLapse("ModerateOrLe") :- scenario("K").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("A").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("B").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("C").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("D").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("E").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("F").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("G").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("H").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("I").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("J").
?::scenRelAMIns("ABI"); ?::scenRelAMIns("CDEJ"); ?::scenRelAMIns("F"); ?::scenRelAMIns("G"); ?::scenRelAMIns("H"); ?::scenRelAMIns("K") :- scenario("K").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("A").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("B").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("C").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("D").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("E").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("F").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("G").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("H").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("I").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("J").
?::tempDis("QStationary"); ?::tempDis("Moving"); ?::tempDis("None"); ?::tempDis("Other") :- scenario("K").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("A").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("B").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("C").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("D").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("E").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("F").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("G").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("H").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("I").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("J").
?::meanRH("VeryMoist"); ?::meanRH("Average"); ?::meanRH("Dry") :- scenario("K").
?::areaMeso_ALS("StrongUp"); ?::areaMeso_ALS("WeakUp"); ?::areaMeso_ALS("Neutral"); ?::areaMeso_ALS("Down") :- combVerMo("StrongUp").
?::areaMeso_ALS("StrongUp"); ?::areaMeso_ALS("WeakUp"); ?::areaMeso_ALS("Neutral"); ?::areaMeso_ALS("Down") :- combVerMo("WeakUp").
?::areaMeso_ALS("StrongUp"); ?::areaMeso_ALS("WeakUp"); ?::areaMeso_ALS("Neutral"); ?::areaMeso_ALS("Down") :- combVerMo("Neutral").
?::areaMeso_ALS("StrongUp"); ?::areaMeso_ALS("WeakUp"); ?::areaMeso_ALS("Neutral"); ?::areaMeso_ALS("Down") :- combVerMo("Down").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("A").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("B").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("C").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("D").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("E").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("F").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("G").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("H").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("I").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("J").
?::lowLLapse("CloseToDryAd"); ?::lowLLapse("Steep"); ?::lowLLapse("ModerateOrLe"); ?::lowLLapse("Stable") :- scenario("K").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("A").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("B").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("C").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("D").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("E").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("F").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("G").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("H").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("I").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("J").
?::scnRelPlFcst("A"); ?::scnRelPlFcst("B"); ?::scnRelPlFcst("C"); ?::scnRelPlFcst("D"); ?::scnRelPlFcst("E"); ?::scnRelPlFcst("F"); ?::scnRelPlFcst("G"); ?::scnRelPlFcst("H"); ?::scnRelPlFcst("I"); ?::scnRelPlFcst("J"); ?::scnRelPlFcst("K") :- scenario("K").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("A").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("B").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("C").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("D").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("E").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("F").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("G").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("H").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("I").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("J").
?::windFieldMt("Westerly"); ?::windFieldMt("LVorOther") :- scenario("K").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("A").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("B").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("C").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("D").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("E").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("F").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("G").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("H").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("I").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("J").
?::windFieldPln("LV"); ?::windFieldPln("DenvCyclone"); ?::windFieldPln("LongAnticyc"); ?::windFieldPln("E_NE"); ?::windFieldPln("SEQuad"); ?::windFieldPln("WidespdDnsl") :- scenario("K").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("A").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("B").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("C").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("D").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("E").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("F").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("G").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("H").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("I").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("J").
?::rHRatio("MoistMDryL"); ?::rHRatio("DryMMoistL"); ?::rHRatio("Other") :- scenario("K").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("VeryWet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Wet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Neutral").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Dry").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("VeryWet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Wet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Neutral").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Dry").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("VeryWet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Wet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Neutral").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Dry").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("VeryWet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Wet").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Neutral").
?::areaMoDryAir("VeryWet"); ?::areaMoDryAir("Wet"); ?::areaMoDryAir("Neutral"); ?::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Dry").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("None").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("PartInhibit").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("Stifling").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("TotalInhibit").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("None").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("PartInhibit").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("Stifling").
?::aMCINInScen("LessThanAve"); ?::aMCINInScen("Average"); ?::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("TotalInhibit").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
?::aMInsWliScen("LessUnstable"); ?::aMInsWliScen("Average"); ?::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Clear").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Cloudy").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("PC").
?::cldShadeOth("Cloudy"); ?::cldShadeOth("PC"); ?::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Clear").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("None").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Weak").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Strong").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("None").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Weak").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Strong").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("None").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Weak").
?::insInMt("None"); ?::insInMt("Weak"); ?::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Strong").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("DCVZFavor").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("StrongWest").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Westerly").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Other").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("DCVZFavor").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("StrongWest").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Westerly").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Other").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("DCVZFavor").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("StrongWest").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Westerly").
?::cldShadeConv("None"); ?::cldShadeConv("Some"); ?::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Other").
?::mountainFcst("XNIL"); ?::mountainFcst("SIG"); ?::mountainFcst("SVR") :- insInMt("None").
?::mountainFcst("XNIL"); ?::mountainFcst("SIG"); ?::mountainFcst("SVR") :- insInMt("Weak").
?::mountainFcst("XNIL"); ?::mountainFcst("SIG"); ?::mountainFcst("SVR") :- insInMt("Strong").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("DCVZFavor").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("StrongWest").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Westerly").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Other").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("DCVZFavor").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("StrongWest").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Westerly").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Other").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("DCVZFavor").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("StrongWest").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Westerly").
?::outflowFrMt("None"); ?::outflowFrMt("Weak"); ?::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Other").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Strong").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("None").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Weak").
?::boundaries("None"); ?::boundaries("Weak"); ?::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Strong").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
?::compPlFcst("IncCapDecIns"); ?::compPlFcst("LittleChange"); ?::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
?::capChange("Decreasing"); ?::capChange("LittleChange"); ?::capChange("Increasing") :- compPlFcst("IncCapDecIns").
?::capChange("Decreasing"); ?::capChange("LittleChange"); ?::capChange("Increasing") :- compPlFcst("LittleChange").
?::capChange("Decreasing"); ?::capChange("LittleChange"); ?::capChange("Increasing") :- compPlFcst("DecCapIncIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("IncCapDecIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("LittleChange").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("DecCapIncIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("IncCapDecIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("LittleChange").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("DecCapIncIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("IncCapDecIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("LittleChange").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("DecCapIncIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("IncCapDecIns").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("LittleChange").
?::insChange("Decreasing"); ?::insChange("LittleChange"); ?::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("DecCapIncIns").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Decreasing").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("LittleChange").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Increasing").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Decreasing").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("LittleChange").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Increasing").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Decreasing").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("LittleChange").
?::insSclInScen("LessUnstable"); ?::insSclInScen("Average"); ?::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Increasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Decreasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("LittleChange").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Increasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Decreasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("LittleChange").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Increasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Decreasing").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("LittleChange").
?::capInScen("LessThanAve"); ?::capInScen("Average"); ?::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Increasing").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
?::plainsFcst("XNIL"); ?::plainsFcst("SIG"); ?::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("XNIL").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SIG").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SVR").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("XNIL").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SIG").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SVR").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("XNIL").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SIG").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SVR").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("XNIL").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SIG").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SVR").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("XNIL").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SIG").
?::n34StarFcst("XNIL"); ?::n34StarFcst("SIG"); ?::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SVR").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("XNIL").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SIG").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SVR").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("XNIL").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SIG").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SVR").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("XNIL").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SIG").
?::r5Fcst("XNIL"); ?::r5Fcst("SIG"); ?::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SVR").

query(r5Fcst("XNIL")).
