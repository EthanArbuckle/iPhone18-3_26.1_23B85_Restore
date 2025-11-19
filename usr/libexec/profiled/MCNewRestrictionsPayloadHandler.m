@interface MCNewRestrictionsPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
@end

@implementation MCNewRestrictionsPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a4;
  v9 = [(MCNewPayloadHandler *)self payload];
  v10 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v11 = [v10 BOOLValue];

  v12 = [v9 restrictions];
  if (v11)
  {
    goto LABEL_2;
  }

  if ([MCRestrictionManager restrictedBoolForFeature:MCFeatureManagedWriteUnmanagedContactsAllowed withRestrictionsDictionary:v12]== 1)
  {
LABEL_12:
    v22 = +[MCInstaller notInstalledByMDMError];
    goto LABEL_37;
  }

  v23 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAllowedExternalIntelligenceWorkspaceIDs withRestrictionsDictionary:v12];
  if (v23 || [MCRestrictionManager restrictedBoolForFeature:MCFeatureUnmanagedReadManagedContactsAllowed withRestrictionsDictionary:v12]== 1 || ([MCRestrictionManager intersectedValuesForFeature:MCFeatureAllowedCameraRestrictionBundleIDs withRestrictionsDictionary:v12], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_12;
  }

  v56 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAppsRatingExemptedBundleIDs withRestrictionsDictionary:v12];

  if (v56)
  {
    goto LABEL_12;
  }

LABEL_2:
  v13 = MCEffectiveSingleAppModeBundleID();
  if (v13)
  {
    v14 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAppLockBundleIDs withRestrictionsDictionary:v12];
    v15 = v14;
    if (v14 && ([v14 containsObject:v13] & 1) == 0)
    {
      v30 = MCRestrictionsErrorDomain;
      MCErrorArray();
      v62 = v15;
      v32 = v31 = a6;
      v33 = [NSError MCErrorWithDomain:v30 code:3002 descriptionArray:v32 errorType:MCErrorTypeFatal, v13, 0];
      v22 = [v33 MCCopyAsPrimaryError];

      a6 = v31;
      v15 = v62;
    }

    else
    {
      v16 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlacklistedAppBundleIDs withRestrictionsDictionary:v12];
      v65 = v16;
      if ([v16 containsObject:v13])
      {
        v17 = MCRestrictionsErrorDomain;
        MCErrorArray();
        v61 = self;
        v18 = v15;
        v20 = v19 = a6;
        v21 = [NSError MCErrorWithDomain:v17 code:3003 descriptionArray:v20 errorType:MCErrorTypeFatal, v13, 0];
        v22 = [v21 MCCopyAsPrimaryError];

        v16 = v65;
        a6 = v19;
        v15 = v18;
        self = v61;
      }

      else
      {
        v60 = a6;
        v24 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlockedAppBundleIDs withRestrictionsDictionary:v12];
        if ([v24 containsObject:v13])
        {
          v25 = v24;
          v26 = MCRestrictionsErrorDomain;
          v27 = MCErrorArray();
          v28 = v26;
          v24 = v25;
          v29 = [NSError MCErrorWithDomain:v28 code:3003 descriptionArray:v27 errorType:MCErrorTypeFatal, v13, 0];
          v22 = [v29 MCCopyAsPrimaryError];

          v16 = v65;
        }

        else
        {
          +[MCRestrictionManager explicitlyRestrictedAppsBySetting];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v27 = v69 = 0u;
          v22 = [v27 countByEnumeratingWithState:&v66 objects:v74 count:16];
          if (v22)
          {
            v57 = v8;
            v58 = v24;
            v63 = v15;
            v34 = *v67;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v67 != v34)
                {
                  objc_enumerationMutation(v27);
                }

                v36 = *(*(&v66 + 1) + 8 * i);
                v37 = [v27 objectForKeyedSubscript:v36];
                if ([v37 containsObject:v13] && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", v36, v12) == 2)
                {
                  v38 = MCRestrictionsErrorDomain;
                  v39 = MCErrorArray();
                  v40 = [NSError MCErrorWithDomain:v38 code:3004 descriptionArray:v39 errorType:MCErrorTypeFatal, v13, 0];
                  v22 = [v40 MCCopyAsPrimaryError];

                  goto LABEL_28;
                }
              }

              v22 = [v27 countByEnumeratingWithState:&v66 objects:v74 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }

LABEL_28:
            v8 = v57;
            v24 = v58;
            v15 = v63;
            v16 = v65;
          }

          if ([v13 isEqualToString:MCFindMyBundleIdentifier] && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", MCFeatureFindMyDeviceAllowed, v12) == 2 && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", MCFeatureFindMyFriendsAllowed, v12) == 2)
          {
            v59 = v24;
            v41 = MCRestrictionsErrorDomain;
            v42 = MCErrorArray();
            v43 = [NSError MCErrorWithDomain:v41 code:3004 descriptionArray:v42 errorType:MCErrorTypeFatal, v13, 0];
            v64 = [v43 MCCopyAsPrimaryError];

            v24 = v59;
            v22 = v64;
            v16 = v65;
          }
        }

        a6 = v60;
      }
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_37:
  if (v22)
  {
    v44 = MCInstallationErrorDomain;
    v45 = [(MCNewPayloadHandler *)self payload];
    v46 = [v45 friendlyName];
    v47 = MCErrorArray();
    v48 = [NSError MCErrorWithDomain:v44 code:4001 descriptionArray:v47 underlyingError:v22 errorType:MCErrorTypeFatal, v46, 0];

    if (a6)
    {
      v49 = v48;
      *a6 = v48;
    }

    v50 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      v52 = [(MCNewPayloadHandler *)self payload];
      v53 = [v52 friendlyName];
      v54 = [v48 MCVerboseDescription];
      *buf = 138543618;
      v71 = v53;
      v72 = 2114;
      v73 = v54;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Cannot install restrictions payload “%{public}@”. Error: %{public}@", buf, 0x16u);
    }
  }

  return v22 == 0;
}

- (BOOL)isInstalled
{
  v8 = 0;
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 restrictions];
  v4 = +[MCRestrictionManagerWriter sharedManager];
  v5 = [v4 currentRestrictions];
  v6 = [MCRestrictionManagerWriter restrictionsAfterApplyingRestrictionsDictionary:v3 toRestrictionsDictionary:v5 outChangeDetected:&v8 outError:0];

  return (v8 & 1) == 0;
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v18.receiver = self;
  v18.super_class = MCNewRestrictionsPayloadHandler;
  v5 = a4;
  v6 = a3;
  [(MCNewPayloadHandler *)&v18 didInstallOldGlobalRestrictions:v6 newGlobalRestrictions:v5];
  v7 = MCRestrictedBoolKey;
  v8 = [v6 objectForKey:{MCRestrictedBoolKey, v18.receiver, v18.super_class}];

  v9 = MCFeaturePredictiveKeyboardAllowed;
  v10 = [v8 objectForKey:MCFeaturePredictiveKeyboardAllowed];

  v11 = MCRestrictedBoolValueKey;
  v12 = [v10 objectForKey:MCRestrictedBoolValueKey];
  v13 = [v5 objectForKey:v7];

  v14 = [v13 objectForKey:v9];

  v15 = [v14 objectForKey:v11];
  v16 = v15;
  if (!v12)
  {
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v12 BOOLValue])
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
LABEL_9:
    if (([v16 BOOLValue] & 1) == 0)
    {
      MCSendKeyboardSettingsChangedNotification();
    }
  }

LABEL_11:
}

- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v16.receiver = self;
  v16.super_class = MCNewRestrictionsPayloadHandler;
  v5 = a4;
  v6 = a3;
  [(MCNewPayloadHandler *)&v16 didRemoveOldGlobalRestrictions:v6 newGlobalRestrictions:v5];
  v7 = MCRestrictedBoolKey;
  v8 = [v6 objectForKey:{MCRestrictedBoolKey, v16.receiver, v16.super_class}];

  v9 = MCFeaturePredictiveKeyboardAllowed;
  v10 = [v8 objectForKey:MCFeaturePredictiveKeyboardAllowed];

  v11 = MCRestrictedBoolValueKey;
  v12 = [v10 objectForKey:MCRestrictedBoolValueKey];
  v13 = [v5 objectForKey:v7];

  v14 = [v13 objectForKey:v9];

  v15 = [v14 objectForKey:v11];
  if (v12 && ([v12 BOOLValue] & 1) == 0 && (!v15 || objc_msgSend(v15, "BOOLValue")))
  {
    MCSendKeyboardSettingsChangedNotification();
  }
}

@end