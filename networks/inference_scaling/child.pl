%% ProbLog program: PGM 1
%% Created on 2021-01-28 15:58:34.683263

?::birthAsphyxia.
?::disease("PFC"); ?::disease("TGA"); ?::disease("Fallot"); ?::disease("PAIVS"); ?::disease("TAPVD"); ?::disease("Lung") :- birthAsphyxia.
?::disease("PFC"); ?::disease("TGA"); ?::disease("Fallot"); ?::disease("PAIVS"); ?::disease("TAPVD"); ?::disease("Lung") :- \+birthAsphyxia.
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("PFC").
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("TGA").
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("Fallot").
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("PAIVS").
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("TAPVD").
?::cardiacMixing("None"); ?::cardiacMixing("Mild"); ?::cardiacMixing("Complete"); ?::cardiacMixing("Transp.") :- disease("Lung").
?::sick :- disease("PFC").
?::sick :- disease("TGA").
?::sick :- disease("Fallot").
?::sick :- disease("PAIVS").
?::sick :- disease("TAPVD").
?::sick :- disease("Lung").
?::lVH :- disease("PFC").
?::lVH :- disease("TGA").
?::lVH :- disease("Fallot").
?::lVH :- disease("PAIVS").
?::lVH :- disease("TAPVD").
?::lVH :- disease("Lung").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("PFC").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("TGA").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("Fallot").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("PAIVS").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("TAPVD").
?::lungFlow("Normal"); ?::lungFlow("Low"); ?::lungFlow("High") :- disease("Lung").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("PFC").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("TGA").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("Fallot").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("PAIVS").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("TAPVD").
?::lungParench("Normal"); ?::lungParench("Congested"); ?::lungParench("Abnormal") :- disease("Lung").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("PFC").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("TGA").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("Fallot").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("PAIVS").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("TAPVD").
?::ductFlow("Lt_to_Rt"); ?::ductFlow("None"); ?::ductFlow("Rt_to_Lt") :- disease("Lung").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("None").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Mild").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Complete").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Transp.").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("None").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Mild").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Complete").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Transp.").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("None").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Mild").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Complete").
?::hypDistrib("Equal"); ?::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Transp.").
?::grunting :- lungParench("Normal"), sick.
?::grunting :- lungParench("Normal"), \+sick.
?::grunting :- lungParench("Congested"), sick.
?::grunting :- lungParench("Congested"), \+sick.
?::grunting :- lungParench("Abnormal"), sick.
?::grunting :- lungParench("Abnormal"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("PFC"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("PFC"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("TGA"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("TGA"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("Fallot"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("Fallot"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("PAIVS"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("PAIVS"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("TAPVD"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("TAPVD"), \+sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("Lung"), sick.
?::age("0-3_days"); ?::age("4-10_days"); ?::age("11-30_days") :- disease("Lung"), \+sick.
?::cO2("Normal"); ?::cO2("Low"); ?::cO2("High") :- lungParench("Normal").
?::cO2("Normal"); ?::cO2("Low"); ?::cO2("High") :- lungParench("Congested").
?::cO2("Normal"); ?::cO2("Low"); ?::cO2("High") :- lungParench("Abnormal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Normal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Congested").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Abnormal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Normal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Congested").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Abnormal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Normal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Congested").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Abnormal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Normal").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Congested").
?::hypoxiaInO2("Mild"); ?::hypoxiaInO2("Moderate"); ?::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Abnormal").
?::lVHreport :- lVH.
?::lVHreport :- \+lVH.
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Normal").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Low").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("High").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Normal").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Low").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("High").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Normal").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Low").
?::chestXray("Normal"); ?::chestXray("Oligaemic"); ?::chestXray("Plethoric"); ?::chestXray("Grd_Glass"); ?::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("High").
?::xrayReport("Normal"); ?::xrayReport("Oligaemic"); ?::xrayReport("Plethoric"); ?::xrayReport("Grd_Glass"); ?::xrayReport("Asy/Patchy") :- chestXray("Normal").
?::xrayReport("Normal"); ?::xrayReport("Oligaemic"); ?::xrayReport("Plethoric"); ?::xrayReport("Grd_Glass"); ?::xrayReport("Asy/Patchy") :- chestXray("Oligaemic").
?::xrayReport("Normal"); ?::xrayReport("Oligaemic"); ?::xrayReport("Plethoric"); ?::xrayReport("Grd_Glass"); ?::xrayReport("Asy/Patchy") :- chestXray("Plethoric").
?::xrayReport("Normal"); ?::xrayReport("Oligaemic"); ?::xrayReport("Plethoric"); ?::xrayReport("Grd_Glass"); ?::xrayReport("Asy/Patchy") :- chestXray("Grd_Glass").
?::xrayReport("Normal"); ?::xrayReport("Oligaemic"); ?::xrayReport("Plethoric"); ?::xrayReport("Grd_Glass"); ?::xrayReport("Asy/Patchy") :- chestXray("Asy/Patch").
?::cO2Report("<7.5"); ?::cO2Report(">=7.5") :- cO2("Normal").
?::cO2Report("<7.5"); ?::cO2Report(">=7.5") :- cO2("Low").
?::cO2Report("<7.5"); ?::cO2Report(">=7.5") :- cO2("High").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Mild").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Moderate").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Severe").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Mild").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Moderate").
?::lowerBodyO2("<5"); ?::lowerBodyO2("5-12"); ?::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Severe").
?::rUQO2("<5"); ?::rUQO2("5-12"); ?::rUQO2("12+") :- hypoxiaInO2("Mild").
?::rUQO2("<5"); ?::rUQO2("5-12"); ?::rUQO2("12+") :- hypoxiaInO2("Moderate").
?::rUQO2("<5"); ?::rUQO2("5-12"); ?::rUQO2("12+") :- hypoxiaInO2("Severe").
?::gruntingReport :- grunting.
?::gruntingReport :- \+grunting.

query(lowerBodyO2("<5")).
