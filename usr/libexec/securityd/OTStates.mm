@interface OTStates
+ (id)AllOctagonFlags;
+ (id)OctagonAllStates;
+ (id)OctagonHealthSourceStates;
+ (id)OctagonInAccountStates;
+ (id)OctagonNotInCliqueStates;
+ (id)OctagonReadyStates;
+ (id)OctagonStateInverseMap;
+ (id)OctagonStateMap;
+ (id)stateInit;
@end

@implementation OTStates

+ (id)AllOctagonFlags
{
  if (qword_10039E258 != -1)
  {
    dispatch_once(&qword_10039E258, &stru_100343830);
  }

  v3 = qword_10039E250;

  return v3;
}

+ (id)OctagonAllStates
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F0E8;
  block[3] = &unk_100346E68;
  block[4] = self;
  if (qword_10039E248 != -1)
  {
    dispatch_once(&qword_10039E248, block);
  }

  v2 = qword_10039E240;

  return v2;
}

+ (id)OctagonReadyStates
{
  if (qword_10039E238 != -1)
  {
    dispatch_once(&qword_10039E238, &stru_100343810);
  }

  v3 = qword_10039E230;

  return v3;
}

+ (id)OctagonNotInCliqueStates
{
  if (qword_10039E228 != -1)
  {
    dispatch_once(&qword_10039E228, &stru_1003437F0);
  }

  v3 = qword_10039E220;

  return v3;
}

+ (id)OctagonHealthSourceStates
{
  if (qword_10039E218 != -1)
  {
    dispatch_once(&qword_10039E218, &stru_1003437D0);
  }

  v3 = qword_10039E210;

  return v3;
}

+ (id)OctagonInAccountStates
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F4EC;
  block[3] = &unk_100346E68;
  block[4] = self;
  if (qword_10039E208 != -1)
  {
    dispatch_once(&qword_10039E208, block);
  }

  v2 = qword_10039E200;

  return v2;
}

+ (id)OctagonStateInverseMap
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019F6AC;
  v4[3] = &unk_100346988;
  v4[4] = self;
  v4[5] = a2;
  if (qword_10039E1F8 != -1)
  {
    dispatch_once(&qword_10039E1F8, v4);
  }

  v2 = qword_10039E1F0;

  return v2;
}

+ (id)OctagonStateMap
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019F964;
  v4[3] = &unk_100346988;
  v4[4] = self;
  v4[5] = a2;
  if (qword_10039E1E8 != -1)
  {
    dispatch_once(&qword_10039E1E8, v4);
  }

  v2 = qword_10039E1E0;

  return v2;
}

+ (id)stateInit
{
  v171[0] = @"Ready";
  v171[1] = &off_100364918;
  v87 = [NSArray arrayWithObjects:v171 count:2];
  v172[0] = v87;
  v170[0] = @"Error";
  v170[1] = &off_100364930;
  v86 = [NSArray arrayWithObjects:v170 count:2];
  v172[1] = v86;
  v169[0] = @"Initializing";
  v169[1] = &off_100364948;
  v85 = [NSArray arrayWithObjects:v169 count:2];
  v172[2] = v85;
  v168[0] = @"not_started";
  v168[1] = &off_100364960;
  v84 = [NSArray arrayWithObjects:v168 count:2];
  v172[3] = v84;
  v167[0] = @"Untrusted";
  v167[1] = &off_100364978;
  v83 = [NSArray arrayWithObjects:v167 count:2];
  v172[4] = v83;
  v166[0] = @"ReEnactDeviceList";
  v166[1] = &off_100364990;
  v82 = [NSArray arrayWithObjects:v166 count:2];
  v172[5] = v82;
  v165[0] = @"ReEnactPrepare";
  v165[1] = &off_1003649A8;
  v81 = [NSArray arrayWithObjects:v165 count:2];
  v172[6] = v81;
  v164[0] = @"ReEnactReadyToEstablish";
  v164[1] = &off_1003649C0;
  v80 = [NSArray arrayWithObjects:v164 count:2];
  v172[7] = v80;
  v163[0] = @"NoAccountDoReset";
  v163[1] = &off_1003649D8;
  v79 = [NSArray arrayWithObjects:v163 count:2];
  v172[8] = v79;
  v162[0] = @"BottleJoinVouchWithBottle";
  v162[1] = &off_1003649F0;
  v78 = [NSArray arrayWithObjects:v162 count:2];
  v172[9] = v78;
  v161[0] = @"BottleJoinCreateIdentity";
  v161[1] = &off_100364A08;
  v77 = [NSArray arrayWithObjects:v161 count:2];
  v172[10] = v77;
  v160[0] = @"CloudKitNewlyAvailable";
  v160[1] = &off_100364A20;
  v76 = [NSArray arrayWithObjects:v160 count:2];
  v172[11] = v76;
  v159[0] = @"CheckTrustState";
  v159[1] = &off_100364A38;
  v75 = [NSArray arrayWithObjects:v159 count:2];
  v172[12] = v75;
  v158[0] = @"BecomeUntrusted";
  v158[1] = &off_100364A50;
  v74 = [NSArray arrayWithObjects:v158 count:2];
  v172[13] = v74;
  v157[0] = @"WaitForUnlock";
  v157[1] = &off_100364A68;
  v73 = [NSArray arrayWithObjects:v157 count:2];
  v172[14] = v73;
  v156[0] = @"WaitingForCloudKitAccount";
  v156[1] = &off_100364A80;
  v72 = [NSArray arrayWithObjects:v156 count:2];
  v172[15] = v72;
  v155[0] = @"BecomeReady";
  v155[1] = &off_100364A98;
  v71 = [NSArray arrayWithObjects:v155 count:2];
  v172[16] = v71;
  v154[0] = @"VouchWithRecoveryKey";
  v154[1] = &off_100364AB0;
  v70 = [NSArray arrayWithObjects:v154 count:2];
  v172[17] = v70;
  v153[0] = @"CreateIdentityForRecoveryKey";
  v153[1] = &off_100364AC8;
  v69 = [NSArray arrayWithObjects:v153 count:2];
  v172[18] = v69;
  v152[0] = @"UpdateSOSPreapprovals";
  v152[1] = &off_100364AE0;
  v68 = [NSArray arrayWithObjects:v152 count:2];
  v172[19] = v68;
  v151[0] = @"WaitForCDPCapableSecurityLevel";
  v151[1] = &off_100364AF8;
  v67 = [NSArray arrayWithObjects:v151 count:2];
  v172[20] = v67;
  v150[0] = @"AssistCKKSTLKUpload";
  v150[1] = &off_100364B10;
  v66 = [NSArray arrayWithObjects:v150 count:2];
  v172[21] = v66;
  v149[0] = @"EscrowTriggerUpdate";
  v149[1] = &off_100364B28;
  v65 = [NSArray arrayWithObjects:v149 count:2];
  v172[22] = v65;
  v148[0] = @"EnsureConsistency";
  v148[1] = &off_100364B40;
  v64 = [NSArray arrayWithObjects:v148 count:2];
  v172[23] = v64;
  v147[0] = @"ResetBecomeUntrusted";
  v147[1] = &off_100364B58;
  v63 = [NSArray arrayWithObjects:v147 count:2];
  v172[24] = v63;
  v146[0] = @"UntrustedUpdated";
  v146[1] = &off_100364B70;
  v62 = [NSArray arrayWithObjects:v146 count:2];
  v172[25] = v62;
  v145[0] = @"ReadyUpdated";
  v145[1] = &off_100364B88;
  v61 = [NSArray arrayWithObjects:v145 count:2];
  v172[26] = v61;
  v144[0] = @"TPHTrustCheck";
  v144[1] = &off_100364BA0;
  v60 = [NSArray arrayWithObjects:v144 count:2];
  v172[27] = v60;
  v143[0] = @"CuttlefishTrustCheck";
  v143[1] = &off_100364BB8;
  v59 = [NSArray arrayWithObjects:v143 count:2];
  v172[28] = v59;
  v142[0] = @"PostRepairCFU";
  v142[1] = &off_100364BD0;
  v58 = [NSArray arrayWithObjects:v142 count:2];
  v172[29] = v58;
  v141[0] = @"SecurityTrustCheck";
  v141[1] = &off_100364BE8;
  v57 = [NSArray arrayWithObjects:v141 count:2];
  v172[30] = v57;
  v140[0] = @"EnsureUpdatePreapprovals";
  v140[1] = &off_100364C00;
  v56 = [NSArray arrayWithObjects:v140 count:2];
  v172[31] = v56;
  v139[0] = @"ResetAnyMissingTLKCKKSViews";
  v139[1] = &off_100364C18;
  v55 = [NSArray arrayWithObjects:v139 count:2];
  v172[32] = v55;
  v138[0] = @"EstablishCKKSReset";
  v138[1] = &off_100364C30;
  v54 = [NSArray arrayWithObjects:v138 count:2];
  v172[33] = v54;
  v137[0] = @"EstablishAfterCKKSReset";
  v137[1] = &off_100364C48;
  v53 = [NSArray arrayWithObjects:v137 count:2];
  v172[34] = v53;
  v136[0] = @"SOSUpgradeCKKSReset";
  v136[1] = &off_100364C60;
  v52 = [NSArray arrayWithObjects:v136 count:2];
  v172[35] = v52;
  v135[0] = @"SOSUpgradeAfterCKKSReset";
  v135[1] = &off_100364C78;
  v51 = [NSArray arrayWithObjects:v135 count:2];
  v172[36] = v51;
  v134[0] = @"InitiatorJoinCKKSReset";
  v134[1] = &off_100364C90;
  v50 = [NSArray arrayWithObjects:v134 count:2];
  v172[37] = v50;
  v133[0] = @"InitiatorJoinAfterCKKSReset";
  v133[1] = &off_100364CA8;
  v49 = [NSArray arrayWithObjects:v133 count:2];
  v172[38] = v49;
  v132[0] = @"HealthCheckReset";
  v132[1] = &off_100364CC0;
  v48 = [NSArray arrayWithObjects:v132 count:2];
  v172[39] = v48;
  v131[0] = @"AssistCKKSTLKUploadCKKSReset";
  v131[1] = &off_100364CD8;
  v47 = [NSArray arrayWithObjects:v131 count:2];
  v172[40] = v47;
  v130[0] = @"AssistCKKSTLKUploadAfterCKKSReset";
  v130[1] = &off_100364CF0;
  v46 = [NSArray arrayWithObjects:v130 count:2];
  v172[41] = v46;
  v129[0] = @"WaitForCDP";
  v129[1] = &off_100364D08;
  v45 = [NSArray arrayWithObjects:v129 count:2];
  v172[42] = v45;
  v128[0] = @"DetermineCDPState";
  v128[1] = &off_100364D20;
  v44 = [NSArray arrayWithObjects:v128 count:2];
  v172[43] = v44;
  v127[0] = @"WaitForCDPUpdated";
  v127[1] = &off_100364D38;
  v43 = [NSArray arrayWithObjects:v127 count:2];
  v172[44] = v43;
  v126[0] = @"EstablishEnableCDPBit";
  v126[1] = &off_100364D50;
  v42 = [NSArray arrayWithObjects:v126 count:2];
  v172[45] = v42;
  v125[0] = @"InitiatorSetCDPBit";
  v125[1] = &off_100364D68;
  v41 = [NSArray arrayWithObjects:v125 count:2];
  v172[46] = v41;
  v124[0] = @"CDPHealthCheck";
  v124[1] = &off_100364D80;
  v40 = [NSArray arrayWithObjects:v124 count:2];
  v172[47] = v40;
  v123[0] = @"HealthCheckLeaveClique";
  v123[1] = &off_100364D98;
  v39 = [NSArray arrayWithObjects:v123 count:2];
  v172[48] = v39;
  v122[0] = @"RefetchCKKSPolicy";
  v122[1] = &off_100364DB0;
  v38 = [NSArray arrayWithObjects:v122 count:2];
  v172[49] = v38;
  v121[0] = @"EnableUserControllableViews";
  v121[1] = &off_100364DC8;
  v37 = [NSArray arrayWithObjects:v121 count:2];
  v172[50] = v37;
  v120[0] = @"DisableUserControllableViews";
  v120[1] = &off_100364DE0;
  v36 = [NSArray arrayWithObjects:v120 count:2];
  v172[51] = v36;
  v119[0] = @"SetUserControllableViewsToPeerConsensus";
  v119[1] = &off_100364DF8;
  v35 = [NSArray arrayWithObjects:v119 count:2];
  v172[52] = v35;
  v118[0] = @"WaitForClassCUnlock";
  v118[1] = &off_100364E10;
  v34 = [NSArray arrayWithObjects:v118 count:2];
  v172[53] = v34;
  v117[0] = @"BottlePreloadOctagonKeysInSOS";
  v117[1] = &off_100364E28;
  v33 = [NSArray arrayWithObjects:v117 count:2];
  v172[54] = v33;
  v116[0] = @"AttemptSOSUpgradeDetermineCDPState";
  v116[1] = &off_100364E40;
  v32 = [NSArray arrayWithObjects:v116 count:2];
  v172[55] = v32;
  v115[0] = @"SetAccountSettings";
  v115[1] = &off_100364E58;
  v31 = [NSArray arrayWithObjects:v115 count:2];
  v172[56] = v31;
  v114[0] = @"CreateIdentityForCustodianRecoveryKey";
  v114[1] = &off_100364E70;
  v30 = [NSArray arrayWithObjects:v114 count:2];
  v172[57] = v30;
  v113[0] = @"VouchWithCustodianRecoveryKey";
  v113[1] = &off_100364E88;
  v29 = [NSArray arrayWithObjects:v113 count:2];
  v172[58] = v29;
  v112[0] = @"CheckForAccountFixups";
  v112[1] = &off_100364EA0;
  v28 = [NSArray arrayWithObjects:v112 count:2];
  v172[59] = v28;
  v111[0] = @"PerformAccountFixups";
  v111[1] = &off_100364EB8;
  v27 = [NSArray arrayWithObjects:v111 count:2];
  v172[60] = v27;
  v110[0] = @"JoinSOSAfterCKKSFetch";
  v110[1] = &off_100364ED0;
  v26 = [NSArray arrayWithObjects:v110 count:2];
  v172[61] = v26;
  v109[0] = @"AttemptSOSUpgrade";
  v109[1] = &off_100364EE8;
  v25 = [NSArray arrayWithObjects:v109 count:2];
  v172[62] = v25;
  v108[0] = @"InitiatorUpdateDeviceList";
  v108[1] = &off_100364F00;
  v24 = [NSArray arrayWithObjects:v108 count:2];
  v172[63] = v24;
  v107[0] = @"InitiatorAwaitingVoucher";
  v107[1] = &off_100364F18;
  v23 = [NSArray arrayWithObjects:v107 count:2];
  v172[64] = v23;
  v106[0] = @"InitiatorJoin";
  v106[1] = &off_100364F30;
  v22 = [NSArray arrayWithObjects:v106 count:2];
  v172[65] = v22;
  v105[0] = @"NoAccount";
  v105[1] = &off_100364F48;
  v21 = [NSArray arrayWithObjects:v105 count:2];
  v172[66] = v21;
  v104[0] = @"ResetAndEstablish";
  v104[1] = &off_100364F60;
  v20 = [NSArray arrayWithObjects:v104 count:2];
  v172[67] = v20;
  v103[0] = @"Unimplemented";
  v103[1] = &off_100364F78;
  v19 = [NSArray arrayWithObjects:v103 count:2];
  v172[68] = v19;
  v102[0] = @"DetermineiCloudAccountState";
  v102[1] = &off_100364F90;
  v18 = [NSArray arrayWithObjects:v102 count:2];
  v172[69] = v18;
  v101[0] = @"DetermineiCloudAccountState";
  v101[1] = &off_100364F90;
  v17 = [NSArray arrayWithObjects:v101 count:2];
  v172[70] = v17;
  v100[0] = @"PrepareAndRecoverTLKSharesForInheritancePeer";
  v100[1] = &off_100364FA8;
  v16 = [NSArray arrayWithObjects:v100 count:2];
  v172[71] = v16;
  v99[0] = @"BecomeInherited";
  v99[1] = &off_100364FC0;
  v15 = [NSArray arrayWithObjects:v99 count:2];
  v172[72] = v15;
  v98[0] = @"Inherited";
  v98[1] = &off_100364FD8;
  v14 = [NSArray arrayWithObjects:v98 count:2];
  v172[73] = v14;
  v97[0] = @"PeerMissingFromServer";
  v97[1] = &off_100364FF0;
  v13 = [NSArray arrayWithObjects:v97 count:2];
  v172[74] = v13;
  v96[0] = @"ResetAndEstablishClearLocalContextState";
  v96[1] = &off_100365008;
  v2 = [NSArray arrayWithObjects:v96 count:2];
  v172[75] = v2;
  v95[0] = @"LocalReset";
  v95[1] = &off_100365020;
  v3 = [NSArray arrayWithObjects:v95 count:2];
  v172[76] = v3;
  v94[0] = @"LocalResetClearLocalContextState";
  v94[1] = &off_100365038;
  v4 = [NSArray arrayWithObjects:v94 count:2];
  v172[77] = v4;
  v93[0] = @"OctagonStateStashAccountSettingsForRecoveryKey";
  v93[1] = &off_100365050;
  v5 = [NSArray arrayWithObjects:v93 count:2];
  v172[78] = v5;
  v92[0] = @"CuttlefishReset";
  v92[1] = &off_100365068;
  v6 = [NSArray arrayWithObjects:v92 count:2];
  v172[79] = v6;
  v91[0] = @"CKKSResetAfterOctagonReset";
  v91[1] = &off_100365080;
  v7 = [NSArray arrayWithObjects:v91 count:2];
  v172[80] = v7;
  v90[0] = @"OctagonStateStashAccountSettingsForReroll";
  v90[1] = &off_100365098;
  v8 = [NSArray arrayWithObjects:v90 count:2];
  v172[81] = v8;
  v89[0] = @"OctagonStateCreateIdentityForReroll";
  v89[1] = &off_1003650B0;
  v9 = [NSArray arrayWithObjects:v89 count:2];
  v172[82] = v9;
  v88[0] = @"OctagonStateVouchWithReroll";
  v88[1] = &off_1003650C8;
  v10 = [NSArray arrayWithObjects:v88 count:2];
  v172[83] = v10;
  v11 = [NSArray arrayWithObjects:v172 count:84];

  return v11;
}

@end