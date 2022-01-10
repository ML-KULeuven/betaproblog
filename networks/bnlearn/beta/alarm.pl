%% ProbLog program: PGM 1
%% Created on 2021-01-28 15:58:48.183092

dir(19)::mINVOLSET("LOW"); dir(19)::mINVOLSET("NORMAL"); dir(29)::mINVOLSET("HIGH").
beta(15,25)::hYPOVOLEMIA.
dir(17)::iNTUBATION("NORMAL"); dir(10)::iNTUBATION("ESOPHAGEAL"); dir(2)::iNTUBATION("ONESIDED").
beta(7,20)::eRRLOWOUTPUT.
beta(9,25)::aNAPHYLAXIS.
beta(2,20)::pULMEMBOLUS.
beta(26,23)::kINKEDTUBE.
beta(12,14)::lVFAILURE.
dir(9)::fIO2("LOW"); dir(21)::fIO2("NORMAL").
beta(5,12)::eRRCAUTER.
beta(6,5)::iNSUFFANESTH.
beta(3,29)::dISCONNECT.
dir(23)::sTROKEVOLUME("LOW"); dir(10)::sTROKEVOLUME("NORMAL"); dir(5)::sTROKEVOLUME("HIGH") :- hYPOVOLEMIA, lVFAILURE.
dir(26)::sTROKEVOLUME("LOW"); dir(9)::sTROKEVOLUME("NORMAL"); dir(1)::sTROKEVOLUME("HIGH") :- hYPOVOLEMIA, \+lVFAILURE.
dir(1)::sTROKEVOLUME("LOW"); dir(17)::sTROKEVOLUME("NORMAL"); dir(10)::sTROKEVOLUME("HIGH") :- \+hYPOVOLEMIA, lVFAILURE.
dir(18)::sTROKEVOLUME("LOW"); dir(9)::sTROKEVOLUME("NORMAL"); dir(28)::sTROKEVOLUME("HIGH") :- \+hYPOVOLEMIA, \+lVFAILURE.
dir(27)::sHUNT("NORMAL"); dir(9)::sHUNT("HIGH") :- iNTUBATION("NORMAL"), pULMEMBOLUS.
dir(17)::sHUNT("NORMAL"); dir(12)::sHUNT("HIGH") :- iNTUBATION("NORMAL"), \+pULMEMBOLUS.
dir(29)::sHUNT("NORMAL"); dir(12)::sHUNT("HIGH") :- iNTUBATION("ESOPHAGEAL"), pULMEMBOLUS.
dir(18)::sHUNT("NORMAL"); dir(15)::sHUNT("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+pULMEMBOLUS.
dir(7)::sHUNT("NORMAL"); dir(7)::sHUNT("HIGH") :- iNTUBATION("ONESIDED"), pULMEMBOLUS.
dir(5)::sHUNT("NORMAL"); dir(7)::sHUNT("HIGH") :- iNTUBATION("ONESIDED"), \+pULMEMBOLUS.
dir(3)::tPR("LOW"); dir(17)::tPR("NORMAL"); dir(1)::tPR("HIGH") :- aNAPHYLAXIS.
dir(25)::tPR("LOW"); dir(11)::tPR("NORMAL"); dir(3)::tPR("HIGH") :- \+aNAPHYLAXIS.
beta(2,27)::hISTORY :- lVFAILURE.
beta(26,30)::hISTORY :- \+lVFAILURE.
dir(29)::vENTMACH("ZERO"); dir(24)::vENTMACH("LOW"); dir(24)::vENTMACH("NORMAL"); dir(24)::vENTMACH("HIGH") :- mINVOLSET("LOW").
dir(2)::vENTMACH("ZERO"); dir(1)::vENTMACH("LOW"); dir(24)::vENTMACH("NORMAL"); dir(12)::vENTMACH("HIGH") :- mINVOLSET("NORMAL").
dir(5)::vENTMACH("ZERO"); dir(6)::vENTMACH("LOW"); dir(23)::vENTMACH("NORMAL"); dir(28)::vENTMACH("HIGH") :- mINVOLSET("HIGH").
dir(27)::lVEDVOLUME("LOW"); dir(10)::lVEDVOLUME("NORMAL"); dir(20)::lVEDVOLUME("HIGH") :- hYPOVOLEMIA, lVFAILURE.
dir(10)::lVEDVOLUME("LOW"); dir(14)::lVEDVOLUME("NORMAL"); dir(30)::lVEDVOLUME("HIGH") :- hYPOVOLEMIA, \+lVFAILURE.
dir(9)::lVEDVOLUME("LOW"); dir(21)::lVEDVOLUME("NORMAL"); dir(9)::lVEDVOLUME("HIGH") :- \+hYPOVOLEMIA, lVFAILURE.
dir(24)::lVEDVOLUME("LOW"); dir(20)::lVEDVOLUME("NORMAL"); dir(4)::lVEDVOLUME("HIGH") :- \+hYPOVOLEMIA, \+lVFAILURE.
dir(6)::pAP("LOW"); dir(19)::pAP("NORMAL"); dir(6)::pAP("HIGH") :- pULMEMBOLUS.
dir(20)::pAP("LOW"); dir(26)::pAP("NORMAL"); dir(18)::pAP("HIGH") :- \+pULMEMBOLUS.
dir(29)::vENTTUBE("ZERO"); dir(14)::vENTTUBE("LOW"); dir(27)::vENTTUBE("NORMAL"); dir(22)::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("ZERO").
dir(6)::vENTTUBE("ZERO"); dir(27)::vENTTUBE("LOW"); dir(4)::vENTTUBE("NORMAL"); dir(16)::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("LOW").
dir(20)::vENTTUBE("ZERO"); dir(26)::vENTTUBE("LOW"); dir(1)::vENTTUBE("NORMAL"); dir(25)::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("NORMAL").
dir(26)::vENTTUBE("ZERO"); dir(26)::vENTTUBE("LOW"); dir(28)::vENTTUBE("NORMAL"); dir(13)::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("HIGH").
dir(7)::vENTTUBE("ZERO"); dir(29)::vENTTUBE("LOW"); dir(23)::vENTTUBE("NORMAL"); dir(14)::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("ZERO").
dir(26)::vENTTUBE("ZERO"); dir(26)::vENTTUBE("LOW"); dir(20)::vENTTUBE("NORMAL"); dir(7)::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("LOW").
dir(24)::vENTTUBE("ZERO"); dir(24)::vENTTUBE("LOW"); dir(7)::vENTTUBE("NORMAL"); dir(23)::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("NORMAL").
dir(11)::vENTTUBE("ZERO"); dir(5)::vENTTUBE("LOW"); dir(17)::vENTTUBE("NORMAL"); dir(1)::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("HIGH").
dir(11)::pCWP("LOW"); dir(7)::pCWP("NORMAL"); dir(26)::pCWP("HIGH") :- lVEDVOLUME("LOW").
dir(10)::pCWP("LOW"); dir(1)::pCWP("NORMAL"); dir(6)::pCWP("HIGH") :- lVEDVOLUME("NORMAL").
dir(3)::pCWP("LOW"); dir(18)::pCWP("NORMAL"); dir(11)::pCWP("HIGH") :- lVEDVOLUME("HIGH").
dir(21)::cVP("LOW"); dir(20)::cVP("NORMAL"); dir(6)::cVP("HIGH") :- lVEDVOLUME("LOW").
dir(28)::cVP("LOW"); dir(15)::cVP("NORMAL"); dir(23)::cVP("HIGH") :- lVEDVOLUME("NORMAL").
dir(29)::cVP("LOW"); dir(9)::cVP("NORMAL"); dir(1)::cVP("HIGH") :- lVEDVOLUME("HIGH").
dir(15)::pRESS("ZERO"); dir(21)::pRESS("LOW"); dir(19)::pRESS("NORMAL"); dir(13)::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("ZERO").
dir(7)::pRESS("ZERO"); dir(10)::pRESS("LOW"); dir(29)::pRESS("NORMAL"); dir(10)::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("LOW").
dir(14)::pRESS("ZERO"); dir(2)::pRESS("LOW"); dir(11)::pRESS("NORMAL"); dir(14)::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(3)::pRESS("ZERO"); dir(27)::pRESS("LOW"); dir(15)::pRESS("NORMAL"); dir(4)::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("HIGH").
dir(12)::pRESS("ZERO"); dir(7)::pRESS("LOW"); dir(10)::pRESS("NORMAL"); dir(28)::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(24)::pRESS("ZERO"); dir(29)::pRESS("LOW"); dir(14)::pRESS("NORMAL"); dir(14)::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(6)::pRESS("ZERO"); dir(23)::pRESS("LOW"); dir(15)::pRESS("NORMAL"); dir(8)::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(23)::pRESS("ZERO"); dir(23)::pRESS("LOW"); dir(13)::pRESS("NORMAL"); dir(23)::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(18)::pRESS("ZERO"); dir(17)::pRESS("LOW"); dir(1)::pRESS("NORMAL"); dir(14)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("ZERO").
dir(30)::pRESS("ZERO"); dir(25)::pRESS("LOW"); dir(23)::pRESS("NORMAL"); dir(13)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("LOW").
dir(9)::pRESS("ZERO"); dir(16)::pRESS("LOW"); dir(3)::pRESS("NORMAL"); dir(17)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(5)::pRESS("ZERO"); dir(16)::pRESS("LOW"); dir(17)::pRESS("NORMAL"); dir(10)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("HIGH").
dir(16)::pRESS("ZERO"); dir(9)::pRESS("LOW"); dir(14)::pRESS("NORMAL"); dir(1)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(6)::pRESS("ZERO"); dir(12)::pRESS("LOW"); dir(13)::pRESS("NORMAL"); dir(25)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(2)::pRESS("ZERO"); dir(27)::pRESS("LOW"); dir(7)::pRESS("NORMAL"); dir(22)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(9)::pRESS("ZERO"); dir(28)::pRESS("LOW"); dir(3)::pRESS("NORMAL"); dir(7)::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(6)::pRESS("ZERO"); dir(2)::pRESS("LOW"); dir(5)::pRESS("NORMAL"); dir(22)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("ZERO").
dir(13)::pRESS("ZERO"); dir(1)::pRESS("LOW"); dir(22)::pRESS("NORMAL"); dir(18)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("LOW").
dir(26)::pRESS("ZERO"); dir(21)::pRESS("LOW"); dir(12)::pRESS("NORMAL"); dir(7)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(26)::pRESS("ZERO"); dir(24)::pRESS("LOW"); dir(2)::pRESS("NORMAL"); dir(2)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("HIGH").
dir(9)::pRESS("ZERO"); dir(5)::pRESS("LOW"); dir(2)::pRESS("NORMAL"); dir(15)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(9)::pRESS("ZERO"); dir(12)::pRESS("LOW"); dir(15)::pRESS("NORMAL"); dir(13)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(22)::pRESS("ZERO"); dir(1)::pRESS("LOW"); dir(3)::pRESS("NORMAL"); dir(11)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(27)::pRESS("ZERO"); dir(9)::pRESS("LOW"); dir(2)::pRESS("NORMAL"); dir(6)::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(26)::vENTLUNG("ZERO"); dir(1)::vENTLUNG("LOW"); dir(25)::vENTLUNG("NORMAL"); dir(22)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("ZERO").
dir(7)::vENTLUNG("ZERO"); dir(11)::vENTLUNG("LOW"); dir(30)::vENTLUNG("NORMAL"); dir(10)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("LOW").
dir(16)::vENTLUNG("ZERO"); dir(7)::vENTLUNG("LOW"); dir(27)::vENTLUNG("NORMAL"); dir(3)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(23)::vENTLUNG("ZERO"); dir(1)::vENTLUNG("LOW"); dir(7)::vENTLUNG("NORMAL"); dir(8)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("HIGH").
dir(19)::vENTLUNG("ZERO"); dir(14)::vENTLUNG("LOW"); dir(12)::vENTLUNG("NORMAL"); dir(26)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(5)::vENTLUNG("ZERO"); dir(17)::vENTLUNG("LOW"); dir(14)::vENTLUNG("NORMAL"); dir(10)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(9)::vENTLUNG("ZERO"); dir(29)::vENTLUNG("LOW"); dir(27)::vENTLUNG("NORMAL"); dir(21)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(15)::vENTLUNG("ZERO"); dir(27)::vENTLUNG("LOW"); dir(3)::vENTLUNG("NORMAL"); dir(8)::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(25)::vENTLUNG("ZERO"); dir(30)::vENTLUNG("LOW"); dir(15)::vENTLUNG("NORMAL"); dir(23)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("ZERO").
dir(12)::vENTLUNG("ZERO"); dir(13)::vENTLUNG("LOW"); dir(25)::vENTLUNG("NORMAL"); dir(1)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("LOW").
dir(13)::vENTLUNG("ZERO"); dir(10)::vENTLUNG("LOW"); dir(13)::vENTLUNG("NORMAL"); dir(25)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(6)::vENTLUNG("ZERO"); dir(23)::vENTLUNG("LOW"); dir(29)::vENTLUNG("NORMAL"); dir(10)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("HIGH").
dir(4)::vENTLUNG("ZERO"); dir(12)::vENTLUNG("LOW"); dir(25)::vENTLUNG("NORMAL"); dir(3)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(2)::vENTLUNG("ZERO"); dir(10)::vENTLUNG("LOW"); dir(12)::vENTLUNG("NORMAL"); dir(30)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(12)::vENTLUNG("ZERO"); dir(20)::vENTLUNG("LOW"); dir(11)::vENTLUNG("NORMAL"); dir(28)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(22)::vENTLUNG("ZERO"); dir(14)::vENTLUNG("LOW"); dir(6)::vENTLUNG("NORMAL"); dir(4)::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(7)::vENTLUNG("ZERO"); dir(2)::vENTLUNG("LOW"); dir(26)::vENTLUNG("NORMAL"); dir(12)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("ZERO").
dir(21)::vENTLUNG("ZERO"); dir(15)::vENTLUNG("LOW"); dir(25)::vENTLUNG("NORMAL"); dir(15)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("LOW").
dir(21)::vENTLUNG("ZERO"); dir(14)::vENTLUNG("LOW"); dir(16)::vENTLUNG("NORMAL"); dir(19)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("NORMAL").
dir(24)::vENTLUNG("ZERO"); dir(27)::vENTLUNG("LOW"); dir(4)::vENTLUNG("NORMAL"); dir(6)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("HIGH").
dir(28)::vENTLUNG("ZERO"); dir(13)::vENTLUNG("LOW"); dir(18)::vENTLUNG("NORMAL"); dir(16)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("ZERO").
dir(22)::vENTLUNG("ZERO"); dir(3)::vENTLUNG("LOW"); dir(10)::vENTLUNG("NORMAL"); dir(17)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("LOW").
dir(24)::vENTLUNG("ZERO"); dir(20)::vENTLUNG("LOW"); dir(18)::vENTLUNG("NORMAL"); dir(15)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("NORMAL").
dir(3)::vENTLUNG("ZERO"); dir(10)::vENTLUNG("LOW"); dir(12)::vENTLUNG("NORMAL"); dir(26)::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("HIGH").
dir(20)::vENTALV("ZERO"); dir(15)::vENTALV("LOW"); dir(13)::vENTALV("NORMAL"); dir(2)::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("ZERO").
dir(17)::vENTALV("ZERO"); dir(17)::vENTALV("LOW"); dir(28)::vENTALV("NORMAL"); dir(27)::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("LOW").
dir(6)::vENTALV("ZERO"); dir(7)::vENTALV("LOW"); dir(16)::vENTALV("NORMAL"); dir(29)::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("NORMAL").
dir(21)::vENTALV("ZERO"); dir(28)::vENTALV("LOW"); dir(1)::vENTALV("NORMAL"); dir(5)::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("HIGH").
dir(4)::vENTALV("ZERO"); dir(3)::vENTALV("LOW"); dir(14)::vENTALV("NORMAL"); dir(14)::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("ZERO").
dir(21)::vENTALV("ZERO"); dir(3)::vENTALV("LOW"); dir(27)::vENTALV("NORMAL"); dir(9)::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("LOW").
dir(4)::vENTALV("ZERO"); dir(26)::vENTALV("LOW"); dir(2)::vENTALV("NORMAL"); dir(10)::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("NORMAL").
dir(18)::vENTALV("ZERO"); dir(13)::vENTALV("LOW"); dir(20)::vENTALV("NORMAL"); dir(21)::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("HIGH").
dir(1)::vENTALV("ZERO"); dir(4)::vENTALV("LOW"); dir(25)::vENTALV("NORMAL"); dir(13)::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("ZERO").
dir(8)::vENTALV("ZERO"); dir(24)::vENTALV("LOW"); dir(27)::vENTALV("NORMAL"); dir(12)::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("LOW").
dir(25)::vENTALV("ZERO"); dir(16)::vENTALV("LOW"); dir(3)::vENTALV("NORMAL"); dir(21)::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("NORMAL").
dir(19)::vENTALV("ZERO"); dir(29)::vENTALV("LOW"); dir(27)::vENTALV("NORMAL"); dir(15)::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("HIGH").
dir(13)::mINVOL("ZERO"); dir(9)::mINVOL("LOW"); dir(8)::mINVOL("NORMAL"); dir(12)::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("ZERO").
dir(16)::mINVOL("ZERO"); dir(24)::mINVOL("LOW"); dir(28)::mINVOL("NORMAL"); dir(1)::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("LOW").
dir(25)::mINVOL("ZERO"); dir(6)::mINVOL("LOW"); dir(17)::mINVOL("NORMAL"); dir(15)::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("NORMAL").
dir(4)::mINVOL("ZERO"); dir(14)::mINVOL("LOW"); dir(9)::mINVOL("NORMAL"); dir(24)::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("HIGH").
dir(13)::mINVOL("ZERO"); dir(20)::mINVOL("LOW"); dir(23)::mINVOL("NORMAL"); dir(7)::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("ZERO").
dir(25)::mINVOL("ZERO"); dir(21)::mINVOL("LOW"); dir(23)::mINVOL("NORMAL"); dir(3)::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("LOW").
dir(2)::mINVOL("ZERO"); dir(17)::mINVOL("LOW"); dir(16)::mINVOL("NORMAL"); dir(30)::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("NORMAL").
dir(26)::mINVOL("ZERO"); dir(13)::mINVOL("LOW"); dir(18)::mINVOL("NORMAL"); dir(6)::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("HIGH").
dir(19)::mINVOL("ZERO"); dir(19)::mINVOL("LOW"); dir(27)::mINVOL("NORMAL"); dir(19)::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("ZERO").
dir(19)::mINVOL("ZERO"); dir(2)::mINVOL("LOW"); dir(30)::mINVOL("NORMAL"); dir(22)::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("LOW").
dir(8)::mINVOL("ZERO"); dir(24)::mINVOL("LOW"); dir(17)::mINVOL("NORMAL"); dir(10)::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("NORMAL").
dir(10)::mINVOL("ZERO"); dir(14)::mINVOL("LOW"); dir(1)::mINVOL("NORMAL"); dir(25)::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("HIGH").
dir(4)::aRTCO2("LOW"); dir(22)::aRTCO2("NORMAL"); dir(13)::aRTCO2("HIGH") :- vENTALV("ZERO").
dir(21)::aRTCO2("LOW"); dir(15)::aRTCO2("NORMAL"); dir(27)::aRTCO2("HIGH") :- vENTALV("LOW").
dir(10)::aRTCO2("LOW"); dir(23)::aRTCO2("NORMAL"); dir(2)::aRTCO2("HIGH") :- vENTALV("NORMAL").
dir(1)::aRTCO2("LOW"); dir(17)::aRTCO2("NORMAL"); dir(29)::aRTCO2("HIGH") :- vENTALV("HIGH").
dir(5)::pVSAT("LOW"); dir(21)::pVSAT("NORMAL"); dir(27)::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("ZERO").
dir(22)::pVSAT("LOW"); dir(9)::pVSAT("NORMAL"); dir(9)::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("LOW").
dir(23)::pVSAT("LOW"); dir(2)::pVSAT("NORMAL"); dir(18)::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("NORMAL").
dir(26)::pVSAT("LOW"); dir(16)::pVSAT("NORMAL"); dir(10)::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("HIGH").
dir(17)::pVSAT("LOW"); dir(19)::pVSAT("NORMAL"); dir(11)::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("ZERO").
dir(16)::pVSAT("LOW"); dir(28)::pVSAT("NORMAL"); dir(20)::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("LOW").
dir(25)::pVSAT("LOW"); dir(4)::pVSAT("NORMAL"); dir(6)::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("NORMAL").
dir(22)::pVSAT("LOW"); dir(8)::pVSAT("NORMAL"); dir(30)::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("HIGH").
dir(10)::eXPCO2("ZERO"); dir(13)::eXPCO2("LOW"); dir(22)::eXPCO2("NORMAL"); dir(10)::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("ZERO").
dir(27)::eXPCO2("ZERO"); dir(23)::eXPCO2("LOW"); dir(30)::eXPCO2("NORMAL"); dir(4)::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("LOW").
dir(21)::eXPCO2("ZERO"); dir(3)::eXPCO2("LOW"); dir(17)::eXPCO2("NORMAL"); dir(15)::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("NORMAL").
dir(10)::eXPCO2("ZERO"); dir(18)::eXPCO2("LOW"); dir(15)::eXPCO2("NORMAL"); dir(30)::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("HIGH").
dir(8)::eXPCO2("ZERO"); dir(20)::eXPCO2("LOW"); dir(11)::eXPCO2("NORMAL"); dir(14)::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("ZERO").
dir(28)::eXPCO2("ZERO"); dir(30)::eXPCO2("LOW"); dir(10)::eXPCO2("NORMAL"); dir(1)::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("LOW").
dir(4)::eXPCO2("ZERO"); dir(29)::eXPCO2("LOW"); dir(10)::eXPCO2("NORMAL"); dir(17)::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("NORMAL").
dir(3)::eXPCO2("ZERO"); dir(26)::eXPCO2("LOW"); dir(24)::eXPCO2("NORMAL"); dir(29)::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("HIGH").
dir(6)::eXPCO2("ZERO"); dir(11)::eXPCO2("LOW"); dir(3)::eXPCO2("NORMAL"); dir(20)::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("ZERO").
dir(6)::eXPCO2("ZERO"); dir(15)::eXPCO2("LOW"); dir(26)::eXPCO2("NORMAL"); dir(13)::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("LOW").
dir(18)::eXPCO2("ZERO"); dir(18)::eXPCO2("LOW"); dir(30)::eXPCO2("NORMAL"); dir(17)::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("NORMAL").
dir(2)::eXPCO2("ZERO"); dir(2)::eXPCO2("LOW"); dir(19)::eXPCO2("NORMAL"); dir(1)::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("HIGH").
dir(26)::sAO2("LOW"); dir(10)::sAO2("NORMAL"); dir(28)::sAO2("HIGH") :- pVSAT("LOW"), sHUNT("NORMAL").
dir(22)::sAO2("LOW"); dir(1)::sAO2("NORMAL"); dir(5)::sAO2("HIGH") :- pVSAT("LOW"), sHUNT("HIGH").
dir(29)::sAO2("LOW"); dir(21)::sAO2("NORMAL"); dir(12)::sAO2("HIGH") :- pVSAT("NORMAL"), sHUNT("NORMAL").
dir(18)::sAO2("LOW"); dir(10)::sAO2("NORMAL"); dir(16)::sAO2("HIGH") :- pVSAT("NORMAL"), sHUNT("HIGH").
dir(18)::sAO2("LOW"); dir(2)::sAO2("NORMAL"); dir(1)::sAO2("HIGH") :- pVSAT("HIGH"), sHUNT("NORMAL").
dir(27)::sAO2("LOW"); dir(30)::sAO2("NORMAL"); dir(22)::sAO2("HIGH") :- pVSAT("HIGH"), sHUNT("HIGH").
dir(28)::cATECHOL("NORMAL"); dir(25)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(30)::cATECHOL("NORMAL"); dir(27)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(11)::cATECHOL("NORMAL"); dir(4)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(23)::cATECHOL("NORMAL"); dir(22)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(20)::cATECHOL("NORMAL"); dir(16)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(23)::cATECHOL("NORMAL"); dir(16)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(21)::cATECHOL("NORMAL"); dir(11)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(28)::cATECHOL("NORMAL"); dir(25)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(3)::cATECHOL("NORMAL"); dir(11)::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(11)::cATECHOL("NORMAL"); dir(7)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(11)::cATECHOL("NORMAL"); dir(26)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(6)::cATECHOL("NORMAL"); dir(23)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(1)::cATECHOL("NORMAL"); dir(17)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(15)::cATECHOL("NORMAL"); dir(8)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(14)::cATECHOL("NORMAL"); dir(28)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(4)::cATECHOL("NORMAL"); dir(2)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(23)::cATECHOL("NORMAL"); dir(22)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(29)::cATECHOL("NORMAL"); dir(15)::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(12)::cATECHOL("NORMAL"); dir(18)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(16)::cATECHOL("NORMAL"); dir(19)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(5)::cATECHOL("NORMAL"); dir(9)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(13)::cATECHOL("NORMAL"); dir(23)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(17)::cATECHOL("NORMAL"); dir(18)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(16)::cATECHOL("NORMAL"); dir(19)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(9)::cATECHOL("NORMAL"); dir(15)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(13)::cATECHOL("NORMAL"); dir(25)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(9)::cATECHOL("NORMAL"); dir(9)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(1)::cATECHOL("NORMAL"); dir(15)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(5)::cATECHOL("NORMAL"); dir(28)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(2)::cATECHOL("NORMAL"); dir(24)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(13)::cATECHOL("NORMAL"); dir(17)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(15)::cATECHOL("NORMAL"); dir(20)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(14)::cATECHOL("NORMAL"); dir(14)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(6)::cATECHOL("NORMAL"); dir(28)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(15)::cATECHOL("NORMAL"); dir(4)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(22)::cATECHOL("NORMAL"); dir(26)::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(21)::cATECHOL("NORMAL"); dir(30)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(10)::cATECHOL("NORMAL"); dir(4)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(6)::cATECHOL("NORMAL"); dir(1)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(7)::cATECHOL("NORMAL"); dir(17)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(23)::cATECHOL("NORMAL"); dir(26)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(21)::cATECHOL("NORMAL"); dir(16)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(4)::cATECHOL("NORMAL"); dir(30)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(1)::cATECHOL("NORMAL"); dir(17)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(26)::cATECHOL("NORMAL"); dir(21)::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(18)::cATECHOL("NORMAL"); dir(15)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
dir(28)::cATECHOL("NORMAL"); dir(26)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
dir(13)::cATECHOL("NORMAL"); dir(9)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
dir(19)::cATECHOL("NORMAL"); dir(20)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
dir(21)::cATECHOL("NORMAL"); dir(22)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
dir(4)::cATECHOL("NORMAL"); dir(29)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
dir(17)::cATECHOL("NORMAL"); dir(5)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
dir(26)::cATECHOL("NORMAL"); dir(17)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
dir(8)::cATECHOL("NORMAL"); dir(11)::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
dir(25)::hR("LOW"); dir(16)::hR("NORMAL"); dir(19)::hR("HIGH") :- cATECHOL("NORMAL").
dir(13)::hR("LOW"); dir(12)::hR("NORMAL"); dir(9)::hR("HIGH") :- cATECHOL("HIGH").
dir(22)::cO("LOW"); dir(24)::cO("NORMAL"); dir(27)::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("LOW").
dir(19)::cO("LOW"); dir(10)::cO("NORMAL"); dir(24)::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("NORMAL").
dir(8)::cO("LOW"); dir(4)::cO("NORMAL"); dir(23)::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("HIGH").
dir(25)::cO("LOW"); dir(13)::cO("NORMAL"); dir(12)::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("LOW").
dir(6)::cO("LOW"); dir(2)::cO("NORMAL"); dir(15)::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("NORMAL").
dir(22)::cO("LOW"); dir(11)::cO("NORMAL"); dir(18)::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("HIGH").
dir(29)::cO("LOW"); dir(23)::cO("NORMAL"); dir(22)::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("LOW").
dir(30)::cO("LOW"); dir(14)::cO("NORMAL"); dir(29)::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("NORMAL").
dir(3)::cO("LOW"); dir(1)::cO("NORMAL"); dir(6)::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("HIGH").
dir(6)::hRBP("LOW"); dir(26)::hRBP("NORMAL"); dir(13)::hRBP("HIGH") :- eRRLOWOUTPUT, hR("LOW").
dir(28)::hRBP("LOW"); dir(7)::hRBP("NORMAL"); dir(21)::hRBP("HIGH") :- eRRLOWOUTPUT, hR("NORMAL").
dir(2)::hRBP("LOW"); dir(25)::hRBP("NORMAL"); dir(29)::hRBP("HIGH") :- eRRLOWOUTPUT, hR("HIGH").
dir(5)::hRBP("LOW"); dir(23)::hRBP("NORMAL"); dir(8)::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("LOW").
dir(8)::hRBP("LOW"); dir(16)::hRBP("NORMAL"); dir(26)::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("NORMAL").
dir(30)::hRBP("LOW"); dir(9)::hRBP("NORMAL"); dir(18)::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("HIGH").
dir(30)::hRSAT("LOW"); dir(4)::hRSAT("NORMAL"); dir(17)::hRSAT("HIGH") :- eRRCAUTER, hR("LOW").
dir(8)::hRSAT("LOW"); dir(6)::hRSAT("NORMAL"); dir(5)::hRSAT("HIGH") :- eRRCAUTER, hR("NORMAL").
dir(29)::hRSAT("LOW"); dir(19)::hRSAT("NORMAL"); dir(23)::hRSAT("HIGH") :- eRRCAUTER, hR("HIGH").
dir(20)::hRSAT("LOW"); dir(5)::hRSAT("NORMAL"); dir(14)::hRSAT("HIGH") :- \+eRRCAUTER, hR("LOW").
dir(3)::hRSAT("LOW"); dir(11)::hRSAT("NORMAL"); dir(23)::hRSAT("HIGH") :- \+eRRCAUTER, hR("NORMAL").
dir(13)::hRSAT("LOW"); dir(26)::hRSAT("NORMAL"); dir(20)::hRSAT("HIGH") :- \+eRRCAUTER, hR("HIGH").
dir(15)::hREKG("LOW"); dir(2)::hREKG("NORMAL"); dir(23)::hREKG("HIGH") :- eRRCAUTER, hR("LOW").
dir(17)::hREKG("LOW"); dir(7)::hREKG("NORMAL"); dir(21)::hREKG("HIGH") :- eRRCAUTER, hR("NORMAL").
dir(18)::hREKG("LOW"); dir(5)::hREKG("NORMAL"); dir(25)::hREKG("HIGH") :- eRRCAUTER, hR("HIGH").
dir(20)::hREKG("LOW"); dir(5)::hREKG("NORMAL"); dir(10)::hREKG("HIGH") :- \+eRRCAUTER, hR("LOW").
dir(3)::hREKG("LOW"); dir(19)::hREKG("NORMAL"); dir(17)::hREKG("HIGH") :- \+eRRCAUTER, hR("NORMAL").
dir(17)::hREKG("LOW"); dir(3)::hREKG("NORMAL"); dir(29)::hREKG("HIGH") :- \+eRRCAUTER, hR("HIGH").
dir(24)::bP("LOW"); dir(17)::bP("NORMAL"); dir(11)::bP("HIGH") :- cO("LOW"), tPR("LOW").
dir(29)::bP("LOW"); dir(6)::bP("NORMAL"); dir(28)::bP("HIGH") :- cO("LOW"), tPR("NORMAL").
dir(9)::bP("LOW"); dir(25)::bP("NORMAL"); dir(23)::bP("HIGH") :- cO("LOW"), tPR("HIGH").
dir(5)::bP("LOW"); dir(29)::bP("NORMAL"); dir(8)::bP("HIGH") :- cO("NORMAL"), tPR("LOW").
dir(20)::bP("LOW"); dir(15)::bP("NORMAL"); dir(23)::bP("HIGH") :- cO("NORMAL"), tPR("NORMAL").
dir(13)::bP("LOW"); dir(23)::bP("NORMAL"); dir(1)::bP("HIGH") :- cO("NORMAL"), tPR("HIGH").
dir(13)::bP("LOW"); dir(10)::bP("NORMAL"); dir(20)::bP("HIGH") :- cO("HIGH"), tPR("LOW").
dir(2)::bP("LOW"); dir(16)::bP("NORMAL"); dir(16)::bP("HIGH") :- cO("HIGH"), tPR("NORMAL").
dir(13)::bP("LOW"); dir(8)::bP("NORMAL"); dir(26)::bP("HIGH") :- cO("HIGH"), tPR("HIGH").
