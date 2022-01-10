%% ProbLog program: PGM 1
%% Created on 2021-02-11 12:41:24.755096

0.98::sNode_4.
0.5::rESOLVE40.
0.8::aXIS33.
0.5::sUM75.
0.5::gRAV78.
0.5::gOAL68.
0.5::gOAL72.
0.98::sNode_14.
0.3::fIND58.
0.5::iDENTIFY55.
0.3::vECTOR69.
0.5::sTRAT_90("SNode_92_1"); 0.5::sTRAT_90("SNode_91_2").
0.5::vECTOR44.
0.5::cHOOSE19.
0.98::sNode_6.
0.98::sNode_7.
0.98::gIVEN_1.
0.5::nEED67.
0.5::iDENTIFY59.
0.9::vECTOR70.
0.5::aPPLY32.
0.5::vECTOR27.
0.5::sYSTEM18.
0.5::mAXIMIZE34.
0.5::sYSTEM46.
0.98::sNode_19.
0.98::sNode_12.
0.5::kNOWN6.
0.5::nEED36.
0.5::vELOCITY7.
0.5::cHOOSE62.
0.5::dISPLACEM0.
0.3::tRY12.
0.5::cHOOSE35.
0.5::cHOOSE47.
0.5::wRITE63.
0.5::gOAL65.
0.98::sNode_13.
0.5::nORMAL50.
0.98::sNode_18.
0.5::iDENTIFY41.
0.4::iDENTIFY43.
0.5::cONSTANT5.
0.7::wEIGHT56.
0.98::sNode_9.
0.5::nEWTONS45.
0.6::eQUAL71.
0.7::vAR20.
0.5::nEED1.
0.5::iDENTIFY39.
0.5::rESOLVE37.
0.9::tRY25.
0.5::vECTOR73.
0.5::cOMPO16.
0.5::vALUE3.
0.5::wRITE31.
0.5::aPPLY61.
0.5::kINE29.
0.98::sNode_3.
0.5::iDENTIFY10.
0.5::kINEMATI17.
0.5::aPPLY77.
0.5::nULL48.
0.98::gOAL_2.
0.5::kNOWN8.
0.5::dEFINE23.
0.5::nEWTONS74.
0.8::fORCE60.
0.4::eQUATION28.
0.5::gRAV2.
0.5::wRITE64.
0.5::rESOLVE38.
0.98::sNode_15.
0.5::wRITE30.
0.98::sNode_17.
0.5::rESOLVE42.
0.354::nORMAL52.
0.5::tRY76.
0.4::gOAL66.
0.98::sNode_16.
0.98::sNode_5.
0.98::sNode_11.
0.5::iDENTIFY9.
0.9::gIVEN21.
0.5::fIND49.
0.9::sLIDING4.
0.7::wEIGHT57.
0.5::iDENTIFY22.
0.98::sNode_10.
0.2::sNode_47 :- \+sNode_3, \+vELOCITY7.
0.2::sNode_47 :- \+sNode_3, vELOCITY7.
0.2::sNode_47 :- sNode_3, \+vELOCITY7.
0.99992::sNode_47 :- sNode_3, vELOCITY7.
0.1::sNode_25 :- \+sNode_15, \+sLIDING4.
0.1::sNode_25 :- \+sNode_15, sLIDING4.
0.1::sNode_25 :- sNode_15, \+sLIDING4.
0.99991::sNode_25 :- sNode_15, sLIDING4.
0.2::hORIZ53 :- \+nORMAL52.
hORIZ53 :- nORMAL52.
0.0::iNCLINE51 :- \+nORMAL52.
iNCLINE51 :- nORMAL52.
0.8::bUGGY54 :- \+nORMAL52.
0.0::bUGGY54 :- nORMAL52.
0.0::rApp1 :- \+dISPLACEM0, \+sNode_3.
0.0::rApp1 :- \+dISPLACEM0, sNode_3.
0.0::rApp1 :- dISPLACEM0, \+sNode_3.
0.9999::rApp1 :- dISPLACEM0, sNode_3.
0.05::tRY24 :- \+tRY25.
tRY24 :- tRY25.
0.2::gOAL_48 :- \+gOAL_2, \+cOMPO16.
0.2::gOAL_48 :- \+gOAL_2, cOMPO16.
0.2::gOAL_48 :- gOAL_2, \+cOMPO16.
0.99992::gOAL_48 :- gOAL_2, cOMPO16.
0.1::tRY15 :- \+tRY12.
tRY15 :- tRY12.
0.0::rApp2 :- \+gIVEN_1.
0.9999::rApp2 :- gIVEN_1.
0.1::tRY14 :- \+tRY12.
tRY14 :- tRY12.
0.2::sNode_26 :- \+sNode_11, \+cONSTANT5.
0.2::sNode_26 :- \+sNode_11, cONSTANT5.
0.2::sNode_26 :- sNode_11, \+cONSTANT5.
0.99992::sNode_26 :- sNode_11, cONSTANT5.
0.2::sNode_20 :- \+sNode_16, \+nEED1.
0.2::sNode_20 :- \+sNode_16, nEED1.
0.2::sNode_20 :- sNode_16, \+nEED1.
0.99992::sNode_20 :- sNode_16, nEED1.
0.2::sNode_41 :- \+sNode_9, \+cONSTANT5.
0.2::sNode_41 :- \+sNode_9, cONSTANT5.
0.2::sNode_41 :- sNode_9, \+cONSTANT5.
0.99992::sNode_41 :- sNode_9, cONSTANT5.
0.1::sNode_33 :- \+sNode_10, \+gIVEN21.
0.1::sNode_33 :- \+sNode_10, gIVEN21.
0.1::sNode_33 :- sNode_10, \+gIVEN21.
0.99991::sNode_33 :- sNode_10, gIVEN21.
0.2::tRY11 :- \+tRY12.
tRY11 :- tRY12.
0.1::tRY26 :- \+tRY25.
tRY26 :- tRY25.
0.2::sNode_34 :- \+sNode_10, \+cONSTANT5.
0.2::sNode_34 :- \+sNode_10, cONSTANT5.
0.2::sNode_34 :- sNode_10, \+cONSTANT5.
0.99992::sNode_34 :- sNode_10, cONSTANT5.
0.0::rApp4 :- \+kNOWN8, \+sNode_11.
0.0::rApp4 :- \+kNOWN8, sNode_11.
0.0::rApp4 :- kNOWN8, \+sNode_11.
0.9999::rApp4 :- kNOWN8, sNode_11.
0.2::tRY13 :- \+tRY12.
tRY13 :- tRY12.
0.2::sNode_92 :- \+sNode_12, sTRAT_90("SNode_92_1"), \+bUGGY54.
0.2::sNode_92 :- \+sNode_12, sTRAT_90("SNode_92_1"), bUGGY54.
0.2::sNode_92 :- \+sNode_12, sTRAT_90("SNode_91_2"), \+bUGGY54.
0.2::sNode_92 :- \+sNode_12, sTRAT_90("SNode_91_2"), bUGGY54.
0.2::sNode_92 :- sNode_12, sTRAT_90("SNode_92_1"), \+bUGGY54.
0.99992::sNode_92 :- sNode_12, sTRAT_90("SNode_92_1"), bUGGY54.
0.2::sNode_92 :- sNode_12, sTRAT_90("SNode_91_2"), \+bUGGY54.
0.2::sNode_92 :- sNode_12, sTRAT_90("SNode_91_2"), bUGGY54.
0.2::sNode_8 :- \+rApp1, \+rApp2.
sNode_8 :- \+rApp1, rApp2.
sNode_8 :- rApp1, \+rApp2.
sNode_8 :- rApp1, rApp2.
0.0::rApp3 :- \+kNOWN6, \+sNode_26, \+sNode_47.
0.0::rApp3 :- \+kNOWN6, \+sNode_26, sNode_47.
0.0::rApp3 :- \+kNOWN6, sNode_26, \+sNode_47.
0.0::rApp3 :- \+kNOWN6, sNode_26, sNode_47.
0.0::rApp3 :- kNOWN6, \+sNode_26, \+sNode_47.
0.0::rApp3 :- kNOWN6, \+sNode_26, sNode_47.
0.0::rApp3 :- kNOWN6, sNode_26, \+sNode_47.
0.9999::rApp3 :- kNOWN6, sNode_26, sNode_47.
0.2::sNode_21 :- \+sNode_20, \+gRAV2.
0.2::sNode_21 :- \+sNode_20, gRAV2.
0.2::sNode_21 :- sNode_20, \+gRAV2.
0.99992::sNode_21 :- sNode_20, gRAV2.
0.2::gOAL_49 :- \+sNode_5, \+sNode_6, \+gOAL_48, \+tRY11.
0.2::gOAL_49 :- \+sNode_5, \+sNode_6, \+gOAL_48, tRY11.
0.2::gOAL_49 :- \+sNode_5, \+sNode_6, gOAL_48, \+tRY11.
0.2::gOAL_49 :- \+sNode_5, \+sNode_6, gOAL_48, tRY11.
0.2::gOAL_49 :- \+sNode_5, sNode_6, \+gOAL_48, \+tRY11.
0.2::gOAL_49 :- \+sNode_5, sNode_6, \+gOAL_48, tRY11.
0.2::gOAL_49 :- \+sNode_5, sNode_6, gOAL_48, \+tRY11.
0.2::gOAL_49 :- \+sNode_5, sNode_6, gOAL_48, tRY11.
0.2::gOAL_49 :- sNode_5, \+sNode_6, \+gOAL_48, \+tRY11.
0.2::gOAL_49 :- sNode_5, \+sNode_6, \+gOAL_48, tRY11.
0.2::gOAL_49 :- sNode_5, \+sNode_6, gOAL_48, \+tRY11.
0.2::gOAL_49 :- sNode_5, \+sNode_6, gOAL_48, tRY11.
0.2::gOAL_49 :- sNode_5, sNode_6, \+gOAL_48, \+tRY11.
0.2::gOAL_49 :- sNode_5, sNode_6, \+gOAL_48, tRY11.
0.2::gOAL_49 :- sNode_5, sNode_6, gOAL_48, \+tRY11.
0.99992::gOAL_49 :- sNode_5, sNode_6, gOAL_48, tRY11.
0.1::sNode_24 :- \+sNode_21, \+vALUE3.
0.1::sNode_24 :- \+sNode_21, vALUE3.
0.1::sNode_24 :- sNode_21, \+vALUE3.
0.99991::sNode_24 :- sNode_21, vALUE3.
0.2::sNode_27 :- \+rApp3, \+rApp4.
sNode_27 :- \+rApp3, rApp4.
sNode_27 :- rApp3, \+rApp4.
sNode_27 :- rApp3, rApp4.
0.2::sNode_42 :- \+sNode_8, \+sNode_41, \+kNOWN6.
0.2::sNode_42 :- \+sNode_8, \+sNode_41, kNOWN6.
0.2::sNode_42 :- \+sNode_8, sNode_41, \+kNOWN6.
0.2::sNode_42 :- \+sNode_8, sNode_41, kNOWN6.
0.2::sNode_42 :- sNode_8, \+sNode_41, \+kNOWN6.
0.2::sNode_42 :- sNode_8, \+sNode_41, kNOWN6.
0.2::sNode_42 :- sNode_8, sNode_41, \+kNOWN6.
0.99992::sNode_42 :- sNode_8, sNode_41, kNOWN6.
0.2::gOAL_50 :- \+gOAL_49, \+cHOOSE19.
0.2::gOAL_50 :- \+gOAL_49, cHOOSE19.
0.2::gOAL_50 :- gOAL_49, \+cHOOSE19.
0.99992::gOAL_50 :- gOAL_49, cHOOSE19.
0.1::sNode_51 :- \+sNode_17, \+gOAL_50, \+sYSTEM18.
0.1::sNode_51 :- \+sNode_17, \+gOAL_50, sYSTEM18.
0.1::sNode_51 :- \+sNode_17, gOAL_50, \+sYSTEM18.
0.1::sNode_51 :- \+sNode_17, gOAL_50, sYSTEM18.
0.1::sNode_51 :- sNode_17, \+gOAL_50, \+sYSTEM18.
0.1::sNode_51 :- sNode_17, \+gOAL_50, sYSTEM18.
0.1::sNode_51 :- sNode_17, gOAL_50, \+sYSTEM18.
0.99991::sNode_51 :- sNode_17, gOAL_50, sYSTEM18.
0.2::sNode_52 :- \+sNode_51, \+kINEMATI17.
0.2::sNode_52 :- \+sNode_51, kINEMATI17.
0.2::sNode_52 :- sNode_51, \+kINEMATI17.
0.99992::sNode_52 :- sNode_51, kINEMATI17.
0.2::gOAL_53 :- \+gOAL_49, \+sNode_52, \+iDENTIFY10.
0.2::gOAL_53 :- \+gOAL_49, \+sNode_52, iDENTIFY10.
0.2::gOAL_53 :- \+gOAL_49, sNode_52, \+iDENTIFY10.
0.2::gOAL_53 :- \+gOAL_49, sNode_52, iDENTIFY10.
0.2::gOAL_53 :- gOAL_49, \+sNode_52, \+iDENTIFY10.
0.2::gOAL_53 :- gOAL_49, \+sNode_52, iDENTIFY10.
0.2::gOAL_53 :- gOAL_49, sNode_52, \+iDENTIFY10.
0.99992::gOAL_53 :- gOAL_49, sNode_52, iDENTIFY10.
0.2::gOAL_56 :- \+gOAL_49, \+sNode_52, \+aPPLY32.
0.2::gOAL_56 :- \+gOAL_49, \+sNode_52, aPPLY32.
0.2::gOAL_56 :- \+gOAL_49, sNode_52, \+aPPLY32.
0.2::gOAL_56 :- \+gOAL_49, sNode_52, aPPLY32.
0.2::gOAL_56 :- gOAL_49, \+sNode_52, \+aPPLY32.
0.2::gOAL_56 :- gOAL_49, \+sNode_52, aPPLY32.
0.2::gOAL_56 :- gOAL_49, sNode_52, \+aPPLY32.
0.99992::gOAL_56 :- gOAL_49, sNode_52, aPPLY32.
0.2::sNode_28 :- \+sNode_27, \+gOAL_53, \+iDENTIFY9.
0.2::sNode_28 :- \+sNode_27, \+gOAL_53, iDENTIFY9.
0.2::sNode_28 :- \+sNode_27, gOAL_53, \+iDENTIFY9.
0.2::sNode_28 :- \+sNode_27, gOAL_53, iDENTIFY9.
0.2::sNode_28 :- sNode_27, \+gOAL_53, \+iDENTIFY9.
0.2::sNode_28 :- sNode_27, \+gOAL_53, iDENTIFY9.
0.2::sNode_28 :- sNode_27, gOAL_53, \+iDENTIFY9.
0.99992::sNode_28 :- sNode_27, gOAL_53, iDENTIFY9.
0.2::sNode_54 :- \+gOAL_53, \+iDENTIFY41.
0.2::sNode_54 :- \+gOAL_53, iDENTIFY41.
0.2::sNode_54 :- gOAL_53, \+iDENTIFY41.
0.99992::sNode_54 :- gOAL_53, iDENTIFY41.
0.2::sNode_55 :- \+sNode_34, \+gOAL_53, \+iDENTIFY43.
0.2::sNode_55 :- \+sNode_34, \+gOAL_53, iDENTIFY43.
0.2::sNode_55 :- \+sNode_34, gOAL_53, \+iDENTIFY43.
0.2::sNode_55 :- \+sNode_34, gOAL_53, iDENTIFY43.
0.2::sNode_55 :- sNode_34, \+gOAL_53, \+iDENTIFY43.
0.2::sNode_55 :- sNode_34, \+gOAL_53, iDENTIFY43.
0.2::sNode_55 :- sNode_34, gOAL_53, \+iDENTIFY43.
0.99992::sNode_55 :- sNode_34, gOAL_53, iDENTIFY43.
0.2::sNode_43 :- \+sNode_42, \+gOAL_53, \+iDENTIFY39.
0.2::sNode_43 :- \+sNode_42, \+gOAL_53, iDENTIFY39.
0.2::sNode_43 :- \+sNode_42, gOAL_53, \+iDENTIFY39.
0.2::sNode_43 :- \+sNode_42, gOAL_53, iDENTIFY39.
0.2::sNode_43 :- sNode_42, \+gOAL_53, \+iDENTIFY39.
0.2::sNode_43 :- sNode_42, \+gOAL_53, iDENTIFY39.
0.2::sNode_43 :- sNode_42, gOAL_53, \+iDENTIFY39.
0.99992::sNode_43 :- sNode_42, gOAL_53, iDENTIFY39.
0.2::gOAL_57 :- \+gOAL_56, \+cHOOSE35.
0.2::gOAL_57 :- \+gOAL_56, cHOOSE35.
0.2::gOAL_57 :- gOAL_56, \+cHOOSE35.
0.99992::gOAL_57 :- gOAL_56, cHOOSE35.
0.2::sNode_59 :- \+sNode_7, \+gOAL_57, \+mAXIMIZE34.
0.2::sNode_59 :- \+sNode_7, \+gOAL_57, mAXIMIZE34.
0.2::sNode_59 :- \+sNode_7, gOAL_57, \+mAXIMIZE34.
0.2::sNode_59 :- \+sNode_7, gOAL_57, mAXIMIZE34.
0.2::sNode_59 :- sNode_7, \+gOAL_57, \+mAXIMIZE34.
0.2::sNode_59 :- sNode_7, \+gOAL_57, mAXIMIZE34.
0.2::sNode_59 :- sNode_7, gOAL_57, \+mAXIMIZE34.
0.99992::sNode_59 :- sNode_7, gOAL_57, mAXIMIZE34.
0.2::sNode_29 :- \+sNode_28, \+vAR20.
0.2::sNode_29 :- \+sNode_28, vAR20.
0.2::sNode_29 :- sNode_28, \+vAR20.
0.99992::sNode_29 :- sNode_28, vAR20.
0.2::sNode_44 :- \+sNode_43, \+vAR20.
0.2::sNode_44 :- \+sNode_43, vAR20.
0.2::sNode_44 :- sNode_43, \+vAR20.
0.99992::sNode_44 :- sNode_43, vAR20.
0.1::sNode_46 :- \+sNode_44, \+vALUE3.
0.1::sNode_46 :- \+sNode_44, vALUE3.
0.1::sNode_46 :- sNode_44, \+vALUE3.
0.99991::sNode_46 :- sNode_44, vALUE3.
0.1::sNode_31 :- \+sNode_29, \+vALUE3.
0.1::sNode_31 :- \+sNode_29, vALUE3.
0.1::sNode_31 :- sNode_29, \+vALUE3.
0.99991::sNode_31 :- sNode_29, vALUE3.
0.2::sNode_60 :- \+sNode_59, \+aXIS33.
0.2::sNode_60 :- \+sNode_59, aXIS33.
0.2::sNode_60 :- sNode_59, \+aXIS33.
0.99992::sNode_60 :- sNode_59, aXIS33.
0.2::gOAL_61 :- \+gOAL_56, \+sNode_60, \+wRITE31.
0.2::gOAL_61 :- \+gOAL_56, \+sNode_60, wRITE31.
0.2::gOAL_61 :- \+gOAL_56, sNode_60, \+wRITE31.
0.2::gOAL_61 :- \+gOAL_56, sNode_60, wRITE31.
0.2::gOAL_61 :- gOAL_56, \+sNode_60, \+wRITE31.
0.2::gOAL_61 :- gOAL_56, \+sNode_60, wRITE31.
0.2::gOAL_61 :- gOAL_56, sNode_60, \+wRITE31.
0.99992::gOAL_61 :- gOAL_56, sNode_60, wRITE31.
0.2::gOAL_62 :- \+gOAL_61, \+wRITE30.
0.2::gOAL_62 :- \+gOAL_61, wRITE30.
0.2::gOAL_62 :- gOAL_61, \+wRITE30.
0.99992::gOAL_62 :- gOAL_61, wRITE30.
0.2::gOAL_63 :- \+sNode_28, \+gOAL_62, \+rESOLVE37.
0.2::gOAL_63 :- \+sNode_28, \+gOAL_62, rESOLVE37.
0.2::gOAL_63 :- \+sNode_28, gOAL_62, \+rESOLVE37.
0.2::gOAL_63 :- \+sNode_28, gOAL_62, rESOLVE37.
0.2::gOAL_63 :- sNode_28, \+gOAL_62, \+rESOLVE37.
0.2::gOAL_63 :- sNode_28, \+gOAL_62, rESOLVE37.
0.2::gOAL_63 :- sNode_28, gOAL_62, \+rESOLVE37.
0.99992::gOAL_63 :- sNode_28, gOAL_62, rESOLVE37.
0.2::gOAL_66 :- \+sNode_43, \+gOAL_62, \+rESOLVE38.
0.2::gOAL_66 :- \+sNode_43, \+gOAL_62, rESOLVE38.
0.2::gOAL_66 :- \+sNode_43, gOAL_62, \+rESOLVE38.
0.2::gOAL_66 :- \+sNode_43, gOAL_62, rESOLVE38.
0.2::gOAL_66 :- sNode_43, \+gOAL_62, \+rESOLVE38.
0.2::gOAL_66 :- sNode_43, \+gOAL_62, rESOLVE38.
0.2::gOAL_66 :- sNode_43, gOAL_62, \+rESOLVE38.
0.99992::gOAL_66 :- sNode_43, gOAL_62, rESOLVE38.
0.2::gOAL_72 :- \+sNode_55, \+gOAL_62, \+rESOLVE42.
0.2::gOAL_72 :- \+sNode_55, \+gOAL_62, rESOLVE42.
0.2::gOAL_72 :- \+sNode_55, gOAL_62, \+rESOLVE42.
0.2::gOAL_72 :- \+sNode_55, gOAL_62, rESOLVE42.
0.2::gOAL_72 :- sNode_55, \+gOAL_62, \+rESOLVE42.
0.2::gOAL_72 :- sNode_55, \+gOAL_62, rESOLVE42.
0.2::gOAL_72 :- sNode_55, gOAL_62, \+rESOLVE42.
0.99992::gOAL_72 :- sNode_55, gOAL_62, rESOLVE42.
0.2::gOAL_69 :- \+sNode_54, \+gOAL_62, \+rESOLVE40.
0.2::gOAL_69 :- \+sNode_54, \+gOAL_62, rESOLVE40.
0.2::gOAL_69 :- \+sNode_54, gOAL_62, \+rESOLVE40.
0.2::gOAL_69 :- \+sNode_54, gOAL_62, rESOLVE40.
0.2::gOAL_69 :- sNode_54, \+gOAL_62, \+rESOLVE40.
0.2::gOAL_69 :- sNode_54, \+gOAL_62, rESOLVE40.
0.2::gOAL_69 :- sNode_54, gOAL_62, \+rESOLVE40.
0.99992::gOAL_69 :- sNode_54, gOAL_62, rESOLVE40.
0.2::sNode_67 :- \+gOAL_66, \+nEED36.
0.2::sNode_67 :- \+gOAL_66, nEED36.
0.2::sNode_67 :- gOAL_66, \+nEED36.
0.99992::sNode_67 :- gOAL_66, nEED36.
0.2::sNode_64 :- \+gOAL_63, \+nEED36.
0.2::sNode_64 :- \+gOAL_63, nEED36.
0.2::sNode_64 :- gOAL_63, \+nEED36.
0.99992::sNode_64 :- gOAL_63, nEED36.
0.2::sNode_70 :- \+gOAL_69, \+nEED36.
0.2::sNode_70 :- \+gOAL_69, nEED36.
0.2::sNode_70 :- gOAL_69, \+nEED36.
0.99992::sNode_70 :- gOAL_69, nEED36.
0.2::sNode_73 :- \+gOAL_72, \+nEED36.
0.2::sNode_73 :- \+gOAL_72, nEED36.
0.2::sNode_73 :- gOAL_72, \+nEED36.
0.99992::sNode_73 :- gOAL_72, nEED36.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, \+sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, \+sNode_64, sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, \+sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- \+gOAL_62, sNode_64, sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, \+sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, \+sNode_64, sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, \+sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, \+sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, \+sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, \+sNode_70, sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, \+sNode_70, sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, sNode_70, \+sNode_73, \+kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, sNode_70, \+sNode_73, kINE29.
0.1::sNode_74 :- gOAL_62, sNode_64, sNode_67, sNode_70, sNode_73, \+kINE29.
0.99991::sNode_74 :- gOAL_62, sNode_64, sNode_67, sNode_70, sNode_73, kINE29.
0.1::sNode_65 :- \+sNode_29, \+gOAL_63, \+sNode_64, \+nULL48.
0.1::sNode_65 :- \+sNode_29, \+gOAL_63, \+sNode_64, nULL48.
0.1::sNode_65 :- \+sNode_29, \+gOAL_63, sNode_64, \+nULL48.
0.1::sNode_65 :- \+sNode_29, \+gOAL_63, sNode_64, nULL48.
0.1::sNode_65 :- \+sNode_29, gOAL_63, \+sNode_64, \+nULL48.
0.1::sNode_65 :- \+sNode_29, gOAL_63, \+sNode_64, nULL48.
0.1::sNode_65 :- \+sNode_29, gOAL_63, sNode_64, \+nULL48.
0.1::sNode_65 :- \+sNode_29, gOAL_63, sNode_64, nULL48.
0.1::sNode_65 :- sNode_29, \+gOAL_63, \+sNode_64, \+nULL48.
0.1::sNode_65 :- sNode_29, \+gOAL_63, \+sNode_64, nULL48.
0.1::sNode_65 :- sNode_29, \+gOAL_63, sNode_64, \+nULL48.
0.1::sNode_65 :- sNode_29, \+gOAL_63, sNode_64, nULL48.
0.1::sNode_65 :- sNode_29, gOAL_63, \+sNode_64, \+nULL48.
0.1::sNode_65 :- sNode_29, gOAL_63, \+sNode_64, nULL48.
0.1::sNode_65 :- sNode_29, gOAL_63, sNode_64, \+nULL48.
0.99991::sNode_65 :- sNode_29, gOAL_63, sNode_64, nULL48.
0.1::sNode_68 :- \+gOAL_66, \+sNode_67, \+vECTOR44.
0.1::sNode_68 :- \+gOAL_66, \+sNode_67, vECTOR44.
0.1::sNode_68 :- \+gOAL_66, sNode_67, \+vECTOR44.
0.1::sNode_68 :- \+gOAL_66, sNode_67, vECTOR44.
0.1::sNode_68 :- gOAL_66, \+sNode_67, \+vECTOR44.
0.1::sNode_68 :- gOAL_66, \+sNode_67, vECTOR44.
0.1::sNode_68 :- gOAL_66, sNode_67, \+vECTOR44.
0.99991::sNode_68 :- gOAL_66, sNode_67, vECTOR44.
0.1::sNode_75 :- \+sNode_4, \+gOAL_72, \+sNode_73, \+vECTOR44.
0.1::sNode_75 :- \+sNode_4, \+gOAL_72, \+sNode_73, vECTOR44.
0.1::sNode_75 :- \+sNode_4, \+gOAL_72, sNode_73, \+vECTOR44.
0.1::sNode_75 :- \+sNode_4, \+gOAL_72, sNode_73, vECTOR44.
0.1::sNode_75 :- \+sNode_4, gOAL_72, \+sNode_73, \+vECTOR44.
0.1::sNode_75 :- \+sNode_4, gOAL_72, \+sNode_73, vECTOR44.
0.1::sNode_75 :- \+sNode_4, gOAL_72, sNode_73, \+vECTOR44.
0.1::sNode_75 :- \+sNode_4, gOAL_72, sNode_73, vECTOR44.
0.1::sNode_75 :- sNode_4, \+gOAL_72, \+sNode_73, \+vECTOR44.
0.1::sNode_75 :- sNode_4, \+gOAL_72, \+sNode_73, vECTOR44.
0.1::sNode_75 :- sNode_4, \+gOAL_72, sNode_73, \+vECTOR44.
0.1::sNode_75 :- sNode_4, \+gOAL_72, sNode_73, vECTOR44.
0.1::sNode_75 :- sNode_4, gOAL_72, \+sNode_73, \+vECTOR44.
0.1::sNode_75 :- sNode_4, gOAL_72, \+sNode_73, vECTOR44.
0.1::sNode_75 :- sNode_4, gOAL_72, sNode_73, \+vECTOR44.
0.99991::sNode_75 :- sNode_4, gOAL_72, sNode_73, vECTOR44.
0.1::sNode_71 :- \+gOAL_69, \+sNode_70, \+vECTOR44.
0.1::sNode_71 :- \+gOAL_69, \+sNode_70, vECTOR44.
0.1::sNode_71 :- \+gOAL_69, sNode_70, \+vECTOR44.
0.1::sNode_71 :- \+gOAL_69, sNode_70, vECTOR44.
0.1::sNode_71 :- gOAL_69, \+sNode_70, \+vECTOR44.
0.1::sNode_71 :- gOAL_69, \+sNode_70, vECTOR44.
0.1::sNode_71 :- gOAL_69, sNode_70, \+vECTOR44.
0.99991::sNode_71 :- gOAL_69, sNode_70, vECTOR44.
0.2::gOAL_80 :- \+sNode_75, \+eQUATION28.
0.2::gOAL_80 :- \+sNode_75, eQUATION28.
0.2::gOAL_80 :- sNode_75, \+eQUATION28.
0.99992::gOAL_80 :- sNode_75, eQUATION28.
0.2::gOAL_79 :- \+sNode_74, \+sNode_75, \+eQUATION28.
0.2::gOAL_79 :- \+sNode_74, \+sNode_75, eQUATION28.
0.2::gOAL_79 :- \+sNode_74, sNode_75, \+eQUATION28.
0.2::gOAL_79 :- \+sNode_74, sNode_75, eQUATION28.
0.2::gOAL_79 :- sNode_74, \+sNode_75, \+eQUATION28.
0.2::gOAL_79 :- sNode_74, \+sNode_75, eQUATION28.
0.2::gOAL_79 :- sNode_74, sNode_75, \+eQUATION28.
0.99992::gOAL_79 :- sNode_74, sNode_75, eQUATION28.
0.0::rApp5 :- \+vECTOR27, \+gOAL_79.
0.0::rApp5 :- \+vECTOR27, gOAL_79.
0.0::rApp5 :- vECTOR27, \+gOAL_79.
0.9999::rApp5 :- vECTOR27, gOAL_79.
0.0::rApp6 :- \+cOMPO16, \+gOAL_80.
0.0::rApp6 :- \+cOMPO16, gOAL_80.
0.0::rApp6 :- cOMPO16, \+gOAL_80.
0.9999::rApp6 :- cOMPO16, gOAL_80.
0.2::gOAL_81 :- \+rApp5, \+rApp6.
gOAL_81 :- \+rApp5, rApp6.
gOAL_81 :- rApp5, \+rApp6.
gOAL_81 :- rApp5, rApp6.
0.2::gOAL_83 :- \+gOAL_81, \+tRY24.
0.2::gOAL_83 :- \+gOAL_81, tRY24.
0.2::gOAL_83 :- gOAL_81, \+tRY24.
0.99992::gOAL_83 :- gOAL_81, tRY24.
0.2::gOAL_84 :- \+gOAL_83, \+cHOOSE47.
0.2::gOAL_84 :- \+gOAL_83, cHOOSE47.
0.2::gOAL_84 :- gOAL_83, \+cHOOSE47.
0.99992::gOAL_84 :- gOAL_83, cHOOSE47.
0.1::sNode_86 :- \+gOAL_84, \+sYSTEM46.
0.1::sNode_86 :- \+gOAL_84, sYSTEM46.
0.1::sNode_86 :- gOAL_84, \+sYSTEM46.
0.99991::sNode_86 :- gOAL_84, sYSTEM46.
0.2::sNode_156 :- \+sNode_86, \+nEWTONS45.
0.2::sNode_156 :- \+sNode_86, nEWTONS45.
0.2::sNode_156 :- sNode_86, \+nEWTONS45.
0.99992::sNode_156 :- sNode_86, nEWTONS45.
0.3::gOAL_87 :- \+gOAL_83, \+sNode_156, \+fIND49.
0.3::gOAL_87 :- \+gOAL_83, \+sNode_156, fIND49.
0.3::gOAL_87 :- \+gOAL_83, sNode_156, \+fIND49.
0.3::gOAL_87 :- \+gOAL_83, sNode_156, fIND49.
0.3::gOAL_87 :- gOAL_83, \+sNode_156, \+fIND49.
0.3::gOAL_87 :- gOAL_83, \+sNode_156, fIND49.
0.3::gOAL_87 :- gOAL_83, sNode_156, \+fIND49.
0.99993::gOAL_87 :- gOAL_83, sNode_156, fIND49.
0.2::gOAL_98 :- \+gOAL_83, \+sNode_156, \+dEFINE23.
0.2::gOAL_98 :- \+gOAL_83, \+sNode_156, dEFINE23.
0.2::gOAL_98 :- \+gOAL_83, sNode_156, \+dEFINE23.
0.2::gOAL_98 :- \+gOAL_83, sNode_156, dEFINE23.
0.2::gOAL_98 :- gOAL_83, \+sNode_156, \+dEFINE23.
0.2::gOAL_98 :- gOAL_83, \+sNode_156, dEFINE23.
0.2::gOAL_98 :- gOAL_83, sNode_156, \+dEFINE23.
0.99992::gOAL_98 :- gOAL_83, sNode_156, dEFINE23.
0.1::sNode_94 :- \+sNode_16, \+sNode_33, \+gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- \+sNode_16, \+sNode_33, \+gOAL_87, wEIGHT56.
0.1::sNode_94 :- \+sNode_16, \+sNode_33, gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- \+sNode_16, \+sNode_33, gOAL_87, wEIGHT56.
0.1::sNode_94 :- \+sNode_16, sNode_33, \+gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- \+sNode_16, sNode_33, \+gOAL_87, wEIGHT56.
0.1::sNode_94 :- \+sNode_16, sNode_33, gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- \+sNode_16, sNode_33, gOAL_87, wEIGHT56.
0.1::sNode_94 :- sNode_16, \+sNode_33, \+gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- sNode_16, \+sNode_33, \+gOAL_87, wEIGHT56.
0.1::sNode_94 :- sNode_16, \+sNode_33, gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- sNode_16, \+sNode_33, gOAL_87, wEIGHT56.
0.1::sNode_94 :- sNode_16, sNode_33, \+gOAL_87, \+wEIGHT56.
0.1::sNode_94 :- sNode_16, sNode_33, \+gOAL_87, wEIGHT56.
0.1::sNode_94 :- sNode_16, sNode_33, gOAL_87, \+wEIGHT56.
0.99991::sNode_94 :- sNode_16, sNode_33, gOAL_87, wEIGHT56.
0.2::sNode_37 :- \+gOAL_98, \+iDENTIFY22.
0.2::sNode_37 :- \+gOAL_98, iDENTIFY22.
0.2::sNode_37 :- gOAL_98, \+iDENTIFY22.
0.99992::sNode_37 :- gOAL_98, iDENTIFY22.
0.1::sNode_88 :- \+sNode_25, \+gOAL_87, \+nORMAL50.
0.1::sNode_88 :- \+sNode_25, \+gOAL_87, nORMAL50.
0.1::sNode_88 :- \+sNode_25, gOAL_87, \+nORMAL50.
0.1::sNode_88 :- \+sNode_25, gOAL_87, nORMAL50.
0.1::sNode_88 :- sNode_25, \+gOAL_87, \+nORMAL50.
0.1::sNode_88 :- sNode_25, \+gOAL_87, nORMAL50.
0.1::sNode_88 :- sNode_25, gOAL_87, \+nORMAL50.
0.99991::sNode_88 :- sNode_25, gOAL_87, nORMAL50.
0.2::sNode_100 :- \+gOAL_98, \+iDENTIFY59.
0.2::sNode_100 :- \+gOAL_98, iDENTIFY59.
0.2::sNode_100 :- gOAL_98, \+iDENTIFY59.
0.99992::sNode_100 :- gOAL_98, iDENTIFY59.
0.2::gOAL_99 :- \+gOAL_98, \+fIND58.
0.2::gOAL_99 :- \+gOAL_98, fIND58.
0.2::gOAL_99 :- gOAL_98, \+fIND58.
0.99992::gOAL_99 :- gOAL_98, fIND58.
0.1::sNode_102 :- \+gOAL_87, \+sNode_88, \+sNode_94, \+fORCE60.
0.1::sNode_102 :- \+gOAL_87, \+sNode_88, \+sNode_94, fORCE60.
0.1::sNode_102 :- \+gOAL_87, \+sNode_88, sNode_94, \+fORCE60.
0.1::sNode_102 :- \+gOAL_87, \+sNode_88, sNode_94, fORCE60.
0.1::sNode_102 :- \+gOAL_87, sNode_88, \+sNode_94, \+fORCE60.
0.1::sNode_102 :- \+gOAL_87, sNode_88, \+sNode_94, fORCE60.
0.1::sNode_102 :- \+gOAL_87, sNode_88, sNode_94, \+fORCE60.
0.1::sNode_102 :- \+gOAL_87, sNode_88, sNode_94, fORCE60.
0.1::sNode_102 :- gOAL_87, \+sNode_88, \+sNode_94, \+fORCE60.
0.1::sNode_102 :- gOAL_87, \+sNode_88, \+sNode_94, fORCE60.
0.1::sNode_102 :- gOAL_87, \+sNode_88, sNode_94, \+fORCE60.
0.1::sNode_102 :- gOAL_87, \+sNode_88, sNode_94, fORCE60.
0.1::sNode_102 :- gOAL_87, sNode_88, \+sNode_94, \+fORCE60.
0.1::sNode_102 :- gOAL_87, sNode_88, \+sNode_94, fORCE60.
0.1::sNode_102 :- gOAL_87, sNode_88, sNode_94, \+fORCE60.
0.99991::sNode_102 :- gOAL_87, sNode_88, sNode_94, fORCE60.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- \+sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, \+sNode_12, sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, \+sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_92_1"), \+iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_92_1"), iNCLINE51.
0.2::sNode_91 :- sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_91_2"), \+iNCLINE51.
0.99992::sNode_91 :- sNode_88, sNode_12, sNode_13, sTRAT_90("SNode_91_2"), iNCLINE51.
0.2::sNode_38 :- \+sNode_37, \+vAR20.
0.2::sNode_38 :- \+sNode_37, vAR20.
0.2::sNode_38 :- sNode_37, \+vAR20.
0.99992::sNode_38 :- sNode_37, vAR20.
0.2::sNode_95 :- \+sNode_94, \+wEIGHT57.
0.2::sNode_95 :- \+sNode_94, wEIGHT57.
0.2::sNode_95 :- sNode_94, \+wEIGHT57.
0.99992::sNode_95 :- sNode_94, wEIGHT57.
0.2::sNode_97 :- \+gOAL_87, \+sNode_94, \+iDENTIFY55.
0.2::sNode_97 :- \+gOAL_87, \+sNode_94, iDENTIFY55.
0.2::sNode_97 :- \+gOAL_87, sNode_94, \+iDENTIFY55.
0.2::sNode_97 :- \+gOAL_87, sNode_94, iDENTIFY55.
0.2::sNode_97 :- gOAL_87, \+sNode_94, \+iDENTIFY55.
0.2::sNode_97 :- gOAL_87, \+sNode_94, iDENTIFY55.
0.2::sNode_97 :- gOAL_87, sNode_94, \+iDENTIFY55.
0.99992::sNode_97 :- gOAL_87, sNode_94, iDENTIFY55.
0.2::sNode_93 :- \+gOAL_87, \+sNode_88, \+iDENTIFY55.
0.2::sNode_93 :- \+gOAL_87, \+sNode_88, iDENTIFY55.
0.2::sNode_93 :- \+gOAL_87, sNode_88, \+iDENTIFY55.
0.2::sNode_93 :- \+gOAL_87, sNode_88, iDENTIFY55.
0.2::sNode_93 :- gOAL_87, \+sNode_88, \+iDENTIFY55.
0.2::sNode_93 :- gOAL_87, \+sNode_88, iDENTIFY55.
0.2::sNode_93 :- gOAL_87, sNode_88, \+iDENTIFY55.
0.99992::sNode_93 :- gOAL_87, sNode_88, iDENTIFY55.
0.2::gOAL_103 :- \+gOAL_83, \+sNode_102, \+aPPLY61.
0.2::gOAL_103 :- \+gOAL_83, \+sNode_102, aPPLY61.
0.2::gOAL_103 :- \+gOAL_83, sNode_102, \+aPPLY61.
0.2::gOAL_103 :- \+gOAL_83, sNode_102, aPPLY61.
0.2::gOAL_103 :- gOAL_83, \+sNode_102, \+aPPLY61.
0.2::gOAL_103 :- gOAL_83, \+sNode_102, aPPLY61.
0.2::gOAL_103 :- gOAL_83, sNode_102, \+aPPLY61.
0.99992::gOAL_103 :- gOAL_83, sNode_102, aPPLY61.
0.1::sNode_40 :- \+sNode_38, \+vALUE3.
0.1::sNode_40 :- \+sNode_38, vALUE3.
0.1::sNode_40 :- sNode_38, \+vALUE3.
0.99991::sNode_40 :- sNode_38, vALUE3.
0.2::gOAL_104 :- \+gOAL_103, \+cHOOSE62.
0.2::gOAL_104 :- \+gOAL_103, cHOOSE62.
0.2::gOAL_104 :- gOAL_103, \+cHOOSE62.
0.99992::gOAL_104 :- gOAL_103, cHOOSE62.
0.2::sNode_106 :- \+gOAL_104, \+mAXIMIZE34.
0.2::sNode_106 :- \+gOAL_104, mAXIMIZE34.
0.2::sNode_106 :- gOAL_104, \+mAXIMIZE34.
0.99992::sNode_106 :- gOAL_104, mAXIMIZE34.
0.2::sNode_152 :- \+sNode_106, \+aXIS33.
0.2::sNode_152 :- \+sNode_106, aXIS33.
0.2::sNode_152 :- sNode_106, \+aXIS33.
0.99992::sNode_152 :- sNode_106, aXIS33.
0.2::gOAL_107 :- \+gOAL_103, \+sNode_152, \+wRITE63.
0.2::gOAL_107 :- \+gOAL_103, \+sNode_152, wRITE63.
0.2::gOAL_107 :- \+gOAL_103, sNode_152, \+wRITE63.
0.2::gOAL_107 :- \+gOAL_103, sNode_152, wRITE63.
0.2::gOAL_107 :- gOAL_103, \+sNode_152, \+wRITE63.
0.2::gOAL_107 :- gOAL_103, \+sNode_152, wRITE63.
0.2::gOAL_107 :- gOAL_103, sNode_152, \+wRITE63.
0.99992::gOAL_107 :- gOAL_103, sNode_152, wRITE63.
0.2::gOAL_108 :- \+gOAL_107, \+wRITE64.
0.2::gOAL_108 :- \+gOAL_107, wRITE64.
0.2::gOAL_108 :- gOAL_107, \+wRITE64.
0.99992::gOAL_108 :- gOAL_107, wRITE64.
0.2::gOAL_109 :- \+gOAL_107, \+wRITE64.
0.2::gOAL_109 :- \+gOAL_107, wRITE64.
0.2::gOAL_109 :- gOAL_107, \+wRITE64.
0.99992::gOAL_109 :- gOAL_107, wRITE64.
0.0::rApp7 :- \+nEED67, \+gOAL_109.
0.0::rApp7 :- \+nEED67, gOAL_109.
0.0::rApp7 :- nEED67, \+gOAL_109.
0.9999::rApp7 :- nEED67, gOAL_109.
0.0::rApp9 :- \+nEED67, \+gOAL_108.
0.0::rApp9 :- \+nEED67, gOAL_108.
0.0::rApp9 :- nEED67, \+gOAL_108.
0.9999::rApp9 :- nEED67, gOAL_108.
0.2::gOAL_111 :- \+gOAL_109, \+gOAL66.
0.2::gOAL_111 :- \+gOAL_109, gOAL66.
0.2::gOAL_111 :- gOAL_109, \+gOAL66.
0.99992::gOAL_111 :- gOAL_109, gOAL66.
0.2::gOAL_110 :- \+gOAL_109, \+gOAL65.
0.2::gOAL_110 :- \+gOAL_109, gOAL65.
0.2::gOAL_110 :- gOAL_109, \+gOAL65.
0.99992::gOAL_110 :- gOAL_109, gOAL65.
0.2::gOAL_153 :- \+gOAL_108, \+gOAL72.
0.2::gOAL_153 :- \+gOAL_108, gOAL72.
0.2::gOAL_153 :- gOAL_108, \+gOAL72.
0.99992::gOAL_153 :- gOAL_108, gOAL72.
0.2::gOAL_121 :- \+gOAL_109, \+gOAL72.
0.2::gOAL_121 :- \+gOAL_109, gOAL72.
0.2::gOAL_121 :- gOAL_109, \+gOAL72.
0.99992::gOAL_121 :- gOAL_109, gOAL72.
0.2::gOAL_127 :- \+gOAL_108, \+gOAL66.
0.2::gOAL_127 :- \+gOAL_108, gOAL66.
0.2::gOAL_127 :- gOAL_108, \+gOAL66.
0.99992::gOAL_127 :- gOAL_108, gOAL66.
0.2::gOAL_126 :- \+gOAL_108, \+gOAL65.
0.2::gOAL_126 :- \+gOAL_108, gOAL65.
0.2::gOAL_126 :- gOAL_108, \+gOAL65.
0.99992::gOAL_126 :- gOAL_108, gOAL65.
0.0::rApp8 :- \+nEED36, \+gOAL_111.
0.0::rApp8 :- \+nEED36, gOAL_111.
0.0::rApp8 :- nEED36, \+gOAL_111.
0.9999::rApp8 :- nEED36, gOAL_111.
0.2::gOAL_130 :- \+gOAL_126, \+gOAL68.
0.2::gOAL_130 :- \+gOAL_126, gOAL68.
0.2::gOAL_130 :- gOAL_126, \+gOAL68.
0.99992::gOAL_130 :- gOAL_126, gOAL68.
0.0::rApp10 :- \+nEED36, \+gOAL_127.
0.0::rApp10 :- \+nEED36, gOAL_127.
0.0::rApp10 :- nEED36, \+gOAL_127.
0.9999::rApp10 :- nEED36, gOAL_127.
0.2::gOAL_114 :- \+gOAL_110, \+gOAL68.
0.2::gOAL_114 :- \+gOAL_110, gOAL68.
0.2::gOAL_114 :- gOAL_110, \+gOAL68.
0.99992::gOAL_114 :- gOAL_110, gOAL68.
0.2::sNode_154 :- \+gOAL_121, \+nEED36.
0.2::sNode_154 :- \+gOAL_121, nEED36.
0.2::sNode_154 :- gOAL_121, \+nEED36.
0.99992::sNode_154 :- gOAL_121, nEED36.
0.2::sNode_122 :- \+gOAL_121, \+nEED36.
0.2::sNode_122 :- \+gOAL_121, nEED36.
0.2::sNode_122 :- gOAL_121, \+nEED36.
0.99992::sNode_122 :- gOAL_121, nEED36.
0.2::gOAL_113 :- \+gOAL_110, \+gOAL68.
0.2::gOAL_113 :- \+gOAL_110, gOAL68.
0.2::gOAL_113 :- gOAL_110, \+gOAL68.
0.99992::gOAL_113 :- gOAL_110, gOAL68.
0.2::gOAL_129 :- \+gOAL_126, \+gOAL68.
0.2::gOAL_129 :- \+gOAL_126, gOAL68.
0.2::gOAL_129 :- gOAL_126, \+gOAL68.
0.99992::gOAL_129 :- gOAL_126, gOAL68.
0.2::sNode_117 :- \+gOAL_113, \+nEED36.
0.2::sNode_117 :- \+gOAL_113, nEED36.
0.2::sNode_117 :- gOAL_113, \+nEED36.
0.99992::sNode_117 :- gOAL_113, nEED36.
0.2::sNode_118 :- \+sNode_91, \+gOAL_113, \+vECTOR70.
0.2::sNode_118 :- \+sNode_91, \+gOAL_113, vECTOR70.
0.2::sNode_118 :- \+sNode_91, gOAL_113, \+vECTOR70.
0.2::sNode_118 :- \+sNode_91, gOAL_113, vECTOR70.
0.2::sNode_118 :- sNode_91, \+gOAL_113, \+vECTOR70.
0.2::sNode_118 :- sNode_91, \+gOAL_113, vECTOR70.
0.2::sNode_118 :- sNode_91, gOAL_113, \+vECTOR70.
0.99992::sNode_118 :- sNode_91, gOAL_113, vECTOR70.
0.2::sNode_133 :- \+gOAL_129, \+nEED36.
0.2::sNode_133 :- \+gOAL_129, nEED36.
0.2::sNode_133 :- gOAL_129, \+nEED36.
0.99992::sNode_133 :- gOAL_129, nEED36.
0.2::sNode_115 :- \+gOAL_114, \+nEED36.
0.2::sNode_115 :- \+gOAL_114, nEED36.
0.2::sNode_115 :- gOAL_114, \+nEED36.
0.99992::sNode_115 :- gOAL_114, nEED36.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, \+gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, \+gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, \+gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, \+gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, \+sNode_100, gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, \+gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, \+gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, \+gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, \+gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- \+sNode_4, sNode_100, gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, \+gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, \+gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, \+gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, \+gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, \+sNode_100, gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, \+gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, \+gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, \+gOAL_121, sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, \+gOAL_121, sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, gOAL_121, \+sNode_122, \+vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, gOAL_121, \+sNode_122, vECTOR73.
0.1::sNode_123 :- sNode_4, sNode_100, gOAL_121, sNode_122, \+vECTOR73.
0.99991::sNode_123 :- sNode_4, sNode_100, gOAL_121, sNode_122, vECTOR73.
0.2::sNode_131 :- \+gOAL_130, \+nEED36.
0.2::sNode_131 :- \+gOAL_130, nEED36.
0.2::sNode_131 :- gOAL_130, \+nEED36.
0.99992::sNode_131 :- gOAL_130, nEED36.
0.2::sNode_112 :- \+rApp7, \+rApp8.
sNode_112 :- \+rApp7, rApp8.
sNode_112 :- rApp7, \+rApp8.
sNode_112 :- rApp7, rApp8.
0.2::sNode_128 :- \+rApp9, \+rApp10.
sNode_128 :- \+rApp9, rApp10.
sNode_128 :- rApp9, \+rApp10.
sNode_128 :- rApp9, rApp10.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, \+gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, \+gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, \+gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, \+gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, \+sNode_100, gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, \+gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, \+gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, \+gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, \+gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- \+sNode_4, sNode_100, gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, \+gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, \+gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, \+gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, \+gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, \+sNode_100, gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, \+gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, \+gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, \+gOAL_153, sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, \+gOAL_153, sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, gOAL_153, \+sNode_154, \+vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, gOAL_153, \+sNode_154, vECTOR44.
0.1::sNode_155 :- sNode_4, sNode_100, gOAL_153, sNode_154, \+vECTOR44.
0.99991::sNode_155 :- sNode_4, sNode_100, gOAL_153, sNode_154, vECTOR44.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, \+sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, \+sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, \+sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, \+sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, \+gOAL_109, sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, \+sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, \+sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, \+sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, \+sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- \+sNode_37, gOAL_109, sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, \+sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, \+sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, \+sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, \+sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, \+gOAL_109, sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, \+sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, \+sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, \+sNode_112, sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, \+sNode_112, sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, sNode_112, \+sNode_122, \+nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, sNode_112, \+sNode_122, nEWTONS74.
0.1::sNode_124 :- sNode_37, gOAL_109, sNode_112, sNode_122, \+nEWTONS74.
0.99991::sNode_124 :- sNode_37, gOAL_109, sNode_112, sNode_122, nEWTONS74.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, \+gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, \+gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, \+gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, \+sNode_93, gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, \+gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, \+gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, \+gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- \+sNode_92, sNode_93, gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, \+gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, \+gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, \+gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, \+sNode_93, gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, \+gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, \+gOAL_129, sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, \+gOAL_129, sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, gOAL_129, \+sNode_133, \+vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, gOAL_129, \+sNode_133, vECTOR69.
0.1::sNode_135 :- sNode_92, sNode_93, gOAL_129, sNode_133, \+vECTOR69.
0.99991::sNode_135 :- sNode_92, sNode_93, gOAL_129, sNode_133, vECTOR69.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, \+gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, \+gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, \+gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, \+sNode_93, gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, \+gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, \+gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, \+gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- \+sNode_91, sNode_93, gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, \+gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, \+gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, \+gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, \+sNode_93, gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, \+gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, \+gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, \+gOAL_129, sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, \+gOAL_129, sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, gOAL_129, \+sNode_133, \+vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, gOAL_129, \+sNode_133, vECTOR73.
0.1::sNode_134 :- sNode_91, sNode_93, gOAL_129, sNode_133, \+vECTOR73.
0.99991::sNode_134 :- sNode_91, sNode_93, gOAL_129, sNode_133, vECTOR73.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, \+gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, \+gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, \+gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, \+gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, \+sNode_97, gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, \+gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, \+gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, \+gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, \+gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- \+sNode_95, sNode_97, gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, \+gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, \+gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, \+gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, \+gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, \+sNode_97, gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, \+gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, \+gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, \+gOAL_114, sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, \+gOAL_114, sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, gOAL_114, \+sNode_115, \+vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, gOAL_114, \+sNode_115, vECTOR69.
0.1::sNode_116 :- sNode_95, sNode_97, gOAL_114, sNode_115, \+vECTOR69.
0.99991::sNode_116 :- sNode_95, sNode_97, gOAL_114, sNode_115, vECTOR69.
0.1::sNode_125 :- \+gOAL_109, \+sNode_112, \+sUM75.
0.1::sNode_125 :- \+gOAL_109, \+sNode_112, sUM75.
0.1::sNode_125 :- \+gOAL_109, sNode_112, \+sUM75.
0.1::sNode_125 :- \+gOAL_109, sNode_112, sUM75.
0.1::sNode_125 :- gOAL_109, \+sNode_112, \+sUM75.
0.1::sNode_125 :- gOAL_109, \+sNode_112, sUM75.
0.1::sNode_125 :- gOAL_109, sNode_112, \+sUM75.
0.99991::sNode_125 :- gOAL_109, sNode_112, sUM75.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, \+sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, \+sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, \+sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, \+sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, \+gOAL_108, sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, \+sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, \+sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, \+sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, \+sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- \+sNode_37, gOAL_108, sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, \+sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, \+sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, \+sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, \+sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, \+gOAL_108, sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, \+sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, \+sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, \+sNode_128, sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, \+sNode_128, sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, sNode_128, \+sNode_154, \+nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, sNode_128, \+sNode_154, nEWTONS74.
0.1::sNode_136 :- sNode_37, gOAL_108, sNode_128, sNode_154, \+nEWTONS74.
0.99991::sNode_136 :- sNode_37, gOAL_108, sNode_128, sNode_154, nEWTONS74.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, \+gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, \+gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, \+gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, \+gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, \+sNode_93, gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, \+gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, \+gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, \+gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, \+gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- \+sNode_92, sNode_93, gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, \+gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, \+gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, \+gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, \+gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, \+sNode_93, gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, \+gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, \+gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, \+gOAL_113, sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, \+gOAL_113, sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, gOAL_113, \+sNode_117, \+vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, gOAL_113, \+sNode_117, vECTOR69.
0.1::sNode_120 :- sNode_92, sNode_93, gOAL_113, sNode_117, \+vECTOR69.
0.99991::sNode_120 :- sNode_92, sNode_93, gOAL_113, sNode_117, vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, \+gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, \+gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, \+gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, \+gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, \+sNode_97, gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, \+gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, \+gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, \+gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, \+gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- \+sNode_95, sNode_97, gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, \+gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, \+gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, \+gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, \+gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, \+sNode_97, gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, \+gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, \+gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, \+gOAL_130, sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, \+gOAL_130, sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, gOAL_130, \+sNode_131, \+vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, gOAL_130, \+sNode_131, vECTOR69.
0.1::sNode_132 :- sNode_95, sNode_97, gOAL_130, sNode_131, \+vECTOR69.
0.99991::sNode_132 :- sNode_95, sNode_97, gOAL_130, sNode_131, vECTOR69.
0.1::sNode_137 :- \+gOAL_108, \+sNode_128, \+sUM75.
0.1::sNode_137 :- \+gOAL_108, \+sNode_128, sUM75.
0.1::sNode_137 :- \+gOAL_108, sNode_128, \+sUM75.
0.1::sNode_137 :- \+gOAL_108, sNode_128, sUM75.
0.1::sNode_137 :- gOAL_108, \+sNode_128, \+sUM75.
0.1::sNode_137 :- gOAL_108, \+sNode_128, sUM75.
0.1::sNode_137 :- gOAL_108, sNode_128, \+sUM75.
0.99991::sNode_137 :- gOAL_108, sNode_128, sUM75.
0.1::sNode_119 :- \+sNode_93, \+sNode_117, \+sNode_118, \+eQUAL71.
0.1::sNode_119 :- \+sNode_93, \+sNode_117, \+sNode_118, eQUAL71.
0.1::sNode_119 :- \+sNode_93, \+sNode_117, sNode_118, \+eQUAL71.
0.1::sNode_119 :- \+sNode_93, \+sNode_117, sNode_118, eQUAL71.
0.1::sNode_119 :- \+sNode_93, sNode_117, \+sNode_118, \+eQUAL71.
0.1::sNode_119 :- \+sNode_93, sNode_117, \+sNode_118, eQUAL71.
0.1::sNode_119 :- \+sNode_93, sNode_117, sNode_118, \+eQUAL71.
0.1::sNode_119 :- \+sNode_93, sNode_117, sNode_118, eQUAL71.
0.1::sNode_119 :- sNode_93, \+sNode_117, \+sNode_118, \+eQUAL71.
0.1::sNode_119 :- sNode_93, \+sNode_117, \+sNode_118, eQUAL71.
0.1::sNode_119 :- sNode_93, \+sNode_117, sNode_118, \+eQUAL71.
0.1::sNode_119 :- sNode_93, \+sNode_117, sNode_118, eQUAL71.
0.1::sNode_119 :- sNode_93, sNode_117, \+sNode_118, \+eQUAL71.
0.1::sNode_119 :- sNode_93, sNode_117, \+sNode_118, eQUAL71.
0.1::sNode_119 :- sNode_93, sNode_117, sNode_118, \+eQUAL71.
0.99991::sNode_119 :- sNode_93, sNode_117, sNode_118, eQUAL71.
0.2::gOAL_142 :- \+sNode_116, \+sNode_125, \+eQUATION28.
0.2::gOAL_142 :- \+sNode_116, \+sNode_125, eQUATION28.
0.2::gOAL_142 :- \+sNode_116, sNode_125, \+eQUATION28.
0.2::gOAL_142 :- \+sNode_116, sNode_125, eQUATION28.
0.2::gOAL_142 :- sNode_116, \+sNode_125, \+eQUATION28.
0.2::gOAL_142 :- sNode_116, \+sNode_125, eQUATION28.
0.2::gOAL_142 :- sNode_116, sNode_125, \+eQUATION28.
0.99992::gOAL_142 :- sNode_116, sNode_125, eQUATION28.
0.2::gOAL_143 :- \+sNode_116, \+sNode_132, \+eQUATION28.
0.2::gOAL_143 :- \+sNode_116, \+sNode_132, eQUATION28.
0.2::gOAL_143 :- \+sNode_116, sNode_132, \+eQUATION28.
0.2::gOAL_143 :- \+sNode_116, sNode_132, eQUATION28.
0.2::gOAL_143 :- sNode_116, \+sNode_132, \+eQUATION28.
0.2::gOAL_143 :- sNode_116, \+sNode_132, eQUATION28.
0.2::gOAL_143 :- sNode_116, sNode_132, \+eQUATION28.
0.99992::gOAL_143 :- sNode_116, sNode_132, eQUATION28.
0.2::gOAL_146 :- \+sNode_132, \+sNode_137, \+eQUATION28.
0.2::gOAL_146 :- \+sNode_132, \+sNode_137, eQUATION28.
0.2::gOAL_146 :- \+sNode_132, sNode_137, \+eQUATION28.
0.2::gOAL_146 :- \+sNode_132, sNode_137, eQUATION28.
0.2::gOAL_146 :- sNode_132, \+sNode_137, \+eQUATION28.
0.2::gOAL_146 :- sNode_132, \+sNode_137, eQUATION28.
0.2::gOAL_146 :- sNode_132, sNode_137, \+eQUATION28.
0.99992::gOAL_146 :- sNode_132, sNode_137, eQUATION28.
0.0::rApp12 :- \+cOMPO16, \+gOAL_143.
0.0::rApp12 :- \+cOMPO16, gOAL_143.
0.0::rApp12 :- cOMPO16, \+gOAL_143.
0.9999::rApp12 :- cOMPO16, gOAL_143.
0.0::rApp11 :- \+vECTOR27, \+gOAL_142.
0.0::rApp11 :- \+vECTOR27, gOAL_142.
0.0::rApp11 :- vECTOR27, \+gOAL_142.
0.9999::rApp11 :- vECTOR27, gOAL_142.
0.0::rApp13 :- \+vECTOR27, \+gOAL_146.
0.0::rApp13 :- \+vECTOR27, gOAL_146.
0.0::rApp13 :- vECTOR27, \+gOAL_146.
0.9999::rApp13 :- vECTOR27, gOAL_146.
0.2::gOAL_147 :- \+rApp11, \+rApp12, \+rApp13.
gOAL_147 :- \+rApp11, \+rApp12, rApp13.
gOAL_147 :- \+rApp11, rApp12, \+rApp13.
gOAL_147 :- \+rApp11, rApp12, rApp13.
gOAL_147 :- rApp11, \+rApp12, \+rApp13.
gOAL_147 :- rApp11, \+rApp12, rApp13.
gOAL_147 :- rApp11, rApp12, \+rApp13.
gOAL_147 :- rApp11, rApp12, rApp13.
0.3::gOAL_149 :- \+gOAL_147, \+tRY76.
0.3::gOAL_149 :- \+gOAL_147, tRY76.
0.3::gOAL_149 :- gOAL_147, \+tRY76.
0.99993::gOAL_149 :- gOAL_147, tRY76.
0.2::gOAL_150 :- \+sNode_20, \+sNode_37, \+gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- \+sNode_20, \+sNode_37, \+gOAL_149, aPPLY77.
0.2::gOAL_150 :- \+sNode_20, \+sNode_37, gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- \+sNode_20, \+sNode_37, gOAL_149, aPPLY77.
0.2::gOAL_150 :- \+sNode_20, sNode_37, \+gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- \+sNode_20, sNode_37, \+gOAL_149, aPPLY77.
0.2::gOAL_150 :- \+sNode_20, sNode_37, gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- \+sNode_20, sNode_37, gOAL_149, aPPLY77.
0.2::gOAL_150 :- sNode_20, \+sNode_37, \+gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- sNode_20, \+sNode_37, \+gOAL_149, aPPLY77.
0.2::gOAL_150 :- sNode_20, \+sNode_37, gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- sNode_20, \+sNode_37, gOAL_149, aPPLY77.
0.2::gOAL_150 :- sNode_20, sNode_37, \+gOAL_149, \+aPPLY77.
0.2::gOAL_150 :- sNode_20, sNode_37, \+gOAL_149, aPPLY77.
0.2::gOAL_150 :- sNode_20, sNode_37, gOAL_149, \+aPPLY77.
0.99992::gOAL_150 :- sNode_20, sNode_37, gOAL_149, aPPLY77.
0.1::sNode_151 :- \+gOAL_150, \+gRAV78.
0.1::sNode_151 :- \+gOAL_150, gRAV78.
0.1::sNode_151 :- gOAL_150, \+gRAV78.
0.99991::sNode_151 :- gOAL_150, gRAV78.
