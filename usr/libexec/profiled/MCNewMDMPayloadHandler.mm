@interface MCNewMDMPayloadHandler
+ (id)_exchangeSyncUUIDString;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)_cannotCheckInErrorWithName:(id)name;
- (id)_mdmDictWithInstaller:(id)installer options:(id)options payload:(id)payload;
- (id)persistentRefForUUID:(id)d outError:(id *)error;
- (id)persistentRefsForUUIDs:(id)ds outError:(id *)error;
- (void)_releaseDependency;
- (void)_retainDependency;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)removeWithInstaller:(id)installer options:(id)options;
- (void)setAside;
- (void)setAsideWithInstaller:(id)installer;
- (void)setIdleRebootValue:(BOOL)value;
- (void)unsetAside;
@end

@implementation MCNewMDMPayloadHandler

+ (id)_exchangeSyncUUIDString
{
  v2 = +[NSUUID UUID];
  v19[0] = 0;
  v19[1] = 0;
  [v2 getUUIDBytes:v19];
  v3 = [NSData dataWithBytes:v19 length:16];
  v4 = [v3 length];
  v5 = ((8 * v4) | 4) / 5;
  v6 = [v3 mutableCopy];
  [v6 appendBytes:&unk_100136A98 length:4];
  bytes = [v6 bytes];
  v8 = malloc_type_calloc(v5 + 1, v5, 0x100004077774924uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = 0;
    if (v5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v5;
    }

    v12 = v11 + 4 * v11;
    v13 = v8;
    do
    {
      v14 = (16 * ((bytes[v10 >> 3] >> (~v10 & 7)) & 1)) | (8 * ((bytes[(v10 + 1) >> 3] >> (~(v10 + 1) & 7)) & 1)) | (4 * ((bytes[(v10 + 2) >> 3] >> (~(v10 + 2) & 7)) & 1)) | (2 * ((bytes[(v10 + 3) >> 3] >> (~(v10 + 3) & 7)) & 1)) | (bytes[(v10 + 4) >> 3] >> (~(v10 + 4) & 7)) & 1;
      v15 = v14 | 0x30;
      v16 = v14 + 55;
      if (((16 * ((bytes[v10 >> 3] >> (~v10 & 7)) & 1)) | (8 * ((bytes[(v10 + 1) >> 3] >> (~(v10 + 1) & 7)) & 1)) | (4 * ((bytes[(v10 + 2) >> 3] >> (~(v10 + 2) & 7)) & 1)) | (2 * ((bytes[(v10 + 3) >> 3] >> (~(v10 + 3) & 7)) & 1))) < 0xA)
      {
        v16 = v15;
      }

      *v13++ = v16;
      v10 += 5;
    }

    while (v12 != v10);
  }

  v17 = [NSString stringWithUTF8String:v8];
  free(v9);

  return v17;
}

- (id)_cannotCheckInErrorWithName:(id)name
{
  v3 = MCMDMErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:12002 descriptionArray:v4 errorType:MCErrorTypeNeedsRetry, name, 0];

  return v5;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v70 = +[NSFileManager defaultManager];
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_10003F8CC;
  v84 = sub_10003F8DC;
  v85 = 0;
  v11 = kMDMPasscodeKey;
  v12 = [optionsCopy objectForKeyedSubscript:kMDMPasscodeKey];
  if (v12)
  {
    v13 = [optionsCopy mutableCopy];
    [v13 removeObjectForKey:v11];
    v14 = [v13 copy];

    optionsCopy = v14;
  }

  v15 = MDMFilePath();
  v16 = [v70 fileExistsAtPath:v15];

  if (v16)
  {
    payload = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12001 descriptionArray:payload errorType:MCErrorTypeFatal, 0];
    mCCopyAsPrimaryError = [v18 MCCopyAsPrimaryError];
LABEL_7:
    v22 = 0;
    v23 = v81[5];
    v81[5] = mCCopyAsPrimaryError;
LABEL_8:

    goto LABEL_9;
  }

  v20 = +[MCRestrictionManager sharedManager];
  v21 = [v20 effectiveRestrictedBoolForSetting:MCFeatureMDMEnrollmentAllowed] == 2;

  if (v21)
  {
    payload = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12088 descriptionArray:payload errorType:MCErrorTypeFatal, 0];
    mCCopyAsPrimaryError = [v18 MCCopyAsPrimaryError];
    goto LABEL_7;
  }

  payload = [(MCNewPayloadHandler *)self payload];
  identityUUID = [payload identityUUID];
  v39 = (v81 + 5);
  obj = v81[5];
  v18 = [(MCNewMDMPayloadHandler *)self persistentRefForUUID:identityUUID outError:&obj];
  objc_storeStrong(v39, obj);

  if (!v81[5])
  {
    [payload setIdentityPersistentID:v18];
    serverPinningUUIDs = [payload serverPinningUUIDs];
    v41 = (v81 + 5);
    v78 = v81[5];
    v23 = [(MCNewMDMPayloadHandler *)self persistentRefsForUUIDs:serverPinningUUIDs outError:&v78];
    objc_storeStrong(v41, v78);

    if (v81[5])
    {
      v22 = 0;
      goto LABEL_8;
    }

    [payload setServerPinningPersistentRefs:v23];
    checkInPinningUUIDs = [payload checkInPinningUUIDs];
    v43 = (v81 + 5);
    v77 = v81[5];
    v44 = [(MCNewMDMPayloadHandler *)self persistentRefsForUUIDs:checkInPinningUUIDs outError:&v77];
    objc_storeStrong(v43, v77);

    if (v81[5])
    {
      goto LABEL_40;
    }

    [payload setCheckInPinningPersistentRefs:v44];
    v45 = +[MCActivationUtilities sharedInstance];
    isHRNMode = [v45 isHRNMode];

    if (isHRNMode == 2)
    {
      pollingIntervalMinutes = [payload pollingIntervalMinutes];
      friendlyName2 = pollingIntervalMinutes;
      if (pollingIntervalMinutes)
      {
        if ([pollingIntervalMinutes integerValue] > 4)
        {
LABEL_38:

LABEL_39:
          if (!v81[5])
          {
            v55 = [(MCNewMDMPayloadHandler *)self _mdmDictWithInstaller:installerCopy options:optionsCopy payload:payload];
            v56 = +[MDMConfiguration sharedConfiguration];
            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = sub_10003F8E4;
            v75[3] = &unk_10011C3A8;
            v67 = v55;
            v76 = v67;
            v57 = (v81 + 5);
            v74 = v81[5];
            [v56 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v75 error:&v74];
            objc_storeStrong(v57, v74);

            v58 = v81[5];
            v22 = v58 == 0;
            if (!v58)
            {
              MDMSendManagingOrgInfoChangedNotification();
              v59 = +[MCProvisioningProfileJanitor sharedJanitor];
              [v59 didEnrollInMDMWithPasscodeContext:v12 duringMigration:0];

              v60 = dispatch_semaphore_create(0);
              v64 = +[MDMClient sharedClient];
              v71[0] = _NSConcreteStackBlock;
              v71[1] = 3221225472;
              v71[2] = sub_10003F938;
              v71[3] = &unk_10011BFA0;
              v73 = &v80;
              dsema = v60;
              v72 = dsema;
              [v64 sendMDMAuthenticationRequestWithCompletionHandler:v71];

              dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
              if (!v81[5])
              {
                [(MCNewMDMPayloadHandler *)self _retainDependency];
                serverCapabilities = [payload serverCapabilities];
                v65 = [serverCapabilities containsObject:kMDMUserChannelCapability];

                if (v65)
                {
                  v62 = +[MDMUserClient sharedClient];
                  [v62 scheduleTokenUpdate];
                }
              }
            }

            goto LABEL_41;
          }

LABEL_40:
          v22 = 0;
LABEL_41:

          goto LABEL_8;
        }

        friendlyName = [payload friendlyName];
        v51 = MCErrorArray();
        v53 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12096 descriptionArray:v51 errorType:MCErrorTypeFatal, friendlyName, 0];
      }

      else
      {
        friendlyName = [payload friendlyName];
        v51 = MCErrorArray();
        v53 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12097 descriptionArray:v51 errorType:MCErrorTypeFatal, friendlyName, 0];
      }

      v54 = v81[5];
      v81[5] = v53;
    }

    else
    {
      if (isHRNMode == 1)
      {
        topic = [payload topic];
        v50 = topic == 0;

        if (!v50)
        {
          goto LABEL_39;
        }

        friendlyName2 = [payload friendlyName];
        friendlyName = MCErrorArray();
        mCCopyAsPrimaryError2 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12098 descriptionArray:friendlyName errorType:MCErrorTypeFatal, friendlyName2, 0];
      }

      else
      {
        if (isHRNMode)
        {
          goto LABEL_39;
        }

        friendlyName2 = MCErrorArray();
        friendlyName = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12099 descriptionArray:friendlyName2 errorType:MCErrorTypeFatal, 0];
        mCCopyAsPrimaryError2 = [friendlyName MCCopyAsPrimaryError];
      }

      v51 = v81[5];
      v81[5] = mCCopyAsPrimaryError2;
    }

    goto LABEL_38;
  }

  v22 = 0;
LABEL_9:

  v24 = v81[5];
  if (v24)
  {
    payload2 = [(MCNewPayloadHandler *)self payload];
    friendlyName3 = [payload2 friendlyName];
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4001 descriptionArray:v27 underlyingError:v81[5] errorType:MCErrorTypeFatal, friendlyName3, 0];

    if (error)
    {
      v29 = v28;
      *error = v28;
    }

    v30 = _MCLogObjects[0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      payload3 = [(MCNewPayloadHandler *)self payload];
      friendlyName4 = [payload3 friendlyName];
      mCVerboseDescription = [v28 MCVerboseDescription];
      *buf = 138543618;
      v87 = friendlyName4;
      v88 = 2114;
      v89 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Cannot install MDM “%{public}@”. Error: %{public}@", buf, 0x16u);
    }

    if (v22)
    {
      v34 = +[MDMConfiguration sharedConfiguration];
      [v34 removeMDMConfigurationWithError:0];

      MDMSendManagingOrgInfoChangedNotification();
    }
  }

  else
  {
    MDMSendDevicePostureChangedNotification();
    v35 = +[MDMCloudConfiguration sharedConfiguration];
    isSupervised = [v35 isSupervised];

    if (isSupervised)
    {
      [(MCNewMDMPayloadHandler *)self setIdleRebootValue:0];
    }
  }

  _Block_object_dispose(&v80, 8);
  return v24 == 0;
}

- (id)_mdmDictWithInstaller:(id)installer options:(id)options payload:(id)payload
{
  optionsCopy = options;
  payloadCopy = payload;
  installerCopy = installer;
  v12 = +[NSMutableDictionary dictionary];
  profile = [payloadCopy profile];
  identifier = [profile identifier];
  [v12 setObject:identifier forKey:kMDMManagingProfileIdentifierKey];

  identityPersistentID = [payloadCopy identityPersistentID];
  [v12 MCSetObjectIfNotNil:identityPersistentID forKey:kMDMIdentityPersistentRefKey];

  serverPinningPersistentRefs = [payloadCopy serverPinningPersistentRefs];
  [v12 MCSetObjectIfNotNil:serverPinningPersistentRefs forKey:kMDMServerPinningCertPersistentRefsKey];

  checkInPinningPersistentRefs = [payloadCopy checkInPinningPersistentRefs];
  [v12 MCSetObjectIfNotNil:checkInPinningPersistentRefs forKey:kMDMCheckInPinningCertPersistentRefsKey];

  v18 = &sem_close_ptr;
  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy pinningRevocationCheckRequired]);
  [v12 setObject:v19 forKey:kMDMPinningRevocationCheckRequiredKey];

  topic = [payloadCopy topic];
  [v12 MCSetObjectIfNotNil:topic forKey:kMDMTopicKey];

  pollingIntervalMinutes = [payloadCopy pollingIntervalMinutes];
  [v12 MCSetObjectIfNotNil:pollingIntervalMinutes forKey:kMDMPollingIntervalKey];

  serverURLString = [payloadCopy serverURLString];
  [v12 MCSetObjectIfNotNil:serverURLString forKey:kMDMServerURLKey];

  checkInURLString = [payloadCopy checkInURLString];
  [v12 MCSetObjectIfNotNil:checkInURLString forKey:kMDMCheckInURLKey];

  serverCapabilities = [payloadCopy serverCapabilities];
  [v12 MCSetObjectIfNotNil:serverCapabilities forKey:kMDMServerCapabilitiesKey];

  v25 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [payloadCopy accessRights]);
  [v12 setObject:v25 forKey:kMDMAccessRightsKey];

  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy useDevelopmentAPNS]);
  [v12 setObject:v26 forKey:kMDMUseDevelopmentAPNSKey];

  v27 = +[NSString MCMakeUUID];
  [v12 setObject:v27 forKey:kMDMPushMagicKey];

  v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy signMessage]);
  [v12 setObject:v28 forKey:kMDMSignMessageKey];

  enrollmentMode = [payloadCopy enrollmentMode];
  [v12 MCSetObjectIfNotNil:enrollmentMode forKey:kMDMEnrollmentModeKey];

  requiredAppIDForMDM = [payloadCopy requiredAppIDForMDM];
  [v12 MCSetObjectIfNotNil:requiredAppIDForMDM forKey:kMDMRequiredAppIDForMDMKey];

  v31 = [installerCopy setAsideDictionariesForPayloadHandlerClass:objc_opt_class()];

  v73 = v31;
  if ([v31 count] == 1)
  {
    anyObject = [v31 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  v33 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsESSOEnrollment];
  bOOLValue = [v33 BOOLValue];

  if (bOOLValue)
  {
    v35 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionESSOAppITunesStoreID];
    v36 = kMDMEnrollmentSSOAppStoreIDKey;
  }

  else
  {
    v36 = kMDMEnrollmentSSOAppStoreIDKey;
    if (anyObject)
    {
      v35 = [anyObject objectForKeyedSubscript:kMDMEnrollmentSSOAppStoreIDKey];
    }

    else
    {
      v35 = 0;
    }
  }

  v72 = v35;
  [v12 MCSetObjectIfNotNil:v35 forKey:v36];
  v37 = +[MCMDMOptionsUtilities defaultMDMOptions];
  if (v37)
  {
    [v12 setObject:v37 forKeyedSubscript:kMDMOptionsKey];
  }

  v71 = v37;
  if (anyObject)
  {
    v38 = [anyObject objectForKeyedSubscript:kMDMPersonaKey];
    if (![payloadCopy isUserEnrollment])
    {
      goto LABEL_24;
    }

    v68 = a2;
    v69 = optionsCopy;
    selfCopy2 = self;
    v39 = kMDMEnrollmentIDKey;
    uUIDString = [anyObject objectForKeyedSubscript:kMDMEnrollmentIDKey];
    v41 = kMDMiCloudEnrollmentIDKey;
    uUIDString2 = [anyObject objectForKeyedSubscript:kMDMiCloudEnrollmentIDKey];
    v43 = kMDMEASEnrollmentIDKey;
    _exchangeSyncUUIDString = [anyObject objectForKeyedSubscript:kMDMEASEnrollmentIDKey];
  }

  else
  {
    if (([payloadCopy isUserEnrollment] & 1) == 0)
    {
      v38 = 0;
      goto LABEL_24;
    }

    v68 = a2;
    v69 = optionsCopy;
    v45 = +[NSUUID UUID];
    uUIDString = [v45 UUIDString];

    v46 = +[NSUUID UUID];
    uUIDString2 = [v46 UUIDString];

    selfCopy2 = self;
    _exchangeSyncUUIDString = [objc_opt_class() _exchangeSyncUUIDString];
    v47 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v75 = _exchangeSyncUUIDString;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Generated new EAS Enrollment ID: %{private}@", buf, 0xCu);
    }

    v38 = 0;
    v39 = kMDMEnrollmentIDKey;
    v41 = kMDMiCloudEnrollmentIDKey;
    v43 = kMDMEASEnrollmentIDKey;
  }

  [v12 setObject:uUIDString forKeyedSubscript:v39];
  [v12 setObject:uUIDString2 forKeyedSubscript:v41];
  [v12 setObject:_exchangeSyncUUIDString forKeyedSubscript:v43];
  [payloadCopy setEnrollmentID:uUIDString];
  [payloadCopy setICloudEnrollmentID:uUIDString2];
  [payloadCopy setEasEnrollmentID:_exchangeSyncUUIDString];
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:kMDMUserEnrollmentKey];
  if (v38)
  {
    personaID = [payloadCopy personaID];
    if (personaID)
    {
      v49 = personaID;
      personaID2 = [payloadCopy personaID];
      v51 = [personaID2 isEqualToString:v38];

      if ((v51 & 1) == 0)
      {
        v52 = +[NSAssertionHandler currentHandler];
        personaID3 = [payloadCopy personaID];
        [v52 handleFailureInMethod:v68 object:selfCopy2 file:@"MCNewMDMPayloadHandler.m" lineNumber:378 description:{@"Persona ID from the new payload (%@) and the old payload (%@) doesn't match!!!", personaID3, v38}];
      }
    }
  }

  optionsCopy = v69;
  self = selfCopy2;
  v18 = &sem_close_ptr;
LABEL_24:
  personaID4 = [payloadCopy personaID];
  v55 = personaID4;
  if (personaID4)
  {
    v56 = personaID4;
  }

  else
  {
    v56 = v38;
  }

  [payloadCopy setPersonaID:v56];

  personaID5 = [payloadCopy personaID];
  [v12 setObject:personaID5 forKeyedSubscript:kMDMPersonaKey];

  v58 = v18[244];
  v59 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
  v60 = [v58 numberWithBool:{objc_msgSend(v59, "BOOLValue")}];
  [v12 setObject:v60 forKeyedSubscript:kMDMIsADEProfileKey];

  v61 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
  LODWORD(v59) = [v61 BOOLValue];

  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile2 = [profileHandler profile];
  isLocked = [profile2 isLocked];

  v65 = [v18[244] numberWithBool:v59 | isLocked];
  [v12 setObject:v65 forKeyedSubscript:kMDMIsProfileLockedKey];

  v66 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionRMAccountIdentifier];
  if (v66)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 setObject:v66 forKeyedSubscript:kMDMRMAccountIDKey];
    }
  }

  return v12;
}

- (id)persistentRefForUUID:(id)d outError:(id *)error
{
  dCopy = d;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  v8 = [profileHandler persistentIDForCertificateUUID:dCopy];

  if (v8)
  {
    v9 = v8;
  }

  else if (error)
  {
    v10 = MCMDMErrorDomain;
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    v13 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v10 code:12005 descriptionArray:v13 errorType:MCErrorTypeFatal, friendlyName, 0];
  }

  return v8;
}

- (id)persistentRefsForUUIDs:(id)ds outError:(id *)error
{
  dsCopy = ds;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(MCNewMDMPayloadHandler *)self persistentRefForUUID:*(*(&v17 + 1) + 8 * i) outError:error, v17];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_11:

  return v15;
}

- (void)_retainDependency
{
  payload = [(MCNewPayloadHandler *)self payload];
  identityPersistentID = [payload identityPersistentID];
  v4 = [NSMutableArray arrayWithObject:identityPersistentID];

  serverPinningPersistentRefs = [payload serverPinningPersistentRefs];
  if (serverPinningPersistentRefs)
  {
    [v4 addObjectsFromArray:serverPinningPersistentRefs];
  }

  v16 = serverPinningPersistentRefs;
  checkInPinningPersistentRefs = [payload checkInPinningPersistentRefs];
  if (checkInPinningPersistentRefs)
  {
    [v4 addObjectsFromArray:checkInPinningPersistentRefs];
  }

  v7 = +[MCDependencyManager sharedManager];
  uUID = [payload UUID];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    v13 = kMCDMCertificateToPayloadUUIDDependencyKey;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        mCHexString = [*(*(&v17 + 1) + 8 * v14) MCHexString];
        [v7 addDependent:uUID ofParent:mCHexString inDomain:v13];

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_releaseDependency
{
  payload = [(MCNewPayloadHandler *)self payload];
  identityPersistentID = [payload identityPersistentID];
  v4 = [NSMutableArray arrayWithObject:identityPersistentID];

  serverPinningPersistentRefs = [payload serverPinningPersistentRefs];
  serverPinningPersistentRefs2 = [payload serverPinningPersistentRefs];

  if (serverPinningPersistentRefs2)
  {
    [v4 addObjectsFromArray:serverPinningPersistentRefs];
  }

  v18 = serverPinningPersistentRefs;
  checkInPinningPersistentRefs = [payload checkInPinningPersistentRefs];
  checkInPinningPersistentRefs2 = [payload checkInPinningPersistentRefs];

  if (checkInPinningPersistentRefs2)
  {
    [v4 addObjectsFromArray:checkInPinningPersistentRefs];
  }

  v9 = +[MCDependencyManager sharedManager];
  uUID = [payload UUID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    v15 = kMCDMCertificateToPayloadUUIDDependencyKey;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        mCHexString = [*(*(&v19 + 1) + 8 * v16) MCHexString];
        [v9 removeDependent:uUID fromParent:mCHexString inDomain:v15];

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }
}

- (void)setAside
{
  v3 = MDMFilePath();
  v4 = [NSData dataWithContentsOfFile:v3];
  v5 = [NSPropertyListSerialization MCSafePropertyListWithData:v4 options:0 format:0 error:0];
  setAsideDictionary = self->_setAsideDictionary;
  self->_setAsideDictionary = v5;

  v7 = [MCKeychain stringFromService:kMDMServiceKey account:kMDMEscrowSecretAccountKey label:0 description:0 useSystemKeychain:0 outError:0];
  setAsideEscrowSecret = self->_setAsideEscrowSecret;
  self->_setAsideEscrowSecret = v7;

  v9 = +[MDMConfiguration sharedConfiguration];
  v14 = 0;
  [v9 removeMDMConfigurationWithError:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = MDMFilePath();
      *buf = 136315650;
      v16 = "[MCNewMDMPayloadHandler setAside]";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to remove item at path: %@ with error: %@", buf, 0x20u);
    }
  }

  MDMSendManagingOrgInfoChangedNotification();
  self->_setAside = 1;
  [(MCNewMDMPayloadHandler *)self _releaseDependency];
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v12.receiver = self;
  v12.super_class = MCNewMDMPayloadHandler;
  [(MCNewPayloadHandler *)&v12 setAsideWithInstaller:installerCopy];
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = objc_opt_new();
  enrollmentID = [payload enrollmentID];
  [v6 setObject:enrollmentID forKeyedSubscript:kMDMEnrollmentIDKey];

  iCloudEnrollmentID = [payload iCloudEnrollmentID];
  [v6 setObject:iCloudEnrollmentID forKeyedSubscript:kMDMiCloudEnrollmentIDKey];

  easEnrollmentID = [payload easEnrollmentID];
  [v6 setObject:easEnrollmentID forKeyedSubscript:kMDMEASEnrollmentIDKey];

  personaID = [payload personaID];
  [v6 setObject:personaID forKeyedSubscript:kMDMPersonaKey];

  if ([v6 count])
  {
    v11 = [v6 copy];
    [installerCopy addSetAsideDictionary:v11 forPayloadHandlerClass:objc_opt_class()];
  }
}

- (void)unsetAside
{
  if (self->_setAside)
  {
    setAsideDictionary = self->_setAsideDictionary;
    v4 = MDMFilePath();
    [(NSMutableDictionary *)setAsideDictionary MCWriteToBinaryFile:v4];

    v5 = self->_setAsideDictionary;
    self->_setAsideDictionary = 0;

    v6 = +[MDMConfiguration sharedConfiguration];
    [v6 refreshDetailsFromDisk];

    setAsideEscrowSecret = self->_setAsideEscrowSecret;
    if (setAsideEscrowSecret)
    {
      LOWORD(v10) = 256;
      [MCKeychain setString:setAsideEscrowSecret forService:kMDMServiceKey account:kMDMEscrowSecretAccountKey label:0 description:0 access:kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate group:0 useSystemKeychain:v10 sysBound:0 outError:?];
      v8 = self->_setAsideEscrowSecret;
      self->_setAsideEscrowSecret = 0;
    }

    [(MCNewMDMPayloadHandler *)self _retainDependency];
    self->_setAside = 0;
    v9 = +[MDMClient sharedClient];
    [v9 notifyNewConfiguration];

    if (+[DMCMultiUserModeUtilities inSharediPadUserSession])
    {
      v11 = +[MDMUserClient sharedClient];
      [v11 notifyNewConfiguration];
    }
  }
}

- (void)removeWithInstaller:(id)installer options:(id)options
{
  installerCopy = installer;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:kMCRemoveProfileOptionRemovedDueToMigrationFromOtherDevice];
  bOOLValue = [v8 BOOLValue];

  v10 = +[MDMConfiguration sharedConfiguration];
  rmAccountID = [v10 rmAccountID];

  if (!self->_setAside)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    if ([payload checkOutWhenRemoved])
    {
      *v44 = 0;
      v45 = v44;
      v46 = 0x3032000000;
      v47 = sub_10003F8CC;
      v48 = sub_10003F8DC;
      v49 = 0;
      v13 = dispatch_semaphore_create(0);
      v14 = +[MDMClient sharedClient];
      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_100041338;
      v41 = &unk_10011BFA0;
      v43 = v44;
      v15 = v13;
      v42 = v15;
      [v14 sendMDMCheckOutRequestWithCompletionHandler:&v38];

      v16 = dispatch_time(0, 0x6FC23B000);
      dispatch_semaphore_wait(v15, v16);
      if (*(v45 + 5))
      {
        v17 = _MCLogObjects[1];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          mCVerboseDescription = [*(v45 + 5) MCVerboseDescription];
          *buf = 138543362;
          v53 = mCVerboseDescription;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot check out. Error: %{public}@", buf, 0xCu);
        }
      }

      _Block_object_dispose(v44, 8);
    }

    v19 = [MCProvisioningProfileJanitor sharedJanitor:v38];
    [v19 didUnenrollFromMDM];

    [(MCNewMDMPayloadHandler *)self setIdleRebootValue:1];
    v20 = +[MDMClient sharedClient];
    [v20 uprootMDM];

    v21 = _MCLogObjects[1];
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
    {
      if (v22)
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Preserving unlock token (if any) because we removed the MDM profile through migration", v44, 2u);
      }
    }

    else
    {
      if (v22)
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleting unlock token (if any) because we removed the MDM profile", v44, 2u);
      }

      MCKeybagDeleteMDMEscrowSecret();
      MCKeybagDeleteMDMEscrowData();
    }

    [(MCNewMDMPayloadHandler *)self _releaseDependency];
    setAsideDictionary = self->_setAsideDictionary;
    self->_setAsideDictionary = 0;

    personaID = [payload personaID];

    if (personaID)
    {
      v25 = objc_opt_new();
      v50[0] = @"Persona Identifier";
      personaID2 = [payload personaID];
      v50[1] = @"Profile Identifier";
      v51[0] = personaID2;
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler profile];
      identifier = [profile identifier];
      v30 = identifier;
      v31 = &stru_10011E740;
      if (identifier)
      {
        v31 = identifier;
      }

      v51[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
      [v25 logRegularEventForTopic:DMCEventsTopicPersona reason:@"Delete Persona during MDM profile uninstallation" details:v32];

      personaID3 = [payload personaID];
      [DMCPersonaHelper removePersonaAndAccountsWithPersonaID:personaID3];
    }

    else
    {
      if (!rmAccountID)
      {
LABEL_23:

        goto LABEL_24;
      }

      v34 = objc_opt_new();
      [v34 signOutAllPrimaryAccounts];

      personaID3 = +[ACAccountStore defaultStore];
      v35 = [personaID3 dmc_remoteManagementAccountForIdentifier:rmAccountID];
      v36 = v35;
      if (v35)
      {
        dmc_altDSID = [v35 dmc_altDSID];
        [personaID3 dmc_removeMAIDRelatedAccountsWithAltDSID:dmc_altDSID asynchronous:0];
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v4 = [MDMClient sharedClient:restrictions];
  [v4 notifyNewConfiguration];

  v5 = +[MDMClient sharedClient];
  [v5 scheduleTokenUpdate];

  if (+[DMCMultiUserModeUtilities inSharediPadUserSession])
  {
    v6 = +[MDMUserClient sharedClient];
    [v6 notifyNewConfiguration];
  }
}

- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v4 = [MDMClient sharedClient:restrictions];
  [v4 notifyNewConfiguration];

  if (+[DMCMultiUserModeUtilities inSharediPadUserSession])
  {
    v5 = +[MDMUserClient sharedClient];
    [v5 notifyNewConfiguration];
  }
}

- (void)setIdleRebootValue:(BOOL)value
{
  valueCopy = value;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = valueCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to set kAKSConfigInactivityRebootEnabled config with value: %x\n...", &v14, 8u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = Mutable;
  v7 = &kCFBooleanFalse;
  if (valueCopy)
  {
    v7 = &kCFBooleanTrue;
  }

  CFDictionaryAddValue(Mutable, @"InactivityRebootEnabled", *v7);
  v8 = sub_1000C0D4C(-3, 0, 0);
  v9 = _MCLogObjects[0];
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = v10;
      v11 = "Error calling aks_set_configuration with kAKSConfigInactivityRebootEnabled config! Error code: %x\n";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v14, 8u);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = valueCopy;
    v11 = "Successfully set kAKSConfigInactivityRebootEnabled config with value: %x\n";
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  CFRelease(v6);
}

@end