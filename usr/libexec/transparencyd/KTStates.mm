@interface KTStates
+ (id)AllKTFlags;
+ (id)KTStateInverseMap;
+ (id)KTStateMap;
+ (id)stateInit;
@end

@implementation KTStates

+ (id)stateInit
{
  v95[0] = @"Ready";
  v95[1] = &off_10033D080;
  v49 = [NSArray arrayWithObjects:v95 count:2];
  v96[0] = v49;
  v94[0] = @"Error";
  v94[1] = &off_10033D098;
  v48 = [NSArray arrayWithObjects:v94 count:2];
  v96[1] = v48;
  v93[0] = @"NoAccount";
  v93[1] = &off_10033D0B0;
  v47 = [NSArray arrayWithObjects:v93 count:2];
  v96[2] = v47;
  v92[0] = @"Unimplemented";
  v92[1] = &off_10033D0C8;
  v46 = [NSArray arrayWithObjects:v92 count:2];
  v96[3] = v46;
  v91[0] = @"WaitForManatee";
  v91[1] = &off_10033D0E0;
  v45 = [NSArray arrayWithObjects:v91 count:2];
  v96[4] = v45;
  v90[0] = @"FetchIDSSelf";
  v90[1] = &off_10033D0F8;
  v44 = [NSArray arrayWithObjects:v90 count:2];
  v96[5] = v44;
  v89[0] = @"EnsureAccountIdentity";
  v89[1] = &off_10033D110;
  v43 = [NSArray arrayWithObjects:v89 count:2];
  v96[6] = v43;
  v88[0] = @"KTStateCheckCloudKitAccount";
  v88[1] = &off_10033D128;
  v42 = [NSArray arrayWithObjects:v88 count:2];
  v96[7] = v42;
  v87[0] = @"Initializing";
  v87[1] = &off_10033D140;
  v41 = [NSArray arrayWithObjects:v87 count:2];
  v96[8] = v41;
  v86[0] = @"SignalIDS";
  v86[1] = &off_10033D158;
  v40 = [NSArray arrayWithObjects:v86 count:2];
  v96[9] = v40;
  v85[0] = @"FetchConfigBag";
  v85[1] = &off_10033D170;
  v39 = [NSArray arrayWithObjects:v85 count:2];
  v96[10] = v39;
  v84[0] = @"FetchIDMS";
  v84[1] = &off_10033D188;
  v38 = [NSArray arrayWithObjects:v84 count:2];
  v96[11] = v38;
  v83[0] = @"InitialIDMSCheck";
  v83[1] = &off_10033D1A0;
  v37 = [NSArray arrayWithObjects:v83 count:2];
  v96[12] = v37;
  v82[0] = @"ValidateFetchKTSelf";
  v82[1] = &off_10033D1B8;
  v36 = [NSArray arrayWithObjects:v82 count:2];
  v96[13] = v36;
  v81[0] = @"ValidateSelf";
  v81[1] = &off_10033D1D0;
  v35 = [NSArray arrayWithObjects:v81 count:2];
  v96[14] = v35;
  v80[0] = @"SignRegistrationData";
  v80[1] = &off_10033D1E8;
  v34 = [NSArray arrayWithObjects:v80 count:2];
  v96[15] = v34;
  v79[0] = @"ForceSyncKVS";
  v79[1] = &off_10033D200;
  v33 = [NSArray arrayWithObjects:v79 count:2];
  v96[16] = v33;
  v78[0] = @"ValidateFetchIDSSelf";
  v78[1] = &off_10033D218;
  v32 = [NSArray arrayWithObjects:v78 count:2];
  v96[17] = v32;
  v77[0] = @"FetchKTSelf";
  v77[1] = &off_10033D230;
  v31 = [NSArray arrayWithObjects:v77 count:2];
  v96[18] = v31;
  v76[0] = @"PublicKeysFetch";
  v76[1] = &off_10033D248;
  v30 = [NSArray arrayWithObjects:v76 count:2];
  v96[19] = v30;
  v75[0] = @"PublicKeysWait";
  v75[1] = &off_10033D260;
  v29 = [NSArray arrayWithObjects:v75 count:2];
  v96[20] = v29;
  v74[0] = @"PublicKeysInitialFetch";
  v74[1] = &off_10033D278;
  v28 = [NSArray arrayWithObjects:v74 count:2];
  v96[21] = v28;
  v73[0] = @"CheckIDSRegistration";
  v73[1] = &off_10033D290;
  v27 = [NSArray arrayWithObjects:v73 count:2];
  v96[22] = v27;
  v72[0] = @"RecheckAccount";
  v72[1] = &off_10033D2A8;
  v26 = [NSArray arrayWithObjects:v72 count:2];
  v96[23] = v26;
  v71[0] = @"ResetLocalState";
  v71[1] = &off_10033D2C0;
  v25 = [NSArray arrayWithObjects:v71 count:2];
  v96[24] = v25;
  v70[0] = @"SetOptIO";
  v70[1] = &off_10033D2D8;
  v24 = [NSArray arrayWithObjects:v70 count:2];
  v96[25] = v24;
  v69[0] = @"ChangeOptIn";
  v69[1] = &off_10033D2F0;
  v23 = [NSArray arrayWithObjects:v69 count:2];
  v96[26] = v23;
  v68[0] = @"ValidateSelfOptIn";
  v68[1] = &off_10033D308;
  v22 = [NSArray arrayWithObjects:v68 count:2];
  v96[27] = v22;
  v67[0] = @"RetryEnsureAccountIdentity";
  v67[1] = &off_10033D320;
  v21 = [NSArray arrayWithObjects:v67 count:2];
  v96[28] = v21;
  v66[0] = @"ProcessOutgoing";
  v66[1] = &off_10033D338;
  v20 = [NSArray arrayWithObjects:v66 count:2];
  v96[29] = v20;
  v65[0] = @"ZoneSetup";
  v65[1] = &off_10033D350;
  v19 = [NSArray arrayWithObjects:v65 count:2];
  v96[30] = v19;
  v64[0] = @"CKProcessReboot";
  v64[1] = &off_10033D368;
  v18 = [NSArray arrayWithObjects:v64 count:2];
  v96[31] = v18;
  v63[0] = @"CKProcessInitial";
  v63[1] = &off_10033D380;
  v17 = [NSArray arrayWithObjects:v63 count:2];
  v96[32] = v17;
  v62[0] = @"KTStateFixups";
  v62[1] = &off_10033D398;
  v16 = [NSArray arrayWithObjects:v62 count:2];
  v96[33] = v16;
  v61[0] = @"ResetLocalCloudState";
  v61[1] = &off_10033D3B0;
  v15 = [NSArray arrayWithObjects:v61 count:2];
  v96[34] = v15;
  v60[0] = @"WaitForCKKS";
  v60[1] = &off_10033D3C8;
  v14 = [NSArray arrayWithObjects:v60 count:2];
  v96[35] = v14;
  v59[0] = @"ForceSyncKTAccountKey";
  v59[1] = &off_10033D3E0;
  v13 = [NSArray arrayWithObjects:v59 count:2];
  v96[36] = v13;
  v58[0] = @"GetStatus";
  v58[1] = &off_10033D3F8;
  v2 = [NSArray arrayWithObjects:v58 count:2];
  v96[37] = v2;
  v57[0] = @"GetStatusInitial";
  v57[1] = &off_10033D410;
  v3 = [NSArray arrayWithObjects:v57 count:2];
  v96[38] = v3;
  v56[0] = @"EnvironmentSwitch";
  v56[1] = &off_10033D428;
  v4 = [NSArray arrayWithObjects:v56 count:2];
  v96[39] = v4;
  v55[0] = @"CheckKTAccountKeyChanged";
  v55[1] = &off_10033D440;
  v5 = [NSArray arrayWithObjects:v55 count:2];
  v96[40] = v5;
  v54[0] = @"InitialSignRegistrationData";
  v54[1] = &off_10033D458;
  v6 = [NSArray arrayWithObjects:v54 count:2];
  v96[41] = v6;
  v53[0] = @"WaitForUnlock";
  v53[1] = &off_10033D470;
  v7 = [NSArray arrayWithObjects:v53 count:2];
  v96[42] = v7;
  v52[0] = @"PokeIDS";
  v52[1] = &off_10033D488;
  v8 = [NSArray arrayWithObjects:v52 count:2];
  v96[43] = v8;
  v51[0] = @"RepairCKV";
  v51[1] = &off_10033D4A0;
  v9 = [NSArray arrayWithObjects:v51 count:2];
  v96[44] = v9;
  v50[0] = @"KTStateResetCloudStore";
  v50[1] = &off_10033D4B8;
  v10 = [NSArray arrayWithObjects:v50 count:2];
  v96[45] = v10;
  v11 = [NSArray arrayWithObjects:v96 count:46];

  return v11;
}

+ (id)KTStateMap
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245F58;
  v4[3] = &unk_10032D268;
  v4[4] = self;
  v4[5] = a2;
  if (qword_10039CF10 != -1)
  {
    dispatch_once(&qword_10039CF10, v4);
  }

  v2 = qword_10039CF08;

  return v2;
}

+ (id)KTStateInverseMap
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002461C0;
  v4[3] = &unk_10032D268;
  v4[4] = self;
  v4[5] = a2;
  if (qword_10039CF20 != -1)
  {
    dispatch_once(&qword_10039CF20, v4);
  }

  v2 = qword_10039CF18;

  return v2;
}

+ (id)AllKTFlags
{
  if (qword_10039CF30 != -1)
  {
    sub_100260800();
  }

  v3 = qword_10039CF28;

  return v3;
}

@end