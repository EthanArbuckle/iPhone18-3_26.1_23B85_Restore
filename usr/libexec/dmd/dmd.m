void sub_1000021C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:"_updateForegroundBundleIdentifiers" withObject:0 waitUntilDone:0];
}

void sub_1000022D4(uint64_t a1)
{
  v2 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Detected keychain lock change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained keybagLockStateDidChange];
}

void sub_100002354(uint64_t a1)
{
  v2 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Detected network change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkDidChange];
}

void sub_100002E7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002F6C(id a1)
{
  v4[0] = CEMQuery_activeManagedUsers;
  v4[1] = CEMQuery_maximumResidentUsers;
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000FEEC8;
  qword_1000FEEC8 = v2;
}

void sub_100003064(id a1)
{
  v4[0] = CEMQuery_UDID;
  v4[1] = CEMQuery_organizationInfo;
  v4[2] = CEMQuery_mdmOptions;
  v4[3] = CEMQuery_lastCloudBackupDate;
  v4[4] = CEMQuery_awaitingConfiguration;
  v4[5] = CEMQuery_iTunesStoreAccountIsActive;
  v4[6] = CEMQuery_iTunesStoreAccountHash;
  v4[7] = CEMQuery_deviceName;
  v4[8] = CEMQuery_osVersion;
  v4[9] = CEMQuery_buildVersion;
  v4[10] = CEMQuery_modelName;
  v4[11] = CEMQuery_model;
  v4[12] = CEMQuery_productName;
  v4[13] = CEMQuery_marketingName;
  v4[14] = CEMQuery_serialNumber;
  v4[15] = CEMQuery_deviceCapacity;
  v4[16] = CEMQuery_availableDeviceCapacity;
  v4[17] = CEMQuery_IMEI;
  v4[18] = CEMQuery_MEID;
  v4[19] = CEMQuery_modemFirmwareVersion;
  v4[20] = CEMQuery_cellularTechnology;
  v4[21] = CEMQuery_batteryLevel;
  v4[22] = CEMQuery_isSupervised;
  v4[23] = CEMQuery_isMultiUser;
  v4[24] = CEMQuery_isDeviceLocatorServiceEnabled;
  v4[25] = CEMQuery_isActivationLockEnabled;
  v4[26] = CEMQuery_isDoNotDisturbInEffect;
  v4[27] = CEMQuery_deviceID;
  v4[28] = CEMQuery_easDeviceIdentifier;
  v4[29] = CEMQuery_isCloudBackupEnabled;
  v4[30] = CEMQuery_activeManagedUsers;
  v4[31] = CEMQuery_isMDMLostModeEnabled;
  v4[32] = CEMQuery_maximumResidentUsers;
  v4[33] = CEMQuery_diagnosticSubmissionEnabled;
  v4[34] = CEMQuery_appAnalyticsEnabled;
  v4[35] = CEMQuery_ICCID;
  v4[36] = CEMQuery_bluetoothMAC;
  v4[37] = CEMQuery_wiFiMAC;
  v4[38] = CEMQuery_ethernetMACs;
  v4[39] = CEMQuery_currentCarrierNetwork;
  v4[40] = CEMQuery_simCarrierNetwork;
  v4[41] = CEMQuery_subscriberCarrierNetwork;
  v4[42] = CEMQuery_carrierSettingsVersion;
  v4[43] = CEMQuery_phoneNumber;
  v4[44] = CEMQuery_dataRoamingEnabled;
  v4[45] = CEMQuery_voiceRoamingEnabled;
  v4[46] = CEMQuery_personalHotspotEnabled;
  v4[47] = CEMQuery_isNetworkTethered;
  v4[48] = CEMQuery_isRoaming;
  v4[49] = CEMQuery_subscriberMCC;
  v4[50] = CEMQuery_subscriberMNC;
  v4[51] = CEMQuery_currentMCC;
  v4[52] = CEMQuery_currentMNC;
  v1 = [NSArray arrayWithObjects:v4 count:53];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000FEED8;
  qword_1000FEED8 = v2;
}

void sub_100003430(id a1)
{
  v4[0] = CEMQuery_iTunesStoreAccountIsActive;
  v4[1] = CEMQuery_iTunesStoreAccountHash;
  v4[2] = CEMQuery_pushToken;
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000FEEE8;
  qword_1000FEEE8 = v2;
}

void sub_100003538(id a1)
{
  v4[0] = CEMQuery_organizationInfo;
  v4[1] = CEMQuery_mdmOptions;
  v4[2] = CEMQuery_pushToken;
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000FEEF8;
  qword_1000FEEF8 = v2;
}

void sub_100003668(id a1)
{
  v3[0] = CEMQuery_UDID;
  v3[1] = CEMQuery_lastCloudBackupDate;
  v4[0] = DMFDeviceUniqueIdentifierKey;
  v4[1] = DMFDeviceLastCloudBackupDateKey;
  v3[2] = CEMQuery_awaitingConfiguration;
  v3[3] = CEMQuery_iTunesStoreAccountIsActive;
  v4[2] = DMFDeviceAwaitingConfigurationKey;
  v4[3] = DMFDeviceiTunesStoreAccountIsActiveKey;
  v3[4] = CEMQuery_iTunesStoreAccountHash;
  v3[5] = CEMQuery_deviceName;
  v4[4] = DMFDeviceiTunesStoreAccountHashKey;
  v4[5] = DMFDeviceNameKey;
  v3[6] = CEMQuery_osVersion;
  v3[7] = CEMQuery_buildVersion;
  v4[6] = DMFDeviceOSVersionKey;
  v4[7] = DMFDeviceBuildVersionKey;
  v3[8] = CEMQuery_modelName;
  v3[9] = CEMQuery_model;
  v4[8] = DMFDeviceModelNameKey;
  v4[9] = DMFDeviceModelKey;
  v3[10] = CEMQuery_productName;
  v3[11] = CEMQuery_marketingName;
  v4[10] = DMFDeviceProductNameKey;
  v4[11] = DMFDeviceMarketingNameKey;
  v3[12] = CEMQuery_serialNumber;
  v3[13] = CEMQuery_deviceCapacity;
  v4[12] = DMFDeviceSerialNumberKey;
  v4[13] = DMFDeviceCapacityKey;
  v3[14] = CEMQuery_availableDeviceCapacity;
  v3[15] = CEMQuery_IMEI;
  v4[14] = DMFDeviceAvailableCapacityKey;
  v4[15] = DMFDeviceIMEIKey;
  v3[16] = CEMQuery_MEID;
  v3[17] = CEMQuery_modemFirmwareVersion;
  v4[16] = DMFDeviceMEIDKey;
  v4[17] = DMFDeviceModemFirmwareVersionKey;
  v3[18] = CEMQuery_cellularTechnology;
  v3[19] = CEMQuery_batteryLevel;
  v4[18] = DMFDeviceCellularTechnologyKey;
  v4[19] = DMFDeviceBatteryLevelKey;
  v3[20] = CEMQuery_isSupervised;
  v3[21] = CEMQuery_isMultiUser;
  v4[20] = DMFDeviceIsSupervisedKey;
  v4[21] = DMFDeviceIsEphemeralMultiUserKey;
  v3[22] = CEMQuery_isDeviceLocatorServiceEnabled;
  v3[23] = CEMQuery_isActivationLockEnabled;
  v4[22] = DMFDeviceIsDeviceLocatorServiceEnabledKey;
  v4[23] = DMFDeviceIsActivationLockEnabledKey;
  v3[24] = CEMQuery_isDoNotDisturbInEffect;
  v3[25] = CEMQuery_deviceID;
  v4[24] = DMFDeviceIsDNDInEffectKey;
  v4[25] = DMFDeviceIdentifierKey;
  v3[26] = CEMQuery_easDeviceIdentifier;
  v3[27] = CEMQuery_isCloudBackupEnabled;
  v4[26] = DMFDeviceEASIdentifierKey;
  v4[27] = DMFDeviceIsCloudBackupEnabledKey;
  v3[28] = CEMQuery_isMDMLostModeEnabled;
  v3[29] = CEMQuery_maximumResidentUsers;
  v4[28] = DMFDeviceIsLostModeEnabledKey;
  v4[29] = DMFDeviceMaximumResidentUsersKey;
  v3[30] = CEMQuery_diagnosticSubmissionEnabled;
  v3[31] = CEMQuery_appAnalyticsEnabled;
  v4[30] = DMFDeviceDiagnosticSubmissionEnabledKey;
  v4[31] = DMFDeviceAppAnalyticsEnabledKey;
  v3[32] = CEMQuery_ICCID;
  v3[33] = CEMQuery_bluetoothMAC;
  v4[32] = DMFDeviceICCIDKey;
  v4[33] = DMFDeviceBluetoothMACKey;
  v3[34] = CEMQuery_wiFiMAC;
  v3[35] = CEMQuery_currentCarrierNetwork;
  v4[34] = DMFDeviceWiFiMACKey;
  v4[35] = DMFDeviceCurrentCarrierNetworkKey;
  v3[36] = CEMQuery_simCarrierNetwork;
  v3[37] = CEMQuery_subscriberCarrierNetwork;
  v4[36] = DMFDeviceSIMCarrierNetworkKey;
  v4[37] = DMFDeviceSubscriberCarrierNetworkKey;
  v3[38] = CEMQuery_carrierSettingsVersion;
  v3[39] = CEMQuery_phoneNumber;
  v4[38] = DMFDeviceCarrierSettingsVersionKey;
  v4[39] = DMFDevicePhoneNumberKey;
  v3[40] = CEMQuery_dataRoamingEnabled;
  v3[41] = CEMQuery_voiceRoamingEnabled;
  v4[40] = DMFDeviceDataRoamingEnabledKey;
  v4[41] = DMFDeviceVoiceRoamingEnabledKey;
  v3[42] = CEMQuery_personalHotspotEnabled;
  v3[43] = CEMQuery_isNetworkTethered;
  v4[42] = DMFDevicePersonalHotspotEnabledKey;
  v4[43] = DMFDeviceIsNetworkTetheredKey;
  v3[44] = CEMQuery_isRoaming;
  v3[45] = CEMQuery_subscriberMCC;
  v4[44] = DMFDeviceIsRoamingKey;
  v4[45] = DMFDeviceSubscriberMCCKey;
  v3[46] = CEMQuery_subscriberMNC;
  v3[47] = CEMQuery_currentMCC;
  v4[46] = DMFDeviceSubscriberMNCKey;
  v4[47] = DMFDeviceCurrentMCCKey;
  v3[48] = CEMQuery_currentMNC;
  v4[48] = DMFDeviceCurrentMNCKey;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:49];
  v2 = qword_1000FEF08;
  qword_1000FEF08 = v1;
}

void sub_100003CF4(id a1)
{
  v3[0] = DMFDeviceUniqueIdentifierKey;
  v3[1] = DMFDeviceLastCloudBackupDateKey;
  v4[0] = CEMQuery_UDID;
  v4[1] = CEMQuery_lastCloudBackupDate;
  v3[2] = DMFDeviceAwaitingConfigurationKey;
  v3[3] = DMFDeviceiTunesStoreAccountIsActiveKey;
  v4[2] = CEMQuery_awaitingConfiguration;
  v4[3] = CEMQuery_iTunesStoreAccountIsActive;
  v3[4] = DMFDeviceiTunesStoreAccountHashKey;
  v3[5] = DMFDeviceNameKey;
  v4[4] = CEMQuery_iTunesStoreAccountHash;
  v4[5] = CEMQuery_deviceName;
  v3[6] = DMFDeviceOSVersionKey;
  v3[7] = DMFDeviceBuildVersionKey;
  v4[6] = CEMQuery_osVersion;
  v4[7] = CEMQuery_buildVersion;
  v3[8] = DMFDeviceModelNameKey;
  v3[9] = DMFDeviceModelKey;
  v4[8] = CEMQuery_modelName;
  v4[9] = CEMQuery_model;
  v3[10] = DMFDeviceProductNameKey;
  v3[11] = DMFDeviceMarketingNameKey;
  v4[10] = CEMQuery_productName;
  v4[11] = CEMQuery_marketingName;
  v3[12] = DMFDeviceSerialNumberKey;
  v3[13] = DMFDeviceCapacityKey;
  v4[12] = CEMQuery_serialNumber;
  v4[13] = CEMQuery_deviceCapacity;
  v3[14] = DMFDeviceAvailableCapacityKey;
  v3[15] = DMFDeviceIMEIKey;
  v4[14] = CEMQuery_availableDeviceCapacity;
  v4[15] = CEMQuery_IMEI;
  v3[16] = DMFDeviceMEIDKey;
  v3[17] = DMFDeviceModemFirmwareVersionKey;
  v4[16] = CEMQuery_MEID;
  v4[17] = CEMQuery_modemFirmwareVersion;
  v3[18] = DMFDeviceCellularTechnologyKey;
  v3[19] = DMFDeviceBatteryLevelKey;
  v4[18] = CEMQuery_cellularTechnology;
  v4[19] = CEMQuery_batteryLevel;
  v3[20] = DMFDeviceIsSupervisedKey;
  v3[21] = DMFDeviceIsEphemeralMultiUserKey;
  v4[20] = CEMQuery_isSupervised;
  v4[21] = CEMQuery_isMultiUser;
  v3[22] = DMFDeviceIsDeviceLocatorServiceEnabledKey;
  v3[23] = DMFDeviceIsActivationLockEnabledKey;
  v4[22] = CEMQuery_isDeviceLocatorServiceEnabled;
  v4[23] = CEMQuery_isActivationLockEnabled;
  v3[24] = DMFDeviceIsDNDInEffectKey;
  v3[25] = DMFDeviceIdentifierKey;
  v4[24] = CEMQuery_isDoNotDisturbInEffect;
  v4[25] = CEMQuery_deviceID;
  v3[26] = DMFDeviceEASIdentifierKey;
  v3[27] = DMFDeviceIsCloudBackupEnabledKey;
  v4[26] = CEMQuery_easDeviceIdentifier;
  v4[27] = CEMQuery_isCloudBackupEnabled;
  v3[28] = DMFDeviceIsLostModeEnabledKey;
  v3[29] = DMFDeviceMaximumResidentUsersKey;
  v4[28] = CEMQuery_isMDMLostModeEnabled;
  v4[29] = CEMQuery_maximumResidentUsers;
  v3[30] = DMFDeviceDiagnosticSubmissionEnabledKey;
  v3[31] = DMFDeviceAppAnalyticsEnabledKey;
  v4[30] = CEMQuery_diagnosticSubmissionEnabled;
  v4[31] = CEMQuery_appAnalyticsEnabled;
  v3[32] = DMFDeviceICCIDKey;
  v3[33] = DMFDeviceBluetoothMACKey;
  v4[32] = CEMQuery_ICCID;
  v4[33] = CEMQuery_bluetoothMAC;
  v3[34] = DMFDeviceWiFiMACKey;
  v3[35] = DMFDeviceCurrentCarrierNetworkKey;
  v4[34] = CEMQuery_wiFiMAC;
  v4[35] = CEMQuery_currentCarrierNetwork;
  v3[36] = DMFDeviceSIMCarrierNetworkKey;
  v3[37] = DMFDeviceSubscriberCarrierNetworkKey;
  v4[36] = CEMQuery_simCarrierNetwork;
  v4[37] = CEMQuery_subscriberCarrierNetwork;
  v3[38] = DMFDeviceCarrierSettingsVersionKey;
  v3[39] = DMFDevicePhoneNumberKey;
  v4[38] = CEMQuery_carrierSettingsVersion;
  v4[39] = CEMQuery_phoneNumber;
  v3[40] = DMFDeviceDataRoamingEnabledKey;
  v3[41] = DMFDeviceVoiceRoamingEnabledKey;
  v4[40] = CEMQuery_dataRoamingEnabled;
  v4[41] = CEMQuery_voiceRoamingEnabled;
  v3[42] = DMFDevicePersonalHotspotEnabledKey;
  v3[43] = DMFDeviceIsNetworkTetheredKey;
  v4[42] = CEMQuery_personalHotspotEnabled;
  v4[43] = CEMQuery_isNetworkTethered;
  v3[44] = DMFDeviceIsRoamingKey;
  v3[45] = DMFDeviceSubscriberMCCKey;
  v4[44] = CEMQuery_isRoaming;
  v4[45] = CEMQuery_subscriberMCC;
  v3[46] = DMFDeviceSubscriberMNCKey;
  v3[47] = DMFDeviceCurrentMCCKey;
  v4[46] = CEMQuery_subscriberMNC;
  v4[47] = CEMQuery_currentMCC;
  v3[48] = DMFDeviceCurrentMNCKey;
  v4[48] = CEMQuery_currentMNC;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:49];
  v2 = qword_1000FEF18;
  qword_1000FEF18 = v1;
}

void sub_100008B70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFConfigurationEngineLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007BDF0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) predicateType];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ succeeded stopping Usage Tracking monitor with budget identifier: %{public}@", &v9, 0x20u);
  }
}

int64_t sub_10000C568(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = DMFDeclarationPayloadIdentifierKey;
  v5 = a3;
  v6 = [(NSDictionary *)a2 objectForKeyedSubscript:v4];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_10000DE10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) uniqueIdentifier];
  [v1 activationPredicateObserverManager:v2 didObserveChangeForPredicateWithIdentifier:v3];
}

void sub_10000EC00(id a1)
{
  qword_1000FEF20 = [[DMDAirPlayManager alloc] initPrivate];

  _objc_release_x1();
}

void sub_10000F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F0BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F0D4(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    obj[3] = v2;
    obj[4] = v3;
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[8];
    v7 = a1[6];
    v8 = *(a1[7] + 8);
    obj[0] = *(v8 + 40);
    [v5 _setOutputDevices:v4 forSessionType:v6 password:v7 error:obj];
    objc_storeStrong((v8 + 40), obj[0]);
  }
}

void sub_10000F84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000F880(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 56);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = v4;
  MRAVReconnaissanceSessionBeginSearch();
}

intptr_t sub_10000F92C(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (cf)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(cf);
  }

  else if (a4)
  {
    v10 = NSUnderlyingErrorKey;
    v11 = a4;
    v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = DMFErrorWithCodeAndUserInfo();
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000FBD0(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (!result)
  {
    return result;
  }

  v5 = 0;
  while (1)
  {
    values = CFArrayGetValueAtIndex(a2, v5);
    if (*(*(a1 + 32) + 8) == 1)
    {
      break;
    }

    v11 = MRAVOutputDeviceCopyName();
    v12 = [v11 isEqualToString:*(a1 + 40)];

    if (v12)
    {
      goto LABEL_17;
    }

LABEL_15:
    ++v5;
    result = [a2 count];
    if (v5 >= result)
    {
      return result;
    }
  }

  v6 = MRAVOutputDeviceCopyMACAddress();
  v7 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", ether_aton([*(a1 + 40) UTF8String]), objc_msgSend(v6, "length"));
  v8 = [v6 bytes];
  v9 = [v7 bytes];
  if (![v6 length])
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
  do
  {
    if ([v6 length] - 1 <= v10)
    {
      if ((*(v9 + 5) ^ *(v8 + 5)) > 0xF)
      {
        goto LABEL_14;
      }
    }

    else if (v10[v8] != v10[v9])
    {
      goto LABEL_14;
    }

    ++v10;
  }

  while ([v6 length] > v10);

LABEL_17:
  v13 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v14 = CFAutorelease(v13);
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10000FE48(id a1)
{
  qword_1000FEF30 = [objc_alloc(objc_opt_class()) initPrivate];

  _objc_release_x1();
}

void sub_100010204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100010230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained manifest];

  return v2;
}

void sub_100010488(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 bundleIdentifier];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_100010E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010E34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010E4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained manifest];
  v3 = [v2 objectForKeyedSubscript:@"metadataByBundleID"];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001103C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007CB90(a1);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100011320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011350(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void sub_10001217C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _metadataForBundleIdentifier:*(a1 + 40)];
  if (v7)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    v7 = [*(a1 + 32) _newMetadataDictionary];
LABEL_4:
    v8 = [v7 objectForKeyedSubscript:@"Attributes"];
    [v8 setObject:v5 forKeyedSubscript:@"Removable"];

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v17 = 0;
    v11 = [v9 _setMetadata:v7 forBundleIdentifier:v10 error:&v17];
    v12 = v17;
    v13 = v12;
    if ((v11 & 1) == 0 && !v12)
    {
      v13 = DMFErrorWithCodeAndUserInfo();
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      if (v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      (*(v14 + 16))(v14, v15);
    }

    goto LABEL_13;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v6);
  }

LABEL_13:
}

void sub_1000122A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007CC18(a1);
    }

    v7 = *(*(a1 + 48) + 16);
LABEL_5:
    v7();
    goto LABEL_13;
  }

  if (a2 != 3)
  {
    v10 = *(a1 + 56);
    if (v10 != a2)
    {
      v12 = *(a1 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100012468;
      v13[3] = &unk_1000CDED8;
      v14 = v12;
      v16 = *(a1 + 48);
      v15 = *(a1 + 40);
      [IXAppInstallCoordinator setRemovability:v10 forAppWithBundleID:v14 byClient:3 completion:v13];

      goto LABEL_13;
    }

    v11 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v8 = DMFErrorWithCodeAndUserInfo();
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10007CC90(a1);
  }

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

void sub_100012468(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007CC90(a1);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

id sub_10001262C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FEF60;
  v7 = qword_1000FEF60;
  if (!qword_1000FEF60)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100016990;
    v3[3] = &unk_1000CDFE0;
    v3[4] = &v4;
    sub_100016990(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000126F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100014018(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _metadataByBundleIdentifier];
  v3 = [v2 allKeys];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000150F0(id a1)
{
  v22[0] = &off_1000D77F0;
  v22[1] = &off_1000D7808;
  v23[0] = &off_1000D7880;
  v23[1] = &off_1000D77D8;
  v24[0] = &off_1000D7868;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v9;
  v24[1] = &off_1000D77D8;
  v20[0] = &off_1000D7898;
  v20[1] = &off_1000D78B0;
  v21[0] = &off_1000D77F0;
  v21[1] = &off_1000D7868;
  v1 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v1;
  v24[2] = &off_1000D7808;
  v18[0] = &off_1000D7898;
  v18[1] = &off_1000D78B0;
  v19[0] = &off_1000D77F0;
  v19[1] = &off_1000D7868;
  v18[2] = &off_1000D77F0;
  v18[3] = &off_1000D77D8;
  v19[2] = &off_1000D7880;
  v19[3] = &off_1000D7850;
  v18[4] = &off_1000D7808;
  v19[4] = &off_1000D7850;
  v2 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
  v25[2] = v2;
  v24[3] = &off_1000D7820;
  v16[0] = &off_1000D77D8;
  v16[1] = &off_1000D7808;
  v17[0] = &off_1000D7850;
  v17[1] = &off_1000D7850;
  v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v25[3] = v3;
  v24[4] = &off_1000D78C8;
  v14[0] = &off_1000D78B0;
  v14[1] = &off_1000D7808;
  v15[0] = &off_1000D7868;
  v15[1] = &off_1000D77D8;
  v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v25[4] = v4;
  v24[5] = &off_1000D77F0;
  v12[0] = &off_1000D78B0;
  v12[1] = &off_1000D7808;
  v13[0] = &off_1000D7868;
  v13[1] = &off_1000D77D8;
  v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v25[5] = v5;
  v24[6] = &off_1000D7880;
  v10[0] = &off_1000D78B0;
  v10[1] = &off_1000D7808;
  v11[0] = &off_1000D7868;
  v11[1] = &off_1000D77D8;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v25[6] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];
  v8 = qword_1000FEF40;
  qword_1000FEF40 = v7;
}

void sub_1000159D0(id a1)
{
  v3[0] = &off_1000D7808;
  v3[1] = &off_1000D78E0;
  v4[0] = &off_1000D77D8;
  v4[1] = &off_1000D7808;
  v3[2] = &off_1000D7898;
  v3[3] = &off_1000D7820;
  v4[2] = &off_1000D77F0;
  v4[3] = &off_1000D78F8;
  v3[4] = &off_1000D78B0;
  v3[5] = &off_1000D7910;
  v4[4] = &off_1000D7868;
  v4[5] = &off_1000D7808;
  v3[6] = &off_1000D77F0;
  v3[7] = &off_1000D7868;
  v4[6] = &off_1000D7880;
  v4[7] = &off_1000D78F8;
  v3[8] = &off_1000D77D8;
  v4[8] = &off_1000D78F8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = qword_1000FEF50;
  qword_1000FEF50 = v1;
}

void sub_100015DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100015E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _metadataByBundleIdentifier];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000160B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1000160E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [WeakRetained _metadataByBundleIdentifier];
  v5 = (a1 + 32);
  [v4 setObject:v2 forKeyedSubscript:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 64));
  v7 = *(v5[3] + 8);
  obj = *(v7 + 40);
  LOBYTE(WeakRetained) = [v6 writeManagementInformationToDiskWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(v5[2] + 8) + 24) = WeakRetained;

  if ((*(*(v5[2] + 8) + 24) & 1) == 0)
  {
    v8 = DMFAppLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007D354(v5);
    }
  }
}

void sub_100016468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v4 = *(a1 + 40);
    v11 = NSUnderlyingErrorKey;
    v12 = a4;
    v5 = a4;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = DMFErrorWithCodeAndUserInfo();
    (*(v4 + 16))(v4, 0, v7);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v6 = 0;
    [v9 _getEnterpriseAppMetadataFromData:a2 completion:v10];
  }
}

Class sub_100016990(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000FEF68)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100016ABC;
    v3[4] = &unk_1000CE018;
    v3[5] = v3;
    v4 = off_1000CE000;
    v5 = 0;
    qword_1000FEF68 = _sl_dlopen();
  }

  if (!qword_1000FEF68)
  {
    sub_10007D530(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PRSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10007D4B4();
  }

  qword_1000FEF60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100016ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FEF68 = result;
  return result;
}

void sub_100016CBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if (![v8 updateState])
        {
          v9 = *(a1 + 32);
          v10 = [v8 bundleIdentifier];
          [v9 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016E7C;
  v15[3] = &unk_1000CE0F8;
  v11 = *(a1 + 40);
  v16 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = *(a1 + 72);
  [v11 getUpdatesWithCompletionBlock:v15];
}

void sub_100016E7C(id *a1, void *a2)
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v4)
  {
    v5 = *v43;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        if (![v7 updateState])
        {
          v8 = a1[4];
          v9 = [v7 bundleIdentifier];
          [v8 addObject:v9];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v4);
  }

  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Apps with available updates: %{public}@", &buf, 0xCu);
  }

  v12 = [a1[5] bundleIdentifiers];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001725C;
  v37[3] = &unk_1000CE040;
  v13 = a1[5];
  v14 = a1[6];
  v38 = v13;
  v39 = v14;
  v15 = v12;
  v40 = v15;
  v41 = a1[7];
  v16 = objc_retainBlock(v37);
  v17 = objc_opt_new();
  v18 = [a1[5] type];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = sub_100017308;
  v49 = sub_100017318;
  v19 = [a1[5] propertyKeys];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [a1[6] _allPropertyKeys];
  }

  v50 = v21;

  v22 = [a1[6] jobManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000173B4;
  v27[3] = &unk_1000CE0D0;
  v23 = a1[5];
  p_buf = &buf;
  v28 = v23;
  v32 = &stru_1000CE080;
  v24 = v16;
  v33 = v24;
  v36 = v18;
  v29 = a1[4];
  v25 = v17;
  v26 = a1[6];
  v30 = v25;
  v31 = v26;
  v34 = a1[8];
  [v22 getJobsUsingBlock:v27];

  _Block_object_dispose(&buf, 8);
}

uint64_t sub_10001725C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) managedAppsOnly] && (objc_msgSend(*(a1 + 40), "managementInformationForBundleIdentifier:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if ((v8 || *(a1 + 56)) && ([v8 containsObject:v5] & 1) == 0)
    {
      v9 = [*(a1 + 56) isEqualToNumber:v6];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

uint64_t sub_100017308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100017320(id a1, ASDJob *a2)
{
  v2 = a2;
  if ([(ASDJob *)v2 storeItemID])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(ASDJob *)v2 bundleID];
    if ([v4 hasPrefix:@"com.apple."])
    {
      v5 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v4 error:0];
      v3 = v5 != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1000173B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) managedAppsOnly])
  {
    v4 = [*(*(*(a1 + 88) + 8) + 40) arrayByAddingObject:@"managementInformation"];
    v5 = *(*(a1 + 88) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v43 = *v60;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v60 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 bundleID];
        v13 = (*(*(a1 + 64) + 16))();
        v14 = *(a1 + 72);
        v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 storeItemID]);
        if (!(*(v14 + 16))(v14, v12, v15))
        {
          goto LABEL_13;
        }

        v16 = 1;
        if (!v13)
        {
          v16 = 2;
        }

        v17 = *(a1 + 96) & v16;

        if (v17)
        {
          v15 = [[DMFApp alloc] initWithJob:v10 hasUpdateAvailable:objc_msgSend(*(a1 + 40) propertyKeys:{"containsObject:", v12), *(*(*(a1 + 88) + 8) + 40)}];
          [*(a1 + 48) setObject:v15 forKeyedSubscript:v12];
LABEL_13:
        }

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v8);
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100017860;
  v53[3] = &unk_1000CE0A8;
  v18 = *(a1 + 96);
  v53[4] = *(a1 + 56);
  v58 = v18;
  v56 = *(a1 + 72);
  v19 = *(a1 + 40);
  v20 = *(a1 + 88);
  v54 = v19;
  v57 = v20;
  v55 = *(a1 + 48);
  v21 = objc_retainBlock(v53);
  v22 = *(a1 + 56);
  v23 = [objc_opt_class() enumeratorForOrdinaryApps];
  v65[0] = v23;
  v24 = *(a1 + 56);
  v25 = [objc_opt_class() enumeratorForUserAppPlaceholders];
  v65[1] = v25;
  v26 = *(a1 + 56);
  v27 = [objc_opt_class() enumeratorForSystemAppPlaceholders];
  v65[2] = v27;
  v28 = [NSArray arrayWithObjects:v65 count:3];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = v28;
  v29 = [v41 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v44 = *v50;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v32 = *(*(&v49 + 1) + 8 * j);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v45 objects:v63 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v46;
          do
          {
            for (k = 0; k != v35; k = k + 1)
            {
              if (*v46 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v45 + 1) + 8 * k);
              v39 = objc_autoreleasePoolPush();
              (v21[2])(v21, v38);
              objc_autoreleasePoolPop(v39);
            }

            v35 = [v33 countByEnumeratingWithState:&v45 objects:v63 count:16];
          }

          while (v35);
        }
      }

      v30 = [v41 countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v30);
  }

  v40 = *(a1 + 48);
  (*(*(a1 + 80) + 16))();
}

void sub_100017860(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 bundleIdentifier];
  if (v3)
  {
    v4 = [v9 compatibilityObject];
    v5 = [*(a1 + 32) appTypeFromProxy:v4];
    if (v5 == 1)
    {
      if ((*(a1 + 72) & 4) != 0)
      {
        if ([v9 isDeletableSystemApplication])
        {
          v5 = 4;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }
    }

    if ((*(a1 + 72) & v5) != 0)
    {
      v6 = *(a1 + 56);
      v7 = [v4 itemID];
      LODWORD(v6) = (*(v6 + 16))(v6, v3, v7);

      if (v6)
      {
        v8 = [[DMFApp alloc] initWithApplicationRecord:v9 hasUpdateAvailable:objc_msgSend(*(a1 + 40) propertyKeys:{"containsObject:", v3), *(*(*(a1 + 64) + 8) + 40)}];
        [*(a1 + 48) setObject:v8 forKeyedSubscript:v3];
      }
    }
  }
}

void sub_100017A7C(id a1)
{
  v3[0] = @"type";
  v3[1] = @"displayName";
  v3[2] = @"bundleIdentifier";
  v3[3] = @"storeItemIdentifier";
  v3[4] = @"externalVersionIdentifier";
  v3[5] = @"distributorIdentifier";
  v3[6] = @"version";
  v3[7] = @"shortVersion";
  v3[8] = @"staticUsage";
  v3[9] = @"dynamicUsage";
  v3[10] = @"onDemandResourcesUsage";
  v3[11] = @"sharedUsage";
  v3[12] = @"installationState";
  v3[13] = @"isPlaceholder";
  v3[14] = @"isRestricted";
  v3[15] = @"isBlocked";
  v3[16] = @"isUserBasedVPP";
  v3[17] = @"isDeviceBasedVPP";
  v3[18] = @"isLicenseExpired";
  v3[19] = @"isLicenseRevoked";
  v3[20] = @"isUPP";
  v3[21] = @"isValidated";
  v3[22] = @"isAppClip";
  v3[23] = @"isAppStoreVendable";
  v3[24] = @"isBetaApp";
  v3[25] = @"isAdHocCodeSigned";
  v3[26] = @"hasUpdateAvailable";
  v3[27] = @"VPNUUIDString";
  v3[28] = @"cellularSliceUUIDString";
  v3[29] = @"contentFilterUUIDString";
  v3[30] = @"DNSProxyUUIDString";
  v3[31] = @"relayUUIDString";
  v3[32] = @"associatedDomains";
  v3[33] = @"associatedDomainsEnableDirectDownloads";
  v3[34] = @"removable";
  v3[35] = @"tapToPayScreenLock";
  v3[36] = @"allowUserToHide";
  v3[37] = @"allowUserToLock";
  v3[38] = @"configuration";
  v3[39] = @"feedback";
  v3[40] = @"sourceIdentifier";
  v3[41] = @"managementInformation";
  v1 = [NSArray arrayWithObjects:v3 count:42];
  v2 = qword_1000FEF70;
  qword_1000FEF70 = v1;
}

void sub_100017D8C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    (*(v10 + 16))(v10, 0);
  }

  else
  {
    if (v8)
    {
      v13 = NSUnderlyingErrorKey;
      v14 = v8;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = DMFErrorWithCodeAndUserInfo();
      (*(v10 + 16))(v10, v12);
    }

    else
    {
      v11 = DMFErrorWithCodeAndUserInfo();
      (*(v10 + 16))(v10, v11);
    }
  }
}

void sub_100018054(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(a1 + 56) == 1)
  {
    [*(a1 + 32) _installUserAppForRequest:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10001822C(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = *(a1 + 32);
      v10 = [v8 bundleID];
      LOBYTE(v9) = [v9 isEqualToString:v10];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 persistentID]);

    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 40);
    v21 = v11;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001844C;
    v15[3] = &unk_1000CE1B8;
    v16 = *(a1 + 48);
    [v12 resumeJobsWithIDs:v13 completionBlock:v15];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = *(a1 + 48);
    v11 = DMFErrorWithCodeAndUserInfo();
    (*(v14 + 16))(v14, v11);
  }
}

void sub_10001844C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    if (v5)
    {
      v10 = NSUnderlyingErrorKey;
      v11 = v5;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v9);
    }

    else
    {
      v8 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v8);
    }
  }
}

void sub_10001878C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) allowFreePurchases])
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Install free app for request: %{public}@", &v6, 0xCu);
    }

    [*(a1 + 40) _downloadAppForRequest:*(a1 + 32) type:3 completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100018990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = a4;
    v5 = a4;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = DMFErrorWithCodeAndUserInfo();
    (*(v4 + 16))(v4, v7);
  }

  else
  {
    v8 = *(v4 + 16);
    v6 = 0;
    v8(v4, 0);
  }
}

void sub_100018BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018C1C(id a1)
{
  v3 = objc_opt_new();
  [v3 setShouldFilterExternalOriginatedDownloads:0];
  v1 = [[ASDJobManager alloc] initWithOptions:v3];
  v2 = qword_1000FEF80;
  qword_1000FEF80 = v1;
}

void sub_100018CCC(id a1)
{
  qword_1000FEF90 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000190A4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 authenticatedAccount];
    (*(v3 + 16))(v3, v6, 0);
  }
}

void sub_1000193A8(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = *(a1 + 32);
    v14 = [objc_opt_class() changeTypeAsString:a4];
    v15 = 138544130;
    v16 = v12;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Send app store request result: success: %{public}@, metadata: %{public}@, change type: %{public}@, error: %{public}@", &v15, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000199C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v7 = NSUnderlyingErrorKey;
    v8 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v6 = *(v2 + 16);
    v4 = 0;
    v6(v2, 0);
  }
}

void sub_100019BDC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 bundleIdentifier];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10001A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A3B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 != 1)
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007D740(a1);
    }
  }

  if (v5)
  {
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    _CFPreferencesAppSynchronizeWithContainer();
    v9 = *(a1 + 32);
    v10 = _CFPreferencesCopyAppValueWithContainer();
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = *(*(a1 + 40) + 8);
        v12 = v10;
        v13 = *(v11 + 40);
        *(v11 + 40) = v12;
      }

      else
      {
        v13 = DMFAppLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10007D7C4(v8);
        }
      }
    }
  }

  else
  {
    v10 = DMFAppLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007D830(a1);
    }
  }
}

void sub_10001A6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A6C0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 != 1)
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007D898(a1);
    }
  }

  if (v5)
  {
    v8 = a1[4];
    v7 = a1[5];
    _CFPreferencesSetAppValueWithContainer();
    v9 = a1[4];
    _CFPreferencesAppSynchronizeWithContainer();
    [NSArray arrayWithObject:a1[4]];
    _CFPreferencesPostValuesChangedInDomains();
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v10 = DMFAppLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007D91C(a1);
    }
  }
}

void sub_10001AB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setIsStoreApp:1];
  [v4 setBundleIdentifier:*(a1 + 32)];
  [v4 setStoreItemIdentifier:*(a1 + 40)];
  [*(a1 + 48) _applyStoreDictionary:v3 toAppMetadata:v4];

  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      *buf = 138543874;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Get metadata with device lookup for bundle identifier: %{public}@, store item identifier: %{public}@, persona: %{public}@", buf, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001AD1C;
    v16[3] = &unk_1000CE360;
    v14 = *(a1 + 64);
    v15 = *(a1 + 48);
    v18 = v14;
    v16[4] = v15;
    v17 = v4;
    [v12 sendAppRequestWithBundleIdentifier:v10 storeItemIdentifier:v11 personaIdentifier:v13 type:2 skipDownloads:1 completion:v16];
  }
}

void sub_10001AD1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = DMFAppLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007D984(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _applyStoreDictionary:a2 toAppMetadata:*(a1 + 40)];
    [*(a1 + 40) setNeedsRedownload:a3 == 4];
    v15 = [*(a1 + 40) bundleIdentifier];

    v16 = *(a1 + 48);
    if (v15)
    {
      (*(v16 + 16))(*(a1 + 48), *(a1 + 40), 0);
    }

    else
    {
      v17 = DMFErrorWithCodeAndUserInfo();
      (*(v16 + 16))(v16, 0, v17);
    }
  }
}

void sub_10001AF20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10001AF3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10001B008(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 40);
    v18 = NSUnderlyingErrorKey;
    v19 = a3;
    v7 = a3;
    v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = DMFErrorWithCodeAndUserInfo();
    (*(v6 + 16))(v6, v9);
  }

  else
  {
    v10 = 0;
    v8 = [[SSAuthenticationContext alloc] initWithAccount:v5];
    v11 = [SSRedeemCodesRequest alloc];
    v17 = *(a1 + 32);
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v9 = [v11 initWithRedeemCodes:v12];

    [v9 setAuthenticationContext:v8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001B1D4;
    v14[3] = &unk_1000CE3F8;
    v13 = *(a1 + 40);
    v15 = 0;
    v16 = v13;
    [v9 startWithRedeemResponseBlock:v14];
  }
}

void sub_10001B1D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v11 = NSUnderlyingErrorKey;
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v10);
    }

    else
    {
      v9 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v9);
    }
  }

  else
  {
    (*(v7 + 16))(*(a1 + 40), 0);
  }
}

void sub_10001B3E4(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = *(a1 + 32);
      v10 = [v8 bundleID];
      LOBYTE(v9) = [v9 isEqualToString:v10];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 persistentID]);

    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 40);
    v21 = v11;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001B604;
    v15[3] = &unk_1000CE1B8;
    v16 = *(a1 + 48);
    [v12 cancelJobsWithIDs:v13 completionBlock:v15];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = *(a1 + 48);
    v11 = DMFErrorWithCodeAndUserInfo();
    (*(v14 + 16))(v14, v11);
  }
}

void sub_10001B604(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    if (v5)
    {
      v10 = NSUnderlyingErrorKey;
      v11 = v5;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v9);
    }

    else
    {
      v8 = DMFErrorWithCodeAndUserInfo();
      (*(v7 + 16))(v7, v8);
    }
  }
}

void sub_10001B828(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    sub_10007DAD4(a3, a1);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B8F0;
  v6[3] = &unk_1000CDE60;
  v6[4] = v5;
  v7 = v4;
  v8 = *(a1 + 48);
  [v5 _uninstallAppWithBundleIdentifier:v7 completion:v6];
}

void sub_10001B8F0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 removeTerminationAssertionForBundleIdentifier:v4];
  (*(a1[6] + 16))();
}

void sub_10001BB20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BBDC;
  v4[3] = &unk_1000CE470;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [IXAppInstallCoordinator uninstallAppWithBundleID:v2 options:v3 completion:v4];
}

void sub_10001BBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 resumeSync];
  (*(*(a1 + 40) + 16))();
}

void sub_10001C204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateEndedForLifeCycle:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10001C4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DMFAppLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007DB5C(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DMF successfully restarted app: %{public}@", &v8, 0xCu);
  }
}

void sub_10001C90C(id a1)
{
  qword_1000FEFA0 = objc_opt_new();

  _objc_release_x1();
}

void sub_10001D174(id a1)
{
  v1 = [DMFApp stringForInstallationState:0];
  v12[0] = v1;
  v13[0] = &off_1000D7928;
  v2 = [DMFApp stringForInstallationState:1];
  v12[1] = v2;
  v13[1] = &off_1000D7940;
  v3 = [DMFApp stringForInstallationState:2];
  v12[2] = v3;
  v13[2] = &off_1000D7958;
  v4 = [DMFApp stringForInstallationState:3];
  v12[3] = v4;
  v13[3] = &off_1000D7970;
  v5 = [DMFApp stringForInstallationState:4];
  v12[4] = v5;
  v13[4] = &off_1000D7988;
  v6 = [DMFApp stringForInstallationState:5];
  v12[5] = v6;
  v13[5] = &off_1000D79A0;
  v7 = [DMFApp stringForInstallationState:6];
  v12[6] = v7;
  v13[6] = &off_1000D79B8;
  v8 = [DMFApp stringForInstallationState:7];
  v12[7] = v8;
  v13[7] = &off_1000D79D0;
  v9 = [DMFApp stringForInstallationState:8];
  v12[8] = v9;
  v13[8] = &off_1000D79E8;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:9];
  v11 = qword_1000FEFB0;
  qword_1000FEFB0 = v10;
}

void sub_10001D37C(uint64_t a1)
{
  v2 = qword_1000FEFB0;
  v6 = [*(a1 + 32) stateMachine];
  v3 = [v6 currentState];
  v4 = [v3 name];
  v5 = [v2 objectForKeyedSubscript:v4];
  *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntegerValue];
}

uint64_t sub_10001D5BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D5D4(uint64_t a1)
{
  v6 = [*(a1 + 32) stateMachine];
  v2 = [v6 currentState];
  v3 = [v2 name];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001D6E0(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 willStartInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001D914(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didStartInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001DB48(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didPauseInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001DD7C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didResumeInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001DFB0(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didCancelInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001E1E4(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFailInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001E418(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFinishInstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001E64C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 willStartUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001E880(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didStartUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001EAB4(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didPauseUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001ECE8(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didResumeUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001EF1C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didCancelUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001F150(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFailUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001F384(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFinishUpdatingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001F5B8(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 willStartUninstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001F7EC(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFailUninstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001FA20(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [CATStateMachineEvent eventWithTrigger:v3 context:0];
  [v2 transitionWithTriggeringEvent:v4];

  v5 = +[NSDate now];
  [*(a1 + 32) setLastModified:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didFinishUninstallingForLifeCycle:*(a1 + 32)];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001FC74(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addPointer:*(a1 + 40)];
}

void sub_10001FD7C(uint64_t a1)
{
  v9 = [*(a1 + 32) observers];
  v2 = [v9 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 40);
      if (v5 == [v9 pointerAtIndex:v4])
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

    [v9 removePointerAtIndex:v4];
    if (![v9 count])
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = [*(a1 + 32) bundleIdentifier];
      [v7 _removeLifeCycleForBundleIdentifier:v8];
    }
  }

LABEL_8:
}

void sub_10001FED4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didChangeInstallingProgressForLifeCycle:*(a1 + 32)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100020080(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didChangeUpdatingProgressForLifeCycle:*(a1 + 32)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000202F8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didResetStateForLifeCycle:*(a1 + 32) state:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100020A58(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 4)
  {
    if (v4)
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installed -> applicationsWillInstall -> willStartUpdating", &v9, 0xCu);
    }

    [*(a1 + 32) willStartUpdating];
  }

  else if (v2)
  {
    if (v4)
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v8 = [*(a1 + 32) currentStateName];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsWillInstall -> <no change>", &v9, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalled -> applicationsWillInstall -> willStartInstalling", &v9, 0xCu);
    }

    [*(a1 + 32) willStartInstalling];
  }
}

void sub_100020C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentState];
  if (v4 <= 3)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_26;
      }

      v10 = DMFAppLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) bundleIdentifier];
        v22 = 138543362;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] queued -> applicationInstallsDidStart -> didStartInstalling", &v22, 0xCu);
      }
    }

    else
    {
      v16 = DMFAppLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) bundleIdentifier];
        v22 = 138543362;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalled -> applicationInstallsDidStart -> willStartInstalling -> didStartInstalling", &v22, 0xCu);
      }

      [*(a1 + 32) willStartInstalling];
    }

    [*(a1 + 32) didStartInstalling];
  }

  else
  {
    switch(v4)
    {
      case 4:
        v12 = DMFAppLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 32) bundleIdentifier];
          v22 = 138543362;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installed -> applicationInstallsDidStart -> willStartUpdating -> didStartUpdating", &v22, 0xCu);
        }

        [*(a1 + 32) willStartUpdating];
        break;
      case 5:
        v14 = DMFAppLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(a1 + 32) bundleIdentifier];
          v22 = 138543362;
          v23 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] queued -> applicationInstallsDidStart -> didStartUpdating", &v22, 0xCu);
        }

        break;
      case 8:
        v5 = [v3 appState];
        if ([v5 isDowngraded])
        {
          v6 = [v3 appState];
          v7 = [v6 isPlaceholder];

          if (v7)
          {
            v8 = DMFAppLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = [*(a1 + 32) bundleIdentifier];
              v22 = 138543362;
              v23 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalling -> applicationInstallsDidStart -> didFinishUninstalling (special case)", &v22, 0xCu);
            }

            [*(a1 + 32) didFinishUninstalling];
          }
        }

        else
        {
        }

        v18 = DMFAppLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 32) bundleIdentifier];
          v22 = 138543362;
          v23 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalling -> applicationInstallsDidStart -> <no change> (not special case)", &v22, 0xCu);
        }

LABEL_31:

        goto LABEL_32;
      default:
LABEL_26:
        v18 = DMFAppLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(a1 + 32) bundleIdentifier];
          v20 = [*(a1 + 32) currentStateName];
          v22 = 138543618;
          v23 = v19;
          v24 = 2114;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationInstallsDidStart -> <no change>", &v22, 0x16u);
        }

        goto LABEL_31;
    }

    [*(a1 + 32) didStartUpdating];
  }

LABEL_32:
}

void sub_1000210DC(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 6)
  {
    if (v4)
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] updating -> applicationInstallsDidChange -> didChangeUpdatingProgress", &v9, 0xCu);
    }

    [*(a1 + 32) didChangeUpdatingProgress];
  }

  else if (v2 == 2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installing -> applicationInstallsDidChange -> didChangeInstallingProgress", &v9, 0xCu);
    }

    [*(a1 + 32) didChangeInstallingProgress];
  }

  else
  {
    if (v4)
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v8 = [*(a1 + 32) currentStateName];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationInstallsDidChange -> <no change>", &v9, 0x16u);
    }
  }
}

void sub_1000212FC(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 6)
  {
    if (v4)
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] updating -> applicationInstallsDidPause -> didPauseUpdating", &v9, 0xCu);
    }

    [*(a1 + 32) didPauseUpdating];
  }

  else if (v2 == 2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installing -> applicationInstallsDidPause -> didPauseInstalling", &v9, 0xCu);
    }

    [*(a1 + 32) didPauseInstalling];
  }

  else
  {
    if (v4)
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v8 = [*(a1 + 32) currentStateName];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationInstallsDidPause -> <no change>", &v9, 0x16u);
    }
  }
}

void sub_10002151C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 7)
  {
    if (v4)
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] update paused -> applicationInstallsDidResume -> didResumeUpdating", &v9, 0xCu);
    }

    [*(a1 + 32) didResumeUpdating];
  }

  else if (v2 == 3)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installation paused -> applicationInstallsDidResume -> didResumeInstalling", &v9, 0xCu);
    }

    [*(a1 + 32) didResumeInstalling];
  }

  else
  {
    if (v4)
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v8 = [*(a1 + 32) currentStateName];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationInstallsDidResume -> <no change>", &v9, 0x16u);
    }
  }
}

void sub_10002173C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  if ((v2 - 5) < 3)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <update queued | updating | update paused> -> applicationInstallsDidCancel -> didCancelUpdating", &v10, 0xCu);
    }

    [*(a1 + 32) didCancelUpdating];
  }

  else if ((v2 - 1) > 2)
  {
    v7 = DMFAppLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) bundleIdentifier];
      v9 = [*(a1 + 32) currentStateName];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationInstallsDidCancel -> <no change>", &v10, 0x16u);
    }
  }

  else
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <installation queued | installing | installation paused> -> applicationInstallsDidCancel -> didCancelInstalling", &v10, 0xCu);
    }

    [*(a1 + 32) didCancelInstalling];
  }
}

void sub_100021988(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  if (v2 <= 4)
  {
    if ((v2 - 2) < 2)
    {
      v3 = DMFAppLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) bundleIdentifier];
        v14 = 138543362;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <installing | installation paused> -> applicationsDidFailToInstall -> didFailInstalling", &v14, 0xCu);
      }

LABEL_14:
      [*(a1 + 32) didFailInstalling];
      return;
    }

    if (v2 == 1)
    {
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) bundleIdentifier];
        v14 = 138543362;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installation queued -> applicationsDidFailToInstall -> didStartInstalling -> didFailInstalling", &v14, 0xCu);
      }

      [*(a1 + 32) didStartInstalling];
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if ((v2 - 6) < 2)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <updating | update paused> -> applicationsDidFailToInstall -> didFailUpdating", &v14, 0xCu);
    }

LABEL_19:
    [*(a1 + 32) didFailUpdating];
    return;
  }

  if (v2 == 5)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) bundleIdentifier];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] update queued -> applicationsDidFailToInstall -> didStartUpdating -> didFailUpdating", &v14, 0xCu);
    }

    [*(a1 + 32) didStartUpdating];
    goto LABEL_19;
  }

LABEL_20:
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) bundleIdentifier];
    v13 = [*(a1 + 32) currentStateName];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsDidFailToInstall -> <no change>", &v14, 0x16u);
  }
}

void sub_100021CCC(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 <= 4)
  {
    switch(v2)
    {
      case 1:
        if (v4)
        {
          v7 = [*(a1 + 32) bundleIdentifier];
          v13 = 138543362;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installation queued -> applicationsDidInstall -> didStartInstalling -> didFinishInstalling", &v13, 0xCu);
        }

        [*(a1 + 32) didStartInstalling];
        goto LABEL_26;
      case 2:
        if (v4)
        {
          v11 = [*(a1 + 32) bundleIdentifier];
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installing -> applicationsDidInstall -> didFinishInstalling", &v13, 0xCu);
        }

        goto LABEL_26;
      case 3:
        if (v4)
        {
          v5 = [*(a1 + 32) bundleIdentifier];
          v13 = 138543362;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installation paused -> applicationsDidInstall -> didResumeInstalling -> didFinishInstalling", &v13, 0xCu);
        }

        [*(a1 + 32) didResumeInstalling];
LABEL_26:
        [*(a1 + 32) didFinishInstalling];
        return;
    }

    goto LABEL_20;
  }

  switch(v2)
  {
    case 5:
      if (v4)
      {
        v8 = [*(a1 + 32) bundleIdentifier];
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] update queued -> applicationsDidInstall -> didStartUpdating -> didFinishUpdating", &v13, 0xCu);
      }

      [*(a1 + 32) didStartUpdating];
      goto LABEL_30;
    case 6:
      if (v4)
      {
        v12 = [*(a1 + 32) bundleIdentifier];
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] updating -> applicationsDidInstall -> didFinishUpdating", &v13, 0xCu);
      }

      goto LABEL_30;
    case 7:
      if (v4)
      {
        v6 = [*(a1 + 32) bundleIdentifier];
        v13 = 138543362;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] update paused -> applicationsDidInstall -> didResumeUpdating -> didFinishUpdating", &v13, 0xCu);
      }

      [*(a1 + 32) didResumeUpdating];
LABEL_30:
      [*(a1 + 32) didFinishUpdating];
      return;
  }

LABEL_20:
  if (v4)
  {
    v9 = [*(a1 + 32) bundleIdentifier];
    v10 = [*(a1 + 32) currentStateName];
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsDidInstall -> <no change>", &v13, 0x16u);
  }
}

void sub_100022084(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  if ((v2 - 1) < 3)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <installation queued | installing | installation paused> -> applicationsWillUninstall -> didCancelInstalling", &v12, 0xCu);
    }

    [*(a1 + 32) didCancelInstalling];
  }

  else if ((v2 - 5) >= 3)
  {
    if (v2 == 4)
    {
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) bundleIdentifier];
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] installed -> applicationsWillUninstall -> willStartUninstalling", &v12, 0xCu);
      }

      [*(a1 + 32) willStartUninstalling];
    }

    else
    {
      v9 = DMFAppLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) bundleIdentifier];
        v11 = [*(a1 + 32) currentStateName];
        v12 = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsWillUninstall -> <no change>", &v12, 0x16u);
      }
    }
  }

  else
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <update queued | updating | update paused> -> applicationsWillUninstall -> didCancelUpdating", &v12, 0xCu);
    }

    [*(a1 + 32) didCancelUpdating];
  }
}

void sub_100022348(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = DMFAppLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 8)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalling -> applicationsDidFailToUninstall -> didFailUninstalling", &v8, 0xCu);
    }

    [*(a1 + 32) didFailUninstalling];
  }

  else
  {
    if (v4)
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v7 = [*(a1 + 32) currentStateName];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsDidFailToUninstall -> <no change>", &v8, 0x16u);
    }
  }
}

void sub_100022504(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  if ((v2 - 1) < 3)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleIdentifier];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <installation queued | installing | installation paused> -> applicationsDidUninstall -> didCancelInstalling", &v12, 0xCu);
    }

    [*(a1 + 32) didCancelInstalling];
  }

  else if ((v2 - 5) >= 3)
  {
    if (v2 == 8)
    {
      v7 = DMFAppLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) bundleIdentifier];
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] uninstalling -> applicationsDidUninstall -> didFinishUninstalling", &v12, 0xCu);
      }

      [*(a1 + 32) didFinishUninstalling];
    }

    else
    {
      v9 = DMFAppLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) bundleIdentifier];
        v11 = [*(a1 + 32) currentStateName];
        v12 = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <%{public}@> -> applicationsDidUninstall -> <no change>", &v12, 0x16u);
      }
    }
  }

  else
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lifecycle event: [%{public}@] <update queued | updating | update paused> -> applicationsDidUninstall -> didCancelUpdating", &v12, 0xCu);
    }

    [*(a1 + 32) didCancelUpdating];
  }
}

id sub_100022CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 endOperationWithError:?];
  }

  else
  {
    return [v4 runWithRequest:*(a1 + 40) bundleIdentifier:a2];
  }
}

void sub_100022F64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v30 = 0;
  v9 = [CEMAssetBase declarationForPayload:v8 error:&v30];
  v10 = v30;

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v9 unknownPayloadKeys];
      v12 = [v11 allObjects];

      if ([v12 count])
      {
        v13 = *(a1 + 32);
        v36 = DMFDeclarationStateReasonKey;
        v33[0] = DMFDeclarationStateReasonKey;
        v33[1] = DMFCEMReasonCodeUnknownPayloadKeys;
        v34[0] = DMFCEMReasonCodeUnknownPayloadKeys;
        v34[1] = v12;
        v14 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
        v35 = v14;
        v15 = [NSArray arrayWithObjects:&v35 count:1];
        v37 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v13 addStatusEntriesFromDictionary:v16];
      }

      v17 = [*(a1 + 32) assetResolver];
      v29 = v10;
      v18 = [v9 dmf_installAssetOperationWithReferenceResolver:v17 error:&v29];
      v19 = v29;

      v20 = DMFConfigurationEngineLog();
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = [v6 identifier];
          *buf = 138543362;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%{public}@: Asset will install", buf, 0xCu);
        }

        v23 = [*(a1 + 32) taskOperationProvider];
        v24 = [*(a1 + 32) database];
        [v23 prepareToRunOperation:v18 withContext:0 withDatabase:v24];

        [v18 addTarget:*(a1 + 32) selector:"installOperationDidFinish:asset:" forOperationEvents:6 userInfo:v9];
        [*(a1 + 32) enqueueOperation:v18];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10007DE28();
        }

        [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v19];
      }

      v10 = v19;
    }

    else
    {
      v26 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10007DD58();
      }

      v27 = *(a1 + 32);
      v28 = DMFErrorWithCodeAndUserInfo();
      [v27 endOperationMarkingPayloadMetadata:v6 failedWithError:v28];
    }
  }

  else
  {
    v25 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10007DED4();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v10];
  }
}

void sub_10002340C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = *(a1 + 40);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007DF80();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Installed asset successfully", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v14 = DMFCommandStateStatusKey;
    v15 = DMFDeclarationStatusInstalled;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v11 addStatusEntriesFromDictionary:v12];

    v13 = [*(a1 + 48) resultObject];
    if (v13)
    {
      [v6 setInstallMetadata:v13];
    }

    [v6 setInstalled:1];
    [*(a1 + 32) endOperationWithPayloadMetadata:v6];
  }
}

void sub_1000236C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v28 = 0;
  v9 = [CEMAssetBase declarationForPayload:v8 error:&v28];
  v10 = v28;

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v6 installed])
      {
        v11 = [v6 installMetadata];
        v27 = v10;
        v12 = [v9 dmf_removeAssetOperationWithInstallMetadata:v11 error:&v27];
        v13 = v27;

        v14 = DMFConfigurationEngineLog();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v16 = [v6 identifier];
            *buf = 138543362;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@: Installed asset will be removed", buf, 0xCu);
          }

          v17 = [*(a1 + 32) taskOperationProvider];
          v18 = [*(a1 + 32) database];
          [v17 prepareToRunOperation:v12 withContext:0 withDatabase:v18];

          [v12 addTarget:*(a1 + 32) selector:"removeOperationDidFinish:asset:" forOperationEvents:6 userInfo:v9];
          [*(a1 + 32) enqueueOperation:v12];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10007E02C();
          }

          [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v13];
        }

        v10 = v13;
      }

      else
      {
        v23 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v6 identifier];
          *buf = 138543362;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Uninstalled asset did remove successfully", buf, 0xCu);
        }

        v25 = *(a1 + 32);
        v29 = DMFDeclarationStateStatusKey;
        v30 = DMFDeclarationStatusRemoved;
        v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [v25 addStatusEntriesFromDictionary:v26];

        [*(a1 + 32) endOperationWithPayloadMetadata:v6];
      }
    }

    else
    {
      v20 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10007DD58();
      }

      v21 = *(a1 + 32);
      v22 = DMFErrorWithCodeAndUserInfo();
      [v21 endOperationMarkingPayloadMetadata:v6 failedWithError:v22];
    }
  }

  else
  {
    v19 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10007DED4();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v10];
  }
}

void sub_100023B40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = *(a1 + 40);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007E0D8();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed asset successfully", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v13 = DMFCommandStateStatusKey;
    v14 = DMFDeclarationStatusRemoved;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v11 addStatusEntriesFromDictionary:v12];

    [v6 setInstallMetadata:0];
    [v6 setInstalled:0];
    [*(a1 + 32) endOperationWithPayloadMetadata:v6];
  }
}

void sub_100023F60(id a1)
{
  qword_1000FEFC0 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000240C4(id a1)
{
  qword_1000FEFD0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100024600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100024618(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000FEFE8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100024744;
    v3[4] = &unk_1000CE018;
    v3[5] = v3;
    v4 = off_1000CE6C8;
    v5 = 0;
    qword_1000FEFE8 = _sl_dlopen();
  }

  if (!qword_1000FEFE8)
  {
    sub_10007E270(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10007E1F4();
  }

  qword_1000FEFE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100024744(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FEFE8 = result;
  return result;
}

void sub_100024910(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v44 = 0;
  v9 = [CEMCommandBase commandForPayload:v8 error:&v44];
  v10 = v44;

  if (v9)
  {
    if ([v9 conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingCommand])
    {
      v11 = objc_opt_new();
      v12 = [v9 unknownPayloadKeys];
      v13 = [v12 allObjects];

      if ([v13 count])
      {
        v52 = DMFCommandStateReasonKey;
        v49[0] = DMFCommandStateReasonCodeKey;
        v49[1] = DMFCEMReasonCodeUnknownPayloadKeys;
        v50[0] = DMFCEMReasonCodeUnknownPayloadKeys;
        v50[1] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
        v51 = v14;
        v15 = [NSArray arrayWithObjects:&v51 count:1];
        v53 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        [v11 addEntriesFromDictionary:v16];

        [*(a1 + 32) addStatusEntriesFromDictionary:v11];
      }

      v40 = v11;
      v17 = v9;
      v18 = [*(a1 + 32) payloadContext];
      v19 = [v6 organization];
      v20 = [v19 identifier];
      [v18 setOrganizationIdentifier:v20];

      [v18 setAssetProvidersByPayloadIdentifier:0];
      v43 = v10;
      v21 = [v17 dmf_executeRequestWithContext:v18 error:&v43];
      v22 = v43;

      if (!v22)
      {
        if (v21)
        {
          v28 = [*(a1 + 32) taskOperationProvider];
          v42 = 0;
          v29 = [v28 operationClassForRequest:v21 error:&v42];
          v22 = v42;

          if (!v29)
          {
            v23 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_10007E3BC();
            }

            goto LABEL_8;
          }

          v30 = [[v29 alloc] initWithRequest:v21];
        }

        else
        {
          v41 = 0;
          v30 = [v17 dmf_executeOperationWithContext:v18 error:&v41];
          v22 = v41;
        }

        if (v30)
        {
          v38 = v13;
          v31 = v30;
          v32 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [v6 identifier];
            *buf = 138543362;
            v48 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%{public}@: Execute command will start", buf, 0xCu);
          }

          if ([v17 dmf_requestExecutesWithoutReturning])
          {
            v34 = *(a1 + 32);
            v45 = DMFCommandStateStatusKey;
            v46 = DMFCommandStatusExecuted;
            v35 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            [v34 addStatusEntriesFromDictionary:v35];

            [v6 setInstalled:1];
            [*(a1 + 32) endOperationWithPayloadMetadata:v6];
          }

          v36 = [*(a1 + 32) taskOperationProvider];
          v37 = [*(a1 + 32) database];
          [v36 prepareToRunOperation:v31 withContext:0 withDatabase:v37];

          [v31 addTarget:*(a1 + 32) selector:"operationDidFinish:userInfo:" forOperationEvents:6 userInfo:v17];
          [*(a1 + 32) enqueueOperation:v31];

          v13 = v39;
          goto LABEL_9;
        }
      }

      v23 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10007E468();
      }

LABEL_8:

      [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v22];
LABEL_9:

      v10 = v22;
      goto LABEL_16;
    }

    v25 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10007E2F0();
    }

    v26 = *(a1 + 32);
    v27 = DMFErrorWithCodeAndUserInfo();
    [v26 endOperationMarkingPayloadMetadata:v6 failedWithError:v27];
  }

  else
  {
    v24 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10007E510();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v10];
  }

LABEL_16:
}

void sub_100024F94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = *(a1 + 40);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007E5B8();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Executed command successfully", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v21 = DMFCommandStateStatusKey;
    v22 = DMFCommandStatusExecuted;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v11 addStatusEntriesFromDictionary:v12];

    if ([*(a1 + 48) conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingCommand])
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) resultObject];
      v15 = [*(a1 + 32) payloadContext];
      v16 = [v13 dmf_statusForResult:v14 context:v15];

      if (v16)
      {
        v17 = *(a1 + 32);
        v19 = DMFDeclarationStatePayloadKey;
        v20 = v16;
        v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v17 addStatusEntriesFromDictionary:v18];
      }
    }

    [v6 setInstalled:1];
    [*(a1 + 32) endOperationWithPayloadMetadata:v6];
  }
}

void sub_1000259F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v15 = 0;
  v9 = [CEMCommandBase commandForPayload:v8 error:&v15];
  v10 = v15;

  v11 = DMFConfigurationEngineLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v12)
    {
      sub_10007E664(v6, v11);
    }
  }

  else if (v12)
  {
    sub_10007E6FC(v6, v10, v11);
  }

  v13 = *(a1 + 32);
  v16 = DMFCommandStateStatusKey;
  v17 = DMFDeclarationStatusRemoved;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v13 addStatusEntriesFromDictionary:v14];

  [*(a1 + 32) endOperationWithPayloadMetadata:v6];
}

void sub_100025BDC(id a1)
{
  v1 = qword_1000FEFF0;
  qword_1000FEFF0 = &off_1000D6F08;
}

void sub_100025C94(uint64_t a1)
{
  v7 = objc_opt_new();
  v2 = [*(a1 + 32) supportedConfigurationTypes];
  [v7 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) supportedAssetTypes];
  [v7 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) supportedActivationTypes];
  [v7 addObjectsFromArray:v4];

  v5 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v6 = qword_1000FF000;
  qword_1000FF000 = v5;
}

void sub_100025DA8(id a1)
{
  v1 = qword_1000FF010;
  qword_1000FF010 = &off_1000D6F20;
}

void sub_100025E04(id a1)
{
  v1 = qword_1000FF020;
  qword_1000FF020 = &off_1000D6F38;
}

void sub_100025E60(id a1)
{
  v1 = qword_1000FF030;
  qword_1000FF030 = &off_1000D6F50;
}

void sub_100025EBC(id a1)
{
  v1 = qword_1000FF040;
  qword_1000FF040 = &off_1000D6F68;
}

void sub_100025F18(id a1)
{
  v1 = qword_1000FF050;
  qword_1000FF050 = &off_1000D6F80;
}

void sub_100025F74(id a1)
{
  v1 = qword_1000FF060;
  qword_1000FF060 = &off_1000D6F98;
}

void sub_100025FD0(id a1)
{
  v1 = [NSManagedObjectModel alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v5 URLForResource:@"DMDConfigurationDatabaseModel" withExtension:@"momd"];
  v3 = [v1 initWithContentsOfURL:v2];
  v4 = qword_1000FF070;
  qword_1000FF070 = v3;
}

void sub_1000261A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000261BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000261D4(uint64_t a1)
{
  v6 = +[DMDConfigurationOrganization fetchRequest];
  v2 = [v6 execute:0];
  v3 = [v2 description];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100026510(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

void sub_100026858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100026888(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = [v9 count];
    v11 = [[NSMutableArray alloc] initWithCapacity:v18];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * v16) eventStatusMessageWithPayloadIdentifier:v7];
          [v11 addObject:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100026A6C;
    v19[3] = &unk_1000CE848;
    v19[4] = v18;
    [WeakRetained sendEvents:v11 organizationIdentifier:v8 completionHandler:v19];
  }
}

void sub_100026A6C(uint64_t a1, uint64_t a2)
{
  v4 = DMFConfigurationEngineLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007E950(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = 134217984;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully sent %lu events from subscription manager", &v13, 0xCu);
  }
}

void sub_100026B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained databaseInitializationOperationDidFinish];
}

void sub_100026D84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Engine did resume", v4, 2u);
  }

  [*(a1 + 32) delegateDidResume];
  [*(a1 + 32) enqueueDeclarationProcessingOperationIfNeeded];
  objc_autoreleasePoolPop(v2);
}

id sub_100026EDC(uint64_t a1)
{
  v2 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Engine will suspend", v5, 2u);
  }

  v3 = [*(a1 + 32) queue];
  [v3 setSuspended:1];

  return [*(a1 + 32) delegateWillSuspend];
}

void sub_10002729C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) organizationControllerByIdentifier];
  objc_sync_enter(v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) organizationControllerByIdentifier];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) organization];
        [v2 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v3);
  v10 = objc_opt_new();
  v11 = [NSDictionary alloc];
  v12 = [v2 valueForKey:@"identifier"];
  v13 = [v11 initWithObjects:v2 forKeys:v12];
  [v10 setOrganizationsByIdentifier:v13];

  (*(*(a1 + 40) + 16))();
}

void sub_1000275C8(uint64_t a1)
{
  v2 = [*(a1 + 32) eventSubscriptionManager];
  v3 = [*(a1 + 40) startDate];
  v4 = [*(a1 + 40) organizationIdentifier];
  v5 = [v2 eventStatusesByPayloadIdentifierSinceStartDate:v3 organizationIdentifier:v4];

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100027718;
  v12 = &unk_1000CE8E8;
  v13 = *(a1 + 40);
  v14 = v6;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v9];
  [v7 setEventStatuses:{v8, v9, v10, v11, v12}];
  (*(*(a1 + 48) + 16))();
}

void sub_100027718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) eventIdentifiers];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) eventIdentifiers];
    v10 = [v9 containsObject:v5];

    if (v10)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v17 + 1) + 8 * v15) eventStatusMessageWithPayloadIdentifier:{v5, v17}];
            [*(a1 + 40) addObject:v16];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }
}

void sub_100027F50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000280B4;
  v15 = sub_1000280C4;
  v16 = 0;
  v3 = [*(a1 + 32) database];
  v4 = [v3 newBackgroundContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000280CC;
  v7[3] = &unk_1000CE938;
  v8 = *(a1 + 40);
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [v5 performBlockAndWait:v7];
  [*(a1 + 32) enqueueDeclarationProcessingOperationIfNeeded];
  v6 = v12[5];
  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_10002809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000280B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000280CC(void *a1)
{
  v2 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:a1[4]];
  v3 = (a1 + 6);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 execute:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [DMDDeclarationPayloadMetadata fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:a1[4]];
    v8 = a1[5];
    v9 = *(a1[6] + 8);
    v25 = *(v9 + 40);
    v10 = [v8 executeFetchRequest:v7 error:&v25];
    objc_storeStrong((v9 + 40), v25);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v21 + 1) + 8 * v15) setFailed:0];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = a1[5];
    v17 = *(a1[6] + 8);
    v20 = *(v17 + 40);
    v18 = [v16 save:&v20];
    objc_storeStrong((v17 + 40), v20);
    if ((v18 & 1) == 0)
    {
      v19 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10007EAC8(v3);
      }
    }
  }
}

void sub_100028410(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007EB54(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000285D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007EB54(v3);
    }
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) resultObject];
  (*(v5 + 16))(v5, v6, v3);
}

void sub_100028828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DMDEventSubscriptionRegistration alloc] initWithContext:v3];
  v5 = [*(a1 + 32) subscriptionDeclaration];
  v6 = [*(a1 + 32) organizationIdentifier];
  v7 = [v5 declarationIdentifier];
  v8 = [v5 declarationServerHash];
  v9 = [(DMDDeclarationPayloadMetadata *)DMDConfigurationPayloadMetadata fetchRequestForActiveDeclarationFromOrganizationWithIdentifier:v6 withIdentifier:v7 serverHash:v8];

  v25 = 0;
  v10 = [v3 executeFetchRequest:v9 error:&v25];
  v11 = v25;
  v12 = [v10 firstObject];
  [(DMDEventSubscriptionRegistration *)v4 setPayloadMetadata:v12];

  v13 = [(DMDEventSubscriptionRegistration *)v4 payloadMetadata];

  if (v13)
  {
    v14 = [v5 payloadEvents];
    [(DMDEventSubscriptionRegistration *)v4 setEvents:v14];

    v15 = [v5 payloadSchedule];
    [(DMDEventSubscriptionRegistration *)v4 setSchedule:v15];

    v24 = v11;
    v16 = [v3 save:&v24];
    v17 = v24;

    if (v16)
    {
      [*(a1 + 40) performSelectorOnMainThread:"updateEventSubscriptions" withObject:0 waitUntilDone:1];
    }

    else
    {
      v23 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10007EBE0(a1 + 32);
      }
    }

    (*(*(a1 + 48) + 16))();
    v11 = v17;
  }

  else
  {
    v18 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10007EC6C(a1 + 32);
    }

    v19 = *(a1 + 48);
    v26 = DMFConfigurationPayloadIdentifierErrorKey;
    v20 = [v5 declarationIdentifier];
    v27 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = DMFErrorWithCodeAndUserInfo();
    (*(v19 + 16))(v19, v22);
  }
}

void sub_100028BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 32;
  v5 = [*(a1 + 32) organizationIdentifier];
  v6 = [*(a1 + 32) subscriptionDeclaration];
  v7 = [v6 declarationIdentifier];
  v8 = [DMDEventSubscriptionRegistration fetchRequestMatchingRegistrationFromOrganizationWithIdentifier:v5 payloadIdentifier:v7];

  v25 = 0;
  v9 = [v3 executeFetchRequest:v8 error:&v25];
  v10 = v25;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v3 deleteObject:*(*(&v21 + 1) + 8 * v15)];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    v20 = v10;
    v16 = [v3 save:&v20];
    v17 = v20;

    if ((v16 & 1) == 0)
    {
      v18 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10007ECF8(v17);
      }
    }

    [*(a1 + 40) performSelectorOnMainThread:"updateEventSubscriptions" withObject:0 waitUntilDone:1];
    (*(*(a1 + 48) + 16))();
    v10 = v17;
  }

  else
  {
    v19 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10007ED84(v4);
    }
  }
}

void sub_100028FE0(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 newBackgroundContext];

  v4 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:*(a1 + 40)];
  v48 = 0;
  v42 = v3;
  v5 = [v3 executeFetchRequest:v4 error:&v48];
  v6 = v48;

  if (v5)
  {
    v41 = [v5 firstObject];
    if (v41)
    {
      v36 = (a1 + 40);
      v37 = v6;
      v38 = a1;
      v39 = v5;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = *(a1 + 48);
      v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v45;
        v10 = DMFDeclarationEventsMessageInReplyToKey;
        v11 = DMFDeclarationEventsMessageEventTypeKey;
        v12 = DMFDeclarationEventsMessageEventTimestampKey;
        v13 = DMFDeclarationEventsMessageEventPayloadKey;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v45 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            v16 = [[DMDSubscriptionEvent alloc] initWithContext:v42];
            [(DMDSubscriptionEvent *)v16 setOrganization:v41];
            v17 = [v15 objectForKeyedSubscript:v10];
            [(DMDSubscriptionEvent *)v16 setPayloadIdentifier:v17];

            v18 = [v15 objectForKeyedSubscript:v11];
            [(DMDSubscriptionEvent *)v16 setEventType:v18];

            v19 = [v15 objectForKeyedSubscript:v12];
            [(DMDSubscriptionEvent *)v16 setDate:v19];

            v20 = [v15 objectForKeyedSubscript:v13];
            [(DMDSubscriptionEvent *)v16 setDetails:v20];
          }

          v8 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v8);
      }

      v43 = v37;
      v21 = [v42 save:&v43];
      v22 = v43;

      if (v21)
      {
        v23 = +[NSNotificationCenter defaultCenter];
        [v23 postNotificationName:@"DMDConfigurationSourceEventsDidChange" object:*v36];
      }

      else
      {
        v23 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10007EE84(v22);
        }
      }

      v5 = v39;

      (*(*(v38 + 56) + 16))();
      v6 = v22;
    }

    else
    {
      v25 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10007EF10((a1 + 40), v25, v26, v27, v28, v29, v30, v31);
      }

      v32 = *(a1 + 56);
      v33 = *(a1 + 40);
      v50 = DMFConfigurationOrganizationIdentifierErrorKey;
      v51 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v35 = DMFErrorWithCodeAndUserInfo();
      (*(v32 + 16))(v32, v35);
    }
  }

  else
  {
    v24 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10007EF80(v6);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100029A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029A50(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007F104(v2);
    }
  }

  v5 = [*v2 resultObject];
  if ([v5 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained enqueueOperations:v5];
  }
}

void sub_10002A4AC(uint64_t a1)
{
  v2 = +[DMDConfigurationOrganization fetchRequest];
  v41 = @"identifier";
  v3 = [NSArray arrayWithObjects:&v41 count:1];
  [v2 setPropertiesToFetch:v3];

  [v2 setResultType:2];
  v36 = 0;
  v4 = [v2 execute:&v36];
  v5 = v36;
  if (!v4)
  {
    v6 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007F58C(v5);
    }
  }

  v7 = [v4 valueForKeyPath:@"identifier"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v9);

  v10 = +[DMDConfigurationPayloadMetadata fetchRequest];
  v40 = @"organization";
  v11 = [NSArray arrayWithObjects:&v40 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v11];

  v35 = v5;
  v12 = [v10 execute:&v35];
  v13 = v35;

  if (v12)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v27 = v12;
      v28 = v13;
      v29 = v10;
      v30 = v4;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v19 organization];
          v21 = [v20 identifier];

          if (v21)
          {
            v22 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v21];

            if (v22)
            {
              v23 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v21];
              v24 = [v19 identifier];
              [v23 addObject:v24];
            }

            else
            {
              v25 = [NSMutableArray alloc];
              v23 = [v19 identifier];
              v26 = [v25 initWithObjects:{v23, 0}];
              [*(*(*(a1 + 40) + 8) + 40) setObject:v26 forKeyedSubscript:v21];
            }
          }

          else
          {
            v23 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              sub_10007F618(v37, v19, &v38, v23);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v16);
      v4 = v30;
      v13 = v28;
      v10 = v29;
      v12 = v27;
    }
  }

  else
  {
    v14 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007F690(v13);
    }
  }
}

void sub_10002A86C(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007F71C(v2);
    }
  }
}

void sub_10002A8C8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007F7B0(v2);
    }
  }
}

void sub_10002AAC4(id *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000280B4;
  v26 = sub_1000280C4;
  v27 = 0;
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [a1[4] organizationIdentifier];
  v5 = [a1[5] database];
  v6 = [v5 newBackgroundContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002AD04;
  v16[3] = &unk_1000CEAB8;
  v7 = v4;
  v17 = v7;
  v21 = &v22;
  v20 = a1[6];
  v8 = v2;
  v18 = v8;
  v9 = v3;
  v19 = v9;
  [v6 performBlockAndWait:v16];
  v10 = v23[5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B15C;
  v13[3] = &unk_1000CEB28;
  v11 = a1[6];
  v13[4] = a1[5];
  v12 = v9;
  v14 = v12;
  v15 = &v22;
  v11[2](v11, v8, v10, v13);

  _Block_object_dispose(&v22, 8);
}

void sub_10002ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002AD04(uint64_t a1)
{
  v2 = [DMDPayloadMetadata fetchRequestForPayloadMetadatasPendingStatusUpdateFromOrganizationWithIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 execute:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v34 = v2;
    v5 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v33 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v50 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [v5 objectForKeyedSubscript:v12];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = objc_opt_new();
          }

          v16 = v15;

          [v16 addObject:v11];
          v17 = [v11 identifier];
          [v5 setObject:v16 forKeyedSubscript:v17];
        }

        v8 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v8);
    }

    v38 = objc_opt_new();
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v5;
    v39 = [v40 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v39)
    {
      v36 = DMFDeclarationStatusMessageInReplyToKey;
      v37 = *v47;
      v35 = DMFDeclarationStatusMessageStatesKey;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(v40);
          }

          v19 = *(*(&v46 + 1) + 8 * j);
          v41 = objc_opt_new();
          [v41 setObject:v19 forKeyedSubscript:v36];
          v20 = objc_opt_new();
          v21 = [v40 objectForKeyedSubscript:v19];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v22 = [v21 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            do
            {
              for (k = 0; k != v23; k = k + 1)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v42 + 1) + 8 * k);
                v27 = [v26 stateDictionary];
                [v20 addObject:v27];

                v28 = [v26 stateChangeTimestamp];
                v29 = *(a1 + 48);
                v30 = [v26 objectID];
                [v29 setObject:v28 forKeyedSubscript:v30];
              }

              v23 = [v21 countByEnumeratingWithState:&v42 objects:v55 count:16];
            }

            while (v23);
          }

          [v41 setObject:v20 forKeyedSubscript:v35];
          [v38 addObject:v41];
        }

        v39 = [v40 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v39);
    }

    v4 = v33;
    v2 = v34;
  }

  else
  {
    v31 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10007F8B8(a1 + 64);
    }

    v32 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10002B15C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007F944();
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002B268;
    v9[3] = &unk_1000CEAE0;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    v8 = [DMDBlockOperation blockOperationWithBlock:v9];
    [v8 setQueuePriority:8];
    [*(a1 + 32) enqueueDatabaseModificationOperation:v8 completionHandler:&stru_1000CEB00];
  }
}

void sub_10002B268(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 newBackgroundContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B330;
  v7[3] = &unk_1000CE938;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  [v6 performBlockAndWait:v7];
}

void sub_10002B330(uint64_t a1)
{
  v2 = +[DMDPayloadMetadata fetchRequest];
  v3 = [*(a1 + 32) allKeys];
  v4 = [NSPredicate predicateWithFormat:@"self IN %@", v3];
  [v2 setPredicate:v4];

  v5 = a1 + 48;
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v2 execute:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    v20 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007FA38(v5);
    }

    goto LABEL_14;
  }

  v21 = a1 + 48;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 objectID];
        v16 = [v14 objectForKeyedSubscript:v15];
        [v13 setLastStatusReportTimestamp:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v17 = *(a1 + 40);
  v18 = *(*(a1 + 48) + 8);
  v22 = *(v18 + 40);
  v19 = [v17 save:&v22];
  objc_storeStrong((v18 + 40), v22);
  if ((v19 & 1) == 0)
  {
    v20 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007F9AC(v21);
    }

LABEL_14:
  }
}

void sub_10002B584(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007FAC4(v2);
    }
  }
}

void sub_10002B5DC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007FB50(v2);
    }
  }
}

void sub_10002B724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) organizationIdentifier];
  v5 = [DMDSubscriptionEvent fetchRequestMatchingEventsFromOrganizationWithIdentifier:v4];

  v31 = 0;
  v24 = v3;
  v6 = [v3 executeFetchRequest:v5 error:&v31];
  v7 = v31;
  if (!v6)
  {
    v8 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007FC50(a1 + 32, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  v23 = v7;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 dictionaryRepresentation];
        if (v17)
        {
          [v9 addObject:v17];
        }

        v18 = [v16 objectID];
        if (v18)
        {
          [v10 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v13);
  }

  v32 = DMFDeclarationStatusMessagesKey;
  v33 = v9;
  v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002BA08;
  v25[3] = &unk_1000CDBD0;
  v20 = *(a1 + 48);
  v25[4] = *(a1 + 40);
  v26 = v10;
  v21 = *(v20 + 16);
  v22 = v10;
  v21(v20, v19, 0, v25);
}

void sub_10002BA08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007FD0C();
    }
  }

  else
  {
    v5 = [*(a1 + 32) database];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002BAE8;
    v6[3] = &unk_1000CE618;
    v7 = *(a1 + 40);
    [v5 performBackgroundTask:v6];

    v4 = v7;
  }
}

void sub_10002BAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectWithID:*(*(&v14 + 1) + 8 * v8)];
        [v3 deleteObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = 0;
  v10 = [v3 save:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007FD74();
    }
  }
}

void sub_10002C41C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) payloadMetadataObjectID];
  v5 = [v3 objectWithID:v4];

  v6 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [v5 outgoingPayloadMetadataReferences];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [v12 installMetadata];
        if (!v13)
        {
          v37 = *(a1 + 32);
          v18 = DMFErrorWithCodeAndUserInfo();
          [v37 endOperationWithError:v18];
          goto LABEL_19;
        }

        v14 = v13;
        v15 = [v12 identifier];
        [v6 setObject:v14 forKeyedSubscript:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v5 payload];
  v17 = [v16 payloadDictionary];
  v50 = 0;
  v18 = [CEMConfigurationBase declarationForPayload:v17 error:&v50];
  v7 = v50;

  if (v18)
  {
    if ([v18 conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration])
    {
      v19 = [v18 unknownPayloadKeys];
      v20 = [v19 allObjects];

      if ([v20 count])
      {
        v46 = *(a1 + 32);
        v60 = DMFDeclarationStateReasonKey;
        v57[0] = DMFDeclarationStateReasonKey;
        v57[1] = DMFCEMReasonCodeUnknownPayloadKeys;
        v58[0] = DMFCEMReasonCodeUnknownPayloadKeys;
        v58[1] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
        v59 = v21;
        v22 = [NSArray arrayWithObjects:&v59 count:1];
        v61 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        [v46 addStatusEntriesFromDictionary:v23];
      }

      v47 = v20;
      v24 = [*(a1 + 32) payloadContext];
      v25 = [v5 organization];
      v26 = [v25 identifier];
      [v24 setOrganizationIdentifier:v26];

      [v24 setAssetProvidersByPayloadIdentifier:v6];
      v18 = v18;
      v49 = v7;
      v27 = [v18 dmf_installRequestWithContext:v24 error:&v49];
      v28 = v49;

      if (v27)
      {
        v29 = [*(a1 + 32) taskOperationProvider];
        v48 = v28;
        v30 = [v29 operationClassForRequest:v27 error:&v48];
        v45 = v48;

        v31 = DMFConfigurationEngineLog();
        v32 = v31;
        if (v30)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v33 = [v5 identifier];
            *buf = 138543362;
            v56 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%{public}@: Configuration will install", buf, 0xCu);
          }

          v34 = [[v30 alloc] initWithRequest:v27];
          v35 = [*(a1 + 32) taskOperationProvider];
          v36 = [*(a1 + 32) database];
          [v35 prepareToRunOperation:v34 withContext:0 withDatabase:v36];

          [v34 addTarget:*(a1 + 32) selector:"installationOperationDidFinish:userInfo:" forOperationEvents:6 userInfo:v18];
          [*(a1 + 32) enqueueOperation:v34];

          v28 = v45;
          goto LABEL_33;
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10007FF2C();
        }

        v43 = *(a1 + 32);
        v44 = v5;
        v28 = v45;
      }

      else
      {
        v42 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10007FFD8();
        }

        v43 = *(a1 + 32);
        v44 = v5;
      }

      [v43 endOperationMarkingPayloadMetadata:v44 failedWithError:v28];
LABEL_33:

      v7 = v28;
      goto LABEL_19;
    }

    v39 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_10007FE60();
    }

    v40 = *(a1 + 32);
    v41 = DMFErrorWithCodeAndUserInfo();
    [v40 endOperationMarkingPayloadMetadata:v5 failedWithError:v41];
  }

  else
  {
    v38 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100080080();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v5 failedWithError:v7];
  }

LABEL_19:
}

void sub_10002CACC(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v8 = a1 + 5;
  v7 = a1[5];
  if (!v7)
  {
LABEL_7:
    v14 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 identifier];
      *buf = 138543362;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Configuration did install successfully ", buf, 0xCu);
    }

    v16 = a1[4];
    v27 = DMFDeclarationStateStatusKey;
    v28 = DMFDeclarationStatusInstalled;
    v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v16 addStatusEntriesFromDictionary:v17];

    if ([a1[6] conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration])
    {
      v18 = a1[6];
      v19 = [a1[7] resultObject];
      v20 = [a1[4] payloadContext];
      v21 = [v18 dmf_statusForResult:v19 context:v20];

      if (v21)
      {
        v22 = a1[4];
        v25 = DMFDeclarationStatePayloadKey;
        v26 = v21;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [v22 addStatusEntriesFromDictionary:v23];
      }
    }

    [v6 setInstalled:1];
    [a1[4] endOperationWithPayloadMetadata:v6];
    goto LABEL_18;
  }

  v9 = [v7 domain];
  if ([v9 isEqualToString:DMFErrorDomain])
  {
    v10 = [*v8 code];

    if (v10 == 1900)
    {
      v11 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 identifier];
        v13 = [*v8 verboseDescription];
        *buf = 138543618;
        v30 = v12;
        v31 = 2114;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring expected removal error: %{public}@", buf, 0x16u);
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v24 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100080128();
  }

  [a1[4] endOperationMarkingPayloadMetadata:v6 failedWithError:a1[5]];
LABEL_18:
}

void sub_10002DD84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10002E5F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v48 = 0;
  v9 = [CEMConfigurationBase declarationForPayload:v8 error:&v48];
  v10 = v48;

  if (v9)
  {
    if (([v9 conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration] & 1) == 0)
    {
      v27 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10007FE60();
      }

      v28 = *(a1 + 32);
      v12 = DMFErrorWithCodeAndUserInfo();
      [v28 endOperationMarkingPayloadMetadata:v6 failedWithError:v12];
      goto LABEL_30;
    }

    v11 = [v9 unknownPayloadKeys];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v13 = *(a1 + 32);
      v58 = DMFDeclarationStateReasonKey;
      v55[0] = DMFCommandStateReasonCodeKey;
      v55[1] = DMFCEMReasonCodeUnknownPayloadKeys;
      v56[0] = DMFCEMReasonCodeUnknownPayloadKeys;
      v56[1] = v12;
      v14 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
      v57 = v14;
      v15 = [NSArray arrayWithObjects:&v57 count:1];
      v59 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [v13 addStatusEntriesFromDictionary:v16];
    }

    if (([v6 installed] & 1) == 0)
    {
      v29 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v6 identifier];
        *buf = 138543362;
        v54 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Uninstalled configuration did remove successfully", buf, 0xCu);
      }

      v31 = *(a1 + 32);
      v51 = DMFDeclarationStateStatusKey;
      v52 = DMFDeclarationStatusRemoved;
      v32 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      [v31 addStatusEntriesFromDictionary:v32];

      [*(a1 + 32) endOperationWithPayloadMetadata:v6];
      goto LABEL_30;
    }

    v17 = [*(a1 + 32) payloadContext];
    v18 = [v6 organization];
    v19 = [v18 identifier];
    [v17 setOrganizationIdentifier:v19];

    [v17 setAssetProvidersByPayloadIdentifier:0];
    v20 = v9;
    v47 = v10;
    v21 = [v20 dmf_removeRequestWithContext:v17 error:&v47];
    v22 = v47;

    if (v21 || !v22)
    {
      if (!v21)
      {
        v41 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v6 identifier];
          *buf = 138543362;
          v54 = v45;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Installed configuration did remove successfully", buf, 0xCu);
        }

        v42 = *(a1 + 32);
        v49 = DMFDeclarationStateStatusKey;
        v50 = DMFDeclarationStatusRemoved;
        v43 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        [v42 addStatusEntriesFromDictionary:v43];

        [v6 setInstalled:0];
        [*(a1 + 32) endOperationWithPayloadMetadata:v6];
        goto LABEL_29;
      }

      v33 = [*(a1 + 32) taskOperationProvider];
      v46 = v22;
      v34 = [v33 operationClassForRequest:v21 error:&v46];
      v44 = v46;

      v35 = DMFConfigurationEngineLog();
      v36 = v35;
      if (v34)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v37 = [v6 identifier];
          *buf = 138543362;
          v54 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}@: Installed configuration will remove", buf, 0xCu);
        }

        v38 = [[v34 alloc] initWithRequest:v21];
        v39 = [*(a1 + 32) taskOperationProvider];
        v40 = [*(a1 + 32) database];
        [v39 prepareToRunOperation:v38 withContext:0 withDatabase:v40];

        [v38 addTarget:*(a1 + 32) selector:"removalOperationDidFinish:userInfo:" forOperationEvents:6 userInfo:v20];
        [*(a1 + 32) enqueueOperation:v38];

        v22 = v44;
        goto LABEL_29;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10008038C();
      }

      v24 = *(a1 + 32);
      v25 = v6;
      v22 = v44;
    }

    else
    {
      v23 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100080438();
      }

      v24 = *(a1 + 32);
      v25 = v6;
    }

    [v24 endOperationMarkingPayloadMetadata:v25 failedWithError:{v22, v44}];
LABEL_29:

    v10 = v22;
LABEL_30:

    goto LABEL_31;
  }

  v26 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1000804E0();
  }

  [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v10];
LABEL_31:
}

void sub_10002ED54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = *(a1 + 40);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080588();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Configuration did remove successfully", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v21 = DMFDeclarationStateStatusKey;
    v22 = DMFDeclarationStatusRemoved;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v11 addStatusEntriesFromDictionary:v12];

    if ([*(a1 + 48) conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration])
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) resultObject];
      v15 = [*(a1 + 32) payloadContext];
      v16 = [v13 dmf_statusForResult:v14 context:v15];

      if (v16)
      {
        v17 = *(a1 + 32);
        v19 = DMFDeclarationStatePayloadKey;
        v20 = v16;
        v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v17 addStatusEntriesFromDictionary:v18];
      }
    }

    [v6 setInstalled:0];
    [*(a1 + 32) endOperationWithPayloadMetadata:v6];
  }
}

void sub_10002F11C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 payload];
  v8 = [v7 payloadDictionary];
  v41 = 0;
  v9 = [CEMConfigurationBase declarationForPayload:v8 error:&v41];
  v10 = v41;

  if (v9)
  {
    if ([v9 conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration])
    {
      v11 = [v9 unknownPayloadKeys];
      v12 = [v11 allObjects];

      if ([v12 count])
      {
        v13 = *(a1 + 32);
        v47 = DMFDeclarationStateReasonKey;
        v44[0] = DMFCommandStateReasonCodeKey;
        v44[1] = DMFCEMReasonCodeUnknownPayloadKeys;
        v45[0] = DMFCEMReasonCodeUnknownPayloadKeys;
        v45[1] = v12;
        v14 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
        v46 = v14;
        v15 = [NSArray arrayWithObjects:&v46 count:1];
        v48 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        [v13 addStatusEntriesFromDictionary:v16];
      }

      v17 = [*(a1 + 32) payloadContext];
      v18 = [v6 organization];
      v19 = [v18 identifier];
      [v17 setOrganizationIdentifier:v19];

      [v17 setAssetProvidersByPayloadIdentifier:0];
      v20 = v9;
      v40 = v10;
      v21 = [v20 dmf_replaceRequestWithContext:v17 error:&v40];
      v22 = v40;

      if (v21)
      {
        v23 = [*(a1 + 32) taskOperationProvider];
        v39 = v22;
        v24 = [v23 operationClassForRequest:v21 error:&v39];
        v38 = v39;

        v25 = DMFConfigurationEngineLog();
        v26 = v25;
        if (v24)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v27 = [v6 identifier];
            *buf = 138543362;
            v43 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%{public}@: Configuration will replace", buf, 0xCu);
          }

          v28 = [[v24 alloc] initWithRequest:v21];
          v29 = [*(a1 + 32) taskOperationProvider];
          v30 = [*(a1 + 32) database];
          [v29 prepareToRunOperation:v28 withContext:0 withDatabase:v30];

          [v28 addTarget:*(a1 + 32) selector:"installationOperationDidFinish:userInfo:" forOperationEvents:6 userInfo:v20];
          [*(a1 + 32) enqueueOperation:v28];

          v22 = v38;
          goto LABEL_23;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100080634();
        }

        v36 = *(a1 + 32);
        v37 = v6;
        v22 = v38;
      }

      else
      {
        v35 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000806E0();
        }

        v36 = *(a1 + 32);
        v37 = v6;
      }

      [v36 endOperationMarkingPayloadMetadata:v37 failedWithError:{v22, v38}];
LABEL_23:

      v10 = v22;
      goto LABEL_24;
    }

    v32 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10007FE60();
    }

    v33 = *(a1 + 32);
    v34 = DMFErrorWithCodeAndUserInfo();
    [v33 endOperationMarkingPayloadMetadata:v6 failedWithError:v34];
  }

  else
  {
    v31 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100080788();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:v10];
  }

LABEL_24:
}

void sub_10002F6D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 payloadMetadataObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = *(a1 + 40);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080830();
    }

    [*(a1 + 32) endOperationMarkingPayloadMetadata:v6 failedWithError:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Configuration did replace successfully", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v21 = DMFDeclarationStateStatusKey;
    v22 = DMFDeclarationStatusInstalled;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v11 addStatusEntriesFromDictionary:v12];

    if ([*(a1 + 48) conformsToProtocol:&OBJC_PROTOCOL___DMDRequestProvidingConfiguration])
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) resultObject];
      v15 = [*(a1 + 32) payloadContext];
      v16 = [v13 dmf_statusForResult:v14 context:v15];

      if (v16)
      {
        v17 = *(a1 + 32);
        v19 = DMFDeclarationStatePayloadKey;
        v20 = v16;
        v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v17 addStatusEntriesFromDictionary:v18];
      }
    }

    [v6 setInstalled:1];
    [*(a1 + 32) endOperationWithPayloadMetadata:v6];
  }
}

void sub_10002FB5C(id a1)
{
  v1 = objc_opt_new();
  [DMDSecureUnarchiveFromConfigurationSourceDataTransformer setValueTransformer:v1 forName:@"DMDSecureUnarchiveFromConfigurationSourceDataTransformer"];
}

void sub_10002FC00(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_1000FF088;
  qword_1000FF088 = v1;
}

void sub_10002FD30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100080904(a1, v6);
    }

    [*(a1 + 40) assetResolutionFailedWithError:v6];
    [*(a1 + 32) endOperationWithResultObject:0];
  }

  else
  {
    v8 = [*(a1 + 40) assetReference];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002FE54;
    v11[3] = &unk_1000CEBB8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 0;
    v13 = v9;
    v14 = v10;
    [v5 configurationEngineRequestedAsset:v8 completion:v11];
  }
}

void sub_10002FE54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = DMFConfigurationEngineLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000809C4(a1, v6);
    }

    [*(a1 + 48) assetResolutionFailedWithError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 40) controller];
      v11 = [*(a1 + 48) assetIdentifier];
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ successfully resolved asset %{public}@", &v12, 0x16u);
    }

    [*(a1 + 48) assetResolutionDidSucceedWithAssetURL:v5];
  }

  [*(a1 + 40) endOperationWithResultObject:0];
}

void sub_100030004(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100030B68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100030C80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100080DA0(a1, v8);
    }
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:DMFDeclarationEventsMessagesKey];
    v12 = [v11 count];

    if (v12)
    {
      v13 = *(a1 + 32);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100030E64;
      v15[3] = &unk_1000CEC30;
      v16 = 0;
      v17 = v13;
      v18 = v7;
      v19 = v9;
      [v13 fetchRemoteProxy:v15];

      goto LABEL_7;
    }

    v10 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) controller];
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ skipping events because there are no updates to report", buf, 0xCu);
    }
  }

  [*(a1 + 32) endOperationWithResultObject:0];
LABEL_7:
}

void sub_100030E64(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100080E50(a1, v5);
    }

    [*(a1 + 40) endOperationWithResultObject:0];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100030F5C;
    v8[3] = &unk_1000CEC08;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = *(a1 + 56);
    [a2 configurationEventsDidChange:v7 completion:v8];
  }
}

void sub_100030F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFConfigurationEngineLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100080F00(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) controller];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ successfully sent events", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  [*(a1 + 32) endOperationWithResultObject:0];
}

void sub_1000314BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100080FB0(a1, v8);
    }
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:DMFDeclarationStatusMessagesKey];
    v12 = [v11 count];

    if (v12)
    {
      v13 = *(a1 + 32);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100031698;
      v15[3] = &unk_1000CEC80;
      v15[4] = v13;
      v16 = v7;
      v17 = v9;
      [v13 fetchRemoteProxy:v15];

      goto LABEL_7;
    }

    v10 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) controller];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ skipping status update because there are no updates to report", buf, 0xCu);
    }
  }

  [*(a1 + 32) endOperationWithResultObject:0];
LABEL_7:
}

void sub_100031698(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100081060(a1, v5);
    }

    [*(a1 + 32) endOperationWithResultObject:0];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003178C;
    v8[3] = &unk_1000CEC08;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [a2 configurationStatusDidChange:v7 completion:v8];
  }
}

void sub_10003178C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFConfigurationEngineLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081110(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) controller];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ successfully sent status updates", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  [*(a1 + 32) endOperationWithResultObject:0];
}

void sub_100031A5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DMFConfigurationEngineLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connected successfully to anonymous connection", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000811C0(v6, v8);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100031BAC;
    v12[3] = &unk_1000CECA8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v14 = v10;
    v12[4] = v11;
    v13 = v6;
    [v9 _tryConnectingToNamedService:1 completion:v12];
  }
}

void sub_100031BAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DMFConfigurationEngineLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connected successfully to named connection", v10, 2u);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100081238(a1, v8);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  v9();
}

void sub_100031F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100031FA8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100032000(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

id sub_1000323EC()
{
  v0 = sub_100032A20();
  v1 = sub_100032A64(v0);
  if (v1)
  {
    v14 = 0;
    v2 = [v0 getMobileEquipmentInfoFor:v1 error:&v14];
    v3 = v14;
    if (v2)
    {
      v2 = v2;
      v4 = v2;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000812F0();
      }

      v4 = 0;
    }
  }

  else
  {
    v19 = 0;
    v2 = [v0 getMobileEquipmentInfo:&v19];
    v3 = v19;
    if (v2)
    {
      v5 = [v2 meInfoList];
      v6 = v5;
      if (v5)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v15 + 1) + 8 * i);
              if ([v12 slotId] == 1)
              {
                v4 = v12;

                goto LABEL_25;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081360();
      }

      v4 = 0;
LABEL_25:
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000813A4();
      }

      v4 = 0;
    }
  }

  return v4;
}

void sub_100032674(id a1)
{
  v1 = sub_1000323EC();
  obj = [v1 MEID];

  if ([obj length])
  {
    objc_storeStrong(&qword_1000FF098, obj);
  }
}

void sub_100032744(id a1)
{
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionCopyFirmwareVersion();
    CFRelease(v2);
  }
}

void sub_1000327D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = a2;
    v7 = 2112;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_ServerConnectionCallback: notification = %@, notificationInfo = %@", &v5, 0x16u);
  }
}

id sub_100032A20()
{
  if (qword_1000FF0C0 != -1)
  {
    sub_1000814AC();
  }

  v1 = qword_1000FF0B8;

  return v1;
}

id sub_100032A64(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v13 = 0;
    v3 = [v1 getPreferredDataSubscriptionContextSync:&v13];
    v4 = v13;
    v5 = v4;
    if (!v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getPreferredDataSubscriptionContextSync failed: %{public}@", buf, 0xCu);
      }

      v10 = 0;
      v7 = v5;
      goto LABEL_19;
    }

    v12 = v4;
    v6 = [v2 getSIMStatus:v3 error:&v12];
    v7 = v12;

    if (v6)
    {
      if (![v6 isEqualToString:kCTSIMSupportSIMStatusNotInserted])
      {
        v10 = v3;
        goto LABEL_18;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "rejecting data SIM that isn't inserted";
        v9 = 2;
LABEL_15:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      v8 = "getSIMStatus failed: %{public}@";
      v9 = 12;
      goto LABEL_15;
    }

    v10 = 0;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000814C0();
  }

  v10 = 0;
LABEL_20:

  return v10;
}

void sub_1000330B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000330C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000816C4();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    v7 = sub_100032A20();
    v10 = 0;
    v8 = [v7 getInternationalDataAccessSync:v5 error:&v10];
    v9 = v10;
    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081734();
      }

      v8 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
  }
}

void sub_10003324C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000817A4();
    }
  }

  else
  {
    v7 = sub_100032A20();
    v8 = [v7 setInternationalDataAccessSync:v5 status:*(a1 + 32)];
    if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081814();
    }
  }
}

void sub_100033B08(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100081B54(a2, v5);
  }

  v6 = *(a1 + 32);
  if (v5 && a2)
  {
    (*(v6 + 16))(v6, v5, 0);
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_100033DE0(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100081C54(a2);
  }

  v4 = *(a1 + 32);
  if (a2)
  {
    (*(v4 + 16))(v4, 0);
  }

  else
  {
    v5 = DMFErrorWithCodeAndUserInfo();
    (*(v4 + 16))(v4, v5);
  }
}

void sub_100033E74(id a1)
{
  qword_1000FF0B8 = objc_opt_new();

  _objc_release_x1();
}

id sub_100034030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_100034364(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_100035698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithDMFErrorCode:1804];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_1000356F4(id a1)
{
  qword_1000FF0C8 = [objc_alloc(objc_opt_class()) initPrivate];

  _objc_release_x1();
}

void sub_100035FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081CEC(a1);
    }
  }
}

void sub_100036018(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081D80(a1);
    }
  }
}

void sub_100037970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003799C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000379B4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082810();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2 < 2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100037C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100037C74(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082888();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000384E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100038520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained keybagLockStateDidChange];

  v2 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Detected keychain first unlock", v3, 2u);
  }
}

void sub_10003889C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038968;
  block[3] = &unk_1000CDC60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100038968(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082900(v2);
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v3)
    {
      v8 = NSUnderlyingErrorKey;
      v9 = v3;
      v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v6 = DMFErrorWithCodeAndUserInfo();
      [v4 endOperationWithError:v6];
    }

    else
    {
      v5 = DMFErrorWithCodeAndUserInfo();
      [v4 endOperationWithError:v5];
    }
  }

  else
  {
    [*(a1 + 48) clearLastLocationRequestedDate];
    v7 = *(a1 + 40);

    [v7 endOperationWithResultObject:0];
  }
}

uint64_t DMDPolicyFromDeclarationMode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  if (([v1 isEqualToString:DMFDeclarationPayloadModeDisallowed] & 1) == 0)
  {
    if ([v2 isEqualToString:DMFDeclarationPayloadModeAsk])
    {
      v3 = 2;
      goto LABEL_9;
    }

    if ([v2 isEqualToString:DMFDeclarationPayloadModeWarn])
    {
      v3 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v3 = 4;
LABEL_9:

  return v3;
}

uint64_t DMDDeclarationModeIsValid(void *a1)
{
  v1 = DMFDeclarationPayloadModeOverride;
  v2 = a1;
  LOBYTE(v1) = [v2 isEqualToString:v1];
  v3 = [v2 isEqualToString:DMFDeclarationPayloadModeDisallowed];
  v4 = [v2 isEqualToString:DMFDeclarationPayloadModeAsk];
  v5 = [v2 isEqualToString:DMFDeclarationPayloadModeWarn];
  v6 = [v2 isEqualToString:DMFDeclarationPayloadModeAllowed];

  v7 = v2 != 0;
  if (!((v2 == 0) | v1 & 1 | (v3 | v4) & 1))
  {
    v7 = v5 | v6;
  }

  return v7 & 1;
}

void sub_100039460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003951C;
  v7[3] = &unk_1000CDC38;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10003951C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = v1;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v4 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v4];
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 endOperationWithResultObject:0];
  }
}

void sub_100039EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100082C6C(v3);
    }

    [*(a1 + 32) endOperationWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100039FCC;
    v6[3] = &unk_1000CDBD0;
    v7 = 0;
    v8 = v5;
    [v5 fixupDatabaseWithCompletionHandler:v6];
  }
}

void sub_100039FCC(uint64_t a1, uint64_t a2)
{
  v4 = DMFConfigurationEngineLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100082CFC(a1);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "successfully loaded configuration database", v6, 2u);
    }
  }
}

void sub_10003A4CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DMFConfigurationEngineLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 verboseDescription];
      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "unable to load persistent store %{public}@: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) addObject:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100082E7C(v5, v8);
    }
  }

  v10 = [v5 type];
  v11 = [v10 isEqualToString:NSSQLiteStoreType];

  if (v11)
  {
    v12 = [v5 URL];
    v21 = 0;
    v13 = [v12 setResourceValue:0 forKey:NSURLIsExcludedFromBackupKey error:&v21];
    v14 = v21;

    if ((v13 & 1) == 0)
    {
      v15 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100082EF4(v5, v14);
      }
    }
  }

  [*(a1 + 40) removeObject:v5];
  if (![*(a1 + 40) count])
  {
    v16 = [*(a1 + 32) count];
    v17 = *(a1 + 48);
    if (v16)
    {
      v22 = DMFErrorFailedConfigurationDatabaseStoreKey;
      v18 = [*(a1 + 32) copy];
      v23 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = DMFErrorWithCodeAndUserInfo();
      (*(v17 + 16))(v17, v20);
    }

    else
    {
      (*(v17 + 16))(*(a1 + 48), 0);
    }
  }
}

void sub_10003A800(uint64_t a1, void *a2)
{
  v26 = a2;
  v27 = a1;
  v3 = [*(a1 + 32) database];
  v28 = [v3 persistentStoreCoordinator];

  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v4 = [v28 persistentStores];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v28 metadataForPersistentStore:v9];
        v11 = [v10 objectForKeyedSubscript:@"DMDEngineDatabaseFixedDigitalHealthUsageEventMetadataKey"];
        v12 = [v11 BOOLValue];

        if ((v12 & 1) == 0)
        {
          v13 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v40 = v9;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "persistent store %{public}@ has not been fixed up yet", buf, 0xCu);
          }

          v6 = 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v5);

    if (v6)
    {
      v14 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100082FA0(v14);
      }

      v15 = +[DMDEventSubscriptionRegistration fetchRequest];
      v30 = 0;
      v16 = [v15 execute:&v30];
      v17 = v30;
      v18 = v17;
      if (v16)
      {
        v19 = *(v27 + 32);
        v29 = v18;
        v20 = [v19 updateMetadataForManagedObjectContext:v26 error:&v29];
        v21 = v29;

        v22 = *(v27 + 40);
        if (v20)
        {
          (*(v22 + 16))(*(v27 + 40), 0);
LABEL_31:

          goto LABEL_32;
        }

        if (v21)
        {
          v35 = NSUnderlyingErrorKey;
          v36 = v21;
          v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v25 = DMFErrorWithCodeAndUserInfo();
        }

        else
        {
          v25 = DMFErrorWithCodeAndUserInfo();
          v24 = v25;
        }

        (*(v22 + 16))(v22, v25);
        v18 = v21;
        if (!v21)
        {
LABEL_30:

          v21 = v18;
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *(v27 + 40);
        if (v17)
        {
          v37 = NSUnderlyingErrorKey;
          v38 = v17;
          v24 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v25 = DMFErrorWithCodeAndUserInfo();
        }

        else
        {
          v25 = DMFErrorWithCodeAndUserInfo();
          v24 = v25;
        }

        (*(v23 + 16))(v23, v25);
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  (*(*(v27 + 40) + 16))();
LABEL_32:
}

void sub_10003AC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, void (*a16)(void *a1, uint64_t a2), void *a17, id a18, uint64_t a19, id a20, id a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 buf)
{
  if (a2 == 1)
  {
    v37 = objc_begin_catch(exception_object);
    v38 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "configuration database has been deprecated, destroying persistent stores and reloading", &buf, 2u);
    }

    v39 = *(a10 + 32);
    a22 = 0;
    v40 = [v39 destroyPersistentStoresWithError:&a22];
    v41 = a22;

    if (v40)
    {
      a14 = _NSConcreteStackBlock;
      a15 = 3221225472;
      a16 = sub_10003AD78;
      a17 = &unk_1000CEF50;
      v42 = *(a10 + 32);
      a21 = *(a10 + 40);
      v43 = v41;
      v44 = *(a10 + 32);
      a18 = v43;
      a19 = v44;
      a20 = a9;
      [v42 loadPersistentStoresWithCompletionHandler:&a14];
    }

    else
    {
      (*(*(a10 + 40) + 16))();
    }

    objc_end_catch();
    JUMPOUT(0x10003ABB4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003AD78(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[7];
    v4 = a1[4];
    v5 = *(a1[7] + 16);

    v5();
  }

  else
  {
    v6 = a1[5];
    v7 = a1[6];
    v14 = 0;
    v8 = [v6 updateMetadataForManagedObjectContext:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    v11 = a1[7];
    if (v8)
    {
      (*(v11 + 16))(v11, 0);
    }

    else
    {
      if (v9)
      {
        v15 = NSUnderlyingErrorKey;
        v16 = v9;
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v13 = DMFErrorWithCodeAndUserInfo();
        (*(v11 + 16))(v11, v13);
      }

      else
      {
        v12 = DMFErrorWithCodeAndUserInfo();
        (*(v11 + 16))(v11, v12);
      }
    }
  }
}

void sub_10003F6D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

int64_t sub_10003FEC8(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = DMFDeclarationPayloadIdentifierKey;
  v5 = a3;
  v6 = [(NSDictionary *)a2 objectForKeyedSubscript:v4];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_100040418(uint64_t a1)
{
  v2 = [*(a1 + 32) request];
  v3 = [v2 organizationIdentifier];
  v4 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:v3];

  v47 = 0;
  v5 = [v4 execute:&v47];
  v6 = v47;
  if (v5)
  {
    v7 = [v5 firstObject];
    if (v7)
    {
      v8 = [v2 organizationIdentifier];
      v9 = [*(a1 + 32) clientIdentifier];
      v10 = [NSString stringWithFormat:@"%@:%@", v8, v9];

      v11 = [v2 machServiceName];
      v12 = [v11 length];

      if (v12)
      {
        v39 = v6;
        v40 = v5;
        v41 = v4;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v7;
        v13 = [v7 persistentConfigurationSources];
        v14 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v44;
LABEL_6:
          v17 = 0;
          while (1)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v43 + 1) + 8 * v17);
            v19 = [v18 identifier];
            v20 = [v19 isEqualToString:v10];

            if (v20)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
              if (v15)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          v25 = v18;

          v7 = v38;
          if (v25)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_12:

          v7 = v38;
        }

        v25 = [[DMDConfigurationSource alloc] initWithContext:*(a1 + 40)];
        [(DMDConfigurationSource *)v25 setOrganization:v7];
LABEL_19:
        [(DMDConfigurationSource *)v25 setIdentifier:v10];
        v26 = [v2 configurationSourceName];
        [(DMDConfigurationSource *)v25 setDisplayName:v26];

        v27 = [v2 machServiceName];
        [(DMDConfigurationSource *)v25 setMachServiceName:v27];

        v28 = [v2 reportingRequirements];
        [(DMDConfigurationSource *)v25 setReportingRequirements:v28];

        v23 = [[DMDConfigurationSourceRepresentation alloc] initWithConfigurationSource:v25];
        v29 = [v2 listenerEndpoint];
        [(DMDConfigurationSourceRepresentation *)v23 setListenerEndpoint:v29];

        v5 = v40;
        v4 = v41;
        v6 = v39;
      }

      else
      {
        v23 = objc_opt_new();
        [(DMDConfigurationSourceRepresentation *)v23 setIdentifier:v10];
        v30 = [v2 organizationIdentifier];
        [(DMDConfigurationSourceRepresentation *)v23 setOrganizationIdentifier:v30];

        v31 = [v2 configurationSourceName];
        [(DMDConfigurationSourceRepresentation *)v23 setDisplayName:v31];

        v32 = [v2 machServiceName];
        [(DMDConfigurationSourceRepresentation *)v23 setMachServiceName:v32];

        v33 = [v2 listenerEndpoint];
        [(DMDConfigurationSourceRepresentation *)v23 setListenerEndpoint:v33];

        v25 = [v2 reportingRequirements];
        [(DMDConfigurationSourceRepresentation *)v23 setReportingRequirements:v25];
      }

      v34 = *(a1 + 40);
      v42 = v6;
      v35 = [v34 save:&v42];
      v36 = v42;

      v37 = *(a1 + 32);
      if (v35)
      {
        [v37 performSelectorOnMainThread:"delegateUpdatedDeclarationSourceAndEndOperation:" withObject:v23 waitUntilDone:0];
      }

      else
      {
        [v37 setError:v36];
      }

      v6 = v36;
    }

    else
    {
      v49 = DMFConfigurationOrganizationIdentifierErrorKey;
      v21 = [v2 organizationIdentifier];
      v10 = v21;
      v22 = @"(null)";
      if (v21)
      {
        v22 = v21;
      }

      v50 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v24 = DMFErrorWithCodeAndUserInfo();
      [*(a1 + 32) setError:v24];
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
  }
}

id sub_100042738(uint64_t a1)
{
  v2 = [@"com.apple.alarm" UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000428E0;
  handler[3] = &unk_1000CF020;
  handler[4] = *(a1 + 32);
  xpc_set_event_stream_handler(v2, &_dispatch_main_q, handler);
  v3 = [@"com.apple.distnoted.matching" UTF8String];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042AEC;
  v8[3] = &unk_1000CF020;
  v8[4] = *(a1 + 32);
  xpc_set_event_stream_handler(v3, &_dispatch_main_q, v8);

  v4 = [@"com.apple.notifyd.matching" UTF8String];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042D08;
  v7[3] = &unk_1000CF020;
  v7[4] = *(a1 + 32);
  xpc_set_event_stream_handler(v4, &_dispatch_main_q, v7);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100042EB8;
  v6[3] = &unk_1000CF098;
  v6[4] = *(a1 + 32);
  return [MOEffectiveSettings startObservingChangesWithHandler:v6];
}

void sub_1000428E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received xpc stream event (alarm) with name: %{public}@", buf, 0xCu);
  }

  if (v4)
  {
    [@"com.apple.alarm" UTF8String];
    xpc_set_event();
    v5 = *(*(a1 + 32) + 8);
    objc_sync_enter(v5);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(*(a1 + 32) + 8);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 handleAlarmWithIdentifier:{v4, v11}];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    objc_sync_exit(v5);
  }
}

void sub_100042AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
  v5 = xpc_dictionary_get_dictionary(v3, [@"UserInfo" UTF8String]);

  if (v5)
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received xpc stream event (distributed notification matching) with name: %{public}@ user info: %{public}@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = v7[2];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042CA8;
  v11[3] = &unk_1000CF048;
  v12 = v4;
  v13 = v6;
  v9 = v6;
  v10 = v4;
  [v7 _dispatchToListenerForKey:v10 inMap:v8 withBlock:v11];
}

void sub_100042CA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleDistributedNotificationWithName:*(a1 + 32) userInfo:*(a1 + 40)];
  }
}

void sub_100042D08(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received xpc stream event (notify matching) with name: %{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = v4[3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042E58;
  v7[3] = &unk_1000CF070;
  v8 = v3;
  v6 = v3;
  [v4 _dispatchToListenerForKey:v6 inMap:v5 withBlock:v7];
}

void sub_100042E58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleNotifyMatchingNotificationWithName:*(a1 + 32)];
  }
}

void sub_100042EB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received effective settings change for event: %{public}@, groups: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 32);
        v13 = v12[4];
        v14 = *(*(&v15 + 1) + 8 * i);
        [v12 _dispatchToListenerForKey:? inMap:? withBlock:?];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_100043088(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleManagedEffectiveSettingsChangeInGroup:*(a1 + 32)];
  }
}

void sub_100043AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100043AE8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained eventsHandler];

  if (v4)
  {
    (v4)[2](v4, *(a1 + 32), *(a1 + 40), v5);
  }
}

void sub_100043CA0(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 organizationIdentifier];
  v5 = [v4 isEqual:a1[4]];

  if (v5)
  {
    v6 = [v9 eventStatusesSinceStartDate:a1[6]];
    v7 = a1[5];
    v8 = [v9 payloadIdentifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

void sub_100043FC0(id a1)
{
  v1 = objc_opt_new();
  [DMDSecureUnarchiveFromEventSubscriptionRegistrationDataTransformer setValueTransformer:v1 forName:@"DMDSecureUnarchiveFromEventSubscriptionRegistrationDataTransformer"];
}

void sub_100044064(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_1000FF0E8;
  qword_1000FF0E8 = v1;
}

void sub_100044694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000446B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 streamEventsHandler];
  [v4 startNotificationStreamWithEventsHandler:v5];
}

void sub_100044714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained lastDateScheduleElapsed];
  v2 = [WeakRetained eventStatusesSinceStartDate:v1];

  v3 = [WeakRetained streamEventsHandler];
  (v3)[2](v3, v2);

  v4 = objc_opt_new();
  [WeakRetained setLastDateScheduleElapsed:v4];
}

uint64_t sub_1000448AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 eventStatusRollupSinceStartDate:*(a1 + 32)];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  return _objc_release_x1();
}

void sub_100044CDC(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    [v5 endOperationWithError:a3];
  }

  else
  {
    v6 = [[DMFFetchAppsResultObject alloc] initWithAppsByBundleIdentifier:v7];
    [v5 endOperationWithResultObject:v6];
  }
}

void sub_100045030(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 48) _fetchAppsForBundleIdentifier:v5 type:objc_msgSend(*(a1 + 32) completion:{"type"), *(a1 + 40)}];
  }
}

void sub_1000450B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v59 = [v5 mutableCopy];
    v58 = v5;
    if ([*(a1 + 32) managedAppsOnly])
    {
      v8 = [*(a1 + 32) bundleIdentifiers];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v9 = [*(a1 + 40) managedBundleIdentifiers];
      v10 = [v9 countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v70;
        v56 = v9;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v70 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v69 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            if (!v8 || [v8 containsObject:v14])
            {
              v16 = [v5 objectForKeyedSubscript:{v14, v56}];

              if (!v16)
              {
                v17 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v14];
                if (![v17 currentState])
                {
                  v18 = objc_opt_new();
                  [v18 setType:0];
                  [v18 setBundleIdentifier:v14];
                  [v18 setInstallationState:0];
                  v19 = [*(a1 + 40) VPNUUIDStringForBundleIdentifier:v14];
                  [v18 setVPNUUIDString:v19];

                  v20 = [*(a1 + 40) cellularSliceUUIDStringForBundleIdentifier:v14];
                  [v18 setCellularSliceUUIDString:v20];

                  v21 = [*(a1 + 40) contentFilterUUIDStringForBundleIdentifier:v14];
                  [v18 setContentFilterUUIDString:v21];

                  v22 = [*(a1 + 40) DNSProxyUUIDStringForBundleIdentifier:v14];
                  [v18 setDNSProxyUUIDString:v22];

                  v23 = [*(a1 + 40) relayUUIDStringForBundleIdentifier:v14];
                  [v18 setRelayUUIDString:v23];

                  v24 = [*(a1 + 40) associatedDomainsForBundleIdentifier:v14];
                  [v18 setAssociatedDomains:v24];

                  v25 = [*(a1 + 40) associatedDomainsEnableDirectDownloadsForBundleIdentifier:v14];
                  [v18 setAssociatedDomainsEnableDirectDownloads:v25];

                  v26 = [*(a1 + 40) removabilityForBundleIdentifier:v14];
                  [v18 setRemovable:v26];

                  v27 = [*(a1 + 40) tapToPayScreenLockForBundleIdentifier:v14];
                  [v18 setTapToPayScreenLock:v27];

                  v28 = [*(a1 + 40) allowUserToHideForBundleIdentifier:v14];
                  [v18 setAllowUserToHide:v28];

                  v29 = [*(a1 + 40) allowUserToLockForBundleIdentifier:v14];
                  [v18 setAllowUserToLock:v29];

                  v30 = [*(a1 + 40) configurationForBundleIdentifier:v14];
                  [v18 setConfiguration:v30];

                  v31 = [*(a1 + 40) feedbackForBundleIdentifier:v14];
                  [v18 setFeedback:v31];

                  v32 = [*(a1 + 40) managementInformationForBundleIdentifier:v14];
                  [v18 setManagementInformation:v32];

                  v33 = [*(a1 + 40) sourceIdentifierForBundleIdentifier:v14];
                  [v18 setSourceIdentifier:v33];

                  v9 = v56;
                  [v59 setObject:v18 forKeyedSubscript:v14];

                  v5 = v58;
                }
              }
            }

            objc_autoreleasePoolPop(v15);
          }

          v11 = [v9 countByEnumeratingWithState:&v69 objects:v77 count:16];
        }

        while (v11);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v34 = v5;
      v35 = [v34 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v66;
        do
        {
          for (j = 0; j != v36; j = j + 1)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v65 + 1) + 8 * j);
            v40 = objc_autoreleasePoolPush();
            v41 = [v34 objectForKeyedSubscript:v39];
            v42 = [v41 managementInformation];

            if (!v42)
            {
              [v59 setObject:0 forKeyedSubscript:v39];
            }

            objc_autoreleasePoolPop(v40);
          }

          v36 = [v34 countByEnumeratingWithState:&v65 objects:v76 count:16];
        }

        while (v36);
      }

      v5 = v58;
    }

    if ([*(a1 + 32) advanceTransientStates])
    {
      [*(a1 + 40) advanceTransientStates];
    }

    if ([*(a1 + 32) deleteFeedback])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v43 = v59;
      v44 = [v43 countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (v44)
      {
        v45 = v44;
        v7 = 0;
        v46 = *v62;
        v57 = 138543362;
        do
        {
          v47 = 0;
          v48 = v7;
          do
          {
            if (*v62 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v61 + 1) + 8 * v47);
            v50 = objc_autoreleasePoolPush();
            v51 = *(a1 + 40);
            v60 = v48;
            v52 = [v51 setFeedback:0 forBundleIdentifier:v49 error:&v60];
            v7 = v60;

            if ((v52 & 1) == 0)
            {
              v53 = DMFAppLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v74 = v49;
                _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Could not delete feedback for bundle identifier: %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v50);
            v47 = v47 + 1;
            v48 = v7;
          }

          while (v45 != v47);
          v45 = [v43 countByEnumeratingWithState:&v61 objects:v75 count:16];
        }

        while (v45);
      }

      else
      {
        v7 = 0;
      }

      v5 = v58;
    }

    else
    {
      v7 = 0;
    }

    v54 = *(a1 + 48);
    v55 = [v59 copy];
    (*(v54 + 16))(v54, v55, 0);
  }
}