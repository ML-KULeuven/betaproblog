%% ProbLog program: PGM 1
%% Created on 2021-01-28 15:58:34.683263

0.1::birthAsphyxia.
0.2::disease("PFC"); 0.3::disease("TGA"); 0.25::disease("Fallot"); 0.15::disease("PAIVS"); 0.05::disease("TAPVD"); 0.05::disease("Lung") :- birthAsphyxia.
0.03061224::disease("PFC"); 0.33673469::disease("TGA"); 0.29591837::disease("Fallot"); 0.23469388::disease("PAIVS"); 0.05102041::disease("TAPVD"); 0.05102041::disease("Lung") :- \+birthAsphyxia.
0.4::cardiacMixing("None"); 0.43::cardiacMixing("Mild"); 0.15::cardiacMixing("Complete"); 0.02::cardiacMixing("Transp.") :- disease("PFC").
0.02::cardiacMixing("None"); 0.09::cardiacMixing("Mild"); 0.09::cardiacMixing("Complete"); 0.8::cardiacMixing("Transp.") :- disease("TGA").
0.02::cardiacMixing("None"); 0.16::cardiacMixing("Mild"); 0.8::cardiacMixing("Complete"); 0.02::cardiacMixing("Transp.") :- disease("Fallot").
0.01::cardiacMixing("None"); 0.02::cardiacMixing("Mild"); 0.95::cardiacMixing("Complete"); 0.02::cardiacMixing("Transp.") :- disease("PAIVS").
0.01::cardiacMixing("None"); 0.03::cardiacMixing("Mild"); 0.95::cardiacMixing("Complete"); 0.01::cardiacMixing("Transp.") :- disease("TAPVD").
0.4::cardiacMixing("None"); 0.53::cardiacMixing("Mild"); 0.05::cardiacMixing("Complete"); 0.02::cardiacMixing("Transp.") :- disease("Lung").
0.4::sick :- disease("PFC").
0.3::sick :- disease("TGA").
0.2::sick :- disease("Fallot").
0.3::sick :- disease("PAIVS").
0.7::sick :- disease("TAPVD").
0.7::sick :- disease("Lung").
0.1::lVH :- disease("PFC").
0.1::lVH :- disease("TGA").
0.1::lVH :- disease("Fallot").
0.9::lVH :- disease("PAIVS").
0.05::lVH :- disease("TAPVD").
0.1::lVH :- disease("Lung").
0.3::lungFlow("Normal"); 0.65::lungFlow("Low"); 0.05::lungFlow("High") :- disease("PFC").
0.2::lungFlow("Normal"); 0.05::lungFlow("Low"); 0.75::lungFlow("High") :- disease("TGA").
0.15::lungFlow("Normal"); 0.8::lungFlow("Low"); 0.05::lungFlow("High") :- disease("Fallot").
0.1::lungFlow("Normal"); 0.85::lungFlow("Low"); 0.05::lungFlow("High") :- disease("PAIVS").
0.3::lungFlow("Normal"); 0.1::lungFlow("Low"); 0.6::lungFlow("High") :- disease("TAPVD").
0.7::lungFlow("Normal"); 0.1::lungFlow("Low"); 0.2::lungFlow("High") :- disease("Lung").
0.6::lungParench("Normal"); 0.1::lungParench("Congested"); 0.3::lungParench("Abnormal") :- disease("PFC").
0.8::lungParench("Normal"); 0.05::lungParench("Congested"); 0.15::lungParench("Abnormal") :- disease("TGA").
0.8::lungParench("Normal"); 0.05::lungParench("Congested"); 0.15::lungParench("Abnormal") :- disease("Fallot").
0.8::lungParench("Normal"); 0.05::lungParench("Congested"); 0.15::lungParench("Abnormal") :- disease("PAIVS").
0.1::lungParench("Normal"); 0.6::lungParench("Congested"); 0.3::lungParench("Abnormal") :- disease("TAPVD").
0.03::lungParench("Normal"); 0.25::lungParench("Congested"); 0.72::lungParench("Abnormal") :- disease("Lung").
0.15::ductFlow("Lt_to_Rt"); 0.05::ductFlow("None"); 0.8::ductFlow("Rt_to_Lt") :- disease("PFC").
0.1::ductFlow("Lt_to_Rt"); 0.8::ductFlow("None"); 0.1::ductFlow("Rt_to_Lt") :- disease("TGA").
0.8::ductFlow("Lt_to_Rt"); 0.2::ductFlow("None"); 0.0::ductFlow("Rt_to_Lt") :- disease("Fallot").
1.0::ductFlow("Lt_to_Rt"); 0.0::ductFlow("None"); 0.0::ductFlow("Rt_to_Lt") :- disease("PAIVS").
0.33::ductFlow("Lt_to_Rt"); 0.33::ductFlow("None"); 0.34::ductFlow("Rt_to_Lt") :- disease("TAPVD").
0.2::ductFlow("Lt_to_Rt"); 0.4::ductFlow("None"); 0.4::ductFlow("Rt_to_Lt") :- disease("Lung").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("None").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Mild").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Complete").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Transp.").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("None").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Mild").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Complete").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Transp.").
0.05::hypDistrib("Equal"); 0.95::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("None").
0.5::hypDistrib("Equal"); 0.5::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Mild").
0.95::hypDistrib("Equal"); 0.05::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Complete").
0.5::hypDistrib("Equal"); 0.5::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Transp.").
0.2::grunting :- lungParench("Normal"), sick.
0.05::grunting :- lungParench("Normal"), \+sick.
0.4::grunting :- lungParench("Congested"), sick.
0.2::grunting :- lungParench("Congested"), \+sick.
0.8::grunting :- lungParench("Abnormal"), sick.
0.6::grunting :- lungParench("Abnormal"), \+sick.
0.95::age("0-3_days"); 0.03::age("4-10_days"); 0.02::age("11-30_days") :- disease("PFC"), sick.
0.85::age("0-3_days"); 0.1::age("4-10_days"); 0.05::age("11-30_days") :- disease("PFC"), \+sick.
0.8::age("0-3_days"); 0.15::age("4-10_days"); 0.05::age("11-30_days") :- disease("TGA"), sick.
0.7::age("0-3_days"); 0.2::age("4-10_days"); 0.1::age("11-30_days") :- disease("TGA"), \+sick.
0.7::age("0-3_days"); 0.15::age("4-10_days"); 0.15::age("11-30_days") :- disease("Fallot"), sick.
0.25::age("0-3_days"); 0.25::age("4-10_days"); 0.5::age("11-30_days") :- disease("Fallot"), \+sick.
0.8::age("0-3_days"); 0.15::age("4-10_days"); 0.05::age("11-30_days") :- disease("PAIVS"), sick.
0.8::age("0-3_days"); 0.15::age("4-10_days"); 0.05::age("11-30_days") :- disease("PAIVS"), \+sick.
0.8::age("0-3_days"); 0.15::age("4-10_days"); 0.05::age("11-30_days") :- disease("TAPVD"), sick.
0.7::age("0-3_days"); 0.2::age("4-10_days"); 0.1::age("11-30_days") :- disease("TAPVD"), \+sick.
0.9::age("0-3_days"); 0.08::age("4-10_days"); 0.02::age("11-30_days") :- disease("Lung"), sick.
0.8::age("0-3_days"); 0.15::age("4-10_days"); 0.05::age("11-30_days") :- disease("Lung"), \+sick.
0.8::cO2("Normal"); 0.1::cO2("Low"); 0.1::cO2("High") :- lungParench("Normal").
0.65::cO2("Normal"); 0.05::cO2("Low"); 0.3::cO2("High") :- lungParench("Congested").
0.45::cO2("Normal"); 0.05::cO2("Low"); 0.5::cO2("High") :- lungParench("Abnormal").
0.93::hypoxiaInO2("Mild"); 0.05::hypoxiaInO2("Moderate"); 0.02::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Normal").
0.15::hypoxiaInO2("Mild"); 0.8::hypoxiaInO2("Moderate"); 0.05::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Congested").
0.7::hypoxiaInO2("Mild"); 0.2::hypoxiaInO2("Moderate"); 0.1::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Abnormal").
0.1::hypoxiaInO2("Mild"); 0.8::hypoxiaInO2("Moderate"); 0.1::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Normal").
0.1::hypoxiaInO2("Mild"); 0.75::hypoxiaInO2("Moderate"); 0.15::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Congested").
0.1::hypoxiaInO2("Mild"); 0.65::hypoxiaInO2("Moderate"); 0.25::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Abnormal").
0.1::hypoxiaInO2("Mild"); 0.7::hypoxiaInO2("Moderate"); 0.2::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Normal").
0.05::hypoxiaInO2("Mild"); 0.65::hypoxiaInO2("Moderate"); 0.3::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Congested").
0.1::hypoxiaInO2("Mild"); 0.5::hypoxiaInO2("Moderate"); 0.4::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Abnormal").
0.02::hypoxiaInO2("Mild"); 0.18::hypoxiaInO2("Moderate"); 0.8::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Normal").
0.1::hypoxiaInO2("Mild"); 0.3::hypoxiaInO2("Moderate"); 0.6::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Congested").
0.02::hypoxiaInO2("Mild"); 0.18::hypoxiaInO2("Moderate"); 0.8::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Abnormal").
0.9::lVHreport :- lVH.
0.05::lVHreport :- \+lVH.
0.9::chestXray("Normal"); 0.03::chestXray("Oligaemic"); 0.03::chestXray("Plethoric"); 0.01::chestXray("Grd_Glass"); 0.03::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Normal").
0.14::chestXray("Normal"); 0.8::chestXray("Oligaemic"); 0.02::chestXray("Plethoric"); 0.02::chestXray("Grd_Glass"); 0.02::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Low").
0.15::chestXray("Normal"); 0.01::chestXray("Oligaemic"); 0.79::chestXray("Plethoric"); 0.04::chestXray("Grd_Glass"); 0.01::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("High").
0.05::chestXray("Normal"); 0.02::chestXray("Oligaemic"); 0.15::chestXray("Plethoric"); 0.7::chestXray("Grd_Glass"); 0.08::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Normal").
0.05::chestXray("Normal"); 0.22::chestXray("Oligaemic"); 0.08::chestXray("Plethoric"); 0.5::chestXray("Grd_Glass"); 0.15::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Low").
0.05::chestXray("Normal"); 0.02::chestXray("Oligaemic"); 0.4::chestXray("Plethoric"); 0.4::chestXray("Grd_Glass"); 0.13::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("High").
0.05::chestXray("Normal"); 0.05::chestXray("Oligaemic"); 0.05::chestXray("Plethoric"); 0.05::chestXray("Grd_Glass"); 0.8::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Normal").
0.05::chestXray("Normal"); 0.15::chestXray("Oligaemic"); 0.05::chestXray("Plethoric"); 0.05::chestXray("Grd_Glass"); 0.7::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Low").
0.24::chestXray("Normal"); 0.33::chestXray("Oligaemic"); 0.03::chestXray("Plethoric"); 0.34::chestXray("Grd_Glass"); 0.06::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("High").
0.8::xrayReport("Normal"); 0.06::xrayReport("Oligaemic"); 0.06::xrayReport("Plethoric"); 0.02::xrayReport("Grd_Glass"); 0.06::xrayReport("Asy/Patchy") :- chestXray("Normal").
0.1::xrayReport("Normal"); 0.8::xrayReport("Oligaemic"); 0.02::xrayReport("Plethoric"); 0.02::xrayReport("Grd_Glass"); 0.06::xrayReport("Asy/Patchy") :- chestXray("Oligaemic").
0.1::xrayReport("Normal"); 0.02::xrayReport("Oligaemic"); 0.8::xrayReport("Plethoric"); 0.02::xrayReport("Grd_Glass"); 0.06::xrayReport("Asy/Patchy") :- chestXray("Plethoric").
0.08::xrayReport("Normal"); 0.02::xrayReport("Oligaemic"); 0.1::xrayReport("Plethoric"); 0.6::xrayReport("Grd_Glass"); 0.2::xrayReport("Asy/Patchy") :- chestXray("Grd_Glass").
0.08::xrayReport("Normal"); 0.02::xrayReport("Oligaemic"); 0.1::xrayReport("Plethoric"); 0.1::xrayReport("Grd_Glass"); 0.7::xrayReport("Asy/Patchy") :- chestXray("Asy/Patch").
0.9::cO2Report("<7.5"); 0.1::cO2Report(">=7.5") :- cO2("Normal").
0.9::cO2Report("<7.5"); 0.1::cO2Report(">=7.5") :- cO2("Low").
0.1::cO2Report("<7.5"); 0.9::cO2Report(">=7.5") :- cO2("High").
0.1::lowerBodyO2("<5"); 0.3::lowerBodyO2("5-12"); 0.6::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Mild").
0.3::lowerBodyO2("<5"); 0.6::lowerBodyO2("5-12"); 0.1::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Moderate").
0.5::lowerBodyO2("<5"); 0.4::lowerBodyO2("5-12"); 0.1::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Severe").
0.4::lowerBodyO2("<5"); 0.5::lowerBodyO2("5-12"); 0.1::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Mild").
0.5::lowerBodyO2("<5"); 0.45::lowerBodyO2("5-12"); 0.05::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Moderate").
0.6::lowerBodyO2("<5"); 0.35::lowerBodyO2("5-12"); 0.05::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Severe").
0.1::rUQO2("<5"); 0.3::rUQO2("5-12"); 0.6::rUQO2("12+") :- hypoxiaInO2("Mild").
0.3::rUQO2("<5"); 0.6::rUQO2("5-12"); 0.1::rUQO2("12+") :- hypoxiaInO2("Moderate").
0.5::rUQO2("<5"); 0.4::rUQO2("5-12"); 0.1::rUQO2("12+") :- hypoxiaInO2("Severe").
0.8::gruntingReport :- grunting.
0.1::gruntingReport :- \+grunting.
