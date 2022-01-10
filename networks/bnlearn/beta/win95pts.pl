%% ProbLog program: PGM 1
%% Created on 2021-01-28 16:02:10.378742

beta(26,16)::prntrAccptsTrtyp.
dir(11)::dataFile("Correct"); dir(26)::dataFile("Incorrect_Corrupt").
dir(7)::appOK("Correct"); dir(27)::appOK("Incorrect_Corrupt").
dir(25)::prtThread("OK"); dir(25)::prtThread("Corrupt_Buggy").
dir(3)::prtSpool("Enabled"); dir(5)::prtSpool("Disabled").
dir(17)::prtMem("Greater_than_2_Mb"); dir(20)::prtMem("Less_than_2Mb").
dir(14)::prtQueue("Short"); dir(10)::prtQueue("Long").
dir(19)::drvOK("Reinstalled"); dir(30)::drvOK("Corrupt").
beta(19,10)::scrnFntNtPrntrFnt.
dir(5)::prtMpTPth("Correct"); dir(11)::prtMpTPth("Incorrect").
dir(8)::pTROFFLINE("Online"); dir(16)::pTROFFLINE("Offline").
beta(14,30)::prtPScript.
dir(16)::netPrint("No__Local_printer_"); dir(7)::netPrint("Yes__Network_printer_").
beta(19,4)::prtSel.
dir(10)::prtPath("Correct"); dir(13)::prtPath("Incorrect").
beta(25,26)::prtPort.
dir(1)::cblPrtHrdwrOK("Operational"); dir(29)::cblPrtHrdwrOK("Not_Operational").
dir(15)::prtCbl("Connected"); dir(8)::prtCbl("Loose").
dir(14)::ePSGrphc("No____TIF___WMF___BMP_"); dir(6)::ePSGrphc("Yes____EPS_").
dir(11)::pgOrnttnOK("Correct"); dir(12)::pgOrnttnOK("Incorrect").
dir(28)::tnrSpply("Adequate"); dir(5)::tnrSpply("Low").
dir(17)::fntInstlltn("Verified"); dir(8)::fntInstlltn("Faulty").
dir(28)::fllCrrptdBffr("Intact__not_Corrupt_"); dir(6)::fllCrrptdBffr("Full_or_Corrupt").
dir(1)::dSApplctn("DOS"); dir(6)::dSApplctn("Windows").
beta(28,21)::prtOn.
dir(30)::prntngArOK("Correct"); dir(6)::prntngArOK("Incorrect").
dir(28)::grphcsRltdDrvrSttngs("Correct"); dir(22)::grphcsRltdDrvrSttngs("Incorrect").
dir(4)::drvSet("Correct"); dir(19)::drvSet("Incorrect").
beta(26,4)::prtDriver.
dir(21)::dskLocal("Greater_than_2_Mb"); dir(15)::dskLocal("Less_than_2_Mb").
dir(18)::prtPaper("Has_Paper"); dir(20)::prtPaper("No_Paper").
beta(27,3)::trTypFnts.
dir(23)::prtTimeOut("Long_Enough"); dir(2)::prtTimeOut("Too_Short").
dir(12)::ntwrkCnfg("Correct"); dir(17)::ntwrkCnfg("Incorrect").
beta(21,30)::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
beta(27,27)::nnTTOK :- prtMem("Greater_than_2_Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
beta(20,28)::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
beta(16,27)::nnTTOK :- prtMem("Greater_than_2_Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
beta(27,20)::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Verified").
beta(28,2)::nnTTOK :- prtMem("Less_than_2Mb"), scrnFntNtPrntrFnt, fntInstlltn("Faulty").
beta(10,20)::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Verified").
beta(21,28)::nnTTOK :- prtMem("Less_than_2Mb"), \+scrnFntNtPrntrFnt, fntInstlltn("Faulty").
dir(16)::appDtGnTm("Fast_Enough"); dir(14)::appDtGnTm("Too_Long") :- prtSpool("Enabled").
dir(28)::appDtGnTm("Fast_Enough"); dir(18)::appDtGnTm("Too_Long") :- prtSpool("Disabled").
dir(9)::rEPEAT("Yes__Always_the_Same_"); dir(4)::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Correct").
dir(7)::rEPEAT("Yes__Always_the_Same_"); dir(15)::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Operational"), ntwrkCnfg("Incorrect").
dir(7)::rEPEAT("Yes__Always_the_Same_"); dir(15)::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Correct").
dir(9)::rEPEAT("Yes__Always_the_Same_"); dir(18)::rEPEAT("No__Different_Each_Time_") :- cblPrtHrdwrOK("Not_Operational"), ntwrkCnfg("Incorrect").
beta(10,4)::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(21,25)::netOK :- prtPath("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(10,5)::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(2,28)::netOK :- prtPath("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(22,6)::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(16,18)::netOK :- prtPath("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(6,11)::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(15,20)::netOK :- prtPath("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
dir(9)::prtStatPaper("No_Error"); dir(24)::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("Has_Paper").
dir(13)::prtStatPaper("No_Error"); dir(15)::prtStatPaper("Jam__Out__Bin_Full") :- prtPaper("No_Paper").
dir(4)::prntPrcssTm("Fast_Enough"); dir(26)::prntPrcssTm("Too_Long") :- prtSpool("Enabled").
dir(8)::prntPrcssTm("Fast_Enough"); dir(19)::prntPrcssTm("Too_Long") :- prtSpool("Disabled").
beta(5,6)::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
beta(11,21)::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
beta(4,25)::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
beta(21,9)::nnPSGrphc :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
beta(21,27)::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
beta(25,18)::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
beta(10,24)::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
beta(1,16)::nnPSGrphc :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
dir(20)::prtStatToner("No_Error"); dir(4)::prtStatToner("Low__None") :- tnrSpply("Adequate").
dir(24)::prtStatToner("No_Error"); dir(19)::prtStatToner("Low__None") :- tnrSpply("Low").
beta(4,21)::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
beta(15,27)::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
beta(9,11)::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
beta(18,18)::cmpltPgPrntd :- prtMem("Greater_than_2_Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
beta(5,24)::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Correct").
beta(23,13)::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Correct"), prntngArOK("Incorrect").
beta(11,29)::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Correct").
beta(17,30)::cmpltPgPrntd :- prtMem("Less_than_2Mb"), pgOrnttnOK("Incorrect"), prntngArOK("Incorrect").
beta(16,3)::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
beta(11,4)::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
beta(10,3)::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
beta(21,18)::tTOK :- prtMem("Greater_than_2_Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
beta(2,30)::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), prntrAccptsTrtyp.
beta(27,18)::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Verified"), \+prntrAccptsTrtyp.
beta(27,25)::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), prntrAccptsTrtyp.
beta(24,24)::tTOK :- prtMem("Less_than_2Mb"), fntInstlltn("Faulty"), \+prntrAccptsTrtyp.
dir(14)::prtStatMem("No_Error"); dir(13)::prtStatMem("Out_of_Memory") :- prtMem("Greater_than_2_Mb").
dir(24)::prtStatMem("No_Error"); dir(24)::prtStatMem("Out_of_Memory") :- prtMem("Less_than_2Mb").
dir(24)::appData("Correct"); dir(8)::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Correct").
dir(29)::appData("Correct"); dir(3)::appData("Incorrect_or_corrupt") :- appOK("Correct"), dataFile("Incorrect_Corrupt").
dir(26)::appData("Correct"); dir(18)::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Correct").
dir(13)::appData("Correct"); dir(3)::appData("Incorrect_or_corrupt") :- appOK("Incorrect_Corrupt"), dataFile("Incorrect_Corrupt").
dir(11)::prtIcon("Normal"); dir(18)::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Online").
dir(6)::prtIcon("Normal"); dir(28)::prtIcon("Grayed_Out") :- ntwrkCnfg("Correct"), pTROFFLINE("Offline").
dir(24)::prtIcon("Normal"); dir(5)::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
dir(2)::prtIcon("Normal"); dir(5)::prtIcon("Grayed_Out") :- ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(24,9)::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
beta(3,11)::lclOK :- prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(15,8)::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(18,5)::lclOK :- prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
beta(5,30)::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
beta(29,28)::lclOK :- prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(13,15)::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(28,5)::lclOK :- prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
dir(25)::avlblVrtlMmry("Adequate____1Mb_"); dir(30)::avlblVrtlMmry("Inadequate____1_Mb_") :- prtPScript.
dir(25)::avlblVrtlMmry("Adequate____1Mb_"); dir(11)::avlblVrtlMmry("Inadequate____1_Mb_") :- \+prtPScript.
dir(2)::prtStatOff("No_Error"); dir(4)::prtStatOff("OFFLINE__OFF") :- prtOn.
dir(27)::prtStatOff("No_Error"); dir(22)::prtStatOff("OFFLINE__OFF") :- \+prtOn.
beta(7,26)::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
beta(14,12)::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
beta(18,18)::pSGRAPHIC :- prtMem("Greater_than_2_Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
beta(3,1)::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("No____TIF___WMF___BMP_").
beta(25,10)::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Correct"), ePSGrphc("Yes____EPS_").
beta(30,3)::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("No____TIF___WMF___BMP_").
beta(12,6)::pSGRAPHIC :- prtMem("Less_than_2Mb"), grphcsRltdDrvrSttngs("Incorrect"), ePSGrphc("Yes____EPS_").
dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
beta(12,28)::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(15,30)::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(3,29)::dS_LCLOK :- appData("Correct"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
beta(6,24)::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
beta(23,1)::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(26,28)::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(20,30)::dS_LCLOK :- appData("Correct"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
beta(27,6)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Operational").
beta(29,8)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(13,8)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(5,27)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Connected"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
beta(7,26)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Operational").
beta(17,24)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), prtPort, cblPrtHrdwrOK("Not_Operational").
beta(29,8)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Operational").
beta(17,17)::dS_LCLOK :- appData("Incorrect_or_corrupt"), prtCbl("Loose"), \+prtPort, cblPrtHrdwrOK("Not_Operational").
problem4 :- nnPSGrphc, prtPScript, pSGRAPHIC.
beta(8,11)::problem4 :- nnPSGrphc, prtPScript, \+pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, pSGRAPHIC.
problem4 :- nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
problem4 :- \+nnPSGrphc, prtPScript, pSGRAPHIC.
beta(10,5)::problem4 :- \+nnPSGrphc, prtPScript, \+pSGRAPHIC.
beta(27,24)::problem4 :- \+nnPSGrphc, \+prtPScript, pSGRAPHIC.
beta(12,28)::problem4 :- \+nnPSGrphc, \+prtPScript, \+pSGRAPHIC.
beta(28,24)::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
beta(11,1)::eMFOK :- appData("Correct"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
beta(21,27)::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("OK").
beta(24,30)::eMFOK :- appData("Correct"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
beta(10,8)::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("OK").
beta(16,16)::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Greater_than_2_Mb"), prtThread("Corrupt_Buggy").
beta(8,10)::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("OK").
beta(25,30)::eMFOK :- appData("Incorrect_or_corrupt"), dskLocal("Less_than_2_Mb"), prtThread("Corrupt_Buggy").
dir(27)::pSERRMEM("No_Error"); dir(6)::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
dir(29)::pSERRMEM("No_Error"); dir(11)::pSERRMEM("Low_Memory") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
dir(28)::pSERRMEM("No_Error"); dir(8)::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
dir(21)::pSERRMEM("No_Error"); dir(6)::pSERRMEM("Low_Memory") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
beta(29,25)::ntGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
beta(13,11)::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
beta(25,27)::ntGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
beta(20,25)::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
beta(8,5)::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
beta(5,3)::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
beta(9,24)::ntGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
beta(23,13)::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
beta(9,5)::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
beta(12,6)::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
beta(22,21)::ntGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
beta(21,13)::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Correct").
beta(6,7)::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), ntwrkCnfg("Incorrect").
beta(26,9)::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Correct").
beta(13,25)::ntGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), ntwrkCnfg("Incorrect").
problem5 :- trTypFnts, tTOK, nnTTOK.
problem5 :- trTypFnts, tTOK, \+nnTTOK.
beta(11,23)::problem5 :- trTypFnts, \+tTOK, nnTTOK.
beta(12,4)::problem5 :- trTypFnts, \+tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, tTOK, nnTTOK.
beta(1,20)::problem5 :- \+trTypFnts, tTOK, \+nnTTOK.
problem5 :- \+trTypFnts, \+tTOK, nnTTOK.
beta(23,3)::problem5 :- \+trTypFnts, \+tTOK, \+nnTTOK.
incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
beta(27,17)::incmpltPS :- cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
beta(7,23)::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Adequate____1Mb_").
beta(25,1)::incmpltPS :- \+cmpltPgPrntd, avlblVrtlMmry("Inadequate____1_Mb_").
dir(30)::hrglssDrtnAftrPrnt("Fast_Enough"); dir(14)::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Fast_Enough").
dir(10)::hrglssDrtnAftrPrnt("Fast_Enough"); dir(10)::hrglssDrtnAftrPrnt("Too_Long") :- appDtGnTm("Too_Long").
dir(28)::tstpsTxt("x_1_Mb_Available_VM"); dir(13)::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Adequate____1Mb_").
dir(23)::tstpsTxt("x_1_Mb_Available_VM"); dir(19)::tstpsTxt("x_1_Mb_Available_VM2") :- prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
dir(7)::tstpsTxt("x_1_Mb_Available_VM"); dir(14)::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Adequate____1Mb_").
dir(19)::tstpsTxt("x_1_Mb_Available_VM"); dir(3)::tstpsTxt("x_1_Mb_Available_VM2") :- \+prtPScript, avlblVrtlMmry("Inadequate____1_Mb_").
dir(8)::deskPrntSpd("OK"); dir(17)::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
dir(21)::deskPrntSpd("OK"); dir(1)::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
dir(5)::deskPrntSpd("OK"); dir(26)::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
dir(10)::deskPrntSpd("OK"); dir(18)::deskPrntSpd("Too_Slow") :- prtMem("Greater_than_2_Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
dir(8)::deskPrntSpd("OK"); dir(14)::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Fast_Enough").
dir(6)::deskPrntSpd("OK"); dir(6)::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Fast_Enough"), prntPrcssTm("Too_Long").
dir(5)::deskPrntSpd("OK"); dir(2)::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Fast_Enough").
dir(25)::deskPrntSpd("OK"); dir(6)::deskPrntSpd("Too_Slow") :- prtMem("Less_than_2Mb"), appDtGnTm("Too_Long"), prntPrcssTm("Too_Long").
beta(3,11)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(24,5)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(17,22)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(11,17)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(27,26)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(18,17)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(10,6)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(2,28)::dS_NTOK :- appData("Correct"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(5,3)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(9,14)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(23,8)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(2,16)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(28,18)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(10,17)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(19,27)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(23,22)::dS_NTOK :- appData("Correct"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(25,6)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(4,4)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(22,27)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(29,13)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(30,18)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(5,21)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(27,14)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(15,11)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Correct"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(21,28)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(17,7)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(30,24)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(12,9)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Correct"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
beta(14,24)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Online").
beta(9,8)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Correct"), pTROFFLINE("Offline").
beta(30,4)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Online").
beta(17,22)::dS_NTOK :- appData("Incorrect_or_corrupt"), prtPath("Incorrect"), prtMpTPth("Incorrect"), ntwrkCnfg("Incorrect"), pTROFFLINE("Offline").
lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
beta(6,29)::lclGrbld :- appData("Correct"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
beta(8,5)::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
beta(5,29)::lclGrbld :- appData("Correct"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
beta(18,8)::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
beta(29,4)::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
beta(1,23)::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
beta(8,6)::lclGrbld :- appData("Correct"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
beta(17,21)::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
beta(3,14)::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
beta(24,30)::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
beta(24,18)::lclGrbld :- appData("Incorrect_or_corrupt"), prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
beta(23,21)::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Operational").
beta(19,25)::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Greater_than_2_Mb"), cblPrtHrdwrOK("Not_Operational").
beta(6,19)::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Operational").
beta(28,6)::lclGrbld :- appData("Incorrect_or_corrupt"), \+prtDriver, prtMem("Less_than_2Mb"), cblPrtHrdwrOK("Not_Operational").
problem3 :- cmpltPgPrntd, prtPScript, incmpltPS.
beta(18,20)::problem3 :- cmpltPgPrntd, prtPScript, \+incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, incmpltPS.
problem3 :- cmpltPgPrntd, \+prtPScript, \+incmpltPS.
problem3 :- \+cmpltPgPrntd, prtPScript, incmpltPS.
beta(7,22)::problem3 :- \+cmpltPgPrntd, prtPScript, \+incmpltPS.
beta(14,29)::problem3 :- \+cmpltPgPrntd, \+prtPScript, incmpltPS.
beta(17,12)::problem3 :- \+cmpltPgPrntd, \+prtPScript, \+incmpltPS.
beta(16,22)::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, ntGrbld.
beta(13,27)::grbldOtpt :- netPrint("No__Local_printer_"), lclGrbld, \+ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("No__Local_printer_"), \+lclGrbld, \+ntGrbld.
beta(30,16)::grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), lclGrbld, \+ntGrbld.
beta(3,7)::grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, ntGrbld.
grbldOtpt :- netPrint("Yes__Network_printer_"), \+lclGrbld, \+ntGrbld.
dir(10)::ntSpd("OK"); dir(11)::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Short").
dir(7)::ntSpd("OK"); dir(23)::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Correct"), prtQueue("Long").
dir(11)::ntSpd("OK"); dir(21)::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Short").
dir(16)::ntSpd("OK"); dir(9)::ntSpd("Slow") :- deskPrntSpd("OK"), ntwrkCnfg("Incorrect"), prtQueue("Long").
dir(20)::ntSpd("OK"); dir(26)::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Short").
dir(26)::ntSpd("OK"); dir(20)::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Correct"), prtQueue("Long").
dir(9)::ntSpd("OK"); dir(10)::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Short").
dir(25)::ntSpd("OK"); dir(3)::ntSpd("Slow") :- deskPrntSpd("Too_Slow"), ntwrkCnfg("Incorrect"), prtQueue("Long").
gDIIN :- appData("Correct"), prtSpool("Enabled"), eMFOK.
beta(2,14)::gDIIN :- appData("Correct"), prtSpool("Enabled"), \+eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), eMFOK.
gDIIN :- appData("Correct"), prtSpool("Disabled"), \+eMFOK.
beta(16,29)::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), eMFOK.
beta(24,13)::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Enabled"), \+eMFOK.
beta(22,13)::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), eMFOK.
beta(1,4)::gDIIN :- appData("Incorrect_or_corrupt"), prtSpool("Disabled"), \+eMFOK.
beta(2,12)::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
beta(1,7)::gDIOUT :- prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
beta(26,6)::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
beta(19,14)::gDIOUT :- prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
beta(10,3)::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
beta(25,18)::gDIOUT :- prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
beta(7,14)::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
beta(28,16)::gDIOUT :- prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
beta(4,15)::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Reinstalled").
beta(12,28)::gDIOUT :- \+prtDriver, gDIIN, drvSet("Correct"), drvOK("Corrupt").
beta(3,26)::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
beta(12,20)::gDIOUT :- \+prtDriver, gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
beta(10,10)::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Reinstalled").
beta(7,6)::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Correct"), drvOK("Corrupt").
beta(17,27)::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Reinstalled").
beta(6,19)::gDIOUT :- \+prtDriver, \+gDIIN, drvSet("Incorrect"), drvOK("Corrupt").
beta(18,20)::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
beta(21,24)::grbldPS :- \+grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
grbldPS :- grbldOtpt, avlblVrtlMmry("Adequate____1Mb_").
beta(23,10)::grbldPS :- grbldOtpt, avlblVrtlMmry("Inadequate____1_Mb_").
dir(2)::problem2("OK"); dir(21)::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("OK").
dir(21)::problem2("OK"); dir(22)::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
dir(5)::problem2("OK"); dir(9)::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
dir(8)::problem2("OK"); dir(24)::problem2("Too_Long") :- netPrint("No__Local_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
dir(23)::problem2("OK"); dir(6)::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("OK").
dir(15)::problem2("OK"); dir(21)::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("OK"), ntSpd("Slow").
dir(18)::problem2("OK"); dir(7)::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("OK").
dir(15)::problem2("OK"); dir(1)::problem2("Too_Long") :- netPrint("Yes__Network_printer_"), deskPrntSpd("Too_Slow"), ntSpd("Slow").
beta(13,20)::problem6 :- \+grbldOtpt, prtPScript, \+grbldPS.
problem6 :- \+grbldOtpt, prtPScript, grbldPS.
beta(26,29)::problem6 :- \+grbldOtpt, \+prtPScript, \+grbldPS.
beta(11,30)::problem6 :- \+grbldOtpt, \+prtPScript, grbldPS.
beta(6,2)::problem6 :- grbldOtpt, prtPScript, \+grbldPS.
problem6 :- grbldOtpt, prtPScript, grbldPS.
problem6 :- grbldOtpt, \+prtPScript, \+grbldPS.
problem6 :- grbldOtpt, \+prtPScript, grbldPS.
beta(20,13)::prtDataOut :- gDIOUT, prtSel.
beta(15,2)::prtDataOut :- gDIOUT, \+prtSel.
beta(6,18)::prtDataOut :- \+gDIOUT, prtSel.
beta(16,18)::prtDataOut :- \+gDIOUT, \+prtSel.
beta(16,1)::prtFile :- prtDataOut.
beta(29,5)::prtFile :- \+prtDataOut.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(30,19)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(18,11)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(30,26)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(23,12)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(7,10)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(9,18)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(1,12)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(14,14)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(9,12)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(17,17)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(10,3)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(26,8)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(21,11)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(15,30)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(23,3)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(27,16)::pC2PRT :- netPrint("No__Local_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(30,7)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(29,4)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(29,30)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(5,10)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(26,5)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(28,3)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(22,24)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(19,24)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(11,16)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(14,20)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(22,25)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(28,28)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(13,21)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(16,7)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(2,10)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(12,29)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(17,12)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(3,5)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
beta(20,11)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(20,17)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(6,30)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(11,22)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(24,6)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(25,26)::pC2PRT :- netPrint("No__Local_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(28,8)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(8,24)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(12,26)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(18,7)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(2,27)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(12,25)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(5,29)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(30,11)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(21,14)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(27,14)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(23,14)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(29,14)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(9,19)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(2,16)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(26,8)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(20,22)::pC2PRT :- netPrint("Yes__Network_printer_"), prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(25,3)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(8,1)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(4,29)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(11,29)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(21,18)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(28,28)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(29,7)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(6,2)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(2,9)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(11,15)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(18,29)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(9,28)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(26,14)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(22,4)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(23,25)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(1,30)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(17,12)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(24,12)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, dS_LCLOK.
pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), dS_NTOK, \+dS_LCLOK.
beta(2,19)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, dS_LCLOK.
beta(20,29)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("DOS"), \+dS_NTOK, \+dS_LCLOK.
beta(7,6)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, dS_LCLOK.
beta(11,27)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), dS_NTOK, \+dS_LCLOK.
beta(21,23)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, dS_LCLOK.
beta(6,4)::pC2PRT :- netPrint("Yes__Network_printer_"), \+prtDataOut, \+netOK, \+lclOK, dSApplctn("Windows"), \+dS_NTOK, \+dS_LCLOK.
beta(26,23)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(7,5)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(1,25)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(1,12)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(11,19)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(25,6)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(11,12)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(3,29)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(30,23)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(27,24)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(9,4)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(5,16)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(22,2)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(1,7)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(17,11)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(2,9)::prtData :- prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(24,1)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(10,1)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(8,25)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(19,30)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(9,3)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(14,21)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(19,17)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(6,23)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(24,24)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(1,24)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(12,19)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(3,30)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(29,16)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(26,5)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(29,14)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(12,24)::prtData :- prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(8,15)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(3,25)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(21,30)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(22,6)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(12,15)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(24,4)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(18,21)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(28,30)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(27,16)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(2,10)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(18,7)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(25,1)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(11,9)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(16,7)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(20,5)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(14,5)::prtData :- prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(7,7)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(11,22)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(14,24)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(11,23)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(18,22)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(21,16)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(4,3)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(26,26)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(3,21)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(30,1)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(15,20)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(29,14)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(2,19)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(11,13)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(29,2)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(12,9)::prtData :- prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(6,16)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(26,21)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(21,24)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(11,14)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(18,17)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(6,21)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(1,27)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(9,25)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(4,9)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(8,25)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(28,10)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(8,24)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(17,1)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(6,22)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(2,5)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(9,4)::prtData :- \+prtOn, prtPaper("Has_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(7,2)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(17,30)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(9,29)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(4,21)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(16,24)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(14,29)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(2,17)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(11,7)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(25,15)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(8,13)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(18,8)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(26,13)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(16,5)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(1,14)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(13,25)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(25,18)::prtData :- \+prtOn, prtPaper("Has_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(25,14)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(29,28)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(29,30)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(1,13)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(9,2)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(10,2)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(9,10)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(8,9)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(19,26)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(28,15)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(27,6)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(14,13)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(13,6)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(2,5)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(8,21)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(5,6)::prtData :- \+prtOn, prtPaper("No_Paper"), pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(24,29)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(2,11)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(30,5)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(21,8)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(16,15)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(28,6)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(24,2)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(5,21)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Greater_than_2_Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(3,21)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(14,7)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(20,2)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(21,1)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Long_Enough"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
beta(28,19)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Adequate").
beta(3,6)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Intact__not_Corrupt_"), tnrSpply("Low").
beta(28,2)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Adequate").
beta(30,19)::prtData :- \+prtOn, prtPaper("No_Paper"), \+pC2PRT, prtMem("Less_than_2Mb"), prtTimeOut("Too_Short"), fllCrrptdBffr("Full_or_Corrupt"), tnrSpply("Low").
dir(12)::problem1("Normal_Output"); dir(24)::problem1("No_Output") :- prtData.
dir(1)::problem1("Normal_Output"); dir(18)::problem1("No_Output") :- \+prtData.
