%% ProbLog program: PGM 1
%% Created on 2021-01-28 15:58:48.183092

?::mINVOLSET("LOW"); ?::mINVOLSET("NORMAL"); ?::mINVOLSET("HIGH").
?::hYPOVOLEMIA.
?::iNTUBATION("NORMAL"); ?::iNTUBATION("ESOPHAGEAL"); ?::iNTUBATION("ONESIDED").
?::eRRLOWOUTPUT.
?::aNAPHYLAXIS.
?::pULMEMBOLUS.
?::kINKEDTUBE.
?::lVFAILURE.
?::fIO2("LOW"); ?::fIO2("NORMAL").
?::eRRCAUTER.
?::iNSUFFANESTH.
?::dISCONNECT.
?::sTROKEVOLUME("LOW"); ?::sTROKEVOLUME("NORMAL"); ?::sTROKEVOLUME("HIGH") :- hYPOVOLEMIA, lVFAILURE.
?::sTROKEVOLUME("LOW"); ?::sTROKEVOLUME("NORMAL"); ?::sTROKEVOLUME("HIGH") :- hYPOVOLEMIA, \+lVFAILURE.
?::sTROKEVOLUME("LOW"); ?::sTROKEVOLUME("NORMAL"); ?::sTROKEVOLUME("HIGH") :- \+hYPOVOLEMIA, lVFAILURE.
?::sTROKEVOLUME("LOW"); ?::sTROKEVOLUME("NORMAL"); ?::sTROKEVOLUME("HIGH") :- \+hYPOVOLEMIA, \+lVFAILURE.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("NORMAL"), pULMEMBOLUS.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("NORMAL"), \+pULMEMBOLUS.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("ESOPHAGEAL"), pULMEMBOLUS.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+pULMEMBOLUS.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("ONESIDED"), pULMEMBOLUS.
?::sHUNT("NORMAL"); ?::sHUNT("HIGH") :- iNTUBATION("ONESIDED"), \+pULMEMBOLUS.
?::tPR("LOW"); ?::tPR("NORMAL"); ?::tPR("HIGH") :- aNAPHYLAXIS.
?::tPR("LOW"); ?::tPR("NORMAL"); ?::tPR("HIGH") :- \+aNAPHYLAXIS.
?::hISTORY :- lVFAILURE.
?::hISTORY :- \+lVFAILURE.
?::vENTMACH("ZERO"); ?::vENTMACH("LOW"); ?::vENTMACH("NORMAL"); ?::vENTMACH("HIGH") :- mINVOLSET("LOW").
?::vENTMACH("ZERO"); ?::vENTMACH("LOW"); ?::vENTMACH("NORMAL"); ?::vENTMACH("HIGH") :- mINVOLSET("NORMAL").
?::vENTMACH("ZERO"); ?::vENTMACH("LOW"); ?::vENTMACH("NORMAL"); ?::vENTMACH("HIGH") :- mINVOLSET("HIGH").
?::lVEDVOLUME("LOW"); ?::lVEDVOLUME("NORMAL"); ?::lVEDVOLUME("HIGH") :- hYPOVOLEMIA, lVFAILURE.
?::lVEDVOLUME("LOW"); ?::lVEDVOLUME("NORMAL"); ?::lVEDVOLUME("HIGH") :- hYPOVOLEMIA, \+lVFAILURE.
?::lVEDVOLUME("LOW"); ?::lVEDVOLUME("NORMAL"); ?::lVEDVOLUME("HIGH") :- \+hYPOVOLEMIA, lVFAILURE.
?::lVEDVOLUME("LOW"); ?::lVEDVOLUME("NORMAL"); ?::lVEDVOLUME("HIGH") :- \+hYPOVOLEMIA, \+lVFAILURE.
?::pAP("LOW"); ?::pAP("NORMAL"); ?::pAP("HIGH") :- pULMEMBOLUS.
?::pAP("LOW"); ?::pAP("NORMAL"); ?::pAP("HIGH") :- \+pULMEMBOLUS.
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("ZERO").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("LOW").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("NORMAL").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- dISCONNECT, vENTMACH("HIGH").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("ZERO").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("LOW").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("NORMAL").
?::vENTTUBE("ZERO"); ?::vENTTUBE("LOW"); ?::vENTTUBE("NORMAL"); ?::vENTTUBE("HIGH") :- \+dISCONNECT, vENTMACH("HIGH").
?::pCWP("LOW"); ?::pCWP("NORMAL"); ?::pCWP("HIGH") :- lVEDVOLUME("LOW").
?::pCWP("LOW"); ?::pCWP("NORMAL"); ?::pCWP("HIGH") :- lVEDVOLUME("NORMAL").
?::pCWP("LOW"); ?::pCWP("NORMAL"); ?::pCWP("HIGH") :- lVEDVOLUME("HIGH").
?::cVP("LOW"); ?::cVP("NORMAL"); ?::cVP("HIGH") :- lVEDVOLUME("LOW").
?::cVP("LOW"); ?::cVP("NORMAL"); ?::cVP("HIGH") :- lVEDVOLUME("NORMAL").
?::cVP("LOW"); ?::cVP("NORMAL"); ?::cVP("HIGH") :- lVEDVOLUME("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("HIGH").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("LOW").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::pRESS("ZERO"); ?::pRESS("LOW"); ?::pRESS("NORMAL"); ?::pRESS("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("NORMAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ESOPHAGEAL"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), kINKEDTUBE, vENTTUBE("HIGH").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("ZERO").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("LOW").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("NORMAL").
?::vENTLUNG("ZERO"); ?::vENTLUNG("LOW"); ?::vENTLUNG("NORMAL"); ?::vENTLUNG("HIGH") :- iNTUBATION("ONESIDED"), \+kINKEDTUBE, vENTTUBE("HIGH").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("ZERO").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("LOW").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("NORMAL").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("HIGH").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("ZERO").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("LOW").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("NORMAL").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("HIGH").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("ZERO").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("LOW").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("NORMAL").
?::vENTALV("ZERO"); ?::vENTALV("LOW"); ?::vENTALV("NORMAL"); ?::vENTALV("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("HIGH").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("ZERO").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("LOW").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("NORMAL").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("NORMAL"), vENTLUNG("HIGH").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("ZERO").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("LOW").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("NORMAL").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ESOPHAGEAL"), vENTLUNG("HIGH").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("ZERO").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("LOW").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("NORMAL").
?::mINVOL("ZERO"); ?::mINVOL("LOW"); ?::mINVOL("NORMAL"); ?::mINVOL("HIGH") :- iNTUBATION("ONESIDED"), vENTLUNG("HIGH").
?::aRTCO2("LOW"); ?::aRTCO2("NORMAL"); ?::aRTCO2("HIGH") :- vENTALV("ZERO").
?::aRTCO2("LOW"); ?::aRTCO2("NORMAL"); ?::aRTCO2("HIGH") :- vENTALV("LOW").
?::aRTCO2("LOW"); ?::aRTCO2("NORMAL"); ?::aRTCO2("HIGH") :- vENTALV("NORMAL").
?::aRTCO2("LOW"); ?::aRTCO2("NORMAL"); ?::aRTCO2("HIGH") :- vENTALV("HIGH").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("ZERO").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("LOW").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("NORMAL").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("LOW"), vENTALV("HIGH").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("ZERO").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("LOW").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("NORMAL").
?::pVSAT("LOW"); ?::pVSAT("NORMAL"); ?::pVSAT("HIGH") :- fIO2("NORMAL"), vENTALV("HIGH").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("ZERO").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("LOW").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("NORMAL").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("LOW"), vENTLUNG("HIGH").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("ZERO").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("LOW").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("NORMAL").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("NORMAL"), vENTLUNG("HIGH").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("ZERO").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("LOW").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("NORMAL").
?::eXPCO2("ZERO"); ?::eXPCO2("LOW"); ?::eXPCO2("NORMAL"); ?::eXPCO2("HIGH") :- aRTCO2("HIGH"), vENTLUNG("HIGH").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("LOW"), sHUNT("NORMAL").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("LOW"), sHUNT("HIGH").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("NORMAL"), sHUNT("NORMAL").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("NORMAL"), sHUNT("HIGH").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("HIGH"), sHUNT("NORMAL").
?::sAO2("LOW"); ?::sAO2("NORMAL"); ?::sAO2("HIGH") :- pVSAT("HIGH"), sHUNT("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("LOW"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("NORMAL"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("LOW"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("NORMAL"), tPR("HIGH").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("LOW").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("NORMAL").
?::cATECHOL("NORMAL"); ?::cATECHOL("HIGH") :- aRTCO2("HIGH"), \+iNSUFFANESTH, sAO2("HIGH"), tPR("HIGH").
?::hR("LOW"); ?::hR("NORMAL"); ?::hR("HIGH") :- cATECHOL("NORMAL").
?::hR("LOW"); ?::hR("NORMAL"); ?::hR("HIGH") :- cATECHOL("HIGH").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("LOW").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("NORMAL").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("LOW"), sTROKEVOLUME("HIGH").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("LOW").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("NORMAL").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("NORMAL"), sTROKEVOLUME("HIGH").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("LOW").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("NORMAL").
?::cO("LOW"); ?::cO("NORMAL"); ?::cO("HIGH") :- hR("HIGH"), sTROKEVOLUME("HIGH").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- eRRLOWOUTPUT, hR("LOW").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- eRRLOWOUTPUT, hR("NORMAL").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- eRRLOWOUTPUT, hR("HIGH").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("LOW").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("NORMAL").
?::hRBP("LOW"); ?::hRBP("NORMAL"); ?::hRBP("HIGH") :- \+eRRLOWOUTPUT, hR("HIGH").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- eRRCAUTER, hR("LOW").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- eRRCAUTER, hR("NORMAL").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- eRRCAUTER, hR("HIGH").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- \+eRRCAUTER, hR("LOW").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- \+eRRCAUTER, hR("NORMAL").
?::hRSAT("LOW"); ?::hRSAT("NORMAL"); ?::hRSAT("HIGH") :- \+eRRCAUTER, hR("HIGH").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- eRRCAUTER, hR("LOW").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- eRRCAUTER, hR("NORMAL").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- eRRCAUTER, hR("HIGH").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- \+eRRCAUTER, hR("LOW").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- \+eRRCAUTER, hR("NORMAL").
?::hREKG("LOW"); ?::hREKG("NORMAL"); ?::hREKG("HIGH") :- \+eRRCAUTER, hR("HIGH").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("LOW"), tPR("LOW").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("LOW"), tPR("NORMAL").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("LOW"), tPR("HIGH").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("NORMAL"), tPR("LOW").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("NORMAL"), tPR("NORMAL").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("NORMAL"), tPR("HIGH").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("HIGH"), tPR("LOW").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("HIGH"), tPR("NORMAL").
?::bP("LOW"); ?::bP("NORMAL"); ?::bP("HIGH") :- cO("HIGH"), tPR("HIGH").

query(bP("NORMAL")).
