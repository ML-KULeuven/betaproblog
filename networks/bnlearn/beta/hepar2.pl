%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:58:00.652340

dir(18)::vh_amn("present"); dir(4)::vh_amn("absent").
dir(9)::hospital("present"); dir(5)::hospital("absent").
dir(11)::age("age65_100"); dir(17)::age("age51_65"); dir(16)::age("age31_50"); dir(1)::age("age0_30").
dir(27)::sex("female"); dir(13)::sex("male").
dir(16)::diabetes("present"); dir(25)::diabetes("absent").
dir(20)::alcoholism("present"); dir(25)::alcoholism("absent").
dir(16)::surgery("present"); dir(7)::surgery("absent").
dir(12)::gallstones("present"); dir(25)::gallstones("absent").
dir(19)::hepatotoxic("present"); dir(2)::hepatotoxic("absent").
dir(27)::rHepatitis("present"); dir(23)::rHepatitis("absent") :- hepatotoxic("present").
dir(15)::rHepatitis("present"); dir(15)::rHepatitis("absent") :- hepatotoxic("absent").
dir(13)::hyperbilirubinemia("present"); dir(16)::hyperbilirubinemia("absent") :- age("age65_100"), sex("female").
dir(1)::hyperbilirubinemia("present"); dir(22)::hyperbilirubinemia("absent") :- age("age65_100"), sex("male").
dir(2)::hyperbilirubinemia("present"); dir(2)::hyperbilirubinemia("absent") :- age("age51_65"), sex("female").
dir(15)::hyperbilirubinemia("present"); dir(23)::hyperbilirubinemia("absent") :- age("age51_65"), sex("male").
dir(15)::hyperbilirubinemia("present"); dir(8)::hyperbilirubinemia("absent") :- age("age31_50"), sex("female").
dir(10)::hyperbilirubinemia("present"); dir(15)::hyperbilirubinemia("absent") :- age("age31_50"), sex("male").
dir(22)::hyperbilirubinemia("present"); dir(16)::hyperbilirubinemia("absent") :- age("age0_30"), sex("female").
dir(6)::hyperbilirubinemia("present"); dir(12)::hyperbilirubinemia("absent") :- age("age0_30"), sex("male").
dir(7)::obesity("present"); dir(27)::obesity("absent") :- diabetes("present").
dir(6)::obesity("present"); dir(1)::obesity("absent") :- diabetes("absent").
dir(2)::tHepatitis("present"); dir(4)::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("present").
dir(4)::tHepatitis("present"); dir(20)::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("absent").
dir(26)::tHepatitis("present"); dir(17)::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("present").
dir(15)::tHepatitis("present"); dir(22)::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("absent").
dir(17)::pBC("present"); dir(17)::pBC("absent") :- sex("female"), age("age65_100").
dir(30)::pBC("present"); dir(22)::pBC("absent") :- sex("female"), age("age51_65").
dir(6)::pBC("present"); dir(9)::pBC("absent") :- sex("female"), age("age31_50").
dir(23)::pBC("present"); dir(29)::pBC("absent") :- sex("female"), age("age0_30").
dir(12)::pBC("present"); dir(7)::pBC("absent") :- sex("male"), age("age65_100").
dir(10)::pBC("present"); dir(6)::pBC("absent") :- sex("male"), age("age51_65").
dir(2)::pBC("present"); dir(5)::pBC("absent") :- sex("male"), age("age31_50").
dir(3)::pBC("present"); dir(19)::pBC("absent") :- sex("male"), age("age0_30").
dir(28)::amylase("a1400_500"); dir(22)::amylase("a499_300"); dir(25)::amylase("a299_0") :- gallstones("present").
dir(11)::amylase("a1400_500"); dir(17)::amylase("a499_300"); dir(7)::amylase("a299_0") :- gallstones("absent").
dir(17)::fat("present"); dir(9)::fat("absent") :- gallstones("present").
dir(8)::fat("present"); dir(16)::fat("absent") :- gallstones("absent").
dir(25)::flatulence("present"); dir(13)::flatulence("absent") :- gallstones("present").
dir(26)::flatulence("present"); dir(3)::flatulence("absent") :- gallstones("absent").
dir(11)::choledocholithotomy("present"); dir(18)::choledocholithotomy("absent") :- gallstones("present").
dir(16)::choledocholithotomy("present"); dir(12)::choledocholithotomy("absent") :- gallstones("absent").
dir(12)::upper_pain("present"); dir(19)::upper_pain("absent") :- gallstones("present").
dir(2)::upper_pain("present"); dir(24)::upper_pain("absent") :- gallstones("absent").
dir(8)::anorexia("present"); dir(7)::anorexia("absent") :- rHepatitis("present"), tHepatitis("present").
dir(16)::anorexia("present"); dir(14)::anorexia("absent") :- rHepatitis("present"), tHepatitis("absent").
dir(13)::anorexia("present"); dir(20)::anorexia("absent") :- rHepatitis("absent"), tHepatitis("present").
dir(11)::anorexia("present"); dir(4)::anorexia("absent") :- rHepatitis("absent"), tHepatitis("absent").
dir(15)::joints("present"); dir(14)::joints("absent") :- pBC("present").
dir(25)::joints("present"); dir(30)::joints("absent") :- pBC("absent").
dir(18)::ama("present"); dir(14)::ama("absent") :- pBC("present").
dir(29)::ama("present"); dir(4)::ama("absent") :- pBC("absent").
dir(18)::injections("present"); dir(5)::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
dir(20)::injections("present"); dir(20)::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
dir(25)::injections("present"); dir(15)::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
dir(30)::injections("present"); dir(3)::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
dir(22)::injections("present"); dir(6)::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
dir(9)::injections("present"); dir(23)::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
dir(8)::injections("present"); dir(11)::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
dir(17)::injections("present"); dir(23)::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
dir(16)::steatosis("present"); dir(6)::steatosis("absent") :- obesity("present"), alcoholism("present").
dir(20)::steatosis("present"); dir(9)::steatosis("absent") :- obesity("present"), alcoholism("absent").
dir(6)::steatosis("present"); dir(25)::steatosis("absent") :- obesity("absent"), alcoholism("present").
dir(10)::steatosis("present"); dir(26)::steatosis("absent") :- obesity("absent"), alcoholism("absent").
dir(26)::transfusion("present"); dir(5)::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
dir(1)::transfusion("present"); dir(6)::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
dir(16)::transfusion("present"); dir(12)::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
dir(7)::transfusion("present"); dir(20)::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
dir(8)::transfusion("present"); dir(5)::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
dir(18)::transfusion("present"); dir(22)::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
dir(6)::transfusion("present"); dir(16)::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
dir(1)::transfusion("present"); dir(16)::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
dir(30)::nausea("present"); dir(12)::nausea("absent") :- rHepatitis("present"), tHepatitis("present").
dir(18)::nausea("present"); dir(11)::nausea("absent") :- rHepatitis("present"), tHepatitis("absent").
dir(10)::nausea("present"); dir(13)::nausea("absent") :- rHepatitis("absent"), tHepatitis("present").
dir(21)::nausea("present"); dir(8)::nausea("absent") :- rHepatitis("absent"), tHepatitis("absent").
dir(9)::le_cells("present"); dir(15)::le_cells("absent") :- pBC("present").
dir(16)::le_cells("present"); dir(20)::le_cells("absent") :- pBC("absent").
dir(8)::hepatomegaly("present"); dir(3)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
dir(18)::hepatomegaly("present"); dir(2)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
dir(2)::hepatomegaly("present"); dir(18)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
dir(6)::hepatomegaly("present"); dir(23)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
dir(2)::hepatomegaly("present"); dir(8)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
dir(2)::hepatomegaly("present"); dir(15)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
dir(5)::hepatomegaly("present"); dir(24)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
dir(27)::hepatomegaly("present"); dir(28)::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(28)::hepatomegaly("present"); dir(24)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
dir(23)::hepatomegaly("present"); dir(3)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
dir(23)::hepatomegaly("present"); dir(11)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
dir(15)::hepatomegaly("present"); dir(29)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
dir(8)::hepatomegaly("present"); dir(21)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
dir(22)::hepatomegaly("present"); dir(3)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
dir(27)::hepatomegaly("present"); dir(25)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
dir(4)::hepatomegaly("present"); dir(19)::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(20)::chHepatitis("active"); dir(2)::chHepatitis("persistent"); dir(30)::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("present").
dir(25)::chHepatitis("active"); dir(19)::chHepatitis("persistent"); dir(9)::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("absent").
dir(24)::chHepatitis("active"); dir(26)::chHepatitis("persistent"); dir(11)::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("present").
dir(29)::chHepatitis("active"); dir(4)::chHepatitis("persistent"); dir(12)::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("absent").
dir(25)::chHepatitis("active"); dir(23)::chHepatitis("persistent"); dir(22)::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("present").
dir(2)::chHepatitis("active"); dir(16)::chHepatitis("persistent"); dir(8)::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("absent").
dir(21)::chHepatitis("active"); dir(15)::chHepatitis("persistent"); dir(15)::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("present").
dir(25)::chHepatitis("active"); dir(27)::chHepatitis("persistent"); dir(10)::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("absent").
dir(8)::triglycerides("a17_4"); dir(26)::triglycerides("a3_2"); dir(21)::triglycerides("a1_0") :- steatosis("present").
dir(21)::triglycerides("a17_4"); dir(8)::triglycerides("a3_2"); dir(18)::triglycerides("a1_0") :- steatosis("absent").
dir(5)::pain("present"); dir(7)::pain("absent") :- pBC("present"), joints("present").
dir(4)::pain("present"); dir(27)::pain("absent") :- pBC("present"), joints("absent").
dir(10)::pain("present"); dir(29)::pain("absent") :- pBC("absent"), joints("present").
dir(22)::pain("present"); dir(17)::pain("absent") :- pBC("absent"), joints("absent").
dir(6)::pain_ruq("present"); dir(8)::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("present").
dir(4)::pain_ruq("present"); dir(2)::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("absent").
dir(30)::pain_ruq("present"); dir(15)::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("present").
dir(5)::pain_ruq("present"); dir(4)::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("absent").
dir(13)::eSR("a200_50"); dir(23)::eSR("a49_15"); dir(16)::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
dir(13)::eSR("a200_50"); dir(20)::eSR("a49_15"); dir(27)::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
dir(3)::eSR("a200_50"); dir(20)::eSR("a49_15"); dir(9)::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
dir(7)::eSR("a200_50"); dir(25)::eSR("a49_15"); dir(17)::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
dir(14)::eSR("a200_50"); dir(26)::eSR("a49_15"); dir(25)::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
dir(7)::eSR("a200_50"); dir(9)::eSR("a49_15"); dir(9)::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
dir(28)::eSR("a200_50"); dir(21)::eSR("a49_15"); dir(27)::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
dir(23)::eSR("a200_50"); dir(9)::eSR("a49_15"); dir(10)::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(30)::eSR("a200_50"); dir(17)::eSR("a49_15"); dir(9)::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
dir(18)::eSR("a200_50"); dir(24)::eSR("a49_15"); dir(13)::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
dir(24)::eSR("a200_50"); dir(27)::eSR("a49_15"); dir(10)::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
dir(2)::eSR("a200_50"); dir(1)::eSR("a49_15"); dir(8)::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(26)::eSR("a200_50"); dir(20)::eSR("a49_15"); dir(14)::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
dir(16)::eSR("a200_50"); dir(16)::eSR("a49_15"); dir(23)::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
dir(16)::eSR("a200_50"); dir(30)::eSR("a49_15"); dir(1)::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
dir(18)::eSR("a200_50"); dir(30)::eSR("a49_15"); dir(10)::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
dir(9)::eSR("a200_50"); dir(22)::eSR("a49_15"); dir(26)::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
dir(14)::eSR("a200_50"); dir(4)::eSR("a49_15"); dir(5)::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
dir(3)::eSR("a200_50"); dir(17)::eSR("a49_15"); dir(10)::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
dir(4)::eSR("a200_50"); dir(27)::eSR("a49_15"); dir(6)::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(6)::eSR("a200_50"); dir(22)::eSR("a49_15"); dir(15)::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
dir(29)::eSR("a200_50"); dir(15)::eSR("a49_15"); dir(19)::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
dir(16)::eSR("a200_50"); dir(22)::eSR("a49_15"); dir(16)::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
dir(26)::eSR("a200_50"); dir(27)::eSR("a49_15"); dir(19)::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
dir(13)::fatigue("present"); dir(20)::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("present").
dir(14)::fatigue("present"); dir(19)::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("absent").
dir(30)::fatigue("present"); dir(8)::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("present").
dir(28)::fatigue("present"); dir(9)::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("absent").
dir(28)::fatigue("present"); dir(29)::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("present").
dir(2)::fatigue("present"); dir(21)::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("absent").
dir(19)::fatigue("present"); dir(9)::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("present").
dir(7)::fatigue("present"); dir(13)::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("absent").
dir(21)::fatigue("present"); dir(2)::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("present").
dir(11)::fatigue("present"); dir(8)::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("absent").
dir(11)::fatigue("present"); dir(17)::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("present").
dir(17)::fatigue("present"); dir(2)::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("absent").
dir(3)::fibrosis("present"); dir(3)::fibrosis("absent") :- chHepatitis("active").
dir(21)::fibrosis("present"); dir(19)::fibrosis("absent") :- chHepatitis("persistent").
dir(20)::fibrosis("present"); dir(17)::fibrosis("absent") :- chHepatitis("absent").
dir(20)::pressure_ruq("present"); dir(15)::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("active").
dir(22)::pressure_ruq("present"); dir(27)::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("persistent").
dir(28)::pressure_ruq("present"); dir(11)::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("absent").
dir(27)::pressure_ruq("present"); dir(21)::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("active").
dir(27)::pressure_ruq("present"); dir(26)::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("persistent").
dir(6)::pressure_ruq("present"); dir(6)::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("absent").
dir(26)::pressure_ruq("present"); dir(14)::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("active").
dir(18)::pressure_ruq("present"); dir(21)::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("persistent").
dir(24)::pressure_ruq("present"); dir(23)::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("absent").
dir(24)::pressure_ruq("present"); dir(7)::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("active").
dir(5)::pressure_ruq("present"); dir(5)::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("persistent").
dir(1)::pressure_ruq("present"); dir(18)::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("absent").
dir(11)::ggtp("a640_70"); dir(11)::ggtp("a69_30"); dir(1)::ggtp("a29_10"); dir(12)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(30)::ggtp("a640_70"); dir(9)::ggtp("a69_30"); dir(6)::ggtp("a29_10"); dir(2)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(26)::ggtp("a640_70"); dir(20)::ggtp("a69_30"); dir(23)::ggtp("a29_10"); dir(24)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(6)::ggtp("a640_70"); dir(22)::ggtp("a69_30"); dir(18)::ggtp("a29_10"); dir(1)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(6)::ggtp("a640_70"); dir(11)::ggtp("a69_30"); dir(26)::ggtp("a29_10"); dir(6)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(3)::ggtp("a640_70"); dir(23)::ggtp("a69_30"); dir(12)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(18)::ggtp("a640_70"); dir(4)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(18)::ggtp("a69_30"); dir(18)::ggtp("a29_10"); dir(24)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(8)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(25)::ggtp("a29_10"); dir(9)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(23)::ggtp("a69_30"); dir(23)::ggtp("a29_10"); dir(18)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(9)::ggtp("a640_70"); dir(16)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(14)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(12)::ggtp("a640_70"); dir(12)::ggtp("a69_30"); dir(20)::ggtp("a29_10"); dir(26)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(11)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(6)::ggtp("a29_10"); dir(3)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(29)::ggtp("a640_70"); dir(28)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(30)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(13)::ggtp("a640_70"); dir(2)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(13)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(3)::ggtp("a640_70"); dir(3)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(29)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(10)::ggtp("a640_70"); dir(13)::ggtp("a69_30"); dir(7)::ggtp("a29_10"); dir(2)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(11)::ggtp("a69_30"); dir(28)::ggtp("a29_10"); dir(15)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(29)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(4)::ggtp("a29_10"); dir(12)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(12)::ggtp("a640_70"); dir(6)::ggtp("a69_30"); dir(28)::ggtp("a29_10"); dir(6)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(22)::ggtp("a640_70"); dir(12)::ggtp("a69_30"); dir(3)::ggtp("a29_10"); dir(7)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(15)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(13)::ggtp("a29_10"); dir(11)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(11)::ggtp("a640_70"); dir(21)::ggtp("a69_30"); dir(16)::ggtp("a29_10"); dir(6)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(14)::ggtp("a640_70"); dir(2)::ggtp("a69_30"); dir(2)::ggtp("a29_10"); dir(5)::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(2)::ggtp("a640_70"); dir(28)::ggtp("a69_30"); dir(8)::ggtp("a29_10"); dir(11)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(20)::ggtp("a640_70"); dir(23)::ggtp("a69_30"); dir(13)::ggtp("a29_10"); dir(4)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(29)::ggtp("a640_70"); dir(16)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(22)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(1)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(28)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(28)::ggtp("a640_70"); dir(28)::ggtp("a69_30"); dir(1)::ggtp("a29_10"); dir(4)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(21)::ggtp("a69_30"); dir(1)::ggtp("a29_10"); dir(20)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(23)::ggtp("a640_70"); dir(2)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(19)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(29)::ggtp("a640_70"); dir(23)::ggtp("a69_30"); dir(4)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(12)::ggtp("a640_70"); dir(2)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(6)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(19)::ggtp("a640_70"); dir(19)::ggtp("a69_30"); dir(27)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(8)::ggtp("a640_70"); dir(18)::ggtp("a69_30"); dir(13)::ggtp("a29_10"); dir(5)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(21)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(7)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(28)::ggtp("a640_70"); dir(11)::ggtp("a69_30"); dir(5)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(1)::ggtp("a29_10"); dir(8)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(10)::ggtp("a640_70"); dir(21)::ggtp("a69_30"); dir(20)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(23)::ggtp("a640_70"); dir(24)::ggtp("a69_30"); dir(7)::ggtp("a29_10"); dir(20)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(18)::ggtp("a640_70"); dir(3)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(23)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(4)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(25)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(7)::ggtp("a640_70"); dir(19)::ggtp("a69_30"); dir(1)::ggtp("a29_10"); dir(11)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(10)::ggtp("a640_70"); dir(27)::ggtp("a69_30"); dir(5)::ggtp("a29_10"); dir(16)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(24)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(21)::ggtp("a29_10"); dir(24)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(13)::ggtp("a640_70"); dir(21)::ggtp("a69_30"); dir(30)::ggtp("a29_10"); dir(2)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(3)::ggtp("a640_70"); dir(22)::ggtp("a69_30"); dir(12)::ggtp("a29_10"); dir(24)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(24)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(5)::ggtp("a29_10"); dir(26)::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(28)::ggtp("a640_70"); dir(8)::ggtp("a69_30"); dir(7)::ggtp("a29_10"); dir(20)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(29)::ggtp("a640_70"); dir(19)::ggtp("a69_30"); dir(6)::ggtp("a29_10"); dir(19)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(9)::ggtp("a640_70"); dir(30)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(27)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(12)::ggtp("a69_30"); dir(21)::ggtp("a29_10"); dir(7)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(16)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(9)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(1)::ggtp("a640_70"); dir(23)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(22)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(19)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(21)::ggtp("a29_10"); dir(27)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(21)::ggtp("a640_70"); dir(3)::ggtp("a69_30"); dir(23)::ggtp("a29_10"); dir(21)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(19)::ggtp("a640_70"); dir(22)::ggtp("a69_30"); dir(3)::ggtp("a29_10"); dir(5)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(24)::ggtp("a640_70"); dir(10)::ggtp("a69_30"); dir(4)::ggtp("a29_10"); dir(6)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(25)::ggtp("a640_70"); dir(24)::ggtp("a69_30"); dir(6)::ggtp("a29_10"); dir(30)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(19)::ggtp("a640_70"); dir(30)::ggtp("a69_30"); dir(3)::ggtp("a29_10"); dir(22)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(18)::ggtp("a640_70"); dir(14)::ggtp("a69_30"); dir(29)::ggtp("a29_10"); dir(25)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(2)::ggtp("a640_70"); dir(16)::ggtp("a69_30"); dir(20)::ggtp("a29_10"); dir(3)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(28)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(3)::ggtp("a29_10"); dir(11)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(5)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(12)::ggtp("a29_10"); dir(18)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(19)::ggtp("a640_70"); dir(27)::ggtp("a69_30"); dir(9)::ggtp("a29_10"); dir(14)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(28)::ggtp("a640_70"); dir(9)::ggtp("a69_30"); dir(28)::ggtp("a29_10"); dir(3)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(9)::ggtp("a640_70"); dir(20)::ggtp("a69_30"); dir(18)::ggtp("a29_10"); dir(8)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(19)::ggtp("a640_70"); dir(12)::ggtp("a69_30"); dir(2)::ggtp("a29_10"); dir(3)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(7)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(13)::ggtp("a29_10"); dir(29)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(10)::ggtp("a640_70"); dir(9)::ggtp("a69_30"); dir(5)::ggtp("a29_10"); dir(7)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(30)::ggtp("a640_70"); dir(22)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(18)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(28)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(20)::ggtp("a29_10"); dir(23)::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(15)::ggtp("a640_70"); dir(15)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(1)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(25)::ggtp("a640_70"); dir(4)::ggtp("a69_30"); dir(24)::ggtp("a29_10"); dir(18)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(1)::ggtp("a640_70"); dir(21)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(28)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(28)::ggtp("a640_70"); dir(30)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(20)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(6)::ggtp("a640_70"); dir(10)::ggtp("a69_30"); dir(7)::ggtp("a29_10"); dir(28)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(13)::ggtp("a640_70"); dir(25)::ggtp("a69_30"); dir(27)::ggtp("a29_10"); dir(30)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(5)::ggtp("a640_70"); dir(4)::ggtp("a69_30"); dir(12)::ggtp("a29_10"); dir(19)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(27)::ggtp("a640_70"); dir(22)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(7)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(20)::ggtp("a640_70"); dir(30)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(9)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(1)::ggtp("a640_70"); dir(7)::ggtp("a69_30"); dir(27)::ggtp("a29_10"); dir(17)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(27)::ggtp("a640_70"); dir(17)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(28)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(29)::ggtp("a640_70"); dir(6)::ggtp("a69_30"); dir(22)::ggtp("a29_10"); dir(15)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(19)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(21)::ggtp("a29_10"); dir(22)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
dir(8)::ggtp("a640_70"); dir(4)::ggtp("a69_30"); dir(19)::ggtp("a29_10"); dir(1)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(16)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(29)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(27)::ggtp("a640_70"); dir(2)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(30)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(25)::ggtp("a640_70"); dir(19)::ggtp("a69_30"); dir(24)::ggtp("a29_10"); dir(23)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(20)::ggtp("a640_70"); dir(1)::ggtp("a69_30"); dir(10)::ggtp("a29_10"); dir(24)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(16)::ggtp("a640_70"); dir(12)::ggtp("a69_30"); dir(24)::ggtp("a29_10"); dir(4)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
dir(24)::ggtp("a640_70"); dir(19)::ggtp("a69_30"); dir(18)::ggtp("a29_10"); dir(30)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
dir(24)::ggtp("a640_70"); dir(17)::ggtp("a69_30"); dir(15)::ggtp("a29_10"); dir(13)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
dir(7)::ggtp("a640_70"); dir(16)::ggtp("a69_30"); dir(23)::ggtp("a29_10"); dir(20)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
dir(17)::ggtp("a640_70"); dir(29)::ggtp("a69_30"); dir(5)::ggtp("a29_10"); dir(1)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
dir(18)::ggtp("a640_70"); dir(17)::ggtp("a69_30"); dir(7)::ggtp("a29_10"); dir(15)::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
dir(3)::hbeag("present"); dir(25)::hbeag("absent") :- vh_amn("present"), chHepatitis("active").
dir(9)::hbeag("present"); dir(4)::hbeag("absent") :- vh_amn("present"), chHepatitis("persistent").
dir(30)::hbeag("present"); dir(28)::hbeag("absent") :- vh_amn("present"), chHepatitis("absent").
dir(13)::hbeag("present"); dir(29)::hbeag("absent") :- vh_amn("absent"), chHepatitis("active").
dir(11)::hbeag("present"); dir(30)::hbeag("absent") :- vh_amn("absent"), chHepatitis("persistent").
dir(3)::hbeag("present"); dir(19)::hbeag("absent") :- vh_amn("absent"), chHepatitis("absent").
dir(26)::hbc_anti("present"); dir(15)::hbc_anti("absent") :- vh_amn("present"), chHepatitis("active").
dir(21)::hbc_anti("present"); dir(8)::hbc_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
dir(20)::hbc_anti("present"); dir(5)::hbc_anti("absent") :- vh_amn("present"), chHepatitis("absent").
dir(25)::hbc_anti("present"); dir(10)::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("active").
dir(2)::hbc_anti("present"); dir(22)::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
dir(6)::hbc_anti("present"); dir(21)::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
dir(28)::hcv_anti("present"); dir(1)::hcv_anti("absent") :- vh_amn("present"), chHepatitis("active").
dir(20)::hcv_anti("present"); dir(28)::hcv_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
dir(20)::hcv_anti("present"); dir(10)::hcv_anti("absent") :- vh_amn("present"), chHepatitis("absent").
dir(15)::hcv_anti("present"); dir(14)::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("active").
dir(4)::hcv_anti("present"); dir(12)::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
dir(8)::hcv_anti("present"); dir(2)::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
dir(11)::hepatalgia("present"); dir(10)::hepatalgia("absent") :- hepatomegaly("present").
dir(15)::hepatalgia("present"); dir(9)::hepatalgia("absent") :- hepatomegaly("absent").
dir(16)::hbsag("present"); dir(7)::hbsag("absent") :- vh_amn("present"), chHepatitis("active").
dir(11)::hbsag("present"); dir(8)::hbsag("absent") :- vh_amn("present"), chHepatitis("persistent").
dir(26)::hbsag("present"); dir(20)::hbsag("absent") :- vh_amn("present"), chHepatitis("absent").
dir(25)::hbsag("present"); dir(2)::hbsag("absent") :- vh_amn("absent"), chHepatitis("active").
dir(19)::hbsag("present"); dir(23)::hbsag("absent") :- vh_amn("absent"), chHepatitis("persistent").
dir(9)::hbsag("present"); dir(3)::hbsag("absent") :- vh_amn("absent"), chHepatitis("absent").
dir(9)::cholesterol("a999_350"); dir(16)::cholesterol("a349_240"); dir(30)::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("active").
dir(21)::cholesterol("a999_350"); dir(26)::cholesterol("a349_240"); dir(15)::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("persistent").
dir(8)::cholesterol("a999_350"); dir(14)::cholesterol("a349_240"); dir(17)::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("absent").
dir(23)::cholesterol("a999_350"); dir(30)::cholesterol("a349_240"); dir(17)::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("active").
dir(27)::cholesterol("a999_350"); dir(20)::cholesterol("a349_240"); dir(24)::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("persistent").
dir(26)::cholesterol("a999_350"); dir(19)::cholesterol("a349_240"); dir(2)::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("absent").
dir(14)::cholesterol("a999_350"); dir(25)::cholesterol("a349_240"); dir(24)::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("active").
dir(12)::cholesterol("a999_350"); dir(17)::cholesterol("a349_240"); dir(25)::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("persistent").
dir(21)::cholesterol("a999_350"); dir(23)::cholesterol("a349_240"); dir(26)::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("absent").
dir(26)::cholesterol("a999_350"); dir(7)::cholesterol("a349_240"); dir(14)::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("active").
dir(27)::cholesterol("a999_350"); dir(27)::cholesterol("a349_240"); dir(7)::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("persistent").
dir(30)::cholesterol("a999_350"); dir(11)::cholesterol("a349_240"); dir(16)::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("absent").
dir(17)::cirrhosis("decompensate"); dir(14)::cirrhosis("compensate"); dir(17)::cirrhosis("absent") :- fibrosis("present"), steatosis("present").
dir(21)::cirrhosis("decompensate"); dir(23)::cirrhosis("compensate"); dir(5)::cirrhosis("absent") :- fibrosis("present"), steatosis("absent").
dir(22)::cirrhosis("decompensate"); dir(13)::cirrhosis("compensate"); dir(2)::cirrhosis("absent") :- fibrosis("absent"), steatosis("present").
dir(17)::cirrhosis("decompensate"); dir(18)::cirrhosis("compensate"); dir(13)::cirrhosis("absent") :- fibrosis("absent"), steatosis("absent").
dir(17)::hbsag_anti("present"); dir(2)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("present").
dir(13)::hbsag_anti("present"); dir(15)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("absent").
dir(21)::hbsag_anti("present"); dir(6)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("present").
dir(20)::hbsag_anti("present"); dir(7)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("absent").
dir(23)::hbsag_anti("present"); dir(2)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("present").
dir(26)::hbsag_anti("present"); dir(28)::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("absent").
dir(5)::hbsag_anti("present"); dir(24)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("present").
dir(2)::hbsag_anti("present"); dir(19)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("absent").
dir(6)::hbsag_anti("present"); dir(4)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("present").
dir(24)::hbsag_anti("present"); dir(21)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("absent").
dir(8)::hbsag_anti("present"); dir(26)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("present").
dir(18)::hbsag_anti("present"); dir(29)::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("absent").
dir(12)::alt("a850_200"); dir(5)::alt("a199_100"); dir(9)::alt("a99_35"); dir(13)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(29)::alt("a850_200"); dir(15)::alt("a199_100"); dir(2)::alt("a99_35"); dir(16)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(23)::alt("a850_200"); dir(8)::alt("a199_100"); dir(15)::alt("a99_35"); dir(24)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(24)::alt("a850_200"); dir(29)::alt("a199_100"); dir(13)::alt("a99_35"); dir(9)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(9)::alt("a850_200"); dir(8)::alt("a199_100"); dir(11)::alt("a99_35"); dir(11)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(11)::alt("a850_200"); dir(15)::alt("a199_100"); dir(3)::alt("a99_35"); dir(11)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(12)::alt("a850_200"); dir(3)::alt("a199_100"); dir(21)::alt("a99_35"); dir(12)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(12)::alt("a850_200"); dir(3)::alt("a199_100"); dir(23)::alt("a99_35"); dir(3)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(20)::alt("a850_200"); dir(22)::alt("a199_100"); dir(19)::alt("a99_35"); dir(8)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(5)::alt("a850_200"); dir(27)::alt("a199_100"); dir(23)::alt("a99_35"); dir(6)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(13)::alt("a850_200"); dir(17)::alt("a199_100"); dir(27)::alt("a99_35"); dir(18)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(12)::alt("a850_200"); dir(17)::alt("a199_100"); dir(27)::alt("a99_35"); dir(12)::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(23)::alt("a850_200"); dir(14)::alt("a199_100"); dir(10)::alt("a99_35"); dir(2)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(10)::alt("a850_200"); dir(5)::alt("a199_100"); dir(5)::alt("a99_35"); dir(2)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(8)::alt("a850_200"); dir(2)::alt("a199_100"); dir(20)::alt("a99_35"); dir(8)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(29)::alt("a850_200"); dir(10)::alt("a199_100"); dir(28)::alt("a99_35"); dir(22)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(28)::alt("a850_200"); dir(26)::alt("a199_100"); dir(5)::alt("a99_35"); dir(20)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(20)::alt("a850_200"); dir(12)::alt("a199_100"); dir(1)::alt("a99_35"); dir(11)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(1)::alt("a850_200"); dir(19)::alt("a199_100"); dir(21)::alt("a99_35"); dir(10)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(30)::alt("a850_200"); dir(14)::alt("a199_100"); dir(1)::alt("a99_35"); dir(16)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(2)::alt("a850_200"); dir(22)::alt("a199_100"); dir(6)::alt("a99_35"); dir(16)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(27)::alt("a850_200"); dir(22)::alt("a199_100"); dir(25)::alt("a99_35"); dir(29)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(3)::alt("a850_200"); dir(15)::alt("a199_100"); dir(11)::alt("a99_35"); dir(27)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(29)::alt("a850_200"); dir(6)::alt("a199_100"); dir(12)::alt("a99_35"); dir(21)::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(30)::alt("a850_200"); dir(8)::alt("a199_100"); dir(6)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(2)::alt("a850_200"); dir(26)::alt("a199_100"); dir(1)::alt("a99_35"); dir(14)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(12)::alt("a850_200"); dir(2)::alt("a199_100"); dir(29)::alt("a99_35"); dir(23)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(20)::alt("a850_200"); dir(26)::alt("a199_100"); dir(15)::alt("a99_35"); dir(24)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(7)::alt("a850_200"); dir(30)::alt("a199_100"); dir(29)::alt("a99_35"); dir(13)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(22)::alt("a850_200"); dir(21)::alt("a199_100"); dir(9)::alt("a99_35"); dir(23)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(20)::alt("a850_200"); dir(4)::alt("a199_100"); dir(16)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(14)::alt("a850_200"); dir(22)::alt("a199_100"); dir(3)::alt("a99_35"); dir(25)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(1)::alt("a850_200"); dir(28)::alt("a199_100"); dir(1)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(3)::alt("a850_200"); dir(10)::alt("a199_100"); dir(14)::alt("a99_35"); dir(6)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(19)::alt("a850_200"); dir(3)::alt("a199_100"); dir(16)::alt("a99_35"); dir(9)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(30)::alt("a850_200"); dir(10)::alt("a199_100"); dir(24)::alt("a99_35"); dir(10)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(8)::alt("a850_200"); dir(18)::alt("a199_100"); dir(30)::alt("a99_35"); dir(26)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(27)::alt("a850_200"); dir(20)::alt("a199_100"); dir(18)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(17)::alt("a850_200"); dir(5)::alt("a199_100"); dir(25)::alt("a99_35"); dir(15)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(1)::alt("a850_200"); dir(27)::alt("a199_100"); dir(14)::alt("a99_35"); dir(23)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(22)::alt("a850_200"); dir(19)::alt("a199_100"); dir(2)::alt("a99_35"); dir(16)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(18)::alt("a850_200"); dir(22)::alt("a199_100"); dir(6)::alt("a99_35"); dir(27)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(5)::alt("a850_200"); dir(3)::alt("a199_100"); dir(21)::alt("a99_35"); dir(23)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(28)::alt("a850_200"); dir(17)::alt("a199_100"); dir(17)::alt("a99_35"); dir(7)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(18)::alt("a850_200"); dir(27)::alt("a199_100"); dir(2)::alt("a99_35"); dir(10)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(11)::alt("a850_200"); dir(22)::alt("a199_100"); dir(27)::alt("a99_35"); dir(10)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(10)::alt("a850_200"); dir(22)::alt("a199_100"); dir(4)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(22)::alt("a850_200"); dir(5)::alt("a199_100"); dir(9)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(12)::alt("a850_200"); dir(1)::alt("a199_100"); dir(3)::alt("a99_35"); dir(25)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(15)::alt("a850_200"); dir(21)::alt("a199_100"); dir(12)::alt("a99_35"); dir(20)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(27)::alt("a850_200"); dir(9)::alt("a199_100"); dir(9)::alt("a99_35"); dir(4)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(15)::alt("a850_200"); dir(16)::alt("a199_100"); dir(22)::alt("a99_35"); dir(15)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(16)::alt("a850_200"); dir(25)::alt("a199_100"); dir(15)::alt("a99_35"); dir(2)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(25)::alt("a850_200"); dir(3)::alt("a199_100"); dir(1)::alt("a99_35"); dir(13)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(29)::alt("a850_200"); dir(12)::alt("a199_100"); dir(22)::alt("a99_35"); dir(28)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(8)::alt("a850_200"); dir(30)::alt("a199_100"); dir(19)::alt("a99_35"); dir(15)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(30)::alt("a850_200"); dir(4)::alt("a199_100"); dir(1)::alt("a99_35"); dir(26)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(4)::alt("a850_200"); dir(25)::alt("a199_100"); dir(25)::alt("a99_35"); dir(2)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(2)::alt("a850_200"); dir(6)::alt("a199_100"); dir(11)::alt("a99_35"); dir(9)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(18)::alt("a850_200"); dir(8)::alt("a199_100"); dir(23)::alt("a99_35"); dir(26)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(13)::alt("a850_200"); dir(13)::alt("a199_100"); dir(29)::alt("a99_35"); dir(11)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(17)::alt("a850_200"); dir(12)::alt("a199_100"); dir(2)::alt("a99_35"); dir(6)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(12)::alt("a850_200"); dir(12)::alt("a199_100"); dir(6)::alt("a99_35"); dir(20)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(13)::alt("a850_200"); dir(26)::alt("a199_100"); dir(17)::alt("a99_35"); dir(8)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(20)::alt("a850_200"); dir(30)::alt("a199_100"); dir(30)::alt("a99_35"); dir(8)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(8)::alt("a850_200"); dir(16)::alt("a199_100"); dir(15)::alt("a99_35"); dir(20)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(16)::alt("a850_200"); dir(26)::alt("a199_100"); dir(10)::alt("a99_35"); dir(11)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(2)::alt("a850_200"); dir(24)::alt("a199_100"); dir(1)::alt("a99_35"); dir(19)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(14)::alt("a850_200"); dir(26)::alt("a199_100"); dir(28)::alt("a99_35"); dir(9)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(24)::alt("a850_200"); dir(2)::alt("a199_100"); dir(30)::alt("a99_35"); dir(12)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(4)::alt("a850_200"); dir(29)::alt("a199_100"); dir(26)::alt("a99_35"); dir(9)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(18)::alt("a850_200"); dir(13)::alt("a199_100"); dir(3)::alt("a99_35"); dir(12)::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(27)::spleen("present"); dir(27)::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("present").
dir(1)::spleen("present"); dir(1)::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("absent").
dir(1)::spleen("present"); dir(26)::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("present").
dir(1)::spleen("present"); dir(23)::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("absent").
dir(20)::spleen("present"); dir(29)::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("present").
dir(15)::spleen("present"); dir(21)::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("absent").
dir(28)::spleen("present"); dir(8)::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("present").
dir(6)::spleen("present"); dir(11)::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("absent").
dir(15)::spleen("present"); dir(6)::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("present").
dir(28)::spleen("present"); dir(29)::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("absent").
dir(14)::spleen("present"); dir(2)::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("present").
dir(3)::spleen("present"); dir(29)::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("absent").
dir(6)::edge("present"); dir(1)::edge("absent") :- cirrhosis("decompensate").
dir(8)::edge("present"); dir(11)::edge("absent") :- cirrhosis("compensate").
dir(8)::edge("present"); dir(28)::edge("absent") :- cirrhosis("absent").
dir(8)::irregular_liver("present"); dir(20)::irregular_liver("absent") :- cirrhosis("decompensate").
dir(5)::irregular_liver("present"); dir(21)::irregular_liver("absent") :- cirrhosis("compensate").
dir(19)::irregular_liver("present"); dir(17)::irregular_liver("absent") :- cirrhosis("absent").
dir(14)::inr("a200_110"); dir(3)::inr("a109_70"); dir(4)::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(5)::inr("a200_110"); dir(18)::inr("a109_70"); dir(6)::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(15)::inr("a200_110"); dir(28)::inr("a109_70"); dir(1)::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(2)::inr("a200_110"); dir(5)::inr("a109_70"); dir(21)::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(25)::inr("a200_110"); dir(28)::inr("a109_70"); dir(12)::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(9)::inr("a200_110"); dir(10)::inr("a109_70"); dir(29)::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(3)::inr("a200_110"); dir(26)::inr("a109_70"); dir(17)::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(9)::inr("a200_110"); dir(10)::inr("a109_70"); dir(20)::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(30)::inr("a200_110"); dir(1)::inr("a109_70"); dir(16)::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
dir(22)::inr("a200_110"); dir(14)::inr("a109_70"); dir(15)::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(22)::inr("a200_110"); dir(3)::inr("a109_70"); dir(21)::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(3)::inr("a200_110"); dir(7)::inr("a109_70"); dir(4)::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(25)::inr("a200_110"); dir(27)::inr("a109_70"); dir(14)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(11)::inr("a200_110"); dir(4)::inr("a109_70"); dir(17)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(30)::inr("a200_110"); dir(24)::inr("a109_70"); dir(12)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(14)::inr("a200_110"); dir(2)::inr("a109_70"); dir(23)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(28)::inr("a200_110"); dir(10)::inr("a109_70"); dir(4)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(15)::inr("a200_110"); dir(6)::inr("a109_70"); dir(17)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(20)::inr("a200_110"); dir(19)::inr("a109_70"); dir(4)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(17)::inr("a200_110"); dir(22)::inr("a109_70"); dir(28)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(9)::inr("a200_110"); dir(30)::inr("a109_70"); dir(16)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
dir(16)::inr("a200_110"); dir(7)::inr("a109_70"); dir(24)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(3)::inr("a200_110"); dir(7)::inr("a109_70"); dir(2)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(11)::inr("a200_110"); dir(24)::inr("a109_70"); dir(20)::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(18)::inr("a200_110"); dir(5)::inr("a109_70"); dir(6)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(28)::inr("a200_110"); dir(18)::inr("a109_70"); dir(22)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(16)::inr("a200_110"); dir(20)::inr("a109_70"); dir(3)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(15)::inr("a200_110"); dir(1)::inr("a109_70"); dir(16)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(8)::inr("a200_110"); dir(12)::inr("a109_70"); dir(8)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
dir(23)::inr("a200_110"); dir(30)::inr("a109_70"); dir(21)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(30)::inr("a200_110"); dir(28)::inr("a109_70"); dir(18)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(28)::inr("a200_110"); dir(29)::inr("a109_70"); dir(11)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(16)::inr("a200_110"); dir(13)::inr("a109_70"); dir(13)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
dir(30)::inr("a200_110"); dir(21)::inr("a109_70"); dir(23)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
dir(17)::inr("a200_110"); dir(25)::inr("a109_70"); dir(7)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
dir(23)::inr("a200_110"); dir(1)::inr("a109_70"); dir(21)::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
dir(23)::proteins("a10_6"); dir(29)::proteins("a5_2") :- cirrhosis("decompensate").
dir(26)::proteins("a10_6"); dir(17)::proteins("a5_2") :- cirrhosis("compensate").
dir(24)::proteins("a10_6"); dir(30)::proteins("a5_2") :- cirrhosis("absent").
dir(18)::carcinoma("present"); dir(20)::carcinoma("absent") :- cirrhosis("decompensate"), pBC("present").
dir(19)::carcinoma("present"); dir(28)::carcinoma("absent") :- cirrhosis("decompensate"), pBC("absent").
dir(9)::carcinoma("present"); dir(3)::carcinoma("absent") :- cirrhosis("compensate"), pBC("present").
dir(11)::carcinoma("present"); dir(24)::carcinoma("absent") :- cirrhosis("compensate"), pBC("absent").
dir(25)::carcinoma("present"); dir(11)::carcinoma("absent") :- cirrhosis("absent"), pBC("present").
dir(9)::carcinoma("present"); dir(1)::carcinoma("absent") :- cirrhosis("absent"), pBC("absent").
dir(18)::ast("a700_400"); dir(15)::ast("a399_150"); dir(12)::ast("a149_40"); dir(25)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(4)::ast("a700_400"); dir(16)::ast("a399_150"); dir(9)::ast("a149_40"); dir(24)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(6)::ast("a700_400"); dir(27)::ast("a399_150"); dir(10)::ast("a149_40"); dir(18)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(15)::ast("a700_400"); dir(2)::ast("a399_150"); dir(8)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(4)::ast("a700_400"); dir(6)::ast("a399_150"); dir(17)::ast("a149_40"); dir(3)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(12)::ast("a700_400"); dir(25)::ast("a399_150"); dir(8)::ast("a149_40"); dir(29)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(23)::ast("a700_400"); dir(4)::ast("a399_150"); dir(9)::ast("a149_40"); dir(28)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(5)::ast("a700_400"); dir(25)::ast("a399_150"); dir(7)::ast("a149_40"); dir(22)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(20)::ast("a700_400"); dir(11)::ast("a399_150"); dir(8)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(5)::ast("a700_400"); dir(27)::ast("a399_150"); dir(26)::ast("a149_40"); dir(5)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(20)::ast("a700_400"); dir(5)::ast("a399_150"); dir(30)::ast("a149_40"); dir(28)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(25)::ast("a700_400"); dir(29)::ast("a399_150"); dir(7)::ast("a149_40"); dir(7)::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(8)::ast("a700_400"); dir(25)::ast("a399_150"); dir(3)::ast("a149_40"); dir(8)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(3)::ast("a700_400"); dir(13)::ast("a399_150"); dir(11)::ast("a149_40"); dir(3)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(1)::ast("a700_400"); dir(28)::ast("a399_150"); dir(21)::ast("a149_40"); dir(6)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(30)::ast("a700_400"); dir(26)::ast("a399_150"); dir(29)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(8)::ast("a700_400"); dir(10)::ast("a399_150"); dir(30)::ast("a149_40"); dir(26)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(27)::ast("a700_400"); dir(10)::ast("a399_150"); dir(1)::ast("a149_40"); dir(17)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(25)::ast("a700_400"); dir(24)::ast("a399_150"); dir(16)::ast("a149_40"); dir(24)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(14)::ast("a700_400"); dir(22)::ast("a399_150"); dir(17)::ast("a149_40"); dir(6)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(25)::ast("a700_400"); dir(2)::ast("a399_150"); dir(2)::ast("a149_40"); dir(8)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(24)::ast("a700_400"); dir(5)::ast("a399_150"); dir(18)::ast("a149_40"); dir(17)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(7)::ast("a700_400"); dir(16)::ast("a399_150"); dir(25)::ast("a149_40"); dir(15)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(7)::ast("a700_400"); dir(18)::ast("a399_150"); dir(30)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(19)::ast("a700_400"); dir(5)::ast("a399_150"); dir(24)::ast("a149_40"); dir(7)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(7)::ast("a700_400"); dir(8)::ast("a399_150"); dir(7)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(20)::ast("a700_400"); dir(6)::ast("a399_150"); dir(26)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(23)::ast("a700_400"); dir(29)::ast("a399_150"); dir(4)::ast("a149_40"); dir(1)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(4)::ast("a700_400"); dir(24)::ast("a399_150"); dir(13)::ast("a149_40"); dir(8)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(23)::ast("a700_400"); dir(2)::ast("a399_150"); dir(3)::ast("a149_40"); dir(10)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(10)::ast("a700_400"); dir(27)::ast("a399_150"); dir(25)::ast("a149_40"); dir(5)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(17)::ast("a700_400"); dir(23)::ast("a399_150"); dir(25)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(8)::ast("a700_400"); dir(2)::ast("a399_150"); dir(19)::ast("a149_40"); dir(11)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(20)::ast("a700_400"); dir(26)::ast("a399_150"); dir(12)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(16)::ast("a700_400"); dir(30)::ast("a399_150"); dir(27)::ast("a149_40"); dir(21)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(8)::ast("a700_400"); dir(28)::ast("a399_150"); dir(12)::ast("a149_40"); dir(7)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(22)::ast("a700_400"); dir(12)::ast("a399_150"); dir(25)::ast("a149_40"); dir(12)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(29)::ast("a700_400"); dir(28)::ast("a399_150"); dir(11)::ast("a149_40"); dir(12)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(10)::ast("a700_400"); dir(29)::ast("a399_150"); dir(21)::ast("a149_40"); dir(3)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(9)::ast("a700_400"); dir(25)::ast("a399_150"); dir(24)::ast("a149_40"); dir(5)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(17)::ast("a700_400"); dir(27)::ast("a399_150"); dir(24)::ast("a149_40"); dir(2)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(12)::ast("a700_400"); dir(6)::ast("a399_150"); dir(4)::ast("a149_40"); dir(24)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(2)::ast("a700_400"); dir(25)::ast("a399_150"); dir(30)::ast("a149_40"); dir(15)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(7)::ast("a700_400"); dir(8)::ast("a399_150"); dir(19)::ast("a149_40"); dir(17)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(4)::ast("a700_400"); dir(18)::ast("a399_150"); dir(29)::ast("a149_40"); dir(17)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(30)::ast("a700_400"); dir(3)::ast("a399_150"); dir(5)::ast("a149_40"); dir(18)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(8)::ast("a700_400"); dir(15)::ast("a399_150"); dir(23)::ast("a149_40"); dir(10)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(25)::ast("a700_400"); dir(2)::ast("a399_150"); dir(9)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(13)::ast("a700_400"); dir(9)::ast("a399_150"); dir(28)::ast("a149_40"); dir(26)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(8)::ast("a700_400"); dir(4)::ast("a399_150"); dir(19)::ast("a149_40"); dir(15)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(30)::ast("a700_400"); dir(16)::ast("a399_150"); dir(8)::ast("a149_40"); dir(20)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(1)::ast("a700_400"); dir(19)::ast("a399_150"); dir(9)::ast("a149_40"); dir(19)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(19)::ast("a700_400"); dir(17)::ast("a399_150"); dir(15)::ast("a149_40"); dir(6)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(4)::ast("a700_400"); dir(24)::ast("a399_150"); dir(11)::ast("a149_40"); dir(23)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(20)::ast("a700_400"); dir(6)::ast("a399_150"); dir(25)::ast("a149_40"); dir(23)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(1)::ast("a700_400"); dir(14)::ast("a399_150"); dir(13)::ast("a149_40"); dir(8)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(7)::ast("a700_400"); dir(27)::ast("a399_150"); dir(2)::ast("a149_40"); dir(9)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(6)::ast("a700_400"); dir(17)::ast("a399_150"); dir(17)::ast("a149_40"); dir(5)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(13)::ast("a700_400"); dir(1)::ast("a399_150"); dir(20)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(15)::ast("a700_400"); dir(9)::ast("a399_150"); dir(9)::ast("a149_40"); dir(2)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(22)::ast("a700_400"); dir(28)::ast("a399_150"); dir(13)::ast("a149_40"); dir(19)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
dir(8)::ast("a700_400"); dir(23)::ast("a399_150"); dir(12)::ast("a149_40"); dir(8)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
dir(22)::ast("a700_400"); dir(16)::ast("a399_150"); dir(14)::ast("a149_40"); dir(27)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
dir(28)::ast("a700_400"); dir(5)::ast("a399_150"); dir(13)::ast("a149_40"); dir(27)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
dir(7)::ast("a700_400"); dir(18)::ast("a399_150"); dir(18)::ast("a149_40"); dir(23)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
dir(14)::ast("a700_400"); dir(4)::ast("a399_150"); dir(29)::ast("a149_40"); dir(2)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
dir(10)::ast("a700_400"); dir(26)::ast("a399_150"); dir(17)::ast("a149_40"); dir(12)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
dir(7)::ast("a700_400"); dir(13)::ast("a399_150"); dir(5)::ast("a149_40"); dir(11)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
dir(22)::ast("a700_400"); dir(10)::ast("a399_150"); dir(22)::ast("a149_40"); dir(6)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
dir(5)::ast("a700_400"); dir(5)::ast("a399_150"); dir(28)::ast("a149_40"); dir(12)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
dir(4)::ast("a700_400"); dir(24)::ast("a399_150"); dir(13)::ast("a149_40"); dir(29)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
dir(14)::ast("a700_400"); dir(24)::ast("a399_150"); dir(20)::ast("a149_40"); dir(16)::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
dir(15)::phosphatase("a4000_700"); dir(1)::phosphatase("a699_240"); dir(20)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
dir(18)::phosphatase("a4000_700"); dir(21)::phosphatase("a699_240"); dir(22)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
dir(17)::phosphatase("a4000_700"); dir(1)::phosphatase("a699_240"); dir(3)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
dir(20)::phosphatase("a4000_700"); dir(9)::phosphatase("a699_240"); dir(5)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
dir(26)::phosphatase("a4000_700"); dir(15)::phosphatase("a699_240"); dir(6)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
dir(5)::phosphatase("a4000_700"); dir(27)::phosphatase("a699_240"); dir(2)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
dir(27)::phosphatase("a4000_700"); dir(11)::phosphatase("a699_240"); dir(24)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
dir(7)::phosphatase("a4000_700"); dir(25)::phosphatase("a699_240"); dir(17)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
dir(29)::phosphatase("a4000_700"); dir(21)::phosphatase("a699_240"); dir(1)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
dir(22)::phosphatase("a4000_700"); dir(18)::phosphatase("a699_240"); dir(29)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
dir(8)::phosphatase("a4000_700"); dir(25)::phosphatase("a699_240"); dir(3)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
dir(20)::phosphatase("a4000_700"); dir(17)::phosphatase("a699_240"); dir(22)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
dir(5)::phosphatase("a4000_700"); dir(2)::phosphatase("a699_240"); dir(28)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
dir(19)::phosphatase("a4000_700"); dir(6)::phosphatase("a699_240"); dir(19)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
dir(15)::phosphatase("a4000_700"); dir(29)::phosphatase("a699_240"); dir(14)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
dir(1)::phosphatase("a4000_700"); dir(11)::phosphatase("a699_240"); dir(7)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
dir(12)::phosphatase("a4000_700"); dir(27)::phosphatase("a699_240"); dir(30)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
dir(24)::phosphatase("a4000_700"); dir(1)::phosphatase("a699_240"); dir(24)::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
dir(2)::phosphatase("a4000_700"); dir(26)::phosphatase("a699_240"); dir(28)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
dir(10)::phosphatase("a4000_700"); dir(14)::phosphatase("a699_240"); dir(3)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
dir(4)::phosphatase("a4000_700"); dir(30)::phosphatase("a699_240"); dir(17)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
dir(23)::phosphatase("a4000_700"); dir(16)::phosphatase("a699_240"); dir(28)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
dir(22)::phosphatase("a4000_700"); dir(25)::phosphatase("a699_240"); dir(13)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
dir(9)::phosphatase("a4000_700"); dir(7)::phosphatase("a699_240"); dir(25)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
dir(9)::phosphatase("a4000_700"); dir(14)::phosphatase("a699_240"); dir(12)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
dir(13)::phosphatase("a4000_700"); dir(2)::phosphatase("a699_240"); dir(29)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
dir(22)::phosphatase("a4000_700"); dir(23)::phosphatase("a699_240"); dir(9)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
dir(16)::phosphatase("a4000_700"); dir(7)::phosphatase("a699_240"); dir(11)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
dir(5)::phosphatase("a4000_700"); dir(5)::phosphatase("a699_240"); dir(5)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
dir(17)::phosphatase("a4000_700"); dir(16)::phosphatase("a699_240"); dir(2)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
dir(23)::phosphatase("a4000_700"); dir(2)::phosphatase("a699_240"); dir(30)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
dir(17)::phosphatase("a4000_700"); dir(3)::phosphatase("a699_240"); dir(24)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
dir(5)::phosphatase("a4000_700"); dir(29)::phosphatase("a699_240"); dir(6)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
dir(9)::phosphatase("a4000_700"); dir(16)::phosphatase("a699_240"); dir(16)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
dir(5)::phosphatase("a4000_700"); dir(23)::phosphatase("a699_240"); dir(27)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
dir(30)::phosphatase("a4000_700"); dir(14)::phosphatase("a699_240"); dir(23)::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
dir(22)::edema("present"); dir(21)::edema("absent") :- cirrhosis("decompensate").
dir(29)::edema("present"); dir(19)::edema("absent") :- cirrhosis("compensate").
dir(25)::edema("present"); dir(27)::edema("absent") :- cirrhosis("absent").
dir(22)::platelet("a597_300"); dir(2)::platelet("a299_150"); dir(10)::platelet("a149_100"); dir(18)::platelet("a99_0") :- cirrhosis("decompensate"), pBC("present").
dir(11)::platelet("a597_300"); dir(23)::platelet("a299_150"); dir(4)::platelet("a149_100"); dir(21)::platelet("a99_0") :- cirrhosis("decompensate"), pBC("absent").
dir(7)::platelet("a597_300"); dir(14)::platelet("a299_150"); dir(6)::platelet("a149_100"); dir(5)::platelet("a99_0") :- cirrhosis("compensate"), pBC("present").
dir(17)::platelet("a597_300"); dir(16)::platelet("a299_150"); dir(8)::platelet("a149_100"); dir(7)::platelet("a99_0") :- cirrhosis("compensate"), pBC("absent").
dir(15)::platelet("a597_300"); dir(24)::platelet("a299_150"); dir(18)::platelet("a149_100"); dir(11)::platelet("a99_0") :- cirrhosis("absent"), pBC("present").
dir(2)::platelet("a597_300"); dir(21)::platelet("a299_150"); dir(21)::platelet("a149_100"); dir(24)::platelet("a99_0") :- cirrhosis("absent"), pBC("absent").
dir(13)::encephalopathy("present"); dir(24)::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("present").
dir(11)::encephalopathy("present"); dir(20)::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("absent").
dir(21)::encephalopathy("present"); dir(4)::encephalopathy("absent") :- cirrhosis("compensate"), pBC("present").
dir(18)::encephalopathy("present"); dir(19)::encephalopathy("absent") :- cirrhosis("compensate"), pBC("absent").
dir(16)::encephalopathy("present"); dir(2)::encephalopathy("absent") :- cirrhosis("absent"), pBC("present").
dir(9)::encephalopathy("present"); dir(29)::encephalopathy("absent") :- cirrhosis("absent"), pBC("absent").
dir(19)::albumin("a70_50"); dir(26)::albumin("a49_30"); dir(16)::albumin("a29_0") :- cirrhosis("decompensate").
dir(1)::albumin("a70_50"); dir(17)::albumin("a49_30"); dir(18)::albumin("a29_0") :- cirrhosis("compensate").
dir(4)::albumin("a70_50"); dir(6)::albumin("a49_30"); dir(24)::albumin("a29_0") :- cirrhosis("absent").
dir(14)::spiders("present"); dir(25)::spiders("absent") :- cirrhosis("decompensate").
dir(28)::spiders("present"); dir(5)::spiders("absent") :- cirrhosis("compensate").
dir(5)::spiders("present"); dir(22)::spiders("absent") :- cirrhosis("absent").
dir(15)::palms("present"); dir(3)::palms("absent") :- cirrhosis("decompensate").
dir(24)::palms("present"); dir(11)::palms("absent") :- cirrhosis("compensate").
dir(19)::palms("present"); dir(4)::palms("absent") :- cirrhosis("absent").
dir(4)::alcohol("present"); dir(2)::alcohol("absent") :- cirrhosis("decompensate").
dir(6)::alcohol("present"); dir(19)::alcohol("absent") :- cirrhosis("compensate").
dir(1)::alcohol("present"); dir(5)::alcohol("absent") :- cirrhosis("absent").
dir(10)::bilirubin("a88_20"); dir(28)::bilirubin("a19_7"); dir(7)::bilirubin("a6_2"); dir(24)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
dir(20)::bilirubin("a88_20"); dir(16)::bilirubin("a19_7"); dir(12)::bilirubin("a6_2"); dir(26)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
dir(10)::bilirubin("a88_20"); dir(22)::bilirubin("a19_7"); dir(5)::bilirubin("a6_2"); dir(23)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
dir(10)::bilirubin("a88_20"); dir(12)::bilirubin("a19_7"); dir(24)::bilirubin("a6_2"); dir(8)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
dir(25)::bilirubin("a88_20"); dir(8)::bilirubin("a19_7"); dir(2)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
dir(11)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(15)::bilirubin("a6_2"); dir(23)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
dir(23)::bilirubin("a88_20"); dir(1)::bilirubin("a19_7"); dir(12)::bilirubin("a6_2"); dir(9)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
dir(24)::bilirubin("a88_20"); dir(15)::bilirubin("a19_7"); dir(15)::bilirubin("a6_2"); dir(8)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
dir(13)::bilirubin("a88_20"); dir(2)::bilirubin("a19_7"); dir(13)::bilirubin("a6_2"); dir(6)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
dir(30)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(7)::bilirubin("a6_2"); dir(22)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
dir(6)::bilirubin("a88_20"); dir(24)::bilirubin("a19_7"); dir(2)::bilirubin("a6_2"); dir(26)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
dir(19)::bilirubin("a88_20"); dir(17)::bilirubin("a19_7"); dir(9)::bilirubin("a6_2"); dir(11)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
dir(24)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(30)::bilirubin("a6_2"); dir(12)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
dir(7)::bilirubin("a88_20"); dir(3)::bilirubin("a19_7"); dir(10)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
dir(18)::bilirubin("a88_20"); dir(19)::bilirubin("a19_7"); dir(24)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
dir(29)::bilirubin("a88_20"); dir(26)::bilirubin("a19_7"); dir(28)::bilirubin("a6_2"); dir(19)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
dir(10)::bilirubin("a88_20"); dir(25)::bilirubin("a19_7"); dir(10)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
dir(24)::bilirubin("a88_20"); dir(26)::bilirubin("a19_7"); dir(17)::bilirubin("a6_2"); dir(7)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
dir(9)::bilirubin("a88_20"); dir(19)::bilirubin("a19_7"); dir(13)::bilirubin("a6_2"); dir(22)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
dir(19)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(8)::bilirubin("a6_2"); dir(22)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
dir(22)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(7)::bilirubin("a6_2"); dir(11)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
dir(18)::bilirubin("a88_20"); dir(9)::bilirubin("a19_7"); dir(27)::bilirubin("a6_2"); dir(22)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
dir(15)::bilirubin("a88_20"); dir(9)::bilirubin("a19_7"); dir(26)::bilirubin("a6_2"); dir(8)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
dir(22)::bilirubin("a88_20"); dir(17)::bilirubin("a19_7"); dir(11)::bilirubin("a6_2"); dir(8)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
dir(14)::bilirubin("a88_20"); dir(27)::bilirubin("a19_7"); dir(19)::bilirubin("a6_2"); dir(10)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
dir(6)::bilirubin("a88_20"); dir(7)::bilirubin("a19_7"); dir(19)::bilirubin("a6_2"); dir(20)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
dir(5)::bilirubin("a88_20"); dir(28)::bilirubin("a19_7"); dir(9)::bilirubin("a6_2"); dir(4)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
dir(29)::bilirubin("a88_20"); dir(28)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(15)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
dir(10)::bilirubin("a88_20"); dir(21)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(4)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
dir(4)::bilirubin("a88_20"); dir(27)::bilirubin("a19_7"); dir(20)::bilirubin("a6_2"); dir(5)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
dir(6)::bilirubin("a88_20"); dir(13)::bilirubin("a19_7"); dir(27)::bilirubin("a6_2"); dir(27)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
dir(25)::bilirubin("a88_20"); dir(28)::bilirubin("a19_7"); dir(19)::bilirubin("a6_2"); dir(17)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
dir(16)::bilirubin("a88_20"); dir(3)::bilirubin("a19_7"); dir(29)::bilirubin("a6_2"); dir(5)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
dir(12)::bilirubin("a88_20"); dir(18)::bilirubin("a19_7"); dir(17)::bilirubin("a6_2"); dir(15)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
dir(29)::bilirubin("a88_20"); dir(28)::bilirubin("a19_7"); dir(7)::bilirubin("a6_2"); dir(19)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
dir(29)::bilirubin("a88_20"); dir(5)::bilirubin("a19_7"); dir(8)::bilirubin("a6_2"); dir(3)::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
dir(15)::bilirubin("a88_20"); dir(6)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(30)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
dir(13)::bilirubin("a88_20"); dir(18)::bilirubin("a19_7"); dir(1)::bilirubin("a6_2"); dir(2)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
dir(12)::bilirubin("a88_20"); dir(3)::bilirubin("a19_7"); dir(15)::bilirubin("a6_2"); dir(24)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
dir(3)::bilirubin("a88_20"); dir(13)::bilirubin("a19_7"); dir(29)::bilirubin("a6_2"); dir(10)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
dir(23)::bilirubin("a88_20"); dir(1)::bilirubin("a19_7"); dir(5)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
dir(13)::bilirubin("a88_20"); dir(24)::bilirubin("a19_7"); dir(25)::bilirubin("a6_2"); dir(10)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
dir(17)::bilirubin("a88_20"); dir(18)::bilirubin("a19_7"); dir(15)::bilirubin("a6_2"); dir(16)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
dir(15)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(3)::bilirubin("a6_2"); dir(24)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
dir(3)::bilirubin("a88_20"); dir(26)::bilirubin("a19_7"); dir(11)::bilirubin("a6_2"); dir(27)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
dir(7)::bilirubin("a88_20"); dir(24)::bilirubin("a19_7"); dir(5)::bilirubin("a6_2"); dir(28)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
dir(19)::bilirubin("a88_20"); dir(29)::bilirubin("a19_7"); dir(16)::bilirubin("a6_2"); dir(30)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
dir(21)::bilirubin("a88_20"); dir(24)::bilirubin("a19_7"); dir(9)::bilirubin("a6_2"); dir(30)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
dir(10)::bilirubin("a88_20"); dir(4)::bilirubin("a19_7"); dir(23)::bilirubin("a6_2"); dir(29)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
dir(28)::bilirubin("a88_20"); dir(2)::bilirubin("a19_7"); dir(10)::bilirubin("a6_2"); dir(13)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
dir(15)::bilirubin("a88_20"); dir(6)::bilirubin("a19_7"); dir(11)::bilirubin("a6_2"); dir(14)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
dir(1)::bilirubin("a88_20"); dir(18)::bilirubin("a19_7"); dir(8)::bilirubin("a6_2"); dir(13)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
dir(18)::bilirubin("a88_20"); dir(29)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(28)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
dir(30)::bilirubin("a88_20"); dir(15)::bilirubin("a19_7"); dir(19)::bilirubin("a6_2"); dir(24)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
dir(29)::bilirubin("a88_20"); dir(10)::bilirubin("a19_7"); dir(11)::bilirubin("a6_2"); dir(6)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
dir(22)::bilirubin("a88_20"); dir(14)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(4)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
dir(12)::bilirubin("a88_20"); dir(6)::bilirubin("a19_7"); dir(24)::bilirubin("a6_2"); dir(10)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
dir(18)::bilirubin("a88_20"); dir(30)::bilirubin("a19_7"); dir(20)::bilirubin("a6_2"); dir(20)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
dir(18)::bilirubin("a88_20"); dir(21)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(11)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
dir(7)::bilirubin("a88_20"); dir(9)::bilirubin("a19_7"); dir(2)::bilirubin("a6_2"); dir(18)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
dir(7)::bilirubin("a88_20"); dir(1)::bilirubin("a19_7"); dir(3)::bilirubin("a6_2"); dir(2)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
dir(16)::bilirubin("a88_20"); dir(3)::bilirubin("a19_7"); dir(3)::bilirubin("a6_2"); dir(6)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
dir(12)::bilirubin("a88_20"); dir(21)::bilirubin("a19_7"); dir(3)::bilirubin("a6_2"); dir(5)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
dir(17)::bilirubin("a88_20"); dir(7)::bilirubin("a19_7"); dir(14)::bilirubin("a6_2"); dir(29)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
dir(18)::bilirubin("a88_20"); dir(1)::bilirubin("a19_7"); dir(3)::bilirubin("a6_2"); dir(24)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
dir(26)::bilirubin("a88_20"); dir(6)::bilirubin("a19_7"); dir(14)::bilirubin("a6_2"); dir(12)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
dir(13)::bilirubin("a88_20"); dir(6)::bilirubin("a19_7"); dir(5)::bilirubin("a6_2"); dir(29)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
dir(18)::bilirubin("a88_20"); dir(14)::bilirubin("a19_7"); dir(2)::bilirubin("a6_2"); dir(3)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
dir(24)::bilirubin("a88_20"); dir(26)::bilirubin("a19_7"); dir(4)::bilirubin("a6_2"); dir(11)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
dir(26)::bilirubin("a88_20"); dir(20)::bilirubin("a19_7"); dir(16)::bilirubin("a6_2"); dir(23)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
dir(7)::bilirubin("a88_20"); dir(29)::bilirubin("a19_7"); dir(22)::bilirubin("a6_2"); dir(29)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
dir(16)::bilirubin("a88_20"); dir(20)::bilirubin("a19_7"); dir(16)::bilirubin("a6_2"); dir(14)::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
dir(9)::consciousness("present"); dir(14)::consciousness("absent") :- encephalopathy("present").
dir(17)::consciousness("present"); dir(6)::consciousness("absent") :- encephalopathy("absent").
dir(8)::density("present"); dir(9)::density("absent") :- encephalopathy("present").
dir(8)::density("present"); dir(16)::density("absent") :- encephalopathy("absent").
dir(5)::urea("a165_50"); dir(4)::urea("a49_40"); dir(28)::urea("a39_0") :- encephalopathy("present").
dir(22)::urea("a165_50"); dir(17)::urea("a49_40"); dir(16)::urea("a39_0") :- encephalopathy("absent").
dir(3)::skin("present"); dir(3)::skin("absent") :- bilirubin("a88_20").
dir(2)::skin("present"); dir(21)::skin("absent") :- bilirubin("a19_7").
dir(16)::skin("present"); dir(5)::skin("absent") :- bilirubin("a6_2").
dir(24)::skin("present"); dir(6)::skin("absent") :- bilirubin("a1_0").
dir(14)::jaundice("present"); dir(6)::jaundice("absent") :- bilirubin("a88_20").
dir(20)::jaundice("present"); dir(1)::jaundice("absent") :- bilirubin("a19_7").
dir(24)::jaundice("present"); dir(16)::jaundice("absent") :- bilirubin("a6_2").
dir(12)::jaundice("present"); dir(5)::jaundice("absent") :- bilirubin("a1_0").
dir(30)::ascites("present"); dir(23)::ascites("absent") :- proteins("a10_6").
dir(11)::ascites("present"); dir(14)::ascites("absent") :- proteins("a5_2").
dir(1)::bleeding("present"); dir(4)::bleeding("absent") :- platelet("a597_300"), inr("a200_110").
dir(17)::bleeding("present"); dir(5)::bleeding("absent") :- platelet("a597_300"), inr("a109_70").
dir(12)::bleeding("present"); dir(25)::bleeding("absent") :- platelet("a597_300"), inr("a69_0").
dir(27)::bleeding("present"); dir(5)::bleeding("absent") :- platelet("a299_150"), inr("a200_110").
dir(21)::bleeding("present"); dir(8)::bleeding("absent") :- platelet("a299_150"), inr("a109_70").
dir(20)::bleeding("present"); dir(22)::bleeding("absent") :- platelet("a299_150"), inr("a69_0").
dir(24)::bleeding("present"); dir(7)::bleeding("absent") :- platelet("a149_100"), inr("a200_110").
dir(14)::bleeding("present"); dir(6)::bleeding("absent") :- platelet("a149_100"), inr("a109_70").
dir(1)::bleeding("present"); dir(24)::bleeding("absent") :- platelet("a149_100"), inr("a69_0").
dir(23)::bleeding("present"); dir(12)::bleeding("absent") :- platelet("a99_0"), inr("a200_110").
dir(17)::bleeding("present"); dir(7)::bleeding("absent") :- platelet("a99_0"), inr("a109_70").
dir(12)::bleeding("present"); dir(28)::bleeding("absent") :- platelet("a99_0"), inr("a69_0").
dir(1)::itching("present"); dir(26)::itching("absent") :- bilirubin("a88_20").
dir(18)::itching("present"); dir(5)::itching("absent") :- bilirubin("a19_7").
dir(12)::itching("present"); dir(28)::itching("absent") :- bilirubin("a6_2").
dir(10)::itching("present"); dir(30)::itching("absent") :- bilirubin("a1_0").
