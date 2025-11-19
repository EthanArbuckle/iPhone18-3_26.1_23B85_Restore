@interface DMDAppController
+ (DMDAppController)sharedController;
+ (void)_sendAppStatusChangeNotification;
+ (void)_setTapToPayAttribute:(id)a3 forBundleIdentifier:(id)a4;
- (BOOL)_isManagedBundleIdentifier:(id)a3;
- (BOOL)_setMetadata:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_updateMetadataSettingKey:(id)a3 toValue:(id)a4 forBundleIdentifier:(id)a5 error:(id *)a6;
- (BOOL)removePersonaMappingForBundleID:(id)a3 error:(id *)a4;
- (BOOL)setAllowUserToHide:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setAllowUserToLock:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setAssociatedDomains:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setAssociatedDomainsEnableDirectDownloads:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setCellularSliceUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setConfiguration:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setContentFilterUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setDNSProxyUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setFeedback:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setManagementInformation:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setRelayUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setSourceIdentifier:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setState:(unint64_t)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setVPNUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)writeManagementInformationToDiskWithError:(id *)a3;
- (NSArray)managedBundleIdentifiers;
- (NSString)description;
- (id)DNSProxyUUIDStringForBundleIdentifier:(id)a3;
- (id)VPNUUIDStringForBundleIdentifier:(id)a3;
- (id)_metadataByBundleIdentifier;
- (id)_metadataForBundleIdentifier:(id)a3;
- (id)_newMetadataDictionary;
- (id)allManagementInformation;
- (id)allowUserToHideForBundleIdentifier:(id)a3;
- (id)allowUserToLockForBundleIdentifier:(id)a3;
- (id)associatedDomainsEnableDirectDownloadsForBundleIdentifier:(id)a3;
- (id)associatedDomainsForBundleIdentifier:(id)a3;
- (id)cellularSliceUUIDStringForBundleIdentifier:(id)a3;
- (id)configurationForBundleIdentifier:(id)a3;
- (id)contentFilterUUIDStringForBundleIdentifier:(id)a3;
- (id)feedbackForBundleIdentifier:(id)a3;
- (id)initPrivate;
- (id)managementInformationForBundleIdentifier:(id)a3;
- (id)relayUUIDStringForBundleIdentifier:(id)a3;
- (id)removabilityForBundleIdentifier:(id)a3;
- (id)sourceIdentifierForBundleIdentifier:(id)a3;
- (id)tapToPayScreenLockForBundleIdentifier:(id)a3;
- (unint64_t)stateForBundleIdentifier:(id)a3;
- (void)_applyChangeInLifeCycle:(id)a3 stateMap:(id)a4;
- (void)_cleanUpStaleManagementStatesAndStartObservingApps;
- (void)_getEnterpriseAppMetadataForManifestURL:(id)a3 completion:(id)a4;
- (void)_getEnterpriseAppMetadataFromData:(id)a3 completion:(id)a4;
- (void)_resetStateForChangeInLifeCycle:(id)a3 newState:(unint64_t)a4;
- (void)_stopObservingLifeCycle:(id)a3;
- (void)advanceTransientStates;
- (void)cancelAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)cancelAppUpdateWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)didFailInstallingForLifeCycle:(id)a3;
- (void)didFinishInstallingForLifeCycle:(id)a3;
- (void)didFinishUninstallingForLifeCycle:(id)a3;
- (void)didFinishUpdatingForLifeCycle:(id)a3;
- (void)didResetStateForLifeCycle:(id)a3 state:(unint64_t)a4;
- (void)didStartInstallingForLifeCycle:(id)a3;
- (void)didStartUpdatingForLifeCycle:(id)a3;
- (void)getBundleIdentifierForAppRequest:(id)a3 completion:(id)a4;
- (void)getBundleIdentifierForManifestURL:(id)a3 completion:(id)a4;
- (void)getBundleIdentifierForStoreItemIdentifier:(id)a3 personaIdentifier:(id)a4 completion:(id)a5;
- (void)getMetadataForAppRequest:(id)a3 completion:(id)a4;
- (void)getMetadataForNonEnterpriseAppRequest:(id)a3 completion:(id)a4;
- (void)handleFetchRequest:(id)a3 completion:(id)a4;
- (void)resumeAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)resumeAppUpdateWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)sendManagedAppsChangedNotification;
- (void)setRemovability:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)setTapToPayScreenLock:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)setVPNUUIDString:(id)a3 cellularSliceUUIDString:(id)a4 contentFilterUUIDString:(id)a5 DNSProxyUUIDString:(id)a6 relayUUIDString:(id)a7 associatedDomains:(id)a8 enableDirectDownloads:(id)a9 allowUserToHide:(id)a10 allowUserToLock:(id)a11 configuration:(id)a12 options:(unint64_t)a13 sourceIdentifier:(id)a14 forBundleIdentifier:(id)a15;
- (void)startInstallingEnterpriseAppWithManifestURL:(id)a3 completion:(id)a4;
- (void)startInstallingNonEnterpriseAppForRequest:(id)a3 completion:(id)a4;
- (void)startRedeemingAppWithCode:(id)a3 completion:(id)a4;
- (void)startUninstallingAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)updateBundleIDPersonaIDMappingForPersonaID:(id)a3 addingBundleID:(id)a4 completionHandler:(id)a5;
@end

@implementation DMDAppController

+ (DMDAppController)sharedController
{
  if (qword_1000FEF38 != -1)
  {
    sub_10007C6B0();
  }

  v3 = qword_1000FEF30;

  return v3;
}

- (id)initPrivate
{
  v35.receiver = self;
  v35.super_class = DMDAppController;
  v2 = [(DMDAppController *)&v35 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.dmd.%@.%p", objc_opt_class(), v2];
    v4 = v3;
    v5 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [objc_opt_class() metadataPath];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if (v9)
    {
      v34 = 0;
      v10 = [NSData dataWithContentsOfFile:v7 options:0 error:&v34];
      v11 = v34;
      if (!v10)
      {
        v26 = [NSString stringWithFormat:@"Could not read app management plist at path: %@, error: %@", v7, v11];
        v38 = @"error";
        v39 = v11;
        v27 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v28 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v26 userInfo:v27];
        v29 = v28;

        objc_exception_throw(v28);
      }

      v33 = 0;
      v12 = [NSPropertyListSerialization propertyListWithData:v10 options:1 format:0 error:&v33];
      v13 = v33;
      v14 = v13;
      if (v12)
      {

        v15 = v12;
        manifest = v2->_manifest;
        v2->_manifest = v15;
LABEL_10:

        [(DMDAppController *)v2 _cleanUpStaleManagementStatesAndStartObservingApps];
        objc_initWeak(&location, v2);
        v21 = [DMFOSStateHandler alloc];
        v22 = v2->_queue;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100010230;
        v30[3] = &unk_1000CDDE8;
        objc_copyWeak(&v31, &location);
        v23 = [v21 initWithQueue:v22 name:@"Apps" stateHandlerBlock:v30];
        stateHandler = v2->_stateHandler;
        v2->_stateHandler = v23;

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);

        return v2;
      }

      v17 = DMFAppLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10007C6C4();
      }
    }

    v36 = @"metadataByBundleID";
    manifest = objc_opt_new();
    v37 = manifest;
    v18 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v19 = [v18 mutableCopy];
    v20 = v2->_manifest;
    v2->_manifest = v19;

    v15 = 0;
    goto LABEL_10;
  }

  return v2;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(DMDAppController *)self _metadataByBundleIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %p Apps: %@>", v3, self, v4];;

  return v5;
}

- (void)getBundleIdentifierForManifestURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007C734();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_10007C7A8();
LABEL_3:
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 host];
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for manifest URL from: %{public}@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010488;
  v12[3] = &unk_1000CDE10;
  v13 = v8;
  v11 = v8;
  [(DMDAppController *)self _getEnterpriseAppMetadataForManifestURL:v6 completion:v12];
}

- (void)getBundleIdentifierForAppRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007C81C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_10007C890();
LABEL_3:
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for request: %{public}@", &v15, 0xCu);
  }

  v10 = [v6 bundleIdentifier];
  if (v10)
  {
    (v8)[2](v8, v10, 0);
  }

  else
  {
    v11 = [v6 storeItemIdentifier];
    if (v11)
    {
      v12 = DMFAppLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for store item identifier: %{public}@", &v15, 0xCu);
      }

      v13 = [v6 storeItemIdentifier];
      v14 = [v6 personaIdentifier];
      [(DMDAppController *)self getBundleIdentifierForStoreItemIdentifier:v13 personaIdentifier:v14 completion:v8];
    }

    else
    {
      v13 = [v6 manifestURL];
      [(DMDAppController *)self getBundleIdentifierForManifestURL:v13 completion:v8];
    }
  }
}

- (void)getMetadataForAppRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007C904();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_10007C978();
LABEL_3:
  v9 = [v6 manifestURL];

  if (v9)
  {
    v10 = [v6 manifestURL];
    [(DMDAppController *)self _getEnterpriseAppMetadataForManifestURL:v10 completion:v8];
  }

  else
  {
    v11 = DMFAppLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Get metadata for non-enterprise app request: %{public}@", &v12, 0xCu);
    }

    [(DMDAppController *)self getMetadataForNonEnterpriseAppRequest:v6 completion:v8];
  }
}

- (id)managementInformationForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10007C9EC();
  }

  v5 = [(DMDAppController *)self _metadataForBundleIdentifier:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v5 objectForKeyedSubscript:@"state"];
    [v6 setState:{objc_msgSend(v7, "unsignedIntegerValue")}];

    v8 = [v5 objectForKeyedSubscript:@"flags"];
    [v6 setOptions:{objc_msgSend(v8, "unsignedIntegerValue")}];

    v9 = [v5 objectForKeyedSubscript:@"RedemptionCode"];
    [v6 setRedemptionCode:v9];

    v10 = [v5 objectForKeyedSubscript:@"UnusedRedemptionCode"];
    [v6 setUnusedRedemptionCode:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setManagementInformation:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    sub_10007CA60();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = [(DMDAppController *)self _metadataForBundleIdentifier:v9];
  if (!v10)
  {
    v10 = [(DMDAppController *)self _newMetadataDictionary];
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 state]);
  [v10 setObject:v11 forKeyedSubscript:@"state"];

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 options]);
  [v10 setObject:v12 forKeyedSubscript:@"flags"];

  v13 = [v8 redemptionCode];
  [v10 setObject:v13 forKeyedSubscript:@"RedemptionCode"];

  v14 = [v8 unusedRedemptionCode];
  [v10 setObject:v14 forKeyedSubscript:@"UnusedRedemptionCode"];

LABEL_8:
  v15 = [(DMDAppController *)self _setMetadata:v10 forBundleIdentifier:v9 error:a5];

  return v15;
}

- (BOOL)writeManagementInformationToDiskWithError:(id *)a3
{
  v4 = [(DMDAppController *)self manifest];
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:a3];

  if (v5)
  {
    v6 = [objc_opt_class() metadataPath];
    v7 = [NSURL fileURLWithPath:v6 isDirectory:0];

    v15 = 0;
    v8 = [v5 dm_atomicWriteToURL:v7 error:&v15];
    v9 = v15;
    if ((v8 & 1) == 0)
    {
      v10 = DMFAppLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          sub_10007CAD4(v9, v10);
        }

        if (!a3)
        {
          goto LABEL_14;
        }

        v16 = NSUnderlyingErrorKey;
        v17 = v9;
        v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v13 = DMFErrorWithCodeAndUserInfo();
        *a3 = v13;
      }

      else
      {
        if (v11)
        {
          sub_10007CB4C(v10);
        }

        if (!a3)
        {
          goto LABEL_14;
        }

        v12 = DMFErrorWithCodeAndUserInfo();
        *a3 = v12;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)allManagementInformation
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100010E34;
  v13 = sub_100010E44;
  v14 = 0;
  objc_initWeak(&location, self);
  v3 = [(DMDAppController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010E4C;
  block[3] = &unk_1000CDE38;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(v3, block);

  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)updateBundleIDPersonaIDMappingForPersonaID:(id)a3 addingBundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [(DMDAppController *)self managedBundleIdentifiers];
    v13 = v12;
    if (v9)
    {
      v14 = [v12 arrayByAddingObject:v9];

      v13 = v14;
    }

    v15 = +[UMUserManager sharedManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001103C;
    v17[3] = &unk_1000CDE60;
    v18 = v13;
    v19 = v8;
    v20 = v11;
    v16 = v13;
    [v15 setBundlesIdentifiers:v16 forPersonaWithPersonaUniqueString:v19 completionHandler:v17];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (BOOL)removePersonaMappingForBundleID:(id)a3 error:(id *)a4
{
  v18 = a4;
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100010E34;
  v28 = sub_100010E44;
  v29 = 0;
  v6 = +[UMUserManager sharedManager];
  [v6 listAllPersonaWithAttributes];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 userPersonaBundleIDList];
        v13 = [v12 containsObject:v5];

        if (v13)
        {
          v15 = [v11 userPersonaUniqueString];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100011350;
          v19[3] = &unk_1000CDE88;
          v19[4] = &v24;
          [(DMDAppController *)self updateBundleIDPersonaIDMappingForPersonaID:v15 addingBundleID:0 completionHandler:v19];

          v16 = v25[5];
          if (v16)
          {
            LOBYTE(v8) = 0;
            v14 = 0;
            if (v18)
            {
              *v18 = v16;
            }
          }

          else
          {
            v14 = 0;
            LOBYTE(v8) = 1;
          }

          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_14:

  _Block_object_dispose(&v24, 8);
  return (v8 | v14) & 1;
}

- (id)VPNUUIDStringForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"VPNUUID"];

  return v5;
}

- (BOOL)setVPNUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set VPN UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"VPNUUID" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)cellularSliceUUIDStringForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"CellularSliceUUID"];

  return v5;
}

- (BOOL)setCellularSliceUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set cellular slice UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"CellularSliceUUID" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)contentFilterUUIDStringForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"ContentFilterUUID"];

  return v5;
}

- (BOOL)setContentFilterUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set content filter UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"ContentFilterUUID" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)DNSProxyUUIDStringForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"DNSProxyUUID"];

  return v5;
}

- (BOOL)setDNSProxyUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set DNS proxy UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"DNSProxyUUID" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)relayUUIDStringForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"RelayUUID"];

  return v5;
}

- (BOOL)setRelayUUIDString:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set relay UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"RelayUUID" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)associatedDomainsForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AssociatedDomains"];

  return v5;
}

- (BOOL)setAssociatedDomains:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 debugDescription];
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set associated domains for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v12 = [(DMDAppController *)self _updateMetadataSettingKey:@"AssociatedDomains" toValue:v8 forBundleIdentifier:v9 error:&v15];
  v13 = v15;
  if (a5 && !v12)
  {
    v13 = v13;
    *a5 = v13;
  }

  return v12;
}

- (id)associatedDomainsEnableDirectDownloadsForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];

  return v5;
}

- (BOOL)setAssociatedDomainsEnableDirectDownloads:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set associated domains enable direct downloads for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AssociatedDomainsEnableDirectDownloads" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)removabilityForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"Removable"];

  return v5;
}

- (void)setRemovability:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = v9;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set removability for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001217C;
  v25[3] = &unk_1000CDEB0;
  v25[4] = self;
  v12 = v9;
  v26 = v12;
  v27 = v10;
  v13 = v10;
  v14 = objc_retainBlock(v25);
  if (v8)
  {
    v15 = [v8 BOOLValue];
    v16 = 1;
    if (!v15)
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 1;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000122A0;
  v20[3] = &unk_1000CDF00;
  v23 = v14;
  v24 = v16;
  v21 = v12;
  v22 = v8;
  v17 = v8;
  v18 = v14;
  v19 = v12;
  [IXAppInstallCoordinator removabilityForAppWithBundleID:v19 completion:v20];
}

- (id)tapToPayScreenLockForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"TapToPayScreenLock"];

  return v5;
}

+ (void)_setTapToPayAttribute:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = DMFAppLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      sub_10007CD08(v5, v7);
    }

    [sub_10001262C() setMDMAppAttribute:0 withValue:objc_msgSend(v5 forBundleID:{"BOOLValue"), v6}];
  }

  else
  {
    if (v8)
    {
      sub_10007CD80(v7);
    }

    [sub_10001262C() removeMDMAppAttribute:0 forBundleID:v6];
  }
}

- (void)setTapToPayScreenLock:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setTapToPayScreenLock for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  [objc_opt_class() _setTapToPayAttribute:v8 forBundleIdentifier:v9];
  v13 = 0;
  [(DMDAppController *)self _updateMetadataSettingKey:@"TapToPayScreenLock" toValue:v8 forBundleIdentifier:v9 error:&v13];
  v12 = v13;
  if (v10)
  {
    v10[2](v10, v12);
  }
}

- (id)allowUserToHideForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AllowUserToHide"];

  return v5;
}

- (BOOL)setAllowUserToHide:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set allow user to hide (%@) for bundle identifier: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AllowUserToHide" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)allowUserToLockForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AllowUserToLock"];

  return v5;
}

- (BOOL)setAllowUserToLock:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set allow user to lock (%@) for bundle identifier: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AllowUserToLock" toValue:v8 forBundleIdentifier:v9 error:&v14];
  v12 = v14;
  if (a5 && !v11)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

- (BOOL)_updateMetadataSettingKey:(id)a3 toValue:(id)a4 forBundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DMDAppController *)self _metadataForBundleIdentifier:v12];
  if (!v13)
  {
    if (!v11)
    {
      v15 = 1;
      goto LABEL_10;
    }

    v13 = [(DMDAppController *)self _newMetadataDictionary];
  }

  v14 = [v13 objectForKeyedSubscript:@"Attributes"];
  [v14 setObject:v11 forKeyedSubscript:v10];

  v18 = 0;
  v15 = [(DMDAppController *)self _setMetadata:v13 forBundleIdentifier:v12 error:&v18];
  v16 = v18;
  if (!v15)
  {
    if (!v16)
    {
      v16 = DMFErrorWithCodeAndUserInfo();
    }

    if (a6)
    {
      v16 = v16;
      *a6 = v16;
    }
  }

LABEL_10:
  return v15;
}

- (id)configurationForBundleIdentifier:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:639 description:{@"%@ must implement %@", v6, v7}];

  return 0;
}

- (BOOL)setConfiguration:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = [NSAssertionHandler currentHandler:a3];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:644 description:{@"%@ must implement %@", v8, v9}];

  return 0;
}

- (id)feedbackForBundleIdentifier:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:649 description:{@"%@ must implement %@", v6, v7}];

  return 0;
}

- (BOOL)setFeedback:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = [NSAssertionHandler currentHandler:a3];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:654 description:{@"%@ must implement %@", v8, v9}];

  return 0;
}

- (BOOL)setSourceIdentifier:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set source ID %@ for bundle identifier: %{public}@", &v17, 0x16u);
  }

  v11 = [(DMDAppController *)self _metadataForBundleIdentifier:v9];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 objectForKeyedSubscript:@"source"];
  }

  else
  {
    if (!v8)
    {
      v15 = 1;
      goto LABEL_12;
    }

    v12 = [(DMDAppController *)self _newMetadataDictionary];
    v13 = v8;
  }

  v14 = v13;
  [v12 setObject:v8 forKeyedSubscript:@"source"];
  if ((v8 == 0) != (v14 == 0) || v14 && ([v8 isEqualToString:v14] & 1) == 0)
  {
    [objc_opt_class() _sendAppStatusChangeNotification];
  }

  v15 = [(DMDAppController *)self _setMetadata:v12 forBundleIdentifier:v9 error:a5];

LABEL_12:
  return v15;
}

- (id)sourceIdentifierForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:@"source"];

  return v4;
}

- (void)getBundleIdentifierForStoreItemIdentifier:(id)a3 personaIdentifier:(id)a4 completion:(id)a5
{
  v9 = [NSAssertionHandler currentHandler:a3];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:707 description:{@"%@ must implement %@", v7, v8}];
}

- (void)getMetadataForNonEnterpriseAppRequest:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:712 description:{@"%@ must implement %@", v6, v7}];
}

- (void)handleFetchRequest:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:717 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startInstallingEnterpriseAppWithManifestURL:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:722 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startInstallingNonEnterpriseAppForRequest:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:727 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startRedeemingAppWithCode:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:732 description:{@"%@ must implement %@", v6, v7}];
}

- (void)cancelAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:737 description:{@"%@ must implement %@", v6, v7}];
}

- (void)resumeAppInstallationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:742 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startUpdatingAppForRequest:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v9 = [NSAssertionHandler currentHandler:a3];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:748 description:{@"%@ must implement %@", v7, v8}];
}

- (void)cancelAppUpdateWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:753 description:{@"%@ must implement %@", v6, v7}];
}

- (void)resumeAppUpdateWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:758 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startUninstallingAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:763 description:{@"%@ must implement %@", v6, v7}];
}

- (void)sendManagedAppsChangedNotification
{
  v6 = +[NSAssertionHandler currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:767 description:{@"%@ must implement %@", v4, v5}];
}

- (void)didStartInstallingForLifeCycle:(id)a3
{
  v6[0] = &off_1000D77D8;
  v6[1] = &off_1000D7808;
  v7[0] = &off_1000D77F0;
  v7[1] = &off_1000D77F0;
  v6[2] = &off_1000D7820;
  v7[2] = &off_1000D7838;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didFailInstallingForLifeCycle:(id)a3
{
  v6 = &off_1000D77F0;
  v7 = &off_1000D7850;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didFinishInstallingForLifeCycle:(id)a3
{
  v6[0] = &off_1000D77F0;
  v6[1] = &off_1000D77D8;
  v7[0] = &off_1000D7868;
  v7[1] = &off_1000D7868;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didStartUpdatingForLifeCycle:(id)a3
{
  v6 = &off_1000D7868;
  v7 = &off_1000D7880;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didFinishUpdatingForLifeCycle:(id)a3
{
  v6 = &off_1000D7880;
  v7 = &off_1000D7868;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didFinishUninstallingForLifeCycle:(id)a3
{
  v6 = &off_1000D7868;
  v7 = &off_1000D77D8;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:v4 stateMap:v5];
}

- (void)didResetStateForLifeCycle:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 bundleIdentifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DMDAppController::didResetStateForLifeCycle(%{public}@)", &v9, 0xCu);
  }

  [(DMDAppController *)self _resetStateForChangeInLifeCycle:v6 newState:a4];
}

- (NSArray)managedBundleIdentifiers
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100010E34;
  v13 = sub_100010E44;
  v14 = 0;
  objc_initWeak(&location, self);
  v3 = [(DMDAppController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014018;
  block[3] = &unk_1000CDE38;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(v3, block);

  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)setVPNUUIDString:(id)a3 cellularSliceUUIDString:(id)a4 contentFilterUUIDString:(id)a5 DNSProxyUUIDString:(id)a6 relayUUIDString:(id)a7 associatedDomains:(id)a8 enableDirectDownloads:(id)a9 allowUserToHide:(id)a10 allowUserToLock:(id)a11 configuration:(id)a12 options:(unint64_t)a13 sourceIdentifier:(id)a14 forBundleIdentifier:(id)a15
{
  v66 = a4;
  v67 = a5;
  v19 = a6;
  v71 = a7;
  v70 = a8;
  v69 = a9;
  v68 = a10;
  v20 = a11;
  v21 = a12;
  v72 = a14;
  v22 = a15;
  v23 = a3;
  v24 = DMFAppLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bulk set app attributes, configuration, source ID, and management information for bundle identifier: %{public}@", buf, 0xCu);
  }

  v85 = 0;
  v25 = [(DMDAppController *)self setVPNUUIDString:v23 forBundleIdentifier:v22 error:&v85];

  v26 = v85;
  v27 = v19;
  if ((v25 & 1) == 0)
  {
    v28 = DMFAppLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10007CDC4();
    }
  }

  v84 = v26;
  v29 = [(DMDAppController *)self setCellularSliceUUIDString:v66 forBundleIdentifier:v22 error:&v84];
  v30 = v84;

  if ((v29 & 1) == 0)
  {
    v31 = DMFAppLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10007CE34();
    }
  }

  v83 = v30;
  v32 = [(DMDAppController *)self setContentFilterUUIDString:v67 forBundleIdentifier:v22 error:&v83];
  v33 = v83;

  if ((v32 & 1) == 0)
  {
    v34 = DMFAppLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10007CEA4();
    }
  }

  v82 = v33;
  v35 = [(DMDAppController *)self setDNSProxyUUIDString:v19 forBundleIdentifier:v22 error:&v82];
  v36 = v82;

  if ((v35 & 1) == 0)
  {
    v37 = DMFAppLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10007CF14();
    }
  }

  v81 = v36;
  v38 = [(DMDAppController *)self setRelayUUIDString:v71 forBundleIdentifier:v22 error:&v81];
  v39 = v81;

  if ((v38 & 1) == 0)
  {
    v40 = DMFAppLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10007CF84();
    }
  }

  v80 = v39;
  v41 = [(DMDAppController *)self setAssociatedDomains:v70 forBundleIdentifier:v22 error:&v80];
  v42 = v80;

  if ((v41 & 1) == 0)
  {
    v43 = DMFAppLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_10007CFF4();
    }
  }

  v79 = v42;
  v44 = [(DMDAppController *)self setAssociatedDomainsEnableDirectDownloads:v69 forBundleIdentifier:v22 error:&v79];
  v45 = v79;

  if ((v44 & 1) == 0)
  {
    v46 = DMFAppLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10007D064();
    }
  }

  v78 = v45;
  v47 = [(DMDAppController *)self setAllowUserToHide:v68 forBundleIdentifier:v22 error:&v78];
  v48 = v78;

  if ((v47 & 1) == 0)
  {
    v49 = DMFAppLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10007D0D4();
    }
  }

  v77 = v48;
  v50 = [(DMDAppController *)self setAllowUserToLock:v20 forBundleIdentifier:v22 error:&v77];
  v51 = v77;

  if ((v50 & 1) == 0)
  {
    v52 = DMFAppLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10007D144();
    }
  }

  if ([v72 isEqualToString:DMFAppSourceDeclarativeManagement])
  {
    v53 = v66;
    v54 = v67;
    v55 = v51;
  }

  else
  {
    v76 = v51;
    v56 = [(DMDAppController *)self setConfiguration:v21 forBundleIdentifier:v22 error:&v76];
    v55 = v76;

    v53 = v66;
    if (v56)
    {
      v54 = v67;
    }

    else
    {
      v57 = DMFAppLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10007D1B4();
      }

      v54 = v67;
    }
  }

  v75 = v55;
  v58 = [(DMDAppController *)self setSourceIdentifier:v72 forBundleIdentifier:v22 error:&v75];
  v59 = v75;

  if ((v58 & 1) == 0)
  {
    v60 = DMFAppLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10007D224();
    }
  }

  v61 = [(DMDAppController *)self managementInformationForBundleIdentifier:v22];
  if (!v61)
  {
    v61 = objc_opt_new();
  }

  [v61 setOptions:a13];
  v74 = v59;
  v62 = [(DMDAppController *)self setManagementInformation:v61 forBundleIdentifier:v22 error:&v74];
  v63 = v74;

  if ((v62 & 1) == 0)
  {
    v64 = DMFAppLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_10007D294();
    }
  }
}

- (unint64_t)stateForBundleIdentifier:(id)a3
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"state"];
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 19;
  }

  return v6;
}

- (BOOL)setState:(unint64_t)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [DMFAppManagementInformation stringForState:a3];
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set state: %{public}@, for bundle identifier: %{public}@", &v18, 0x16u);
  }

  v11 = [(DMDAppController *)self _metadataForBundleIdentifier:v8];
  if (!v11)
  {
    v11 = [(DMDAppController *)self _newMetadataDictionary];
  }

  v12 = [v11 objectForKeyedSubscript:@"state"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 unsignedIntegerValue];
  }

  else
  {
    v14 = 19;
  }

  v15 = [NSNumber numberWithUnsignedInteger:a3];
  [v11 setObject:v15 forKeyedSubscript:@"state"];

  v16 = [(DMDAppController *)self _setMetadata:v11 forBundleIdentifier:v8 error:a5];
  if (v14 != a3)
  {
    [(DMDAppController *)self sendManagedAppsChangedNotification];
  }

  [objc_opt_class() _sendAppStatusChangeNotification];

  return v16;
}

- (void)advanceTransientStates
{
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Advance transient app states", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(DMDAppController *)self managedBundleIdentifiers];
  v4 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v29 = *v34;
    *&v5 = 138543874;
    v27 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(DMDAppController *)self managementInformationForBundleIdentifier:v9];
        v12 = [v11 state];
        if ((v12 - 9) >= 3)
        {
          if (v12 == 15)
          {
            v16 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v9];
            v17 = [v16 currentState];

            if (v17)
            {
              v18 = 7;
            }

            else
            {
              v18 = 8;
            }

            v31 = v7;
            v19 = [(DMDAppController *)self setState:v18 forBundleIdentifier:v9 error:&v31, v27];
            v20 = v31;

            if ((v19 & 1) == 0)
            {
              v21 = DMFAppLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v26 = [DMFAppManagementInformation stringForState:v18];
                *buf = v27;
                v38 = v26;
                v39 = 2114;
                v40 = v9;
                v41 = 2114;
                v42 = v20;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not set state to %{public}@ for bundle identifier: %{public}@, error: %{public}@", buf, 0x20u);
              }
            }

            goto LABEL_22;
          }

          if (v12 != 18)
          {
            v20 = v7;
LABEL_22:
            v15 = [v11 unusedRedemptionCode];
            if (v15)
            {
              [v11 setUnusedRedemptionCode:0];
              v22 = [v11 redemptionCode];
              v23 = [v22 isEqualToString:v15];

              if (v23)
              {
                [v11 setRedemptionCode:0];
              }

              v30 = v20;
              v24 = [(DMDAppController *)self setManagementInformation:v11 forBundleIdentifier:v9 error:&v30];
              v14 = v30;

              if ((v24 & 1) == 0)
              {
                v25 = DMFAppLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v38 = v9;
                  v39 = 2114;
                  v40 = v14;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not set management information for bundle identifier: %{public}@, error: %{public}@", buf, 0x16u);
                }
              }
            }

            else
            {
              v14 = v20;
            }

            goto LABEL_30;
          }
        }

        v32 = v7;
        v13 = [(DMDAppController *)self setManagementInformation:0 forBundleIdentifier:v9 error:&v32, v27];
        v14 = v32;

        if (v13)
        {
          goto LABEL_31;
        }

        v15 = DMFAppLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v38 = v9;
          v39 = 2114;
          v40 = v14;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not remove management information for bundle identifier: %{public}@, error: %{public}@", buf, 0x16u);
        }

LABEL_30:

LABEL_31:
        v7 = v14;

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (!v6)
      {
        goto LABEL_35;
      }
    }
  }

  v7 = 0;
LABEL_35:
}

- (void)_cleanUpStaleManagementStatesAndStartObservingApps
{
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clean up stale app states", buf, 2u);
  }

  if (qword_1000FEF48 != -1)
  {
    sub_10007D304();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DMDAppController *)self managedBundleIdentifiers];
  v23 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v23)
  {
    v24 = 0;
    v22 = *v27;
    v4 = DMFFetchCertificatesResultObject_ptr;
    v21 = self;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [(DMDAppController *)self managementInformationForBundleIdentifier:v6];
        v9 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v6];
        [v9 addObserver:self];
        v10 = qword_1000FEF40;
        v11 = [v4[151] numberWithUnsignedInteger:{objc_msgSend(v8, "state")}];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v4[151] numberWithUnsignedInteger:{objc_msgSend(v9, "currentState")}];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = [v14 unsignedIntegerValue];
            v25 = v24;
            v16 = [(DMDAppController *)self setState:v15 forBundleIdentifier:v6 error:&v25];
            v17 = v25;

            if ((v16 & 1) == 0)
            {
              v18 = DMFAppLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = [DMFAppManagementInformation stringForState:v15];
                *buf = 138543874;
                v31 = v19;
                v32 = 2114;
                v33 = v6;
                v34 = 2114;
                v35 = v17;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not set state to %{public}@ for bundle identifier: %{public}@, error: %{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            v17 = v24;
          }

          v24 = v17;
          self = v21;
          v4 = DMFFetchCertificatesResultObject_ptr;
        }

        objc_autoreleasePoolPop(v7);
      }

      v23 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }
}

- (void)_applyChangeInLifeCycle:(id)a3 stateMap:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 bundleIdentifier];
  v9 = [(DMDAppController *)self _isManagedBundleIdentifier:v8];

  if (v9)
  {
    v10 = [v7 bundleIdentifier];

    v11 = [(DMDAppController *)self stateForBundleIdentifier:v10];
    v12 = [NSNumber numberWithUnsignedInteger:v11];
    v13 = [v6 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [v13 unsignedIntegerValue];
      v15 = DMFAppLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [DMFAppManagementInformation stringForState:v11];
        v17 = [DMFAppManagementInformation stringForState:v14];
        *buf = 138543874;
        v26 = v16;
        v27 = 2114;
        v28 = v17;
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Observed change in life cycle from old state: %{public}@ to new state: %{public}@ for bundle identifier: %{public}@", buf, 0x20u);
      }

      v24 = 0;
      v18 = [(DMDAppController *)self setState:v14 forBundleIdentifier:v10 error:&v24];
      v19 = v24;
      if ((v18 & 1) == 0)
      {
        v20 = DMFAppLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = [DMFAppManagementInformation stringForState:v14];
          *buf = 138543874;
          v26 = v23;
          v27 = 2114;
          v28 = v10;
          v29 = 2114;
          v30 = v19;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not set new state: %{public}@, for bundle identifier: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }

      [objc_opt_class() _sendAppStatusChangeNotification];
    }

    else
    {
      v21 = DMFAppLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [DMFAppManagementInformation stringForState:v11];
        *buf = 138543618;
        v26 = v22;
        v27 = 2114;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Observed change in life cycle from old state: %{public}@ to missing new state for bundle identifier: %{public}@", buf, 0x16u);
      }

      [objc_opt_class() _sendAppStatusChangeNotification];
    }
  }

  else
  {
    [(DMDAppController *)self _stopObservingLifeCycle:v7];
    v10 = v7;
  }
}

- (void)_resetStateForChangeInLifeCycle:(id)a3 newState:(unint64_t)a4
{
  v6 = a3;
  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 bundleIdentifier];
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DMDAppController::_resetStateForChangeInLifeCycle(%{public}@)", buf, 0xCu);
  }

  if (qword_1000FEF58 != -1)
  {
    sub_10007D32C();
  }

  v9 = [v6 bundleIdentifier];
  v10 = [(DMDAppController *)self _isManagedBundleIdentifier:v9];

  if (v10)
  {
    v11 = [v6 bundleIdentifier];
    v12 = [(DMDAppController *)self stateForBundleIdentifier:v11];
    if ([objc_opt_class() _stateCanBeResetSafely:v12])
    {
      v13 = qword_1000FEF50;
      v14 = [NSNumber numberWithUnsignedInteger:a4];
      v15 = [v13 objectForKeyedSubscript:v14];
      v16 = [v15 unsignedIntegerValue];

      v17 = DMFAppLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [DMFAppManagementInformation stringForState:v12];
        v19 = [DMFAppManagementInformation stringForState:v16];
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v19;
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Reset state due to change in life cycle, old state: %{public}@ to new state: %{public}@ for bundle identifier: %{public}@", buf, 0x20u);
      }

      v25 = 0;
      v20 = [(DMDAppController *)self setState:v16 forBundleIdentifier:v11 error:&v25];
      v21 = v25;
      if ((v20 & 1) == 0)
      {
        v22 = DMFAppLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = [DMFAppManagementInformation stringForState:v16];
          *buf = 138543874;
          v27 = v24;
          v28 = 2114;
          v29 = v11;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not set new state: %{public}@, for bundle identifier: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v21 = DMFAppLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [DMFAppManagementInformation stringForState:v12];
        *buf = 138543618;
        v27 = v23;
        v28 = 2114;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reset state due to change in life cycle, old state preserved: %{public}@, for bundle identifier: %{public}@", buf, 0x16u);
      }
    }

    [objc_opt_class() _sendAppStatusChangeNotification];
  }

  else
  {
    [(DMDAppController *)self _stopObservingLifeCycle:v6];
  }
}

- (BOOL)_isManagedBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMDAppController *)self managedBundleIdentifiers];
  v6 = [NSPredicate predicateWithFormat:@"self == %@", v4];

  v7 = [v5 filteredArrayUsingPredicate:v6];
  v8 = [v7 firstObject];
  v9 = v8 != 0;

  return v9;
}

- (void)_stopObservingLifeCycle:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleIdentifier];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing lifecycle observer for an app that is no longer managed: %{public}@", &v7, 0xCu);
  }

  [v4 removeObserver:self];
  [objc_opt_class() _sendAppStatusChangeNotification];
}

+ (void)_sendAppStatusChangeNotification
{
  v2 = [DMFAppStatusDidChangeNotificationName UTF8String];

  notify_post(v2);
}

- (id)_metadataForBundleIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100010E34;
  v18 = sub_100010E44;
  v19 = 0;
  objc_initWeak(&location, self);
  v5 = [(DMDAppController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015E14;
  v9[3] = &unk_1000CDF68;
  v11 = &v14;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, v9);

  v7 = v15[5];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (BOOL)_setMetadata:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set metadata for bundle identifier: %{public}@", &buf, 0xCu);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = sub_100010E34;
  v30 = sub_100010E44;
  v31 = 0;
  objc_initWeak(&location, self);
  v11 = [(DMDAppController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000160E8;
  v16[3] = &unk_1000CDF90;
  objc_copyWeak(&v21, &location);
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v19 = &v23;
  p_buf = &buf;
  dispatch_sync(v11, v16);

  if (a5)
  {
    *a5 = *(*(&buf + 1) + 40);
  }

  v14 = *(v24 + 24);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v23, 8);
  return v14 & 1;
}

- (id)_metadataByBundleIdentifier
{
  v2 = [(DMDAppController *)self manifest];
  v3 = [v2 objectForKeyedSubscript:@"metadataByBundleID"];

  return v3;
}

- (id)_newMetadataDictionary
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:5];
  v3 = [NSMutableDictionary dictionaryWithCapacity:1];
  [v2 setObject:v3 forKeyedSubscript:@"Attributes"];

  return v2;
}

- (void)_getEnterpriseAppMetadataForManifestURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007D3CC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_10007D440();
LABEL_3:
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 host];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get metadata for manifest URL from: %{public}@", buf, 0xCu);
  }

  v11 = [NSURLRequest requestWithURL:v6];
  v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v13 = [NSURLSession sessionWithConfiguration:v12];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100016468;
  v19 = &unk_1000CDFB8;
  v20 = self;
  v21 = v8;
  v14 = v8;
  v15 = [v13 dataTaskWithRequest:v11 completionHandler:&v16];
  [v15 resume];
}

- (void)_getEnterpriseAppMetadataFromData:(id)a3 completion:(id)a4
{
  v5 = a4;
  v14 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:&v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"items"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] && objc_msgSend(v7, "count") < 2)
    {
      v8 = [v7 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"metadata"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectForKeyedSubscript:@"kind"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isEqualToString:@"software"])
          {
            v11 = [v9 objectForKeyedSubscript:@"bundle-identifier"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v9 objectForKeyedSubscript:@"title"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = objc_opt_new();
                [v13 setBundleIdentifier:v11];
                [v13 setStoreItemIdentifier:0];
                [v13 setDisplayName:v12];
                [v13 setIsStoreApp:0];
                [v13 setIsFree:0];
                [v13 setIsUserLicensed:0];
                v5[2](v5, v13, 0);
              }

              else
              {
                v13 = DMFErrorWithCodeAndUserInfo();
                (v5)[2](v5, 0, v13);
              }
            }

            else
            {
              v12 = DMFErrorWithCodeAndUserInfo();
              (v5)[2](v5, 0, v12);
            }
          }

          else
          {
            v11 = DMFErrorWithCodeAndUserInfo();
            (v5)[2](v5, 0, v11);
          }
        }

        else
        {
          v10 = DMFErrorWithCodeAndUserInfo();
          (v5)[2](v5, 0, v10);
        }
      }

      else
      {
        v9 = DMFErrorWithCodeAndUserInfo();
        (v5)[2](v5, 0, v9);
      }
    }

    else
    {
      v8 = DMFErrorWithCodeAndUserInfo();
      (v5)[2](v5, 0, v8);
    }
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    (v5)[2](v5, 0, v7);
  }
}

@end