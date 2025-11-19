@interface DMFApp
- (BOOL)_proxyIsValidated:(id)a3;
- (DMFApp)initWithBundleIdentifier:(id)a3 propertyKeys:(id)a4;
- (id)initWithApplicationRecord:(id)a3 hasUpdateAvailable:(BOOL)a4 propertyKeys:(id)a5;
@end

@implementation DMFApp

- (DMFApp)initWithBundleIdentifier:(id)a3 propertyKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = DMFApp;
  v8 = [(DMFApp *)&v27 init];
  if (v8)
  {
    v9 = +[DMDAppController sharedController];
    if ([v7 containsObject:@"bundleIdentifier"])
    {
      [(DMFApp *)v8 setBundleIdentifier:v6];
    }

    if ([v7 containsObject:@"installationState"])
    {
      v10 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v6];
      -[DMFApp setInstallationState:](v8, "setInstallationState:", [v10 currentState]);
    }

    if ([v7 containsObject:@"VPNUUIDString"])
    {
      v11 = [v9 VPNUUIDStringForBundleIdentifier:v6];
      [(DMFApp *)v8 setVPNUUIDString:v11];
    }

    if ([v7 containsObject:@"cellularSliceUUIDString"])
    {
      v12 = [v9 cellularSliceUUIDStringForBundleIdentifier:v6];
      [(DMFApp *)v8 setCellularSliceUUIDString:v12];
    }

    if ([v7 containsObject:@"contentFilterUUIDString"])
    {
      v13 = [v9 contentFilterUUIDStringForBundleIdentifier:v6];
      [(DMFApp *)v8 setContentFilterUUIDString:v13];
    }

    if ([v7 containsObject:@"DNSProxyUUIDString"])
    {
      v14 = [v9 DNSProxyUUIDStringForBundleIdentifier:v6];
      [(DMFApp *)v8 setDNSProxyUUIDString:v14];
    }

    if ([v7 containsObject:@"relayUUIDString"])
    {
      v15 = [v9 relayUUIDStringForBundleIdentifier:v6];
      [(DMFApp *)v8 setRelayUUIDString:v15];
    }

    if ([v7 containsObject:@"associatedDomains"])
    {
      v16 = [v9 associatedDomainsForBundleIdentifier:v6];
      [(DMFApp *)v8 setAssociatedDomains:v16];
    }

    if ([v7 containsObject:@"associatedDomainsEnableDirectDownloads"])
    {
      v17 = [v9 associatedDomainsEnableDirectDownloadsForBundleIdentifier:v6];
      [(DMFApp *)v8 setAssociatedDomainsEnableDirectDownloads:v17];
    }

    if ([v7 containsObject:@"removable"])
    {
      v18 = [v9 removabilityForBundleIdentifier:v6];
      [(DMFApp *)v8 setRemovable:v18];
    }

    if ([v7 containsObject:@"tapToPayScreenLock"])
    {
      v19 = [v9 tapToPayScreenLockForBundleIdentifier:v6];
      [(DMFApp *)v8 setTapToPayScreenLock:v19];
    }

    if ([v7 containsObject:@"allowUserToHide"])
    {
      v20 = [v9 allowUserToHideForBundleIdentifier:v6];
      [(DMFApp *)v8 setAllowUserToHide:v20];
    }

    if ([v7 containsObject:@"allowUserToLock"])
    {
      v21 = [v9 allowUserToLockForBundleIdentifier:v6];
      [(DMFApp *)v8 setAllowUserToLock:v21];
    }

    if ([v7 containsObject:@"configuration"])
    {
      v22 = [v9 configurationForBundleIdentifier:v6];
      [(DMFApp *)v8 setConfiguration:v22];
    }

    if ([v7 containsObject:@"feedback"])
    {
      v23 = [v9 feedbackForBundleIdentifier:v6];
      [(DMFApp *)v8 setFeedback:v23];
    }

    if ([v7 containsObject:@"sourceIdentifier"])
    {
      v24 = [v9 sourceIdentifierForBundleIdentifier:v6];
      [(DMFApp *)v8 setSourceIdentifier:v24];
    }

    if ([v7 containsObject:@"managementInformation"])
    {
      v25 = [v9 managementInformationForBundleIdentifier:v6];
      [(DMFApp *)v8 setManagementInformation:v25];
    }
  }

  return v8;
}

- (id)initWithApplicationRecord:(id)a3 hasUpdateAvailable:(BOOL)a4 propertyKeys:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 bundleIdentifier];
  v11 = [(DMFApp *)self initWithBundleIdentifier:v10 propertyKeys:v9];
  if (!v11)
  {
    goto LABEL_65;
  }

  v48 = v6;
  v12 = [v8 compatibilityObject];
  if ([v9 containsObject:@"type"])
  {
    v13 = [v12 applicationType];
    if ([v13 isEqualToString:LSSystemApplicationType])
    {
      v14 = 1;
    }

    else if ([v13 isEqualToString:LSUserApplicationType])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [(DMFApp *)v11 setType:v14];
  }

  if ([v9 containsObject:@"displayName"])
  {
    v15 = [v12 localizedName];
    if (v15)
    {
      [(DMFApp *)v11 setDisplayName:v15];
    }

    else
    {
      v16 = [v12 itemName];
      [(DMFApp *)v11 setDisplayName:v16];
    }
  }

  if ([v9 containsObject:@"storeItemIdentifier"])
  {
    v17 = [v12 itemID];
    [(DMFApp *)v11 setStoreItemIdentifier:v17];
  }

  if ([v9 containsObject:@"externalVersionIdentifier"])
  {
    v18 = [v12 externalVersionIdentifier];
    [(DMFApp *)v11 setExternalVersionIdentifier:v18];
  }

  if ([v9 containsObject:@"distributorIdentifier"])
  {
    v19 = [v8 iTunesMetadata];
    v20 = [v19 distributorInfo];
    v21 = [v20 distributorID];
    [(DMFApp *)v11 setDistributorIdentifier:v21];
  }

  if ([v9 containsObject:@"version"])
  {
    v22 = [v12 bundleVersion];
    [(DMFApp *)v11 setVersion:v22];
  }

  if ([v9 containsObject:@"shortVersion"])
  {
    v23 = [v12 shortVersionString];
    [(DMFApp *)v11 setShortVersion:v23];
  }

  v24 = [v9 containsObject:@"staticUsage"];
  v25 = [v9 containsObject:@"dynamicUsage"];
  v26 = [v9 containsObject:@"onDemandResourcesUsage"];
  v27 = [v9 containsObject:@"sharedUsage"];
  v28 = v27;
  if ((v24 & 1) != 0 || (v25 & 1) != 0 || (v26 & 1) != 0 || v27)
  {
    v29 = [v12 diskUsage];
    v30 = v29;
    if (v24)
    {
      v45 = [v29 staticUsage];
      [(DMFApp *)v11 setStaticUsage:v45];

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

    v46 = [v30 dynamicUsage];
    [(DMFApp *)v11 setDynamicUsage:v46];

    if (!v26)
    {
LABEL_31:
      if (!v28)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      v31 = [v30 sharedUsage];
      [(DMFApp *)v11 setSharedUsage:v31];

      goto LABEL_33;
    }

LABEL_68:
    v47 = [v30 onDemandResourcesUsage];
    [(DMFApp *)v11 setOnDemandResourcesUsage:v47];

    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_34:
  v32 = [v9 containsObject:@"isPlaceholder"];
  v33 = [v9 containsObject:@"isRestricted"];
  v34 = v33;
  if ((v32 & 1) != 0 || v33)
  {
    v35 = [v12 appState];
    v36 = v35;
    if (v32)
    {
      -[DMFApp setIsPlaceholder:](v11, "setIsPlaceholder:", [v35 isPlaceholder]);
    }

    if (v34)
    {
      -[DMFApp setIsRestricted:](v11, "setIsRestricted:", [v36 isRestricted]);
    }
  }

  v37 = [v9 containsObject:@"isUserBasedVPP"];
  v38 = [v9 containsObject:@"isLicenseExpired"];
  v39 = [v9 containsObject:@"isLicenseRevoked"];
  v40 = v39;
  if ((v37 & 1) == 0 && (v38 & 1) == 0 && !v39)
  {
    goto LABEL_48;
  }

  v41 = [SSPurchaseReceipt vppStateFlagsWithProxy:v12];
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
  if ([v9 containsObject:@"isDeviceBasedVPP"])
  {
    -[DMFApp setIsDeviceBasedVPP:](v11, "setIsDeviceBasedVPP:", [v12 isDeviceBasedVPP]);
  }

  if ([v9 containsObject:@"isUPP"])
  {
    -[DMFApp setIsUPP:](v11, "setIsUPP:", [v12 profileValidated]);
  }

  if ([v9 containsObject:@"isValidated"])
  {
    [(DMFApp *)v11 setIsValidated:[(DMFApp *)v11 _proxyIsValidated:v12]];
  }

  if ([v9 containsObject:@"isAppClip"])
  {
    v43 = [v8 appClipMetadata];
    [(DMFApp *)v11 setIsAppClip:v43 != 0];
  }

  if ([v9 containsObject:@"isAppStoreVendable"])
  {
    -[DMFApp setIsAppStoreVendable:](v11, "setIsAppStoreVendable:", [v12 isAppStoreVendable]);
  }

  if ([v9 containsObject:@"isBetaApp"])
  {
    -[DMFApp setIsBetaApp:](v11, "setIsBetaApp:", [v12 isBetaApp]);
  }

  if ([v9 containsObject:@"isAdHocCodeSigned"])
  {
    -[DMFApp setIsAdHocCodeSigned:](v11, "setIsAdHocCodeSigned:", [v12 isAdHocCodeSigned]);
  }

  if ([v9 containsObject:@"hasUpdateAvailable"])
  {
    [(DMFApp *)v11 setHasUpdateAvailable:v48];
  }

LABEL_65:
  return v11;
}

- (BOOL)_proxyIsValidated:(id)a3
{
  v3 = [a3 bundleURL];
  v4 = [v3 path];

  if (v4)
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