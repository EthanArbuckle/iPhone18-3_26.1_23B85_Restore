@interface DMDiOSDeviceController
+ (id)_stringFromSubscriptionSlot:(int64_t)slot;
- (BOOL)_equipmentInfoHasEsimIdentifier:(id)identifier;
- (id)EASIdentifier;
- (id)_deviceInformationForEquipmentInfo:(id)info subscription:(id)subscription esimIdentifier:(id)identifier withClient:(id)client;
- (id)_esimIdentifierFromEquipmentInfoArray:(id)array;
- (id)_isCloudBackupEnabled;
- (id)_isPersonalHotspotEnabled;
- (id)_skippedSetupPanes;
- (id)batteryLevel;
- (id)cellularTechnology;
- (id)deviceLocatorServiceEnabledWithError:(id *)error;
- (id)enforcedSoftwareUpdateDelay;
- (id)isActivationLockEnabledWithError:(id *)error;
- (id)isAppAnalyticsEnabled;
- (id)isDataRoamingEnabled;
- (id)isDiagnosticSubmissionEnabled;
- (id)isDoNotDisturbInEffect;
- (id)isEphemeralMultiUser;
- (id)isLostModeEnabled;
- (id)isNetworkTethered;
- (id)isRoaming;
- (id)isVoiceRoamingEnabled;
- (id)maximumResidentUsers;
- (id)serviceSubscriptions;
@end

@implementation DMDiOSDeviceController

- (id)batteryLevel
{
  if (IOPSGetPercentRemaining())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081E14();
    }

    v2 = &off_1000D7AF0;
  }

  else
  {
    v2 = [NSNumber numberWithDouble:0 / 100.0];
  }

  return v2;
}

- (id)isDoNotDisturbInEffect
{
  v2 = [DNDStateService serviceForClientIdentifier:@"com.apple.dmd"];
  v7 = 0;
  v3 = [v2 queryCurrentStateWithError:&v7];
  v4 = v7;
  if (v3)
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isActive]);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081E90();
    }

    v5 = 0;
  }

  return v5;
}

- (id)isLostModeEnabled
{
  v2 = +[FMDFMIPManager sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isManagedLostModeActive]);

  return v3;
}

- (id)isDiagnosticSubmissionEnabled
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isDiagnosticSubmissionAllowed]);

  return v3;
}

- (id)isAppAnalyticsEnabled
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isAppAnalyticsAllowed]);

  return v3;
}

- (id)cellularTechnology
{
  v2 = +[DMDCoreTelephonyUtilities hasGSM];
  if (+[DMDCoreTelephonyUtilities hasCDMA])
  {
    v3 = v2 | 2;
  }

  else
  {
    v3 = v2;
  }

  return [NSNumber numberWithInt:v3];
}

- (id)isDataRoamingEnabled
{
  v2 = +[DMDCoreTelephonyUtilities dataRoamingEnabled];

  return [NSNumber numberWithBool:v2];
}

- (id)EASIdentifier
{
  v2 = +[DADConnection sharedConnection];
  activeSyncDeviceIdentifier = [v2 activeSyncDeviceIdentifier];

  return activeSyncDeviceIdentifier;
}

- (id)enforcedSoftwareUpdateDelay
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 enforcedSoftwareUpdateDelayInDays]);

  return v3;
}

- (id)isEphemeralMultiUser
{
  v2 = +[UMUserManager sharedManager];
  if ([v2 isMultiUser] && (objc_msgSend(v2, "currentUser"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userType"), v3, v4 == 1))
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (id)isNetworkTethered
{
  v2 = +[DMDNetworkTetherUtilities isNetworkTethered];

  return [NSNumber numberWithBool:v2];
}

- (id)isRoaming
{
  v2 = +[DMDCoreTelephonyUtilities isRoaming];

  return [NSNumber numberWithBool:v2];
}

- (id)maximumResidentUsers
{
  v2 = +[UMUserManager sharedManager];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 maxNumberOfUsers]);

  return v3;
}

- (id)isVoiceRoamingEnabled
{
  v2 = +[DMDCoreTelephonyUtilities voiceRoamingEnabled];

  return [NSNumber numberWithBool:v2];
}

+ (id)_stringFromSubscriptionSlot:(int64_t)slot
{
  v3 = CTSubscriptionSlotAsString();
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (id)_deviceInformationForEquipmentInfo:(id)info subscription:(id)subscription esimIdentifier:(id)identifier withClient:(id)client
{
  infoCopy = info;
  subscriptionCopy = subscription;
  identifierCopy = identifier;
  clientCopy = client;
  v15 = clientCopy;
  if (!infoCopy)
  {
    if (!sub_100082430(a2, self, clientCopy))
    {
LABEL_61:
      v47 = &__NSDictionary0__struct;
      goto LABEL_56;
    }

LABEL_60:
    sub_1000824B4(a2, self);
    goto LABEL_61;
  }

  if (!clientCopy)
  {
    goto LABEL_60;
  }

  v16 = [[CTBundle alloc] initWithBundleType:1];
  v17 = objc_opt_new();
  v69 = 0;
  v18 = [v15 getPreferredDataSubscriptionContextSync:&v69];
  v19 = v69;
  v20 = v19;
  v61 = v18;
  if (!v18 && v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v71 = "[DMDiOSDeviceController _deviceInformationForEquipmentInfo:subscription:esimIdentifier:withClient:]";
    v72 = 2114;
    v73 = v20;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getPreferredDataSubscriptionContextSync: in %s failed: %{public}@", buf, 0x16u);
  }

  v60 = v20;
  v21 = [objc_opt_class() _stringFromSubscriptionSlot:{objc_msgSend(infoCopy, "slotId")}];
  [v17 setObject:v21 forKeyedSubscript:DMFDeviceServiceSubscriptionSlotKey];

  iCCID = [infoCopy ICCID];
  v23 = [DMDCoreTelephonyUtilities formattedICCIDStringFromString:iCCID];
  [v17 setObject:v23 forKeyedSubscript:DMFDeviceICCIDKey];

  iMEI = [infoCopy IMEI];
  v25 = [DMDCoreTelephonyUtilities formattedIMEIStringFromString:iMEI];
  [v17 setObject:v25 forKeyedSubscript:DMFDeviceIMEIKey];

  mEID = [infoCopy MEID];
  [v17 setObject:mEID forKeyedSubscript:DMFDeviceMEIDKey];

  v27 = [infoCopy CSN];
  v28 = DMFDeviceEIDKey;
  [v17 setObject:v27 forKeyedSubscript:DMFDeviceEIDKey];

  if ([(DMDiOSDeviceController *)self _equipmentInfoHasEsimIdentifier:infoCopy])
  {
    [v17 setObject:identifierCopy forKeyedSubscript:v28];
  }

  slotId = [infoCopy slotId];
  if (identifierCopy && slotId == 2 && ![(DMDiOSDeviceController *)self _equipmentInfoHasEsimIdentifier:infoCopy])
  {
    [v17 setObject:identifierCopy forKeyedSubscript:v28];
  }

  if (subscriptionCopy)
  {
    v68 = 0;
    v30 = [v15 getPhoneNumber:subscriptionCopy error:&v68];
    v31 = v68;
    v54 = v30;
    if (v30)
    {
      number = [v30 number];
      if (number)
      {
        [v17 setObject:number forKeyedSubscript:DMFDevicePhoneNumberKey];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081F08();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081F8C();
    }

    v53 = v31;
    v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [subscriptionCopy isEqual:v61]);
    [v17 setObject:v33 forKeyedSubscript:DMFDeviceServiceSubscriptionIsDataPreferredKey];

    userDefaultVoice = [subscriptionCopy userDefaultVoice];
    [v17 setObject:userDefaultVoice forKeyedSubscript:DMFDeviceServiceSubscriptionIsVoicePreferredKey];

    v67 = 0;
    v35 = [v15 getSimLabel:subscriptionCopy error:&v67];
    v59 = v67;
    v52 = v35;
    if (v35)
    {
      text = [v35 text];
      if (text)
      {
        [v17 setObject:text forKeyedSubscript:DMFDeviceServiceSubscriptionLabelKey];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100082010();
      }

      unique_id = [v35 unique_id];
      if (unique_id)
      {
        [v17 setObject:unique_id forKeyedSubscript:DMFDeviceServiceSubscriptionLabelIDKey];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100082094();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082118();
    }

    v66 = 0;
    v38 = [v15 copyCarrierBundleVersion:subscriptionCopy error:&v66];
    v39 = v66;
    if (v38)
    {
      [v17 setObject:v38 forKeyedSubscript:DMFDeviceCarrierSettingsVersionKey];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008219C();
    }

    v65 = 0;
    v40 = [v15 copyCarrierBundleValue:subscriptionCopy key:@"CarrierName" bundleType:v16 error:&v65];
    v58 = v65;
    v51 = v38;
    v49 = v40;
    if (v40)
    {
      [v17 setObject:v40 forKeyedSubscript:DMFDeviceSubscriberCarrierNetworkKey];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082220();
    }

    v64 = 0;
    v41 = [v15 getLocalizedOperatorName:subscriptionCopy error:&v64];
    v56 = identifierCopy;
    v57 = v64;
    v55 = v16;
    if (v41)
    {
      [v17 setObject:v41 forKeyedSubscript:DMFDeviceCurrentCarrierNetworkKey];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000822A4();
    }

    v63 = 0;
    v42 = [v15 copyMobileCountryCode:subscriptionCopy error:&v63];
    v43 = v63;
    v50 = v39;
    if (v42)
    {
      [v17 setObject:v42 forKeyedSubscript:DMFDeviceCurrentMCCKey];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082328();
    }

    v62 = 0;
    v44 = [v15 copyMobileNetworkCode:subscriptionCopy error:&v62];
    v45 = v62;
    if (v44)
    {
      [v17 setObject:v44 forKeyedSubscript:DMFDeviceCurrentMNCKey];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000823AC();
    }

    v46 = [NSNumber numberWithBool:[DMDCoreTelephonyUtilities isSubscriptionRoaming:subscriptionCopy client:v15]];
    [v17 setObject:v46 forKeyedSubscript:DMFDeviceIsRoamingKey];

    v16 = v55;
    identifierCopy = v56;
  }

  v47 = [v17 copy];

LABEL_56:

  return v47;
}

- (BOOL)_equipmentInfoHasEsimIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayCSN = [identifierCopy displayCSN];
  if (displayCSN)
  {
    v5 = 1;
  }

  else
  {
    v6 = [identifierCopy CSN];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)serviceSubscriptions
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  if (!v3)
  {
    sub_100082530(a2, self);
  }

  v51 = objc_opt_new();
  v4 = objc_opt_new();
  v69 = 0;
  v5 = [v3 getMobileEquipmentInfo:&v69];
  v6 = v69;
  if (v5)
  {
    meInfoList = [v5 meInfoList];
    if (!meInfoList)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081360();
      }

      v18 = 0;
      goto LABEL_54;
    }

    v42 = a2;
    v47 = v6;
    v48 = v5;
    v8 = [(DMDiOSDeviceController *)self _esimIdentifierFromEquipmentInfoArray:meInfoList];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = meInfoList;
    v9 = meInfoList;
    v10 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v66;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          slotId = [v14 slotId];
          if (!slotId)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000825E8();
            }

            goto LABEL_22;
          }

          v16 = [NSNumber numberWithInteger:slotId];
          v17 = [v4 objectForKeyedSubscript:v16];
          if (v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000825A4(&buf, v64);
          }

          [v4 setObject:v14 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v19 = objc_opt_new();
    v62 = 0;
    v20 = [v3 getSubscriptionInfoWithError:&v62];
    v49 = v4;
    v44 = v62;
    v45 = v20;
    if (v20)
    {
      subscriptionsInUse = [v20 subscriptionsInUse];
      if (subscriptionsInUse)
      {
        v43 = v3;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = subscriptionsInUse;
        v23 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v59;
          while (2)
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v59 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v58 + 1) + 8 * j);
              slotID = [v27 slotID];
              if (!slotID)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_100082670();
                }

                goto LABEL_45;
              }

              v29 = [NSNumber numberWithInteger:slotID];
              v30 = [v19 objectForKeyedSubscript:v29];
              if (v30 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10008262C(&v56, v57);
              }

              [v19 setObject:v27 forKeyedSubscript:v29];
            }

            v24 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_45:
        v31 = v43;

        goto LABEL_46;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000826B4(v42);
    }

    v31 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100082754();
    }

LABEL_46:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    allValues = [v49 allValues];
    v33 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v53;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(allValues);
          }

          v37 = *(*(&v52 + 1) + 8 * k);
          v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 slotId]);
          v39 = [v19 objectForKeyedSubscript:v38];

          v40 = [(DMDiOSDeviceController *)self _deviceInformationForEquipmentInfo:v37 subscription:v39 esimIdentifier:v8 withClient:v31];
          [v51 addObject:v40];
        }

        v34 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
      }

      while (v34);
    }

    v18 = [v51 copy];
    v3 = v31;
    v5 = v48;
    v4 = v49;
    meInfoList = v46;
    v6 = v47;
LABEL_54:

    goto LABEL_55;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100082798();
  }

  v18 = 0;
LABEL_55:

  return v18;
}

- (id)_esimIdentifierFromEquipmentInfoArray:(id)array
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  arrayCopy = array;
  v4 = [arrayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        displayCSN = [v7 displayCSN];
        if (displayCSN)
        {
          v9 = displayCSN;
          displayCSN2 = [v7 displayCSN];
          v11 = [displayCSN2 length];

          if (v11)
          {
            displayCSN3 = [v7 displayCSN];
LABEL_15:
            v4 = displayCSN3;
            goto LABEL_16;
          }
        }

        v12 = [v7 CSN];
        if (v12)
        {
          v13 = v12;
          v14 = [v7 CSN];
          v15 = [v14 length];

          if (v15)
          {
            displayCSN3 = [v7 CSN];
            goto LABEL_15;
          }
        }
      }

      v4 = [arrayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v17 = [v4 copy];

  return v17;
}

- (id)deviceLocatorServiceEnabledWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10003799C;
  v22 = sub_1000379AC;
  v23 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[FMDFMIPManager sharedInstance];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000379B4;
  v14 = &unk_1000CEEB0;
  v16 = &v18;
  v17 = &v24;
  v6 = v4;
  v15 = v6;
  [v5 fmipStateWithCompletion:&v11];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v19[5];
  if (v7)
  {
    if (error)
    {
      v28 = NSUnderlyingErrorKey;
      v29 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1, v11, v12, v13, v14];
      v9 = DMFErrorWithCodeAndUserInfo();
      *error = v9;

      error = 0;
    }
  }

  else
  {
    error = [NSNumber numberWithBool:*(v25 + 24), v11, v12, v13, v14];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return error;
}

- (id)isActivationLockEnabledWithError:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10003799C;
  v23 = sub_1000379AC;
  v24 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[FMDFMIPManager sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100037C74;
  v15 = &unk_1000CEED8;
  v17 = &v19;
  v18 = &v25;
  v6 = v4;
  v16 = v6;
  [v5 isActivationLockedWithCompletion:&v12];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v7 = v20[5];
    if (v7)
    {
      v29 = NSUnderlyingErrorKey;
      v30 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1, v12, v13, v14, v15];
      v9 = DMFErrorWithCodeAndUserInfo();
      *error = v9;
    }
  }

  v10 = [NSNumber numberWithBool:*(v26 + 24), v12, v13, v14, v15];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

- (id)_isCloudBackupEnabled
{
  v2 = objc_opt_new();
  aa_primaryAppleAccountWithPreloadedDataclasses = [v2 aa_primaryAppleAccountWithPreloadedDataclasses];

  if (aa_primaryAppleAccountWithPreloadedDataclasses && [aa_primaryAppleAccountWithPreloadedDataclasses isEnabledForDataclass:kAccountDataclassBackup])
  {
    aa_isPrimaryEmailVerified = [aa_primaryAppleAccountWithPreloadedDataclasses aa_isPrimaryEmailVerified];
  }

  else
  {
    aa_isPrimaryEmailVerified = 0;
  }

  v5 = [NSNumber numberWithBool:aa_isPrimaryEmailVerified];

  return v5;
}

- (id)_isPersonalHotspotEnabled
{
  if (+[DMDMobileGestalt hasPersonalHotspotCapability])
  {
    v2 = +[DMDPersonalHotspotManager sharedManager];
    enabled = [v2 enabled];
  }

  else
  {
    enabled = 0;
  }

  return [NSNumber numberWithBool:enabled];
}

- (id)_skippedSetupPanes
{
  v2 = objc_opt_new();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/mobile/Library/Application Support/com.apple.dmd-setup-option"];

  if (v4)
  {
    [v2 addObject:kMCCCSkipSetupTapToSetup];
  }

  v5 = [v2 copy];

  return v5;
}

@end