@interface AudioAccessoryDeviceInfo
- (id)xpcObjectRepresentation;
- (unint64_t)updateWithClassicDevice:(void *)a3;
@end

@implementation AudioAccessoryDeviceInfo

- (id)xpcObjectRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  autoANCCapability = self->_autoANCCapability;
  v5 = v3;
  v6 = v5;
  if (autoANCCapability)
  {
    xpc_dictionary_set_uint64(v5, "aaCp", autoANCCapability);
  }

  autoANCStrength = self->_autoANCStrength;
  v8 = v6;
  v9 = v8;
  if (autoANCStrength)
  {
    xpc_dictionary_set_uint64(v8, "aaSt", autoANCStrength);
  }

  bobbleCapability = self->_bobbleCapability;
  v11 = v9;
  v12 = v11;
  if (bobbleCapability)
  {
    xpc_dictionary_set_uint64(v11, "bbCp", bobbleCapability);
  }

  caseSoundCapability = self->_caseSoundCapability;
  v14 = v12;
  v15 = v14;
  if (caseSoundCapability)
  {
    xpc_dictionary_set_uint64(v14, "caCp", caseSoundCapability);
  }

  cameraControlCapability = self->_cameraControlCapability;
  v17 = v15;
  v18 = v17;
  if (cameraControlCapability)
  {
    xpc_dictionary_set_uint64(v17, "ccCp", cameraControlCapability);
  }

  discoveryFlags = self->_discoveryFlags;
  v20 = v18;
  v21 = v20;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(v20, "disF", discoveryFlags);
  }

  dynamicEndOfChargeCapability = self->_dynamicEndOfChargeCapability;
  v23 = v21;
  v24 = v23;
  if (dynamicEndOfChargeCapability)
  {
    xpc_dictionary_set_uint64(v23, "deoc", dynamicEndOfChargeCapability);
  }

  dynamicEndOfChargeEnabled = self->_dynamicEndOfChargeEnabled;
  v26 = v24;
  v27 = v26;
  if (dynamicEndOfChargeEnabled)
  {
    xpc_dictionary_set_int64(v26, "deoE", dynamicEndOfChargeEnabled);
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  v29 = v27;
  v30 = v29;
  if (earTipFitTestCapability)
  {
    xpc_dictionary_set_uint64(v29, "erFt", earTipFitTestCapability);
  }

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  v32 = v30;
  v33 = v32;
  if (enhancedTransparencyVersion)
  {
    xpc_dictionary_set_uint64(v32, "enTv", enhancedTransparencyVersion);
  }

  farFieldUplinkCapability = self->_farFieldUplinkCapability;
  v35 = v33;
  v36 = v35;
  if (farFieldUplinkCapability)
  {
    xpc_dictionary_set_uint64(v35, "fuCp", farFieldUplinkCapability);
  }

  frequencyBand = self->_frequencyBand;
  v38 = v36;
  v39 = v38;
  if (frequencyBand)
  {
    xpc_dictionary_set_uint64(v38, "fqBd", frequencyBand);
  }

  hearingAidCapability = self->_hearingAidCapability;
  v41 = v39;
  v42 = v41;
  if (hearingAidCapability)
  {
    xpc_dictionary_set_uint64(v41, "haCp", hearingAidCapability);
  }

  hearingAidConfig = self->_hearingAidConfig;
  v44 = v42;
  v45 = v44;
  if (hearingAidConfig)
  {
    xpc_dictionary_set_int64(v44, "haCg", hearingAidConfig);
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  v47 = v45;
  v48 = v47;
  if (hearingAidEnrolled)
  {
    xpc_dictionary_set_int64(v47, "haEn", hearingAidEnrolled);
  }

  hearingAidGainSwipeEnabled = self->_hearingAidGainSwipeEnabled;
  v50 = v48;
  v51 = v50;
  if (hearingAidGainSwipeEnabled)
  {
    xpc_dictionary_set_int64(v50, "haGS", hearingAidGainSwipeEnabled);
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  v53 = v51;
  v54 = v53;
  if (hearingAidV2Capability)
  {
    xpc_dictionary_set_uint64(v53, "haV2", hearingAidV2Capability);
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  v56 = v54;
  v57 = v56;
  if (hearingAssistEnabled)
  {
    xpc_dictionary_set_int64(v56, "hrEn", hearingAssistEnabled);
  }

  hearingProtectionCapability = self->_hearingProtectionCapability;
  v59 = v57;
  v60 = v59;
  if (hearingProtectionCapability)
  {
    xpc_dictionary_set_uint64(v59, "hpCp", hearingProtectionCapability);
  }

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  v62 = v60;
  v63 = v62;
  if (hearingProtectionPPECapability)
  {
    xpc_dictionary_set_uint64(v62, "ppeC", hearingProtectionPPECapability);
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  v65 = v63;
  v66 = v65;
  if (hearingProtectionPPECapLevel)
  {
    xpc_dictionary_set_uint64(v65, "ppeL", hearingProtectionPPECapLevel);
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  v68 = v66;
  v69 = v68;
  if (hearingProtectionPPEEnabled)
  {
    xpc_dictionary_set_int64(v68, "ppeE", hearingProtectionPPEEnabled);
  }

  hearingTestCapability = self->_hearingTestCapability;
  v71 = v69;
  v72 = v71;
  if (hearingTestCapability)
  {
    xpc_dictionary_set_uint64(v71, "htcp", hearingTestCapability);
  }

  heartRateMonitorCapable = self->_heartRateMonitorCapable;
  v74 = v72;
  v75 = v74;
  if (heartRateMonitorCapable)
  {
    xpc_dictionary_set_uint64(v74, "hrCp", heartRateMonitorCapable);
  }

  heartRateMonitorEnabled = self->_heartRateMonitorEnabled;
  v77 = v75;
  v78 = v77;
  if (heartRateMonitorEnabled)
  {
    xpc_dictionary_set_int64(v77, "hrmt", heartRateMonitorEnabled);
  }

  hideEarDetectionCapability = self->_hideEarDetectionCapability;
  v80 = v78;
  v81 = v80;
  if (hideEarDetectionCapability)
  {
    xpc_dictionary_set_uint64(v80, "hiED", hideEarDetectionCapability);
  }

  hideOffListeningModeCapability = self->_hideOffListeningModeCapability;
  v83 = v81;
  v84 = v83;
  if (hideOffListeningModeCapability)
  {
    xpc_dictionary_set_uint64(v83, "hoCp", hideOffListeningModeCapability);
  }

  identifier = self->_identifier;
  v86 = v84;
  v87 = identifier;
  v88 = [(NSString *)v87 UTF8String];
  if (v88)
  {
    xpc_dictionary_set_string(v86, "aaID", v88);
  }

  lastSeenTime = self->_lastSeenTime;
  v90 = v86;
  v91 = v90;
  if (lastSeenTime)
  {
    xpc_dictionary_set_int64(v90, "laST", lastSeenTime);
  }

  pmeEverywhereCapability = self->_pmeEverywhereCapability;
  v93 = v91;
  v94 = v93;
  if (pmeEverywhereCapability)
  {
    xpc_dictionary_set_uint64(v93, "pmee", pmeEverywhereCapability);
  }

  ovadStreamingCapability = self->_ovadStreamingCapability;
  v96 = v94;
  v97 = v96;
  if (ovadStreamingCapability)
  {
    xpc_dictionary_set_uint64(v96, "osCp", ovadStreamingCapability);
  }

  siriMultitoneCapability = self->_siriMultitoneCapability;
  v99 = v97;
  v100 = v99;
  if (siriMultitoneCapability)
  {
    xpc_dictionary_set_uint64(v99, "smcp", siriMultitoneCapability);
  }

  sleepDetectionCapability = self->_sleepDetectionCapability;
  v102 = v100;
  v103 = v102;
  if (sleepDetectionCapability)
  {
    xpc_dictionary_set_uint64(v102, "sdcp", sleepDetectionCapability);
  }

  sleepDetectionEnabled = self->_sleepDetectionEnabled;
  v105 = v103;
  v106 = v105;
  if (sleepDetectionEnabled)
  {
    xpc_dictionary_set_int64(v105, "esld", sleepDetectionEnabled);
  }

  streamStateAoS = self->_streamStateAoS;
  v108 = v106;
  v109 = v108;
  if (streamStateAoS)
  {
    xpc_dictionary_set_uint64(v108, "aoST", streamStateAoS);
  }

  temporaryManagedPairedStatus = self->_temporaryManagedPairedStatus;
  v111 = v109;
  v112 = v111;
  if (temporaryManagedPairedStatus)
  {
    xpc_dictionary_set_int64(v111, "tmpM", temporaryManagedPairedStatus);
  }

  v113 = v112;
  return v112;
}

- (unint64_t)updateWithClassicDevice:(void *)a3
{
  v5 = *(a3 + 1435);
  if (v5 == [(AudioAccessoryDeviceInfo *)self streamStateAoS])
  {
    v6 = 0;
  }

  else
  {
    [(AudioAccessoryDeviceInfo *)self setStreamStateAoS:v5];
    v6 = 0x80000000000;
  }

  v7 = sub_1000E3218(a3, 0xB0u);
  if (v7 < 3)
  {
    LODWORD(v8) = v7 + 1;
  }

  else
  {
    if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      sub_10080F4A0();
    }

    LODWORD(v8) = 0;
  }

  v9 = sub_1000E3218(a3, 0x18u);
  if (v9)
  {
    v8 = (v9 + 1);
  }

  else
  {
    v8 = v8;
  }

  if (v8 != [(AudioAccessoryDeviceInfo *)self autoANCCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setAutoANCCapability:v8];
    v6 = 0x80000000000;
  }

  v10 = sub_100549574(a3);
  if (v10)
  {
    if (v10 == 50 || v10 == 100)
    {
      v11 = (v10 + 1000);
    }

    else
    {
      if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
      {
        sub_10080F4BC();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1000;
  }

  if (v11 != [(AudioAccessoryDeviceInfo *)self autoANCStrength])
  {
    [(AudioAccessoryDeviceInfo *)self setAutoANCStrength:v11];
    v6 = 0x80000000000;
  }

  if (sub_1000E3218(a3, 0xF0u) == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v12 != [(AudioAccessoryDeviceInfo *)self bobbleCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setBobbleCapability:v12];
    v6 = 0x80000000000;
  }

  if (sub_1000E3218(a3, 0x23u))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v13 != [(AudioAccessoryDeviceInfo *)self cameraControlCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setCameraControlCapability:v13];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E012C(a3, 18))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v14 != [(AudioAccessoryDeviceInfo *)self caseSoundCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setCaseSoundCapability:v14];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x29u))
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v15 != [(AudioAccessoryDeviceInfo *)self dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setDynamicEndOfChargeCapability:v15];
    v6 |= 0x80000000000uLL;
  }

  v16 = sub_10054976C(a3);
  if (v16 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * (v16 == 2);
  }

  if (v17 != [(AudioAccessoryDeviceInfo *)self dynamicEndOfChargeEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setDynamicEndOfChargeEnabled:v17];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x17u))
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v18 != [(AudioAccessoryDeviceInfo *)self earTipFitTestCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setEarTipFitTestCapability:v18];
    v6 |= 0x80000000000uLL;
  }

  v19 = sub_1000E3218(a3, 6u);
  if ((v19 - 1) >= 3)
  {
    v20 = 4 * (v19 == 4);
  }

  else
  {
    v20 = v19;
  }

  if ([(AudioAccessoryDeviceInfo *)self enhancedTransparencyVersion]!= v20)
  {
    [(AudioAccessoryDeviceInfo *)self setEnhancedTransparencyVersion:v20];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x25u) == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v21 != [(AudioAccessoryDeviceInfo *)self farFieldUplinkCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setFarFieldUplinkCapability:v21];
    v6 |= 0x80000000000uLL;
  }

  if (*(a3 + 1437))
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v22 != [(AudioAccessoryDeviceInfo *)self frequencyBand])
  {
    [(AudioAccessoryDeviceInfo *)self setFrequencyBand:v22];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x24u) == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  if (v23 != [(AudioAccessoryDeviceInfo *)self ovadStreamingCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setOvadStreamingCapability:v23];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0xC0u) == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  if (v24 != [(AudioAccessoryDeviceInfo *)self hearingAidCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidCapability:v24];
    v6 |= 0x80000000000uLL;
  }

  v25 = sub_10054FC88(a3);
  if (v25 == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2 * (v25 == 2);
  }

  if (v26 != [(AudioAccessoryDeviceInfo *)self hearingAidConfig])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidConfig:v26];
    v6 |= 0x80000000000uLL;
  }

  v27 = sub_10054FBB0(a3);
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v27 == 2);
  }

  if (v28 != [(AudioAccessoryDeviceInfo *)self hearingAidEnrolled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidEnrolled:v28];
    v6 |= 0x80000000000uLL;
  }

  v29 = sub_1005495BC(a3);
  if (v29 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2 * (v29 == 2);
  }

  if (v30 != [(AudioAccessoryDeviceInfo *)self hearingAidGainSwipeEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidGainSwipeEnabled:v30];
    v6 |= 0x80000000000uLL;
  }

  v31 = sub_100549604(a3);
  if (v31 == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2 * (v31 == 2);
  }

  if (v32 != [(AudioAccessoryDeviceInfo *)self hearingAssistEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAssistEnabled:v32];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x30u) == 1)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  if (v33 != [(AudioAccessoryDeviceInfo *)self hearingProtectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionCapability:v33];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0xD0u) == 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if (v34 != [(AudioAccessoryDeviceInfo *)self hearingTestCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingTestCapability:v34];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x31u))
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  if (v35 != [(AudioAccessoryDeviceInfo *)self hearingAidV2Capability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidV2Capability:v35];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x28u) == 1)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  if (v36 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPECapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPECapability:v36];
    v6 |= 0x80000000000uLL;
  }

  v37 = sub_1005496DC(a3);
  if (v37 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPECapLevel])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPECapLevel:v37];
    v6 |= 0x80000000000uLL;
  }

  v38 = sub_100549724(a3);
  if (v38 == 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2 * (v38 == 2);
  }

  if (v39 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPEEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPEEnabled:v39];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x26u))
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  if (v40 != [(AudioAccessoryDeviceInfo *)self heartRateMonitorCapable])
  {
    [(AudioAccessoryDeviceInfo *)self setHeartRateMonitorCapable:v40];
    v6 |= 0x80000000000uLL;
  }

  v41 = sub_100549694(a3);
  if (v41 == 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = 2 * (v41 == 2);
  }

  if (v42 != [(AudioAccessoryDeviceInfo *)self heartRateMonitorEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHeartRateMonitorEnabled:v42];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x16u))
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  if (v43 != [(AudioAccessoryDeviceInfo *)self hideEarDetectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHideEarDetectionCapability:v43];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x13u) == 1)
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
  }

  if (v44 != [(AudioAccessoryDeviceInfo *)self hideOffListeningModeCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHideOffListeningModeCapability:v44];
    v6 |= 0x80000000000uLL;
  }

  v45 = sub_10054D4E0(a3);
  if (v45 >= 1)
  {
    v46 = v45;
    if (v45 != [(AudioAccessoryDeviceInfo *)self lastSeenTime])
    {
      [(AudioAccessoryDeviceInfo *)self setLastSeenTime:v46];
      v6 |= 0x80000000000uLL;
    }
  }

  if (sub_1000E012C(a3, 17))
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  if (v47 != [(AudioAccessoryDeviceInfo *)self pmeEverywhereCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setPmeEverywhereCapability:v47];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x15u) == 1)
  {
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  if (v48 != [(AudioAccessoryDeviceInfo *)self siriMultitoneCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setSiriMultitoneCapability:v48];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(a3, 0x21u) == 1)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  if (v49 != [(AudioAccessoryDeviceInfo *)self sleepDetectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setSleepDetectionCapability:v49];
    v6 |= 0x80000000000uLL;
  }

  v50 = sub_10054991C(a3);
  if (v50 == 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2 * (v50 == 2);
  }

  if (v51 != [(AudioAccessoryDeviceInfo *)self sleepDetectionEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setSleepDetectionEnabled:v51];
    v6 |= 0x80000000000uLL;
  }

  if (_os_feature_enabled_impl())
  {
    if (*(a3 + 1045))
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    if (v52 != [(AudioAccessoryDeviceInfo *)self temporaryManagedPairedStatus])
    {
      [(AudioAccessoryDeviceInfo *)self setTemporaryManagedPairedStatus:v52];
      v6 |= 0x80000000000uLL;
    }
  }

  return v6;
}

@end