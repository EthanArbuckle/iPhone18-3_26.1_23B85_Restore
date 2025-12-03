@interface DMFApp
- (BOOL)_proxyIsValidated:(id)validated;
- (DMFApp)initWithBundleIdentifier:(id)identifier propertyKeys:(id)keys;
- (id)initWithApplicationRecord:(id)record hasUpdateAvailable:(BOOL)available propertyKeys:(id)keys;
@end

@implementation DMFApp

- (DMFApp)initWithBundleIdentifier:(id)identifier propertyKeys:(id)keys
{
  identifierCopy = identifier;
  keysCopy = keys;
  v27.receiver = self;
  v27.super_class = DMFApp;
  v8 = [(DMFApp *)&v27 init];
  if (v8)
  {
    v9 = +[DMDAppController sharedController];
    if ([keysCopy containsObject:@"bundleIdentifier"])
    {
      [(DMFApp *)v8 setBundleIdentifier:identifierCopy];
    }

    if ([keysCopy containsObject:@"installationState"])
    {
      v10 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:identifierCopy];
      -[DMFApp setInstallationState:](v8, "setInstallationState:", [v10 currentState]);
    }

    if ([keysCopy containsObject:@"VPNUUIDString"])
    {
      v11 = [v9 VPNUUIDStringForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setVPNUUIDString:v11];
    }

    if ([keysCopy containsObject:@"cellularSliceUUIDString"])
    {
      v12 = [v9 cellularSliceUUIDStringForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setCellularSliceUUIDString:v12];
    }

    if ([keysCopy containsObject:@"contentFilterUUIDString"])
    {
      v13 = [v9 contentFilterUUIDStringForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setContentFilterUUIDString:v13];
    }

    if ([keysCopy containsObject:@"DNSProxyUUIDString"])
    {
      v14 = [v9 DNSProxyUUIDStringForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setDNSProxyUUIDString:v14];
    }

    if ([keysCopy containsObject:@"relayUUIDString"])
    {
      v15 = [v9 relayUUIDStringForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setRelayUUIDString:v15];
    }

    if ([keysCopy containsObject:@"associatedDomains"])
    {
      v16 = [v9 associatedDomainsForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setAssociatedDomains:v16];
    }

    if ([keysCopy containsObject:@"associatedDomainsEnableDirectDownloads"])
    {
      v17 = [v9 associatedDomainsEnableDirectDownloadsForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setAssociatedDomainsEnableDirectDownloads:v17];
    }

    if ([keysCopy containsObject:@"removable"])
    {
      v18 = [v9 removabilityForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setRemovable:v18];
    }

    if ([keysCopy containsObject:@"tapToPayScreenLock"])
    {
      v19 = [v9 tapToPayScreenLockForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setTapToPayScreenLock:v19];
    }

    if ([keysCopy containsObject:@"allowUserToHide"])
    {
      v20 = [v9 allowUserToHideForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setAllowUserToHide:v20];
    }

    if ([keysCopy containsObject:@"allowUserToLock"])
    {
      v21 = [v9 allowUserToLockForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setAllowUserToLock:v21];
    }

    if ([keysCopy containsObject:@"configuration"])
    {
      v22 = [v9 configurationForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setConfiguration:v22];
    }

    if ([keysCopy containsObject:@"feedback"])
    {
      v23 = [v9 feedbackForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setFeedback:v23];
    }

    if ([keysCopy containsObject:@"sourceIdentifier"])
    {
      v24 = [v9 sourceIdentifierForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setSourceIdentifier:v24];
    }

    if ([keysCopy containsObject:@"managementInformation"])
    {
      v25 = [v9 managementInformationForBundleIdentifier:identifierCopy];
      [(DMFApp *)v8 setManagementInformation:v25];
    }
  }

  return v8;
}

- (id)initWithApplicationRecord:(id)record hasUpdateAvailable:(BOOL)available propertyKeys:(id)keys
{
  availableCopy = available;
  recordCopy = record;
  keysCopy = keys;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v11 = [(DMFApp *)self initWithBundleIdentifier:bundleIdentifier propertyKeys:keysCopy];
  if (!v11)
  {
    goto LABEL_65;
  }

  v48 = availableCopy;
  compatibilityObject = [recordCopy compatibilityObject];
  if ([keysCopy containsObject:@"type"])
  {
    applicationType = [compatibilityObject applicationType];
    if ([applicationType isEqualToString:LSSystemApplicationType])
    {
      v14 = 1;
    }

    else if ([applicationType isEqualToString:LSUserApplicationType])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [(DMFApp *)v11 setType:v14];
  }

  if ([keysCopy containsObject:@"displayName"])
  {
    localizedName = [compatibilityObject localizedName];
    if (localizedName)
    {
      [(DMFApp *)v11 setDisplayName:localizedName];
    }

    else
    {
      itemName = [compatibilityObject itemName];
      [(DMFApp *)v11 setDisplayName:itemName];
    }
  }

  if ([keysCopy containsObject:@"storeItemIdentifier"])
  {
    itemID = [compatibilityObject itemID];
    [(DMFApp *)v11 setStoreItemIdentifier:itemID];
  }

  if ([keysCopy containsObject:@"externalVersionIdentifier"])
  {
    externalVersionIdentifier = [compatibilityObject externalVersionIdentifier];
    [(DMFApp *)v11 setExternalVersionIdentifier:externalVersionIdentifier];
  }

  if ([keysCopy containsObject:@"distributorIdentifier"])
  {
    iTunesMetadata = [recordCopy iTunesMetadata];
    distributorInfo = [iTunesMetadata distributorInfo];
    distributorID = [distributorInfo distributorID];
    [(DMFApp *)v11 setDistributorIdentifier:distributorID];
  }

  if ([keysCopy containsObject:@"version"])
  {
    bundleVersion = [compatibilityObject bundleVersion];
    [(DMFApp *)v11 setVersion:bundleVersion];
  }

  if ([keysCopy containsObject:@"shortVersion"])
  {
    shortVersionString = [compatibilityObject shortVersionString];
    [(DMFApp *)v11 setShortVersion:shortVersionString];
  }

  v24 = [keysCopy containsObject:@"staticUsage"];
  v25 = [keysCopy containsObject:@"dynamicUsage"];
  v26 = [keysCopy containsObject:@"onDemandResourcesUsage"];
  v27 = [keysCopy containsObject:@"sharedUsage"];
  v28 = v27;
  if ((v24 & 1) != 0 || (v25 & 1) != 0 || (v26 & 1) != 0 || v27)
  {
    diskUsage = [compatibilityObject diskUsage];
    v30 = diskUsage;
    if (v24)
    {
      staticUsage = [diskUsage staticUsage];
      [(DMFApp *)v11 setStaticUsage:staticUsage];

      if (!v25)
      {
LABEL_30:
        if (!v26)
        {
          goto LABEL_31;
        }

        goto LABEL_68;
      }
    }

    else if (!v25)
    {
      goto LABEL_30;
    }

    dynamicUsage = [v30 dynamicUsage];
    [(DMFApp *)v11 setDynamicUsage:dynamicUsage];

    if (!v26)
    {
LABEL_31:
      if (!v28)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      sharedUsage = [v30 sharedUsage];
      [(DMFApp *)v11 setSharedUsage:sharedUsage];

      goto LABEL_33;
    }

LABEL_68:
    onDemandResourcesUsage = [v30 onDemandResourcesUsage];
    [(DMFApp *)v11 setOnDemandResourcesUsage:onDemandResourcesUsage];

    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_34:
  v32 = [keysCopy containsObject:@"isPlaceholder"];
  v33 = [keysCopy containsObject:@"isRestricted"];
  v34 = v33;
  if ((v32 & 1) != 0 || v33)
  {
    appState = [compatibilityObject appState];
    v36 = appState;
    if (v32)
    {
      -[DMFApp setIsPlaceholder:](v11, "setIsPlaceholder:", [appState isPlaceholder]);
    }

    if (v34)
    {
      -[DMFApp setIsRestricted:](v11, "setIsRestricted:", [v36 isRestricted]);
    }
  }

  v37 = [keysCopy containsObject:@"isUserBasedVPP"];
  v38 = [keysCopy containsObject:@"isLicenseExpired"];
  v39 = [keysCopy containsObject:@"isLicenseRevoked"];
  v40 = v39;
  if ((v37 & 1) == 0 && (v38 & 1) == 0 && !v39)
  {
    goto LABEL_48;
  }

  v41 = [SSPurchaseReceipt vppStateFlagsWithProxy:compatibilityObject];
  v42 = v41;
  if (!v37)
  {
    if (!v38)
    {
      goto LABEL_46;
    }

LABEL_71:
    [(DMFApp *)v11 setIsLicenseExpired:(v42 >> 2) & 1];
    if (!v40)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  [(DMFApp *)v11 setIsUserBasedVPP:(v41 >> 1) & 1];
  if (v38)
  {
    goto LABEL_71;
  }

LABEL_46:
  if (v40)
  {
LABEL_47:
    [(DMFApp *)v11 setIsLicenseRevoked:(v42 >> 3) & 1];
  }

LABEL_48:
  if ([keysCopy containsObject:@"isDeviceBasedVPP"])
  {
    -[DMFApp setIsDeviceBasedVPP:](v11, "setIsDeviceBasedVPP:", [compatibilityObject isDeviceBasedVPP]);
  }

  if ([keysCopy containsObject:@"isUPP"])
  {
    -[DMFApp setIsUPP:](v11, "setIsUPP:", [compatibilityObject profileValidated]);
  }

  if ([keysCopy containsObject:@"isValidated"])
  {
    [(DMFApp *)v11 setIsValidated:[(DMFApp *)v11 _proxyIsValidated:compatibilityObject]];
  }

  if ([keysCopy containsObject:@"isAppClip"])
  {
    appClipMetadata = [recordCopy appClipMetadata];
    [(DMFApp *)v11 setIsAppClip:appClipMetadata != 0];
  }

  if ([keysCopy containsObject:@"isAppStoreVendable"])
  {
    -[DMFApp setIsAppStoreVendable:](v11, "setIsAppStoreVendable:", [compatibilityObject isAppStoreVendable]);
  }

  if ([keysCopy containsObject:@"isBetaApp"])
  {
    -[DMFApp setIsBetaApp:](v11, "setIsBetaApp:", [compatibilityObject isBetaApp]);
  }

  if ([keysCopy containsObject:@"isAdHocCodeSigned"])
  {
    -[DMFApp setIsAdHocCodeSigned:](v11, "setIsAdHocCodeSigned:", [compatibilityObject isAdHocCodeSigned]);
  }

  if ([keysCopy containsObject:@"hasUpdateAvailable"])
  {
    [(DMFApp *)v11 setHasUpdateAvailable:v48];
  }

LABEL_65:
  return v11;
}

- (BOOL)_proxyIsValidated:(id)validated
{
  bundleURL = [validated bundleURL];
  path = [bundleURL path];

  if (path)
  {
    v5 = MISAppApprovalState();
    if (v5)
    {
      v6 = v5 == 3;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end