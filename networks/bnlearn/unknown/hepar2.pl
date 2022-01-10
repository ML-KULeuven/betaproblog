%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:58:00.652340

?::vh_amn("present"); ?::vh_amn("absent").
?::hospital("present"); ?::hospital("absent").
?::age("age65_100"); ?::age("age51_65"); ?::age("age31_50"); ?::age("age0_30").
?::sex("female"); ?::sex("male").
?::diabetes("present"); ?::diabetes("absent").
?::alcoholism("present"); ?::alcoholism("absent").
?::surgery("present"); ?::surgery("absent").
?::gallstones("present"); ?::gallstones("absent").
?::hepatotoxic("present"); ?::hepatotoxic("absent").
?::rHepatitis("present"); ?::rHepatitis("absent") :- hepatotoxic("present").
?::rHepatitis("present"); ?::rHepatitis("absent") :- hepatotoxic("absent").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age65_100"), sex("female").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age65_100"), sex("male").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age51_65"), sex("female").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age51_65"), sex("male").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age31_50"), sex("female").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age31_50"), sex("male").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age0_30"), sex("female").
?::hyperbilirubinemia("present"); ?::hyperbilirubinemia("absent") :- age("age0_30"), sex("male").
?::obesity("present"); ?::obesity("absent") :- diabetes("present").
?::obesity("present"); ?::obesity("absent") :- diabetes("absent").
?::tHepatitis("present"); ?::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("present").
?::tHepatitis("present"); ?::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("absent").
?::tHepatitis("present"); ?::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("present").
?::tHepatitis("present"); ?::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("absent").
?::pBC("present"); ?::pBC("absent") :- sex("female"), age("age65_100").
?::pBC("present"); ?::pBC("absent") :- sex("female"), age("age51_65").
?::pBC("present"); ?::pBC("absent") :- sex("female"), age("age31_50").
?::pBC("present"); ?::pBC("absent") :- sex("female"), age("age0_30").
?::pBC("present"); ?::pBC("absent") :- sex("male"), age("age65_100").
?::pBC("present"); ?::pBC("absent") :- sex("male"), age("age51_65").
?::pBC("present"); ?::pBC("absent") :- sex("male"), age("age31_50").
?::pBC("present"); ?::pBC("absent") :- sex("male"), age("age0_30").
?::amylase("a1400_500"); ?::amylase("a499_300"); ?::amylase("a299_0") :- gallstones("present").
?::amylase("a1400_500"); ?::amylase("a499_300"); ?::amylase("a299_0") :- gallstones("absent").
?::fat("present"); ?::fat("absent") :- gallstones("present").
?::fat("present"); ?::fat("absent") :- gallstones("absent").
?::flatulence("present"); ?::flatulence("absent") :- gallstones("present").
?::flatulence("present"); ?::flatulence("absent") :- gallstones("absent").
?::choledocholithotomy("present"); ?::choledocholithotomy("absent") :- gallstones("present").
?::choledocholithotomy("present"); ?::choledocholithotomy("absent") :- gallstones("absent").
?::upper_pain("present"); ?::upper_pain("absent") :- gallstones("present").
?::upper_pain("present"); ?::upper_pain("absent") :- gallstones("absent").
?::anorexia("present"); ?::anorexia("absent") :- rHepatitis("present"), tHepatitis("present").
?::anorexia("present"); ?::anorexia("absent") :- rHepatitis("present"), tHepatitis("absent").
?::anorexia("present"); ?::anorexia("absent") :- rHepatitis("absent"), tHepatitis("present").
?::anorexia("present"); ?::anorexia("absent") :- rHepatitis("absent"), tHepatitis("absent").
?::joints("present"); ?::joints("absent") :- pBC("present").
?::joints("present"); ?::joints("absent") :- pBC("absent").
?::ama("present"); ?::ama("absent") :- pBC("present").
?::ama("present"); ?::ama("absent") :- pBC("absent").
?::injections("present"); ?::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
?::injections("present"); ?::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
?::injections("present"); ?::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
?::injections("present"); ?::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
?::injections("present"); ?::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
?::injections("present"); ?::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
?::injections("present"); ?::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
?::injections("present"); ?::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
?::steatosis("present"); ?::steatosis("absent") :- obesity("present"), alcoholism("present").
?::steatosis("present"); ?::steatosis("absent") :- obesity("present"), alcoholism("absent").
?::steatosis("present"); ?::steatosis("absent") :- obesity("absent"), alcoholism("present").
?::steatosis("present"); ?::steatosis("absent") :- obesity("absent"), alcoholism("absent").
?::transfusion("present"); ?::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
?::transfusion("present"); ?::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
?::transfusion("present"); ?::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
?::transfusion("present"); ?::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
?::transfusion("present"); ?::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
?::transfusion("present"); ?::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
?::transfusion("present"); ?::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
?::transfusion("present"); ?::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
?::nausea("present"); ?::nausea("absent") :- rHepatitis("present"), tHepatitis("present").
?::nausea("present"); ?::nausea("absent") :- rHepatitis("present"), tHepatitis("absent").
?::nausea("present"); ?::nausea("absent") :- rHepatitis("absent"), tHepatitis("present").
?::nausea("present"); ?::nausea("absent") :- rHepatitis("absent"), tHepatitis("absent").
?::le_cells("present"); ?::le_cells("absent") :- pBC("present").
?::le_cells("present"); ?::le_cells("absent") :- pBC("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
?::hepatomegaly("present"); ?::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("present").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("absent").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("present").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("absent").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("present").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("absent").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("present").
?::chHepatitis("active"); ?::chHepatitis("persistent"); ?::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("absent").
?::triglycerides("a17_4"); ?::triglycerides("a3_2"); ?::triglycerides("a1_0") :- steatosis("present").
?::triglycerides("a17_4"); ?::triglycerides("a3_2"); ?::triglycerides("a1_0") :- steatosis("absent").
?::pain("present"); ?::pain("absent") :- pBC("present"), joints("present").
?::pain("present"); ?::pain("absent") :- pBC("present"), joints("absent").
?::pain("present"); ?::pain("absent") :- pBC("absent"), joints("present").
?::pain("present"); ?::pain("absent") :- pBC("absent"), joints("absent").
?::pain_ruq("present"); ?::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("present").
?::pain_ruq("present"); ?::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("absent").
?::pain_ruq("present"); ?::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("present").
?::pain_ruq("present"); ?::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
?::eSR("a200_50"); ?::eSR("a49_15"); ?::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("absent").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("present").
?::fatigue("present"); ?::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("absent").
?::fibrosis("present"); ?::fibrosis("absent") :- chHepatitis("active").
?::fibrosis("present"); ?::fibrosis("absent") :- chHepatitis("persistent").
?::fibrosis("present"); ?::fibrosis("absent") :- chHepatitis("absent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("active").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("persistent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("absent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("active").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("persistent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("absent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("active").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("persistent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("absent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("active").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("persistent").
?::pressure_ruq("present"); ?::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
?::ggtp("a640_70"); ?::ggtp("a69_30"); ?::ggtp("a29_10"); ?::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("present"), chHepatitis("active").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("present"), chHepatitis("persistent").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("present"), chHepatitis("absent").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("absent"), chHepatitis("active").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("absent"), chHepatitis("persistent").
?::hbeag("present"); ?::hbeag("absent") :- vh_amn("absent"), chHepatitis("absent").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("present"), chHepatitis("active").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("present"), chHepatitis("absent").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("active").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
?::hbc_anti("present"); ?::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("present"), chHepatitis("active").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("present"), chHepatitis("absent").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("active").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
?::hcv_anti("present"); ?::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
?::hepatalgia("present"); ?::hepatalgia("absent") :- hepatomegaly("present").
?::hepatalgia("present"); ?::hepatalgia("absent") :- hepatomegaly("absent").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("present"), chHepatitis("active").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("present"), chHepatitis("persistent").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("present"), chHepatitis("absent").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("absent"), chHepatitis("active").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("absent"), chHepatitis("persistent").
?::hbsag("present"); ?::hbsag("absent") :- vh_amn("absent"), chHepatitis("absent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("active").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("persistent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("absent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("active").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("persistent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("absent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("active").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("persistent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("absent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("active").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("persistent").
?::cholesterol("a999_350"); ?::cholesterol("a349_240"); ?::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("absent").
?::cirrhosis("decompensate"); ?::cirrhosis("compensate"); ?::cirrhosis("absent") :- fibrosis("present"), steatosis("present").
?::cirrhosis("decompensate"); ?::cirrhosis("compensate"); ?::cirrhosis("absent") :- fibrosis("present"), steatosis("absent").
?::cirrhosis("decompensate"); ?::cirrhosis("compensate"); ?::cirrhosis("absent") :- fibrosis("absent"), steatosis("present").
?::cirrhosis("decompensate"); ?::cirrhosis("compensate"); ?::cirrhosis("absent") :- fibrosis("absent"), steatosis("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("absent").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("present").
?::hbsag_anti("present"); ?::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::alt("a850_200"); ?::alt("a199_100"); ?::alt("a99_35"); ?::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("absent").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("present").
?::spleen("present"); ?::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("absent").
?::edge("present"); ?::edge("absent") :- cirrhosis("decompensate").
?::edge("present"); ?::edge("absent") :- cirrhosis("compensate").
?::edge("present"); ?::edge("absent") :- cirrhosis("absent").
?::irregular_liver("present"); ?::irregular_liver("absent") :- cirrhosis("decompensate").
?::irregular_liver("present"); ?::irregular_liver("absent") :- cirrhosis("compensate").
?::irregular_liver("present"); ?::irregular_liver("absent") :- cirrhosis("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
?::inr("a200_110"); ?::inr("a109_70"); ?::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
?::proteins("a10_6"); ?::proteins("a5_2") :- cirrhosis("decompensate").
?::proteins("a10_6"); ?::proteins("a5_2") :- cirrhosis("compensate").
?::proteins("a10_6"); ?::proteins("a5_2") :- cirrhosis("absent").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("decompensate"), pBC("present").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("decompensate"), pBC("absent").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("compensate"), pBC("present").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("compensate"), pBC("absent").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("absent"), pBC("present").
?::carcinoma("present"); ?::carcinoma("absent") :- cirrhosis("absent"), pBC("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
?::ast("a700_400"); ?::ast("a399_150"); ?::ast("a149_40"); ?::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
?::phosphatase("a4000_700"); ?::phosphatase("a699_240"); ?::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
?::edema("present"); ?::edema("absent") :- cirrhosis("decompensate").
?::edema("present"); ?::edema("absent") :- cirrhosis("compensate").
?::edema("present"); ?::edema("absent") :- cirrhosis("absent").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("decompensate"), pBC("present").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("decompensate"), pBC("absent").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("compensate"), pBC("present").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("compensate"), pBC("absent").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("absent"), pBC("present").
?::platelet("a597_300"); ?::platelet("a299_150"); ?::platelet("a149_100"); ?::platelet("a99_0") :- cirrhosis("absent"), pBC("absent").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("present").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("absent").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("compensate"), pBC("present").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("compensate"), pBC("absent").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("absent"), pBC("present").
?::encephalopathy("present"); ?::encephalopathy("absent") :- cirrhosis("absent"), pBC("absent").
?::albumin("a70_50"); ?::albumin("a49_30"); ?::albumin("a29_0") :- cirrhosis("decompensate").
?::albumin("a70_50"); ?::albumin("a49_30"); ?::albumin("a29_0") :- cirrhosis("compensate").
?::albumin("a70_50"); ?::albumin("a49_30"); ?::albumin("a29_0") :- cirrhosis("absent").
?::spiders("present"); ?::spiders("absent") :- cirrhosis("decompensate").
?::spiders("present"); ?::spiders("absent") :- cirrhosis("compensate").
?::spiders("present"); ?::spiders("absent") :- cirrhosis("absent").
?::palms("present"); ?::palms("absent") :- cirrhosis("decompensate").
?::palms("present"); ?::palms("absent") :- cirrhosis("compensate").
?::palms("present"); ?::palms("absent") :- cirrhosis("absent").
?::alcohol("present"); ?::alcohol("absent") :- cirrhosis("decompensate").
?::alcohol("present"); ?::alcohol("absent") :- cirrhosis("compensate").
?::alcohol("present"); ?::alcohol("absent") :- cirrhosis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
?::bilirubin("a88_20"); ?::bilirubin("a19_7"); ?::bilirubin("a6_2"); ?::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
?::consciousness("present"); ?::consciousness("absent") :- encephalopathy("present").
?::consciousness("present"); ?::consciousness("absent") :- encephalopathy("absent").
?::density("present"); ?::density("absent") :- encephalopathy("present").
?::density("present"); ?::density("absent") :- encephalopathy("absent").
?::urea("a165_50"); ?::urea("a49_40"); ?::urea("a39_0") :- encephalopathy("present").
?::urea("a165_50"); ?::urea("a49_40"); ?::urea("a39_0") :- encephalopathy("absent").
?::skin("present"); ?::skin("absent") :- bilirubin("a88_20").
?::skin("present"); ?::skin("absent") :- bilirubin("a19_7").
?::skin("present"); ?::skin("absent") :- bilirubin("a6_2").
?::skin("present"); ?::skin("absent") :- bilirubin("a1_0").
?::jaundice("present"); ?::jaundice("absent") :- bilirubin("a88_20").
?::jaundice("present"); ?::jaundice("absent") :- bilirubin("a19_7").
?::jaundice("present"); ?::jaundice("absent") :- bilirubin("a6_2").
?::jaundice("present"); ?::jaundice("absent") :- bilirubin("a1_0").
?::ascites("present"); ?::ascites("absent") :- proteins("a10_6").
?::ascites("present"); ?::ascites("absent") :- proteins("a5_2").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a597_300"), inr("a200_110").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a597_300"), inr("a109_70").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a597_300"), inr("a69_0").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a299_150"), inr("a200_110").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a299_150"), inr("a109_70").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a299_150"), inr("a69_0").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a149_100"), inr("a200_110").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a149_100"), inr("a109_70").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a149_100"), inr("a69_0").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a99_0"), inr("a200_110").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a99_0"), inr("a109_70").
?::bleeding("present"); ?::bleeding("absent") :- platelet("a99_0"), inr("a69_0").
?::itching("present"); ?::itching("absent") :- bilirubin("a88_20").
?::itching("present"); ?::itching("absent") :- bilirubin("a19_7").
?::itching("present"); ?::itching("absent") :- bilirubin("a6_2").
?::itching("present"); ?::itching("absent") :- bilirubin("a1_0").
