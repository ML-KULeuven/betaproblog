%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:59:10.343014

0.3::wndHodograph("DCVZFavor"); 0.25::wndHodograph("StrongWest"); 0.25::wndHodograph("Westerly"); 0.2::wndHodograph("Other").
0.3::aMDewptCalPl("Instability"); 0.25::aMDewptCalPl("Neutral"); 0.45::aMDewptCalPl("Stability").
0.12::loLevMoistAd("StrongPos"); 0.28::loLevMoistAd("WeakPos"); 0.3::loLevMoistAd("Neutral"); 0.3::loLevMoistAd("Negative").
0.15::raoContMoist("VeryWet"); 0.2::raoContMoist("Wet"); 0.4::raoContMoist("Neutral"); 0.25::raoContMoist("Dry").
0.4::latestCIN("None"); 0.4::latestCIN("PartInhibit"); 0.15::latestCIN("Stifling"); 0.05::latestCIN("TotalInhibit").
0.1::vISCloudCov("Cloudy"); 0.5::vISCloudCov("PC"); 0.4::vISCloudCov("Clear").
0.15::qGVertMotion("StrongUp"); 0.15::qGVertMotion("WeakUp"); 0.5::qGVertMotion("Neutral"); 0.2::qGVertMotion("Down").
0.254098::date("May15_Jun14"); 0.131148::date("Jun15_Jul1"); 0.106557::date("Jul2_Jul15"); 0.213115::date("Jul16_Aug10"); 0.07377::date("Aug11_Aug20"); 0.221312::date("Aug20_Sep15").
0.15::iRCloudCover("Cloudy"); 0.45::iRCloudCover("PC"); 0.4::iRCloudCover("Clear").
0.15::morningCIN("None"); 0.57::morningCIN("PartInhibit"); 0.2::morningCIN("Stifling"); 0.08::morningCIN("TotalInhibit").
0.5::morningBound("None"); 0.35::morningBound("Weak"); 0.15::morningBound("Strong").
0.25::n0_7muVerMo("StrongUp"); 0.25::n0_7muVerMo("WeakUp"); 0.25::n0_7muVerMo("Neutral"); 0.25::n0_7muVerMo("Down").
0.12::lLIW("Unfavorable"); 0.32::lLIW("Weak"); 0.38::lLIW("Moderate"); 0.18::lLIW("Strong").
0.333333::aMInstabMt("None"); 0.333333::aMInstabMt("Weak"); 0.333334::aMInstabMt("Strong").
0.15::satContMoist("VeryWet"); 0.2::satContMoist("Wet"); 0.4::satContMoist("Neutral"); 0.25::satContMoist("Dry").
0.15::subjVertMo("StronUp"); 0.15::subjVertMo("WeakUp"); 0.5::subjVertMo("Neutral"); 0.2::subjVertMo("Down").
0.1::lIfr12ZDENSd("LIGt0"); 0.52::lIfr12ZDENSd("N1GtLIGt_4"); 0.3::lIfr12ZDENSd("N5GtLIGt_8"); 0.08::lIfr12ZDENSd("LILt_8").
0.7::curPropConv("None"); 0.28::curPropConv("Slight"); 0.02::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("None"), lLIW("Unfavorable").
0.1::curPropConv("None"); 0.5::curPropConv("Slight"); 0.3::curPropConv("Moderate"); 0.1::curPropConv("Strong") :- latestCIN("None"), lLIW("Weak").
0.01::curPropConv("None"); 0.14::curPropConv("Slight"); 0.35::curPropConv("Moderate"); 0.5::curPropConv("Strong") :- latestCIN("None"), lLIW("Moderate").
0.0::curPropConv("None"); 0.02::curPropConv("Slight"); 0.18::curPropConv("Moderate"); 0.8::curPropConv("Strong") :- latestCIN("None"), lLIW("Strong").
0.9::curPropConv("None"); 0.09::curPropConv("Slight"); 0.01::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Unfavorable").
0.65::curPropConv("None"); 0.25::curPropConv("Slight"); 0.09::curPropConv("Moderate"); 0.01::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Weak").
0.25::curPropConv("None"); 0.35::curPropConv("Slight"); 0.3::curPropConv("Moderate"); 0.1::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Moderate").
0.01::curPropConv("None"); 0.15::curPropConv("Slight"); 0.33::curPropConv("Moderate"); 0.51::curPropConv("Strong") :- latestCIN("PartInhibit"), lLIW("Strong").
0.95::curPropConv("None"); 0.05::curPropConv("Slight"); 0.0::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Unfavorable").
0.75::curPropConv("None"); 0.23::curPropConv("Slight"); 0.02::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Weak").
0.4::curPropConv("None"); 0.4::curPropConv("Slight"); 0.18::curPropConv("Moderate"); 0.02::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Moderate").
0.2::curPropConv("None"); 0.3::curPropConv("Slight"); 0.35::curPropConv("Moderate"); 0.15::curPropConv("Strong") :- latestCIN("Stifling"), lLIW("Strong").
1.0::curPropConv("None"); 0.0::curPropConv("Slight"); 0.0::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Unfavorable").
0.95::curPropConv("None"); 0.05::curPropConv("Slight"); 0.0::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Weak").
0.75::curPropConv("None"); 0.2::curPropConv("Slight"); 0.05::curPropConv("Moderate"); 0.0::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Moderate").
0.5::curPropConv("None"); 0.35::curPropConv("Slight"); 0.1::curPropConv("Moderate"); 0.05::curPropConv("Strong") :- latestCIN("TotalInhibit"), lLIW("Strong").
0.95::combClouds("Cloudy"); 0.04::combClouds("PC"); 0.01::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Cloudy").
0.85::combClouds("Cloudy"); 0.13::combClouds("PC"); 0.02::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("PC").
0.8::combClouds("Cloudy"); 0.1::combClouds("PC"); 0.1::combClouds("Clear") :- vISCloudCov("Cloudy"), iRCloudCover("Clear").
0.45::combClouds("Cloudy"); 0.52::combClouds("PC"); 0.03::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Cloudy").
0.1::combClouds("Cloudy"); 0.8::combClouds("PC"); 0.1::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("PC").
0.05::combClouds("Cloudy"); 0.45::combClouds("PC"); 0.5::combClouds("Clear") :- vISCloudCov("PC"), iRCloudCover("Clear").
0.1::combClouds("Cloudy"); 0.4::combClouds("PC"); 0.5::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Cloudy").
0.02::combClouds("Cloudy"); 0.28::combClouds("PC"); 0.7::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("PC").
0.0::combClouds("Cloudy"); 0.02::combClouds("PC"); 0.98::combClouds("Clear") :- vISCloudCov("Clear"), iRCloudCover("Clear").
0.9::combMoisture("VeryWet"); 0.1::combMoisture("Wet"); 0.0::combMoisture("Neutral"); 0.0::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("VeryWet").
0.6::combMoisture("VeryWet"); 0.35::combMoisture("Wet"); 0.05::combMoisture("Neutral"); 0.0::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Wet").
0.3::combMoisture("VeryWet"); 0.5::combMoisture("Wet"); 0.2::combMoisture("Neutral"); 0.0::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Neutral").
0.25::combMoisture("VeryWet"); 0.35::combMoisture("Wet"); 0.25::combMoisture("Neutral"); 0.15::combMoisture("Dry") :- satContMoist("VeryWet"), raoContMoist("Dry").
0.55::combMoisture("VeryWet"); 0.4::combMoisture("Wet"); 0.05::combMoisture("Neutral"); 0.0::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("VeryWet").
0.15::combMoisture("VeryWet"); 0.6::combMoisture("Wet"); 0.2::combMoisture("Neutral"); 0.05::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Wet").
0.05::combMoisture("VeryWet"); 0.4::combMoisture("Wet"); 0.45::combMoisture("Neutral"); 0.1::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Neutral").
0.1::combMoisture("VeryWet"); 0.3::combMoisture("Wet"); 0.3::combMoisture("Neutral"); 0.3::combMoisture("Dry") :- satContMoist("Wet"), raoContMoist("Dry").
0.25::combMoisture("VeryWet"); 0.3::combMoisture("Wet"); 0.35::combMoisture("Neutral"); 0.1::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("VeryWet").
0.1::combMoisture("VeryWet"); 0.35::combMoisture("Wet"); 0.5::combMoisture("Neutral"); 0.05::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Wet").
0.0::combMoisture("VeryWet"); 0.15::combMoisture("Wet"); 0.7::combMoisture("Neutral"); 0.15::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Neutral").
0.0::combMoisture("VeryWet"); 0.1::combMoisture("Wet"); 0.4::combMoisture("Neutral"); 0.5::combMoisture("Dry") :- satContMoist("Neutral"), raoContMoist("Dry").
0.25::combMoisture("VeryWet"); 0.25::combMoisture("Wet"); 0.25::combMoisture("Neutral"); 0.25::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("VeryWet").
0.25::combMoisture("VeryWet"); 0.25::combMoisture("Wet"); 0.25::combMoisture("Neutral"); 0.25::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Wet").
0.25::combMoisture("VeryWet"); 0.25::combMoisture("Wet"); 0.25::combMoisture("Neutral"); 0.25::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Neutral").
0.25::combMoisture("VeryWet"); 0.25::combMoisture("Wet"); 0.25::combMoisture("Neutral"); 0.25::combMoisture("Dry") :- satContMoist("Dry"), raoContMoist("Dry").
0.1::scenario("A"); 0.16::scenario("B"); 0.1::scenario("C"); 0.08::scenario("D"); 0.08::scenario("E"); 0.01::scenario("F"); 0.08::scenario("G"); 0.1::scenario("H"); 0.09::scenario("I"); 0.03::scenario("J"); 0.17::scenario("K") :- date("May15_Jun14").
0.05::scenario("A"); 0.16::scenario("B"); 0.09::scenario("C"); 0.09::scenario("D"); 0.12::scenario("E"); 0.02::scenario("F"); 0.13::scenario("G"); 0.06::scenario("H"); 0.07::scenario("I"); 0.11::scenario("J"); 0.1::scenario("K") :- date("Jun15_Jul1").
0.04::scenario("A"); 0.13::scenario("B"); 0.1::scenario("C"); 0.08::scenario("D"); 0.15::scenario("E"); 0.03::scenario("F"); 0.14::scenario("G"); 0.04::scenario("H"); 0.06::scenario("I"); 0.15::scenario("J"); 0.08::scenario("K") :- date("Jul2_Jul15").
0.04::scenario("A"); 0.13::scenario("B"); 0.09::scenario("C"); 0.07::scenario("D"); 0.2::scenario("E"); 0.08::scenario("F"); 0.06::scenario("G"); 0.05::scenario("H"); 0.07::scenario("I"); 0.13::scenario("J"); 0.08::scenario("K") :- date("Jul16_Aug10").
0.04::scenario("A"); 0.11::scenario("B"); 0.1::scenario("C"); 0.07::scenario("D"); 0.17::scenario("E"); 0.05::scenario("F"); 0.1::scenario("G"); 0.05::scenario("H"); 0.07::scenario("I"); 0.14::scenario("J"); 0.1::scenario("K") :- date("Aug11_Aug20").
0.05::scenario("A"); 0.11::scenario("B"); 0.1::scenario("C"); 0.08::scenario("D"); 0.11::scenario("E"); 0.02::scenario("F"); 0.11::scenario("G"); 0.06::scenario("H"); 0.08::scenario("I"); 0.11::scenario("J"); 0.17::scenario("K") :- date("Aug20_Sep15").
1.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
0.9::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
0.7::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.1::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
0.2::combVerMo("StrongUp"); 0.5::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("StronUp"), qGVertMotion("Down").
0.9::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
0.7::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
0.7::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.1::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
0.2::combVerMo("StrongUp"); 0.6::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Neutral"), qGVertMotion("Down").
0.2::combVerMo("StrongUp"); 0.5::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.6::combVerMo("Down") :- n0_7muVerMo("StrongUp"), subjVertMo("Down"), qGVertMotion("Down").
0.9::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
0.7::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("StronUp"), qGVertMotion("Down").
0.7::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 1.0::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("WeakUp"), qGVertMotion("Down").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Neutral"), qGVertMotion("Down").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("WeakUp"), subjVertMo("Down"), qGVertMotion("Down").
0.7::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.1::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
0.2::combVerMo("StrongUp"); 0.6::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("StronUp"), qGVertMotion("Down").
0.15::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.15::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.7::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("WeakUp"), qGVertMotion("Down").
0.2::combVerMo("StrongUp"); 0.6::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.3::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 1.0::combVerMo("Neutral"); 0.0::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.3::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Neutral"), qGVertMotion("Down").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.3::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("Neutral"), subjVertMo("Down"), qGVertMotion("Down").
0.2::combVerMo("StrongUp"); 0.5::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("StrongUp").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("WeakUp").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Neutral").
0.1::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.6::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("StronUp"), qGVertMotion("Down").
0.1::combVerMo("StrongUp"); 0.35::combVerMo("WeakUp"); 0.45::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("WeakUp"), qGVertMotion("Down").
0.1::combVerMo("StrongUp"); 0.2::combVerMo("WeakUp"); 0.6::combVerMo("Neutral"); 0.1::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.15::combVerMo("WeakUp"); 0.5::combVerMo("Neutral"); 0.35::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.7::combVerMo("Neutral"); 0.3::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Neutral"), qGVertMotion("Down").
0.1::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.6::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("StrongUp").
0.0::combVerMo("StrongUp"); 0.1::combVerMo("WeakUp"); 0.2::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("WeakUp").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.3::combVerMo("Neutral"); 0.7::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Neutral").
0.0::combVerMo("StrongUp"); 0.0::combVerMo("WeakUp"); 0.0::combVerMo("Neutral"); 1.0::combVerMo("Down") :- n0_7muVerMo("Down"), subjVertMo("Down"), qGVertMotion("Down").
0.0::windAloft("LV"); 0.95::windAloft("SWQuad"); 0.01::windAloft("NWQuad"); 0.04::windAloft("AllElse") :- scenario("A").
0.2::windAloft("LV"); 0.3::windAloft("SWQuad"); 0.2::windAloft("NWQuad"); 0.3::windAloft("AllElse") :- scenario("B").
0.05::windAloft("LV"); 0.09::windAloft("SWQuad"); 0.59::windAloft("NWQuad"); 0.27::windAloft("AllElse") :- scenario("C").
0.03::windAloft("LV"); 0.32::windAloft("SWQuad"); 0.42::windAloft("NWQuad"); 0.23::windAloft("AllElse") :- scenario("D").
0.07::windAloft("LV"); 0.66::windAloft("SWQuad"); 0.02::windAloft("NWQuad"); 0.25::windAloft("AllElse") :- scenario("E").
0.5::windAloft("LV"); 0.0::windAloft("SWQuad"); 0.0::windAloft("NWQuad"); 0.5::windAloft("AllElse") :- scenario("F").
0.25::windAloft("LV"); 0.3::windAloft("SWQuad"); 0.25::windAloft("NWQuad"); 0.2::windAloft("AllElse") :- scenario("G").
0.2::windAloft("LV"); 0.14::windAloft("SWQuad"); 0.43::windAloft("NWQuad"); 0.23::windAloft("AllElse") :- scenario("H").
0.2::windAloft("LV"); 0.41::windAloft("SWQuad"); 0.1::windAloft("NWQuad"); 0.29::windAloft("AllElse") :- scenario("I").
0.96::windAloft("LV"); 0.0::windAloft("SWQuad"); 0.0::windAloft("NWQuad"); 0.04::windAloft("AllElse") :- scenario("J").
0.03::windAloft("LV"); 0.08::windAloft("SWQuad"); 0.33::windAloft("NWQuad"); 0.56::windAloft("AllElse") :- scenario("K").
0.04::dewpoints("LowEvrywhere"); 0.05::dewpoints("LowAtStation"); 0.15::dewpoints("LowSHighN"); 0.05::dewpoints("LowNHighS"); 0.19::dewpoints("LowMtsHighPl"); 0.3::dewpoints("HighEvrywher"); 0.22::dewpoints("Other") :- scenario("A").
0.05::dewpoints("LowEvrywhere"); 0.07::dewpoints("LowAtStation"); 0.15::dewpoints("LowSHighN"); 0.1::dewpoints("LowNHighS"); 0.3::dewpoints("LowMtsHighPl"); 0.27::dewpoints("HighEvrywher"); 0.06::dewpoints("Other") :- scenario("B").
0.4::dewpoints("LowEvrywhere"); 0.25::dewpoints("LowAtStation"); 0.0::dewpoints("LowSHighN"); 0.15::dewpoints("LowNHighS"); 0.05::dewpoints("LowMtsHighPl"); 0.02::dewpoints("HighEvrywher"); 0.13::dewpoints("Other") :- scenario("C").
0.13::dewpoints("LowEvrywhere"); 0.22::dewpoints("LowAtStation"); 0.18::dewpoints("LowSHighN"); 0.07::dewpoints("LowNHighS"); 0.34::dewpoints("LowMtsHighPl"); 0.03::dewpoints("HighEvrywher"); 0.03::dewpoints("Other") :- scenario("D").
0.15::dewpoints("LowEvrywhere"); 0.2::dewpoints("LowAtStation"); 0.2::dewpoints("LowSHighN"); 0.18::dewpoints("LowNHighS"); 0.11::dewpoints("LowMtsHighPl"); 0.11::dewpoints("HighEvrywher"); 0.05::dewpoints("Other") :- scenario("E").
0.0::dewpoints("LowEvrywhere"); 0.0::dewpoints("LowAtStation"); 0.0::dewpoints("LowSHighN"); 0.0::dewpoints("LowNHighS"); 0.0::dewpoints("LowMtsHighPl"); 0.98::dewpoints("HighEvrywher"); 0.02::dewpoints("Other") :- scenario("F").
0.5::dewpoints("LowEvrywhere"); 0.27::dewpoints("LowAtStation"); 0.15::dewpoints("LowSHighN"); 0.02::dewpoints("LowNHighS"); 0.02::dewpoints("LowMtsHighPl"); 0.0::dewpoints("HighEvrywher"); 0.04::dewpoints("Other") :- scenario("G").
0.0::dewpoints("LowEvrywhere"); 0.02::dewpoints("LowAtStation"); 0.1::dewpoints("LowSHighN"); 0.05::dewpoints("LowNHighS"); 0.5::dewpoints("LowMtsHighPl"); 0.2::dewpoints("HighEvrywher"); 0.13::dewpoints("Other") :- scenario("H").
0.0::dewpoints("LowEvrywhere"); 0.02::dewpoints("LowAtStation"); 0.7::dewpoints("LowSHighN"); 0.0::dewpoints("LowNHighS"); 0.2::dewpoints("LowMtsHighPl"); 0.04::dewpoints("HighEvrywher"); 0.04::dewpoints("Other") :- scenario("I").
0.1::dewpoints("LowEvrywhere"); 0.45::dewpoints("LowAtStation"); 0.1::dewpoints("LowSHighN"); 0.05::dewpoints("LowNHighS"); 0.26::dewpoints("LowMtsHighPl"); 0.02::dewpoints("HighEvrywher"); 0.02::dewpoints("Other") :- scenario("J").
0.1::dewpoints("LowEvrywhere"); 0.1::dewpoints("LowAtStation"); 0.1::dewpoints("LowSHighN"); 0.2::dewpoints("LowNHighS"); 0.05::dewpoints("LowMtsHighPl"); 0.1::dewpoints("HighEvrywher"); 0.35::dewpoints("Other") :- scenario("K").
0.25::mvmtFeatures("StrongFront"); 0.55::mvmtFeatures("MarkedUpper"); 0.2::mvmtFeatures("OtherRapid"); 0.0::mvmtFeatures("NoMajor") :- scenario("A").
0.05::mvmtFeatures("StrongFront"); 0.1::mvmtFeatures("MarkedUpper"); 0.1::mvmtFeatures("OtherRapid"); 0.75::mvmtFeatures("NoMajor") :- scenario("B").
0.1::mvmtFeatures("StrongFront"); 0.3::mvmtFeatures("MarkedUpper"); 0.3::mvmtFeatures("OtherRapid"); 0.3::mvmtFeatures("NoMajor") :- scenario("C").
0.18::mvmtFeatures("StrongFront"); 0.38::mvmtFeatures("MarkedUpper"); 0.34::mvmtFeatures("OtherRapid"); 0.1::mvmtFeatures("NoMajor") :- scenario("D").
0.02::mvmtFeatures("StrongFront"); 0.02::mvmtFeatures("MarkedUpper"); 0.26::mvmtFeatures("OtherRapid"); 0.7::mvmtFeatures("NoMajor") :- scenario("E").
0.05::mvmtFeatures("StrongFront"); 0.07::mvmtFeatures("MarkedUpper"); 0.05::mvmtFeatures("OtherRapid"); 0.83::mvmtFeatures("NoMajor") :- scenario("F").
0.1::mvmtFeatures("StrongFront"); 0.25::mvmtFeatures("MarkedUpper"); 0.15::mvmtFeatures("OtherRapid"); 0.5::mvmtFeatures("NoMajor") :- scenario("G").
0.0::mvmtFeatures("StrongFront"); 0.6::mvmtFeatures("MarkedUpper"); 0.1::mvmtFeatures("OtherRapid"); 0.3::mvmtFeatures("NoMajor") :- scenario("H").
0.2::mvmtFeatures("StrongFront"); 0.1::mvmtFeatures("MarkedUpper"); 0.2::mvmtFeatures("OtherRapid"); 0.5::mvmtFeatures("NoMajor") :- scenario("I").
0.04::mvmtFeatures("StrongFront"); 0.0::mvmtFeatures("MarkedUpper"); 0.04::mvmtFeatures("OtherRapid"); 0.92::mvmtFeatures("NoMajor") :- scenario("J").
0.5::mvmtFeatures("StrongFront"); 0.35::mvmtFeatures("MarkedUpper"); 0.09::mvmtFeatures("OtherRapid"); 0.06::mvmtFeatures("NoMajor") :- scenario("K").
0.35::synForcng("SigNegative"); 0.25::synForcng("NegToPos"); 0.0::synForcng("SigPositive"); 0.35::synForcng("PosToNeg"); 0.05::synForcng("LittleChange") :- scenario("A").
0.06::synForcng("SigNegative"); 0.1::synForcng("NegToPos"); 0.06::synForcng("SigPositive"); 0.3::synForcng("PosToNeg"); 0.48::synForcng("LittleChange") :- scenario("B").
0.1::synForcng("SigNegative"); 0.27::synForcng("NegToPos"); 0.4::synForcng("SigPositive"); 0.08::synForcng("PosToNeg"); 0.15::synForcng("LittleChange") :- scenario("C").
0.35::synForcng("SigNegative"); 0.2::synForcng("NegToPos"); 0.1::synForcng("SigPositive"); 0.25::synForcng("PosToNeg"); 0.1::synForcng("LittleChange") :- scenario("D").
0.15::synForcng("SigNegative"); 0.15::synForcng("NegToPos"); 0.1::synForcng("SigPositive"); 0.15::synForcng("PosToNeg"); 0.45::synForcng("LittleChange") :- scenario("E").
0.15::synForcng("SigNegative"); 0.1::synForcng("NegToPos"); 0.05::synForcng("SigPositive"); 0.15::synForcng("PosToNeg"); 0.55::synForcng("LittleChange") :- scenario("F").
0.15::synForcng("SigNegative"); 0.1::synForcng("NegToPos"); 0.1::synForcng("SigPositive"); 0.25::synForcng("PosToNeg"); 0.4::synForcng("LittleChange") :- scenario("G").
0.25::synForcng("SigNegative"); 0.25::synForcng("NegToPos"); 0.25::synForcng("SigPositive"); 0.15::synForcng("PosToNeg"); 0.1::synForcng("LittleChange") :- scenario("H").
0.25::synForcng("SigNegative"); 0.2::synForcng("NegToPos"); 0.15::synForcng("SigPositive"); 0.2::synForcng("PosToNeg"); 0.2::synForcng("LittleChange") :- scenario("I").
0.01::synForcng("SigNegative"); 0.05::synForcng("NegToPos"); 0.01::synForcng("SigPositive"); 0.05::synForcng("PosToNeg"); 0.88::synForcng("LittleChange") :- scenario("J").
0.2::synForcng("SigNegative"); 0.2::synForcng("NegToPos"); 0.35::synForcng("SigPositive"); 0.15::synForcng("PosToNeg"); 0.1::synForcng("LittleChange") :- scenario("K").
0.65::sfcWndShfDis("DenvCyclone"); 0.05::sfcWndShfDis("E_W_N"); 0.1::sfcWndShfDis("E_W_S"); 0.08::sfcWndShfDis("MovingFtorOt"); 0.04::sfcWndShfDis("DryLine"); 0.07::sfcWndShfDis("None"); 0.01::sfcWndShfDis("Other") :- scenario("A").
0.65::sfcWndShfDis("DenvCyclone"); 0.05::sfcWndShfDis("E_W_N"); 0.1::sfcWndShfDis("E_W_S"); 0.1::sfcWndShfDis("MovingFtorOt"); 0.02::sfcWndShfDis("DryLine"); 0.07::sfcWndShfDis("None"); 0.01::sfcWndShfDis("Other") :- scenario("B").
0.0::sfcWndShfDis("DenvCyclone"); 0.65::sfcWndShfDis("E_W_N"); 0.2::sfcWndShfDis("E_W_S"); 0.02::sfcWndShfDis("MovingFtorOt"); 0.06::sfcWndShfDis("DryLine"); 0.05::sfcWndShfDis("None"); 0.02::sfcWndShfDis("Other") :- scenario("C").
0.12::sfcWndShfDis("DenvCyclone"); 0.02::sfcWndShfDis("E_W_N"); 0.02::sfcWndShfDis("E_W_S"); 0.02::sfcWndShfDis("MovingFtorOt"); 0.45::sfcWndShfDis("DryLine"); 0.27::sfcWndShfDis("None"); 0.1::sfcWndShfDis("Other") :- scenario("D").
0.06::sfcWndShfDis("DenvCyclone"); 0.14::sfcWndShfDis("E_W_N"); 0.04::sfcWndShfDis("E_W_S"); 0.04::sfcWndShfDis("MovingFtorOt"); 0.25::sfcWndShfDis("DryLine"); 0.4::sfcWndShfDis("None"); 0.07::sfcWndShfDis("Other") :- scenario("E").
0.1::sfcWndShfDis("DenvCyclone"); 0.1::sfcWndShfDis("E_W_N"); 0.1::sfcWndShfDis("E_W_S"); 0.02::sfcWndShfDis("MovingFtorOt"); 0.0::sfcWndShfDis("DryLine"); 0.56::sfcWndShfDis("None"); 0.12::sfcWndShfDis("Other") :- scenario("F").
0.02::sfcWndShfDis("DenvCyclone"); 0.05::sfcWndShfDis("E_W_N"); 0.05::sfcWndShfDis("E_W_S"); 0.0::sfcWndShfDis("MovingFtorOt"); 0.35::sfcWndShfDis("DryLine"); 0.33::sfcWndShfDis("None"); 0.2::sfcWndShfDis("Other") :- scenario("G").
0.01::sfcWndShfDis("DenvCyclone"); 0.1::sfcWndShfDis("E_W_N"); 0.15::sfcWndShfDis("E_W_S"); 0.4::sfcWndShfDis("MovingFtorOt"); 0.0::sfcWndShfDis("DryLine"); 0.23::sfcWndShfDis("None"); 0.11::sfcWndShfDis("Other") :- scenario("H").
0.02::sfcWndShfDis("DenvCyclone"); 0.1::sfcWndShfDis("E_W_N"); 0.5::sfcWndShfDis("E_W_S"); 0.3::sfcWndShfDis("MovingFtorOt"); 0.01::sfcWndShfDis("DryLine"); 0.02::sfcWndShfDis("None"); 0.05::sfcWndShfDis("Other") :- scenario("I").
0.06::sfcWndShfDis("DenvCyclone"); 0.08::sfcWndShfDis("E_W_N"); 0.04::sfcWndShfDis("E_W_S"); 0.02::sfcWndShfDis("MovingFtorOt"); 0.6::sfcWndShfDis("DryLine"); 0.14::sfcWndShfDis("None"); 0.06::sfcWndShfDis("Other") :- scenario("J").
0.05::sfcWndShfDis("DenvCyclone"); 0.13::sfcWndShfDis("E_W_N"); 0.05::sfcWndShfDis("E_W_S"); 0.39::sfcWndShfDis("MovingFtorOt"); 0.13::sfcWndShfDis("DryLine"); 0.15::sfcWndShfDis("None"); 0.1::sfcWndShfDis("Other") :- scenario("K").
1.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("A").
0.0::scenRel3_4("ACEFK"); 1.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("B").
1.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("C").
0.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 1.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("D").
1.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("E").
1.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("F").
0.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 1.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("G").
0.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 1.0::scenRel3_4("HI") :- scenario("H").
0.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 1.0::scenRel3_4("HI") :- scenario("I").
0.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 1.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("J").
1.0::scenRel3_4("ACEFK"); 0.0::scenRel3_4("B"); 0.0::scenRel3_4("D"); 0.0::scenRel3_4("GJ"); 0.0::scenRel3_4("HI") :- scenario("K").
1.0::scenRelAMCIN("AB"); 0.0::scenRelAMCIN("CThruK") :- scenario("A").
1.0::scenRelAMCIN("AB"); 0.0::scenRelAMCIN("CThruK") :- scenario("B").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("C").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("D").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("E").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("F").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("G").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("H").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("I").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("J").
0.0::scenRelAMCIN("AB"); 1.0::scenRelAMCIN("CThruK") :- scenario("K").
0.25::midLLapse("CloseToDryAd"); 0.55::midLLapse("Steep"); 0.2::midLLapse("ModerateOrLe") :- scenario("A").
0.25::midLLapse("CloseToDryAd"); 0.5::midLLapse("Steep"); 0.25::midLLapse("ModerateOrLe") :- scenario("B").
0.4::midLLapse("CloseToDryAd"); 0.38::midLLapse("Steep"); 0.22::midLLapse("ModerateOrLe") :- scenario("C").
0.43::midLLapse("CloseToDryAd"); 0.37::midLLapse("Steep"); 0.2::midLLapse("ModerateOrLe") :- scenario("D").
0.02::midLLapse("CloseToDryAd"); 0.38::midLLapse("Steep"); 0.6::midLLapse("ModerateOrLe") :- scenario("E").
0.0::midLLapse("CloseToDryAd"); 0.1::midLLapse("Steep"); 0.9::midLLapse("ModerateOrLe") :- scenario("F").
0.84::midLLapse("CloseToDryAd"); 0.16::midLLapse("Steep"); 0.0::midLLapse("ModerateOrLe") :- scenario("G").
0.25::midLLapse("CloseToDryAd"); 0.31::midLLapse("Steep"); 0.44::midLLapse("ModerateOrLe") :- scenario("H").
0.41::midLLapse("CloseToDryAd"); 0.29::midLLapse("Steep"); 0.3::midLLapse("ModerateOrLe") :- scenario("I").
0.23::midLLapse("CloseToDryAd"); 0.42::midLLapse("Steep"); 0.35::midLLapse("ModerateOrLe") :- scenario("J").
0.16::midLLapse("CloseToDryAd"); 0.28::midLLapse("Steep"); 0.56::midLLapse("ModerateOrLe") :- scenario("K").
1.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("A").
1.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("B").
0.0::scenRelAMIns("ABI"); 1.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("C").
0.0::scenRelAMIns("ABI"); 1.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("D").
0.0::scenRelAMIns("ABI"); 1.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("E").
0.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 1.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("F").
0.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 1.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("G").
0.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 1.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("H").
1.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("I").
0.0::scenRelAMIns("ABI"); 1.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 0.0::scenRelAMIns("K") :- scenario("J").
0.0::scenRelAMIns("ABI"); 0.0::scenRelAMIns("CDEJ"); 0.0::scenRelAMIns("F"); 0.0::scenRelAMIns("G"); 0.0::scenRelAMIns("H"); 1.0::scenRelAMIns("K") :- scenario("K").
0.13::tempDis("QStationary"); 0.15::tempDis("Moving"); 0.1::tempDis("None"); 0.62::tempDis("Other") :- scenario("A").
0.15::tempDis("QStationary"); 0.15::tempDis("Moving"); 0.25::tempDis("None"); 0.45::tempDis("Other") :- scenario("B").
0.12::tempDis("QStationary"); 0.1::tempDis("Moving"); 0.35::tempDis("None"); 0.43::tempDis("Other") :- scenario("C").
0.1::tempDis("QStationary"); 0.15::tempDis("Moving"); 0.4::tempDis("None"); 0.35::tempDis("Other") :- scenario("D").
0.04::tempDis("QStationary"); 0.04::tempDis("Moving"); 0.82::tempDis("None"); 0.1::tempDis("Other") :- scenario("E").
0.05::tempDis("QStationary"); 0.12::tempDis("Moving"); 0.75::tempDis("None"); 0.08::tempDis("Other") :- scenario("F").
0.03::tempDis("QStationary"); 0.03::tempDis("Moving"); 0.84::tempDis("None"); 0.1::tempDis("Other") :- scenario("G").
0.05::tempDis("QStationary"); 0.4::tempDis("Moving"); 0.5::tempDis("None"); 0.05::tempDis("Other") :- scenario("H").
0.8::tempDis("QStationary"); 0.19::tempDis("Moving"); 0.0::tempDis("None"); 0.01::tempDis("Other") :- scenario("I").
0.1::tempDis("QStationary"); 0.05::tempDis("Moving"); 0.4::tempDis("None"); 0.45::tempDis("Other") :- scenario("J").
0.2::tempDis("QStationary"); 0.3::tempDis("Moving"); 0.3::tempDis("None"); 0.2::tempDis("Other") :- scenario("K").
0.33::meanRH("VeryMoist"); 0.5::meanRH("Average"); 0.17::meanRH("Dry") :- scenario("A").
0.4::meanRH("VeryMoist"); 0.4::meanRH("Average"); 0.2::meanRH("Dry") :- scenario("B").
0.05::meanRH("VeryMoist"); 0.45::meanRH("Average"); 0.5::meanRH("Dry") :- scenario("C").
0.1::meanRH("VeryMoist"); 0.5::meanRH("Average"); 0.4::meanRH("Dry") :- scenario("D").
0.05::meanRH("VeryMoist"); 0.65::meanRH("Average"); 0.3::meanRH("Dry") :- scenario("E").
1.0::meanRH("VeryMoist"); 0.0::meanRH("Average"); 0.0::meanRH("Dry") :- scenario("F").
0.0::meanRH("VeryMoist"); 0.07::meanRH("Average"); 0.93::meanRH("Dry") :- scenario("G").
0.4::meanRH("VeryMoist"); 0.55::meanRH("Average"); 0.05::meanRH("Dry") :- scenario("H").
0.2::meanRH("VeryMoist"); 0.45::meanRH("Average"); 0.35::meanRH("Dry") :- scenario("I").
0.05::meanRH("VeryMoist"); 0.55::meanRH("Average"); 0.4::meanRH("Dry") :- scenario("J").
0.2::meanRH("VeryMoist"); 0.4::meanRH("Average"); 0.4::meanRH("Dry") :- scenario("K").
1.0::areaMeso_ALS("StrongUp"); 0.0::areaMeso_ALS("WeakUp"); 0.0::areaMeso_ALS("Neutral"); 0.0::areaMeso_ALS("Down") :- combVerMo("StrongUp").
0.0::areaMeso_ALS("StrongUp"); 1.0::areaMeso_ALS("WeakUp"); 0.0::areaMeso_ALS("Neutral"); 0.0::areaMeso_ALS("Down") :- combVerMo("WeakUp").
0.0::areaMeso_ALS("StrongUp"); 0.0::areaMeso_ALS("WeakUp"); 1.0::areaMeso_ALS("Neutral"); 0.0::areaMeso_ALS("Down") :- combVerMo("Neutral").
0.0::areaMeso_ALS("StrongUp"); 0.0::areaMeso_ALS("WeakUp"); 0.0::areaMeso_ALS("Neutral"); 1.0::areaMeso_ALS("Down") :- combVerMo("Down").
0.04::lowLLapse("CloseToDryAd"); 0.25::lowLLapse("Steep"); 0.35::lowLLapse("ModerateOrLe"); 0.36::lowLLapse("Stable") :- scenario("A").
0.07::lowLLapse("CloseToDryAd"); 0.31::lowLLapse("Steep"); 0.31::lowLLapse("ModerateOrLe"); 0.31::lowLLapse("Stable") :- scenario("B").
0.35::lowLLapse("CloseToDryAd"); 0.47::lowLLapse("Steep"); 0.14::lowLLapse("ModerateOrLe"); 0.04::lowLLapse("Stable") :- scenario("C").
0.4::lowLLapse("CloseToDryAd"); 0.4::lowLLapse("Steep"); 0.13::lowLLapse("ModerateOrLe"); 0.07::lowLLapse("Stable") :- scenario("D").
0.45::lowLLapse("CloseToDryAd"); 0.35::lowLLapse("Steep"); 0.15::lowLLapse("ModerateOrLe"); 0.05::lowLLapse("Stable") :- scenario("E").
0.01::lowLLapse("CloseToDryAd"); 0.35::lowLLapse("Steep"); 0.45::lowLLapse("ModerateOrLe"); 0.19::lowLLapse("Stable") :- scenario("F").
0.78::lowLLapse("CloseToDryAd"); 0.19::lowLLapse("Steep"); 0.03::lowLLapse("ModerateOrLe"); 0.0::lowLLapse("Stable") :- scenario("G").
0.0::lowLLapse("CloseToDryAd"); 0.02::lowLLapse("Steep"); 0.33::lowLLapse("ModerateOrLe"); 0.65::lowLLapse("Stable") :- scenario("H").
0.22::lowLLapse("CloseToDryAd"); 0.4::lowLLapse("Steep"); 0.3::lowLLapse("ModerateOrLe"); 0.08::lowLLapse("Stable") :- scenario("I").
0.13::lowLLapse("CloseToDryAd"); 0.4::lowLLapse("Steep"); 0.35::lowLLapse("ModerateOrLe"); 0.12::lowLLapse("Stable") :- scenario("J").
0.09::lowLLapse("CloseToDryAd"); 0.4::lowLLapse("Steep"); 0.33::lowLLapse("ModerateOrLe"); 0.18::lowLLapse("Stable") :- scenario("K").
1.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("A").
0.0::scnRelPlFcst("A"); 1.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("B").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 1.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("C").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 1.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("D").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 1.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("E").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 1.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("F").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 1.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("G").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 1.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("H").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 1.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("I").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 1.0::scnRelPlFcst("J"); 0.0::scnRelPlFcst("K") :- scenario("J").
0.0::scnRelPlFcst("A"); 0.0::scnRelPlFcst("B"); 0.0::scnRelPlFcst("C"); 0.0::scnRelPlFcst("D"); 0.0::scnRelPlFcst("E"); 0.0::scnRelPlFcst("F"); 0.0::scnRelPlFcst("G"); 0.0::scnRelPlFcst("H"); 0.0::scnRelPlFcst("I"); 0.0::scnRelPlFcst("J"); 1.0::scnRelPlFcst("K") :- scenario("K").
0.8::windFieldMt("Westerly"); 0.2::windFieldMt("LVorOther") :- scenario("A").
0.35::windFieldMt("Westerly"); 0.65::windFieldMt("LVorOther") :- scenario("B").
0.75::windFieldMt("Westerly"); 0.25::windFieldMt("LVorOther") :- scenario("C").
0.7::windFieldMt("Westerly"); 0.3::windFieldMt("LVorOther") :- scenario("D").
0.65::windFieldMt("Westerly"); 0.35::windFieldMt("LVorOther") :- scenario("E").
0.15::windFieldMt("Westerly"); 0.85::windFieldMt("LVorOther") :- scenario("F").
0.7::windFieldMt("Westerly"); 0.3::windFieldMt("LVorOther") :- scenario("G").
0.3::windFieldMt("Westerly"); 0.7::windFieldMt("LVorOther") :- scenario("H").
0.5::windFieldMt("Westerly"); 0.5::windFieldMt("LVorOther") :- scenario("I").
0.01::windFieldMt("Westerly"); 0.99::windFieldMt("LVorOther") :- scenario("J").
0.7::windFieldMt("Westerly"); 0.3::windFieldMt("LVorOther") :- scenario("K").
0.05::windFieldPln("LV"); 0.6::windFieldPln("DenvCyclone"); 0.02::windFieldPln("LongAnticyc"); 0.1::windFieldPln("E_NE"); 0.23::windFieldPln("SEQuad"); 0.0::windFieldPln("WidespdDnsl") :- scenario("A").
0.08::windFieldPln("LV"); 0.6::windFieldPln("DenvCyclone"); 0.02::windFieldPln("LongAnticyc"); 0.1::windFieldPln("E_NE"); 0.2::windFieldPln("SEQuad"); 0.0::windFieldPln("WidespdDnsl") :- scenario("B").
0.1::windFieldPln("LV"); 0.0::windFieldPln("DenvCyclone"); 0.75::windFieldPln("LongAnticyc"); 0.0::windFieldPln("E_NE"); 0.0::windFieldPln("SEQuad"); 0.15::windFieldPln("WidespdDnsl") :- scenario("C").
0.1::windFieldPln("LV"); 0.15::windFieldPln("DenvCyclone"); 0.2::windFieldPln("LongAnticyc"); 0.05::windFieldPln("E_NE"); 0.3::windFieldPln("SEQuad"); 0.2::windFieldPln("WidespdDnsl") :- scenario("D").
0.43::windFieldPln("LV"); 0.1::windFieldPln("DenvCyclone"); 0.15::windFieldPln("LongAnticyc"); 0.06::windFieldPln("E_NE"); 0.06::windFieldPln("SEQuad"); 0.2::windFieldPln("WidespdDnsl") :- scenario("E").
0.6::windFieldPln("LV"); 0.07::windFieldPln("DenvCyclone"); 0.01::windFieldPln("LongAnticyc"); 0.12::windFieldPln("E_NE"); 0.2::windFieldPln("SEQuad"); 0.0::windFieldPln("WidespdDnsl") :- scenario("F").
0.25::windFieldPln("LV"); 0.01::windFieldPln("DenvCyclone"); 0.3::windFieldPln("LongAnticyc"); 0.01::windFieldPln("E_NE"); 0.03::windFieldPln("SEQuad"); 0.4::windFieldPln("WidespdDnsl") :- scenario("G").
0.04::windFieldPln("LV"); 0.02::windFieldPln("DenvCyclone"); 0.04::windFieldPln("LongAnticyc"); 0.8::windFieldPln("E_NE"); 0.1::windFieldPln("SEQuad"); 0.0::windFieldPln("WidespdDnsl") :- scenario("H").
0.2::windFieldPln("LV"); 0.3::windFieldPln("DenvCyclone"); 0.05::windFieldPln("LongAnticyc"); 0.37::windFieldPln("E_NE"); 0.07::windFieldPln("SEQuad"); 0.01::windFieldPln("WidespdDnsl") :- scenario("I").
0.6::windFieldPln("LV"); 0.08::windFieldPln("DenvCyclone"); 0.07::windFieldPln("LongAnticyc"); 0.03::windFieldPln("E_NE"); 0.2::windFieldPln("SEQuad"); 0.02::windFieldPln("WidespdDnsl") :- scenario("J").
0.1::windFieldPln("LV"); 0.05::windFieldPln("DenvCyclone"); 0.1::windFieldPln("LongAnticyc"); 0.05::windFieldPln("E_NE"); 0.2::windFieldPln("SEQuad"); 0.5::windFieldPln("WidespdDnsl") :- scenario("K").
0.05::rHRatio("MoistMDryL"); 0.5::rHRatio("DryMMoistL"); 0.45::rHRatio("Other") :- scenario("A").
0.1::rHRatio("MoistMDryL"); 0.5::rHRatio("DryMMoistL"); 0.4::rHRatio("Other") :- scenario("B").
0.4::rHRatio("MoistMDryL"); 0.15::rHRatio("DryMMoistL"); 0.45::rHRatio("Other") :- scenario("C").
0.2::rHRatio("MoistMDryL"); 0.45::rHRatio("DryMMoistL"); 0.35::rHRatio("Other") :- scenario("D").
0.8::rHRatio("MoistMDryL"); 0.05::rHRatio("DryMMoistL"); 0.15::rHRatio("Other") :- scenario("E").
0.0::rHRatio("MoistMDryL"); 0.0::rHRatio("DryMMoistL"); 1.0::rHRatio("Other") :- scenario("F").
0.6::rHRatio("MoistMDryL"); 0.0::rHRatio("DryMMoistL"); 0.4::rHRatio("Other") :- scenario("G").
0.0::rHRatio("MoistMDryL"); 0.7::rHRatio("DryMMoistL"); 0.3::rHRatio("Other") :- scenario("H").
0.1::rHRatio("MoistMDryL"); 0.7::rHRatio("DryMMoistL"); 0.2::rHRatio("Other") :- scenario("I").
0.4::rHRatio("MoistMDryL"); 0.4::rHRatio("DryMMoistL"); 0.2::rHRatio("Other") :- scenario("J").
0.15::rHRatio("MoistMDryL"); 0.45::rHRatio("DryMMoistL"); 0.4::rHRatio("Other") :- scenario("K").
0.99::areaMoDryAir("VeryWet"); 0.01::areaMoDryAir("Wet"); 0.0::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("VeryWet").
0.7::areaMoDryAir("VeryWet"); 0.29::areaMoDryAir("Wet"); 0.01::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Wet").
0.2::areaMoDryAir("VeryWet"); 0.55::areaMoDryAir("Wet"); 0.24::areaMoDryAir("Neutral"); 0.01::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Neutral").
0.0::areaMoDryAir("VeryWet"); 0.25::areaMoDryAir("Wet"); 0.55::areaMoDryAir("Neutral"); 0.2::areaMoDryAir("Dry") :- areaMeso_ALS("StrongUp"), combMoisture("Dry").
0.8::areaMoDryAir("VeryWet"); 0.2::areaMoDryAir("Wet"); 0.0::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("VeryWet").
0.35::areaMoDryAir("VeryWet"); 0.55::areaMoDryAir("Wet"); 0.1::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Wet").
0.01::areaMoDryAir("VeryWet"); 0.39::areaMoDryAir("Wet"); 0.55::areaMoDryAir("Neutral"); 0.05::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Neutral").
0.0::areaMoDryAir("VeryWet"); 0.02::areaMoDryAir("Wet"); 0.43::areaMoDryAir("Neutral"); 0.55::areaMoDryAir("Dry") :- areaMeso_ALS("WeakUp"), combMoisture("Dry").
0.7::areaMoDryAir("VeryWet"); 0.29::areaMoDryAir("Wet"); 0.01::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("VeryWet").
0.2::areaMoDryAir("VeryWet"); 0.6::areaMoDryAir("Wet"); 0.2::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Wet").
0.01::areaMoDryAir("VeryWet"); 0.09::areaMoDryAir("Wet"); 0.8::areaMoDryAir("Neutral"); 0.1::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Neutral").
0.0::areaMoDryAir("VeryWet"); 0.0::areaMoDryAir("Wet"); 0.3::areaMoDryAir("Neutral"); 0.7::areaMoDryAir("Dry") :- areaMeso_ALS("Neutral"), combMoisture("Dry").
0.2::areaMoDryAir("VeryWet"); 0.74::areaMoDryAir("Wet"); 0.06::areaMoDryAir("Neutral"); 0.0::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("VeryWet").
0.05::areaMoDryAir("VeryWet"); 0.4::areaMoDryAir("Wet"); 0.45::areaMoDryAir("Neutral"); 0.1::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Wet").
0.0::areaMoDryAir("VeryWet"); 0.05::areaMoDryAir("Wet"); 0.5::areaMoDryAir("Neutral"); 0.45::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Neutral").
0.0::areaMoDryAir("VeryWet"); 0.0::areaMoDryAir("Wet"); 0.01::areaMoDryAir("Neutral"); 0.99::areaMoDryAir("Dry") :- areaMeso_ALS("Down"), combMoisture("Dry").
1.0::aMCINInScen("LessThanAve"); 0.0::aMCINInScen("Average"); 0.0::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("None").
0.6::aMCINInScen("LessThanAve"); 0.37::aMCINInScen("Average"); 0.03::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("PartInhibit").
0.25::aMCINInScen("LessThanAve"); 0.45::aMCINInScen("Average"); 0.3::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("Stifling").
0.0::aMCINInScen("LessThanAve"); 0.1::aMCINInScen("Average"); 0.9::aMCINInScen("MoreThanAve") :- scenRelAMCIN("AB"), morningCIN("TotalInhibit").
0.75::aMCINInScen("LessThanAve"); 0.25::aMCINInScen("Average"); 0.0::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("None").
0.3::aMCINInScen("LessThanAve"); 0.6::aMCINInScen("Average"); 0.1::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("PartInhibit").
0.01::aMCINInScen("LessThanAve"); 0.4::aMCINInScen("Average"); 0.59::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("Stifling").
0.0::aMCINInScen("LessThanAve"); 0.03::aMCINInScen("Average"); 0.97::aMCINInScen("MoreThanAve") :- scenRelAMCIN("CThruK"), morningCIN("TotalInhibit").
0.6::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.85::aMInsWliScen("LessUnstable"); 0.13::aMInsWliScen("Average"); 0.02::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.95::aMInsWliScen("LessUnstable"); 0.04::aMInsWliScen("Average"); 0.01::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.3::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.4::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.5::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.75::aMInsWliScen("LessUnstable"); 0.2::aMInsWliScen("Average"); 0.05::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.06::aMInsWliScen("LessUnstable"); 0.21::aMInsWliScen("Average"); 0.73::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.2::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.4::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.5::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.01::aMInsWliScen("LessUnstable"); 0.04::aMInsWliScen("Average"); 0.95::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.05::aMInsWliScen("LessUnstable"); 0.2::aMInsWliScen("Average"); 0.75::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.35::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.3::aMInsWliScen("MoreUnstable") :- scenRelAMIns("ABI"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
0.4::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.3::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.7::aMInsWliScen("LessUnstable"); 0.2::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.9::aMInsWliScen("LessUnstable"); 0.08::aMInsWliScen("Average"); 0.02::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.15::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.55::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.25::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.25::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.6::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.03::aMInsWliScen("LessUnstable"); 0.17::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.2::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.5::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.45::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.15::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.01::aMInsWliScen("LessUnstable"); 0.04::aMInsWliScen("Average"); 0.95::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.05::aMInsWliScen("LessUnstable"); 0.18::aMInsWliScen("Average"); 0.77::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.25::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.35::aMInsWliScen("MoreUnstable") :- scenRelAMIns("CDEJ"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
0.35::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.3::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.55::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.05::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.85::aMInsWliScen("LessUnstable"); 0.13::aMInsWliScen("Average"); 0.02::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.07::aMInsWliScen("LessUnstable"); 0.38::aMInsWliScen("Average"); 0.55::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.2::aMInsWliScen("LessUnstable"); 0.6::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.5::aMInsWliScen("LessUnstable"); 0.43::aMInsWliScen("Average"); 0.07::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.0::aMInsWliScen("LessUnstable"); 0.05::aMInsWliScen("Average"); 0.95::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.05::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.6::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.25::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.25::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.0::aMInsWliScen("LessUnstable"); 0.02::aMInsWliScen("Average"); 0.98::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.0::aMInsWliScen("LessUnstable"); 0.05::aMInsWliScen("Average"); 0.95::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.04::aMInsWliScen("LessUnstable"); 0.16::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("F"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
0.3::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.3::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.5::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.75::aMInsWliScen("LessUnstable"); 0.2::aMInsWliScen("Average"); 0.05::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.15::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.5::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.2::aMInsWliScen("LessUnstable"); 0.6::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.15::aMInsWliScen("LessUnstable"); 0.7::aMInsWliScen("Average"); 0.15::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.07::aMInsWliScen("LessUnstable"); 0.23::aMInsWliScen("Average"); 0.7::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.13::aMInsWliScen("LessUnstable"); 0.47::aMInsWliScen("Average"); 0.4::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.1::aMInsWliScen("LessUnstable"); 0.75::aMInsWliScen("Average"); 0.15::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.02::aMInsWliScen("LessUnstable"); 0.18::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.04::aMInsWliScen("LessUnstable"); 0.26::aMInsWliScen("Average"); 0.7::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.07::aMInsWliScen("LessUnstable"); 0.3::aMInsWliScen("Average"); 0.63::aMInsWliScen("MoreUnstable") :- scenRelAMIns("G"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
0.35::aMInsWliScen("LessUnstable"); 0.45::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.4::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.58::aMInsWliScen("LessUnstable"); 0.4::aMInsWliScen("Average"); 0.02::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.1::aMInsWliScen("LessUnstable"); 0.25::aMInsWliScen("Average"); 0.65::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.15::aMInsWliScen("LessUnstable"); 0.45::aMInsWliScen("Average"); 0.4::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.4::aMInsWliScen("LessUnstable"); 0.45::aMInsWliScen("Average"); 0.15::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.02::aMInsWliScen("LessUnstable"); 0.18::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.05::aMInsWliScen("LessUnstable"); 0.25::aMInsWliScen("Average"); 0.7::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.15::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.5::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.01::aMInsWliScen("LessUnstable"); 0.09::aMInsWliScen("Average"); 0.9::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.03::aMInsWliScen("LessUnstable"); 0.17::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.08::aMInsWliScen("LessUnstable"); 0.32::aMInsWliScen("Average"); 0.6::aMInsWliScen("MoreUnstable") :- scenRelAMIns("H"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
0.3::aMInsWliScen("LessUnstable"); 0.55::aMInsWliScen("Average"); 0.15::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Instability").
0.4::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.1::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Neutral").
0.5::aMInsWliScen("LessUnstable"); 0.43::aMInsWliScen("Average"); 0.07::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LIGt0"), aMDewptCalPl("Stability").
0.1::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.55::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Instability").
0.25::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.25::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Neutral").
0.3::aMInsWliScen("LessUnstable"); 0.5::aMInsWliScen("Average"); 0.2::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N1GtLIGt_4"), aMDewptCalPl("Stability").
0.05::aMInsWliScen("LessUnstable"); 0.22::aMInsWliScen("Average"); 0.73::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Instability").
0.1::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.55::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Neutral").
0.15::aMInsWliScen("LessUnstable"); 0.35::aMInsWliScen("Average"); 0.5::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("N5GtLIGt_8"), aMDewptCalPl("Stability").
0.02::aMInsWliScen("LessUnstable"); 0.1::aMInsWliScen("Average"); 0.88::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Instability").
0.04::aMInsWliScen("LessUnstable"); 0.16::aMInsWliScen("Average"); 0.8::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Neutral").
0.1::aMInsWliScen("LessUnstable"); 0.25::aMInsWliScen("Average"); 0.65::aMInsWliScen("MoreUnstable") :- scenRelAMIns("K"), lIfr12ZDENSd("LILt_8"), aMDewptCalPl("Stability").
1.0::cldShadeOth("Cloudy"); 0.0::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
0.85::cldShadeOth("Cloudy"); 0.15::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("PC").
0.25::cldShadeOth("Cloudy"); 0.35::cldShadeOth("PC"); 0.4::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
0.95::cldShadeOth("Cloudy"); 0.05::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
0.4::cldShadeOth("Cloudy"); 0.55::cldShadeOth("PC"); 0.05::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("PC").
0.05::cldShadeOth("Cloudy"); 0.45::cldShadeOth("PC"); 0.5::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
0.93::cldShadeOth("Cloudy"); 0.07::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
0.2::cldShadeOth("Cloudy"); 0.78::cldShadeOth("PC"); 0.02::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("PC").
0.01::cldShadeOth("Cloudy"); 0.29::cldShadeOth("PC"); 0.7::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Neutral"), combClouds("Clear").
0.74::cldShadeOth("Cloudy"); 0.25::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Cloudy").
0.0::cldShadeOth("Cloudy"); 0.5::cldShadeOth("PC"); 0.5::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.1::cldShadeOth("PC"); 0.9::cldShadeOth("Clear") :- areaMoDryAir("VeryWet"), areaMeso_ALS("Down"), combClouds("Clear").
0.92::cldShadeOth("Cloudy"); 0.08::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
0.7::cldShadeOth("Cloudy"); 0.29::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("PC").
0.15::cldShadeOth("Cloudy"); 0.4::cldShadeOth("PC"); 0.45::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("StrongUp"), combClouds("Clear").
0.9::cldShadeOth("Cloudy"); 0.09::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
0.25::cldShadeOth("Cloudy"); 0.6::cldShadeOth("PC"); 0.15::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("PC").
0.01::cldShadeOth("Cloudy"); 0.3::cldShadeOth("PC"); 0.69::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("WeakUp"), combClouds("Clear").
0.8::cldShadeOth("Cloudy"); 0.2::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
0.01::cldShadeOth("Cloudy"); 0.89::cldShadeOth("PC"); 0.1::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.1::cldShadeOth("PC"); 0.9::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Neutral"), combClouds("Clear").
0.65::cldShadeOth("Cloudy"); 0.34::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Cloudy").
0.0::cldShadeOth("Cloudy"); 0.4::cldShadeOth("PC"); 0.6::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.02::cldShadeOth("PC"); 0.98::cldShadeOth("Clear") :- areaMoDryAir("Wet"), areaMeso_ALS("Down"), combClouds("Clear").
0.88::cldShadeOth("Cloudy"); 0.12::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
0.4::cldShadeOth("Cloudy"); 0.5::cldShadeOth("PC"); 0.1::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("PC").
0.1::cldShadeOth("Cloudy"); 0.4::cldShadeOth("PC"); 0.5::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("StrongUp"), combClouds("Clear").
0.85::cldShadeOth("Cloudy"); 0.15::cldShadeOth("PC"); 0.0::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
0.15::cldShadeOth("Cloudy"); 0.75::cldShadeOth("PC"); 0.1::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.2::cldShadeOth("PC"); 0.8::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("WeakUp"), combClouds("Clear").
0.8::cldShadeOth("Cloudy"); 0.18::cldShadeOth("PC"); 0.02::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
0.03::cldShadeOth("Cloudy"); 0.85::cldShadeOth("PC"); 0.12::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.05::cldShadeOth("PC"); 0.95::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Neutral"), combClouds("Clear").
0.5::cldShadeOth("Cloudy"); 0.48::cldShadeOth("PC"); 0.02::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Cloudy").
0.01::cldShadeOth("Cloudy"); 0.74::cldShadeOth("PC"); 0.25::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.01::cldShadeOth("PC"); 0.99::cldShadeOth("Clear") :- areaMoDryAir("Neutral"), areaMeso_ALS("Down"), combClouds("Clear").
0.85::cldShadeOth("Cloudy"); 0.14::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Cloudy").
0.55::cldShadeOth("Cloudy"); 0.43::cldShadeOth("PC"); 0.02::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("PC").
0.1::cldShadeOth("Cloudy"); 0.25::cldShadeOth("PC"); 0.65::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("StrongUp"), combClouds("Clear").
0.6::cldShadeOth("Cloudy"); 0.39::cldShadeOth("PC"); 0.01::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Cloudy").
0.01::cldShadeOth("Cloudy"); 0.9::cldShadeOth("PC"); 0.09::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.15::cldShadeOth("PC"); 0.85::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("WeakUp"), combClouds("Clear").
0.78::cldShadeOth("Cloudy"); 0.2::cldShadeOth("PC"); 0.02::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Cloudy").
0.01::cldShadeOth("Cloudy"); 0.74::cldShadeOth("PC"); 0.25::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.04::cldShadeOth("PC"); 0.96::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Neutral"), combClouds("Clear").
0.42::cldShadeOth("Cloudy"); 0.55::cldShadeOth("PC"); 0.03::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Cloudy").
0.05::cldShadeOth("Cloudy"); 0.65::cldShadeOth("PC"); 0.3::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("PC").
0.0::cldShadeOth("Cloudy"); 0.0::cldShadeOth("PC"); 1.0::cldShadeOth("Clear") :- areaMoDryAir("Dry"), areaMeso_ALS("Down"), combClouds("Clear").
0.9::insInMt("None"); 0.1::insInMt("Weak"); 0.0::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("None").
0.01::insInMt("None"); 0.4::insInMt("Weak"); 0.59::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Weak").
0.0::insInMt("None"); 0.05::insInMt("Weak"); 0.95::insInMt("Strong") :- cldShadeOth("Cloudy"), aMInstabMt("Strong").
0.6::insInMt("None"); 0.39::insInMt("Weak"); 0.01::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("None").
0.0::insInMt("None"); 0.4::insInMt("Weak"); 0.6::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Weak").
0.0::insInMt("None"); 0.0::insInMt("Weak"); 1.0::insInMt("Strong") :- cldShadeOth("PC"), aMInstabMt("Strong").
0.5::insInMt("None"); 0.35::insInMt("Weak"); 0.15::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("None").
0.0::insInMt("None"); 0.15::insInMt("Weak"); 0.85::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Weak").
0.0::insInMt("None"); 0.0::insInMt("Weak"); 1.0::insInMt("Strong") :- cldShadeOth("Clear"), aMInstabMt("Strong").
1.0::cldShadeConv("None"); 0.0::cldShadeConv("Some"); 0.0::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("DCVZFavor").
1.0::cldShadeConv("None"); 0.0::cldShadeConv("Some"); 0.0::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("StrongWest").
1.0::cldShadeConv("None"); 0.0::cldShadeConv("Some"); 0.0::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Westerly").
1.0::cldShadeConv("None"); 0.0::cldShadeConv("Some"); 0.0::cldShadeConv("Marked") :- insInMt("None"), wndHodograph("Other").
0.3::cldShadeConv("None"); 0.6::cldShadeConv("Some"); 0.1::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("DCVZFavor").
0.2::cldShadeConv("None"); 0.7::cldShadeConv("Some"); 0.1::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("StrongWest").
0.5::cldShadeConv("None"); 0.46::cldShadeConv("Some"); 0.04::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Westerly").
0.8::cldShadeConv("None"); 0.19::cldShadeConv("Some"); 0.01::cldShadeConv("Marked") :- insInMt("Weak"), wndHodograph("Other").
0.0::cldShadeConv("None"); 0.3::cldShadeConv("Some"); 0.7::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("DCVZFavor").
0.0::cldShadeConv("None"); 0.2::cldShadeConv("Some"); 0.8::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("StrongWest").
0.1::cldShadeConv("None"); 0.5::cldShadeConv("Some"); 0.4::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Westerly").
0.5::cldShadeConv("None"); 0.38::cldShadeConv("Some"); 0.12::cldShadeConv("Marked") :- insInMt("Strong"), wndHodograph("Other").
1.0::mountainFcst("XNIL"); 0.0::mountainFcst("SIG"); 0.0::mountainFcst("SVR") :- insInMt("None").
0.48::mountainFcst("XNIL"); 0.5::mountainFcst("SIG"); 0.02::mountainFcst("SVR") :- insInMt("Weak").
0.2::mountainFcst("XNIL"); 0.5::mountainFcst("SIG"); 0.3::mountainFcst("SVR") :- insInMt("Strong").
1.0::outflowFrMt("None"); 0.0::outflowFrMt("Weak"); 0.0::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("DCVZFavor").
1.0::outflowFrMt("None"); 0.0::outflowFrMt("Weak"); 0.0::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("StrongWest").
1.0::outflowFrMt("None"); 0.0::outflowFrMt("Weak"); 0.0::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Westerly").
1.0::outflowFrMt("None"); 0.0::outflowFrMt("Weak"); 0.0::outflowFrMt("Strong") :- insInMt("None"), wndHodograph("Other").
0.5::outflowFrMt("None"); 0.4::outflowFrMt("Weak"); 0.1::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("DCVZFavor").
0.15::outflowFrMt("None"); 0.4::outflowFrMt("Weak"); 0.45::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("StrongWest").
0.35::outflowFrMt("None"); 0.6::outflowFrMt("Weak"); 0.05::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Westerly").
0.8::outflowFrMt("None"); 0.19::outflowFrMt("Weak"); 0.01::outflowFrMt("Strong") :- insInMt("Weak"), wndHodograph("Other").
0.05::outflowFrMt("None"); 0.45::outflowFrMt("Weak"); 0.5::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("DCVZFavor").
0.01::outflowFrMt("None"); 0.15::outflowFrMt("Weak"); 0.84::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("StrongWest").
0.1::outflowFrMt("None"); 0.25::outflowFrMt("Weak"); 0.65::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Westerly").
0.6::outflowFrMt("None"); 0.3::outflowFrMt("Weak"); 0.1::outflowFrMt("Strong") :- insInMt("Strong"), wndHodograph("Other").
0.5::boundaries("None"); 0.48::boundaries("Weak"); 0.02::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("None").
0.3::boundaries("None"); 0.5::boundaries("Weak"); 0.2::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Weak").
0.1::boundaries("None"); 0.25::boundaries("Weak"); 0.65::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("DCVZFavor"), morningBound("Strong").
0.75::boundaries("None"); 0.22::boundaries("Weak"); 0.03::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("None").
0.45::boundaries("None"); 0.45::boundaries("Weak"); 0.1::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Weak").
0.25::boundaries("None"); 0.4::boundaries("Weak"); 0.35::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("StrongWest"), morningBound("Strong").
0.8::boundaries("None"); 0.18::boundaries("Weak"); 0.02::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("None").
0.35::boundaries("None"); 0.5::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Weak").
0.25::boundaries("None"); 0.35::boundaries("Weak"); 0.4::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Westerly"), morningBound("Strong").
0.7::boundaries("None"); 0.28::boundaries("Weak"); 0.02::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("None").
0.25::boundaries("None"); 0.6::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Weak").
0.05::boundaries("None"); 0.35::boundaries("Weak"); 0.6::boundaries("Strong") :- outflowFrMt("None"), wndHodograph("Other"), morningBound("Strong").
0.3::boundaries("None"); 0.63::boundaries("Weak"); 0.07::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("None").
0.1::boundaries("None"); 0.5::boundaries("Weak"); 0.4::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Weak").
0.05::boundaries("None"); 0.2::boundaries("Weak"); 0.75::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("DCVZFavor"), morningBound("Strong").
0.15::boundaries("None"); 0.7::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("None").
0.1::boundaries("None"); 0.75::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Weak").
0.05::boundaries("None"); 0.5::boundaries("Weak"); 0.45::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("StrongWest"), morningBound("Strong").
0.15::boundaries("None"); 0.7::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("None").
0.05::boundaries("None"); 0.8::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Weak").
0.05::boundaries("None"); 0.45::boundaries("Weak"); 0.5::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Westerly"), morningBound("Strong").
0.4::boundaries("None"); 0.55::boundaries("Weak"); 0.05::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("None").
0.2::boundaries("None"); 0.65::boundaries("Weak"); 0.15::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Weak").
0.05::boundaries("None"); 0.3::boundaries("Weak"); 0.65::boundaries("Strong") :- outflowFrMt("Weak"), wndHodograph("Other"), morningBound("Strong").
0.0::boundaries("None"); 0.55::boundaries("Weak"); 0.45::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("None").
0.0::boundaries("None"); 0.4::boundaries("Weak"); 0.6::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Weak").
0.0::boundaries("None"); 0.15::boundaries("Weak"); 0.85::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("DCVZFavor"), morningBound("Strong").
0.0::boundaries("None"); 0.5::boundaries("Weak"); 0.5::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("None").
0.0::boundaries("None"); 0.4::boundaries("Weak"); 0.6::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Weak").
0.0::boundaries("None"); 0.2::boundaries("Weak"); 0.8::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("StrongWest"), morningBound("Strong").
0.0::boundaries("None"); 0.7::boundaries("Weak"); 0.3::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("None").
0.0::boundaries("None"); 0.5::boundaries("Weak"); 0.5::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Weak").
0.0::boundaries("None"); 0.2::boundaries("Weak"); 0.8::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Westerly"), morningBound("Strong").
0.02::boundaries("None"); 0.73::boundaries("Weak"); 0.25::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("None").
0.01::boundaries("None"); 0.5::boundaries("Weak"); 0.49::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Weak").
0.01::boundaries("None"); 0.2::boundaries("Weak"); 0.79::boundaries("Strong") :- outflowFrMt("Strong"), wndHodograph("Other"), morningBound("Strong").
0.4::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.1::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.55::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.05::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.65::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.6::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.4::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.5::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.6::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.45::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.25::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.7::compPlFcst("IncCapDecIns"); 0.27::compPlFcst("LittleChange"); 0.03::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.65::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.6::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.4::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.25::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.45::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.15::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.5::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.65::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.45::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.25::compPlFcst("IncCapDecIns"); 0.5::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.65::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.5::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.3::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.75::compPlFcst("IncCapDecIns"); 0.23::compPlFcst("LittleChange"); 0.02::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.7::compPlFcst("IncCapDecIns"); 0.26::compPlFcst("LittleChange"); 0.04::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.65::compPlFcst("IncCapDecIns"); 0.32::compPlFcst("LittleChange"); 0.03::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.45::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.4::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.35::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.7::compPlFcst("IncCapDecIns"); 0.22::compPlFcst("LittleChange"); 0.08::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.55::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.4::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.7::compPlFcst("IncCapDecIns"); 0.27::compPlFcst("LittleChange"); 0.03::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.6::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.55::compPlFcst("IncCapDecIns"); 0.33::compPlFcst("LittleChange"); 0.12::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.85::compPlFcst("IncCapDecIns"); 0.14::compPlFcst("LittleChange"); 0.01::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.8::compPlFcst("IncCapDecIns"); 0.17::compPlFcst("LittleChange"); 0.03::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.75::compPlFcst("IncCapDecIns"); 0.23::compPlFcst("LittleChange"); 0.02::compPlFcst("DecCapIncIns") :- boundaries("None"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.35::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.05::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.6::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.03::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.72::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.5::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.3::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.15::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.55::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.4::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.6::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.6::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.55::compPlFcst("IncCapDecIns"); 0.33::compPlFcst("LittleChange"); 0.12::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.35::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.1::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.55::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.05::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.65::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.55::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.35::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.5::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.6::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.45::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.25::compPlFcst("IncCapDecIns"); 0.5::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.65::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.65::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.6::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.4::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.25::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.65::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.45::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.3::compPlFcst("IncCapDecIns"); 0.5::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.65::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.55::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.5::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.78::compPlFcst("IncCapDecIns"); 0.18::compPlFcst("LittleChange"); 0.04::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.75::compPlFcst("IncCapDecIns"); 0.2::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.7::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.05::compPlFcst("DecCapIncIns") :- boundaries("Weak"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.3::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.01::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.74::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.01::compPlFcst("IncCapDecIns"); 0.2::compPlFcst("LittleChange"); 0.79::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.35::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.15::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.45::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.1::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.55::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.45::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.3::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.15::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.45::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.5::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.48::compPlFcst("IncCapDecIns"); 0.32::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.45::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("None"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.3::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.05::compPlFcst("IncCapDecIns"); 0.6::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.04::compPlFcst("IncCapDecIns"); 0.27::compPlFcst("LittleChange"); 0.69::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.4::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.2::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.4::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.12::compPlFcst("IncCapDecIns"); 0.43::compPlFcst("LittleChange"); 0.45::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.5::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.35::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.55::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.55::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.15::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.5::compPlFcst("IncCapDecIns"); 0.4::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Some"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.3::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Cloudy").
0.15::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.5::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("PC").
0.13::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.52::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("StrongUp"), cldShadeOth("Clear").
0.5::compPlFcst("IncCapDecIns"); 0.25::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Cloudy").
0.35::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.3::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("PC").
0.2::compPlFcst("IncCapDecIns"); 0.45::compPlFcst("LittleChange"); 0.35::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("WeakUp"), cldShadeOth("Clear").
0.55::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Cloudy").
0.45::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.2::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("PC").
0.4::compPlFcst("IncCapDecIns"); 0.35::compPlFcst("LittleChange"); 0.25::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Neutral"), cldShadeOth("Clear").
0.7::compPlFcst("IncCapDecIns"); 0.24::compPlFcst("LittleChange"); 0.06::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Cloudy").
0.65::compPlFcst("IncCapDecIns"); 0.28::compPlFcst("LittleChange"); 0.07::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("PC").
0.6::compPlFcst("IncCapDecIns"); 0.3::compPlFcst("LittleChange"); 0.1::compPlFcst("DecCapIncIns") :- boundaries("Strong"), cldShadeConv("Marked"), areaMeso_ALS("Down"), cldShadeOth("Clear").
0.0::capChange("Decreasing"); 0.0::capChange("LittleChange"); 1.0::capChange("Increasing") :- compPlFcst("IncCapDecIns").
0.0::capChange("Decreasing"); 1.0::capChange("LittleChange"); 0.0::capChange("Increasing") :- compPlFcst("LittleChange").
1.0::capChange("Decreasing"); 0.0::capChange("LittleChange"); 0.0::capChange("Increasing") :- compPlFcst("DecCapIncIns").
0.0::insChange("Decreasing"); 0.05::insChange("LittleChange"); 0.95::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("IncCapDecIns").
0.0::insChange("Decreasing"); 0.12::insChange("LittleChange"); 0.88::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("LittleChange").
0.05::insChange("Decreasing"); 0.15::insChange("LittleChange"); 0.8::insChange("Increasing") :- loLevMoistAd("StrongPos"), compPlFcst("DecCapIncIns").
0.05::insChange("Decreasing"); 0.15::insChange("LittleChange"); 0.8::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("IncCapDecIns").
0.1::insChange("Decreasing"); 0.4::insChange("LittleChange"); 0.5::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("LittleChange").
0.25::insChange("Decreasing"); 0.5::insChange("LittleChange"); 0.25::insChange("Increasing") :- loLevMoistAd("WeakPos"), compPlFcst("DecCapIncIns").
0.15::insChange("Decreasing"); 0.5::insChange("LittleChange"); 0.35::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("IncCapDecIns").
0.2::insChange("Decreasing"); 0.6::insChange("LittleChange"); 0.2::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("LittleChange").
0.35::insChange("Decreasing"); 0.5::insChange("LittleChange"); 0.15::insChange("Increasing") :- loLevMoistAd("Neutral"), compPlFcst("DecCapIncIns").
0.5::insChange("Decreasing"); 0.4::insChange("LittleChange"); 0.1::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("IncCapDecIns").
0.8::insChange("Decreasing"); 0.16::insChange("LittleChange"); 0.04::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("LittleChange").
0.9::insChange("Decreasing"); 0.09::insChange("LittleChange"); 0.01::insChange("Increasing") :- loLevMoistAd("Negative"), compPlFcst("DecCapIncIns").
1.0::insSclInScen("LessUnstable"); 0.0::insSclInScen("Average"); 0.0::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Decreasing").
0.9::insSclInScen("LessUnstable"); 0.1::insSclInScen("Average"); 0.0::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("LittleChange").
0.4::insSclInScen("LessUnstable"); 0.35::insSclInScen("Average"); 0.25::insSclInScen("MoreUnstable") :- aMInsWliScen("LessUnstable"), insChange("Increasing").
0.6::insSclInScen("LessUnstable"); 0.4::insSclInScen("Average"); 0.0::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Decreasing").
0.15::insSclInScen("LessUnstable"); 0.7::insSclInScen("Average"); 0.15::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("LittleChange").
0.0::insSclInScen("LessUnstable"); 0.4::insSclInScen("Average"); 0.6::insSclInScen("MoreUnstable") :- aMInsWliScen("Average"), insChange("Increasing").
0.25::insSclInScen("LessUnstable"); 0.35::insSclInScen("Average"); 0.4::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Decreasing").
0.0::insSclInScen("LessUnstable"); 0.1::insSclInScen("Average"); 0.9::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("LittleChange").
0.0::insSclInScen("LessUnstable"); 0.0::insSclInScen("Average"); 1.0::insSclInScen("MoreUnstable") :- aMInsWliScen("MoreUnstable"), insChange("Increasing").
1.0::capInScen("LessThanAve"); 0.0::capInScen("Average"); 0.0::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Decreasing").
0.98::capInScen("LessThanAve"); 0.02::capInScen("Average"); 0.0::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("LittleChange").
0.35::capInScen("LessThanAve"); 0.35::capInScen("Average"); 0.3::capInScen("MoreThanAve") :- aMCINInScen("LessThanAve"), capChange("Increasing").
0.75::capInScen("LessThanAve"); 0.25::capInScen("Average"); 0.0::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Decreasing").
0.03::capInScen("LessThanAve"); 0.94::capInScen("Average"); 0.03::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("LittleChange").
0.0::capInScen("LessThanAve"); 0.25::capInScen("Average"); 0.75::capInScen("MoreThanAve") :- aMCINInScen("Average"), capChange("Increasing").
0.3::capInScen("LessThanAve"); 0.35::capInScen("Average"); 0.35::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Decreasing").
0.0::capInScen("LessThanAve"); 0.02::capInScen("Average"); 0.98::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("LittleChange").
0.0::capInScen("LessThanAve"); 0.0::capInScen("Average"); 1.0::capInScen("MoreThanAve") :- aMCINInScen("MoreThanAve"), capChange("Increasing").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.9::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.92::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.85::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
1.0::plainsFcst("XNIL"); 0.0::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.95::plainsFcst("XNIL"); 0.04::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.65::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.91::plainsFcst("XNIL"); 0.05::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.85::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.9::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.84::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.99::plainsFcst("XNIL"); 0.01::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.92::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.96::plainsFcst("XNIL"); 0.03::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.95::plainsFcst("XNIL"); 0.04::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.93::plainsFcst("XNIL"); 0.04::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.92::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.87::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.9::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.98::plainsFcst("XNIL"); 0.02::plainsFcst("SIG"); 0.0::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.92::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.95::plainsFcst("XNIL"); 0.04::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.97::plainsFcst("XNIL"); 0.02::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.5::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.6::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.8::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.85::plainsFcst("XNIL"); 0.09::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.88::plainsFcst("XNIL"); 0.11::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.8::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.92::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.8::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.75::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.35::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
0.82::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
0.82::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
0.75::plainsFcst("XNIL"); 0.18::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
0.88::plainsFcst("XNIL"); 0.11::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
0.9::plainsFcst("XNIL"); 0.07::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
0.8::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
0.5::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.6::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.85::plainsFcst("XNIL"); 0.07::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.85::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.94::plainsFcst("XNIL"); 0.05::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.65::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.83::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.93::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.35::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.45::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.8::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.72::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.14::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.78::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.86::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.65::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.65::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.72::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.25::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.6::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.65::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.55::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.55::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.81::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.6::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.8::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.6::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.88::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.4::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.52::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.75::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.65::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.52::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.82::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.65::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.85::plainsFcst("XNIL"); 0.09::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.5::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.77::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.9::plainsFcst("XNIL"); 0.07::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("None"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.7::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.6::plainsFcst("XNIL"); 0.33::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.82::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.82::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.85::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.8::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.97::plainsFcst("XNIL"); 0.02::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.86::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.65::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.58::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.8::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.8::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.83::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.77::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.93::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.85::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.6::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.65::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.85::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.82::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.8::plainsFcst("XNIL"); 0.19::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.8::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.91::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.85::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.9::plainsFcst("XNIL"); 0.08::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.93::plainsFcst("XNIL"); 0.06::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.3::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.55::plainsFcst("XNIL"); 0.34::plainsFcst("SIG"); 0.11::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.62::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.85::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.82::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.6::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.68::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.82::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.28::plainsFcst("XNIL"); 0.37::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
0.48::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
0.7::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
0.6::plainsFcst("XNIL"); 0.29::plainsFcst("SIG"); 0.11::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
0.82::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
0.63::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
0.8::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
0.5::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
0.8::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
0.4::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.32::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.5::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.72::plainsFcst("XNIL"); 0.18::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.65::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.78::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.55::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.85::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.45::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.73::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.85::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.3::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.45::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.4::plainsFcst("XNIL"); 0.36::plainsFcst("SIG"); 0.24::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.65::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.6::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.6::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.83::plainsFcst("XNIL"); 0.14::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.45::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.7::plainsFcst("XNIL"); 0.18::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.55::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.6::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.72::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.22::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.61::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.35::plainsFcst("XNIL"); 0.37::plainsFcst("SIG"); 0.28::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.45::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.45::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.48::plainsFcst("XNIL"); 0.29::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.72::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.43::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.68::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.35::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.6::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.74::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.27::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.63::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.35::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.55::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.45::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.42::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.28::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.74::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.45::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.77::plainsFcst("XNIL"); 0.13::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.3::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.45::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.68::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Slight"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.5::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.42::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.75::plainsFcst("XNIL"); 0.18::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.72::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.78::plainsFcst("XNIL"); 0.21::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.66::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.7::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.78::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.8::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.45::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.72::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.11::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.7::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.75::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.62::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.85::plainsFcst("XNIL"); 0.12::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.75::plainsFcst("XNIL"); 0.15::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.76::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.8::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.35::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.45::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.75::plainsFcst("XNIL"); 0.19::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.6::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.72::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.01::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.6::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.8::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.75::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.88::plainsFcst("XNIL"); 0.1::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.2::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.4::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.7::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.65::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.5::plainsFcst("XNIL"); 0.34::plainsFcst("SIG"); 0.16::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.74::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.6::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.67::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.09::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.35::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.6::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.23::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.37::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
0.38::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.27::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
0.58::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
0.55::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
0.53::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
0.73::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
0.35::plainsFcst("XNIL"); 0.53::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
0.65::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.11::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
0.3::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
0.6::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.16::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
0.68::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
0.3::plainsFcst("XNIL"); 0.34::plainsFcst("SIG"); 0.36::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.35::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.55::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.5::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.4::plainsFcst("XNIL"); 0.38::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.7::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.35::plainsFcst("XNIL"); 0.5::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.6::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.35::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.62::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.16::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.7::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.25::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.47::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.3::plainsFcst("XNIL"); 0.38::plainsFcst("SIG"); 0.32::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.45::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.5::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.4::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.72::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.04::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.25::plainsFcst("XNIL"); 0.57::plainsFcst("SIG"); 0.18::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.57::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.25::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.48::plainsFcst("XNIL"); 0.26::plainsFcst("SIG"); 0.26::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.6::plainsFcst("XNIL"); 0.26::plainsFcst("SIG"); 0.14::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.19::plainsFcst("XNIL"); 0.18::plainsFcst("SIG"); 0.63::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.25::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.35::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.35::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.35::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.65::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.22::plainsFcst("XNIL"); 0.58::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.45::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.25::plainsFcst("XNIL"); 0.34::plainsFcst("SIG"); 0.41::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.48::plainsFcst("XNIL"); 0.26::plainsFcst("SIG"); 0.26::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.58::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.15::plainsFcst("XNIL"); 0.16::plainsFcst("SIG"); 0.69::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.25::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.45::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.4::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.3::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.25::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.6::plainsFcst("XNIL"); 0.34::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.18::plainsFcst("XNIL"); 0.62::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.47::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.25::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.45::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.5::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.28::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.5::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Moderate"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.4::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.35::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.6::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.6::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.18::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.55::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.69::plainsFcst("XNIL"); 0.29::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.54::plainsFcst("XNIL"); 0.36::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.75::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.7::plainsFcst("XNIL"); 0.22::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.7::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.35::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.35::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.55::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.18::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.5::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.65::plainsFcst("XNIL"); 0.33::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.38::plainsFcst("XNIL"); 0.5::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.7::plainsFcst("XNIL"); 0.24::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.65::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.67::plainsFcst("XNIL"); 0.23::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.7::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.2::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.3::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.5::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.45::plainsFcst("XNIL"); 0.38::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.6::plainsFcst("XNIL"); 0.38::plainsFcst("SIG"); 0.02::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.28::plainsFcst("XNIL"); 0.57::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.65::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.07::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.63::plainsFcst("XNIL"); 0.25::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.62::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.1::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.8::plainsFcst("XNIL"); 0.17::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("LessUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.16::plainsFcst("XNIL"); 0.47::plainsFcst("SIG"); 0.37::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.3::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.45::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.52::plainsFcst("XNIL"); 0.26::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.35::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.65::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.48::plainsFcst("XNIL"); 0.39::plainsFcst("SIG"); 0.13::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.58::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.12::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.25::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.5::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.65::plainsFcst("XNIL"); 0.27::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.18::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.37::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("A").
0.3::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("B").
0.45::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("C").
0.45::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("D").
0.35::plainsFcst("XNIL"); 0.43::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("E").
0.62::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("F").
0.2::plainsFcst("XNIL"); 0.65::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("G").
0.52::plainsFcst("XNIL"); 0.33::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("H").
0.23::plainsFcst("XNIL"); 0.42::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("I").
0.47::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.23::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("J").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("Average"), scnRelPlFcst("K").
0.23::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.37::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.25::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.4::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.4::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.3::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.57::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.03::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.15::plainsFcst("XNIL"); 0.65::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.5::plainsFcst("XNIL"); 0.33::plainsFcst("SIG"); 0.17::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.25::plainsFcst("XNIL"); 0.36::plainsFcst("SIG"); 0.39::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.5::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.55::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.15::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("Average"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.18::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.52::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("A").
0.2::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("B").
0.3::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("C").
0.4::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("D").
0.25::plainsFcst("XNIL"); 0.48::plainsFcst("SIG"); 0.27::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("E").
0.63::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.05::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("F").
0.15::plainsFcst("XNIL"); 0.63::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("G").
0.4::plainsFcst("XNIL"); 0.38::plainsFcst("SIG"); 0.22::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("H").
0.2::plainsFcst("XNIL"); 0.37::plainsFcst("SIG"); 0.43::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("I").
0.3::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.35::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("J").
0.5::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.18::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("LessThanAve"), scnRelPlFcst("K").
0.15::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.65::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("A").
0.18::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.42::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("B").
0.25::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("C").
0.25::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("D").
0.25::plainsFcst("XNIL"); 0.42::plainsFcst("SIG"); 0.33::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("E").
0.58::plainsFcst("XNIL"); 0.36::plainsFcst("SIG"); 0.06::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("F").
0.13::plainsFcst("XNIL"); 0.62::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("G").
0.3::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("H").
0.22::plainsFcst("XNIL"); 0.35::plainsFcst("SIG"); 0.43::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("I").
0.35::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.33::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("J").
0.5::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.2::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("Average"), scnRelPlFcst("K").
0.1::plainsFcst("XNIL"); 0.2::plainsFcst("SIG"); 0.7::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("A").
0.2::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.5::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("B").
0.2::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("C").
0.23::plainsFcst("XNIL"); 0.3::plainsFcst("SIG"); 0.47::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("D").
0.15::plainsFcst("XNIL"); 0.45::plainsFcst("SIG"); 0.4::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("E").
0.5::plainsFcst("XNIL"); 0.42::plainsFcst("SIG"); 0.08::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("F").
0.1::plainsFcst("XNIL"); 0.65::plainsFcst("SIG"); 0.25::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("G").
0.28::plainsFcst("XNIL"); 0.4::plainsFcst("SIG"); 0.32::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("H").
0.2::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.48::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("I").
0.3::plainsFcst("XNIL"); 0.28::plainsFcst("SIG"); 0.42::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("J").
0.38::plainsFcst("XNIL"); 0.32::plainsFcst("SIG"); 0.3::plainsFcst("SVR") :- curPropConv("Strong"), insSclInScen("MoreUnstable"), capInScen("MoreThanAve"), scnRelPlFcst("K").
0.94::n34StarFcst("XNIL"); 0.05::n34StarFcst("SIG"); 0.01::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("XNIL").
0.06::n34StarFcst("XNIL"); 0.89::n34StarFcst("SIG"); 0.05::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SIG").
0.01::n34StarFcst("XNIL"); 0.05::n34StarFcst("SIG"); 0.94::n34StarFcst("SVR") :- scenRel3_4("ACEFK"), plainsFcst("SVR").
0.98::n34StarFcst("XNIL"); 0.02::n34StarFcst("SIG"); 0.0::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("XNIL").
0.04::n34StarFcst("XNIL"); 0.94::n34StarFcst("SIG"); 0.02::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SIG").
0.0::n34StarFcst("XNIL"); 0.03::n34StarFcst("SIG"); 0.97::n34StarFcst("SVR") :- scenRel3_4("B"), plainsFcst("SVR").
0.92::n34StarFcst("XNIL"); 0.06::n34StarFcst("SIG"); 0.02::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("XNIL").
0.01::n34StarFcst("XNIL"); 0.89::n34StarFcst("SIG"); 0.1::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SIG").
0.0::n34StarFcst("XNIL"); 0.01::n34StarFcst("SIG"); 0.99::n34StarFcst("SVR") :- scenRel3_4("D"), plainsFcst("SVR").
0.92::n34StarFcst("XNIL"); 0.06::n34StarFcst("SIG"); 0.02::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("XNIL").
0.03::n34StarFcst("XNIL"); 0.92::n34StarFcst("SIG"); 0.05::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SIG").
0.01::n34StarFcst("XNIL"); 0.04::n34StarFcst("SIG"); 0.95::n34StarFcst("SVR") :- scenRel3_4("GJ"), plainsFcst("SVR").
0.99::n34StarFcst("XNIL"); 0.01::n34StarFcst("SIG"); 0.0::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("XNIL").
0.09::n34StarFcst("XNIL"); 0.9::n34StarFcst("SIG"); 0.01::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SIG").
0.03::n34StarFcst("XNIL"); 0.12::n34StarFcst("SIG"); 0.85::n34StarFcst("SVR") :- scenRel3_4("HI"), plainsFcst("SVR").
1.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 0.0::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("XNIL").
0.0::r5Fcst("XNIL"); 1.0::r5Fcst("SIG"); 0.0::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SIG").
0.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 1.0::r5Fcst("SVR") :- mountainFcst("XNIL"), n34StarFcst("SVR").
0.0::r5Fcst("XNIL"); 1.0::r5Fcst("SIG"); 0.0::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("XNIL").
0.0::r5Fcst("XNIL"); 1.0::r5Fcst("SIG"); 0.0::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SIG").
0.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 1.0::r5Fcst("SVR") :- mountainFcst("SIG"), n34StarFcst("SVR").
0.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 1.0::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("XNIL").
0.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 1.0::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SIG").
0.0::r5Fcst("XNIL"); 0.0::r5Fcst("SIG"); 1.0::r5Fcst("SVR") :- mountainFcst("SVR"), n34StarFcst("SVR").
