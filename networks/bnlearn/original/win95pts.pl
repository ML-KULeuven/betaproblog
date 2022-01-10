%% ProbLog program: PGM 1
%% Created on 2021-01-28 16:02:10.378742

0.9::prntrAccptsTrtyp.
0.995::dataFile("Correct"); 0.005::dataFile("Incorrect_Corrupt").
0.995::appOK("Correct"); 0.005::appOK("Incorrect_Corrupt").
0.9999::prtThread("OK"); 0.0001::prtThread("Corrupt_Buggy").
0.95::prtSpool("Enabled"); 0.05::prtSpool("Disabled").
0.95::prtMem("Greater_than_2_Mb"); 0.05::prtMem("Less_than_2Mb").
0.99::prtQueue("Short"); 0.01::prtQueue("Long").
0.99::drvOK("Reinstalled"); 0.01::drvOK("Corrupt").
0.95::scrnFntNtPrntrFnt.
0.8::prtMpTPth("Correct"); 0.2::prtMpTPth("Incorrect").
0.7::pTROFFLINE("Online"); 0.3::pTROFFLINE("Offline").
0.4::prtPScript.
0.8::netPrint("No__Local_printer_"); 0.2::netPrint("Yes__Network_printer_").
0.99::prtSel.
0.97::prtPath("Correct"); 0.03::prtPath("Incorrect").
0.99::prtPort.
0.99::cblPrtHrdwrOK("Operational"); 0.01::cblPrtHrdwrOK("Not_Operational").
0.98::prtCbl("Connected"); 0.02::prtCbl("Loose").
0.99::ePSGrphc("No____TIF___WMF___BMP_"); 0.01::ePSGrphc("Yes____EPS_").
0.95::pgOrnttnOK("Correct"); 0.05::pgOrnttnOK("Incorrect").
0.995::tnrSpply("Adequate"); 0.005::tnrSpply("Low").
0.98::fntInstlltn("Verified"); 0.02::fntInstlltn("Faulty").
0.85::fllCrrptdBffr("Intact__not_Corrupt_"); 0.15::fllCrrptdBffr("Full_or_Corrupt").
0.15::dSApplctn("DOS"); 0.85::dSApplctn("Windows").
0.9::prtOn.
0.98::prntngArOK("Correct"); 0.02::prntngArOK("Incorrect").
0.95::grphcsRltdDrvrSttngs("Correct"); 0.05::grphcsRltdDrvrSttngs("Incorrect").
0.99::drvSet("Correct"); 0.01::drvSet("Incorrect").
0.9::prtDriver.
0.97::dskLocal("Greater_than_2_Mb"); 0.03::dskLocal("Less_than_2_Mb").
0.98::prtPaper("Has_Paper"); 0.02::prtPaper("No_Paper").
0.9::trTypFnts.
0.94::prtTimeOut("Long_Enough"); 0.06::prtTimeOut("Too_Short").
0.98::ntwrkCnfg("Correct"); 0.02::ntwrkCnfg("Incorrect").
0.99000001::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
0.1::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
0.1::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
0.5::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
0.5::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
0.5::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
0.5::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
0.5::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
1.0::appDtGnTm("Fast_Enough"); 0.0::appDtGnTm("Too_Long") :- prtSpool("Enabled").
0.99000001::appDtGnTm("Fast_Enough"); 0.00999999::appDtGnTm("Too_Long") :- prtSpool("Disabled").
1.0::rEPEAT("Yes__Always_the_Same_"); 0.0::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Correct").
0.5::rEPEAT("Yes__Always_the_Same_"); 0.5::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Incorrect").
0.5::rEPEAT("Yes__Always_the_Same_"); 0.5::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Correct").
0.5::rEPEAT("Yes__Always_the_Same_"); 0.5::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Incorrect").
0.99::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.0::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.1::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.0::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.99900001::prtStatPaper("No_Error"); 0.00099999::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("Has_Paper").
0.00099999::prtStatPaper("No_Error"); 0.99900001::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("No_Paper").
0.99000001::prntPrcssTm("Fast_Enough"); 0.00999999::prntPrcssTm("Too_Long") :- prtSpool("Enabled").
1.0::prntPrcssTm("Fast_Enough"); 0.0::prntPrcssTm("Too_Long") :- prtSpool("Disabled").
0.999::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
0.0::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
0.1::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
0.25::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
0.5::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
0.99900001::prtStatToner("No_Error"); 0.00099999::prtStatToner("Low__None") :- tnrSpply("Adequate").
0.00099999::prtStatToner("No_Error"); 0.99900001::prtStatToner("Low__None") :- tnrSpply("Low").
0.99::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
0.1::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
0.00999999::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
0.5::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
0.3::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
0.5::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
0.5::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
0.5::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
0.99000001::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
0.0::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
0.1::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
0.5::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
0.5::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
0.5::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
0.5::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
0.5::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
0.99900001::prtStatMem("No_Error"); 0.00099999::prtStatMem("Out_of_Memory") :- prtMem("Greater_than_2_Mb").
0.2::prtStatMem("No_Error"); 0.8::prtStatMem("Out_of_Memory") :- prtMem("Less_than_2Mb").
0.9999::appData("Correct"); 0.0001::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Correct").
0.0::appData("Correct"); 1.0::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Incorrect_Corrupt").
0.0::appData("Correct"); 1.0::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Correct").
0.5::appData("Correct"); 0.5::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Incorrect_Corrupt").
0.9999::prtIcon("Normal"); 0.0001::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.7::prtIcon("Normal"); 0.3::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.25::prtIcon("Normal"); 0.75::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::prtIcon("Normal"); 0.5::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.999::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
0.01::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.0::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
0.0::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
0.5::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.5::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
0.98::avlblVrtlMmry("Adequate____1Mb_"); 0.02::avlblVrtlMmry("Inadequate____1_Mb_") :- prtPScript.
1.0::avlblVrtlMmry("Adequate____1Mb_"); 0.0::avlblVrtlMmry("Inadequate____1_Mb_") :- \+prtPScript.
0.99000001::prtStatOff("No_Error"); 0.00999999::prtStatOff("OFFLINE__OFF") :- prtOn.
0.00999999::prtStatOff("No_Error"); 0.99000001::prtStatOff("OFFLINE__OFF") :- \+prtOn.
0.999::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
0.1::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
0.25::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
0.5::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
0.5::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
0.1::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.0::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
0.0::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.5::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
0.1::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
0.5::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
problem4 :- nnPSGrphc, prtPScript, pSGRAPHIC.
0.0::problem4 :- nnPSGrphc, prtPScript, \+pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
problem4 :- \+nnPSGrphc, prtPScript, pSGRAPHIC.
0.0::problem4 :- \+nnPSGrphc, prtPScript, \+pSGRAPHIC.
0.0::problem4 :- \+nnPSGrphc, \+prtPScript, pSGRAPHIC.
0.0::problem4 :- \+nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
0.99::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
0.05::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
0.0::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("OK").
0.5::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
0.1::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
0.5::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
0.5::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("OK").
0.5::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
1.0::pSERRMEM("No_Error"); 0.0::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
0.05::pSERRMEM("No_Error"); 0.95::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
1.0::pSERRMEM("No_Error"); 0.0::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
1.0::pSERRMEM("No_Error"); 0.0::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
0.4::ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
0.2::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
0.4::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
0.5::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
0.3::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
0.5::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
problem5 :- trTypFnts, tTOK, nnTTOK.
problem5 :- trTypFnts, tTOK, \+nnTTOK.
0.0::problem5 :- trTypFnts, \+tTOK, nnTTOK.
0.0::problem5 :- trTypFnts, \+tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, tTOK, nnTTOK.
0.0::problem5 :- \+trTypFnts, tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, \+tTOK, nnTTOK.
0.0::problem5 :- \+trTypFnts, \+tTOK, \+nnTTOK.
incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
0.3::incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
0.0::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
0.5::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
0.99::hrglssDrtnAftrPrnt("Fast_Enough"); 0.01::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Fast_Enough").
0.1::hrglssDrtnAftrPrnt("Fast_Enough"); 0.9::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Too_Long").
0.99900001::tstpsTxt("x_1_Mb_Available_VM"); 0.00099999::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
0.00099999::tstpsTxt("x_1_Mb_Available_VM"); 0.99900001::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
1.0::tstpsTxt("x_1_Mb_Available_VM"); 0.0::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
1.0::tstpsTxt("x_1_Mb_Available_VM"); 0.0::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
0.99900001::deskPrntSpd("OK"); 0.00099999::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
0.00099999::deskPrntSpd("OK"); 0.99900001::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
0.00099999::deskPrntSpd("OK"); 0.99900001::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
0.5::deskPrntSpd("OK"); 0.5::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
0.25::deskPrntSpd("OK"); 0.75::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
0.5::deskPrntSpd("OK"); 0.5::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
0.5::deskPrntSpd("OK"); 0.5::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
0.5::deskPrntSpd("OK"); 0.5::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
0.99::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.0::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.1::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.0::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.0::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.2::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
0.5::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
0.1::lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
0.2::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
0.4::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
0.5::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
0.2::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
0.5::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
problem3 :- cmpltPgPrntd, prtPScript, incmpltPS.
0.0::problem3 :- cmpltPgPrntd, prtPScript, \+incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, \+incmpltPS.
problem3 :- \+cmpltPgPrntd, prtPScript, incmpltPS.
0.0::problem3 :- \+cmpltPgPrntd, prtPScript, \+incmpltPS.
0.0::problem3 :- \+cmpltPgPrntd, \+prtPScript, incmpltPS.
0.0::problem3 :- \+cmpltPgPrntd, \+prtPScript, \+incmpltPS.
0.0::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, ntGrbld.
0.0::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, \+ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, \+ntGrbld.
0.0::grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, \+ntGrbld.
0.0::grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, \+ntGrbld.
0.99900001::ntSpd("OK"); 0.00099999::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Short").
0.25::ntSpd("OK"); 0.75::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Long").
0.25::ntSpd("OK"); 0.75::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Short").
0.5::ntSpd("OK"); 0.5::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Long").
0.0::ntSpd("OK"); 1.0::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Short").
0.5::ntSpd("OK"); 0.5::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Long").
0.5::ntSpd("OK"); 0.5::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Short").
0.5::ntSpd("OK"); 0.5::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Long").
gDIIN :- appData("Correct"), prtSpool("Enabled"), eMFOK.
0.0::gDIIN :- appData("Correct"), prtSpool("Enabled"), \+eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), \+eMFOK.
0.0::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), eMFOK.
0.0::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), \+eMFOK.
0.0::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), eMFOK.
0.0::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), \+eMFOK.
0.99::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
0.2::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
0.9::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
0.5::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
0.1::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
0.5::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
0.5::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
0.5::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
0.1::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
0.5::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
0.5::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
0.5::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
0.5::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
0.5::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
0.5::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
0.5::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
0.0::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
0.9::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
grbldPS :- grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
0.5::grbldPS :- grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
1.0::problem2("OK"); 0.0::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("OK").
1.0::problem2("OK"); 0.0::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
0.0::problem2("OK"); 1.0::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
0.0::problem2("OK"); 1.0::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
1.0::problem2("OK"); 0.0::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("OK").
0.0::problem2("OK"); 1.0::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
1.0::problem2("OK"); 0.0::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
0.0::problem2("OK"); 1.0::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
0.0::problem6 :- \+grbldOtpt, prtPScript, \+grbldPS.
problem6 :- \+grbldOtpt, prtPScript, grbldPS.
0.0::problem6 :- \+grbldOtpt, \+prtPScript, \+grbldPS.
0.0::problem6 :- \+grbldOtpt, \+prtPScript, grbldPS.
0.0::problem6 :- grbldOtpt, prtPScript, \+grbldPS.
problem6 :- grbldOtpt, prtPScript, grbldPS.
problem6 :- grbldOtpt, \+prtPScript, \+grbldPS.
problem6 :- grbldOtpt, \+prtPScript, grbldPS.
0.99::prtDataOut :- gDIOUT, prtSel.
0.0::prtDataOut :- gDIOUT, \+prtSel.
0.0::prtDataOut :- \+gDIOUT, prtSel.
0.5::prtDataOut :- \+gDIOUT, \+prtSel.
0.8::prtFile :- prtDataOut.
0.2::prtFile :- \+prtDataOut.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
0.0::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
0.99::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.01::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.02::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.0::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.1::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.0::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.0::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.0::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
0.5::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
1.0::problem1("Normal_Output"); 0.0::problem1("No_Output") :- prtData.
0.0::problem1("Normal_Output"); 1.0::problem1("No_Output") :- \+prtData.
