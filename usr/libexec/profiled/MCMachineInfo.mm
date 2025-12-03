@interface MCMachineInfo
+ (id)machineInfoWithKeys:(id)keys challenge:(id)challenge identity:(__SecIdentity *)identity additionalInfo:(id)info outError:(id *)error;
@end

@implementation MCMachineInfo

+ (id)machineInfoWithKeys:(id)keys challenge:(id)challenge identity:(__SecIdentity *)identity additionalInfo:(id)info outError:(id *)error
{
  keysCopy = keys;
  challengeCopy = challenge;
  infoCopy = info;
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [keysCopy count] + objc_msgSend(infoCopy, "count"));
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = keysCopy;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        if ([v16 isEqualToString:@"UDID"])
        {
          v17 = MCGestaltGetDeviceUUID();
          v18 = v10;
          v19 = v17;
          v20 = @"UDID";
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"IMEI"])
        {
          v17 = MCCTIMEI();
          v18 = v10;
          v19 = v17;
          v20 = @"IMEI";
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"MEID"])
        {
          v17 = MCCTMEID();
          v18 = v10;
          v19 = v17;
          v20 = @"MEID";
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"VERSION"])
        {
          v17 = MCProductBuildVersion();
          v18 = v10;
          v19 = v17;
          v20 = @"VERSION";
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"SERIAL"])
        {
          v17 = MCIOSerialString();
          [v10 MCSetObjectIfNotNil:v17 forKey:@"SERIAL"];
          goto LABEL_15;
        }

        if ([v16 isEqualToString:@"PRODUCT"])
        {
          v17 = MCGestaltGetProductName();
          v21 = [DMCFeatureOverrides productNameWithDefaultValue:v17];
          [v10 MCSetObjectIfNotNil:v21 forKey:@"PRODUCT"];

          goto LABEL_15;
        }

        if ([v16 isEqualToString:@"LANGUAGE"])
        {
          v17 = +[NSLocale preferredLanguages];
          firstObject = [v17 firstObject];
          [v10 MCSetObjectIfNotNil:firstObject forKey:@"LANGUAGE"];

          goto LABEL_15;
        }

        if ([v16 isEqualToString:@"OS_VERSION"])
        {
          v17 = +[DMCMobileGestalt marketingVersion];
          [v10 MCSetObjectIfNotNil:v17 forKey:@"OS_VERSION"];
          goto LABEL_15;
        }

        if ([v16 isEqualToString:@"SUPPLEMENTAL_BUILD_VERSION"])
        {
          v17 = +[DMCMobileGestalt supplementalBuildVersion];
          v18 = v10;
          v19 = v17;
          v20 = @"SUPPLEMENTAL_BUILD_VERSION";
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"SUPPLEMENTAL_OS_VERSION_EXTRA"])
        {
          v17 = +[DMCMobileGestalt supplementalMarketingVersionExtra];
          v18 = v10;
          v19 = v17;
          v20 = @"SUPPLEMENTAL_OS_VERSION_EXTRA";
LABEL_14:
          [v18 MCSetObjectIfNotNil:v19 forKey:v20];
LABEL_15:

          goto LABEL_16;
        }

        if ([v16 isEqualToString:@"SOFTWARE_UPDATE_DEVICE_ID"])
        {
          v17 = +[SUUtility currentProductType];
          v23 = [DMCFeatureOverrides softwareUpdateDeviceIDWithDefaultValue:v17];
          [v10 MCSetObjectIfNotNil:v23 forKey:@"SOFTWARE_UPDATE_DEVICE_ID"];

          goto LABEL_15;
        }

LABEL_16:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v24 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
      v13 = v24;
    }

    while (v24);
  }

  if (challengeCopy)
  {
    [v10 setObject:challengeCopy forKey:@"CHALLENGE"];
  }

  [v10 addEntriesFromDictionary:infoCopy];
  v25 = +[NSMutableData data];
  v50 = 0;
  v26 = [NSPropertyListSerialization dataWithPropertyList:v10 format:100 options:0 error:&v50];
  v27 = v50;
  if (v27)
  {
    v28 = v27;
    v29 = MCOTAProfilesErrorDomain;
    v30 = MCErrorArray();
    mCCopyAsPrimaryError = [NSError MCErrorWithDomain:v29 code:24000 descriptionArray:v30 underlyingError:v28 errorType:MCErrorTypeFatal, 0];
    goto LABEL_40;
  }

  if (identity)
  {
    v32 = SecCMSSignDataAndAttributes();
    if (v32)
    {
LABEL_39:
      v33 = MCOTAProfilesErrorDomain;
      v30 = [NSNumber numberWithInteger:v32];
      v28 = MCErrorArray();
      mCCopyAsPrimaryError = [NSError MCErrorWithDomain:v33 code:24001 descriptionArray:v28 errorType:MCErrorTypeFatal, v30, 0];
      goto LABEL_40;
    }

LABEL_53:
    v34 = 0;
    goto LABEL_54;
  }

  v39 = MCLockdownCopyBuiltInIdentity();
  if (v39 || sub_10009AD00() && (v39 = MCLockdownCopyBuiltInIdentity()) != 0)
  {
    v40 = v39;
    v41 = MCLockdownGetDeviceIntermediateCertificates();
    v42 = v41;
    if (v41)
    {
      v57 = kSecCMSAdditionalCerts;
      v58 = v41;
      v43 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    }

    else
    {
      v43 = 0;
    }

    v32 = SecCMSCreateSignedData();
    CFRelease(v40);

    if (v32)
    {
      goto LABEL_39;
    }

    goto LABEL_53;
  }

  v44 = MCInstallationErrorDomain;
  v30 = MCErrorArrayByDevice();
  v28 = [NSError MCErrorWithDomain:v44 code:4014 descriptionArray:v30 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v28 MCCopyAsPrimaryError];
LABEL_40:
  v34 = mCCopyAsPrimaryError;

  if (v34)
  {
    v35 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v36 = v35;
      mCVerboseDescription = [v34 MCVerboseDescription];
      *buf = 138543362;
      v56 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not create machine info dictionary. Error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v38 = v34;
      *error = v34;
    }
  }

LABEL_54:

  return v25;
}

@end