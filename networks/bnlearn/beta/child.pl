%% ProbLog program: PGM 1
%% Created on 2021-01-28 15:58:34.683263

beta(13,3)::birthAsphyxia.
dir(10)::disease("PFC"); dir(27)::disease("TGA"); dir(22)::disease("Fallot"); dir(12)::disease("PAIVS"); dir(27)::disease("TAPVD"); dir(26)::disease("Lung") :- birthAsphyxia.
dir(13)::disease("PFC"); dir(26)::disease("TGA"); dir(21)::disease("Fallot"); dir(15)::disease("PAIVS"); dir(6)::disease("TAPVD"); dir(9)::disease("Lung") :- \+birthAsphyxia.
dir(13)::cardiacMixing("None"); dir(11)::cardiacMixing("Mild"); dir(19)::cardiacMixing("Complete"); dir(3)::cardiacMixing("Transp.") :- disease("PFC").
dir(28)::cardiacMixing("None"); dir(2)::cardiacMixing("Mild"); dir(30)::cardiacMixing("Complete"); dir(13)::cardiacMixing("Transp.") :- disease("TGA").
dir(29)::cardiacMixing("None"); dir(30)::cardiacMixing("Mild"); dir(4)::cardiacMixing("Complete"); dir(14)::cardiacMixing("Transp.") :- disease("Fallot").
dir(10)::cardiacMixing("None"); dir(25)::cardiacMixing("Mild"); dir(20)::cardiacMixing("Complete"); dir(16)::cardiacMixing("Transp.") :- disease("PAIVS").
dir(25)::cardiacMixing("None"); dir(26)::cardiacMixing("Mild"); dir(23)::cardiacMixing("Complete"); dir(24)::cardiacMixing("Transp.") :- disease("TAPVD").
dir(21)::cardiacMixing("None"); dir(30)::cardiacMixing("Mild"); dir(22)::cardiacMixing("Complete"); dir(28)::cardiacMixing("Transp.") :- disease("Lung").
beta(28,28)::sick :- disease("PFC").
beta(9,9)::sick :- disease("TGA").
beta(13,12)::sick :- disease("Fallot").
beta(12,25)::sick :- disease("PAIVS").
beta(9,1)::sick :- disease("TAPVD").
beta(27,1)::sick :- disease("Lung").
beta(23,10)::lVH :- disease("PFC").
beta(11,5)::lVH :- disease("TGA").
beta(11,5)::lVH :- disease("Fallot").
beta(11,8)::lVH :- disease("PAIVS").
beta(3,2)::lVH :- disease("TAPVD").
beta(23,16)::lVH :- disease("Lung").
dir(12)::lungFlow("Normal"); dir(3)::lungFlow("Low"); dir(29)::lungFlow("High") :- disease("PFC").
dir(6)::lungFlow("Normal"); dir(24)::lungFlow("Low"); dir(18)::lungFlow("High") :- disease("TGA").
dir(21)::lungFlow("Normal"); dir(23)::lungFlow("Low"); dir(20)::lungFlow("High") :- disease("Fallot").
dir(11)::lungFlow("Normal"); dir(28)::lungFlow("Low"); dir(2)::lungFlow("High") :- disease("PAIVS").
dir(1)::lungFlow("Normal"); dir(21)::lungFlow("Low"); dir(18)::lungFlow("High") :- disease("TAPVD").
dir(19)::lungFlow("Normal"); dir(1)::lungFlow("Low"); dir(6)::lungFlow("High") :- disease("Lung").
dir(8)::lungParench("Normal"); dir(30)::lungParench("Congested"); dir(29)::lungParench("Abnormal") :- disease("PFC").
dir(29)::lungParench("Normal"); dir(16)::lungParench("Congested"); dir(25)::lungParench("Abnormal") :- disease("TGA").
dir(11)::lungParench("Normal"); dir(19)::lungParench("Congested"); dir(6)::lungParench("Abnormal") :- disease("Fallot").
dir(29)::lungParench("Normal"); dir(22)::lungParench("Congested"); dir(26)::lungParench("Abnormal") :- disease("PAIVS").
dir(11)::lungParench("Normal"); dir(13)::lungParench("Congested"); dir(30)::lungParench("Abnormal") :- disease("TAPVD").
dir(7)::lungParench("Normal"); dir(24)::lungParench("Congested"); dir(6)::lungParench("Abnormal") :- disease("Lung").
dir(16)::ductFlow("Lt_to_Rt"); dir(16)::ductFlow("None"); dir(19)::ductFlow("Rt_to_Lt") :- disease("PFC").
dir(14)::ductFlow("Lt_to_Rt"); dir(26)::ductFlow("None"); dir(2)::ductFlow("Rt_to_Lt") :- disease("TGA").
dir(27)::ductFlow("Lt_to_Rt"); dir(14)::ductFlow("None"); dir(18)::ductFlow("Rt_to_Lt") :- disease("Fallot").
dir(20)::ductFlow("Lt_to_Rt"); dir(18)::ductFlow("None"); dir(18)::ductFlow("Rt_to_Lt") :- disease("PAIVS").
dir(2)::ductFlow("Lt_to_Rt"); dir(24)::ductFlow("None"); dir(30)::ductFlow("Rt_to_Lt") :- disease("TAPVD").
dir(20)::ductFlow("Lt_to_Rt"); dir(21)::ductFlow("None"); dir(29)::ductFlow("Rt_to_Lt") :- disease("Lung").
dir(26)::hypDistrib("Equal"); dir(26)::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("None").
dir(21)::hypDistrib("Equal"); dir(13)::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Mild").
dir(17)::hypDistrib("Equal"); dir(1)::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Complete").
dir(23)::hypDistrib("Equal"); dir(10)::hypDistrib("Unequal") :- ductFlow("Lt_to_Rt"), cardiacMixing("Transp.").
dir(16)::hypDistrib("Equal"); dir(30)::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("None").
dir(12)::hypDistrib("Equal"); dir(21)::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Mild").
dir(27)::hypDistrib("Equal"); dir(10)::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Complete").
dir(9)::hypDistrib("Equal"); dir(6)::hypDistrib("Unequal") :- ductFlow("None"), cardiacMixing("Transp.").
dir(25)::hypDistrib("Equal"); dir(11)::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("None").
dir(19)::hypDistrib("Equal"); dir(23)::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Mild").
dir(11)::hypDistrib("Equal"); dir(15)::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Complete").
dir(29)::hypDistrib("Equal"); dir(10)::hypDistrib("Unequal") :- ductFlow("Rt_to_Lt"), cardiacMixing("Transp.").
beta(17,30)::grunting :- lungParench("Normal"), sick.
beta(3,8)::grunting :- lungParench("Normal"), \+sick.
beta(19,26)::grunting :- lungParench("Congested"), sick.
beta(27,19)::grunting :- lungParench("Congested"), \+sick.
beta(1,24)::grunting :- lungParench("Abnormal"), sick.
beta(16,2)::grunting :- lungParench("Abnormal"), \+sick.
dir(25)::age("0-3_days"); dir(19)::age("4-10_days"); dir(16)::age("11-30_days") :- disease("PFC"), sick.
dir(21)::age("0-3_days"); dir(6)::age("4-10_days"); dir(10)::age("11-30_days") :- disease("PFC"), \+sick.
dir(11)::age("0-3_days"); dir(6)::age("4-10_days"); dir(30)::age("11-30_days") :- disease("TGA"), sick.
dir(21)::age("0-3_days"); dir(8)::age("4-10_days"); dir(21)::age("11-30_days") :- disease("TGA"), \+sick.
dir(27)::age("0-3_days"); dir(28)::age("4-10_days"); dir(2)::age("11-30_days") :- disease("Fallot"), sick.
dir(16)::age("0-3_days"); dir(1)::age("4-10_days"); dir(30)::age("11-30_days") :- disease("Fallot"), \+sick.
dir(26)::age("0-3_days"); dir(30)::age("4-10_days"); dir(26)::age("11-30_days") :- disease("PAIVS"), sick.
dir(7)::age("0-3_days"); dir(1)::age("4-10_days"); dir(21)::age("11-30_days") :- disease("PAIVS"), \+sick.
dir(13)::age("0-3_days"); dir(29)::age("4-10_days"); dir(3)::age("11-30_days") :- disease("TAPVD"), sick.
dir(7)::age("0-3_days"); dir(29)::age("4-10_days"); dir(1)::age("11-30_days") :- disease("TAPVD"), \+sick.
dir(18)::age("0-3_days"); dir(20)::age("4-10_days"); dir(3)::age("11-30_days") :- disease("Lung"), sick.
dir(7)::age("0-3_days"); dir(19)::age("4-10_days"); dir(1)::age("11-30_days") :- disease("Lung"), \+sick.
dir(19)::cO2("Normal"); dir(26)::cO2("Low"); dir(11)::cO2("High") :- lungParench("Normal").
dir(2)::cO2("Normal"); dir(13)::cO2("Low"); dir(4)::cO2("High") :- lungParench("Congested").
dir(14)::cO2("Normal"); dir(4)::cO2("Low"); dir(27)::cO2("High") :- lungParench("Abnormal").
dir(4)::hypoxiaInO2("Mild"); dir(10)::hypoxiaInO2("Moderate"); dir(26)::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Normal").
dir(3)::hypoxiaInO2("Mild"); dir(11)::hypoxiaInO2("Moderate"); dir(26)::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Congested").
dir(9)::hypoxiaInO2("Mild"); dir(20)::hypoxiaInO2("Moderate"); dir(5)::hypoxiaInO2("Severe") :- cardiacMixing("None"), lungParench("Abnormal").
dir(9)::hypoxiaInO2("Mild"); dir(4)::hypoxiaInO2("Moderate"); dir(8)::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Normal").
dir(15)::hypoxiaInO2("Mild"); dir(30)::hypoxiaInO2("Moderate"); dir(21)::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Congested").
dir(11)::hypoxiaInO2("Mild"); dir(17)::hypoxiaInO2("Moderate"); dir(12)::hypoxiaInO2("Severe") :- cardiacMixing("Mild"), lungParench("Abnormal").
dir(20)::hypoxiaInO2("Mild"); dir(6)::hypoxiaInO2("Moderate"); dir(16)::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Normal").
dir(13)::hypoxiaInO2("Mild"); dir(19)::hypoxiaInO2("Moderate"); dir(16)::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Congested").
dir(28)::hypoxiaInO2("Mild"); dir(23)::hypoxiaInO2("Moderate"); dir(1)::hypoxiaInO2("Severe") :- cardiacMixing("Complete"), lungParench("Abnormal").
dir(23)::hypoxiaInO2("Mild"); dir(4)::hypoxiaInO2("Moderate"); dir(18)::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Normal").
dir(27)::hypoxiaInO2("Mild"); dir(8)::hypoxiaInO2("Moderate"); dir(12)::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Congested").
dir(3)::hypoxiaInO2("Mild"); dir(22)::hypoxiaInO2("Moderate"); dir(6)::hypoxiaInO2("Severe") :- cardiacMixing("Transp."), lungParench("Abnormal").
beta(6,21)::lVHreport :- lVH.
beta(30,13)::lVHreport :- \+lVH.
dir(4)::chestXray("Normal"); dir(23)::chestXray("Oligaemic"); dir(1)::chestXray("Plethoric"); dir(24)::chestXray("Grd_Glass"); dir(4)::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Normal").
dir(19)::chestXray("Normal"); dir(8)::chestXray("Oligaemic"); dir(11)::chestXray("Plethoric"); dir(12)::chestXray("Grd_Glass"); dir(3)::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("Low").
dir(26)::chestXray("Normal"); dir(2)::chestXray("Oligaemic"); dir(23)::chestXray("Plethoric"); dir(15)::chestXray("Grd_Glass"); dir(15)::chestXray("Asy/Patch") :- lungParench("Normal"), lungFlow("High").
dir(4)::chestXray("Normal"); dir(16)::chestXray("Oligaemic"); dir(4)::chestXray("Plethoric"); dir(6)::chestXray("Grd_Glass"); dir(30)::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Normal").
dir(5)::chestXray("Normal"); dir(18)::chestXray("Oligaemic"); dir(1)::chestXray("Plethoric"); dir(6)::chestXray("Grd_Glass"); dir(3)::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("Low").
dir(9)::chestXray("Normal"); dir(30)::chestXray("Oligaemic"); dir(28)::chestXray("Plethoric"); dir(2)::chestXray("Grd_Glass"); dir(30)::chestXray("Asy/Patch") :- lungParench("Congested"), lungFlow("High").
dir(19)::chestXray("Normal"); dir(6)::chestXray("Oligaemic"); dir(15)::chestXray("Plethoric"); dir(28)::chestXray("Grd_Glass"); dir(26)::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Normal").
dir(10)::chestXray("Normal"); dir(28)::chestXray("Oligaemic"); dir(12)::chestXray("Plethoric"); dir(11)::chestXray("Grd_Glass"); dir(17)::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("Low").
dir(15)::chestXray("Normal"); dir(1)::chestXray("Oligaemic"); dir(6)::chestXray("Plethoric"); dir(18)::chestXray("Grd_Glass"); dir(4)::chestXray("Asy/Patch") :- lungParench("Abnormal"), lungFlow("High").
dir(21)::xrayReport("Normal"); dir(6)::xrayReport("Oligaemic"); dir(24)::xrayReport("Plethoric"); dir(19)::xrayReport("Grd_Glass"); dir(4)::xrayReport("Asy/Patchy") :- chestXray("Normal").
dir(1)::xrayReport("Normal"); dir(20)::xrayReport("Oligaemic"); dir(29)::xrayReport("Plethoric"); dir(25)::xrayReport("Grd_Glass"); dir(12)::xrayReport("Asy/Patchy") :- chestXray("Oligaemic").
dir(21)::xrayReport("Normal"); dir(17)::xrayReport("Oligaemic"); dir(20)::xrayReport("Plethoric"); dir(2)::xrayReport("Grd_Glass"); dir(13)::xrayReport("Asy/Patchy") :- chestXray("Plethoric").
dir(3)::xrayReport("Normal"); dir(12)::xrayReport("Oligaemic"); dir(10)::xrayReport("Plethoric"); dir(13)::xrayReport("Grd_Glass"); dir(17)::xrayReport("Asy/Patchy") :- chestXray("Grd_Glass").
dir(18)::xrayReport("Normal"); dir(21)::xrayReport("Oligaemic"); dir(1)::xrayReport("Plethoric"); dir(21)::xrayReport("Grd_Glass"); dir(22)::xrayReport("Asy/Patchy") :- chestXray("Asy/Patch").
dir(30)::cO2Report("<7.5"); dir(10)::cO2Report(">=7.5") :- cO2("Normal").
dir(13)::cO2Report("<7.5"); dir(13)::cO2Report(">=7.5") :- cO2("Low").
dir(10)::cO2Report("<7.5"); dir(20)::cO2Report(">=7.5") :- cO2("High").
dir(17)::lowerBodyO2("<5"); dir(13)::lowerBodyO2("5-12"); dir(24)::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Mild").
dir(3)::lowerBodyO2("<5"); dir(6)::lowerBodyO2("5-12"); dir(9)::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Moderate").
dir(8)::lowerBodyO2("<5"); dir(30)::lowerBodyO2("5-12"); dir(2)::lowerBodyO2("12+") :- hypDistrib("Equal"), hypoxiaInO2("Severe").
dir(17)::lowerBodyO2("<5"); dir(20)::lowerBodyO2("5-12"); dir(22)::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Mild").
dir(13)::lowerBodyO2("<5"); dir(9)::lowerBodyO2("5-12"); dir(6)::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Moderate").
dir(16)::lowerBodyO2("<5"); dir(11)::lowerBodyO2("5-12"); dir(24)::lowerBodyO2("12+") :- hypDistrib("Unequal"), hypoxiaInO2("Severe").
dir(4)::rUQO2("<5"); dir(15)::rUQO2("5-12"); dir(14)::rUQO2("12+") :- hypoxiaInO2("Mild").
dir(16)::rUQO2("<5"); dir(22)::rUQO2("5-12"); dir(25)::rUQO2("12+") :- hypoxiaInO2("Moderate").
dir(22)::rUQO2("<5"); dir(16)::rUQO2("5-12"); dir(28)::rUQO2("12+") :- hypoxiaInO2("Severe").
beta(3,4)::gruntingReport :- grunting.
beta(6,15)::gruntingReport :- \+grunting.
