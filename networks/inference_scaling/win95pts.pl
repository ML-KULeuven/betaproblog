%% ProbLog program: PGM 1
%% Created on 2021-01-28 16:02:10.378742

?::prntrAccptsTrtyp.
?::dataFile("Correct"); ?::dataFile("Incorrect_Corrupt").
?::appOK("Correct"); ?::appOK("Incorrect_Corrupt").
?::prtThread("OK"); ?::prtThread("Corrupt_Buggy").
?::prtSpool("Enabled"); ?::prtSpool("Disabled").
?::prtMem("Greater_than_2_Mb"); ?::prtMem("Less_than_2Mb").
?::prtQueue("Short"); ?::prtQueue("Long").
?::drvOK("Reinstalled"); ?::drvOK("Corrupt").
?::scrnFntNtPrntrFnt.
?::prtMpTPth("Correct"); ?::prtMpTPth("Incorrect").
?::pTROFFLINE("Online"); ?::pTROFFLINE("Offline").
?::prtPScript.
?::netPrint("No__Local_printer_"); ?::netPrint("Yes__Network_printer_").
?::prtSel.
?::prtPath("Correct"); ?::prtPath("Incorrect").
?::prtPort.
?::cblPrtHrdwrOK("Operational"); ?::cblPrtHrdwrOK("Not_Operational").
?::prtCbl("Connected"); ?::prtCbl("Loose").
?::ePSGrphc("No____TIF___WMF___BMP_"); ?::ePSGrphc("Yes____EPS_").
?::pgOrnttnOK("Correct"); ?::pgOrnttnOK("Incorrect").
?::tnrSpply("Adequate"); ?::tnrSpply("Low").
?::fntInstlltn("Verified"); ?::fntInstlltn("Faulty").
?::fllCrrptdBffr("Intact__not_Corrupt_"); ?::fllCrrptdBffr("Full_or_Corrupt").
?::dSApplctn("DOS"); ?::dSApplctn("Windows").
?::prtOn.
?::prntngArOK("Correct"); ?::prntngArOK("Incorrect").
?::grphcsRltdDrvrSttngs("Correct"); ?::grphcsRltdDrvrSttngs("Incorrect").
?::drvSet("Correct"); ?::drvSet("Incorrect").
?::prtDriver.
?::dskLocal("Greater_than_2_Mb"); ?::dskLocal("Less_than_2_Mb").
?::prtPaper("Has_Paper"); ?::prtPaper("No_Paper").
?::trTypFnts.
?::prtTimeOut("Long_Enough"); ?::prtTimeOut("Too_Short").
?::ntwrkCnfg("Correct"); ?::ntwrkCnfg("Incorrect").
?::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
?::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
?::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
?::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
?::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
?::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
?::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
?::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
?::appDtGnTm("Fast_Enough"); ?::appDtGnTm("Too_Long") :- prtSpool("Enabled").
?::appDtGnTm("Fast_Enough"); ?::appDtGnTm("Too_Long") :- prtSpool("Disabled").
?::rEPEAT("Yes__Always_the_Same_"); ?::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Correct").
?::rEPEAT("Yes__Always_the_Same_"); ?::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Incorrect").
?::rEPEAT("Yes__Always_the_Same_"); ?::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Correct").
?::rEPEAT("Yes__Always_the_Same_"); ?::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Incorrect").
?::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::prtStatPaper("No_Error"); ?::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("Has_Paper").
?::prtStatPaper("No_Error"); ?::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("No_Paper").
?::prntPrcssTm("Fast_Enough"); ?::prntPrcssTm("Too_Long") :- prtSpool("Enabled").
?::prntPrcssTm("Fast_Enough"); ?::prntPrcssTm("Too_Long") :- prtSpool("Disabled").
?::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
?::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
?::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
?::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
?::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
?::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
?::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
?::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
?::prtStatToner("No_Error"); ?::prtStatToner("Low__None") :- tnrSpply("Adequate").
?::prtStatToner("No_Error"); ?::prtStatToner("Low__None") :- tnrSpply("Low").
?::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
?::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
?::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
?::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
?::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
?::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
?::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
?::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
?::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
?::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
?::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
?::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
?::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
?::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
?::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
?::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
?::prtStatMem("No_Error"); ?::prtStatMem("Out_of_Memory") :- prtMem("Greater_than_2_Mb").
?::prtStatMem("No_Error"); ?::prtStatMem("Out_of_Memory") :- prtMem("Less_than_2Mb").
?::appData("Correct"); ?::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Correct").
?::appData("Correct"); ?::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Incorrect_Corrupt").
?::appData("Correct"); ?::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Correct").
?::appData("Correct"); ?::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Incorrect_Corrupt").
?::prtIcon("Normal"); ?::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::prtIcon("Normal"); ?::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::prtIcon("Normal"); ?::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::prtIcon("Normal"); ?::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
?::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
?::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
?::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
?::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
?::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
?::avlblVrtlMmry("Adequate____1Mb_"); ?::avlblVrtlMmry("Inadequate____1_Mb_") :- prtPScript.
?::avlblVrtlMmry("Adequate____1Mb_"); ?::avlblVrtlMmry("Inadequate____1_Mb_") :- \+prtPScript.
?::prtStatOff("No_Error"); ?::prtStatOff("OFFLINE__OFF") :- prtOn.
?::prtStatOff("No_Error"); ?::prtStatOff("OFFLINE__OFF") :- \+prtOn.
?::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
?::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
?::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
?::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
?::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
?::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
?::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
?::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
problem4 :- nnPSGrphc, prtPScript, pSGRAPHIC.
?::problem4 :- nnPSGrphc, prtPScript, \+pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
problem4 :- \+nnPSGrphc, prtPScript, pSGRAPHIC.
?::problem4 :- \+nnPSGrphc, prtPScript, \+pSGRAPHIC.
?::problem4 :- \+nnPSGrphc, \+prtPScript, pSGRAPHIC.
?::problem4 :- \+nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
?::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
?::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
?::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("OK").
?::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
?::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
?::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
?::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("OK").
?::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
?::pSERRMEM("No_Error"); ?::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
?::pSERRMEM("No_Error"); ?::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
?::pSERRMEM("No_Error"); ?::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
?::pSERRMEM("No_Error"); ?::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
?::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
?::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
problem5 :- trTypFnts, tTOK, nnTTOK.
problem5 :- trTypFnts, tTOK, \+nnTTOK.
?::problem5 :- trTypFnts, \+tTOK, nnTTOK.
?::problem5 :- trTypFnts, \+tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, tTOK, nnTTOK.
?::problem5 :- \+trTypFnts, tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, \+tTOK, nnTTOK.
?::problem5 :- \+trTypFnts, \+tTOK, \+nnTTOK.
incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
?::incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
?::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
?::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
?::hrglssDrtnAftrPrnt("Fast_Enough"); ?::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Fast_Enough").
?::hrglssDrtnAftrPrnt("Fast_Enough"); ?::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Too_Long").
?::tstpsTxt("x_1_Mb_Available_VM"); ?::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
?::tstpsTxt("x_1_Mb_Available_VM"); ?::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
?::tstpsTxt("x_1_Mb_Available_VM"); ?::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
?::tstpsTxt("x_1_Mb_Available_VM"); ?::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
?::deskPrntSpd("OK"); ?::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
?::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
?::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
problem3 :- cmpltPgPrntd, prtPScript, incmpltPS.
?::problem3 :- cmpltPgPrntd, prtPScript, \+incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, \+incmpltPS.
problem3 :- \+cmpltPgPrntd, prtPScript, incmpltPS.
?::problem3 :- \+cmpltPgPrntd, prtPScript, \+incmpltPS.
?::problem3 :- \+cmpltPgPrntd, \+prtPScript, incmpltPS.
?::problem3 :- \+cmpltPgPrntd, \+prtPScript, \+incmpltPS.
?::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, ntGrbld.
?::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, \+ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, \+ntGrbld.
?::grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, \+ntGrbld.
?::grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, \+ntGrbld.
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Short").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Long").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Short").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Long").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Short").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Long").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Short").
?::ntSpd("OK"); ?::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Long").
gDIIN :- appData("Correct"), prtSpool("Enabled"), eMFOK.
?::gDIIN :- appData("Correct"), prtSpool("Enabled"), \+eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), \+eMFOK.
?::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), eMFOK.
?::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), \+eMFOK.
?::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), eMFOK.
?::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), \+eMFOK.
?::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
?::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
?::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
?::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
?::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
?::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
?::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
?::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
?::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
?::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
?::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
?::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
?::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
?::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
?::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
?::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
?::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
?::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
grbldPS :- grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
?::grbldPS :- grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("OK").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("OK").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
?::problem2("OK"); ?::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
?::problem6 :- \+grbldOtpt, prtPScript, \+grbldPS.
problem6 :- \+grbldOtpt, prtPScript, grbldPS.
?::problem6 :- \+grbldOtpt, \+prtPScript, \+grbldPS.
?::problem6 :- \+grbldOtpt, \+prtPScript, grbldPS.
?::problem6 :- grbldOtpt, prtPScript, \+grbldPS.
problem6 :- grbldOtpt, prtPScript, grbldPS.
problem6 :- grbldOtpt, \+prtPScript, \+grbldPS.
problem6 :- grbldOtpt, \+prtPScript, grbldPS.
?::prtDataOut :- gDIOUT, prtSel.
?::prtDataOut :- gDIOUT, \+prtSel.
?::prtDataOut :- \+gDIOUT, prtSel.
?::prtDataOut :- \+gDIOUT, \+prtSel.
?::prtFile :- prtDataOut.
?::prtFile :- \+prtDataOut.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
?::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
?::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
?::problem1("Normal_Output"); ?::problem1("No_Output") :- prtData.
?::problem1("Normal_Output"); ?::problem1("No_Output") :- \+prtData.

query(problem1("Normal_Output")).
