%% ProbLog program: PGM 1
%% Created on 2021-02-17 16:58:00.652340

0.1731044::vh_amn("present"); 0.8268956::vh_amn("absent").
0.5350501::hospital("present"); 0.4649499::hospital("absent").
0.07725322::age("age65_100"); 0.38769671::age("age51_65"); 0.39771102::age("age31_50"); 0.13733906::age("age0_30").
0.5979971::sex("female"); 0.4020029::sex("male").
0.03576538::diabetes("present"); 0.96423462::diabetes("absent").
0.1359084::alcoholism("present"); 0.8640916::alcoholism("absent").
0.4234621::surgery("present"); 0.5765379::surgery("absent").
0.1530758::gallstones("present"); 0.8469242::gallstones("absent").
0.08154506::hepatotoxic("present"); 0.91845494::hepatotoxic("absent").
0.01754386::rHepatitis("present"); 0.98245614::rHepatitis("absent") :- hepatotoxic("present").
0.02492212::rHepatitis("present"); 0.97507788::rHepatitis("absent") :- hepatotoxic("absent").
0.002849::hyperbilirubinemia("present"); 0.997151::hyperbilirubinemia("absent") :- age("age65_100"), sex("female").
0.0052356::hyperbilirubinemia("present"); 0.9947644::hyperbilirubinemia("absent") :- age("age65_100"), sex("male").
0.01129944::hyperbilirubinemia("present"); 0.98870056::hyperbilirubinemia("absent") :- age("age51_65"), sex("female").
0.0212766::hyperbilirubinemia("present"); 0.9787234::hyperbilirubinemia("absent") :- age("age51_65"), sex("male").
0.04597701::hyperbilirubinemia("present"); 0.95402299::hyperbilirubinemia("absent") :- age("age31_50"), sex("female").
0.07692308::hyperbilirubinemia("present"); 0.92307692::hyperbilirubinemia("absent") :- age("age31_50"), sex("male").
0.21875::hyperbilirubinemia("present"); 0.78125::hyperbilirubinemia("absent") :- age("age0_30"), sex("female").
0.453125::hyperbilirubinemia("present"); 0.546875::hyperbilirubinemia("absent") :- age("age0_30"), sex("male").
0.24::obesity("present"); 0.76::obesity("absent") :- diabetes("present").
0.06231454::obesity("present"); 0.93768546::obesity("absent") :- diabetes("absent").
0.2::tHepatitis("present"); 0.8::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("present").
0.00191939::tHepatitis("present"); 0.99808061::tHepatitis("absent") :- hepatotoxic("present"), alcoholism("absent").
0.08888889::tHepatitis("present"); 0.91111111::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("present").
0.0326087::tHepatitis("present"); 0.9673913::tHepatitis("absent") :- hepatotoxic("absent"), alcoholism("absent").
0.6571429::pBC("present"); 0.3428571::pBC("absent") :- sex("female"), age("age65_100").
0.700565::pBC("present"); 0.299435::pBC("absent") :- sex("female"), age("age51_65").
0.6149425::pBC("present"); 0.3850575::pBC("absent") :- sex("female"), age("age31_50").
0.125::pBC("present"); 0.875::pBC("absent") :- sex("female"), age("age0_30").
0.3684211::pBC("present"); 0.6315789::pBC("absent") :- sex("male"), age("age65_100").
0.08510638::pBC("present"); 0.91489362::pBC("absent") :- sex("male"), age("age51_65").
0.06730769::pBC("present"); 0.93269231::pBC("absent") :- sex("male"), age("age31_50").
0.00156006::pBC("present"); 0.99843994::pBC("absent") :- sex("male"), age("age0_30").
0.01869159::amylase("a1400_500"); 0.04672897::amylase("a499_300"); 0.93457944::amylase("a299_0") :- gallstones("present").
0.01013514::amylase("a1400_500"); 0.01689189::amylase("a499_300"); 0.97297297::amylase("a299_0") :- gallstones("absent").
0.1775701::fat("present"); 0.8224299::fat("absent") :- gallstones("present").
0.2804054::fat("present"); 0.7195946::fat("absent") :- gallstones("absent").
0.3925234::flatulence("present"); 0.6074766::flatulence("absent") :- gallstones("present").
0.4307432::flatulence("present"); 0.5692568::flatulence("absent") :- gallstones("absent").
0.7102804::choledocholithotomy("present"); 0.2897196::choledocholithotomy("absent") :- gallstones("present").
0.03716216::choledocholithotomy("present"); 0.96283784::choledocholithotomy("absent") :- gallstones("absent").
0.411215::upper_pain("present"); 0.588785::upper_pain("absent") :- gallstones("present").
0.3868243::upper_pain("present"); 0.6131757::upper_pain("absent") :- gallstones("absent").
0.1818182::anorexia("present"); 0.8181818::anorexia("absent") :- rHepatitis("present"), tHepatitis("present").
0.1176471::anorexia("present"); 0.8823529::anorexia("absent") :- rHepatitis("present"), tHepatitis("absent").
0.2222222::anorexia("present"); 0.7777778::anorexia("absent") :- rHepatitis("absent"), tHepatitis("present").
0.280916::anorexia("present"); 0.719084::anorexia("absent") :- rHepatitis("absent"), tHepatitis("absent").
0.1285714::joints("present"); 0.8714286::joints("absent") :- pBC("present").
0.1002387::joints("present"); 0.8997613::joints("absent") :- pBC("absent").
0.5678571::ama("present"); 0.4321429::ama("absent") :- pBC("present").
0.01193317::ama("present"); 0.98806683::ama("absent") :- pBC("absent").
0.8::injections("present"); 0.2::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
0.715847::injections("present"); 0.284153::injections("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
0.8333333::injections("present"); 0.1666667::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
0.4818182::injections("present"); 0.5181818::injections("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
0.375::injections("present"); 0.625::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
0.2333333::injections("present"); 0.7666667::injections("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
0.01098901::injections("present"); 0.98901099::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
0.0647482::injections("present"); 0.9352518::injections("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
0.3636364::steatosis("present"); 0.6363636::steatosis("absent") :- obesity("present"), alcoholism("present").
0.1891892::steatosis("present"); 0.8108108::steatosis("absent") :- obesity("present"), alcoholism("absent").
0.2380952::steatosis("present"); 0.7619048::steatosis("absent") :- obesity("absent"), alcoholism("present").
0.06349206::steatosis("present"); 0.93650794::steatosis("absent") :- obesity("absent"), alcoholism("absent").
0.3333333::transfusion("present"); 0.6666667::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("present").
0.2896175::transfusion("present"); 0.7103825::transfusion("absent") :- hospital("present"), surgery("present"), choledocholithotomy("absent").
0.1666667::transfusion("present"); 0.8333333::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("present").
0.1181818::transfusion("present"); 0.8818182::transfusion("absent") :- hospital("present"), surgery("absent"), choledocholithotomy("absent").
0.125::transfusion("present"); 0.875::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("present").
0.3::transfusion("present"); 0.7::transfusion("absent") :- hospital("absent"), surgery("present"), choledocholithotomy("absent").
0.01098901::transfusion("present"); 0.98901099::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("present").
0.01079137::transfusion("present"); 0.98920863::transfusion("absent") :- hospital("absent"), surgery("absent"), choledocholithotomy("absent").
0.3636364::nausea("present"); 0.6363636::nausea("absent") :- rHepatitis("present"), tHepatitis("present").
0.3529412::nausea("present"); 0.6470588::nausea("absent") :- rHepatitis("present"), tHepatitis("absent").
0.3703704::nausea("present"); 0.6296296::nausea("absent") :- rHepatitis("absent"), tHepatitis("present").
0.2854962::nausea("present"); 0.7145038::nausea("absent") :- rHepatitis("absent"), tHepatitis("absent").
0.1214286::le_cells("present"); 0.8785714::le_cells("absent") :- pBC("present").
0.04057279::le_cells("present"); 0.95942721::le_cells("absent") :- pBC("absent").
0.6097561::hepatomegaly("present"); 0.3902439::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
0.68::hepatomegaly("present"); 0.32::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
0.5918367::hepatomegaly("present"); 0.4081633::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
0.673913::hepatomegaly("present"); 0.326087::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
0.5901639::hepatomegaly("present"); 0.4098361::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
0.6527778::hepatomegaly("present"); 0.3472222::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
0.5555556::hepatomegaly("present"); 0.4444444::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
0.7058823::hepatomegaly("present"); 0.2941177::hepatomegaly("absent") :- rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
0.6::hepatomegaly("present"); 0.4::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("present").
0.6756757::hepatomegaly("present"); 0.3243243::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("present"), hyperbilirubinemia("absent").
0.5897436::hepatomegaly("present"); 0.4102564::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("present").
0.7777778::hepatomegaly("present"); 0.2222222::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), hyperbilirubinemia("absent").
0.5866667::hepatomegaly("present"); 0.4133333::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
0.6865672::hepatomegaly("present"); 0.3134328::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
0.375::hepatomegaly("present"); 0.625::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
0.6973684::hepatomegaly("present"); 0.3026316::hepatomegaly("absent") :- rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
0.2094241::chHepatitis("active"); 0.0052356::chHepatitis("persistent"); 0.7853403::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("present").
0.4615385::chHepatitis("active"); 0.3076923::chHepatitis("persistent"); 0.2307692::chHepatitis("absent") :- transfusion("present"), vh_amn("present"), injections("absent").
0.06::chHepatitis("active"); 0.06::chHepatitis("persistent"); 0.88::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("present").
0.13043478::chHepatitis("active"); 0.04347826::chHepatitis("persistent"); 0.82608696::chHepatitis("absent") :- transfusion("present"), vh_amn("absent"), injections("absent").
0.15384615::chHepatitis("active"); 0.05128205::chHepatitis("persistent"); 0.7948718::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("present").
0.24::chHepatitis("active"); 0.14::chHepatitis("persistent"); 0.62::chHepatitis("absent") :- transfusion("absent"), vh_amn("present"), injections("absent").
0.07692308::chHepatitis("active"); 0.00591716::chHepatitis("persistent"); 0.91715976::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("present").
0.13095238::chHepatitis("active"); 0.05357143::chHepatitis("persistent"); 0.81547619::chHepatitis("absent") :- transfusion("absent"), vh_amn("absent"), injections("absent").
0.1791045::triglycerides("a17_4"); 0.1641791::triglycerides("a3_2"); 0.6567164::triglycerides("a1_0") :- steatosis("present").
0.02373418::triglycerides("a17_4"); 0.03164557::triglycerides("a3_2"); 0.94462025::triglycerides("a1_0") :- steatosis("absent").
0.3888889::pain("present"); 0.6111111::pain("absent") :- pBC("present"), joints("present").
0.147541::pain("present"); 0.852459::pain("absent") :- pBC("present"), joints("absent").
0.8095238::pain("present"); 0.1904762::pain("absent") :- pBC("absent"), joints("present").
0.1830239::pain("present"); 0.8169761::pain("absent") :- pBC("absent"), joints("absent").
0.3934426::pain_ruq("present"); 0.6065574::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("present").
0.4776119::pain_ruq("present"); 0.5223881::pain_ruq("absent") :- steatosis("present"), hyperbilirubinemia("absent").
0.2857143::pain_ruq("present"); 0.7142857::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("present").
0.421875::pain_ruq("present"); 0.578125::pain_ruq("absent") :- steatosis("absent"), hyperbilirubinemia("absent").
0.2704918::eSR("a200_50"); 0.1721312::eSR("a49_15"); 0.557377::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
0.2972973::eSR("a200_50"); 0.1837838::eSR("a49_15"); 0.5189189::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
0.2941177::eSR("a200_50"); 0.1911765::eSR("a49_15"); 0.5147058::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
0.3205575::eSR("a200_50"); 0.2055749::eSR("a49_15"); 0.4738676::eSR("a14_0") :- pBC("present"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
0.3093923::eSR("a200_50"); 0.1767956::eSR("a49_15"); 0.5138121::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
0.3315508::eSR("a200_50"); 0.171123::eSR("a49_15"); 0.4973262::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
0.3333333::eSR("a200_50"); 0.172043::eSR("a49_15"); 0.4946237::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
0.368::eSR("a200_50"); 0.184::eSR("a49_15"); 0.448::eSR("a14_0") :- pBC("present"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
0.3425926::eSR("a200_50"); 0.1712963::eSR("a49_15"); 0.4861111::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
0.3629893::eSR("a200_50"); 0.1779359::eSR("a49_15"); 0.4590747::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
0.3636364::eSR("a200_50"); 0.1818182::eSR("a49_15"); 0.4545455::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
0.4321429::eSR("a200_50"); 0.2107143::eSR("a49_15"); 0.3571429::eSR("a14_0") :- pBC("present"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
0.2682927::eSR("a200_50"); 0.1768293::eSR("a49_15"); 0.554878::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("present").
0.175::eSR("a200_50"); 0.1625::eSR("a49_15"); 0.6625::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("present"), hyperbilirubinemia("absent").
0.1045752::eSR("a200_50"); 0.1633987::eSR("a49_15"); 0.7320261::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("present").
0.03296703::eSR("a200_50"); 0.21978022::eSR("a49_15"); 0.74725275::eSR("a14_0") :- pBC("absent"), chHepatitis("active"), steatosis("absent"), hyperbilirubinemia("absent").
0.06024096::eSR("a200_50"); 0.12048193::eSR("a49_15"); 0.81927711::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("present").
0.08602151::eSR("a200_50"); 0.08602151::eSR("a49_15"); 0.82795698::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("present"), hyperbilirubinemia("absent").
0.05434783::eSR("a200_50"); 0.07608696::eSR("a49_15"); 0.86956521::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("present").
0.05555556::eSR("a200_50"); 0.05555556::eSR("a49_15"); 0.88888888::eSR("a14_0") :- pBC("absent"), chHepatitis("persistent"), steatosis("absent"), hyperbilirubinemia("absent").
0.07594937::eSR("a200_50"); 0.06329114::eSR("a49_15"); 0.86075949::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("present").
0.13432836::eSR("a200_50"); 0.05970149::eSR("a49_15"); 0.80597015::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("present"), hyperbilirubinemia("absent").
0.01785714::eSR("a200_50"); 0.07142857::eSR("a49_15"); 0.91071429::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("present").
0.04733728::eSR("a200_50"); 0.05325444::eSR("a49_15"); 0.89940828::eSR("a14_0") :- pBC("absent"), chHepatitis("absent"), steatosis("absent"), hyperbilirubinemia("absent").
0.6363636::fatigue("present"); 0.3636364::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("present").
0.625::fatigue("present"); 0.375::fatigue("absent") :- chHepatitis("active"), tHepatitis("present"), rHepatitis("absent").
0.6236559::fatigue("present"); 0.3763441::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("present").
0.6043956::fatigue("present"); 0.3956044::fatigue("absent") :- chHepatitis("active"), tHepatitis("absent"), rHepatitis("absent").
0.6071429::fatigue("present"); 0.3928571::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("present").
0.5932203::fatigue("present"); 0.4067797::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("present"), rHepatitis("absent").
0.5892857::fatigue("present"); 0.4107143::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("present").
0.5277778::fatigue("present"); 0.4722222::fatigue("absent") :- chHepatitis("persistent"), tHepatitis("absent"), rHepatitis("absent").
0.6153846::fatigue("present"); 0.3846154::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("present").
0.6666667::fatigue("present"); 0.3333333::fatigue("absent") :- chHepatitis("absent"), tHepatitis("present"), rHepatitis("absent").
0.7058823::fatigue("present"); 0.2941177::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("present").
0.5359849::fatigue("present"); 0.4640151::fatigue("absent") :- chHepatitis("absent"), tHepatitis("absent"), rHepatitis("absent").
0.3::fibrosis("present"); 0.7::fibrosis("absent") :- chHepatitis("active").
0.05::fibrosis("present"); 0.95::fibrosis("absent") :- chHepatitis("persistent").
0.001::fibrosis("present"); 0.999::fibrosis("absent") :- chHepatitis("absent").
0.3333333::pressure_ruq("present"); 0.6666667::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("active").
0.328125::pressure_ruq("present"); 0.671875::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("persistent").
0.3292683::pressure_ruq("present"); 0.6707317::pressure_ruq("absent") :- gallstones("present"), pBC("present"), chHepatitis("absent").
0.4::pressure_ruq("present"); 0.6::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("active").
0.09090909::pressure_ruq("present"); 0.90909091::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("persistent").
0.2857143::pressure_ruq("present"); 0.7142857::pressure_ruq("absent") :- gallstones("present"), pBC("absent"), chHepatitis("absent").
0.3424658::pressure_ruq("present"); 0.6575342::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("active").
0.3227513::pressure_ruq("present"); 0.6772487::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("persistent").
0.2929293::pressure_ruq("present"); 0.7070707::pressure_ruq("absent") :- gallstones("absent"), pBC("present"), chHepatitis("absent").
0.4691358::pressure_ruq("present"); 0.5308642::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("active").
0.4285714::pressure_ruq("present"); 0.5714286::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("persistent").
0.4532374::pressure_ruq("present"); 0.5467626::pressure_ruq("absent") :- gallstones("absent"), pBC("absent"), chHepatitis("absent").
0.1590909::ggtp("a640_70"); 0.1477273::ggtp("a69_30"); 0.1136364::ggtp("a29_10"); 0.5795454::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.1696429::ggtp("a640_70"); 0.1607143::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.5446428::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1546392::ggtp("a640_70"); 0.1443299::ggtp("a69_30"); 0.1134021::ggtp("a29_10"); 0.5876288::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1730769::ggtp("a640_70"); 0.1538462::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.5480769::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1666667::ggtp("a640_70"); 0.1481482::ggtp("a69_30"); 0.1111111::ggtp("a29_10"); 0.574074::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.1854839::ggtp("a640_70"); 0.1612903::ggtp("a69_30"); 0.1209677::ggtp("a29_10"); 0.5322581::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1694915::ggtp("a640_70"); 0.1610169::ggtp("a69_30"); 0.1186441::ggtp("a29_10"); 0.5508475::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.1832061::ggtp("a640_70"); 0.1755725::ggtp("a69_30"); 0.129771::ggtp("a29_10"); 0.5114504::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1759259::ggtp("a640_70"); 0.1574074::ggtp("a69_30"); 0.1111111::ggtp("a29_10"); 0.5555556::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1913044::ggtp("a640_70"); 0.173913::ggtp("a69_30"); 0.1217391::ggtp("a29_10"); 0.5130435::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1885246::ggtp("a640_70"); 0.1639344::ggtp("a69_30"); 0.1065574::ggtp("a29_10"); 0.5409836::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.2108843::ggtp("a640_70"); 0.1836735::ggtp("a69_30"); 0.1156463::ggtp("a29_10"); 0.4897959::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1666667::ggtp("a640_70"); 0.1590909::ggtp("a69_30"); 0.1212121::ggtp("a29_10"); 0.5530303::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.1768707::ggtp("a640_70"); 0.1632653::ggtp("a69_30"); 0.1292517::ggtp("a29_10"); 0.5306123::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1652893::ggtp("a640_70"); 0.1487603::ggtp("a69_30"); 0.1157025::ggtp("a29_10"); 0.5702479::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1742424::ggtp("a640_70"); 0.1590909::ggtp("a69_30"); 0.1287879::ggtp("a29_10"); 0.5378788::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1726619::ggtp("a640_70"); 0.1510791::ggtp("a69_30"); 0.1151079::ggtp("a29_10"); 0.5611511::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.1893491::ggtp("a640_70"); 0.1656805::ggtp("a69_30"); 0.1242604::ggtp("a29_10"); 0.52071::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1741935::ggtp("a640_70"); 0.1677419::ggtp("a69_30"); 0.1225806::ggtp("a29_10"); 0.535484::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.1857923::ggtp("a640_70"); 0.1857923::ggtp("a69_30"); 0.1311475::ggtp("a29_10"); 0.4972678::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1748252::ggtp("a640_70"); 0.1678322::ggtp("a69_30"); 0.1188811::ggtp("a29_10"); 0.5384615::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.19375::ggtp("a640_70"); 0.18125::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.5::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1918605::ggtp("a640_70"); 0.1744186::ggtp("a69_30"); 0.1104651::ggtp("a29_10"); 0.5232558::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.2142857::ggtp("a640_70"); 0.1932773::ggtp("a69_30"); 0.1176471::ggtp("a29_10"); 0.4747899::ggtp("a9_0") :- pBC("present"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1756757::ggtp("a640_70"); 0.1621622::ggtp("a69_30"); 0.1216216::ggtp("a29_10"); 0.5405405::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.18::ggtp("a640_70"); 0.1666667::ggtp("a69_30"); 0.1333333::ggtp("a29_10"); 0.52::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1666667::ggtp("a640_70"); 0.15::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.5583333::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1782946::ggtp("a640_70"); 0.1627907::ggtp("a69_30"); 0.131783::ggtp("a29_10"); 0.5271317::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1764706::ggtp("a640_70"); 0.1544118::ggtp("a69_30"); 0.1176471::ggtp("a29_10"); 0.5514705::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.1939394::ggtp("a640_70"); 0.169697::ggtp("a69_30"); 0.1272727::ggtp("a29_10"); 0.5090909::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1776316::ggtp("a640_70"); 0.1710526::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.5263158::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.1899441::ggtp("a640_70"); 0.1899441::ggtp("a69_30"); 0.1340782::ggtp("a29_10"); 0.4860335::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1785714::ggtp("a640_70"); 0.1714286::ggtp("a69_30"); 0.1214286::ggtp("a29_10"); 0.5285714::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1987179::ggtp("a640_70"); 0.1858974::ggtp("a69_30"); 0.1282051::ggtp("a29_10"); 0.4871795::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1964286::ggtp("a640_70"); 0.1785714::ggtp("a69_30"); 0.1130952::ggtp("a29_10"); 0.5119048::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.2207792::ggtp("a640_70"); 0.1991342::ggtp("a69_30"); 0.1212121::ggtp("a29_10"); 0.4588745::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.178771::ggtp("a640_70"); 0.1731844::ggtp("a69_30"); 0.122905::ggtp("a29_10"); 0.5251396::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.1804878::ggtp("a640_70"); 0.1756098::ggtp("a69_30"); 0.1365854::ggtp("a29_10"); 0.507317::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1698113::ggtp("a640_70"); 0.1572327::ggtp("a69_30"); 0.1257862::ggtp("a29_10"); 0.5471698::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.1843575::ggtp("a640_70"); 0.1675978::ggtp("a69_30"); 0.1340782::ggtp("a29_10"); 0.5139665::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1822917::ggtp("a640_70"); 0.1614583::ggtp("a69_30"); 0.1197917::ggtp("a29_10"); 0.5364583::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.1977612::ggtp("a640_70"); 0.1791045::ggtp("a69_30"); 0.1268657::ggtp("a29_10"); 0.4962687::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1826087::ggtp("a640_70"); 0.1782609::ggtp("a69_30"); 0.126087::ggtp("a29_10"); 0.5130434::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.1939799::ggtp("a640_70"); 0.1939799::ggtp("a69_30"); 0.1371237::ggtp("a29_10"); 0.4749164::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.1846847::ggtp("a640_70"); 0.1846847::ggtp("a69_30"); 0.1261261::ggtp("a29_10"); 0.5045045::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.2007435::ggtp("a640_70"); 0.197026::ggtp("a69_30"); 0.133829::ggtp("a29_10"); 0.4684015::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.1986755::ggtp("a640_70"); 0.192053::ggtp("a69_30"); 0.1225166::ggtp("a29_10"); 0.486755::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.2392857::ggtp("a640_70"); 0.225::ggtp("a69_30"); 0.1321429::ggtp("a29_10"); 0.4035714::ggtp("a9_0") :- pBC("present"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.1509434::ggtp("a640_70"); 0.1415094::ggtp("a69_30"); 0.1226415::ggtp("a29_10"); 0.5849057::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.10526316::ggtp("a640_70"); 0.09210526::ggtp("a69_30"); 0.13157895::ggtp("a29_10"); 0.67105263::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.05555556::ggtp("a640_70"); 0.03703704::ggtp("a69_30"); 0.09259259::ggtp("a29_10"); 0.81481481::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.06122449::ggtp("a640_70"); 0.02040816::ggtp("a69_30"); 0.10204082::ggtp("a29_10"); 0.81632653::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.05649718::ggtp("a640_70"); 0.00188324::ggtp("a69_30"); 0.07532957::ggtp("a29_10"); 0.86629001::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.07393715::ggtp("a640_70"); 0.00184843::ggtp("a69_30"); 0.09242144::ggtp("a29_10"); 0.83179298::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.06557377::ggtp("a640_70"); 0.04918033::ggtp("a69_30"); 0.09836066::ggtp("a29_10"); 0.78688524::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.078125::ggtp("a640_70"); 0.078125::ggtp("a69_30"); 0.125::ggtp("a29_10"); 0.71875::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04166667::ggtp("a640_70"); 0.02083333::ggtp("a69_30"); 0.08333333::ggtp("a29_10"); 0.85416667::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.04761905::ggtp("a640_70"); 0.02380952::ggtp("a69_30"); 0.0952381::ggtp("a29_10"); 0.83333333::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.04338395::ggtp("a640_70"); 0.0021692::ggtp("a69_30"); 0.04338395::ggtp("a29_10"); 0.9110629::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.06651885::ggtp("a640_70"); 0.00221729::ggtp("a69_30"); 0.0443459::ggtp("a29_10"); 0.88691796::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.05714286::ggtp("a640_70"); 0.04285714::ggtp("a69_30"); 0.1::ggtp("a29_10"); 0.8::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.07142857::ggtp("a640_70"); 0.07142857::ggtp("a69_30"); 0.13095238::ggtp("a29_10"); 0.72619048::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04545455::ggtp("a640_70"); 0.03030303::ggtp("a69_30"); 0.10606061::ggtp("a29_10"); 0.81818181::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.04615385::ggtp("a640_70"); 0.03076923::ggtp("a69_30"); 0.12307692::ggtp("a29_10"); 0.8::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.04285714::ggtp("a640_70"); 0.01428571::ggtp("a69_30"); 0.08571429::ggtp("a29_10"); 0.85714286::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.0617284::ggtp("a640_70"); 0.01234568::ggtp("a69_30"); 0.09876543::ggtp("a29_10"); 0.82716049::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.06024096::ggtp("a640_70"); 0.04819277::ggtp("a69_30"); 0.09638554::ggtp("a29_10"); 0.79518073::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.07070707::ggtp("a640_70"); 0.08080808::ggtp("a69_30"); 0.12121212::ggtp("a29_10"); 0.72727273::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04166667::ggtp("a640_70"); 0.04166667::ggtp("a69_30"); 0.09722222::ggtp("a29_10"); 0.81944444::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.03030303::ggtp("a640_70"); 0.03030303::ggtp("a69_30"); 0.10606061::ggtp("a29_10"); 0.83333333::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.02702703::ggtp("a640_70"); 0.01351351::ggtp("a69_30"); 0.05405405::ggtp("a29_10"); 0.90540541::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.07380074::ggtp("a640_70"); 0.00369004::ggtp("a69_30"); 0.03690037::ggtp("a29_10"); 0.88560885::ggtp("a9_0") :- pBC("absent"), tHepatitis("present"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.06349206::ggtp("a640_70"); 0.04761905::ggtp("a69_30"); 0.11111111::ggtp("a29_10"); 0.77777778::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.07594937::ggtp("a640_70"); 0.07594937::ggtp("a69_30"); 0.13924051::ggtp("a29_10"); 0.70886075::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.0483871::ggtp("a640_70"); 0.03225806::ggtp("a69_30"); 0.11290323::ggtp("a29_10"); 0.80645161::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.05::ggtp("a640_70"); 0.03333333::ggtp("a69_30"); 0.13333333::ggtp("a29_10"); 0.78333334::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.04615385::ggtp("a640_70"); 0.01538462::ggtp("a69_30"); 0.09230769::ggtp("a29_10"); 0.84615384::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.06756757::ggtp("a640_70"); 0.01351351::ggtp("a69_30"); 0.10810811::ggtp("a29_10"); 0.81081081::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.06410256::ggtp("a640_70"); 0.05128205::ggtp("a69_30"); 0.1025641::ggtp("a29_10"); 0.78205129::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.07692308::ggtp("a640_70"); 0.08791209::ggtp("a69_30"); 0.13186813::ggtp("a29_10"); 0.7032967::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04545455::ggtp("a640_70"); 0.04545455::ggtp("a69_30"); 0.10606061::ggtp("a29_10"); 0.80303029::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.03448276::ggtp("a640_70"); 0.03448276::ggtp("a69_30"); 0.12068966::ggtp("a29_10"); 0.81034482::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.03076923::ggtp("a640_70"); 0.01538462::ggtp("a69_30"); 0.06153846::ggtp("a29_10"); 0.89230769::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.11695906::ggtp("a640_70"); 0.00584795::ggtp("a69_30"); 0.05847953::ggtp("a29_10"); 0.81871346::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("present"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.06493506::ggtp("a640_70"); 0.06493506::ggtp("a69_30"); 0.11688312::ggtp("a29_10"); 0.75324676::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("present").
0.07692308::ggtp("a640_70"); 0.08547009::ggtp("a69_30"); 0.14529915::ggtp("a29_10"); 0.69230768::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04444444::ggtp("a640_70"); 0.04444444::ggtp("a69_30"); 0.12222222::ggtp("a29_10"); 0.7888889::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.04210526::ggtp("a640_70"); 0.04210526::ggtp("a69_30"); 0.13684211::ggtp("a29_10"); 0.77894737::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.03703704::ggtp("a640_70"); 0.02777778::ggtp("a69_30"); 0.10185185::ggtp("a29_10"); 0.83333333::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("present").
0.07462687::ggtp("a640_70"); 0.02985075::ggtp("a69_30"); 0.13432836::ggtp("a29_10"); 0.76119402::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("present"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.05660377::ggtp("a640_70"); 0.06603774::ggtp("a69_30"); 0.12264151::ggtp("a29_10"); 0.75471698::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("present").
0.08791209::ggtp("a640_70"); 0.14285714::ggtp("a69_30"); 0.17582418::ggtp("a29_10"); 0.59340659::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("active"), hyperbilirubinemia("absent").
0.04395604::ggtp("a640_70"); 0.07692308::ggtp("a69_30"); 0.13186813::ggtp("a29_10"); 0.74725275::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("present").
0.00277008::ggtp("a640_70"); 0.05540166::ggtp("a69_30"); 0.19390582::ggtp("a29_10"); 0.74792244::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("persistent"), hyperbilirubinemia("absent").
0.00177936::ggtp("a640_70"); 0.00177936::ggtp("a69_30"); 0.01779359::ggtp("a29_10"); 0.97864769::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("present").
0.08::ggtp("a640_70"); 0.096::ggtp("a69_30"); 0.144::ggtp("a29_10"); 0.68::ggtp("a9_0") :- pBC("absent"), tHepatitis("absent"), rHepatitis("absent"), steatosis("absent"), chHepatitis("absent"), hyperbilirubinemia("absent").
0.00355872::hbeag("present"); 0.99644128::hbeag("absent") :- vh_amn("present"), chHepatitis("active").
0.00763359::hbeag("present"); 0.99236641::hbeag("absent") :- vh_amn("present"), chHepatitis("persistent").
0.00124844::hbeag("present"); 0.99875156::hbeag("absent") :- vh_amn("present"), chHepatitis("absent").
0.00158479::hbeag("present"); 0.99841521::hbeag("absent") :- vh_amn("absent"), chHepatitis("active").
0.04347826::hbeag("present"); 0.95652174::hbeag("absent") :- vh_amn("absent"), chHepatitis("persistent").
0.00203252::hbeag("present"); 0.99796748::hbeag("absent") :- vh_amn("absent"), chHepatitis("absent").
0.00355872::hbc_anti("present"); 0.99644128::hbc_anti("absent") :- vh_amn("present"), chHepatitis("active").
0.00763359::hbc_anti("present"); 0.99236641::hbc_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
0.0875::hbc_anti("present"); 0.9125::hbc_anti("absent") :- vh_amn("present"), chHepatitis("absent").
0.07936508::hbc_anti("present"); 0.92063492::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("active").
0.1304348::hbc_anti("present"); 0.8695652::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
0.101626::hbc_anti("present"); 0.898374::hbc_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
0.00355872::hcv_anti("present"); 0.99644128::hcv_anti("absent") :- vh_amn("present"), chHepatitis("active").
0.00763359::hcv_anti("present"); 0.99236641::hcv_anti("absent") :- vh_amn("present"), chHepatitis("persistent").
0.00124844::hcv_anti("present"); 0.99875156::hcv_anti("absent") :- vh_amn("present"), chHepatitis("absent").
0.00158479::hcv_anti("present"); 0.99841521::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("active").
0.004329::hcv_anti("present"); 0.995671::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("persistent").
0.00203252::hcv_anti("present"); 0.99796748::hcv_anti("absent") :- vh_amn("absent"), chHepatitis("absent").
0.3142251::hepatalgia("present"); 0.6857749::hepatalgia("absent") :- hepatomegaly("present").
0.03070175::hepatalgia("present"); 0.96929825::hepatalgia("absent") :- hepatomegaly("absent").
0.5::hbsag("present"); 0.5::hbsag("absent") :- vh_amn("present"), chHepatitis("active").
0.4615385::hbsag("present"); 0.5384615::hbsag("absent") :- vh_amn("present"), chHepatitis("persistent").
0.1125::hbsag("present"); 0.8875::hbsag("absent") :- vh_amn("present"), chHepatitis("absent").
0.1904762::hbsag("present"); 0.8095238::hbsag("absent") :- vh_amn("absent"), chHepatitis("active").
0.04347826::hbsag("present"); 0.95652174::hbsag("absent") :- vh_amn("absent"), chHepatitis("persistent").
0.04674797::hbsag("present"); 0.95325203::hbsag("absent") :- vh_amn("absent"), chHepatitis("absent").
0.08965517::cholesterol("a999_350"); 0.28275862::cholesterol("a349_240"); 0.62758621::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("active").
0.09659091::cholesterol("a999_350"); 0.30113636::cholesterol("a349_240"); 0.60227273::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("persistent").
0.1034483::cholesterol("a999_350"); 0.3256705::cholesterol("a349_240"); 0.5708812::cholesterol("a239_0") :- pBC("present"), steatosis("present"), chHepatitis("absent").
0.1015873::cholesterol("a999_350"); 0.3047619::cholesterol("a349_240"); 0.5936508::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("active").
0.1050955::cholesterol("a999_350"); 0.3152866::cholesterol("a349_240"); 0.5796179::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("persistent").
0.125::cholesterol("a999_350"); 0.3642857::cholesterol("a349_240"); 0.5107143::cholesterol("a239_0") :- pBC("present"), steatosis("absent"), chHepatitis("absent").
0.09174312::cholesterol("a999_350"); 0.27981651::cholesterol("a349_240"); 0.62844037::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("active").
0.06918239::cholesterol("a999_350"); 0.23899371::cholesterol("a349_240"); 0.6918239::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("persistent").
0.04477612::cholesterol("a999_350"); 0.2238806::cholesterol("a349_240"); 0.73134328::cholesterol("a239_0") :- pBC("absent"), steatosis("present"), chHepatitis("absent").
0.03296703::cholesterol("a999_350"); 0.06593407::cholesterol("a349_240"); 0.9010989::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("active").
0.00277008::cholesterol("a999_350"); 0.02770083::cholesterol("a349_240"); 0.96952909::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("persistent").
0.00044425::cholesterol("a999_350"); 0.09773434::cholesterol("a349_240"); 0.90182141::cholesterol("a239_0") :- pBC("absent"), steatosis("absent"), chHepatitis("absent").
0.56::cirrhosis("decompensate"); 0.24::cirrhosis("compensate"); 0.2::cirrhosis("absent") :- fibrosis("present"), steatosis("present").
0.49::cirrhosis("decompensate"); 0.21::cirrhosis("compensate"); 0.3::cirrhosis("absent") :- fibrosis("present"), steatosis("absent").
0.35::cirrhosis("decompensate"); 0.15::cirrhosis("compensate"); 0.5::cirrhosis("absent") :- fibrosis("absent"), steatosis("present").
0.001::cirrhosis("decompensate"); 0.001::cirrhosis("compensate"); 0.998::cirrhosis("absent") :- fibrosis("absent"), steatosis("absent").
0.0070922::hbsag_anti("present"); 0.9929078::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("present").
0.07142857::hbsag_anti("present"); 0.92857143::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("active"), hbsag("absent").
0.01639344::hbsag_anti("present"); 0.98360656::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("present").
0.01408451::hbsag_anti("present"); 0.98591549::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("persistent"), hbsag("absent").
0.01098901::hbsag_anti("present"); 0.98901099::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("present").
0.04225352::hbsag_anti("present"); 0.95774648::hbsag_anti("absent") :- vh_amn("present"), chHepatitis("absent"), hbsag("absent").
0.08333333::hbsag_anti("present"); 0.91666667::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("present").
0.00195695::hbsag_anti("present"); 0.99804305::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("active"), hbsag("absent").
0.09090909::hbsag_anti("present"); 0.90909091::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("present").
0.00452489::hbsag_anti("present"); 0.99547511::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("persistent"), hbsag("absent").
0.004329::hbsag_anti("present"); 0.995671::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("present").
0.01492537::hbsag_anti("present"); 0.98507463::hbsag_anti("absent") :- vh_amn("absent"), chHepatitis("absent"), hbsag("absent").
0.05882353::alt("a850_200"); 0.15686275::alt("a199_100"); 0.41176471::alt("a99_35"); 0.37254902::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.05454545::alt("a850_200"); 0.16363636::alt("a199_100"); 0.41818182::alt("a99_35"); 0.36363636::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.04761905::alt("a850_200"); 0.15873016::alt("a199_100"); 0.41269841::alt("a99_35"); 0.38095238::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.06451613::alt("a850_200"); 0.17741935::alt("a199_100"); 0.41935484::alt("a99_35"); 0.33870968::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.07017544::alt("a850_200"); 0.19298246::alt("a199_100"); 0.42105263::alt("a99_35"); 0.31578947::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.07936508::alt("a850_200"); 0.19047619::alt("a199_100"); 0.41269841::alt("a99_35"); 0.31746032::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.06849315::alt("a850_200"); 0.16438356::alt("a199_100"); 0.42465753::alt("a99_35"); 0.34246575::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.05882353::alt("a850_200"); 0.17647059::alt("a199_100"); 0.42647059::alt("a99_35"); 0.33823529::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.0625::alt("a850_200"); 0.175::alt("a199_100"); 0.4125::alt("a99_35"); 0.35::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.075::alt("a850_200"); 0.1875::alt("a199_100"); 0.425::alt("a99_35"); 0.3125::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.08333333::alt("a850_200"); 0.20833333::alt("a199_100"); 0.43055556::alt("a99_35"); 0.27777778::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.08988764::alt("a850_200"); 0.2247191::alt("a199_100"); 0.41573034::alt("a99_35"); 0.26966292::alt("a34_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.0617284::alt("a850_200"); 0.1728395::alt("a199_100"); 0.4197531::alt("a99_35"); 0.345679::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.05479452::alt("a850_200"); 0.16438356::alt("a199_100"); 0.42465753::alt("a99_35"); 0.35616438::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.05882353::alt("a850_200"); 0.15294118::alt("a199_100"); 0.41176471::alt("a99_35"); 0.37647059::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.06976744::alt("a850_200"); 0.1627907::alt("a199_100"); 0.41860465::alt("a99_35"); 0.34883721::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.07792208::alt("a850_200"); 0.18181818::alt("a199_100"); 0.41558442::alt("a99_35"); 0.32467532::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.08333333::alt("a850_200"); 0.1875::alt("a199_100"); 0.40625::alt("a99_35"); 0.32291667::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.06862745::alt("a850_200"); 0.16666667::alt("a199_100"); 0.42156863::alt("a99_35"); 0.34313725::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.0625::alt("a850_200"); 0.1666667::alt("a199_100"); 0.4270833::alt("a99_35"); 0.34375::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.064::alt("a850_200"); 0.168::alt("a199_100"); 0.416::alt("a99_35"); 0.352::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.08148148::alt("a850_200"); 0.17777778::alt("a199_100"); 0.42222222::alt("a99_35"); 0.31851852::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.08661417::alt("a850_200"); 0.19685039::alt("a199_100"); 0.42519685::alt("a99_35"); 0.29133858::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.1208791::alt("a850_200"); 0.2307692::alt("a199_100"); 0.3956044::alt("a99_35"); 0.2527472::alt("a34_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.05172414::alt("a850_200"); 0.15517241::alt("a199_100"); 0.39655172::alt("a99_35"); 0.39655172::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.02173913::alt("a850_200"); 0.13043478::alt("a199_100"); 0.41304348::alt("a99_35"); 0.43478261::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.0021692::alt("a850_200"); 0.1084599::alt("a199_100"); 0.3904555::alt("a99_35"); 0.4989154::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.02272727::alt("a850_200"); 0.11363636::alt("a199_100"); 0.40909091::alt("a99_35"); 0.45454545::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00269542::alt("a850_200"); 0.13477089::alt("a199_100"); 0.40431267::alt("a99_35"); 0.45822102::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00262467::alt("a850_200"); 0.1312336::alt("a199_100"); 0.36745407::alt("a99_35"); 0.49868766::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.01923077::alt("a850_200"); 0.11538462::alt("a199_100"); 0.40384615::alt("a99_35"); 0.46153846::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.002079::alt("a850_200"); 0.1247401::alt("a199_100"); 0.4158004::alt("a99_35"); 0.4573805::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00181488::alt("a850_200"); 0.12704174::alt("a199_100"); 0.39927405::alt("a99_35"); 0.47186933::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.01886792::alt("a850_200"); 0.13207547::alt("a199_100"); 0.41509434::alt("a99_35"); 0.43396226::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.02272727::alt("a850_200"); 0.15909091::alt("a199_100"); 0.40909091::alt("a99_35"); 0.40909091::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.02083333::alt("a850_200"); 0.16666667::alt("a199_100"); 0.375::alt("a99_35"); 0.4375::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.01724138::alt("a850_200"); 0.12068966::alt("a199_100"); 0.39655172::alt("a99_35"); 0.46551724::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00191939::alt("a850_200"); 0.11516315::alt("a199_100"); 0.40307102::alt("a99_35"); 0.47984645::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00166389::alt("a850_200"); 0.09983361::alt("a199_100"); 0.38269551::alt("a99_35"); 0.51580699::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.01724138::alt("a850_200"); 0.10344828::alt("a199_100"); 0.39655172::alt("a99_35"); 0.48275862::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.02040816::alt("a850_200"); 0.12244898::alt("a199_100"); 0.3877551::alt("a99_35"); 0.46938776::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.01818182::alt("a850_200"); 0.10909091::alt("a199_100"); 0.34545455::alt("a99_35"); 0.52727272::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.02777778::alt("a850_200"); 0.11111111::alt("a199_100"); 0.38888889::alt("a99_35"); 0.47222222::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.01492537::alt("a850_200"); 0.11940299::alt("a199_100"); 0.40298507::alt("a99_35"); 0.46268657::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.01190476::alt("a850_200"); 0.10714286::alt("a199_100"); 0.38095238::alt("a99_35"); 0.5::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.03409091::alt("a850_200"); 0.11363636::alt("a199_100"); 0.38636364::alt("a99_35"); 0.46590909::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.02631579::alt("a850_200"); 0.13157895::alt("a199_100"); 0.39473684::alt("a99_35"); 0.44736842::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.02777778::alt("a850_200"); 0.13888889::alt("a199_100"); 0.27777778::alt("a99_35"); 0.55555555::alt("a34_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.02::alt("a850_200"); 0.12::alt("a199_100"); 0.4::alt("a99_35"); 0.46::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00212314::alt("a850_200"); 0.12738854::alt("a199_100"); 0.42462845::alt("a99_35"); 0.44585987::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00191939::alt("a850_200"); 0.11516315::alt("a199_100"); 0.42226488::alt("a99_35"); 0.46065259::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.02::alt("a850_200"); 0.12::alt("a199_100"); 0.44::alt("a99_35"); 0.42::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00249377::alt("a850_200"); 0.14962594::alt("a199_100"); 0.44887781::alt("a99_35"); 0.39900249::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.0023753::alt("a850_200"); 0.1425178::alt("a199_100"); 0.4275534::alt("a99_35"); 0.4275534::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.01666667::alt("a850_200"); 0.11666667::alt("a199_100"); 0.45::alt("a99_35"); 0.41666667::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.00178253::alt("a850_200"); 0.12477718::alt("a199_100"); 0.46345811::alt("a99_35"); 0.40998217::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00144718::alt("a850_200"); 0.11577424::alt("a199_100"); 0.44862518::alt("a99_35"); 0.4341534::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.02816901::alt("a850_200"); 0.12676056::alt("a199_100"); 0.46478873::alt("a99_35"); 0.38028169::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.01724138::alt("a850_200"); 0.15517241::alt("a199_100"); 0.48275862::alt("a99_35"); 0.34482759::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.00584795::alt("a850_200"); 0.23391813::alt("a199_100"); 0.46783626::alt("a99_35"); 0.29239766::alt("a34_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.01818182::alt("a850_200"); 0.10909091::alt("a199_100"); 0.43636364::alt("a99_35"); 0.43636364::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00172117::alt("a850_200"); 0.10327022::alt("a199_100"); 0.4475043::alt("a99_35"); 0.4475043::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00131406::alt("a850_200"); 0.09198423::alt("a199_100"); 0.42049934::alt("a99_35"); 0.48620237::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.025::alt("a850_200"); 0.1::alt("a199_100"); 0.425::alt("a99_35"); 0.45::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.01470588::alt("a850_200"); 0.11764706::alt("a199_100"); 0.44117647::alt("a99_35"); 0.42647059::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00369004::alt("a850_200"); 0.07380074::alt("a199_100"); 0.36900369::alt("a99_35"); 0.55350553::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.02666667::alt("a850_200"); 0.09333333::alt("a199_100"); 0.42666667::alt("a99_35"); 0.45333333::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.01176471::alt("a850_200"); 0.10588235::alt("a199_100"); 0.44705882::alt("a99_35"); 0.43529412::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00149031::alt("a850_200"); 0.08941878::alt("a199_100"); 0.41728763::alt("a99_35"); 0.49180328::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.06896552::alt("a850_200"); 0.12068966::alt("a199_100"); 0.46551724::alt("a99_35"); 0.34482759::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.03225806::alt("a850_200"); 0.19354839::alt("a199_100"); 0.51612903::alt("a99_35"); 0.25806452::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.04569892::alt("a850_200"); 0.17473118::alt("a199_100"); 0.42741935::alt("a99_35"); 0.35215054::alt("a34_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.3235294::spleen("present"); 0.6764706::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("present").
0.3703704::spleen("present"); 0.6296296::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("present"), tHepatitis("absent").
0.3623188::spleen("present"); 0.6376812::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("present").
0.4827586::spleen("present"); 0.5172414::spleen("absent") :- cirrhosis("decompensate"), rHepatitis("absent"), tHepatitis("absent").
0.3023256::spleen("present"); 0.6976744::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("present").
0.2444444::spleen("present"); 0.7555556::spleen("absent") :- cirrhosis("compensate"), rHepatitis("present"), tHepatitis("absent").
0.2156863::spleen("present"); 0.7843137::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("present").
0.2580645::spleen("present"); 0.7419355::spleen("absent") :- cirrhosis("compensate"), rHepatitis("absent"), tHepatitis("absent").
0.1621622::spleen("present"); 0.8378378::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("present").
0.1176471::spleen("present"); 0.8823529::spleen("absent") :- cirrhosis("absent"), rHepatitis("present"), tHepatitis("absent").
0.1111111::spleen("present"); 0.8888889::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("present").
0.1007067::spleen("present"); 0.8992933::spleen("absent") :- cirrhosis("absent"), rHepatitis("absent"), tHepatitis("absent").
0.7586207::edge("present"); 0.2413793::edge("absent") :- cirrhosis("decompensate").
0.4516129::edge("present"); 0.5483871::edge("absent") :- cirrhosis("compensate").
0.2344262::edge("present"); 0.7655738::edge("absent") :- cirrhosis("absent").
0.6034483::irregular_liver("present"); 0.3965517::irregular_liver("absent") :- cirrhosis("decompensate").
0.3548387::irregular_liver("present"); 0.6451613::irregular_liver("absent") :- cirrhosis("compensate").
0.1065574::irregular_liver("present"); 0.8934426::irregular_liver("absent") :- cirrhosis("absent").
0.01754386::inr("a200_110"); 0.84210526::inr("a109_70"); 0.14035088::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.01298701::inr("a200_110"); 0.81818182::inr("a109_70"); 0.16883117::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.02150538::inr("a200_110"); 0.8172043::inr("a109_70"); 0.16129032::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.01666667::inr("a200_110"); 0.8::inr("a109_70"); 0.18333333::inr("a69_0") :- chHepatitis("active"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.025::inr("a200_110"); 0.85::inr("a109_70"); 0.125::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.01333333::inr("a200_110"); 0.86666667::inr("a109_70"); 0.12::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.02409639::inr("a200_110"); 0.86746988::inr("a109_70"); 0.10843373::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.01960784::inr("a200_110"); 0.85294118::inr("a109_70"); 0.12745098::inr("a69_0") :- chHepatitis("active"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.02197802::inr("a200_110"); 0.89010989::inr("a109_70"); 0.08791209::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
0.01923077::inr("a200_110"); 0.90384615::inr("a109_70"); 0.07692308::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
0.024::inr("a200_110"); 0.904::inr("a109_70"); 0.072::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
0.02197802::inr("a200_110"); 0.9010989::inr("a109_70"); 0.07692308::inr("a69_0") :- chHepatitis("active"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.03030303::inr("a200_110"); 0.84848485::inr("a109_70"); 0.12121212::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.03225806::inr("a200_110"); 0.79032259::inr("a109_70"); 0.17741935::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.02898551::inr("a200_110"); 0.79710145::inr("a109_70"); 0.17391304::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.02469136::inr("a200_110"); 0.75308642::inr("a109_70"); 0.22222222::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.03508772::inr("a200_110"); 0.8245614::inr("a109_70"); 0.14035088::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.04081633::inr("a200_110"); 0.83673469::inr("a109_70"); 0.12244898::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.03571429::inr("a200_110"); 0.85714285::inr("a109_70"); 0.10714286::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.03333333::inr("a200_110"); 0.83333334::inr("a109_70"); 0.13333333::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.05084746::inr("a200_110"); 0.88135593::inr("a109_70"); 0.06779661::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
0.05::inr("a200_110"); 0.9::inr("a109_70"); 0.05::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
0.05333333::inr("a200_110"); 0.90666667::inr("a109_70"); 0.04::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
0.08333333::inr("a200_110"); 0.88888889::inr("a109_70"); 0.02777778::inr("a69_0") :- chHepatitis("persistent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.03448276::inr("a200_110"); 0.81034483::inr("a109_70"); 0.15517241::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.01428571::inr("a200_110"); 0.75714286::inr("a109_70"); 0.22857143::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.02173913::inr("a200_110"); 0.75::inr("a109_70"); 0.22826087::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.00172117::inr("a200_110"); 0.60240964::inr("a109_70"); 0.39586919::inr("a69_0") :- chHepatitis("absent"), cirrhosis("decompensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.01785714::inr("a200_110"); 0.76785715::inr("a109_70"); 0.21428571::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("present").
0.01785714::inr("a200_110"); 0.78571429::inr("a109_70"); 0.19642857::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("present"), hyperbilirubinemia("absent").
0.02816901::inr("a200_110"); 0.80281691::inr("a109_70"); 0.16901408::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("present").
0.00321543::inr("a200_110"); 0.67524116::inr("a109_70"); 0.32154341::inr("a69_0") :- chHepatitis("absent"), cirrhosis("compensate"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.03508772::inr("a200_110"); 0.84210526::inr("a109_70"); 0.12280702::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("present").
0.03703704::inr("a200_110"); 0.92592592::inr("a109_70"); 0.03703704::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("present"), hyperbilirubinemia("absent").
0.05357143::inr("a200_110"); 0.89285714::inr("a109_70"); 0.05357143::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("present").
0.065::inr("a200_110"); 0.875::inr("a109_70"); 0.06::inr("a69_0") :- chHepatitis("absent"), cirrhosis("absent"), tHepatitis("absent"), hyperbilirubinemia("absent").
0.99827883::proteins("a10_6"); 0.00172117::proteins("a5_2") :- cirrhosis("decompensate").
0.99678457::proteins("a10_6"); 0.00321543::proteins("a5_2") :- cirrhosis("compensate").
0.98032787::proteins("a10_6"); 0.01967213::proteins("a5_2") :- cirrhosis("absent").
0.3636364::carcinoma("present"); 0.6363636::carcinoma("absent") :- cirrhosis("decompensate"), pBC("present").
0.3::carcinoma("present"); 0.7::carcinoma("absent") :- cirrhosis("decompensate"), pBC("absent").
0.2727273::carcinoma("present"); 0.7272727::carcinoma("absent") :- cirrhosis("compensate"), pBC("present").
0.2::carcinoma("present"); 0.8::carcinoma("absent") :- cirrhosis("compensate"), pBC("absent").
0.1::carcinoma("present"); 0.9::carcinoma("absent") :- cirrhosis("absent"), pBC("present").
0.01::carcinoma("present"); 0.99::carcinoma("absent") :- cirrhosis("absent"), pBC("absent").
0.01960784::ast("a700_400"); 0.1372549::ast("a399_150"); 0.47058824::ast("a149_40"); 0.37254902::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.01818182::ast("a700_400"); 0.12727273::ast("a399_150"); 0.49090909::ast("a149_40"); 0.36363636::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.01612903::ast("a700_400"); 0.14516129::ast("a399_150"); 0.46774194::ast("a149_40"); 0.37096774::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.01612903::ast("a700_400"); 0.16129032::ast("a399_150"); 0.48387097::ast("a149_40"); 0.33870968::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.01818182::ast("a700_400"); 0.16363636::ast("a399_150"); 0.50909091::ast("a149_40"); 0.30909091::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.03225806::ast("a700_400"); 0.17741935::ast("a399_150"); 0.48387097::ast("a149_40"); 0.30645161::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.02777778::ast("a700_400"); 0.15277778::ast("a399_150"); 0.48611111::ast("a149_40"); 0.33333333::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.02941176::ast("a700_400"); 0.14705882::ast("a399_150"); 0.50000001::ast("a149_40"); 0.32352941::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.02531646::ast("a700_400"); 0.15189873::ast("a399_150"); 0.48101266::ast("a149_40"); 0.34177215::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.025::ast("a700_400"); 0.175::ast("a399_150"); 0.5::ast("a149_40"); 0.3::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.02777778::ast("a700_400"); 0.18055556::ast("a399_150"); 0.52777777::ast("a149_40"); 0.26388889::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.03370787::ast("a700_400"); 0.20224719::ast("a399_150"); 0.50561797::ast("a149_40"); 0.25842697::ast("a39_0") :- chHepatitis("active"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.02469136::ast("a700_400"); 0.16049383::ast("a399_150"); 0.4691358::ast("a149_40"); 0.34567901::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.02739726::ast("a700_400"); 0.1369863::ast("a399_150"); 0.47945205::ast("a149_40"); 0.35616438::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.02380952::ast("a700_400"); 0.14285714::ast("a399_150"); 0.45238095::ast("a149_40"); 0.38095238::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.02352941::ast("a700_400"); 0.16470588::ast("a399_150"); 0.45882353::ast("a149_40"); 0.35294118::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.02597403::ast("a700_400"); 0.16883117::ast("a399_150"); 0.48051948::ast("a149_40"); 0.32467532::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.03125::ast("a700_400"); 0.1875::ast("a399_150"); 0.4583333::ast("a149_40"); 0.3229167::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.02912621::ast("a700_400"); 0.16504854::ast("a399_150"); 0.46601942::ast("a149_40"); 0.33980583::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.03125::ast("a700_400"); 0.15625::ast("a399_150"); 0.4791667::ast("a149_40"); 0.3333333::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.03174603::ast("a700_400"); 0.15873016::ast("a399_150"); 0.46031746::ast("a149_40"); 0.34920635::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.03676471::ast("a700_400"); 0.17647059::ast("a399_150"); 0.47058824::ast("a149_40"); 0.31617647::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.03937008::ast("a700_400"); 0.18110236::ast("a399_150"); 0.49606299::ast("a149_40"); 0.28346457::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.05494505::ast("a700_400"); 0.23076923::ast("a399_150"); 0.46153846::ast("a149_40"); 0.25274725::ast("a39_0") :- chHepatitis("active"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.01754386::ast("a700_400"); 0.14035088::ast("a399_150"); 0.45614035::ast("a149_40"); 0.38596491::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00221729::ast("a700_400"); 0.0886918::ast("a399_150"); 0.48780488::ast("a149_40"); 0.42128603::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00212314::ast("a700_400"); 0.08492569::ast("a399_150"); 0.44585987::ast("a149_40"); 0.4670913::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.00221729::ast("a700_400"); 0.11086475::ast("a399_150"); 0.46563193::ast("a149_40"); 0.42128603::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00269542::ast("a700_400"); 0.08086253::ast("a399_150"); 0.51212938::ast("a149_40"); 0.40431267::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00269542::ast("a700_400"); 0.08086253::ast("a399_150"); 0.45822102::ast("a149_40"); 0.45822102::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.00191939::ast("a700_400"); 0.09596929::ast("a399_150"); 0.46065259::ast("a149_40"); 0.44145873::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.00203666::ast("a700_400"); 0.0814664::ast("a399_150"); 0.48879837::ast("a149_40"); 0.42769857::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00181488::ast("a700_400"); 0.0907441::ast("a399_150"); 0.45372051::ast("a149_40"); 0.45372051::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.00184843::ast("a700_400"); 0.11090573::ast("a399_150"); 0.4805915::ast("a149_40"); 0.40665434::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.00226757::ast("a700_400"); 0.09070295::ast("a399_150"); 0.52154195::ast("a149_40"); 0.38548753::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.00212314::ast("a700_400"); 0.10615711::ast("a399_150"); 0.48832272::ast("a149_40"); 0.40339703::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.00172117::ast("a700_400"); 0.10327022::ast("a399_150"); 0.4475043::ast("a149_40"); 0.4475043::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00191939::ast("a700_400"); 0.07677543::ast("a399_150"); 0.46065259::ast("a149_40"); 0.46065259::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00166389::ast("a700_400"); 0.08319468::ast("a399_150"); 0.41597338::ast("a149_40"); 0.49916805::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.00172117::ast("a700_400"); 0.10327022::ast("a399_150"); 0.4302926::ast("a149_40"); 0.46471601::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00203666::ast("a700_400"); 0.0814664::ast("a399_150"); 0.46843177::ast("a149_40"); 0.44806517::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00181488::ast("a700_400"); 0.0907441::ast("a399_150"); 0.41742287::ast("a149_40"); 0.49001815::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.00142653::ast("a700_400"); 0.09985735::ast("a399_150"); 0.44222539::ast("a149_40"); 0.45649073::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.00149031::ast("a700_400"); 0.08941878::ast("a399_150"); 0.46199702::ast("a149_40"); 0.44709389::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00120337::ast("a700_400"); 0.08423586::ast("a399_150"); 0.433213::ast("a149_40"); 0.48134777::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.01136364::ast("a700_400"); 0.10227273::ast("a399_150"); 0.44318182::ast("a149_40"); 0.44318182::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.01315789::ast("a700_400"); 0.09210526::ast("a399_150"); 0.47368421::ast("a149_40"); 0.42105263::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.02777778::ast("a700_400"); 0.11111111::ast("a399_150"); 0.36111111::ast("a149_40"); 0.5::ast("a39_0") :- chHepatitis("persistent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.00199601::ast("a700_400"); 0.0998004::ast("a399_150"); 0.45908184::ast("a149_40"); 0.43912176::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00212314::ast("a700_400"); 0.08492569::ast("a399_150"); 0.48832272::ast("a149_40"); 0.42462845::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00191939::ast("a700_400"); 0.07677543::ast("a399_150"); 0.46065259::ast("a149_40"); 0.46065259::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.00199601::ast("a700_400"); 0.0998004::ast("a399_150"); 0.47904192::ast("a149_40"); 0.41916168::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00249377::ast("a700_400"); 0.07481297::ast("a399_150"); 0.54862842::ast("a149_40"); 0.37406484::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00243309::ast("a700_400"); 0.0729927::ast("a399_150"); 0.51094891::ast("a149_40"); 0.4136253::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.00166389::ast("a700_400"); 0.09983361::ast("a399_150"); 0.49916805::ast("a149_40"); 0.39933444::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.00175131::ast("a700_400"); 0.08756567::ast("a399_150"); 0.52539405::ast("a149_40"); 0.38528897::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00142653::ast("a700_400"); 0.08559201::ast("a399_150"); 0.49928673::ast("a149_40"); 0.41369472::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.00140647::ast("a700_400"); 0.11251758::ast("a399_150"); 0.52039381::ast("a149_40"); 0.36568214::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.00172117::ast("a700_400"); 0.10327022::ast("a399_150"); 0.58519794::ast("a149_40"); 0.30981067::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.00584795::ast("a700_400"); 0.11695906::ast("a399_150"); 0.64327486::ast("a149_40"); 0.23391813::ast("a39_0") :- chHepatitis("absent"), rHepatitis("present"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.00181488::ast("a700_400"); 0.0907441::ast("a399_150"); 0.47186933::ast("a149_40"); 0.43557169::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("decompensate").
0.00172117::ast("a700_400"); 0.06884682::ast("a399_150"); 0.48192771::ast("a149_40"); 0.4475043::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("compensate").
0.00133156::ast("a700_400"); 0.0665779::ast("a399_150"); 0.43941411::ast("a149_40"); 0.49267643::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("present"), cirrhosis("absent").
0.00126422::ast("a700_400"); 0.08849558::ast("a399_150"); 0.4551201::ast("a149_40"); 0.4551201::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("decompensate").
0.00149031::ast("a700_400"); 0.07451565::ast("a399_150"); 0.49180328::ast("a149_40"); 0.43219076::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("compensate").
0.00369004::ast("a700_400"); 0.07380074::ast("a399_150"); 0.36900369::ast("a149_40"); 0.55350553::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("present"), steatosis("absent"), cirrhosis("absent").
0.00133156::ast("a700_400"); 0.09320905::ast("a399_150"); 0.45272969::ast("a149_40"); 0.45272969::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("decompensate").
0.00116144::ast("a700_400"); 0.08130081::ast("a399_150"); 0.48780488::ast("a149_40"); 0.42973287::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("compensate").
0.00149031::ast("a700_400"); 0.07451565::ast("a399_150"); 0.43219076::ast("a149_40"); 0.49180328::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("present"), cirrhosis("absent").
0.01724138::ast("a700_400"); 0.13793103::ast("a399_150"); 0.5::ast("a149_40"); 0.34482759::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("decompensate").
0.03225806::ast("a700_400"); 0.06451613::ast("a399_150"); 0.67741936::ast("a149_40"); 0.22580645::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("compensate").
0.01075269::ast("a700_400"); 0.22580645::ast("a399_150"); 0.46774194::ast("a149_40"); 0.29569892::ast("a39_0") :- chHepatitis("absent"), rHepatitis("absent"), tHepatitis("absent"), steatosis("absent"), cirrhosis("absent").
0.04166667::phosphatase("a4000_700"); 0.29166667::phosphatase("a699_240"); 0.66666666::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
0.04347826::phosphatase("a4000_700"); 0.30434783::phosphatase("a699_240"); 0.65217391::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
0.04166667::phosphatase("a4000_700"); 0.33333333::phosphatase("a699_240"); 0.625::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
0.03773585::phosphatase("a4000_700"); 0.26415094::phosphatase("a699_240"); 0.69811321::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
0.025::phosphatase("a4000_700"); 0.25::phosphatase("a699_240"); 0.725::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
0.02702703::phosphatase("a4000_700"); 0.27027027::phosphatase("a699_240"); 0.7027027::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
0.03571429::phosphatase("a4000_700"); 0.21428571::phosphatase("a699_240"); 0.75::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
0.02272727::phosphatase("a4000_700"); 0.20454545::phosphatase("a699_240"); 0.77272728::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
0.02325581::phosphatase("a4000_700"); 0.18604651::phosphatase("a699_240"); 0.79069768::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
0.02898551::phosphatase("a4000_700"); 0.28985507::phosphatase("a699_240"); 0.68115942::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
0.03389831::phosphatase("a4000_700"); 0.3220339::phosphatase("a699_240"); 0.64406779::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
0.04545455::phosphatase("a4000_700"); 0.37878788::phosphatase("a699_240"); 0.57575757::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
0.02985075::phosphatase("a4000_700"); 0.29850746::phosphatase("a699_240"); 0.67164179::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
0.02040816::phosphatase("a4000_700"); 0.28571429::phosphatase("a699_240"); 0.69387755::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
0.02083333::phosphatase("a4000_700"); 0.3125::phosphatase("a699_240"); 0.66666667::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
0.02597403::phosphatase("a4000_700"); 0.24675325::phosphatase("a699_240"); 0.72727272::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
0.015625::phosphatase("a4000_700"); 0.234375::phosphatase("a699_240"); 0.75::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
0.00584795::phosphatase("a4000_700"); 0.23391813::phosphatase("a699_240"); 0.76023392::phosphatase("a239_0") :- rHepatitis("present"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
0.04761905::phosphatase("a4000_700"); 0.28571429::phosphatase("a699_240"); 0.66666666::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("active").
0.04918033::phosphatase("a4000_700"); 0.31147541::phosphatase("a699_240"); 0.63934426::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("persistent").
0.05555556::phosphatase("a4000_700"); 0.34722222::phosphatase("a699_240"); 0.59722222::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("decompensate"), chHepatitis("absent").
0.04166667::phosphatase("a4000_700"); 0.27777778::phosphatase("a699_240"); 0.68055555::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("active").
0.03703704::phosphatase("a4000_700"); 0.25925926::phosphatase("a699_240"); 0.7037037::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("persistent").
0.05357143::phosphatase("a4000_700"); 0.26785714::phosphatase("a699_240"); 0.67857143::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("compensate"), chHepatitis("absent").
0.04651163::phosphatase("a4000_700"); 0.22093023::phosphatase("a699_240"); 0.73255814::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("active").
0.04054054::phosphatase("a4000_700"); 0.2027027::phosphatase("a699_240"); 0.75675676::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("persistent").
0.07407407::phosphatase("a4000_700"); 0.14814815::phosphatase("a699_240"); 0.77777778::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("present"), cirrhosis("absent"), chHepatitis("absent").
0.04597701::phosphatase("a4000_700"); 0.29885057::phosphatase("a699_240"); 0.65517242::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("active").
0.04494382::phosphatase("a4000_700"); 0.33707865::phosphatase("a699_240"); 0.61797753::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("persistent").
0.06896552::phosphatase("a4000_700"); 0.48275862::phosphatase("a699_240"); 0.44827586::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("decompensate"), chHepatitis("absent").
0.04494382::phosphatase("a4000_700"); 0.33707865::phosphatase("a699_240"); 0.61797753::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("active").
0.03896104::phosphatase("a4000_700"); 0.31168831::phosphatase("a699_240"); 0.64935065::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("persistent").
0.06451613::phosphatase("a4000_700"); 0.38709677::phosphatase("a699_240"); 0.5483871::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("compensate"), chHepatitis("absent").
0.03296703::phosphatase("a4000_700"); 0.21978022::phosphatase("a699_240"); 0.74725275::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("active").
0.02777778::phosphatase("a4000_700"); 0.19444444::phosphatase("a699_240"); 0.77777778::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("persistent").
0.2118451::phosphatase("a4000_700"); 0.3394077::phosphatase("a699_240"); 0.4487472::phosphatase("a239_0") :- rHepatitis("absent"), tHepatitis("absent"), cirrhosis("absent"), chHepatitis("absent").
0.3448276::edema("present"); 0.6551724::edema("absent") :- cirrhosis("decompensate").
0.06451613::edema("present"); 0.93548387::edema("absent") :- cirrhosis("compensate").
0.1311475::edema("present"); 0.8688525::edema("absent") :- cirrhosis("absent").
0.06547619::platelet("a597_300"); 0.63690476::platelet("a299_150"); 0.17857143::platelet("a149_100"); 0.11904762::platelet("a99_0") :- cirrhosis("decompensate"), pBC("present").
0.06896552::platelet("a597_300"); 0.46551724::platelet("a299_150"); 0.27586207::platelet("a149_100"); 0.18965517::platelet("a99_0") :- cirrhosis("decompensate"), pBC("absent").
0.06557377::platelet("a597_300"); 0.63934426::platelet("a299_150"); 0.17486339::platelet("a149_100"); 0.12021858::platelet("a99_0") :- cirrhosis("compensate"), pBC("present").
0.06451613::platelet("a597_300"); 0.64516129::platelet("a299_150"); 0.16129032::platelet("a149_100"); 0.12903226::platelet("a99_0") :- cirrhosis("compensate"), pBC("absent").
0.06428571::platelet("a597_300"); 0.67142857::platelet("a299_150"); 0.15714286::platelet("a149_100"); 0.10714286::platelet("a99_0") :- cirrhosis("absent"), pBC("present").
0.09393939::platelet("a597_300"); 0.73636364::platelet("a299_150"); 0.13939394::platelet("a149_100"); 0.03030303::platelet("a99_0") :- cirrhosis("absent"), pBC("absent").
0.05325444::encephalopathy("present"); 0.94674556::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("present").
0.05172414::encephalopathy("present"); 0.94827586::encephalopathy("absent") :- cirrhosis("decompensate"), pBC("absent").
0.04891304::encephalopathy("present"); 0.95108696::encephalopathy("absent") :- cirrhosis("compensate"), pBC("present").
0.00321543::encephalopathy("present"); 0.99678457::encephalopathy("absent") :- cirrhosis("compensate"), pBC("absent").
0.05357143::encephalopathy("present"); 0.94642857::encephalopathy("absent") :- cirrhosis("absent"), pBC("present").
0.01515152::encephalopathy("present"); 0.98484848::encephalopathy("absent") :- cirrhosis("absent"), pBC("absent").
0.91222031::albumin("a70_50"); 0.08605852::albumin("a49_30"); 0.00172117::albumin("a29_0") :- cirrhosis("decompensate").
0.96463023::albumin("a70_50"); 0.00321543::albumin("a49_30"); 0.03215434::albumin("a29_0") :- cirrhosis("compensate").
0.7393443::albumin("a70_50"); 0.1426229::albumin("a49_30"); 0.1180328::albumin("a29_0") :- cirrhosis("absent").
0.6034483::spiders("present"); 0.3965517::spiders("absent") :- cirrhosis("decompensate").
0.483871::spiders("present"); 0.516129::spiders("absent") :- cirrhosis("compensate").
0.1836066::spiders("present"); 0.8163934::spiders("absent") :- cirrhosis("absent").
0.5::palms("present"); 0.5::palms("absent") :- cirrhosis("decompensate").
0.2903226::palms("present"); 0.7096774::palms("absent") :- cirrhosis("compensate").
0.1409836::palms("present"); 0.8590164::palms("absent") :- cirrhosis("absent").
0.2068966::alcohol("present"); 0.7931034::alcohol("absent") :- cirrhosis("decompensate").
0.2258064::alcohol("present"); 0.7741936::alcohol("absent") :- cirrhosis("compensate").
0.1114754::alcohol("present"); 0.8885246::alcohol("absent") :- cirrhosis("absent").
0.04347826::bilirubin("a88_20"); 0.2173913::bilirubin("a19_7"); 0.34782609::bilirubin("a6_2"); 0.39130435::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
0.07407407::bilirubin("a88_20"); 0.22222222::bilirubin("a19_7"); 0.33333333::bilirubin("a6_2"); 0.37037037::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
0.07894737::bilirubin("a88_20"); 0.23684211::bilirubin("a19_7"); 0.34210526::bilirubin("a6_2"); 0.34210526::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
0.01923077::bilirubin("a88_20"); 0.11538462::bilirubin("a19_7"); 0.36538462::bilirubin("a6_2"); 0.5::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
0.01818182::bilirubin("a88_20"); 0.11818182::bilirubin("a19_7"); 0.38181818::bilirubin("a6_2"); 0.48181818::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
0.02189781::bilirubin("a88_20"); 0.12408759::bilirubin("a19_7"); 0.41605839::bilirubin("a6_2"); 0.4379562::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
0.03571429::bilirubin("a88_20"); 0.16071429::bilirubin("a19_7"); 0.39285714::bilirubin("a6_2"); 0.41071429::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
0.05882353::bilirubin("a88_20"); 0.20588235::bilirubin("a19_7"); 0.38235294::bilirubin("a6_2"); 0.35294118::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
0.07692308::bilirubin("a88_20"); 0.23076923::bilirubin("a19_7"); 0.35897436::bilirubin("a6_2"); 0.33333333::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
0.02020202::bilirubin("a88_20"); 0.11111111::bilirubin("a19_7"); 0.34343434::bilirubin("a6_2"); 0.52525253::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
0.01941748::bilirubin("a88_20"); 0.10679612::bilirubin("a19_7"); 0.34951456::bilirubin("a6_2"); 0.52427184::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
0.02362205::bilirubin("a88_20"); 0.11811024::bilirubin("a19_7"); 0.37795276::bilirubin("a6_2"); 0.48031496::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
0.04225352::bilirubin("a88_20"); 0.15492958::bilirubin("a19_7"); 0.36619718::bilirubin("a6_2"); 0.43661972::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
0.06::bilirubin("a88_20"); 0.2::bilirubin("a19_7"); 0.36::bilirubin("a6_2"); 0.38::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
0.07575758::bilirubin("a88_20"); 0.22727273::bilirubin("a19_7"); 0.36363636::bilirubin("a6_2"); 0.33333333::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
0.03030303::bilirubin("a88_20"); 0.12121212::bilirubin("a19_7"); 0.35606061::bilirubin("a6_2"); 0.49242424::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
0.02158273::bilirubin("a88_20"); 0.11510791::bilirubin("a19_7"); 0.37410072::bilirubin("a6_2"); 0.48920863::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
0.02061856::bilirubin("a88_20"); 0.12371134::bilirubin("a19_7"); 0.40721649::bilirubin("a6_2"); 0.44845361::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
0.01449275::bilirubin("a88_20"); 0.11594203::bilirubin("a19_7"); 0.39130435::bilirubin("a6_2"); 0.47826087::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
0.00398406::bilirubin("a88_20"); 0.11952191::bilirubin("a19_7"); 0.35856574::bilirubin("a6_2"); 0.51792829::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
0.00662252::bilirubin("a88_20"); 0.13245033::bilirubin("a19_7"); 0.26490066::bilirubin("a6_2"); 0.59602649::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
0.00151286::bilirubin("a88_20"); 0.04538578::bilirubin("a19_7"); 0.34795764::bilirubin("a6_2"); 0.60514372::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
0.00144718::bilirubin("a88_20"); 0.04341534::bilirubin("a19_7"); 0.37626628::bilirubin("a6_2"); 0.5788712::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
0.00114811::bilirubin("a88_20"); 0.05740528::bilirubin("a19_7"); 0.44776119::bilirubin("a6_2"); 0.49368542::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
0.00311526::bilirubin("a88_20"); 0.03115265::bilirubin("a19_7"); 0.43613707::bilirubin("a6_2"); 0.52959502::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
0.00892857::bilirubin("a88_20"); 0.00892857::bilirubin("a19_7"); 0.44642857::bilirubin("a6_2"); 0.53571429::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
0.01388889::bilirubin("a88_20"); 0.01388889::bilirubin("a19_7"); 0.41666667::bilirubin("a6_2"); 0.55555555::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
0.00178253::bilirubin("a88_20"); 0.01782531::bilirubin("a19_7"); 0.28520499::bilirubin("a6_2"); 0.69518717::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
0.00174825::bilirubin("a88_20"); 0.00174825::bilirubin("a19_7"); 0.2972028::bilirubin("a6_2"); 0.6993007::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
0.00144509::bilirubin("a88_20"); 0.00144509::bilirubin("a19_7"); 0.36127168::bilirubin("a6_2"); 0.63583814::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
0.00255102::bilirubin("a88_20"); 0.00255102::bilirubin("a19_7"); 0.33163265::bilirubin("a6_2"); 0.66326531::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
0.0049505::bilirubin("a88_20"); 0.0049505::bilirubin("a19_7"); 0.2970297::bilirubin("a6_2"); 0.6930693::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
0.07692308::bilirubin("a88_20"); 0.07692308::bilirubin("a19_7"); 0.07692308::bilirubin("a6_2"); 0.76923076::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
0.00146843::bilirubin("a88_20"); 0.01468429::bilirubin("a19_7"); 0.30837004::bilirubin("a6_2"); 0.67547724::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
0.00127877::bilirubin("a88_20"); 0.00127877::bilirubin("a19_7"); 0.33248082::bilirubin("a6_2"); 0.66496164::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
0.00181159::bilirubin("a88_20"); 0.00181159::bilirubin("a19_7"); 0.54347827::bilirubin("a6_2"); 0.45289855::bilirubin("a1_0") :- hyperbilirubinemia("present"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
0.04081633::bilirubin("a88_20"); 0.14285714::bilirubin("a19_7"); 0.40816327::bilirubin("a6_2"); 0.40816327::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
0.06818182::bilirubin("a88_20"); 0.20454545::bilirubin("a19_7"); 0.36363636::bilirubin("a6_2"); 0.36363636::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
0.07692308::bilirubin("a88_20"); 0.23076923::bilirubin("a19_7"); 0.35384615::bilirubin("a6_2"); 0.33846154::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
0.03030303::bilirubin("a88_20"); 0.14393939::bilirubin("a19_7"); 0.34090909::bilirubin("a6_2"); 0.48484848::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
0.02173913::bilirubin("a88_20"); 0.13768116::bilirubin("a19_7"); 0.35507246::bilirubin("a6_2"); 0.48550725::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
0.02590674::bilirubin("a88_20"); 0.15025907::bilirubin("a19_7"); 0.38341969::bilirubin("a6_2"); 0.44041451::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
0.04255319::bilirubin("a88_20"); 0.17021277::bilirubin("a19_7"); 0.37234043::bilirubin("a6_2"); 0.41489362::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
0.05084746::bilirubin("a88_20"); 0.20338983::bilirubin("a19_7"); 0.37288136::bilirubin("a6_2"); 0.37288136::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
0.07042254::bilirubin("a88_20"); 0.22535211::bilirubin("a19_7"); 0.36619718::bilirubin("a6_2"); 0.33802817::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
0.032::bilirubin("a88_20"); 0.136::bilirubin("a19_7"); 0.312::bilirubin("a6_2"); 0.52::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
0.0234375::bilirubin("a88_20"); 0.1328125::bilirubin("a19_7"); 0.3125::bilirubin("a6_2"); 0.53125::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
0.02824859::bilirubin("a88_20"); 0.14124294::bilirubin("a19_7"); 0.33898305::bilirubin("a6_2"); 0.49152542::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
0.04477612::bilirubin("a88_20"); 0.1641791::bilirubin("a19_7"); 0.34328358::bilirubin("a6_2"); 0.44776119::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
0.05555556::bilirubin("a88_20"); 0.19444444::bilirubin("a19_7"); 0.35185185::bilirubin("a6_2"); 0.39814815::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
0.08536585::bilirubin("a88_20"); 0.24390244::bilirubin("a19_7"); 0.36585366::bilirubin("a6_2"); 0.30487805::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
0.03910615::bilirubin("a88_20"); 0.15083799::bilirubin("a19_7"); 0.32960894::bilirubin("a6_2"); 0.48044693::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
0.02926829::bilirubin("a88_20"); 0.14634146::bilirubin("a19_7"); 0.33658537::bilirubin("a6_2"); 0.48780488::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
0.03030303::bilirubin("a88_20"); 0.16666667::bilirubin("a19_7"); 0.38888889::bilirubin("a6_2"); 0.41414141::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("present"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
0.02830189::bilirubin("a88_20"); 0.16037736::bilirubin("a19_7"); 0.36792453::bilirubin("a6_2"); 0.44339623::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("active").
0.01818182::bilirubin("a88_20"); 0.16363636::bilirubin("a19_7"); 0.34545455::bilirubin("a6_2"); 0.47272727::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("persistent").
0.01923077::bilirubin("a88_20"); 0.19230769::bilirubin("a19_7"); 0.01923077::bilirubin("a6_2"); 0.76923077::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("present"), chHepatitis("absent").
0.01449275::bilirubin("a88_20"); 0.07246377::bilirubin("a19_7"); 0.24637681::bilirubin("a6_2"); 0.66666667::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("active").
0.01282051::bilirubin("a88_20"); 0.07692308::bilirubin("a19_7"); 0.26923077::bilirubin("a6_2"); 0.64102564::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("persistent").
0.01886792::bilirubin("a88_20"); 0.13207547::bilirubin("a19_7"); 0.43396226::bilirubin("a6_2"); 0.41509434::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("decompensate"), gallstones("absent"), chHepatitis("absent").
0.00321543::bilirubin("a88_20"); 0.09646302::bilirubin("a19_7"); 0.41800643::bilirubin("a6_2"); 0.48231511::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("active").
0.00621118::bilirubin("a88_20"); 0.0621118::bilirubin("a19_7"); 0.43478261::bilirubin("a6_2"); 0.49689441::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("persistent").
0.04545455::bilirubin("a88_20"); 0.04545455::bilirubin("a19_7"); 0.45454545::bilirubin("a6_2"); 0.45454545::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("present"), chHepatitis("absent").
0.01818182::bilirubin("a88_20"); 0.01818182::bilirubin("a19_7"); 0.14545455::bilirubin("a6_2"); 0.81818181::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("active").
0.01694915::bilirubin("a88_20"); 0.01694915::bilirubin("a19_7"); 0.10169492::bilirubin("a6_2"); 0.86440678::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("persistent").
0.03448276::bilirubin("a88_20"); 0.03448276::bilirubin("a19_7"); 0.10344828::bilirubin("a6_2"); 0.8275862::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("compensate"), gallstones("absent"), chHepatitis("absent").
0.00980392::bilirubin("a88_20"); 0.00980392::bilirubin("a19_7"); 0.19607843::bilirubin("a6_2"); 0.78431373::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("active").
0.07692308::bilirubin("a88_20"); 0.07692308::bilirubin("a19_7"); 0.07692308::bilirubin("a6_2"); 0.76923076::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("persistent").
0.01587302::bilirubin("a88_20"); 0.01587302::bilirubin("a19_7"); 0.01587302::bilirubin("a6_2"); 0.95238094::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("present"), chHepatitis("absent").
0.01234568::bilirubin("a88_20"); 0.02469136::bilirubin("a19_7"); 0.14814815::bilirubin("a6_2"); 0.81481481::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("active").
0.00284091::bilirubin("a88_20"); 0.00284091::bilirubin("a19_7"); 0.05681818::bilirubin("a6_2"); 0.9375::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("persistent").
0.00070872::bilirubin("a88_20"); 0.02126152::bilirubin("a19_7"); 0.13465627::bilirubin("a6_2"); 0.84337349::bilirubin("a1_0") :- hyperbilirubinemia("absent"), pBC("absent"), cirrhosis("absent"), gallstones("absent"), chHepatitis("absent").
0.3043478::consciousness("present"); 0.6956522::consciousness("absent") :- encephalopathy("present").
0.01627219::consciousness("present"); 0.98372781::consciousness("absent") :- encephalopathy("absent").
0.7391304::density("present"); 0.2608696::density("absent") :- encephalopathy("present").
0.3772189::density("present"); 0.6227811::density("absent") :- encephalopathy("absent").
0.2173913::urea("a165_50"); 0.1304348::urea("a49_40"); 0.6521739::urea("a39_0") :- encephalopathy("present").
0.03550296::urea("a165_50"); 0.06508876::urea("a49_40"); 0.89940828::urea("a39_0") :- encephalopathy("absent").
0.99378882::skin("present"); 0.00621118::skin("absent") :- bilirubin("a88_20").
0.8955224::skin("present"); 0.1044776::skin("absent") :- bilirubin("a19_7").
0.7035176::skin("present"); 0.2964824::skin("absent") :- bilirubin("a6_2").
0.1822542::skin("present"); 0.8177458::skin("absent") :- bilirubin("a1_0").
0.75::jaundice("present"); 0.25::jaundice("absent") :- bilirubin("a88_20").
0.5671642::jaundice("present"); 0.4328358::jaundice("absent") :- bilirubin("a19_7").
0.3467337::jaundice("present"); 0.6532663::jaundice("absent") :- bilirubin("a6_2").
0.1942446::jaundice("present"); 0.8057554::jaundice("absent") :- bilirubin("a1_0").
0.1280932::ascites("present"); 0.8719068::ascites("absent") :- proteins("a10_6").
0.5833333::ascites("present"); 0.4166667::ascites("absent") :- proteins("a5_2").
0.1428571::bleeding("present"); 0.8571429::bleeding("absent") :- platelet("a597_300"), inr("a200_110").
0.106383::bleeding("present"); 0.893617::bleeding("absent") :- platelet("a597_300"), inr("a109_70").
0.09090909::bleeding("present"); 0.90909091::bleeding("absent") :- platelet("a597_300"), inr("a69_0").
0.1304348::bleeding("present"); 0.8695652::bleeding("absent") :- platelet("a299_150"), inr("a200_110").
0.1373494::bleeding("present"); 0.8626506::bleeding("absent") :- platelet("a299_150"), inr("a109_70").
0.425::bleeding("present"); 0.575::bleeding("absent") :- platelet("a299_150"), inr("a69_0").
0.2::bleeding("present"); 0.8::bleeding("absent") :- platelet("a149_100"), inr("a200_110").
0.1333333::bleeding("present"); 0.8666667::bleeding("absent") :- platelet("a149_100"), inr("a109_70").
0.25::bleeding("present"); 0.75::bleeding("absent") :- platelet("a149_100"), inr("a69_0").
0.5::bleeding("present"); 0.5::bleeding("absent") :- platelet("a99_0"), inr("a200_110").
0.255814::bleeding("present"); 0.744186::bleeding("absent") :- platelet("a99_0"), inr("a109_70").
0.6666667::bleeding("present"); 0.3333333::bleeding("absent") :- platelet("a99_0"), inr("a69_0").
0.875::itching("present"); 0.125::itching("absent") :- bilirubin("a88_20").
0.6865672::itching("present"); 0.3134328::itching("absent") :- bilirubin("a19_7").
0.5477387::itching("present"); 0.4522613::itching("absent") :- bilirubin("a6_2").
0.3333333::itching("present"); 0.6666667::itching("absent") :- bilirubin("a1_0").
