@interface MCNewRestrictionsPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
@end

@implementation MCNewRestrictionsPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  v10 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v10 BOOLValue];

  restrictions = [payload restrictions];
  if (bOOLValue)
  {
    goto LABEL_2;
  }

  if ([MCRestrictionManager restrictedBoolForFeature:MCFeatureManagedWriteUnmanagedContactsAllowed withRestrictionsDictionary:restrictions]== 1)
  {
LABEL_12:
    mCCopyAsPrimaryError = +[MCInstaller notInstalledByMDMError];
    goto LABEL_37;
  }

  v23 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAllowedExternalIntelligenceWorkspaceIDs withRestrictionsDictionary:restrictions];
  if (v23 || [MCRestrictionManager restrictedBoolForFeature:MCFeatureUnmanagedReadManagedContactsAllowed withRestrictionsDictionary:restrictions]== 1 || ([MCRestrictionManager intersectedValuesForFeature:MCFeatureAllowedCameraRestrictionBundleIDs withRestrictionsDictionary:restrictions], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_12;
  }

  v56 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAppsRatingExemptedBundleIDs withRestrictionsDictionary:restrictions];

  if (v56)
  {
    goto LABEL_12;
  }

LABEL_2:
  v13 = MCEffectiveSingleAppModeBundleID();
  if (v13)
  {
    v14 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureAppLockBundleIDs withRestrictionsDictionary:restrictions];
    v15 = v14;
    if (v14 && ([v14 containsObject:v13] & 1) == 0)
    {
      v30 = MCRestrictionsErrorDomain;
      MCErrorArray();
      v62 = v15;
      v32 = v31 = error;
      v33 = [NSError MCErrorWithDomain:v30 code:3002 descriptionArray:v32 errorType:MCErrorTypeFatal, v13, 0];
      mCCopyAsPrimaryError = [v33 MCCopyAsPrimaryError];

      error = v31;
      v15 = v62;
    }

    else
    {
      v16 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlacklistedAppBundleIDs withRestrictionsDictionary:restrictions];
      v65 = v16;
      if ([v16 containsObject:v13])
      {
        v17 = MCRestrictionsErrorDomain;
        MCErrorArray();
        selfCopy = self;
        v18 = v15;
        v20 = v19 = error;
        v21 = [NSError MCErrorWithDomain:v17 code:3003 descriptionArray:v20 errorType:MCErrorTypeFatal, v13, 0];
        mCCopyAsPrimaryError = [v21 MCCopyAsPrimaryError];

        v16 = v65;
        error = v19;
        v15 = v18;
        self = selfCopy;
      }

      else
      {
        errorCopy = error;
        v24 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlockedAppBundleIDs withRestrictionsDictionary:restrictions];
        if ([v24 containsObject:v13])
        {
          v25 = v24;
          v26 = MCRestrictionsErrorDomain;
          v27 = MCErrorArray();
          v28 = v26;
          v24 = v25;
          v29 = [NSError MCErrorWithDomain:v28 code:3003 descriptionArray:v27 errorType:MCErrorTypeFatal, v13, 0];
          mCCopyAsPrimaryError = [v29 MCCopyAsPrimaryError];

          v16 = v65;
        }

        else
        {
          +[MCRestrictionManager explicitlyRestrictedAppsBySetting];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v27 = v69 = 0u;
          mCCopyAsPrimaryError = [v27 countByEnumeratingWithState:&v66 objects:v74 count:16];
          if (mCCopyAsPrimaryError)
          {
            v57 = optionsCopy;
            v58 = v24;
            v63 = v15;
            v34 = *v67;
            while (2)
            {
              for (i = 0; i != mCCopyAsPrimaryError; i = i + 1)
              {
                if (*v67 != v34)
                {
                  objc_enumerationMutation(v27);
                }

                v36 = *(*(&v66 + 1) + 8 * i);
                v37 = [v27 objectForKeyedSubscript:v36];
                if ([v37 containsObject:v13] && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", v36, restrictions) == 2)
                {
                  v38 = MCRestrictionsErrorDomain;
                  v39 = MCErrorArray();
                  v40 = [NSError MCErrorWithDomain:v38 code:3004 descriptionArray:v39 errorType:MCErrorTypeFatal, v13, 0];
                  mCCopyAsPrimaryError = [v40 MCCopyAsPrimaryError];

                  goto LABEL_28;
                }
              }

              mCCopyAsPrimaryError = [v27 countByEnumeratingWithState:&v66 objects:v74 count:16];
              if (mCCopyAsPrimaryError)
              {
                continue;
              }

              break;
            }

LABEL_28:
            optionsCopy = v57;
            v24 = v58;
            v15 = v63;
            v16 = v65;
          }

          if ([v13 isEqualToString:MCFindMyBundleIdentifier] && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", MCFeatureFindMyDeviceAllowed, restrictions) == 2 && +[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", MCFeatureFindMyFriendsAllowed, restrictions) == 2)
          {
            v59 = v24;
            v41 = MCRestrictionsErrorDomain;
            v42 = MCErrorArray();
            v43 = [NSError MCErrorWithDomain:v41 code:3004 descriptionArray:v42 errorType:MCErrorTypeFatal, v13, 0];
            mCCopyAsPrimaryError2 = [v43 MCCopyAsPrimaryError];

            v24 = v59;
            mCCopyAsPrimaryError = mCCopyAsPrimaryError2;
            v16 = v65;
          }
        }

        error = errorCopy;
      }
    }
  }

  else
  {
    mCCopyAsPrimaryError = 0;
  }

LABEL_37:
  if (mCCopyAsPrimaryError)
  {
    v44 = MCInstallationErrorDomain;
    payload2 = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload2 friendlyName];
    v47 = MCErrorArray();
    v48 = [NSError MCErrorWithDomain:v44 code:4001 descriptionArray:v47 underlyingError:mCCopyAsPrimaryError errorType:MCErrorTypeFatal, friendlyName, 0];

    if (error)
    {
      v49 = v48;
      *error = v48;
    }

    v50 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      payload3 = [(MCNewPayloadHandler *)self payload];
      friendlyName2 = [payload3 friendlyName];
      mCVerboseDescription = [v48 MCVerboseDescription];
      *buf = 138543618;
      v71 = friendlyName2;
      v72 = 2114;
      v73 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Cannot install restrictions payload “%{public}@”. Error: %{public}@", buf, 0x16u);
    }
  }

  return mCCopyAsPrimaryError == 0;
}

- (BOOL)isInstalled
{
  v8 = 0;
  payload = [(MCNewPayloadHandler *)self payload];
  restrictions = [payload restrictions];
  v4 = +[MCRestrictionManagerWriter sharedManager];
  currentRestrictions = [v4 currentRestrictions];
  v6 = [MCRestrictionManagerWriter restrictionsAfterApplyingRestrictionsDictionary:restrictions toRestrictionsDictionary:currentRestrictions outChangeDetected:&v8 outError:0];

  return (v8 & 1) == 0;
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v18.receiver = self;
  v18.super_class = MCNewRestrictionsPayloadHandler;
  globalRestrictionsCopy = globalRestrictions;
  restrictionsCopy = restrictions;
  [(MCNewPayloadHandler *)&v18 didInstallOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:globalRestrictionsCopy];
  v7 = MCRestrictedBoolKey;
  v8 = [restrictionsCopy objectForKey:{MCRestrictedBoolKey, v18.receiver, v18.super_class}];

  v9 = MCFeaturePredictiveKeyboardAllowed;
  v10 = [v8 objectForKey:MCFeaturePredictiveKeyboardAllowed];

  v11 = MCRestrictedBoolValueKey;
  v12 = [v10 objectForKey:MCRestrictedBoolValueKey];
  v13 = [globalRestrictionsCopy objectForKey:v7];

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

- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v16.receiver = self;
  v16.super_class = MCNewRestrictionsPayloadHandler;
  globalRestrictionsCopy = globalRestrictions;
  restrictionsCopy = restrictions;
  [(MCNewPayloadHandler *)&v16 didRemoveOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:globalRestrictionsCopy];
  v7 = MCRestrictedBoolKey;
  v8 = [restrictionsCopy objectForKey:{MCRestrictedBoolKey, v16.receiver, v16.super_class}];

  v9 = MCFeaturePredictiveKeyboardAllowed;
  v10 = [v8 objectForKey:MCFeaturePredictiveKeyboardAllowed];

  v11 = MCRestrictedBoolValueKey;
  v12 = [v10 objectForKey:MCRestrictedBoolValueKey];
  v13 = [globalRestrictionsCopy objectForKey:v7];

  v14 = [v13 objectForKey:v9];

  v15 = [v14 objectForKey:v11];
  if (v12 && ([v12 BOOLValue] & 1) == 0 && (!v15 || objc_msgSend(v15, "BOOLValue")))
  {
    MCSendKeyboardSettingsChangedNotification();
  }
}

@end