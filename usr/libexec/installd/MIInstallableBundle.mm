@interface MIInstallableBundle
+ (BOOL)_getEligibilityForDomain:(unint64_t)a3 forBundle:(id)a4 isEligible:(BOOL *)a5 ineligibilityReason:(id *)a6 error:(id *)a7;
+ (BOOL)_shouldSkipEligibilityChecksForAppWithSigningInfo:(id)a3;
+ (BOOL)_shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:(id)a3 persona:(id)a4;
+ (BOOL)_shouldSkipEligibilityChecksForInstallRequestorWithAuditToken:(id *)a3 persona:(id)a4 authorizingBundleID:(id *)a5;
+ (unint64_t)_domainForBrowserEligibilityForApp:(id)a3 withSigningInfo:(id)a4 distributorInfo:(id)a5 isWebDistribution:(BOOL)a6 operationType:(unint64_t)a7;
+ (unint64_t)_domainForMarketplaceEligibilityForApp:(id)a3 withSigningInfo:(id)a4 isWebDistribution:(BOOL)a5 distributorInfo:(id)a6 operationType:(unint64_t)a7;
- (BOOL)_captureDataFromStagingRootOrBundle:(id)a3 toContainer:(id)a4 withError:(id *)a5;
- (BOOL)_checkCanInstallWithError:(id *)a3;
- (BOOL)_getLinkedParentBundleID:(id *)a3 withError:(id *)a4;
- (BOOL)_handleStashMode:(unint64_t)a3 withError:(id *)a4;
- (BOOL)_handleStashOptionWithError:(id *)a3;
- (BOOL)_installEmbeddedProfilesWithError:(id *)a3;
- (BOOL)_linkToParentApplication:(id *)a3;
- (BOOL)_performAppClipSpecificValidationForEntitlements:(id)a3 isAppClip:(BOOL *)a4 withError:(id *)a5;
- (BOOL)_performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:(id)a3 error:(id *)a4;
- (BOOL)_performBuiltInAppUpgradeValidationWithSigningInfo:(id)a3 error:(id *)a4;
- (BOOL)_performCompanionWatchAppValidationForWatchApp:(id)a3 withVersion:(unsigned __int8)a4 companionAppSigningInfo:(id)a5 frameworks:(id)a6 error:(id *)a7;
- (BOOL)_performWatchVerificationForSigningInfo:(id)a3 isSystemAppInstall:(BOOL)a4 withError:(id *)a5;
- (BOOL)_postFlightAppExtensionsWithError:(id *)a3;
- (BOOL)_preserveExistingPlaceholderAsParallelPlaceholderWithError:(id *)a3;
- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4;
- (BOOL)_setBundleMetadataWithError:(id *)a3;
- (BOOL)_setLaunchWarningDataWithError:(id *)a3;
- (BOOL)_setLinkageInBundleMetadata:(id)a3 error:(id *)a4;
- (BOOL)_validateAppManagementDomainForSigningInfo:(id)a3 error:(id *)a4;
- (BOOL)_validateApplicationIdentifierForNewBundleSigningInfo:(id)a3 error:(id *)a4;
- (BOOL)_validateCompanionAppStateInWatchKitApp:(id)a3 withVersion:(unsigned __int8)a4 isSystemAppInstall:(BOOL)a5 error:(id *)a6;
- (BOOL)_validateITunesMetadataOptionWithError:(id *)a3;
- (BOOL)_validateLinkedParentForSigningInfo:(id)a3 appManagementDomainValue:(unint64_t)a4 error:(id *)a5;
- (BOOL)_validateSinfsWithError:(id *)a3;
- (BOOL)_validateiTunesMetadataWithError:(id *)a3;
- (BOOL)_verifyBundleMetadataWithError:(id *)a3;
- (BOOL)_verifyPluginKitPlugins:(id)a3 extensionKitExtensions:(id)a4 inWatchKit2App:(id)a5 checkAppexSignatures:(BOOL)a6 checkFrameworkSignature:(BOOL)a7 error:(id *)a8;
- (BOOL)_writeData:(id)a3 toFile:(id)a4 inContainerAtURL:(id)a5 legacyErrorString:(id)a6 error:(id *)a7;
- (BOOL)_writeOptionsDataToBundle:(id)a3 orContainer:(id)a4 error:(id *)a5;
- (BOOL)applyPatchWithError:(id *)a3;
- (BOOL)finalizeInstallationWithError:(id *)a3;
- (BOOL)performInstallationWithError:(id *)a3;
- (BOOL)performLaunchServicesRegistrationWithError:(id *)a3;
- (BOOL)performPreflightWithError:(id *)a3;
- (BOOL)performVerificationWithError:(id *)a3;
- (BOOL)postFlightInstallationWithError:(id *)a3;
- (MIInstallableBundle)initWithBundle:(id)a3 inStagingRoot:(id)a4 stagingLocation:(id)a5 packageFormat:(unsigned __int8)a6 identity:(id)a7 domain:(unint64_t)a8 installOptions:(id)a9 manifestURL:(id)a10 existingBundleContainer:(id)a11 patchType:(unsigned __int8)a12 operationType:(unint64_t)a13 error:(id *)a14;
- (id)_builtInAppUpgradeFailureError;
- (id)_createJournalEntry;
- (id)_noLongerPresentAppExtensionDataContainers;
- (id)launchServicesBundleRecordsWithError:(id *)a3;
- (id)recordPromise;
- (id)stageBackgroundUpdateWithError:(id *)a3;
- (unint64_t)_installationJournalOperationType;
- (unint64_t)eligibilityOperationType;
- (void)dealloc;
@end

@implementation MIInstallableBundle

- (id)recordPromise
{
  v2 = [(MIInstallableBundle *)self journalEntry];
  v3 = [v2 recordPromise];

  return v3;
}

- (MIInstallableBundle)initWithBundle:(id)a3 inStagingRoot:(id)a4 stagingLocation:(id)a5 packageFormat:(unsigned __int8)a6 identity:(id)a7 domain:(unint64_t)a8 installOptions:(id)a9 manifestURL:(id)a10 existingBundleContainer:(id)a11 patchType:(unsigned __int8)a12 operationType:(unint64_t)a13 error:(id *)a14
{
  v22 = a6;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = MIInstallableBundle;
  v19 = [(MIInstallable *)&v25 initWithBundle:a3 inStagingRoot:a4 stagingLocation:a5 packageFormat:v22 identity:a7 domain:a8 installOptions:v18 manifestURL:a10 existingBundleContainer:a11 patchType:a12 operationType:a13 error:a14];
  if (v19 && ([v18 installTargetType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19->_isPlaceholderInstall = 1;
  }

  return v19;
}

- (void)dealloc
{
  v3 = [(MIInstallableBundle *)self bundleContainer];
  sub_10003D584(v3);

  v4 = [(MIInstallableBundle *)self dataContainer];
  sub_10003D584(v4);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(MIInstallableBundle *)self appExtensionDataContainers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_10003D584(*(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = MIInstallableBundle;
  [(MIInstallableBundle *)&v10 dealloc];
}

- (unint64_t)eligibilityOperationType
{
  v3 = [(MIInstallable *)self installOptions];
  v4 = [v3 installIntent];

  v5 = 2;
  if (v4 != 3 && v4 != 5)
  {
    v6 = [(MIInstallable *)self existingBundleContainer];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 bundle];
      v9 = ~[v8 isPlaceholder];

      v5 = v9 & 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_verifyBundleMetadataWithError:(id *)a3
{
  v5 = [(MIInstallable *)self bundle];
  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v6 = 0;
  }

  else
  {
    v23 = 0;
    v10 = [v5 isApplicableToCurrentDeviceFamilyWithError:&v23];
    v11 = v23;
    v12 = v11;
    if (!v10)
    {
      goto LABEL_16;
    }

    v22 = v11;
    v13 = [v5 isApplicableToCurrentOSVersionWithError:&v22];
    v6 = v22;

    if ((v13 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v14 = [v6 userInfo];
        v19 = [v14 objectForKeyedSubscript:NSLocalizedDescriptionKey];
        MOLogWrite();
      }

      goto LABEL_17;
    }
  }

  v7 = [v5 bundleType];
  if (v7 - 1 < 5 || v7 == 9)
  {
    v21 = v6;
    v8 = [v5 validateAppMetadataWithError:&v21];
    v9 = v21;

    v6 = v9;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v15 = 1;
    goto LABEL_20;
  }

  v20 = v6;
  v16 = [v5 thinningMatchesCurrentDeviceWithError:&v20];
  v12 = v20;

  if (v16)
  {
    v15 = 1;
    v6 = v12;
    goto LABEL_20;
  }

LABEL_16:
  v6 = v12;
LABEL_17:
  if (a3)
  {
    v17 = v6;
    v15 = 0;
    *a3 = v6;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (BOOL)_installEmbeddedProfilesWithError:(id *)a3
{
  v5 = [(MIInstallable *)self bundle];
  v6 = [(MIInstallable *)self progressBlock];
  v7 = [v5 installEmbeddedProvisioningProfileWithProgress:v6];

  v8 = [(MIInstallable *)self installOptions];
  [v8 provisioningProfileInstallFailureIsFatal];

  if (MIIsFatalMISProfileInstallationError())
  {
    v9 = MIInstallerErrorDomain;
    v71[0] = @"LegacyErrorString";
    v71[1] = MILibMISErrorNumberKey;
    v72[0] = @"ApplicationVerificationFailed";
    v10 = [NSNumber numberWithInt:v7];
    v72[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    v12 = [(MIInstallable *)self bundle];
    v13 = [v12 identifier];
    v14 = MIErrorStringForMISError();
    sub_100010734("[MIInstallableBundle _installEmbeddedProfilesWithError:]", 332, v9, 13, 0, v11, @"Failed to install embedded profile for %@ : 0x%08x (%@)", v15, v13);
    v40 = LABEL_32:;

    v39 = 0;
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = [(MIInstallableBundle *)self appExtensionBundles];
    v16 = [v10 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v57;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          v21 = [(MIInstallable *)self progressBlock];
          v22 = [v20 installEmbeddedProvisioningProfileWithProgress:v21];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v69[0] = @"ApplicationVerificationFailed";
            v68[0] = @"LegacyErrorString";
            v68[1] = MILibMISErrorNumberKey;
            v11 = [NSNumber numberWithInt:v22];
            v69[1] = v11;
            v12 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
            v13 = [v20 identifier];
            v14 = MIErrorStringForMISError();
            v47 = v13;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 339;
LABEL_31:
            sub_100010734("[MIInstallableBundle _installEmbeddedProfilesWithError:]", v44, v41, 13, 0, v12, v43, v42, v47);
            goto LABEL_32;
          }
        }

        v17 = [v10 countByEnumeratingWithState:&v56 objects:v70 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = [(MIInstallableBundle *)self frameworkBundles];
    v23 = [v10 countByEnumeratingWithState:&v52 objects:v67 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v53;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(v10);
          }

          v27 = *(*(&v52 + 1) + 8 * j);
          v28 = [(MIInstallable *)self progressBlock];
          v29 = [v27 installEmbeddedProvisioningProfileWithProgress:v28];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v65[0] = @"LegacyErrorString";
            v65[1] = MILibMISErrorNumberKey;
            v66[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v29];
            v66[1] = v11;
            v12 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
            v13 = [v27 identifier];
            v14 = MIErrorStringForMISError();
            v47 = v13;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 347;
            goto LABEL_31;
          }
        }

        v24 = [v10 countByEnumeratingWithState:&v52 objects:v67 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v10 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v30 = [v10 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      while (2)
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v10);
          }

          v34 = *(*(&v48 + 1) + 8 * k);
          v35 = [(MIInstallable *)self progressBlock];
          v36 = [v34 installEmbeddedProvisioningProfileWithProgress:v35];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v62[0] = @"LegacyErrorString";
            v62[1] = MILibMISErrorNumberKey;
            v63[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v36];
            v63[1] = v11;
            v12 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
            v13 = [v34 identifier];
            v14 = MIErrorStringForMISError();
            v47 = v13;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 356;
            goto LABEL_31;
          }

          v37 = [(MIInstallable *)self progressBlock];
          v38 = [v34 installMacStyleEmbeddedProvisioningProfileWithProgress:v37];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v60[0] = @"LegacyErrorString";
            v60[1] = MILibMISErrorNumberKey;
            v61[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v38];
            v61[1] = v11;
            v12 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
            v13 = [v34 identifier];
            v14 = MIErrorStringForMISError();
            v47 = v13;
            v43 = @"Failed to install Mac-style embedded profile for %@ : 0x%08x (%@)";
            v44 = 361;
            goto LABEL_31;
          }
        }

        v31 = [v10 countByEnumeratingWithState:&v48 objects:v64 count:16];
        v39 = 1;
        if (v31)
        {
          continue;
        }

        break;
      }

      v40 = 0;
    }

    else
    {
      v40 = 0;
      v39 = 1;
    }
  }

  if (a3 && !v39)
  {
    v45 = v40;
    *a3 = v40;
  }

  return v39;
}

- (BOOL)_checkCanInstallWithError:(id *)a3
{
  v5 = [(MIInstallable *)self bundle];
  v6 = [v5 bundleType];

  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 builtInFrameworkBundleIDs];

  v9 = [(MIInstallable *)self bundle];
  v10 = [v9 identifier];
  v11 = [v8 containsObject:v10];

  if (v11)
  {
    v12 = MIInstallerErrorDomain;
    v13 = [(MIInstallable *)self bundle];
    v14 = [v13 identifier];
    v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 394, v12, 57, 0, &off_10009C3D0, @"A system framework has the bundle ID %@ so an app with the same identifier cannot be installed.", v15, v14);

LABEL_3:
    v17 = 0;
    goto LABEL_4;
  }

  v16 = 0;
  v19 = 1;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v33 = +[MIDaemonConfiguration sharedInstance];
      v20 = [v33 systemAppBundleIDToInfoMap];

      if (!v20)
      {
        v28 = MIInstallerErrorDomain;
        v29 = @"Failed to get system app map";
        v30 = 413;
        goto LABEL_50;
      }
    }

    else
    {
      v17 = 0;
      if (v6 != 2)
      {
        goto LABEL_47;
      }

      v26 = +[MIDaemonConfiguration sharedInstance];
      v20 = [v26 internalAppBundleIDToInfoMap];

      if (!v20)
      {
        v28 = MIInstallerErrorDomain;
        v29 = @"Failed to get internal app map";
        v30 = 440;
LABEL_50:
        v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", v30, v28, 4, 0, 0, v29, v27, v62);
        goto LABEL_3;
      }
    }
  }

  else
  {
    if (v6 == 3)
    {
      v20 = +[MIDiskImageManager sharedInstance];
      v21 = [(MIInstallable *)self bundle];
      v22 = [v21 identifier];
      v23 = v20;
      v24 = v22;
      v25 = 1;
LABEL_17:
      v31 = [v23 appInfoForBundleID:v24 onAttachedEntityType:v25];
      goto LABEL_22;
    }

    if (v6 != 5)
    {
      v17 = 0;
      if (v6 != 12)
      {
        goto LABEL_47;
      }

      v20 = +[MIDiskImageManager sharedInstance];
      v21 = [(MIInstallable *)self bundle];
      v22 = [v21 identifier];
      v23 = v20;
      v24 = v22;
      v25 = 2;
      goto LABEL_17;
    }

    v32 = +[MIDaemonConfiguration sharedInstance];
    v20 = [v32 coreServicesAppBundleIDToInfoMap];

    if (!v20)
    {
      v28 = MIInstallerErrorDomain;
      v29 = @"Failed to get core services app map";
      v30 = 421;
      goto LABEL_50;
    }
  }

  v21 = [(MIInstallable *)self bundle];
  v22 = [v21 identifier];
  v31 = [v20 objectForKeyedSubscript:v22];
LABEL_22:
  v17 = v31;

  if (!v17)
  {
LABEL_46:
    v16 = 0;
    v19 = 1;
    goto LABEL_47;
  }

  v34 = [v17 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
  objc_opt_class();
  v35 = v34;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = [v17 objectForKeyedSubscript:kCFBundleVersionKey];
  objc_opt_class();
  v38 = v37;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v64 = v36;
    v40 = [(MIInstallable *)self bundle];
    v41 = [v40 infoPlistSubset];
    v42 = [v41 objectForKeyedSubscript:kCFBundleVersionKey];
    objc_opt_class();
    v43 = v42;
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v49 = [v44 compare:v39 options:64];
      v50 = [(MIInstallableBundle *)self isPlaceholderInstall];
      if (v49 < 2)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      if ((v51 & 1) != 0 || v49 == 1)
      {
        goto LABEL_45;
      }

      v52 = +[MIDaemonConfiguration sharedInstance];
      v53 = [v52 allowsInternalSecurityPolicy];

      if (v53 && !v49)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v54 = [(MIInstallable *)self bundle];
          v62 = [v54 identifier];
          MOLogWrite();
        }

LABEL_45:
        [(MIInstallableBundle *)self setUpgradingBuiltInAppAtURL:v64, v62];

        goto LABEL_46;
      }

      v60 = MIInstallerErrorDomain;
      v57 = [(MIInstallable *)self bundle];
      v58 = [v57 identifier];
      v63 = [v64 path];
      v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 478, v60, 34, 0, &off_10009C3F8, @"Rejecting downgrade of system/internal app %@ at %@: installed version is %@, proposed version is %@", v61, v58);
    }

    else
    {
      v56 = MIInstallerErrorDomain;
      v57 = [(MIInstallable *)self bundle];
      v58 = [v57 identifier];
      v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 457, v56, 33, 0, 0, @"Failed to get CFBundleVersion from Info.plist for incoming OS app upgrade for bundle ID %@", v59, v58);
    }
  }

  else
  {
    v45 = MIInstallerErrorDomain;
    v46 = [(MIInstallable *)self bundle];
    v47 = [v46 identifier];
    v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 451, v45, 4, 0, 0, @"Failed to get CFBundleVersion from Info.plist of installed OS app with bundle ID %@", v48, v47);
  }

LABEL_4:
  if (a3)
  {
    v18 = v16;
    v19 = 0;
    *a3 = v16;
  }

  else
  {
    v19 = 0;
  }

LABEL_47:

  return v19;
}

- (BOOL)_validateITunesMetadataOptionWithError:(id *)a3
{
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [(MIInstallable *)self installOptions];
  v7 = [v6 sinfData];

  if (!v7 || ([v6 iTunesMetadata], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19 = 0;
    v18 = 0;
    v12 = 0;
    v16 = 0;
    v10 = 0;
    v20 = 1;
    goto LABEL_11;
  }

  v8 = [(MIInstallable *)self bundle];
  v9 = [v8 bundleVersion];
  v10 = [v9 stringByTrimmingCharactersInSet:v5];

  v11 = [v7 bundleVersion];
  v12 = [v11 stringByTrimmingCharactersInSet:v5];

  if (v10 && v12 && ([v10 isEqualToString:v12] & 1) == 0)
  {
    v19 = sub_100010734("[MIInstallableBundle _validateITunesMetadataOptionWithError:]", 537, MIInstallerErrorDomain, 79, 0, &off_10009C420, @"iTunesMetadata.plist content supplied to install command specified bundleVersion (%@) that did not match app's CFBundleVersion (%@).", v13, v12);
    v16 = 0;
    v18 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v14 = [(MIInstallable *)self bundle];
  v15 = [v14 bundleShortVersion];
  v16 = [v15 stringByTrimmingCharactersInSet:v5];

  v17 = [v7 bundleShortVersionString];
  v18 = [v17 stringByTrimmingCharactersInSet:v5];

  v19 = 0;
  v20 = 1;
  if (v16 && v18)
  {
    if ([v16 isEqualToString:v18])
    {
      v19 = 0;
      goto LABEL_11;
    }

    v19 = sub_100010734("[MIInstallableBundle _validateITunesMetadataOptionWithError:]", 545, MIInstallerErrorDomain, 79, 0, &off_10009C448, @"iTunesMetadata.plist content supplied to install command specified bundleShortVersionString (%@) that did not match app's CFBundleShortVersionString (%@).", v21, v18);
    if (!a3)
    {
LABEL_15:
      v20 = 0;
      goto LABEL_11;
    }

LABEL_13:
    v23 = v19;
    v20 = 0;
    *a3 = v19;
  }

LABEL_11:

  return v20;
}

- (BOOL)performPreflightWithError:(id *)a3
{
  v5 = [(MIInstallableBundle *)self isPlaceholderInstall];
  v6 = [(MIInstallable *)self progressBlock];
  (v6)[2](v6, @"PreflightingApplication", 30);

  v145.receiver = self;
  v145.super_class = MIInstallableBundle;
  v146 = 0;
  LODWORD(v6) = [(MIInstallable *)&v145 performPreflightWithError:&v146];
  v7 = v146;
  if (!v6)
  {
    goto LABEL_70;
  }

  v8 = [(MIInstallable *)self bundle];
  v9 = v8;
  if (v5)
  {
    v144 = v7;
    v10 = [v8 setIsPlaceholderWithError:&v144];
    v11 = v144;

    if ((v10 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v143 = v7;
    v12 = [v8 checkExecutableExistsIfRequiredWithError:&v143];
    v11 = v143;

    if (!v12)
    {
      goto LABEL_72;
    }
  }

  v13 = [(MIInstallable *)self bundle];
  v14 = [v13 bundleType];

  if (v14 - 1 < 5 || v14 == 9)
  {
    v142 = v11;
    v15 = [(MIInstallableBundle *)self _validateITunesMetadataOptionWithError:&v142];
    v7 = v142;

    if (!v15)
    {
      goto LABEL_70;
    }

    v11 = v7;
  }

  v141 = v11;
  v16 = [(MIInstallableBundle *)self _checkCanInstallWithError:&v141];
  v7 = v141;

  if (!v16)
  {
LABEL_70:
    v60 = 0;
    if (!a3)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v17 = [(MIInstallable *)self bundle];
  v140 = v7;
  v18 = [v17 frameworkBundlesWithError:&v140];
  v11 = v140;

  [(MIInstallableBundle *)self setFrameworkBundles:v18];
  v19 = [(MIInstallableBundle *)self frameworkBundles];

  if (!v19)
  {
    goto LABEL_72;
  }

  v20 = [(MIInstallable *)self bundle];
  v139 = v11;
  v21 = [v20 appExtensionBundlesWithError:&v139];
  v7 = v139;

  [(MIInstallableBundle *)self setAppExtensionBundles:v21];
  v22 = [(MIInstallableBundle *)self appExtensionBundles];

  if (!v22)
  {
    goto LABEL_70;
  }

  v23 = [(MIInstallable *)self bundle];
  v138 = v7;
  v24 = [v23 driverKitExtensionBundlesWithError:&v138];
  v11 = v138;

  [(MIInstallableBundle *)self setDriverKitExtensionBundles:v24];
  v25 = [(MIInstallableBundle *)self driverKitExtensionBundles];

  if (!v25)
  {
    goto LABEL_72;
  }

  v26 = [NSMutableDictionary dictionaryWithCapacity:0];
  [(MIInstallableBundle *)self setIdentifiersMap:v26];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = [(MIInstallableBundle *)self frameworkBundles];
  v27 = [obj countByEnumeratingWithState:&v134 objects:v150 count:16];
  if (v27)
  {
    v28 = v27;
    v108 = *v135;
LABEL_16:
    v29 = 0;
    v30 = v11;
    while (1)
    {
      if (*v135 != v108)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v134 + 1) + 8 * v29);
      v133 = v30;
      v32 = [v31 checkExecutableExistsIfRequiredWithError:&v133];
      v11 = v133;

      if (!v32)
      {
        goto LABEL_60;
      }

      v33 = [v31 identifier];
      v34 = [(MIInstallableBundle *)self identifiersMap];
      v35 = [v34 objectForKeyedSubscript:v33];

      if (v35)
      {
        v61 = MIInstallerErrorDomain;
        v62 = [v31 bundleURL];
        v63 = [v62 path];
        v64 = [(MIInstallableBundle *)self identifiersMap];
        v65 = [v64 objectForKeyedSubscript:v33];
        v66 = [v65 path];
        sub_100010734("[MIInstallableBundle performPreflightWithError:]", 624, v61, 57, 0, &off_10009C470, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v67, v63);
        v70 = LABEL_36:;

        v60 = 0;
        v11 = v70;
        goto LABEL_61;
      }

      v36 = [v31 bundleURL];
      v37 = [(MIInstallableBundle *)self identifiersMap];
      [v37 setObject:v36 forKeyedSubscript:v33];

      v29 = v29 + 1;
      v30 = v11;
      if (v28 == v29)
      {
        v28 = [obj countByEnumeratingWithState:&v134 objects:v150 count:16];
        if (v28)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v38 = [obj countByEnumeratingWithState:&v129 objects:v149 count:16];
  if (v38)
  {
    v39 = v38;
    v109 = *v130;
LABEL_25:
    v40 = 0;
    v41 = v11;
    while (1)
    {
      if (*v130 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v129 + 1) + 8 * v40);
      v128 = v41;
      v43 = [v42 checkExecutableExistsIfRequiredWithError:&v128];
      v11 = v128;

      if (!v43)
      {
        goto LABEL_60;
      }

      v33 = [v42 identifier];
      v44 = [(MIInstallableBundle *)self identifiersMap];
      v45 = [v44 objectForKeyedSubscript:v33];

      if (v45)
      {
        v68 = MIInstallerErrorDomain;
        v62 = [v42 bundleURL];
        v63 = [v62 path];
        v64 = [(MIInstallableBundle *)self identifiersMap];
        v65 = [v64 objectForKeyedSubscript:v33];
        v66 = [v65 path];
        sub_100010734("[MIInstallableBundle performPreflightWithError:]", 639, v68, 57, 0, &off_10009C498, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v69, v63);
        goto LABEL_36;
      }

      v46 = [v42 bundleURL];
      v47 = [(MIInstallableBundle *)self identifiersMap];
      [v47 setObject:v46 forKeyedSubscript:v33];

      v40 = v40 + 1;
      v41 = v11;
      if (v39 == v40)
      {
        v39 = [obj countByEnumeratingWithState:&v129 objects:v149 count:16];
        if (v39)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  v48 = [(MIInstallableBundle *)self identifiersMap];
  v49 = [(MIInstallable *)self bundle];
  v50 = [v49 identifier];
  v51 = [v48 objectForKeyedSubscript:v50];

  if (v51)
  {
    v52 = MIInstallerErrorDomain;
    obj = [(MIInstallable *)self bundle];
    v53 = [obj identifier];
    v54 = [(MIInstallableBundle *)self identifiersMap];
    v55 = [(MIInstallable *)self bundle];
    v56 = [v55 identifier];
    v57 = [v54 objectForKeyedSubscript:v56];
    v107 = [v57 path];
    v59 = sub_100010734("[MIInstallableBundle performPreflightWithError:]", 646, v52, 57, 0, &off_10009C4C0, @"The parent bundle has the same identifier (%@) as sub-bundle at %@", v58, v53);

    v60 = 0;
    v11 = v59;
LABEL_61:

    goto LABEL_73;
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = [(MIInstallableBundle *)self driverKitExtensionBundles];
  v71 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v125;
LABEL_39:
    v74 = 0;
    v75 = v11;
    while (1)
    {
      if (*v125 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v76 = *(*(&v124 + 1) + 8 * v74);
      v123 = v75;
      v77 = [v76 checkExecutableExistsIfRequiredWithError:&v123];
      v11 = v123;

      if (!v77)
      {
        break;
      }

      v74 = v74 + 1;
      v75 = v11;
      if (v72 == v74)
      {
        v72 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
        if (v72)
        {
          goto LABEL_39;
        }

        goto LABEL_45;
      }
    }

LABEL_60:
    v60 = 0;
    goto LABEL_61;
  }

LABEL_45:

  if (v5)
  {
    v78 = objc_opt_new();
    v79 = [(MIInstallableBundle *)self frameworkBundles];
    [v78 addObjectsFromArray:v79];

    v80 = [(MIInstallableBundle *)self appExtensionBundles];
    [v78 addObjectsFromArray:v80];

    v81 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    [v78 addObjectsFromArray:v81];

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v78;
    v82 = [obj countByEnumeratingWithState:&v119 objects:v147 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v120;
      while (2)
      {
        v85 = 0;
        v86 = v11;
        do
        {
          if (*v120 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v87 = *(*(&v119 + 1) + 8 * v85);
          v118 = v86;
          v88 = [v87 setIsPlaceholderWithError:&v118];
          v11 = v118;

          if (!v88)
          {

            goto LABEL_60;
          }

          v85 = v85 + 1;
          v86 = v11;
        }

        while (v83 != v85);
        v83 = [obj countByEnumeratingWithState:&v119 objects:v147 count:16];
        if (v83)
        {
          continue;
        }

        break;
      }
    }
  }

  v89 = [(MIInstallable *)self bundle];
  v90 = [v89 bundleType];

  if (v90 - 1 >= 5 && v90 != 9)
  {
    goto LABEL_65;
  }

  v91 = [(MIInstallable *)self existingBundleContainer];

  v92 = [(MIInstallable *)self bundle];
  v93 = v92;
  if (v91)
  {
    v94 = [(MIInstallable *)self existingBundleContainer];
    v95 = [v94 bundle];
    v117 = v11;
    v96 = [v93 transferInstallationIdentityFromBundle:v95 error:&v117];
    v7 = v117;

    if ((v96 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v116 = v11;
    v97 = [v92 makeAndSetNewInstallationIdentityWithError:&v116];
    v7 = v116;

    if (!v97)
    {
      goto LABEL_70;
    }
  }

  v11 = v7;
LABEL_65:
  v115 = v11;
  v98 = [(MIInstallableBundle *)self _verifyBundleMetadataWithError:&v115];
  v7 = v115;

  if (!v98)
  {
    goto LABEL_70;
  }

  v99 = [(MIInstallable *)self bundle];
  v114 = v7;
  v100 = [v99 validatePluginKitMetadataWithError:&v114];
  v11 = v114;

  if (!v100)
  {
LABEL_72:
    v60 = 0;
LABEL_73:
    v7 = v11;
    if (!a3)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v101 = [(MIInstallable *)self bundle];
  v113 = v11;
  v102 = [v101 validateExtensionKitMetadataWithError:&v113];
  v7 = v113;

  if (!v102)
  {
    goto LABEL_70;
  }

  v103 = [(MIInstallable *)self bundle];
  v112 = v7;
  v104 = [v103 validateDriverKitExtensionMetadataWithError:&v112];
  obj = v112;

  if (v104)
  {
    v111 = obj;
    v60 = [(MIInstallableBundle *)self _installEmbeddedProfilesWithError:&v111];
    v11 = v111;
    goto LABEL_61;
  }

  v60 = 0;
  v7 = obj;
  if (!a3)
  {
    goto LABEL_76;
  }

LABEL_74:
  if (!v60)
  {
    v105 = v7;
    *a3 = v7;
  }

LABEL_76:

  return v60;
}

- (BOOL)applyPatchWithError:(id *)a3
{
  v11.receiver = self;
  v11.super_class = MIInstallableBundle;
  v12 = 0;
  v5 = [(MIInstallable *)&v11 applyPatchWithError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    if ([(MIInstallable *)self isPatchUpdate])
    {
      v8 = [(MIInstallable *)self bundle];
      [v8 removeSinf];
    }
  }

  else if (a3)
  {
    v9 = v6;
    *a3 = v7;
  }

  return v5;
}

- (BOOL)_performCompanionWatchAppValidationForWatchApp:(id)a3 withVersion:(unsigned __int8)a4 companionAppSigningInfo:(id)a5 frameworks:(id)a6 error:(id *)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (([v11 isWatchApp] & 1) == 0)
  {
    v20 = @"Unknown";
    if (v10 == 3)
    {
      v20 = @"2.0";
    }

    if (v10 == 2)
    {
      v20 = @"1.0";
    }

    v15 = sub_100010734("[MIInstallableBundle _performCompanionWatchAppValidationForWatchApp:withVersion:companionAppSigningInfo:frameworks:error:]", 763, MIInstallerErrorDomain, 102, 0, &off_10009C4E8, @"WatchKit %@ app's UIDeviceFamily key does not specify that it's compatible with device family 4.", v14, v20);
    goto LABEL_14;
  }

  if ([v12 codeSignerType] == 2 && (objc_msgSend(v11, "isPlaceholder") & 1) == 0)
  {
    v41 = 0;
    v23 = [v11 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v41];
    v15 = v41;

    if (!v23)
    {
      goto LABEL_14;
    }

    v32 = a7;
    v33 = v13;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      while (2)
      {
        v28 = 0;
        v29 = v15;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v37 + 1) + 8 * v28);
          v36 = v29;
          v31 = [v30 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:1 error:&v36];
          v15 = v36;

          if (!v31)
          {

            a7 = v32;
            v13 = v33;
            goto LABEL_14;
          }

          v28 = v28 + 1;
          v29 = v15;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    a7 = v32;
    v13 = v33;
  }

  else
  {
    v15 = 0;
  }

  if (v10 != 3)
  {
LABEL_8:
    v19 = 1;
    goto LABEL_17;
  }

  v35 = v15;
  v16 = [v11 validatePluginKitMetadataWithError:&v35];
  v17 = v35;

  if (v16)
  {
    v34 = v17;
    v18 = [v11 validateExtensionKitMetadataWithError:&v34];
    v15 = v34;

    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v17;
  }

LABEL_14:
  if (a7)
  {
    v21 = v15;
    v19 = 0;
    *a7 = v15;
  }

  else
  {
    v19 = 0;
  }

LABEL_17:

  return v19;
}

- (BOOL)_validateCompanionAppStateInWatchKitApp:(id)a3 withVersion:(unsigned __int8)a4 isSystemAppInstall:(BOOL)a5 error:(id *)a6
{
  v7 = a4;
  v9 = a3;
  v10 = [v9 companionAppIdentifier];
  v11 = [v9 isWatchOnlyApp];
  v12 = [v9 watchKitAppRunsIndependentlyOfCompanion];
  v13 = [(MIInstallable *)self bundle];
  v14 = [v13 identifier];
  v15 = [v14 stringByAppendingString:@"."];

  if (v11 && v12)
  {
    sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 834, MIInstallerErrorDomain, 138, 0, &off_10009C510, @"This app defines both %@ and %@ in its Info.plist and/or its WatchKit extension's Info.plist. Having both defined is not allowed.", v16, @"WKWatchOnly");
    v17 = LABEL_6:;
    v18 = v10;
    goto LABEL_7;
  }

  if (v11)
  {
    sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 853, MIInstallerErrorDomain, 135, 0, &off_10009C538, @"Watch-only apps cannot be contained in companion apps installed on the companion.", v16, v40);
    goto LABEL_6;
  }

  v18 = v10;
  if (v10)
  {
    v22 = [(MIInstallable *)self bundle];
    v23 = [v22 identifier];
    v24 = [v10 isEqualToString:v23];

    if (v24)
    {
      if (a5)
      {
LABEL_14:
        v17 = 0;
        v20 = 1;
        goto LABEL_10;
      }

      v32 = [v9 identifier];
      if ([v32 hasPrefix:v15])
      {
        v33 = [v9 identifier];
        v34 = [v33 length];
        v35 = [v15 length];

        if (v34 > v35)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v36 = MIInstallerErrorDomain;
      v37 = @"Unknown";
      if (v7 == 3)
      {
        v37 = @"2.0";
      }

      if (v7 == 2)
      {
        v37 = @"1.0";
      }

      v38 = v37;
      v41 = [v9 identifier];
      v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 874, v36, 101, 0, &off_10009C5B0, @"WatchKit %@ app's bundle ID %@ is not prefixed by the parent app's bundle ID followed by a '.' expected prefix %@", v39, v38);;

      goto LABEL_7;
    }

    v28 = MIInstallerErrorDomain;
    v29 = @"Unknown";
    if (v7 == 3)
    {
      v29 = @"2.0";
    }

    if (v7 == 2)
    {
      v29 = @"1.0";
    }

    v30 = v29;
    v26 = [(MIInstallable *)self bundle];
    v42 = [v26 identifier];
    v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 865, v28, 97, 0, &off_10009C588, @"Invalid value of WKCompanionAppBundleIdentifier key in WatchKit %@ app's Info.plist: %@ (expected %@)", v31, v30);
  }

  else
  {
    v25 = MIInstallerErrorDomain;
    v26 = [v9 identifier];
    v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 858, v25, 97, 0, &off_10009C560, @"%@: Missing WKCompanionAppBundleIdentifier key in WatchKit %@ app's Info.plist", v27, v26);
  }

LABEL_7:
  if (a6)
  {
    v19 = v17;
    v20 = 0;
    *a6 = v17;
  }

  else
  {
    v20 = 0;
  }

LABEL_10:

  return v20;
}

- (BOOL)_verifyPluginKitPlugins:(id)a3 extensionKitExtensions:(id)a4 inWatchKit2App:(id)a5 checkAppexSignatures:(BOOL)a6 checkFrameworkSignature:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = v13;
  v57 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
  v17 = 0;
  v18 = 0;
  if (!v57)
  {
    goto LABEL_23;
  }

  v58 = *v72;
  v51 = a8;
  v52 = v14;
  v50 = v15;
  v55 = v16;
  v48 = v9;
  v49 = v10;
  while (2)
  {
    for (i = 0; i != v57; i = i + 1)
    {
      if (*v72 != v58)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v71 + 1) + 8 * i);
      if (v10)
      {
        v70 = v18;
        v21 = [v20 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v70];
        v22 = v70;

        if (!v21)
        {
          v47 = v16;
LABEL_51:
          a8 = v51;
          v14 = v52;
          v15 = v50;
          goto LABEL_47;
        }
      }

      else
      {
        v22 = v18;
      }

      v69 = v22;
      v23 = [v20 frameworkBundlesWithError:&v69];
      v18 = v69;

      if (!v23)
      {
        v47 = v16;
        v22 = v18;
        goto LABEL_51;
      }

      if (v9)
      {
        v53 = v17;
        v68 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v22 = v23;
        v24 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v66;
          while (2)
          {
            v27 = 0;
            v28 = v18;
            do
            {
              if (*v66 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v29 = *(*(&v65 + 1) + 8 * v27);
              v64 = v28;
              v30 = [v29 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:1 error:&v64];
              v18 = v64;

              if (!v30)
              {

                v16 = v55;
                v47 = v55;
                a8 = v51;
                v14 = v52;
                v15 = v50;
                goto LABEL_46;
              }

              v27 = v27 + 1;
              v28 = v18;
            }

            while (v25 != v27);
            v25 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v16 = v55;
        v17 = v53;
        v9 = v48;
        v10 = v49;
      }

      v17 |= [v20 isWatchKitExtension];
    }

    a8 = v51;
    v14 = v52;
    v15 = v50;
    v57 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_23:

  if (v10)
  {
    v54 = v17;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v47 = v14;
    v31 = [v47 countByEnumeratingWithState:&v60 objects:v75 count:16];
    v56 = v16;
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      while (2)
      {
        v34 = 0;
        v35 = v18;
        do
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v47);
          }

          v36 = *(*(&v60 + 1) + 8 * v34);
          v59 = v35;
          v37 = [v36 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v59];
          v18 = v59;

          if (!v37)
          {
            v22 = v18;
            v16 = v56;
            goto LABEL_47;
          }

          v34 = v34 + 1;
          v35 = v18;
        }

        while (v32 != v34);
        v32 = [v47 countByEnumeratingWithState:&v60 objects:v75 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v22 = v18;
    v16 = v56;
    v17 = v54;
  }

  else
  {
    v22 = v18;
  }

  if ([v15 isExtensionlessWatchKitApp] && objc_msgSend(v15, "isExtensionBasedWatchKitApp"))
  {
    v38 = MIInstallerErrorDomain;
    v47 = [v15 identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1083, v38, 144, 0, &off_10009C628, @"WatchKit app %@ has both WKApplication and WKWatchKitApp Info.plist keys. A WatchKit app should only have one of these keys.", v39, v47);
    goto LABEL_45;
  }

  if (([v15 isExtensionlessWatchKitApp] & v17) == 1)
  {
    v40 = MIInstallerErrorDomain;
    v47 = [v15 identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1086, v40, 143, 0, &off_10009C650, @"Extensionless WatchKit app %@ has a WatchKit extension.", v41, v47);
    goto LABEL_45;
  }

  if (v17 & 1 | (([v15 isExtensionBasedWatchKitApp] & 1) == 0))
  {
    v42 = 1;
  }

  else
  {
    v43 = MIInstallerErrorDomain;
    v47 = [v15 identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1089, v43, 96, 0, &off_10009C678, @"Extension-based WatchKit 2 app %@ is missing its app extension.", v44, v47);
    v18 = LABEL_45:;
LABEL_46:

    v22 = v18;
LABEL_47:

    if (a8)
    {
      v45 = v22;
      v42 = 0;
      *a8 = v22;
    }

    else
    {
      v42 = 0;
    }
  }

  return v42;
}

- (BOOL)_validateApplicationIdentifierForNewBundleSigningInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 entitlements];
  v8 = sub_10004C3B0(v7);
  if (v8)
  {
    goto LABEL_2;
  }

  v24 = +[MIDaemonConfiguration sharedInstance];
  if ([v24 codeSigningEnforcementIsDisabled])
  {
    v25 = [v6 codeSignerType];

    if (v25 == 1)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v27 = [(MIInstallable *)self bundle];
        v48 = [v27 identifier];
        MOLogWrite();
      }

LABEL_2:
      v9 = [(MIInstallable *)self existingBundleContainer];
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = v9;
      v11 = [(MIInstallable *)self existingBundleContainer];
      v12 = [v11 bundle];

      if (!v8 || !v12)
      {
LABEL_16:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          v23 = [(MIInstallable *)self bundle];
          v49 = [v23 identifier];
          MOLogWrite();
        }

        goto LABEL_72;
      }

      v13 = [(MIInstallable *)self existingBundleContainer];
      v14 = [v13 bundle];
      v15 = [v14 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];

      v16 = [v15 entitlements];
      v17 = sub_10004C3B0(v16);

      if (v15 && v17)
      {
        v18 = [v6 codeSignerType];
        v19 = [v15 codeSignerType];
        if ([(MIInstallableBundle *)self isPlaceholderInstall])
        {
          goto LABEL_8;
        }

        v37 = [(MIInstallable *)self existingBundleContainer];
        v38 = [v37 bundle];
        if ([v38 isPlaceholder])
        {
          if (v18 == 2)
          {

LABEL_53:
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }

          v42 = sub_10004C498(v7);

          if (v42)
          {
            goto LABEL_53;
          }

          v41 = 0;
          v39 = v19 == 2;
        }

        else
        {

          v39 = v19 == 2;
          v40 = v18 == 2;
          v41 = v18 == 2;
          if (v40 && v19 == 2)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        if (sub_10004C498(v7) && ([v15 entitlements], v43 = objc_claimAutoreleasedReturnValue(), v44 = sub_10004C498(v43), v43, v44))
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

        else if (v41 && ([v15 entitlements], v45 = objc_claimAutoreleasedReturnValue(), v46 = sub_10004C498(v45), v45, v46))
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((sub_10004C498(v7) & v39) != 1)
          {
LABEL_8:
            if ([v8 isEqualToString:v17])
            {
LABEL_71:

LABEL_72:
              v28 = 0;
              v30 = 1;
              goto LABEL_73;
            }

            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              MOLogWrite();
            }

            v20 = sub_10004C430(v7);
            v22 = v20;
            if (v20 && [v20 containsObject:v17])
            {

              goto LABEL_71;
            }

            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              MOLogWrite();
            }

            v28 = sub_100010734("[MIInstallableBundle _validateApplicationIdentifierForNewBundleSigningInfo:error:]", 1251, MIInstallerErrorDomain, 64, 0, &off_10009C6F0, @"Upgrade's application-identifier entitlement string (%@) does not match installed application's application-identifier string (%@) rejecting upgrade.", v21, v8);;

            if (!a4)
            {
              goto LABEL_51;
            }

            goto LABEL_25;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

LABEL_70:
        MOLogWrite();
        goto LABEL_71;
      }

      if ([(MIInstallableBundle *)self isPlaceholderInstall])
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v31 = [(MIInstallable *)self bundle];
          v50 = [v31 identifier];
          MOLogWrite();
        }

        goto LABEL_71;
      }

      v32 = [(MIInstallable *)self bundle];
      v33 = [v32 identifier];

      v34 = [(MIInstallable *)self existingBundleContainer];
      v35 = [v34 bundle];
      v36 = [v35 isPlaceholder];

      if (v36)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
        {
          goto LABEL_40;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_40;
      }

      MOLogWrite();
LABEL_40:

      goto LABEL_71;
    }
  }

  else
  {
  }

  v28 = sub_100010734("[MIInstallableBundle _validateApplicationIdentifierForNewBundleSigningInfo:error:]", 1173, MIInstallerErrorDomain, 63, 0, &off_10009C6C8, @"Application is missing the application-identifier entitlement.", v26, v48);
  if (!a4)
  {
LABEL_51:
    v30 = 0;
    goto LABEL_73;
  }

LABEL_25:
  v29 = v28;
  v30 = 0;
  *a4 = v28;
LABEL_73:

  return v30;
}

- (BOOL)_performWatchVerificationForSigningInfo:(id)a3 isSystemAppInstall:(BOOL)a4 withError:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(MIInstallable *)self bundle];
  v32 = 0;
  v10 = [v9 watchKitV2AppBundleWithError:&v32];
  v11 = v32;
  v12 = v11;
  if (v10)
  {
    if (v6)
    {
      v13 = MIInstallerErrorDomain;
      v14 = [v10 bundleURL];
      v15 = [v14 path];
      v16 = [v9 identifier];
      v18 = sub_100010734("[MIInstallableBundle _performWatchVerificationForSigningInfo:isSystemAppInstall:withError:]", 1350, v13, 92, v12, &off_10009C718, @"Embedded WatchKit apps are not allowed in deletable system apps (found one at %@ in %@).", v17, v15);

      v12 = v18;
LABEL_13:

      goto LABEL_14;
    }

    v31 = v11;
    v20 = [v10 watchKitVersionWithError:&v31];
    v16 = v31;

    if (v20 != 3)
    {
      v25 = MIInstallerErrorDomain;
      v14 = [v10 bundleURL];
      v15 = [v14 path];
      v12 = sub_100010734("[MIInstallableBundle _performWatchVerificationForSigningInfo:isSystemAppInstall:withError:]", 1355, v25, 92, v16, &off_10009C740, @"Found WatchKit app at %@ but it was not a WatchKit 2 app (was version %@). Is it missing its app extension?", v26, v15);
      goto LABEL_13;
    }

    v30 = v16;
    v21 = [v10 checkExecutableExistsIfRequiredWithError:&v30];
    v22 = v30;

    if (!v21)
    {
      v12 = v22;
      if (a5)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v29 = v22;
    v23 = [(MIInstallableBundle *)self _isValidWatchKitApp:v10 withVersion:3 installableSigningInfo:v8 isSystemAppInstall:0 error:&v29];
    v12 = v29;

    if (!v23)
    {
LABEL_15:
      if (a5)
      {
LABEL_16:
        v27 = v12;
        v24 = 0;
        *a5 = v12;
        goto LABEL_19;
      }

LABEL_18:
      v24 = 0;
      goto LABEL_19;
    }

    [(MIInstallableBundle *)self setEmbeddedWatchApp:v10];
  }

  else
  {
    v14 = [v11 domain];
    if (![v14 isEqualToString:MIInstallerErrorDomain])
    {
LABEL_14:

      goto LABEL_15;
    }

    v19 = [v12 code];

    if (v19 != 85)
    {
      goto LABEL_15;
    }

    v12 = 0;
  }

  v24 = 1;
LABEL_19:

  return v24;
}

- (BOOL)_getLinkedParentBundleID:(id *)a3 withError:(id *)a4
{
  v7 = [(MIInstallable *)self bundle];
  v8 = [v7 identifier];

  v9 = [(MIInstallable *)self installOptions];
  v10 = [v9 linkedParentBundleID];

  v11 = 0;
  if ([(MIInstallableBundle *)self isPlaceholderInstall]&& !v10)
  {
    v12 = [(MIInstallable *)self existingBundleContainer];
    v13 = v12;
    if (v12)
    {
      v21 = 0;
      v14 = [v12 bundleMetadataWithError:&v21];
      v16 = v21;
      if (!v14)
      {
        v11 = sub_100010734("[MIInstallableBundle _getLinkedParentBundleID:withError:]", 1419, MIInstallerErrorDomain, 4, v16, 0, @"Failed to read previously set bundle metadata for %@", v15, v8);

        if (a4)
        {
          v20 = v11;
          v10 = 0;
          v18 = 0;
          *a4 = v11;
        }

        else
        {
          v10 = 0;
          v18 = 0;
        }

        goto LABEL_11;
      }

      v10 = [v14 linkedParentBundleID];
    }

    else
    {
      v10 = 0;
      v16 = 0;
    }

    v11 = v16;
  }

  if (a3)
  {
    v17 = v10;
    *a3 = v10;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (BOOL)_validateLinkedParentForSigningInfo:(id)a3 appManagementDomainValue:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MIInstallableBundle *)self isPlaceholderInstall];
  v10 = +[MIDaemonConfiguration sharedInstance];
  v11 = [v10 localSigningIsUnrestricted];

  v12 = [(MIInstallable *)self bundle];
  v13 = [v12 identifier];

  v14 = [v8 codeSignerType];
  v39 = 0;
  v40 = 0;
  LODWORD(self) = [(MIInstallableBundle *)self _getLinkedParentBundleID:&v40 withError:&v39];
  v15 = v40;
  v17 = v39;
  if (!self)
  {
    goto LABEL_44;
  }

  v38 = a5;
  if (!v15)
  {
    LOBYTE(v19) = 0;
    goto LABEL_17;
  }

  v18 = v15;
  if ([v18 isEqualToString:@"com.apple.Playgrounds"])
  {

    LOBYTE(v19) = 1;
    goto LABEL_17;
  }

  v37 = v13;
  v42 = 0;
  v20 = +[MITestManager sharedInstance];
  v41 = 0;
  v21 = [v20 isRunningInTestMode:&v42 outError:&v41];
  v36 = v41;

  if (!v21)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
      v22 = v36;
      v19 = 0;
      v13 = v37;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v42 != 1)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = [v18 isEqualToString:@"com.apple.mock.Playgrounds"];
LABEL_13:
  v22 = v36;
  v13 = v37;
LABEL_14:

  if (((v19 | v11) & 1) == 0)
  {
    v23 = +[MITestManager sharedInstance];
    v24 = [v23 testFlagsAreSet:4];

    if ((v24 & 1) == 0)
    {
      v13 = v37;
      sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1462, MIInstallerErrorDomain, 195, 0, &off_10009C768, @"App %@ specified %@ as its linked parent app but that app isn't an allowed parent app.", v16, v37);
      goto LABEL_41;
    }

    LOBYTE(v19) = 0;
    v13 = v37;
  }

LABEL_17:
  if (!v9)
  {
    if (v14 != 5)
    {
      goto LABEL_31;
    }

    if (v11)
    {
      goto LABEL_23;
    }

    if (a4 != 1 || v15)
    {
      if (v15)
      {
        if (a4 != 1)
        {
          goto LABEL_23;
        }

        sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1484, MIInstallerErrorDomain, 197, 0, &off_10009C7E0, @"App %@ was signed with a local key but did not have the %@ entitlement.", v16, v13);
      }

      else
      {
        sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1481, MIInstallerErrorDomain, 196, 0, &off_10009C7B8, @"App %@ was signed with a local key but did not have linked parent bundle ID specified.", v16, v13);
      }
    }

    else
    {
      sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1478, MIInstallerErrorDomain, 170, 0, &off_10009C790, @"App %@ was signed with a local key but did not specify either the %@ entitlement or a linked parent bundle ID.", v16, v13);
    }

    v30 = LABEL_41:;
    goto LABEL_42;
  }

  if (a4 == 1 && !v15)
  {
    goto LABEL_31;
  }

LABEL_23:
  v25 = v19 ^ 1;
  if (a4 == 2)
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = MIInstallerErrorDomain;
    [v8 entitlements];
    v28 = v27 = v13;
    v35 = sub_10004C574(v28);
    v30 = sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1497, v26, 168, 0, &off_10009C808, @"App %@ linked to Swift Playgrounds did not have the %@ entitlement set to a value prefixed by swift-playgrounds (found %@).", v29, v27);

    v17 = v28;
    v13 = v27;
LABEL_42:
    a5 = v38;
    goto LABEL_43;
  }

  if (a4 == 2)
  {
    v31 = v19;
  }

  else
  {
    v31 = 1;
  }

  a5 = v38;
  if (v31)
  {
LABEL_31:
    v32 = 1;
    goto LABEL_47;
  }

  v30 = sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1500, MIInstallerErrorDomain, 169, 0, &off_10009C830, @"App %@ with the %@ entitlement set to a value prefixed by swift-playgrounds did not specify a linkage to the Swift Playgrounds app.", v16, v13);
LABEL_43:

  v17 = v30;
LABEL_44:
  if (a5)
  {
    v33 = v17;
    v32 = 0;
    *a5 = v17;
  }

  else
  {
    v32 = 0;
  }

LABEL_47:

  return v32;
}

- (BOOL)_validateAppManagementDomainForSigningInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIInstallable *)self bundle];
  v8 = [v7 identifier];

  v9 = [v6 entitlements];
  v10 = sub_10004C664(v9);
  v11 = +[MIDaemonConfiguration sharedInstance];
  v12 = [v11 localSigningIsUnrestricted];

  if (v10 || (v12 & 1) != 0)
  {
    v20 = 0;
    v16 = [(MIInstallableBundle *)self _validateLinkedParentForSigningInfo:v6 appManagementDomainValue:v10 error:&v20];
    v15 = v20;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MIInstallerErrorDomain;
    v19 = sub_10004C574(v9);
    v15 = sub_100010734("[MIInstallableBundle _validateAppManagementDomainForSigningInfo:error:]", 1524, v13, 194, 0, 0, @"App %@ has a value for its %@ entitlement that is not allowed: %@.", v14, v8);

    v16 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (!v16)
  {
    v17 = v15;
    *a4 = v15;
  }

LABEL_8:

  return v16;
}

- (BOOL)_performAppClipSpecificValidationForEntitlements:(id)a3 isAppClip:(BOOL *)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = sub_10004C2E4(v7);
  v59 = [NSSet setWithObjects:@"com.apple.widgetkit-extension"];
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    v21 = 0;
    v13 = 0;
    v16 = 0;
    v57 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v9 = sub_10004C3B0(v7);
  v10 = sub_10004C2F4(v7);
  v57 = v9;
  if (!v10)
  {
    v26 = MIInstallerErrorDomain;
    v27 = [(MIInstallable *)self bundle];
    v28 = [v27 identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1578, v26, 145, 0, &off_10009C858, @"Attempted to install an app clip with bundleID %@ which is on demand install capable but doesn't have the %@ entitlement", v29, v28);

    v11 = 0;
LABEL_20:
    v12 = 0;
    v21 = 0;
    v13 = 0;
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  if ([v10 count] != 1)
  {
    v30 = MIInstallerErrorDomain;
    v31 = [(MIInstallable *)self bundle];
    v32 = [v31 identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1584, v30, 151, 0, &off_10009C880, @"Attempted to install an app clip with bundleID %@ which has %ld parent identifiers in the %@ entitlement", v33, v32);

    goto LABEL_20;
  }

  v12 = [v11 objectAtIndex:0];
  v13 = [v12 stringByAppendingString:@"."];
  if (![v9 hasPrefix:v13] || (v15 = objc_msgSend(v9, "length"), v15 <= objc_msgSend(v13, "length")))
  {
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1592, MIInstallerErrorDomain, 150, 0, &off_10009C8A8, @"Application identifier of the parent app, %@, is not a prefix of the application identifier of the app clip, %@", v14, v12);
    v21 = 0;
    goto LABEL_22;
  }

  v16 = [v9 substringFromIndex:{objc_msgSend(v13, "length")}];
  if ([v16 containsString:@"."])
  {
    v53 = MIInstallerErrorDomain;
    v17 = [(MIInstallable *)self bundle];
    v18 = [v17 identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1598, v53, 149, 0, &off_10009C8D0, @"App clip with bundleID %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@)'", v19, v18);;

LABEL_8:
    v21 = 0;
    goto LABEL_23;
  }

  v34 = sub_10004C4A8(v7);
  if (!v34)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [(MIInstallableBundle *)self appExtensionBundles];
    v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v55)
    {
      v51 = *v61;
      while (2)
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v61 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v38 = [*(*(&v60 + 1) + 8 * i) extensionPointIdentifier];
          if (![v59 containsObject:v38])
          {
            v52 = MIInstallerErrorDomain;
            v56 = [(MIInstallable *)self bundle];
            v46 = [v56 identifier];
            v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1614, v52, 173, 0, &off_10009C920, @"The App Clip with bundle ID %@ contains an app extension with an extension point that is not allowed within an App Clip, %@.", v47, v46);

            goto LABEL_8;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    v39 = [(MIInstallableBundle *)self embeddedWatchApp];

    if (v39)
    {
      v41 = MIInstallerErrorDomain;
      v42 = &off_10009C948;
      v43 = @"App clip contains an embedded watch app";
      v44 = 1622;
      v45 = 146;
LABEL_40:
      v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", v44, v41, v45, 0, v42, v43, v40, @"com.apple.background-asset-downloader-extension");
      goto LABEL_8;
    }

    v48 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v20 = [v48 count];

    if (v20)
    {
      v41 = MIInstallerErrorDomain;
      v42 = &off_10009C970;
      v43 = @"App clip contains a DriverKit bundle";
      v44 = 1629;
      v45 = 179;
      goto LABEL_40;
    }

    v21 = 0;
LABEL_10:
    v22 = 1;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = v34;
  v50 = MIInstallerErrorDomain;
  v54 = [(MIInstallable *)self bundle];
  v35 = [v54 identifier];
  v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1606, v50, 148, 0, &off_10009C8F8, @"App clip with bundleID %@ has the %@ entitlement, which is not allowed on app clips", v36, v35);

LABEL_23:
  v22 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v8;
  }

LABEL_12:
  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v20;
    *a5 = v20;
  }

  return v22;
}

- (BOOL)_performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_100042B8C;
  v112 = sub_100042B9C;
  v113 = 0;
  v6 = [(MIInstallable *)self bundle];
  v7 = [v5 entitlements];
  v8 = sub_10004CBC8(v7);
  v81 = v5;
  v82 = v6;
  if (!(v8 & 1 | ((sub_10004CBD8(v7) & 1) == 0)))
  {
    v11 = [v6 relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1670, MIInstallerErrorDomain, 216, 0, 0, @"%@ has the %@ entitlement, but it does not have the %@ entitlement. The %@ entitlement is only available to apps with the %@ entitlement.", v14, v11);
    goto LABEL_5;
  }

  v9 = sub_10004CA78(v7);
  v10 = sub_10004CA88(v7);
  if ((v9 & v10) == 1)
  {
    v11 = [v6 relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1681, MIInstallerErrorDomain, 212, 0, 0, @"%@ has both the %@ entitlement and the %@ entitlement. Only one of these entitlements may be present at a time. Remove one of these entitlements to allow this app to be installed.", v12, v11);
LABEL_5:
    v15 = v109[5];
    v109[5] = v13;
LABEL_6:

    v16 = 0;
    goto LABEL_7;
  }

  if ((v10 & v8) == 1)
  {
    v11 = [v6 relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1688, MIInstallerErrorDomain, 214, 0, 0, @"%@ has the %@ entitlement so it may not also have the %@ entitlement. Remove one of these entitlements to allow this app to be installed.", v19, v11);
    goto LABEL_5;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  if (MGGetBoolAnswer())
  {
    if (![objc_opt_class() _shouldSkipEligibilityChecksForAppWithSigningInfo:v5])
    {
      if (v8)
      {
        v34 = (v109 + 5);
        v107 = v109[5];
        v35 = [v6 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v107];
        objc_storeStrong(v34, v107);
        if ((v35 & 1) == 0)
        {
          v42 = v109[5];
          v11 = [v6 relativePath];
          v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1721, MIInstallerErrorDomain, 202, v42, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v43, v11);
          goto LABEL_5;
        }

        v36 = v109[5];
        v109[5] = 0;

        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_100042BA4;
        v104[3] = &unk_100091928;
        v106 = &v108;
        v105 = v6;
        v37 = [v105 enumerateDylibsWithBlock:v104];
        v11 = v37;
        v38 = v109;
        if (!v109[5])
        {
          if (!v37)
          {
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v44 = [(MIInstallableBundle *)self frameworkBundles];
            v45 = [v44 countByEnumeratingWithState:&v100 objects:v117 count:16];
            if (v45)
            {
              v46 = *v101;
              v79 = v44;
              while (2)
              {
                for (i = 0; i != v45; i = i + 1)
                {
                  if (*v101 != v46)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v48 = *(*(&v100 + 1) + 8 * i);
                  v49 = (v109 + 5);
                  v99 = v109[5];
                  v50 = [v48 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v99];
                  objc_storeStrong(v49, v99);
                  if ((v50 & 1) == 0)
                  {
                    v63 = v109[5];
                    v64 = [v48 relativePath];
                    v66 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1760, MIInstallerErrorDomain, 202, v63, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v65, v64);
                    v67 = v109[5];
                    v109[5] = v66;

LABEL_75:
                    v40 = v79;
                    goto LABEL_76;
                  }
                }

                v44 = v79;
                v45 = [v79 countByEnumeratingWithState:&v100 objects:v117 count:16];
                if (v45)
                {
                  continue;
                }

                break;
              }
            }

            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v51 = [(MIInstallableBundle *)self driverKitExtensionBundles];
            v52 = [v51 countByEnumeratingWithState:&v95 objects:v116 count:16];
            if (v52)
            {
              v53 = *v96;
              v79 = v51;
              while (2)
              {
                for (j = 0; j != v52; j = j + 1)
                {
                  if (*v96 != v53)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v55 = *(*(&v95 + 1) + 8 * j);
                  v56 = (v109 + 5);
                  v94 = v109[5];
                  v57 = [v55 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v94];
                  objc_storeStrong(v56, v94);
                  if ((v57 & 1) == 0)
                  {
                    v68 = v109[5];
                    v69 = [v55 relativePath];
                    v71 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1768, MIInstallerErrorDomain, 202, v68, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v70, v69);
                    v72 = v109[5];
                    v109[5] = v71;

                    goto LABEL_75;
                  }
                }

                v51 = v79;
                v52 = [v79 countByEnumeratingWithState:&v95 objects:v116 count:16];
                if (v52)
                {
                  continue;
                }

                break;
              }
            }

            if (sub_10004BF04(v7))
            {
              v93 = 0u;
              v91 = 0u;
              v92 = 0u;
              v90 = 0u;
              v40 = [(MIInstallableBundle *)self xpcServiceBundles];
              v80 = [v40 countByEnumeratingWithState:&v90 objects:v115 count:16];
              if (v80)
              {
                v58 = *v91;
                while (2)
                {
                  for (k = 0; k != v80; k = k + 1)
                  {
                    if (*v91 != v58)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v60 = *(*(&v90 + 1) + 8 * k);
                    v61 = (v109 + 5);
                    v89 = v109[5];
                    v62 = [v60 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v89];
                    objc_storeStrong(v61, v89);
                    if ((v62 & 1) == 0)
                    {
                      v73 = v109[5];
                      v74 = [v60 relativePath];
                      v76 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1779, MIInstallerErrorDomain, 202, v73, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v75, v74);
                      v77 = v109[5];
                      v109[5] = v76;

                      goto LABEL_76;
                    }
                  }

                  v80 = [v40 countByEnumeratingWithState:&v90 objects:v115 count:16];
                  if (v80)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v20 = 1;
            goto LABEL_23;
          }

          v39 = v37;
          v40 = v38[5];
          v38[5] = v39;
LABEL_76:
        }

        v15 = v105;
        goto LABEL_6;
      }

LABEL_44:
      v11 = [v6 relativePath];
      v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1714, MIInstallerErrorDomain, 201, 0, 0, @"%@ has the %@ entitlement but must also have the %@ entitlement.", v41, v11);
      goto LABEL_5;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v78 = [v6 identifier];
      MOLogWrite();
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  v20 = 0;
LABEL_23:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v11 = [(MIInstallableBundle *)self appExtensionBundles];
  v21 = [v11 countByEnumeratingWithState:&v85 objects:v114 count:16];
  if (v21)
  {
    v22 = *v86;
    while (2)
    {
      for (m = 0; m != v21; m = m + 1)
      {
        if (*v86 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = *(*(&v85 + 1) + 8 * m);
        if (v20)
        {
          v25 = (v109 + 5);
          obj = v109[5];
          v26 = [v24 hasExecutableSliceForCPUType:16777228 subtype:2 error:&obj];
          objc_storeStrong(v25, obj);
          if ((v26 & 1) == 0)
          {
            v27 = v109[5];
            v15 = [v24 relativePath];
            v29 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1793, MIInstallerErrorDomain, 202, v27, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v28, v15);
            v30 = v109[5];
            v109[5] = v29;
LABEL_38:

            goto LABEL_6;
          }
        }

        if ((v9 & 1) == 0 && [v24 targetsBrowserExtensionPoint])
        {
          v15 = [v24 relativePath];
          v30 = [v24 extensionPointIdentifier];
          v32 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1799, MIInstallerErrorDomain, 203, 0, 0, @"The app extension at %@ targets the extension point %@, which is not allowed in a non-browser app. Either add the entitlement %@ to the containing app, or remove this app extension.", v31, v15);
          v33 = v109[5];
          v109[5] = v32;

          goto LABEL_38;
        }
      }

      v21 = [v11 countByEnumeratingWithState:&v85 objects:v114 count:16];
      v16 = 1;
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_7:

  if (a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *a4 = v109[5];
  }

  _Block_object_dispose(&v108, 8);
  return v16;
}

- (id)_builtInAppUpgradeFailureError
{
  v3 = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];
  v4 = [v3 path];

  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 hasInternalContent];

  v7 = MIInstallerErrorDomain;
  v8 = [(MIInstallable *)self bundle];
  v10 = [v8 identifier];
  if (v6)
  {
  }

  else
  {
    sub_100010734("[MIInstallableBundle _builtInAppUpgradeFailureError]", 1886, v7, 58, 0, &off_10009C9C0, @"This app has the same bundle identifier, %@, as a built-in system app located at %@. However, this app is not configured correctly to allow it to upgrade that system app.", v9, v10);
  }
  v11 = ;

  return v11;
}

- (BOOL)_performBuiltInAppUpgradeValidationWithSigningInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];

  if (v7)
  {
    v8 = [v6 entitlements];
    v9 = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];
    v10 = [v9 URLByDeletingLastPathComponent];
    v11 = [v10 path];

    v12 = +[MIDaemonConfiguration sharedInstance];
    v13 = [v12 systemAppsDirectory];
    v14 = [v13 path];
    v15 = [v11 isEqualToString:v14];

    if (v15 && ![MIExecutableBundle isGrandfatheredNonContainerizedForSigningInfo:v6]|| (sub_100043024(v8) & 1) != 0)
    {
      v16 = 0;
      v17 = 1;
    }

    else
    {
      v18 = [(MIInstallableBundle *)self _builtInAppUpgradeFailureError];
      v16 = v18;
      if (a4)
      {
        v19 = v18;
        v17 = 0;
        *a4 = v16;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)performVerificationWithError:(id *)a3
{
  v5 = [(MIInstallable *)self installOptions];
  v6 = [(MIInstallableBundle *)self isPlaceholderInstall];
  v372.receiver = self;
  v372.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v372 performVerificationWithError:a3])
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_98;
  }

  v7 = [(MIInstallable *)self progressBlock];

  if (v7)
  {
    v8 = [(MIInstallable *)self progressBlock];
    (v8)[2](v8, @"VerifyingApplication", 40);
  }

  if ((v6 & 1) == 0)
  {
    v9 = [(MIInstallable *)self bundle];
    v10 = [v9 executableURL];
    removexattr([v10 fileSystemRepresentation], "com.apple.installd.hidden_archs_fat_header", 1);

    v11 = [(MIInstallable *)self bundle];
    v12 = [v11 executableURL];
    v13 = sub_1000016D0([v12 fileSystemRepresentation]);

    if ((v13 & 1) == 0)
    {
      v29 = MIInstallerErrorDomain;
      v30 = [(MIInstallable *)self bundle];
      v31 = [v30 executableURL];
      v17 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 1952, v29, 14, 0, 0, @"Failed to unhide archs in executable %@", v32, v31);

      goto LABEL_22;
    }
  }

  if ([v5 installTargetType] == 1)
  {
    v14 = [v5 isDeveloperInstall];
    v15 = [v5 isSystemAppInstall];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v18 = +[MIDaemonConfiguration sharedInstance];
  if ((([v18 codeSigningEnforcementIsDisabled] | v6) & 1) != 0 || v15)
  {
  }

  else
  {
    v19 = [(MIInstallable *)self bundle];
    v20 = [v19 isRemovableSystemApp];

    if (v20)
    {
      v17 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 1971, MIInstallerErrorDomain, 25, 0, &off_10009C9E8, @"Attempted to install a deletable system app with incorrect install type.", v21, v260);
LABEL_22:
      v16 = 0;
      goto LABEL_96;
    }
  }

  v284 = v6;
  v22 = [v5 allowLocalProvisioned];
  v23 = [(MIInstallable *)self bundle];
  v371 = 0;
  v261 = &v371;
  v288 = v22;
  v16 = [(MIInstallableBundle *)self _validateBundle:v23 validatingResources:v14 ^ 1 performingOnlineAuthorization:1 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v22 skippingProfileIDValidation:0 error:?];
  v17 = v371;

  if (!v16)
  {
    goto LABEL_96;
  }

  v283 = v15;
  v24 = [v16 codeSignerType];
  if (v14)
  {
    v25 = v24;
    if ([v16 profileValidationType] == 2 || v25 == 2)
    {
      goto LABEL_26;
    }

    v26 = [v16 entitlements];
    if (sub_10004BF14(v26))
    {
      v27 = +[MIDaemonConfiguration sharedInstance];
      v28 = [v27 codeSigningEnforcementIsDisabled] ^ 1;
    }

    else
    {
      v28 = 0;
    }

    if ((v28 & 1) != 0 || v25 == 5)
    {
LABEL_26:
      if ([v16 codeSignerType] == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_37;
        }
      }

      else if ([v16 profileValidationType] == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_37;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_37;
      }

      v33 = [(MIInstallable *)self bundle];
      v261 = [v33 identifier];
      MOLogWrite();

LABEL_37:
      v34 = [(MIInstallable *)self bundle];
      v370 = v17;
      v261 = &v370;
      v35 = [(MIInstallableBundle *)self _validateBundle:v34 validatingResources:1 performingOnlineAuthorization:1 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v288 skippingProfileIDValidation:0 error:?];
      v36 = v370;

      if (!v35)
      {
        v16 = 0;
        v17 = v36;
        goto LABEL_96;
      }

      v16 = v35;
      v17 = v36;
    }
  }

  v37 = v17;
  [(MIInstallableBundle *)self setBundleSigningInfo:v16];
  v38 = [(MIInstallable *)self bundle];
  v39 = [v16 entitlements];
  v369 = v17;
  v40 = sub_100045420(v38, v39, &v369);
  v17 = v369;

  if (!v40)
  {
    goto LABEL_96;
  }

  v286 = a3;
  v287 = v16;
  v272 = v5;
  v368 = 0u;
  v367 = 0u;
  v366 = 0u;
  v365 = 0u;
  v41 = [(MIInstallableBundle *)self frameworkBundles];
  v42 = [v41 countByEnumeratingWithState:&v365 objects:v384 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v366;
    do
    {
      v45 = 0;
      v46 = v17;
      do
      {
        if (*v366 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(*(&v365 + 1) + 8 * v45);
        v364 = v46;
        v48 = [(MIInstallableBundle *)self _validateBundle:v47 validatingResources:v14 ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v288 skippingProfileIDValidation:1 error:&v364];
        v17 = v364;

        if (!v48)
        {

          goto LABEL_61;
        }

        v45 = v45 + 1;
        v46 = v17;
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v365 objects:v384 count:16];
    }

    while (v43);
  }

  v363 = 0u;
  v362 = 0u;
  v361 = 0u;
  v360 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v273 = [obj countByEnumeratingWithState:&v360 objects:v383 count:16];
  if (!v273)
  {
    a3 = v286;
    goto LABEL_65;
  }

  v277 = *v361;
  do
  {
    for (i = 0; i != v273; i = i + 1)
    {
      if (*v361 != v277)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v360 + 1) + 8 * i);
      v359 = v17;
      v51 = [(MIInstallableBundle *)self _validateBundle:v50 validatingResources:v14 ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v288 skippingProfileIDValidation:0 error:&v359];
      v52 = v359;

      if (!v51)
      {
        v5 = v272;
        a3 = v286;
        goto LABEL_94;
      }

      v53 = [v51 entitlements];
      v358 = v52;
      v54 = [v50 validateHasCorrespondingEntitlements:v53 error:&v358];
      v55 = v358;

      if (!v54)
      {
        goto LABEL_91;
      }

      v357 = v55;
      v56 = sub_100045600(v50, v53, &v357);
      v17 = v357;

      if (!v56)
      {
        v55 = v17;
LABEL_91:
        a3 = v286;
LABEL_93:

        v52 = v55;
        v5 = v272;
LABEL_94:

        v17 = v52;
        goto LABEL_95;
      }

      a3 = v286;
      if (sub_10004BF34(v53))
      {
        v81 = MIInstallerErrorDomain;
        v82 = [v50 relativePath];
        v55 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2080, v81, 210, 0, 0, @"The app extension at %@ has the %@ entitlement, which is not allowed on an app extension.", v83, v82);

        goto LABEL_93;
      }

      v16 = v287;
    }

    v273 = [obj countByEnumeratingWithState:&v360 objects:v383 count:16];
  }

  while (v273);
LABEL_65:

  v355 = 0u;
  v356 = 0u;
  v353 = 0u;
  v354 = 0u;
  v268 = [(MIInstallableBundle *)self driverKitExtensionBundles];
  obja = [v268 countByEnumeratingWithState:&v353 objects:v382 count:16];
  if (obja)
  {
    v274 = *v354;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v354 != v274)
        {
          objc_enumerationMutation(v268);
        }

        v58 = *(*(&v353 + 1) + 8 * j);
        v352 = v17;
        v59 = [(MIInstallableBundle *)self _validateBundle:v58 validatingResources:v14 ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v288 skippingProfileIDValidation:0 error:&v352];
        v60 = v352;

        if (!v59)
        {
          v5 = v272;
          goto LABEL_107;
        }

        v278 = v59;
        v61 = [v59 entitlements];
        if ((sub_10004C814(v61) & 1) == 0)
        {
          v87 = MIInstallerErrorDomain;
          v88 = [v58 bundleURL];
          v17 = [v88 path];
          v63 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2102, v87, 178, 0, &off_10009CA10, @"Found DriverKit bundle %@ with missing entitlement %@", v89, v17);

LABEL_105:
          v5 = v272;

          goto LABEL_106;
        }

        v351 = v60;
        v62 = sub_100045600(v58, v61, &v351);
        v63 = v351;

        if (!v62)
        {
          goto LABEL_103;
        }

        v350 = v63;
        v64 = sub_100045420(v58, v61, &v350);
        v17 = v350;

        if (!v64)
        {
          v63 = v17;
LABEL_103:
          v5 = v272;
          v16 = v287;
LABEL_106:

          v60 = v63;
LABEL_107:

LABEL_108:
          v17 = v60;
          goto LABEL_96;
        }

        v16 = v287;
        if (sub_10004BF34(v61))
        {
          v90 = MIInstallerErrorDomain;
          v88 = [v58 relativePath];
          v63 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2116, v90, 210, 0, 0, @"The DriverKit extension at %@ has the %@ entitlement, which is not allowed on a DriverKit extension.", v91, v88);
          goto LABEL_105;
        }
      }

      obja = [v268 countByEnumeratingWithState:&v353 objects:v382 count:16];
    }

    while (obja);
  }

  v65 = [v16 entitlements];
  v66 = sub_10004BF04(v65);

  if (v66)
  {
    v67 = [(MIInstallable *)self bundle];
    v349 = v17;
    v68 = [v67 xpcServiceBundlesWithError:&v349];
    v60 = v349;

    [(MIInstallableBundle *)self setXpcServiceBundles:v68];
    v69 = [(MIInstallableBundle *)self xpcServiceBundles];

    v5 = v272;
    if (!v69)
    {
      goto LABEL_108;
    }

    v347 = 0u;
    v348 = 0u;
    v345 = 0u;
    v346 = 0u;
    v275 = [(MIInstallableBundle *)self xpcServiceBundles];
    v70 = [v275 countByEnumeratingWithState:&v345 objects:v381 count:16];
    if (v70)
    {
      v71 = v70;
      v279 = *v346;
      v17 = v60;
      do
      {
        v72 = 0;
        v73 = v17;
        do
        {
          if (*v346 != v279)
          {
            objc_enumerationMutation(v275);
          }

          v74 = *(*(&v345 + 1) + 8 * v72);
          v344 = v73;
          v75 = [v74 checkExecutableExistsIfRequiredWithError:&v344];
          v17 = v344;

          if (!v75)
          {
            goto LABEL_188;
          }

          v76 = [v74 identifier];
          v77 = [(MIInstallableBundle *)self identifiersMap];
          v78 = [v77 objectForKeyedSubscript:v76];

          if (v78)
          {
            v162 = MIInstallerErrorDomain;
            v163 = [v74 bundleURL];
            v164 = [v163 path];
            v165 = [(MIInstallableBundle *)self identifiersMap];
            v166 = [v165 objectForKeyedSubscript:v76];
            v267 = [v166 path];
            v168 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2139, v162, 57, 0, &off_10009CA38, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v167, v164);

            v17 = v168;
            a3 = v286;
LABEL_188:

            goto LABEL_95;
          }

          v79 = [v74 bundleURL];
          v80 = [(MIInstallableBundle *)self identifiersMap];
          [v80 setObject:v79 forKeyedSubscript:v76];

          v72 = v72 + 1;
          v73 = v17;
          a3 = v286;
        }

        while (v71 != v72);
        v71 = [v275 countByEnumeratingWithState:&v345 objects:v381 count:16];
      }

      while (v71);
    }

    else
    {
      v17 = v60;
    }

    if (v284)
    {
      v342 = 0u;
      v343 = 0u;
      v340 = 0u;
      v341 = 0u;
      v92 = [(MIInstallableBundle *)self xpcServiceBundles];
      v93 = [v92 countByEnumeratingWithState:&v340 objects:v380 count:16];
      if (v93)
      {
        v94 = v93;
        v95 = *v341;
        do
        {
          v96 = 0;
          v97 = v17;
          do
          {
            if (*v341 != v95)
            {
              objc_enumerationMutation(v92);
            }

            v98 = *(*(&v340 + 1) + 8 * v96);
            v339 = v97;
            v99 = [v98 setIsPlaceholderWithError:&v339];
            v17 = v339;

            if (!v99)
            {

              goto LABEL_62;
            }

            v96 = v96 + 1;
            v97 = v17;
          }

          while (v94 != v96);
          v94 = [v92 countByEnumeratingWithState:&v340 objects:v380 count:16];
        }

        while (v94);
      }
    }

    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v100 = [(MIInstallableBundle *)self xpcServiceBundles];
    v101 = [v100 countByEnumeratingWithState:&v335 objects:v379 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v336;
      do
      {
        for (k = 0; k != v102; k = k + 1)
        {
          if (*v336 != v103)
          {
            objc_enumerationMutation(v100);
          }

          v105 = *(*(&v335 + 1) + 8 * k);
          v106 = [(MIInstallable *)self progressBlock];
          [v105 installEmbeddedProvisioningProfileWithProgress:v106];
        }

        v102 = [v100 countByEnumeratingWithState:&v335 objects:v379 count:16];
      }

      while (v102);
    }

    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    objb = [(MIInstallableBundle *)self xpcServiceBundles];
    v107 = [objb countByEnumeratingWithState:&v331 objects:v378 count:16];
    if (v107)
    {
      v108 = v107;
      v276 = *v332;
      do
      {
        for (m = 0; m != v108; m = m + 1)
        {
          if (*v332 != v276)
          {
            objc_enumerationMutation(objb);
          }

          v110 = *(*(&v331 + 1) + 8 * m);
          v330 = v17;
          v111 = [(MIInstallableBundle *)self _validateBundle:v110 validatingResources:v14 ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v288 skippingProfileIDValidation:0 error:&v330];
          v112 = v330;
          v113 = v17;
          v17 = v112;

          if (!v111)
          {
            v190 = objb;
            a3 = v286;
            v16 = v287;
LABEL_214:

            goto LABEL_96;
          }

          v280 = v111;
          v114 = [v111 entitlements];
          v329 = v17;
          v115 = sub_100045600(v110, v114, &v329);
          v116 = v329;

          if (!v115)
          {
            v190 = objb;
LABEL_213:
            a3 = v286;
            v16 = v287;

            v17 = v116;
            goto LABEL_214;
          }

          v328 = v116;
          v117 = sub_100045420(v110, v114, &v328);
          v17 = v328;

          if (!v117)
          {
            v190 = objb;
            v116 = v17;
            goto LABEL_213;
          }

          if (sub_10004BF34(v114))
          {
            v190 = objb;
            v191 = MIInstallerErrorDomain;
            v192 = [v110 relativePath];
            v116 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2185, v191, 210, 0, 0, @"The XPCService extension at %@ has the %@ entitlement, which is not allowed on an XPCService.", v193, v192);

            goto LABEL_213;
          }
        }

        v108 = [objb countByEnumeratingWithState:&v331 objects:v378 count:16];
      }

      while (v108);
    }

    v281 = v17;

    v326 = 0u;
    v327 = 0u;
    v324 = 0u;
    v325 = 0u;
    v289 = [(MIInstallableBundle *)self xpcServiceBundles];
    v118 = [v289 countByEnumeratingWithState:&v324 objects:v377 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v325;
      do
      {
        for (n = 0; n != v119; n = n + 1)
        {
          if (*v325 != v120)
          {
            objc_enumerationMutation(v289);
          }

          v122 = *(*(&v324 + 1) + 8 * n);
          v123 = [v122 infoPlistSubset];
          v124 = [v123 objectForKeyedSubscript:@"XPCService"];

          if (v124)
          {
            objc_opt_class();
            v125 = sub_1000146E0(v124);

            if (!v125)
            {
              v198 = MIInstallerErrorDomain;
              v126 = [v122 bundleURL];
              v199 = [v126 path];
              v200 = objc_opt_class();
              v201 = NSStringFromClass(v200);
              sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2194, v198, 113, 0, 0, @"XPCService key in Info.plist of XPC service at %@ has illegal value type: %@", v202, v199);
              goto LABEL_229;
            }

            v126 = [v124 objectForKeyedSubscript:@"ServiceType"];
            if (v126)
            {
              objc_opt_class();
              v127 = sub_1000146E0(v126);

              if (!v127)
              {
                v206 = MIInstallerErrorDomain;
                v199 = [v122 bundleURL];
                v201 = [v199 path];
                v207 = objc_opt_class();
                v265 = NSStringFromClass(v207);
                v17 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2201, v206, 51, 0, 0, @"XPCService's ServiceType key in Info.plist of service at %@ has illegal value type: %@", v208, v201);

                goto LABEL_230;
              }

              if (([v126 isEqualToString:@"Application"] & 1) == 0)
              {
                v209 = MIInstallerErrorDomain;
                v199 = [v122 bundleURL];
                v201 = [v199 path];
                sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2206, v209, 51, 0, 0, @"XPCService's ServiceType key in Info.plist of service at %@ has illegal value: %@ (must be Application)", v210, v201);
                v17 = LABEL_229:;

LABEL_230:
                goto LABEL_62;
              }
            }
          }
        }

        v119 = [v289 countByEnumeratingWithState:&v324 objects:v377 count:16];
      }

      while (v119);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v128 = [(MIInstallable *)self bundle];
      v261 = [v128 identifier];
      MOLogWrite();
    }

    [(MIInstallableBundle *)self setXpcServiceBundlesEnabled:1, v261];
  }

  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v290 = [(MIInstallableBundle *)self appExtensionBundles];
  v129 = [v290 countByEnumeratingWithState:&v320 objects:v376 count:16];
  if (!v129)
  {
    goto LABEL_174;
  }

  v130 = v129;
  v131 = *v321;
  v282 = MIContainerManagerErrorDomain;
  while (2)
  {
    v132 = 0;
    v133 = v17;
    while (2)
    {
      if (*v321 != v131)
      {
        objc_enumerationMutation(v290);
      }

      v134 = *(*(&v320 + 1) + 8 * v132);
      v135 = [(MIInstallable *)self identity];
      v136 = [v135 personaUniqueString];
      v319 = v133;
      v137 = [v134 dataContainerForPersona:v136 error:&v319];
      v17 = v319;

      if (v137)
      {
        v138 = [v137 parentBundleID];
        if (v138)
        {
          v139 = [(MIInstallable *)self bundle];
          v140 = [v139 identifier];
          v141 = [v138 isEqualToString:v140];

          if ((v141 & 1) == 0)
          {
            v157 = MIInstallerErrorDomain;
            v158 = [v137 identifier];
            v160 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2248, v157, 88, 0, &off_10009CA60, @"An app extension with the identifier %@ is already installed as part of the bundle with identifier %@", v159, v158);
            v161 = v17;
            v17 = v160;

LABEL_185:
            goto LABEL_61;
          }
        }

        else if ([v137 status] != 3 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
        {
          v261 = v137;
          MOLogWrite();
        }
      }

      else
      {
        v142 = [v17 domain];
        if (![v142 isEqualToString:v282])
        {

LABEL_184:
          sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2256, MIInstallerErrorDomain, 4, v17, 0, @"Failed to look up data container for app extension %@", v144, v134);
          v17 = v138 = v17;
          goto LABEL_185;
        }

        v143 = [v17 code];

        if (v143 != 21)
        {
          goto LABEL_184;
        }
      }

      v132 = v132 + 1;
      v133 = v17;
      if (v130 != v132)
      {
        continue;
      }

      break;
    }

    v130 = [v290 countByEnumeratingWithState:&v320 objects:v376 count:16];
    if (v130)
    {
      continue;
    }

    break;
  }

LABEL_174:

  v318 = v17;
  v16 = v287;
  v145 = [(MIInstallableBundle *)self _validateAppManagementDomainForSigningInfo:v287 error:&v318];
  v146 = v318;
  v147 = v17;
  v17 = v146;

  if (!v145)
  {
    v5 = v272;
    a3 = v286;
    goto LABEL_96;
  }

  v5 = v272;
  a3 = v286;
  if (v284)
  {
    v148 = [(MIInstallable *)self existingBundleContainer];
    v149 = [v148 bundle];
    v150 = v149;
    if (v148)
    {
      if (([v149 isPlaceholder] & 1) != 0 || objc_msgSend(v272, "installTargetType") == 3)
      {
        v291 = [v287 entitlements];
        v285 = [v150 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
        v151 = [v285 entitlements];
        v152 = v151;
        if (v151)
        {
          if (sub_10004BF34(v151) && [v272 installTargetType] == 3)
          {
            v153 = MIInstallerErrorDomain;
            v154 = [v150 displayName];
            v156 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2348, v153, 172, 0, 0, @"Offloading is not allowed for the marketplace %@.", v155, v154);
            goto LABEL_290;
          }

          if (v291)
          {
            v194 = sub_10004C3B0(v152);
            v195 = sub_10004C3B0(v291);
            v196 = v195;
            if (v194)
            {
              if (v195)
              {
                if ([v195 isEqualToString:v194])
                {
                  v197 = v17;
                  goto LABEL_285;
                }

                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
                {
                  v251 = [(MIInstallable *)self bundle];
                  v252 = [v251 identifier];
                  v264 = v196;
                  v266 = v194;
                  v262 = v252;
LABEL_281:
                  MOLogWrite();
                }
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                v251 = [(MIInstallable *)self bundle];
                v252 = [v251 identifier];
                v262 = v252;
                goto LABEL_281;
              }

LABEL_282:

              goto LABEL_283;
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
            {
              v203 = [(MIInstallable *)self bundle];
              v204 = [v203 identifier];
LABEL_237:
              MOLogWrite();
            }

            goto LABEL_286;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v194 = [(MIInstallable *)self bundle];
            v196 = [v194 identifier];
            v262 = v196;
            MOLogWrite();
            goto LABEL_282;
          }

LABEL_283:
          v253 = [(MIInstallable *)self bundle:v262];
          v254 = [v253 bundleURL];
          v317 = v17;
          v255 = sub_10004BFB0(v254, v152, &v317);
          v197 = v317;

          if (v255)
          {
            v194 = [(MIInstallable *)self bundle];
            [v194 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
            v287 = v196 = v287;
LABEL_285:

            v316 = v197;
            v256 = [(MIInstallableBundle *)self _validateApplicationIdentifierForNewBundleSigningInfo:v287 error:&v316];
            v17 = v316;

            if (v256)
            {
              goto LABEL_286;
            }
          }

          else
          {
            v257 = MIInstallerErrorDomain;
            v154 = [(MIInstallable *)self bundle];
            v17 = [v154 identifier];
            v156 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2373, v257, 4, v197, 0, @"%@: Unable to write placeholder entitlements into downgrade placeholder: %@", v258, v17);

LABEL_290:
            v17 = v156;
          }

LABEL_61:
          v5 = v272;
LABEL_62:
          a3 = v286;
LABEL_95:
          v16 = v287;
LABEL_96:
          if (a3)
          {
            v84 = v17;
            v85 = 0;
            *a3 = v17;
            goto LABEL_99;
          }

LABEL_98:
          v85 = 0;
          goto LABEL_99;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v194 = [(MIInstallable *)self bundle];
          v196 = [v194 identifier];
          v203 = [v150 bundleURL];
          v204 = [v203 path];
          goto LABEL_237;
        }

LABEL_286:

        v205 = v285;
LABEL_287:

LABEL_288:
        v5 = v272;
        v16 = v287;

        v85 = 1;
        goto LABEL_99;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
      {
        goto LABEL_288;
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
    {
      goto LABEL_288;
    }

    v291 = [(MIInstallable *)self bundle];
    v205 = [v291 identifier];
    MOLogWrite();
    goto LABEL_287;
  }

  v315 = v17;
  v169 = [(MIInstallableBundle *)self _validateApplicationIdentifierForNewBundleSigningInfo:v287 error:&v315];
  v170 = v315;

  if (!v169)
  {
    v17 = v170;
    goto LABEL_96;
  }

  v171 = [v287 entitlements];
  v314 = v170;
  v172 = [(MIInstallableBundle *)self _performWatchVerificationForSigningInfo:v287 isSystemAppInstall:v283 withError:&v314];
  v17 = v314;

  if ((v172 & 1) == 0)
  {

    goto LABEL_96;
  }

  v313 = 0;
  v312 = v17;
  v173 = [(MIInstallableBundle *)self _performAppClipSpecificValidationForEntitlements:v171 isAppClip:&v313 withError:&v312];
  v174 = v312;

  if (!v173)
  {
    goto LABEL_299;
  }

  if (v313 == 1)
  {
    v175 = sub_10004C3B0(v171);
    v176 = +[MIFileManager defaultManager];
    v177 = [(MIInstallable *)self bundle];
    v178 = [v177 bundleURL];
    v311 = v174;
    v179 = [v176 setAppClipAppIdentifier:v175 insecurelyCachedOnBundle:v178 error:&v311];
    v180 = v311;

    if ((v179 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v181 = [(MIInstallable *)self bundle];
        v261 = [v181 bundleURL];
        v264 = v180;
        MOLogWrite();
      }

      v180 = 0;
    }

    v174 = v180;
  }

  v182 = v174;
  v310 = v174;
  v183 = [(MIInstallableBundle *)self _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:v287 error:&v310, v261, v264];
  v174 = v310;

  if (!v183)
  {
LABEL_299:

    v17 = v174;
    goto LABEL_61;
  }

  if (sub_10004BF34(v171))
  {
    v184 = [(MIInstallable *)self bundle];
    v185 = [v184 isLaunchProhibited];

    if (v185)
    {
      v186 = MIInstallerErrorDomain;
      v187 = [(MIInstallable *)self bundle];
      v188 = [v187 displayName];
      v17 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2440, v186, 209, 0, 0, @"The marketplace %@ has the key %@ = TRUE in its Info.plist. This is not allowed.", v189, v188);

      v174 = v187;
      goto LABEL_297;
    }
  }

  v211 = +[MIDaemonConfiguration sharedInstance];
  if (([v211 codeSigningEnforcementIsDisabled] & 1) != 0 || (-[MIInstallableBundle upgradingBuiltInAppAtURL](self, "upgradingBuiltInAppAtURL"), (v212 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v213 = v212;
    v214 = sub_10004BE68(v171);

    if ((v214 & 1) == 0)
    {
      v215 = +[MIDaemonConfiguration sharedInstance];
      v216 = [v215 hasInternalContent];

      v218 = MIInstallerErrorDomain;
      if (v216)
      {
        v219 = &off_10009CA88;
        v220 = @"System app upgrade is missing upgrade entitlement (disable code signing enforcement via boot-args to avoid this).";
        v221 = 2446;
      }

      else
      {
        v219 = &off_10009CAB0;
        v220 = @"System app upgrade is missing upgrade entitlement.";
        v221 = 2448;
      }

      v259 = 16;
      goto LABEL_296;
    }
  }

  if (v283 && (sub_10004BF14(v171) & 1) == 0)
  {
    v218 = MIInstallerErrorDomain;
    v219 = &off_10009CAD8;
    v220 = @"System app install missing system app entitlement.";
    v221 = 2455;
    v259 = 127;
LABEL_296:
    v17 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", v221, v218, v259, 0, v219, v220, v217, v263);
LABEL_297:

    goto LABEL_298;
  }

  v309 = v174;
  v222 = [(MIInstallableBundle *)self _performBuiltInAppUpgradeValidationWithSigningInfo:v287 error:&v309];
  v223 = v309;

  if (!v222)
  {
    v174 = v223;
    goto LABEL_299;
  }

  v224 = [(MIInstallable *)self bundle];
  v225 = [v224 executableURL];
  [v225 fileSystemRepresentation];
  v308 = v223;
  v226 = MIMachOFileMatchesMyArchitecture();
  v17 = v223;

  if (!v226)
  {
LABEL_298:
    v174 = v17;
    goto LABEL_299;
  }

  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v174 = [(MIInstallableBundle *)self appExtensionBundles];
  v227 = [v174 countByEnumeratingWithState:&v304 objects:v375 count:16];
  if (v227)
  {
    v228 = v227;
    v229 = *v305;
    do
    {
      v230 = 0;
      v231 = v17;
      do
      {
        if (*v305 != v229)
        {
          objc_enumerationMutation(v174);
        }

        v232 = [*(*(&v304 + 1) + 8 * v230) executableURL];
        [v232 fileSystemRepresentation];
        v303 = v231;
        v233 = MIMachOFileMatchesMyArchitecture();
        v17 = v231;

        if (!v233)
        {
          goto LABEL_297;
        }

        v230 = v230 + 1;
        v231 = v17;
      }

      while (v228 != v230);
      v228 = [v174 countByEnumeratingWithState:&v304 objects:v375 count:16];
    }

    while (v228);
  }

  v301 = 0u;
  v302 = 0u;
  v299 = 0u;
  v300 = 0u;
  v174 = [(MIInstallableBundle *)self xpcServiceBundles];
  v234 = [v174 countByEnumeratingWithState:&v299 objects:v374 count:16];
  if (v234)
  {
    v235 = v234;
    v236 = *v300;
    do
    {
      v237 = 0;
      v238 = v17;
      do
      {
        if (*v300 != v236)
        {
          objc_enumerationMutation(v174);
        }

        v239 = [*(*(&v299 + 1) + 8 * v237) executableURL];
        [v239 fileSystemRepresentation];
        v298 = v238;
        v240 = MIMachOFileMatchesMyArchitecture();
        v17 = v238;

        if (!v240)
        {
          goto LABEL_297;
        }

        v237 = v237 + 1;
        v238 = v17;
      }

      while (v235 != v237);
      v235 = [v174 countByEnumeratingWithState:&v299 objects:v374 count:16];
    }

    while (v235);
  }

  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v241 = [(MIInstallableBundle *)self driverKitExtensionBundles];
  v242 = [v241 countByEnumeratingWithState:&v294 objects:v373 count:16];
  if (!v242)
  {
    goto LABEL_274;
  }

  v243 = v242;
  v244 = *v295;
  while (2)
  {
    v245 = 0;
    while (2)
    {
      if (*v295 != v244)
      {
        objc_enumerationMutation(v241);
      }

      v246 = *(*(&v294 + 1) + 8 * v245);
      v247 = [v246 executableURL];
      [v247 fileSystemRepresentation];

      v293 = v17;
      v248 = MIMachOFileMatchesMyArchitecture();
      v249 = v293;

      if (!v248)
      {
        v17 = v249;
LABEL_304:

        goto LABEL_61;
      }

      v292 = v249;
      v250 = [v246 onlyHasExecutableSlicesForPlatform:10 error:&v292];
      v17 = v292;

      if ((v250 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        goto LABEL_304;
      }

      if (v243 != ++v245)
      {
        continue;
      }

      break;
    }

    v243 = [v241 countByEnumeratingWithState:&v294 objects:v373 count:16];
    if (v243)
    {
      continue;
    }

    break;
  }

LABEL_274:

  v85 = 1;
  v5 = v272;
  v16 = v287;
LABEL_99:

  return v85;
}

- (BOOL)_writeData:(id)a3 toFile:(id)a4 inContainerAtURL:(id)a5 legacyErrorString:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = [a5 URLByAppendingPathComponent:a4 isDirectory:0];
  v24 = 0;
  v14 = [v11 writeToURL:v13 options:268435457 error:&v24];
  v15 = v24;
  if (v14)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      [v11 length];
      v23 = [v13 path];
      MOLogWrite();
    }
  }

  else
  {
    v16 = MIInstallerErrorDomain;
    v25 = @"LegacyErrorString";
    v26 = v12;
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v13 path];
    v20 = sub_100010734("[MIInstallableBundle _writeData:toFile:inContainerAtURL:legacyErrorString:error:]", 2528, v16, 24, v15, v17, @"Failed to write data to %@", v19, v18);

    if (a7)
    {
      v21 = v20;
      *a7 = v20;
    }

    v15 = v20;
  }

  return v14;
}

- (BOOL)_writeOptionsDataToBundle:(id)a3 orContainer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v36 = [v9 containerURL];
  v10 = [(MIInstallable *)self installOptions];
  v35 = [v10 iTunesMetadata];
  v11 = [v10 iTunesMetadata];
  v12 = [v11 distributorInfo];

  v13 = [v10 sinfData];
  if (v13)
  {
    v14 = v13;
    v15 = [v12 distributorID];
    if (v15 && ![v12 distributorIsFirstPartyApple])
    {
      v21 = [v10 sinfDataType];

      if (v21 != 1)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v22 = [(MIInstallable *)self bundle];
          v34 = [v22 identifier];
          MOLogWrite();
        }

        [v10 setSinfDataType:{1, v34}];
      }
    }

    else
    {
    }
  }

  v42 = 0;
  v16 = [v8 setSinfDataType:objc_msgSend(v10 withError:{"sinfDataType"), &v42}];
  v17 = v42;
  if (!v16)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v18 = [v10 sinfData];
  if (v18)
  {
    v41 = v17;
    v19 = [v8 updateSinfWithData:v18 error:&v41];
    v20 = v41;

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v40 = v17;
    v23 = [v8 replicateRootSinfWithError:&v40];
    v20 = v40;

    if (!v23)
    {
      v18 = 0;
LABEL_20:
      v17 = v20;
      goto LABEL_21;
    }
  }

  v24 = [v10 geoJSONData];

  if (v24)
  {
    v39 = v20;
    v25 = [(MIInstallableBundle *)self _writeData:v24 toFile:@"GeoJSON" inContainerAtURL:v36 legacyErrorString:@"GeoJSONCaptureFailed" error:&v39];
    v26 = v39;

    if (!v25)
    {
      v18 = v24;
      v17 = v26;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = v20;
  }

  v18 = [v10 iTunesArtworkData];

  if (v18)
  {
    v38 = v26;
    v30 = [(MIInstallableBundle *)self _writeData:v18 toFile:@"iTunesArtwork" inContainerAtURL:v36 legacyErrorString:@"iTunesArtworkCaptureFailed" error:&v38];
    v17 = v38;

    if (!v30)
    {
LABEL_21:
      v27 = v35;
      if (a5)
      {
        goto LABEL_22;
      }

LABEL_33:
      v29 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v17 = v26;
  }

  v27 = v35;
  if (!v35)
  {
    v29 = 1;
    goto LABEL_34;
  }

  v37 = v17;
  v31 = [v9 writeiTunesMetadata:v35 error:&v37];
  v32 = v37;

  if (v31)
  {
    v29 = 1;
    v17 = v32;
    goto LABEL_34;
  }

  v17 = v32;
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_22:
  v28 = v17;
  v29 = 0;
  *a5 = v17;
LABEL_34:

  return v29;
}

- (BOOL)_captureDataFromStagingRootOrBundle:(id)a3 toContainer:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MIInstallable *)self installOptions];
  v11 = [v10 iTunesMetadata];

  v12 = [(MIInstallable *)self stagingRootURL];
  v13 = [v9 captureStoreDataFromDirectory:v12 doCopy:1 failureIsFatal:1 includeiTunesMetadata:v11 == 0 withError:a5];

  v14 = v13 && (-[MIInstallable packageFormat](self, "packageFormat") != 2 || [v9 captureStoreDataFromDirectory:v8 doCopy:1 failureIsFatal:1 includeiTunesMetadata:v11 == 0 withError:a5]);
  return v14;
}

- (BOOL)_validateSinfsWithError:(id *)a3
{
  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    v8 = [(MIInstallable *)self bundle];
    [v7 addObject:v8];

    v9 = [(MIInstallableBundle *)self frameworkBundles];
    [v7 addObjectsFromArray:v9];

    v10 = [(MIInstallableBundle *)self appExtensionBundles];
    [v7 addObjectsFromArray:v10];

    v11 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    [v7 addObjectsFromArray:v11];

    v12 = [(MIInstallableBundle *)self xpcServiceBundles];

    if (v12)
    {
      v13 = [(MIInstallableBundle *)self xpcServiceBundles];
      [v7 addObjectsFromArray:v13];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v7;
    v14 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v6 = 0;
      v16 = *v26;
      while (2)
      {
        v17 = 0;
        v18 = v6;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v25 + 1) + 8 * v17);
          v24 = v18;
          v20 = [v19 validateSinfWithError:&v24];
          v6 = v24;

          if (!v20)
          {

            if (a3)
            {
              v21 = v6;
              v22 = 0;
              *a3 = v6;
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_19;
          }

          v17 = v17 + 1;
          v18 = v6;
        }

        while (v15 != v17);
        v15 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v22 = 1;
LABEL_19:

  return v22;
}

+ (BOOL)_shouldSkipEligibilityChecksForAppWithSigningInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 codeSignerType];
  v15 = 0;
  v5 = +[MITestManager sharedInstance];
  v6 = v5;
  if (v4 == 3)
  {
    if ([v3 profileValidationType] == 4)
    {
      v7 = [v3 entitlements];
      v8 = sub_10004C498(v7);

      if ((v8 & 1) == 0)
      {
        v9 = +[MIDaemonConfiguration sharedInstance];
        v10 = [v9 requireEligibilityChecksForAppsInDevelopment];

        if (!v10)
        {
LABEL_17:
          v11 = 1;
          goto LABEL_16;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v14 = [v3 codeInfoIdentifier];
          MOLogWrite();
        }
      }
    }
  }

  else if (v4 == 1 && [v5 isRunningInTestMode:&v15 outError:0] && v15 == 1 && objc_msgSend(v6, "testFlagsAreSet:", 256))
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v13 = [v3 codeInfoIdentifier];
      MOLogWrite();
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (BOOL)_shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:(id)a3 persona:(id)a4
{
  v6 = a3;
  v19 = 0;
  v7 = [MIBundleContainer containerWithIdentifier:v6 forPersona:a4 ofContentClass:1 createIfNeeded:0 created:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    v15 = [v8 domain];
    if ([v15 isEqualToString:MIContainerManagerErrorDomain])
    {
      v16 = [v9 code];

      if (v16 == 21)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_17;
    }

LABEL_16:
    MOLogWrite();
LABEL_17:
    v14 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  v10 = [v7 bundle];
  if (!v10)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = v10;
  v18 = v9;
  v12 = [v10 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [a1 _shouldSkipEligibilityChecksForAppWithSigningInfo:v12];
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v14 = 0;
  }

  v9 = v13;
LABEL_23:

  return v14;
}

+ (BOOL)_shouldSkipEligibilityChecksForInstallRequestorWithAuditToken:(id *)a3 persona:(id)a4 authorizingBundleID:(id *)a5
{
  v8 = a4;
  v9 = *&a3->var0[4];
  *v19.val = *a3->var0;
  *&v19.val[4] = v9;
  v18 = 0;
  v10 = *&a3->var0[4];
  *atoken.val = *a3->var0;
  *&atoken.val[4] = v10;
  v11 = [MICodeSigningInfo signingIdentifierForAuditToken:&atoken error:&v18];
  v12 = v18;
  if (v11)
  {
    LOBYTE(atoken.val[0]) = 0;
    v13 = +[MITestManager sharedInstance];
    if ([v11 isEqualToString:@"com.apple.mi-test-runner"] && objc_msgSend(v13, "isRunningInTestMode:outError:", &atoken, 0) && LOBYTE(atoken.val[0]) == 1 && objc_msgSend(v13, "testFlagsAreSet:", 512))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      v14 = 1;
    }

    else
    {
      v14 = [a1 _shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:v11 persona:v8];
    }

    if (a5 && v14)
    {
      v15 = v11;
      *a5 = v11;
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      atoken = v19;
      audit_token_to_pid(&atoken);
      MOLogWrite();
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

+ (unint64_t)_domainForBrowserEligibilityForApp:(id)a3 withSigningInfo:(id)a4 distributorInfo:(id)a5 isWebDistribution:(BOOL)a6 operationType:(unint64_t)a7
{
  v9 = a4;
  v10 = [a3 identifier];
  v11 = [v9 entitlements];

  if (sub_10004CA78(v11))
  {
    switch(a7)
    {
      case 2uLL:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_24;
        }

        break;
      case 1uLL:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
LABEL_24:
          v12 = 4;
          goto LABEL_32;
        }

        break;
      case 0uLL:
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          MOLogWrite();
        }

        v12 = 7;
        goto LABEL_32;
      default:
LABEL_17:
        v12 = 0;
        goto LABEL_32;
    }

    MOLogWrite();
    goto LABEL_24;
  }

  if (!sub_10004CA88(v11))
  {
    goto LABEL_17;
  }

  if (a7 == 2)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

LABEL_30:
    MOLogWrite();
LABEL_31:
    v12 = 6;
    goto LABEL_32;
  }

  if (a7 == 1)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a7)
  {
    goto LABEL_17;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v12 = 23;
LABEL_32:

  return v12;
}

+ (unint64_t)_domainForMarketplaceEligibilityForApp:(id)a3 withSigningInfo:(id)a4 isWebDistribution:(BOOL)a5 distributorInfo:(id)a6 operationType:(unint64_t)a7
{
  v11 = a6;
  v12 = a4;
  v13 = [a3 identifier];
  v14 = [v12 entitlements];

  v15 = sub_10004BF34(v14);
  v16 = [v11 distributorIsThirdParty];
  if ((v15 & 1) == 0 && !v16)
  {
    goto LABEL_3;
  }

  if (v15 & 1 | !a5)
  {
    if (v15)
    {
      v18 = @"marketplace";
    }

    else
    {
      v19 = [v11 distributorID];
      v18 = [NSString stringWithFormat:@"app distributed by marketplace %@, ", v19];
    }

    if (a7 == 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (a7 != 1)
      {
        if (a7)
        {
          v17 = 0;
        }

        else
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            MOLogWrite();
          }

          v17 = 2;
        }

        goto LABEL_37;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
LABEL_35:
        v17 = 3;
LABEL_37:

        goto LABEL_38;
      }
    }

    MOLogWrite();
    goto LABEL_35;
  }

  if (a7 == 2)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

LABEL_30:
    MOLogWrite();
LABEL_31:
    v17 = 20;
    goto LABEL_38;
  }

  if (a7 == 1)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a7)
  {
LABEL_3:
    v17 = 0;
    goto LABEL_38;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v17 = 19;
LABEL_38:

  return v17;
}

+ (BOOL)_getEligibilityForDomain:(unint64_t)a3 forBundle:(id)a4 isEligible:(BOOL *)a5 ineligibilityReason:(id *)a6 error:(id *)a7
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v11 = [a4 identifier];
  v12 = +[MIEligibilityManager sharedInstance];
  v42 = 0;
  v13 = [v12 getEligibilityForDomain:a3 answer:&v46 source:&v45 status:&v44 context:&v43 error:&v42];
  v14 = v42;

  if (v13)
  {
    if (v46 == 4)
    {
      v16 = 0;
      if (!a5)
      {
LABEL_30:
        if (a6)
        {
          v26 = v16;
          *a6 = v16;
        }

        goto LABEL_32;
      }

LABEL_29:
      *a5 = v46 == 4;
      goto LABEL_30;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v19 = v45;
    v20 = v44;
    v21 = v20;
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_27;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_27;
      }

LABEL_26:
      MOLogWrite();
LABEL_27:
      v25 = 0;
      v22 = 0;
      goto LABEL_28;
    }

    if (!v20)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v22 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v22 || ((objc_opt_class(), v23 = v22, (objc_opt_isKindOfClass() & 1) == 0) ? (v24 = 0) : (v24 = v23), v23, v24, !v24))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      v25 = 0;
LABEL_28:

      v16 = v25;
      if (!a5)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v28 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_CLASS"];
    objc_opt_class();
    v29 = v28;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v41 = [v30 unsignedLongLongValue];
    v31 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION"];
    objc_opt_class();
    v32 = v31;
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v40 = [v33 unsignedLongLongValue];
    v34 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING"];
    objc_opt_class();
    v35 = v34;
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = [v36 unsignedLongLongValue];
    if (v41 == 3)
    {
      if (v40 != 3 && v37 != 3)
      {
        v38 = @"This device is not eligible based on the country or region it is located in and the country or region of the Apple ID signed in.";
        v39 = @"This device is not eligible based on the country or region it is located in and without an Apple ID signed in.";
LABEL_52:
        if (v37 == 7)
        {
          v25 = v39;
        }

        else
        {
          v25 = v38;
        }

        goto LABEL_56;
      }

      if (v40 == 3)
      {
        if (v37 == 3)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            MOLogWrite();
          }

          v25 = 0;
          goto LABEL_56;
        }

        v38 = @"This device is not eligible based on the country or region of the Apple ID signed in.";
        v39 = @"This device is not eligible without an Apple ID signed in.";
        goto LABEL_52;
      }

      v25 = @"This device is not eligible based on the country or region it is located in.";
    }

    else
    {
      v25 = @"This device type is not eligible.";
    }

LABEL_56:
    v22 = v23;
    goto LABEL_28;
  }

  v17 = sub_100010734("+[MIInstallableBundle _getEligibilityForDomain:forBundle:isEligible:ineligibilityReason:error:]", 2900, MIInstallerErrorDomain, 4, v14, 0, @"Failed to get eligibility for domain %llu for %@", v15, a3);

  if (a7)
  {
    v18 = v17;
    v16 = 0;
    *a7 = v17;
  }

  else
  {
    v16 = 0;
  }

  v14 = v17;
LABEL_32:

  return v13;
}

- (BOOL)_validateiTunesMetadataWithError:(id *)a3
{
  v4 = [(MIInstallableBundle *)self bundleContainer];
  v5 = [(MIInstallable *)self existingBundleContainer];
  v6 = [(MIInstallable *)self bundle];
  v7 = [v6 displayName];

  v63 = 0;
  v8 = [v4 iTunesMetadataWithError:&v63];
  v9 = v63;
  v10 = v9;
  if (v8)
  {
    v11 = v9;
    goto LABEL_3;
  }

  v24 = [v9 userInfo];
  v11 = [v24 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v25 = [v11 domain];
  if (![v25 isEqualToString:NSCocoaErrorDomain])
  {

LABEL_25:
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v57 = 0;
    v59 = 0;
    v8 = 0;
    v29 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_58;
  }

  v26 = [v11 code];

  if (v26 != 260)
  {
    goto LABEL_25;
  }

  v11 = 0;
LABEL_3:
  v12 = [v8 distributorInfo];
  v13 = [v12 distributorID];
  v14 = [v12 distributorType];
  if (v5)
  {
    v53 = v13;
    v15 = v4;
    v16 = v5;
    v17 = v7;
    v62 = v11;
    v18 = v16;
    v19 = [v16 iTunesMetadataWithError:&v62];
    v10 = v62;

    v56 = v19;
    if (v19)
    {
      v7 = v17;
LABEL_6:
      v20 = [v56 distributorInfo];
      v21 = [v20 distributorID];
      v59 = v20;
      v22 = [v20 distributorType];
      v11 = v10;
      v23 = v21;
      v5 = v18;
      v4 = v15;
      v13 = v53;
      goto LABEL_11;
    }

    v51 = v8;
    v34 = [v10 userInfo];
    v11 = [v34 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v35 = [v11 domain];
    if ([v35 isEqualToString:NSCocoaErrorDomain])
    {
      v36 = v18;
      v37 = [v11 code];

      v38 = v37 == 260;
      v18 = v36;
      v7 = v17;
      if (v38)
      {

        v10 = 0;
        v8 = v51;
        goto LABEL_6;
      }
    }

    else
    {

      v7 = v17;
    }

    v8 = v51;
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      v57 = 0;
      v59 = 0;
      v29 = 0;
      v5 = v18;
    }

    else
    {
      v5 = v18;
      MOLogWrite();
      v57 = 0;
      v59 = 0;
      v29 = 0;
    }

    v4 = v15;
    v13 = v53;
    goto LABEL_58;
  }

  v22 = 0;
  v23 = 0;
  v59 = 0;
  v56 = 0;
LABEL_11:
  v57 = v23;
  if (v13 && !v23)
  {
    goto LABEL_13;
  }

  if (!v13 && v23)
  {
    v54 = v22;
    v27 = [v59 copy];

    v13 = v23;
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    [v8 setDistributorInfo:v27];
    v61 = v11;
    v30 = [v4 writeiTunesMetadata:v8 error:&v61];
    v10 = v61;

    if ((v30 & 1) == 0)
    {
      v57 = v13;
      v29 = v56;
      goto LABEL_59;
    }

    goto LABEL_14;
  }

  if (!v13 || !v23 || (v55 = v22, ([v13 isEqualToString:v23] & 1) != 0) || v14 == 2 || v55 == 2)
  {
LABEL_13:
    v54 = v14;
    v27 = v12;
    v10 = v11;
LABEL_14:
    if ([(MIInstallableBundle *)self isPlaceholderInstall])
    {
LABEL_15:
      [(MIInstallable *)self setInstalledDistributorID:v13];
      v28 = 1;
      v29 = v56;
      goto LABEL_62;
    }

    v31 = [(MIInstallable *)self bundle];
    v11 = [v31 identifier];

    v32 = [(MIInstallableBundle *)self bundleSigningInfo];
    v49 = v4;
    v50 = v8;
    v48 = v7;
    if (v13)
    {
      v33 = [v11 isEqualToString:v13];
    }

    else
    {
      v33 = 0;
    }

    v41 = [v32 entitlements];
    v42 = sub_10004BF34(v41);

    if (!v13 || !v42 || (v33 & 1) != 0 || v54 == 2)
    {
      v60 = v10;
      v45 = [(MIInstallableBundle *)self _checkEligibilityForAppWithSigningInfo:v32 distributorInfo:v27 isWebDistribution:v33 withError:&v60];
      v44 = v60;

      if (v45)
      {

        v10 = v44;
        v4 = v49;
        v7 = v48;
        v8 = v50;
        goto LABEL_15;
      }

      v4 = v49;
      v7 = v48;
    }

    else
    {
      v7 = v48;
      v44 = sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3177, MIInstallerErrorDomain, 211, 0, 0, @"The marketplace %@ may not be installed by the distributor ID %@.", v43, v48);

      v4 = v49;
    }

    v12 = v27;
    v10 = v44;
    v8 = v50;
    goto LABEL_55;
  }

  IsThirdParty = MIDistributorTypeIsThirdParty();
  v39 = MIDistributorTypeIsThirdParty();
  if (IsThirdParty && v55 == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3145, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by a third party (distributor ID %@) but its existing installation is distributed by Apple (distributor ID %@). An app cannot change its distribution source from Apple to a third party once installed. Uninstall this app, then try installing it again.", v40, v7);
  }

  else if (((v14 == 1) & v39) == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3148, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by Apple (distributor ID %@) but its existing installation is distributed by a third party (distributor ID %@). An app cannot change its distribution source from a third party to Apple once installed. Uninstall this app, then try installing it again.", v40, v7);
  }

  else if ((IsThirdParty & v39) == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3151, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by %@ but its existing installation is distributed by %@. An app cannot change its third party distribution source once installed. Uninstall this app, then try installing it again.", v40, v7);
  }

  else
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3155, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by %@ but its existing installation is distributed by %@. An app cannot change its distribution source once installed, except to/from TestFlight. Uninstall this app, then try installing it again.", v40, v7);
  }
  v10 = ;
LABEL_55:
  v29 = v56;
LABEL_58:

  v27 = v12;
LABEL_59:
  if (a3)
  {
    v46 = v10;
    v28 = 0;
    *a3 = v10;
  }

  else
  {
    v28 = 0;
  }

LABEL_62:

  return v28;
}

- (BOOL)_setLinkageInBundleMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIInstallable *)self installOptions];
  v8 = [v7 linkedParentBundleID];

  v9 = [(MIInstallable *)self existingBundleContainer];
  v10 = v9;
  if (v9)
  {
    v38 = 0;
    v11 = [v9 bundleMetadataWithError:&v38];
    v12 = v38;
    if (!v11)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
        if (!a4)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v13 = [v11 linkedParentBundleID];
    v14 = v13;
    if (v8)
    {
      if (v13)
      {
        if (([v8 isEqualToString:v13] & 1) == 0)
        {
          v35 = MIInstallerErrorDomain;
          v15 = [(MIInstallable *)self bundle];
          v16 = [v15 identifier];
          v18 = sub_100010734("[MIInstallableBundle _setLinkageInBundleMetadata:error:]", 3230, v35, 4, 0, 0, @"Existing installation of %@ is linked to %@, but the client supplied a linked parent bundle ID of %@ for the update. Changing linkage of an already installed app is not supported", v17, v16);

          v12 = v15;
          goto LABEL_27;
        }
      }

      else
      {
        v28 = [v10 bundle];
        v29 = [v28 isPlaceholder];

        if ((v29 & 1) == 0)
        {
          v18 = sub_100010734("[MIInstallableBundle _setLinkageInBundleMetadata:error:]", 3225, MIInstallerErrorDomain, 4, 0, 0, @"Client specified a linked parent bundle ID for an upgrade to %@ when a parent linkage was not originally specified when the app was installed. Linkage cannot be established by updating an app", v30, v8);
LABEL_27:

          v12 = v18;
          if (!a4)
          {
            goto LABEL_28;
          }

          goto LABEL_19;
        }
      }
    }

    else if (v13)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v33 = @"LinkedParentBundleID";
        v34 = v13;
        MOLogWrite();
      }

      v8 = v14;
    }

    else
    {
      v8 = 0;
    }

    v31 = [v11 linkedChildBundleIDs];
    [v6 setLinkedChildBundleIDs:v31];

    if (!v8)
    {
LABEL_31:
      v26 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    v12 = 0;
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v36 = v6;
  v19 = a4;
  v20 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstallable *)self installationDomain]];
  v21 = [(MIInstallable *)self bundle];
  v22 = [v21 identifier];
  v37 = v12;
  v23 = [v20 preflightLinkingChild:v22 toParent:v8 error:&v37];
  v24 = v37;

  if (!v23)
  {

    v12 = v24;
    a4 = v19;
    v6 = v36;
LABEL_18:
    if (!a4)
    {
LABEL_28:
      v26 = 0;
      goto LABEL_32;
    }

LABEL_19:
    v27 = v12;
    v26 = 0;
    *a4 = v12;
LABEL_32:
    v24 = v12;
    goto LABEL_33;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v25 = [(MIInstallable *)self bundle];
    v33 = [v25 identifier];
    v34 = v8;
    MOLogWrite();
  }

  v6 = v36;
  [v36 setLinkedParentBundleID:{v8, v33, v34}];

  v26 = 1;
LABEL_33:

  return v26;
}

- (BOOL)_setBundleMetadataWithError:(id *)a3
{
  v5 = [(MIInstallable *)self installOptions];
  v6 = [(MIInstallableBundle *)self bundleContainer];
  v40 = 0;
  v7 = [v6 bundleMetadataWithError:&v40];
  v8 = v40;

  if (!v7)
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_39;
  }

  v9 = +[NSDate date];
  [v7 setInstallDate:v9];

  v10 = MGCopyAnswer();
  objc_opt_class();
  v11 = v10;
  v12 = 0;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  if (!v12)
  {
    v16 = sub_100010734("[MIInstallableBundle _setBundleMetadataWithError:]", 3278, MIInstallerErrorDomain, 4, 0, 0, @"Failed to copy build version for %@", v13, self);
    v15 = 0;
LABEL_38:

    v8 = v16;
    goto LABEL_39;
  }

  [v7 setInstallBuildVersion:v12];
  v14 = [v5 lsInstallType];
  if (!v14)
  {
    v17 = [(MIInstallable *)self existingBundleContainer];

    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = [(MIInstallable *)self existingBundleContainer];
    v19 = [v18 bundle];
    v39 = v8;
    v20 = [v19 lsInstallTypeWithError:&v39];
    v21 = v39;

    if (v20)
    {
      [v7 setInstallType:{objc_msgSend(v20, "unsignedIntegerValue")}];
LABEL_20:

      v8 = v21;
      goto LABEL_21;
    }

    v22 = [v21 domain];
    if ([v22 isEqualToString:MIInstallerErrorDomain])
    {
      v23 = [v21 code];

      if (v23 == 158)
      {
LABEL_19:

        v21 = 0;
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v24 = [(MIInstallable *)self existingBundleContainer];
      v33 = [v24 bundle];
      v35 = v21;
      MOLogWrite();
    }

    goto LABEL_19;
  }

  [v7 setInstallType:v14];
LABEL_21:
  v38 = v8;
  v25 = [(MIInstallableBundle *)self _setLinkageInBundleMetadata:v7 error:&v38, v33, v35];
  v26 = v38;

  if (v25)
  {
    v27 = [v5 autoInstallOverride];
    v28 = v27;
    if (v27 == 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v27 != 1)
      {
LABEL_32:
        v8 = [v5 alternateIconName];
        if (v8)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v29 = [(MIInstallable *)self bundle];
            v34 = [v29 identifier];
            v36 = v8;
            MOLogWrite();
          }

          [v7 setAlternateIconName:{v8, v34, v36}];
        }

        v30 = [(MIInstallableBundle *)self bundleContainer];
        v37 = v26;
        v15 = [v30 saveBundleMetadata:v7 withError:&v37];
        v16 = v37;

        goto LABEL_38;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
LABEL_31:
        [v7 setAutoInstallOverride:v28];
        goto LABEL_32;
      }
    }

    MOLogWrite();
    goto LABEL_31;
  }

  v15 = 0;
  v8 = v26;
LABEL_39:
  if (a3 && (v15 & 1) == 0)
  {
    v31 = v8;
    *a3 = v8;
  }

  return v15;
}

- (BOOL)_handleStashMode:(unint64_t)a3 withError:(id *)a4
{
  if (a3 == 2)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v14 = [(MIInstallable *)self bundle];
      v16 = [v14 identifier];
      MOLogWrite();
    }

    v11 = 0;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v7 = [(MIInstallableBundle *)self bundleContainer];
    v8 = [(MIInstallable *)self existingBundleContainer];
    v17 = 0;
    v9 = [v7 stashBundleContainerContents:v8 error:&v17];
    v10 = v17;
  }

  else
  {
    if (a3)
    {
      v11 = sub_100010734("[MIInstallableBundle _handleStashMode:withError:]", 3368, MIInstallerErrorDomain, 25, 0, 0, @"Unknown stash mode specified in options: %lu", v4, a3);
      if (a4)
      {
        goto LABEL_8;
      }

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    v7 = [(MIInstallableBundle *)self bundleContainer];
    v8 = [(MIInstallable *)self existingBundleContainer];
    v18 = 0;
    v9 = [v7 transferExistingStashesFromContainer:v8 error:&v18];
    v10 = v18;
  }

  v11 = v10;

  if (v9)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = v11;
  v13 = 0;
  *a4 = v11;
LABEL_16:

  return v13;
}

- (BOOL)_linkToParentApplication:(id *)a3
{
  v5 = [(MIInstallable *)self installOptions];
  v6 = [v5 linkedParentBundleID];

  if (v6)
  {
    v7 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstallable *)self installationDomain]];
    v8 = [(MIInstallableBundle *)self bundleContainer];
    v9 = [v8 identifier];
    v14 = 0;
    v10 = [v7 linkChild:v9 toParent:v6 error:&v14];
    v11 = v14;

    if (a3 && (v10 & 1) == 0)
    {
      v12 = v11;
      v10 = 0;
      *a3 = v11;
    }
  }

  else
  {
    v7 = 0;
    v11 = 0;
    v10 = 1;
  }

  return v10;
}

- (BOOL)_handleStashOptionWithError:(id *)a3
{
  v5 = [(MIInstallable *)self existingBundleContainer];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [(MIInstallable *)self existingBundleContainer];
  v8 = [v7 bundle];
  if ([v8 isPlaceholder])
  {

LABEL_11:
    v15 = 0;
LABEL_12:
    v17 = 1;
    goto LABEL_13;
  }

  v9 = +[MIDaemonConfiguration sharedInstance];
  v10 = [v9 allowsInternalSecurityPolicy];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [(MIInstallable *)self installOptions];
  v12 = [v11 stashMode];
  if ([v11 installTargetType] == 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19 = 0;
  v14 = [(MIInstallableBundle *)self _handleStashMode:v13 withError:&v19];
  v15 = v19;

  if (v14)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v16 = v15;
    v17 = 0;
    *a3 = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:

  return v17;
}

- (BOOL)_preserveExistingPlaceholderAsParallelPlaceholderWithError:(id *)a3
{
  v5 = [(MIInstallable *)self existingBundleContainer];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasParallelPlaceholder];
    v8 = [v6 bundle];
    v9 = [v8 isPlaceholder];

    if ((v9 & 1) == 0 && (v7 & 1) == 0)
    {
      v10 = MIInstallerErrorDomain;
      v11 = [(MIInstallable *)self bundle];
      v12 = [v11 identifier];
      [(MIInstallable *)self installationDomain];
      v13 = MIStringForInstallationDomain();
      sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", 3455, v10, 190, 0, 0, @"Existing installed bundle for %@ in %@ was not a placeholder or did not have a parallel placeholder.", v14, v12);
      goto LABEL_6;
    }

    v21 = [(MIInstallableBundle *)self bundleContainer];
    v18 = [v21 parallelPlaceholderURL];

    v22 = +[MIFileManager defaultManager];
    if (v7)
    {
      v23 = [v6 parallelPlaceholderURL];
      v36 = 0;
      v24 = [v22 copyItemAtURL:v23 toURL:v18 error:&v36];
      v17 = v36;

      if ((v24 & 1) == 0)
      {
        v26 = MIInstallerErrorDomain;
        v27 = @"Could not copy existing parallel placeholder to new bundle container.";
        v28 = 3465;
        goto LABEL_14;
      }
    }

    else
    {
      v29 = [v6 bundle];
      v30 = [v29 bundleURL];
      v35 = 0;
      v31 = [v22 copyItemAtURL:v30 toURL:v18 error:&v35];
      v17 = v35;

      if ((v31 & 1) == 0)
      {
        v26 = MIInstallerErrorDomain;
        v27 = @"Could not copy existing placeholder to parallel placeholder.";
        v28 = 3470;
LABEL_14:
        v32 = sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", v28, v26, 4, v17, 0, v27, v25, v34);

        v17 = v32;
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_15:
        v20 = 0;
        goto LABEL_16;
      }
    }

    v20 = 1;
    goto LABEL_16;
  }

  v15 = MIInstallerErrorDomain;
  v11 = [(MIInstallable *)self bundle];
  v12 = [v11 identifier];
  [(MIInstallable *)self installationDomain];
  v13 = MIStringForInstallationDomain();
  sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", 3448, v15, 190, 0, 0, @"Did not find existing bundle container for %@ in %@ from which to preserve placeholder.", v16, v12);
  v17 = LABEL_6:;

  v18 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_7:
  v19 = v17;
  v20 = 0;
  *a3 = v17;
LABEL_16:

  return v20;
}

- (BOOL)performInstallationWithError:(id *)a3
{
  v54.receiver = self;
  v54.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v54 performInstallationWithError:?])
  {
    v17 = 0;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v5 = [(MIInstallable *)self progressBlock];
  (v5)[2](v5, @"CreatingContainer", 50);

  v6 = [(MIInstallable *)self bundle];
  v7 = [v6 bundleType];

  if (v7 <= 5 && ((1 << v7) & 0x36) != 0)
  {
    v8 = [(MIInstallable *)self bundle];
    v9 = [v8 identifier];
    v53 = 0;
    v10 = [MIBundleContainer tempAppBundleContainerWithIdentifier:v9 inDomain:[(MIInstallable *)self installationDomain] withError:&v53];
    v11 = v53;
    [(MIInstallableBundle *)self setBundleContainer:v10];
  }

  else
  {
    v42 = MIInstallerErrorDomain;
    v8 = [(MIInstallable *)self bundle];
    v43 = [v8 bundleType];
    v11 = sub_100010734("[MIInstallableBundle performInstallationWithError:]", 3536, v42, 4, 0, 0, @"Don't know how to create bundle container for installable type %d", v44, v43);
  }

  v12 = [(MIInstallableBundle *)self bundleContainer];

  if (!v12)
  {
    v36 = MIInstallerErrorDomain;
    v37 = [(MIInstallable *)self bundle];
    v38 = [v37 identifier];
    v17 = sub_100010734("[MIInstallableBundle performInstallationWithError:]", 3541, v36, 21, v11, &off_10009CB00, @"Failed to create container for %@", v39, v38);

    goto LABEL_19;
  }

  v13 = [(MIInstallable *)self progressBlock];
  (v13)[2](v13, @"InstallingApplication", 60);

  v14 = [(MIInstallableBundle *)self bundleContainer];
  v15 = [(MIInstallable *)self bundle];
  v52 = v11;
  v16 = [v14 captureBundleByMoving:v15 withError:&v52];
  v17 = v52;

  if (!v16)
  {
    goto LABEL_19;
  }

  v18 = [(MIInstallableBundle *)self bundleContainer];
  v19 = [v18 bundle];
  v20 = [v19 bundleURL];
  v21 = [(MIInstallableBundle *)self bundleContainer];
  v51 = v17;
  v22 = [(MIInstallableBundle *)self _captureDataFromStagingRootOrBundle:v20 toContainer:v21 withError:&v51];
  v23 = v51;

  if (!v22)
  {
    goto LABEL_21;
  }

  v24 = [(MIInstallableBundle *)self bundleContainer];
  v25 = [v24 bundle];
  v26 = [(MIInstallableBundle *)self bundleContainer];
  v50 = v23;
  v27 = [(MIInstallableBundle *)self _writeOptionsDataToBundle:v25 orContainer:v26 error:&v50];
  v17 = v50;

  if (!v27)
  {
    goto LABEL_19;
  }

  v49 = v17;
  v28 = [(MIInstallableBundle *)self _validateiTunesMetadataWithError:&v49];
  v23 = v49;

  if (!v28)
  {
    goto LABEL_21;
  }

  v48 = v23;
  v29 = [(MIInstallableBundle *)self _setBundleMetadataWithError:&v48];
  v17 = v48;

  if (!v29)
  {
    goto LABEL_19;
  }

  v47 = v17;
  v30 = [(MIInstallableBundle *)self _validateSinfsWithError:&v47];
  v23 = v47;

  if (!v30)
  {
    goto LABEL_21;
  }

  v46 = v23;
  v31 = [(MIInstallableBundle *)self _handleStashOptionWithError:&v46];
  v17 = v46;

  if (!v31)
  {
LABEL_19:
    if (!a3)
    {
LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

LABEL_20:
    v40 = v17;
    v35 = 0;
    *a3 = v17;
    goto LABEL_23;
  }

  v32 = [(MIInstallable *)self installOptions];
  v33 = [v32 preservePlaceholderAsParallel];

  if (!v33)
  {
    v35 = 1;
    goto LABEL_23;
  }

  v45 = v17;
  v34 = [(MIInstallableBundle *)self _preserveExistingPlaceholderAsParallelPlaceholderWithError:&v45];
  v23 = v45;

  if ((v34 & 1) == 0)
  {
LABEL_21:
    v17 = v23;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v35 = 1;
  v17 = v23;
LABEL_23:

  return v35;
}

- (BOOL)_postFlightAppExtensionsWithError:(id *)a3
{
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v32)
  {
    v30 = a3;
    v6 = 0;
    v33 = *v38;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v38 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v37 + 1) + 8 * v7);
      v9 = [(MIInstallable *)self bundle];
      v10 = [v9 isPlaceholder];

      if (v10)
      {
        v11 = v6;
      }

      else
      {
        v36 = v6;
        v12 = [v8 makeExecutableWithError:&v36];
        v11 = v36;

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v35 = 0;
      v13 = [v8 updateMCMWithCodeSigningInfoAsAdvanceCopy:1 withError:&v35];
      v14 = v35;
      if ((v13 & 1) == 0)
      {
        break;
      }

      v15 = v5;
      v16 = [(MIInstallable *)self identity];
      v17 = [v16 personaUniqueString];
      v34 = v11;
      v18 = [v8 dataContainerCreatingIfNeeded:1 forPersona:v17 makeLive:0 created:0 error:&v34];
      v6 = v34;

      if (!v18)
      {
        v24 = MIInstallerErrorDomain;
        v21 = [v8 identifier];
        v23 = sub_100010734("[MIInstallableBundle _postFlightAppExtensionsWithError:]", 3636, v24, 21, v6, &off_10009CB28, @"Failed to create plugin data container for plugin %@", v25, v21);
        v11 = v6;
        v5 = v15;
LABEL_21:

        v11 = v23;
LABEL_22:

        if (v30)
        {
          v26 = v11;
          v19 = 0;
          *v30 = v11;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_25;
      }

      v5 = v15;
      [v15 addObject:v18];

      if (v32 == ++v7)
      {
        v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v32)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v28 = [v8 identifier];
      v29 = v14;
      MOLogWrite();
    }

    v20 = MIInstallerErrorDomain;
    v21 = [v8 identifier];
    [v8 isPlaceholder];
    v23 = sub_100010734("[MIInstallableBundle _postFlightAppExtensionsWithError:]", 3629, v20, 110, v14, 0, @"Failed to set app extension code signing info with container manager for %@, isPlaceholder: %c", v22, v21);
    goto LABEL_21;
  }

  v6 = 0;
LABEL_15:

  [(MIInstallableBundle *)self setAppExtensionDataContainers:v5];
  v19 = 1;
  v11 = v6;
LABEL_25:

  return v19;
}

- (BOOL)_setLaunchWarningDataWithError:(id *)a3
{
  v6 = [(MIInstallableBundle *)self bundleSigningInfo];
  if (v6)
  {
    v7 = [(MIInstallable *)self bundle];
    v8 = [v6 launchWarningData];
    v14 = 0;
    v9 = [v7 setLaunchWarningData:v8 withError:&v14];
    v10 = v14;

    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = sub_100010734("[MIInstallableBundle _setLaunchWarningDataWithError:]", 3663, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly missing bundle signing information", v5, v13);
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & 1) == 0)
  {
    v11 = v10;
    *a3 = v10;
  }

LABEL_7:

  return v9;
}

- (BOOL)postFlightInstallationWithError:(id *)a3
{
  v5 = [(MIInstallable *)self progressBlock];
  (v5)[2](v5, @"PostflightingApplication", 70);

  v59.receiver = self;
  v59.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v59 postFlightInstallationWithError:a3])
  {
    v12 = 0;
    goto LABEL_35;
  }

  v6 = [(MIInstallable *)self bundle];
  v7 = [v6 needsDataContainer];

  if (v7)
  {
    v8 = [(MIInstallable *)self bundle];
    v9 = [(MIInstallable *)self identity];
    v10 = [v9 personaUniqueString];
    v58 = 0;
    v11 = [v8 dataContainerCreatingIfNeeded:1 forPersona:v10 makeLive:0 created:0 error:&v58];
    v12 = v58;

    if (!v11)
    {
      goto LABEL_35;
    }

    [(MIInstallableBundle *)self setDataContainer:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v57 = v12;
  v14 = [(MIInstallableBundle *)self _postFlightAppExtensionsWithError:&v57];
  v12 = v57;

  if (v14)
  {
    v15 = [(MIInstallable *)self bundle];
    v16 = [v15 isPlaceholder];

    if (v16)
    {
LABEL_9:
      v17 = 1;
      goto LABEL_38;
    }

    v18 = [(MIInstallable *)self bundle];
    v56 = v12;
    v19 = [v18 makeExecutableWithError:&v56];
    v20 = v56;

    if (!v19)
    {
      goto LABEL_34;
    }

    if ([(MIInstallableBundle *)self xpcServiceBundlesEnabled])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v21 = [(MIInstallableBundle *)self xpcServiceBundles];
      v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v53;
LABEL_14:
        v25 = 0;
        v26 = v20;
        while (1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v52 + 1) + 8 * v25);
          v51 = v26;
          v28 = [v27 makeExecutableWithError:&v51];
          v20 = v51;

          if (!v28)
          {
            goto LABEL_33;
          }

          v25 = v25 + 1;
          v26 = v20;
          if (v23 == v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v23)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v29 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
LABEL_23:
      v32 = 0;
      v33 = v20;
      while (1)
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(v21);
        }

        v34 = *(*(&v47 + 1) + 8 * v32);
        v46 = v33;
        v35 = [v34 makeExecutableWithError:&v46];
        v20 = v46;

        if (!v35)
        {
          break;
        }

        v32 = v32 + 1;
        v33 = v20;
        if (v30 == v32)
        {
          v30 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v30)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

LABEL_33:

LABEL_34:
      v12 = v20;
      goto LABEL_35;
    }

LABEL_29:

    v45 = v20;
    v36 = [(MIInstallableBundle *)self _setLaunchWarningDataWithError:&v45];
    v12 = v45;

    if (v36)
    {
      if (_os_feature_enabled_impl())
      {
        v37 = [(MIInstallableBundle *)self bundleContainer];
        v44 = v12;
        v38 = [MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:v37 withError:&v44];
        v39 = v44;

        if (v38)
        {
          v17 = 1;
          v12 = v39;
          goto LABEL_38;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v42 = [(MIInstallable *)self bundle];
          v43 = [v42 identifier];
          MOLogWrite();
        }

        v12 = 0;
      }

      goto LABEL_9;
    }
  }

LABEL_35:
  if (a3)
  {
    v40 = v12;
    v17 = 0;
    *a3 = v12;
  }

  else
  {
    v17 = 0;
  }

LABEL_38:

  return v17;
}

- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (!-[MIInstallable shouldModifyExistingContainers](self, "shouldModifyExistingContainers") || [v6 status] != 1)
  {
    v9 = 0;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v16 = 0;
  v7 = [v6 regenerateDirectoryUUIDWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v10 = [v6 identifier];
      v11 = [v6 containerURL];
      v15 = [v11 path];
      MOLogWrite();
    }

    goto LABEL_8;
  }

  if (a4)
  {
    v14 = v8;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (unint64_t)_installationJournalOperationType
{
  if ([(MIInstallable *)self installOperationType]== 1)
  {
    return 5;
  }

  if (![(MIInstallableBundle *)self isPlaceholderInstall])
  {
    return 1;
  }

  v4 = [(MIInstallable *)self existingBundleContainer];
  v5 = v4;
  if (v4 && ([v4 bundle], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isPlaceholder"), v6, (v7 & 1) == 0))
  {
    v8 = [(MIInstallable *)self installOptions];
    v9 = [v8 installTargetType];

    if (v9 == 3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)_noLongerPresentAppExtensionDataContainers
{
  v37 = [NSMutableArray arrayWithCapacity:0];
  v3 = [(MIInstallable *)self existingBundleContainer];
  v4 = [v3 bundle];

  v49 = 0;
  v5 = [v4 appExtensionBundlesWithError:&v49];
  v6 = v49;
  v7 = v6;
  if (v5)
  {
    v8 = v6;
    v9 = [NSMutableArray arrayWithCapacity:0];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = [(MIInstallableBundle *)self appExtensionBundles];
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v45 + 1) + 8 * i) identifier];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = v5;
    obj = v5;
    v16 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v35 = v4;
      v18 = *v42;
      v7 = v8;
      v38 = v9;
      do
      {
        v19 = 0;
        v20 = v7;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v41 + 1) + 8 * v19);
          v22 = [v21 identifier];
          v23 = [v9 containsObject:v22];

          if (v23)
          {
            v7 = v20;
          }

          else
          {
            v24 = v17;
            v25 = v18;
            v26 = self;
            v27 = [(MIInstallable *)self identity];
            v28 = [v27 personaUniqueString];
            v40 = v20;
            v29 = [v21 dataContainerCreatingIfNeeded:0 forPersona:v28 makeLive:0 created:0 error:&v40];
            v30 = v40;

            if (v29)
            {
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                v33 = [v21 identifier];
                MOLogWrite();
              }

              [v37 addObject:{v29, v33}];
            }

            else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v33 = [v21 identifier];
              v34 = v30;
              MOLogWrite();
            }

            v7 = v30;
            v20 = v30;
            self = v26;
            v18 = v25;
            v17 = v24;
            v9 = v38;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v17);
      v4 = v35;
      v5 = v36;
    }

    else
    {
      v7 = v8;
    }

    goto LABEL_32;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v9 = [v4 bundleURL];
    v33 = [v9 path];
    v34 = v7;
    obj = v33;
    MOLogWrite();
LABEL_32:
  }

  v31 = [v37 copy];

  return v31;
}

- (id)_createJournalEntry
{
  v3 = [(MIInstallable *)self installOptions];
  v4 = [(MIInstallable *)self existingBundleContainer];
  if (v4 && ![(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v5 = [(MIInstallableBundle *)self _noLongerPresentAppExtensionDataContainers];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MIInstallableBundle *)self _installationJournalOperationType];
  v7 = [MIInstallationJournalEntry alloc];
  v8 = [(MIInstallable *)self identity];
  v9 = [(MIInstallableBundle *)self bundleContainer];
  v10 = [(MIInstallable *)self installationDomain];
  v11 = [(MIInstallableBundle *)self bundleSigningInfo];
  v12 = [(MIInstallationJournalEntry *)v7 initWithIdentity:v8 bundleContainer:v9 existingBundleContainer:v4 installationDomain:v10 operationType:v6 installOptions:v3 bundleSigningInfo:v11];

  v13 = [(MIInstallable *)self progressBlock];
  [(MIInstallationJournalEntry *)v12 setProgressBlock:v13];

  v14 = [v3 linkedParentBundleID];
  [(MIInstallationJournalEntry *)v12 setLinkToParentBundleID:v14];

  [(MIInstallationJournalEntry *)v12 setNoLongerPresentAppExtensionDataContainers:v5];
  v15 = [(MIInstallableBundle *)self dataContainer];
  if (v15)
  {
    [(MIInstallationJournalEntry *)v12 setDataContainer:v15];
  }

  v16 = [(MIInstallableBundle *)self appExtensionBundles];
  v17 = [v16 copy];
  [(MIInstallationJournalEntry *)v12 setAppExtensionBundles:v17];

  v18 = [(MIInstallableBundle *)self appExtensionDataContainers];
  v19 = [v18 copy];
  [(MIInstallationJournalEntry *)v12 setAppExtensionDataContainers:v19];

  return v12;
}

- (BOOL)finalizeInstallationWithError:(id *)a3
{
  v5 = [(MIInstallable *)self progressBlock];
  (v5)[2](v5, @"SandboxingApplication", 80);

  v16.receiver = self;
  v16.super_class = MIInstallableBundle;
  v17 = 0;
  v6 = [(MIInstallable *)&v16 finalizeInstallationWithError:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = [(MIInstallableBundle *)self _createJournalEntry];
    v15 = v8;
    v10 = [v9 finalizeContainersWithError:&v15];
    v11 = v15;

    if (v10)
    {
      [(MIInstallableBundle *)self setJournalEntry:v9];
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    v11 = v7;
  }

  if (a3)
  {
    v13 = v11;
    v12 = 0;
    *a3 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (id)stageBackgroundUpdateWithError:(id *)a3
{
  v5 = [(MIInstallableBundle *)self _createJournalEntry];
  v18 = 0;
  v6 = [v5 stageUpdateForLaterWithError:&v18];
  v7 = v18;
  if (v6)
  {
    [(MIInstallableBundle *)self setJournalEntry:v5];
    v8 = [MIStagedUpdateMetadata alloc];
    v9 = [v5 uniqueIdentifier];
    v10 = [v5 bundleContainer];
    v11 = -[MIStagedUpdateMetadata initForStagedIdentifier:diskUsage:](v8, "initForStagedIdentifier:diskUsage:", v9, [v10 diskUsage]);
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v16 = v5;
      MOLogWrite();
    }

    v12 = +[MIJournal sharedInstance];
    v17 = 0;
    v13 = [v12 purgeJournalEntry:v5 withError:&v17];
    v9 = v17;

    if ((v13 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }

    v11 = 0;
  }

  if (a3 && !v11)
  {
    v14 = v7;
    *a3 = v7;
  }

  return v11;
}

- (id)launchServicesBundleRecordsWithError:(id *)a3
{
  v5 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = MIInstallableBundle;
  v6 = [(MIInstallable *)&v11 launchServicesBundleRecordsWithError:a3];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
    v7 = [(MIInstallableBundle *)self journalEntry];
    v8 = [v7 bundleRecordsToRegister];
    [v5 addObjectsFromArray:v8];

    v9 = [v5 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)performLaunchServicesRegistrationWithError:(id *)a3
{
  v4 = [(MIInstallableBundle *)self journalEntry];
  LOBYTE(a3) = [v4 performLaunchServicesRegistrationWithError:a3];

  return a3;
}

@end