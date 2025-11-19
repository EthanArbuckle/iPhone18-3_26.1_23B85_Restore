@interface MCNewMDMPayloadHandler
+ (id)_exchangeSyncUUIDString;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (id)_cannotCheckInErrorWithName:(id)a3;
- (id)_mdmDictWithInstaller:(id)a3 options:(id)a4 payload:(id)a5;
- (id)persistentRefForUUID:(id)a3 outError:(id *)a4;
- (id)persistentRefsForUUIDs:(id)a3 outError:(id *)a4;
- (void)_releaseDependency;
- (void)_retainDependency;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)removeWithInstaller:(id)a3 options:(id)a4;
- (void)setAside;
- (void)setAsideWithInstaller:(id)a3;
- (void)setIdleRebootValue:(BOOL)a3;
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
  v7 = [v6 bytes];
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
      v14 = (16 * ((v7[v10 >> 3] >> (~v10 & 7)) & 1)) | (8 * ((v7[(v10 + 1) >> 3] >> (~(v10 + 1) & 7)) & 1)) | (4 * ((v7[(v10 + 2) >> 3] >> (~(v10 + 2) & 7)) & 1)) | (2 * ((v7[(v10 + 3) >> 3] >> (~(v10 + 3) & 7)) & 1)) | (v7[(v10 + 4) >> 3] >> (~(v10 + 4) & 7)) & 1;
      v15 = v14 | 0x30;
      v16 = v14 + 55;
      if (((16 * ((v7[v10 >> 3] >> (~v10 & 7)) & 1)) | (8 * ((v7[(v10 + 1) >> 3] >> (~(v10 + 1) & 7)) & 1)) | (4 * ((v7[(v10 + 2) >> 3] >> (~(v10 + 2) & 7)) & 1)) | (2 * ((v7[(v10 + 3) >> 3] >> (~(v10 + 3) & 7)) & 1))) < 0xA)
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

- (id)_cannotCheckInErrorWithName:(id)a3
{
  v3 = MCMDMErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:12002 descriptionArray:v4 errorType:MCErrorTypeNeedsRetry, a3, 0];

  return v5;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v69 = a3;
  v10 = a4;
  v68 = a5;
  v70 = +[NSFileManager defaultManager];
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_10003F8CC;
  v84 = sub_10003F8DC;
  v85 = 0;
  v11 = kMDMPasscodeKey;
  v12 = [v10 objectForKeyedSubscript:kMDMPasscodeKey];
  if (v12)
  {
    v13 = [v10 mutableCopy];
    [v13 removeObjectForKey:v11];
    v14 = [v13 copy];

    v10 = v14;
  }

  v15 = MDMFilePath();
  v16 = [v70 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12001 descriptionArray:v17 errorType:MCErrorTypeFatal, 0];
    v19 = [v18 MCCopyAsPrimaryError];
LABEL_7:
    v22 = 0;
    v23 = v81[5];
    v81[5] = v19;
LABEL_8:

    goto LABEL_9;
  }

  v20 = +[MCRestrictionManager sharedManager];
  v21 = [v20 effectiveRestrictedBoolForSetting:MCFeatureMDMEnrollmentAllowed] == 2;

  if (v21)
  {
    v17 = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12088 descriptionArray:v17 errorType:MCErrorTypeFatal, 0];
    v19 = [v18 MCCopyAsPrimaryError];
    goto LABEL_7;
  }

  v17 = [(MCNewPayloadHandler *)self payload];
  v38 = [v17 identityUUID];
  v39 = (v81 + 5);
  obj = v81[5];
  v18 = [(MCNewMDMPayloadHandler *)self persistentRefForUUID:v38 outError:&obj];
  objc_storeStrong(v39, obj);

  if (!v81[5])
  {
    [v17 setIdentityPersistentID:v18];
    v40 = [v17 serverPinningUUIDs];
    v41 = (v81 + 5);
    v78 = v81[5];
    v23 = [(MCNewMDMPayloadHandler *)self persistentRefsForUUIDs:v40 outError:&v78];
    objc_storeStrong(v41, v78);

    if (v81[5])
    {
      v22 = 0;
      goto LABEL_8;
    }

    [v17 setServerPinningPersistentRefs:v23];
    v42 = [v17 checkInPinningUUIDs];
    v43 = (v81 + 5);
    v77 = v81[5];
    v44 = [(MCNewMDMPayloadHandler *)self persistentRefsForUUIDs:v42 outError:&v77];
    objc_storeStrong(v43, v77);

    if (v81[5])
    {
      goto LABEL_40;
    }

    [v17 setCheckInPinningPersistentRefs:v44];
    v45 = +[MCActivationUtilities sharedInstance];
    v46 = [v45 isHRNMode];

    if (v46 == 2)
    {
      v52 = [v17 pollingIntervalMinutes];
      v66 = v52;
      if (v52)
      {
        if ([v52 integerValue] > 4)
        {
LABEL_38:

LABEL_39:
          if (!v81[5])
          {
            v55 = [(MCNewMDMPayloadHandler *)self _mdmDictWithInstaller:v69 options:v10 payload:v17];
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
                v61 = [v17 serverCapabilities];
                v65 = [v61 containsObject:kMDMUserChannelCapability];

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

        v47 = [v17 friendlyName];
        v51 = MCErrorArray();
        v53 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12096 descriptionArray:v51 errorType:MCErrorTypeFatal, v47, 0];
      }

      else
      {
        v47 = [v17 friendlyName];
        v51 = MCErrorArray();
        v53 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12097 descriptionArray:v51 errorType:MCErrorTypeFatal, v47, 0];
      }

      v54 = v81[5];
      v81[5] = v53;
    }

    else
    {
      if (v46 == 1)
      {
        v49 = [v17 topic];
        v50 = v49 == 0;

        if (!v50)
        {
          goto LABEL_39;
        }

        v66 = [v17 friendlyName];
        v47 = MCErrorArray();
        v48 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12098 descriptionArray:v47 errorType:MCErrorTypeFatal, v66, 0];
      }

      else
      {
        if (v46)
        {
          goto LABEL_39;
        }

        v66 = MCErrorArray();
        v47 = [NSError MCErrorWithDomain:MCMDMErrorDomain code:12099 descriptionArray:v66 errorType:MCErrorTypeFatal, 0];
        v48 = [v47 MCCopyAsPrimaryError];
      }

      v51 = v81[5];
      v81[5] = v48;
    }

    goto LABEL_38;
  }

  v22 = 0;
LABEL_9:

  v24 = v81[5];
  if (v24)
  {
    v25 = [(MCNewPayloadHandler *)self payload];
    v26 = [v25 friendlyName];
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4001 descriptionArray:v27 underlyingError:v81[5] errorType:MCErrorTypeFatal, v26, 0];

    if (a6)
    {
      v29 = v28;
      *a6 = v28;
    }

    v30 = _MCLogObjects[0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [(MCNewPayloadHandler *)self payload];
      v32 = [v31 friendlyName];
      v33 = [v28 MCVerboseDescription];
      *buf = 138543618;
      v87 = v32;
      v88 = 2114;
      v89 = v33;
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
    v36 = [v35 isSupervised];

    if (v36)
    {
      [(MCNewMDMPayloadHandler *)self setIdleRebootValue:0];
    }
  }

  _Block_object_dispose(&v80, 8);
  return v24 == 0;
}

- (id)_mdmDictWithInstaller:(id)a3 options:(id)a4 payload:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = +[NSMutableDictionary dictionary];
  v13 = [v10 profile];
  v14 = [v13 identifier];
  [v12 setObject:v14 forKey:kMDMManagingProfileIdentifierKey];

  v15 = [v10 identityPersistentID];
  [v12 MCSetObjectIfNotNil:v15 forKey:kMDMIdentityPersistentRefKey];

  v16 = [v10 serverPinningPersistentRefs];
  [v12 MCSetObjectIfNotNil:v16 forKey:kMDMServerPinningCertPersistentRefsKey];

  v17 = [v10 checkInPinningPersistentRefs];
  [v12 MCSetObjectIfNotNil:v17 forKey:kMDMCheckInPinningCertPersistentRefsKey];

  v18 = &sem_close_ptr;
  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 pinningRevocationCheckRequired]);
  [v12 setObject:v19 forKey:kMDMPinningRevocationCheckRequiredKey];

  v20 = [v10 topic];
  [v12 MCSetObjectIfNotNil:v20 forKey:kMDMTopicKey];

  v21 = [v10 pollingIntervalMinutes];
  [v12 MCSetObjectIfNotNil:v21 forKey:kMDMPollingIntervalKey];

  v22 = [v10 serverURLString];
  [v12 MCSetObjectIfNotNil:v22 forKey:kMDMServerURLKey];

  v23 = [v10 checkInURLString];
  [v12 MCSetObjectIfNotNil:v23 forKey:kMDMCheckInURLKey];

  v24 = [v10 serverCapabilities];
  [v12 MCSetObjectIfNotNil:v24 forKey:kMDMServerCapabilitiesKey];

  v25 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v10 accessRights]);
  [v12 setObject:v25 forKey:kMDMAccessRightsKey];

  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 useDevelopmentAPNS]);
  [v12 setObject:v26 forKey:kMDMUseDevelopmentAPNSKey];

  v27 = +[NSString MCMakeUUID];
  [v12 setObject:v27 forKey:kMDMPushMagicKey];

  v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 signMessage]);
  [v12 setObject:v28 forKey:kMDMSignMessageKey];

  v29 = [v10 enrollmentMode];
  [v12 MCSetObjectIfNotNil:v29 forKey:kMDMEnrollmentModeKey];

  v30 = [v10 requiredAppIDForMDM];
  [v12 MCSetObjectIfNotNil:v30 forKey:kMDMRequiredAppIDForMDMKey];

  v31 = [v11 setAsideDictionariesForPayloadHandlerClass:objc_opt_class()];

  v73 = v31;
  if ([v31 count] == 1)
  {
    v32 = [v31 anyObject];
  }

  else
  {
    v32 = 0;
  }

  v33 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsESSOEnrollment];
  v34 = [v33 BOOLValue];

  if (v34)
  {
    v35 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionESSOAppITunesStoreID];
    v36 = kMDMEnrollmentSSOAppStoreIDKey;
  }

  else
  {
    v36 = kMDMEnrollmentSSOAppStoreIDKey;
    if (v32)
    {
      v35 = [v32 objectForKeyedSubscript:kMDMEnrollmentSSOAppStoreIDKey];
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
  if (v32)
  {
    v38 = [v32 objectForKeyedSubscript:kMDMPersonaKey];
    if (![v10 isUserEnrollment])
    {
      goto LABEL_24;
    }

    v68 = a2;
    v69 = v9;
    v70 = self;
    v39 = kMDMEnrollmentIDKey;
    v40 = [v32 objectForKeyedSubscript:kMDMEnrollmentIDKey];
    v41 = kMDMiCloudEnrollmentIDKey;
    v42 = [v32 objectForKeyedSubscript:kMDMiCloudEnrollmentIDKey];
    v43 = kMDMEASEnrollmentIDKey;
    v44 = [v32 objectForKeyedSubscript:kMDMEASEnrollmentIDKey];
  }

  else
  {
    if (([v10 isUserEnrollment] & 1) == 0)
    {
      v38 = 0;
      goto LABEL_24;
    }

    v68 = a2;
    v69 = v9;
    v45 = +[NSUUID UUID];
    v40 = [v45 UUIDString];

    v46 = +[NSUUID UUID];
    v42 = [v46 UUIDString];

    v70 = self;
    v44 = [objc_opt_class() _exchangeSyncUUIDString];
    v47 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v75 = v44;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Generated new EAS Enrollment ID: %{private}@", buf, 0xCu);
    }

    v38 = 0;
    v39 = kMDMEnrollmentIDKey;
    v41 = kMDMiCloudEnrollmentIDKey;
    v43 = kMDMEASEnrollmentIDKey;
  }

  [v12 setObject:v40 forKeyedSubscript:v39];
  [v12 setObject:v42 forKeyedSubscript:v41];
  [v12 setObject:v44 forKeyedSubscript:v43];
  [v10 setEnrollmentID:v40];
  [v10 setICloudEnrollmentID:v42];
  [v10 setEasEnrollmentID:v44];
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:kMDMUserEnrollmentKey];
  if (v38)
  {
    v48 = [v10 personaID];
    if (v48)
    {
      v49 = v48;
      v50 = [v10 personaID];
      v51 = [v50 isEqualToString:v38];

      if ((v51 & 1) == 0)
      {
        v52 = +[NSAssertionHandler currentHandler];
        v53 = [v10 personaID];
        [v52 handleFailureInMethod:v68 object:v70 file:@"MCNewMDMPayloadHandler.m" lineNumber:378 description:{@"Persona ID from the new payload (%@) and the old payload (%@) doesn't match!!!", v53, v38}];
      }
    }
  }

  v9 = v69;
  self = v70;
  v18 = &sem_close_ptr;
LABEL_24:
  v54 = [v10 personaID];
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v38;
  }

  [v10 setPersonaID:v56];

  v57 = [v10 personaID];
  [v12 setObject:v57 forKeyedSubscript:kMDMPersonaKey];

  v58 = v18[244];
  v59 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
  v60 = [v58 numberWithBool:{objc_msgSend(v59, "BOOLValue")}];
  [v12 setObject:v60 forKeyedSubscript:kMDMIsADEProfileKey];

  v61 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
  LODWORD(v59) = [v61 BOOLValue];

  v62 = [(MCNewPayloadHandler *)self profileHandler];
  v63 = [v62 profile];
  v64 = [v63 isLocked];

  v65 = [v18[244] numberWithBool:v59 | v64];
  [v12 setObject:v65 forKeyedSubscript:kMDMIsProfileLockedKey];

  v66 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionRMAccountIdentifier];
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

- (id)persistentRefForUUID:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self profileHandler];
  v8 = [v7 persistentIDForCertificateUUID:v6];

  if (v8)
  {
    v9 = v8;
  }

  else if (a4)
  {
    v10 = MCMDMErrorDomain;
    v11 = [(MCNewPayloadHandler *)self payload];
    v12 = [v11 friendlyName];
    v13 = MCErrorArray();
    *a4 = [NSError MCErrorWithDomain:v10 code:12005 descriptionArray:v13 errorType:MCErrorTypeFatal, v12, 0];
  }

  return v8;
}

- (id)persistentRefsForUUIDs:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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

        v13 = [(MCNewMDMPayloadHandler *)self persistentRefForUUID:*(*(&v17 + 1) + 8 * i) outError:a4, v17];
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
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 identityPersistentID];
  v4 = [NSMutableArray arrayWithObject:v3];

  v5 = [v2 serverPinningPersistentRefs];
  if (v5)
  {
    [v4 addObjectsFromArray:v5];
  }

  v16 = v5;
  v6 = [v2 checkInPinningPersistentRefs];
  if (v6)
  {
    [v4 addObjectsFromArray:v6];
  }

  v7 = +[MCDependencyManager sharedManager];
  v8 = [v2 UUID];
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

        v15 = [*(*(&v17 + 1) + 8 * v14) MCHexString];
        [v7 addDependent:v8 ofParent:v15 inDomain:v13];

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
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 identityPersistentID];
  v4 = [NSMutableArray arrayWithObject:v3];

  v5 = [v2 serverPinningPersistentRefs];
  v6 = [v2 serverPinningPersistentRefs];

  if (v6)
  {
    [v4 addObjectsFromArray:v5];
  }

  v18 = v5;
  v7 = [v2 checkInPinningPersistentRefs];
  v8 = [v2 checkInPinningPersistentRefs];

  if (v8)
  {
    [v4 addObjectsFromArray:v7];
  }

  v9 = +[MCDependencyManager sharedManager];
  v10 = [v2 UUID];
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

        v17 = [*(*(&v19 + 1) + 8 * v16) MCHexString];
        [v9 removeDependent:v10 fromParent:v17 inDomain:v15];

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

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCNewMDMPayloadHandler;
  [(MCNewPayloadHandler *)&v12 setAsideWithInstaller:v4];
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = objc_opt_new();
  v7 = [v5 enrollmentID];
  [v6 setObject:v7 forKeyedSubscript:kMDMEnrollmentIDKey];

  v8 = [v5 iCloudEnrollmentID];
  [v6 setObject:v8 forKeyedSubscript:kMDMiCloudEnrollmentIDKey];

  v9 = [v5 easEnrollmentID];
  [v6 setObject:v9 forKeyedSubscript:kMDMEASEnrollmentIDKey];

  v10 = [v5 personaID];
  [v6 setObject:v10 forKeyedSubscript:kMDMPersonaKey];

  if ([v6 count])
  {
    v11 = [v6 copy];
    [v4 addSetAsideDictionary:v11 forPayloadHandlerClass:objc_opt_class()];
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

- (void)removeWithInstaller:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:kMCRemoveProfileOptionRemovedDueToMigrationFromOtherDevice];
  v9 = [v8 BOOLValue];

  v10 = +[MDMConfiguration sharedConfiguration];
  v11 = [v10 rmAccountID];

  if (!self->_setAside)
  {
    v12 = [(MCNewPayloadHandler *)self payload];
    if ([v12 checkOutWhenRemoved])
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
          v18 = [*(v45 + 5) MCVerboseDescription];
          *buf = 138543362;
          v53 = v18;
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
    if (v9)
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

    v24 = [v12 personaID];

    if (v24)
    {
      v25 = objc_opt_new();
      v50[0] = @"Persona Identifier";
      v26 = [v12 personaID];
      v50[1] = @"Profile Identifier";
      v51[0] = v26;
      v27 = [(MCNewPayloadHandler *)self profileHandler];
      v28 = [v27 profile];
      v29 = [v28 identifier];
      v30 = v29;
      v31 = &stru_10011E740;
      if (v29)
      {
        v31 = v29;
      }

      v51[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
      [v25 logRegularEventForTopic:DMCEventsTopicPersona reason:@"Delete Persona during MDM profile uninstallation" details:v32];

      v33 = [v12 personaID];
      [DMCPersonaHelper removePersonaAndAccountsWithPersonaID:v33];
    }

    else
    {
      if (!v11)
      {
LABEL_23:

        goto LABEL_24;
      }

      v34 = objc_opt_new();
      [v34 signOutAllPrimaryAccounts];

      v33 = +[ACAccountStore defaultStore];
      v35 = [v33 dmc_remoteManagementAccountForIdentifier:v11];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 dmc_altDSID];
        [v33 dmc_removeMAIDRelatedAccountsWithAltDSID:v37 asynchronous:0];
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v4 = [MDMClient sharedClient:a3];
  [v4 notifyNewConfiguration];

  v5 = +[MDMClient sharedClient];
  [v5 scheduleTokenUpdate];

  if (+[DMCMultiUserModeUtilities inSharediPadUserSession])
  {
    v6 = +[MDMUserClient sharedClient];
    [v6 notifyNewConfiguration];
  }
}

- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v4 = [MDMClient sharedClient:a3];
  [v4 notifyNewConfiguration];

  if (+[DMCMultiUserModeUtilities inSharediPadUserSession])
  {
    v5 = +[MDMUserClient sharedClient];
    [v5 notifyNewConfiguration];
  }
}

- (void)setIdleRebootValue:(BOOL)a3
{
  v3 = a3;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to set kAKSConfigInactivityRebootEnabled config with value: %x\n...", &v14, 8u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = Mutable;
  v7 = &kCFBooleanFalse;
  if (v3)
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
    v15 = v3;
    v11 = "Successfully set kAKSConfigInactivityRebootEnabled config with value: %x\n";
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  CFRelease(v6);
}

@end