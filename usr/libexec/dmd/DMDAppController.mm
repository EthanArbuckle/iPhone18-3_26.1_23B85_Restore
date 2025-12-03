@interface DMDAppController
+ (DMDAppController)sharedController;
+ (void)_sendAppStatusChangeNotification;
+ (void)_setTapToPayAttribute:(id)attribute forBundleIdentifier:(id)identifier;
- (BOOL)_isManagedBundleIdentifier:(id)identifier;
- (BOOL)_setMetadata:(id)metadata forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)_updateMetadataSettingKey:(id)key toValue:(id)value forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)removePersonaMappingForBundleID:(id)d error:(id *)error;
- (BOOL)setAllowUserToHide:(id)hide forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setAllowUserToLock:(id)lock forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setAssociatedDomains:(id)domains forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setAssociatedDomainsEnableDirectDownloads:(id)downloads forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setCellularSliceUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setConfiguration:(id)configuration forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setContentFilterUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setDNSProxyUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setFeedback:(id)feedback forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setManagementInformation:(id)information forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setRelayUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setSourceIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (BOOL)setState:(unint64_t)state forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)setVPNUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)writeManagementInformationToDiskWithError:(id *)error;
- (NSArray)managedBundleIdentifiers;
- (NSString)description;
- (id)DNSProxyUUIDStringForBundleIdentifier:(id)identifier;
- (id)VPNUUIDStringForBundleIdentifier:(id)identifier;
- (id)_metadataByBundleIdentifier;
- (id)_metadataForBundleIdentifier:(id)identifier;
- (id)_newMetadataDictionary;
- (id)allManagementInformation;
- (id)allowUserToHideForBundleIdentifier:(id)identifier;
- (id)allowUserToLockForBundleIdentifier:(id)identifier;
- (id)associatedDomainsEnableDirectDownloadsForBundleIdentifier:(id)identifier;
- (id)associatedDomainsForBundleIdentifier:(id)identifier;
- (id)cellularSliceUUIDStringForBundleIdentifier:(id)identifier;
- (id)configurationForBundleIdentifier:(id)identifier;
- (id)contentFilterUUIDStringForBundleIdentifier:(id)identifier;
- (id)feedbackForBundleIdentifier:(id)identifier;
- (id)initPrivate;
- (id)managementInformationForBundleIdentifier:(id)identifier;
- (id)relayUUIDStringForBundleIdentifier:(id)identifier;
- (id)removabilityForBundleIdentifier:(id)identifier;
- (id)sourceIdentifierForBundleIdentifier:(id)identifier;
- (id)tapToPayScreenLockForBundleIdentifier:(id)identifier;
- (unint64_t)stateForBundleIdentifier:(id)identifier;
- (void)_applyChangeInLifeCycle:(id)cycle stateMap:(id)map;
- (void)_cleanUpStaleManagementStatesAndStartObservingApps;
- (void)_getEnterpriseAppMetadataForManifestURL:(id)l completion:(id)completion;
- (void)_getEnterpriseAppMetadataFromData:(id)data completion:(id)completion;
- (void)_resetStateForChangeInLifeCycle:(id)cycle newState:(unint64_t)state;
- (void)_stopObservingLifeCycle:(id)cycle;
- (void)advanceTransientStates;
- (void)cancelAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)cancelAppUpdateWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)didFailInstallingForLifeCycle:(id)cycle;
- (void)didFinishInstallingForLifeCycle:(id)cycle;
- (void)didFinishUninstallingForLifeCycle:(id)cycle;
- (void)didFinishUpdatingForLifeCycle:(id)cycle;
- (void)didResetStateForLifeCycle:(id)cycle state:(unint64_t)state;
- (void)didStartInstallingForLifeCycle:(id)cycle;
- (void)didStartUpdatingForLifeCycle:(id)cycle;
- (void)getBundleIdentifierForAppRequest:(id)request completion:(id)completion;
- (void)getBundleIdentifierForManifestURL:(id)l completion:(id)completion;
- (void)getBundleIdentifierForStoreItemIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier completion:(id)completion;
- (void)getMetadataForAppRequest:(id)request completion:(id)completion;
- (void)getMetadataForNonEnterpriseAppRequest:(id)request completion:(id)completion;
- (void)handleFetchRequest:(id)request completion:(id)completion;
- (void)resumeAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)resumeAppUpdateWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)sendManagedAppsChangedNotification;
- (void)setRemovability:(id)removability forBundleIdentifier:(id)identifier completion:(id)completion;
- (void)setTapToPayScreenLock:(id)lock forBundleIdentifier:(id)identifier completion:(id)completion;
- (void)setVPNUUIDString:(id)string cellularSliceUUIDString:(id)dString contentFilterUUIDString:(id)iDString DNSProxyUUIDString:(id)uIDString relayUUIDString:(id)uUIDString associatedDomains:(id)domains enableDirectDownloads:(id)downloads allowUserToHide:(id)self0 allowUserToLock:(id)self1 configuration:(id)self2 options:(unint64_t)self3 sourceIdentifier:(id)self4 forBundleIdentifier:(id)self5;
- (void)startInstallingEnterpriseAppWithManifestURL:(id)l completion:(id)completion;
- (void)startInstallingNonEnterpriseAppForRequest:(id)request completion:(id)completion;
- (void)startRedeemingAppWithCode:(id)code completion:(id)completion;
- (void)startUninstallingAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion;
- (void)updateBundleIDPersonaIDMappingForPersonaID:(id)d addingBundleID:(id)iD completionHandler:(id)handler;
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

    metadataPath = [objc_opt_class() metadataPath];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:metadataPath];

    if (v9)
    {
      v34 = 0;
      v10 = [NSData dataWithContentsOfFile:metadataPath options:0 error:&v34];
      v11 = v34;
      if (!v10)
      {
        v26 = [NSString stringWithFormat:@"Could not read app management plist at path: %@, error: %@", metadataPath, v11];
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
  _metadataByBundleIdentifier = [(DMDAppController *)self _metadataByBundleIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %p Apps: %@>", v3, self, _metadataByBundleIdentifier];;

  return v5;
}

- (void)getBundleIdentifierForManifestURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  if (lCopy)
  {
    if (completionCopy)
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
    host = [lCopy host];
    *buf = 138543362;
    v15 = host;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for manifest URL from: %{public}@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010488;
  v12[3] = &unk_1000CDE10;
  v13 = v8;
  v11 = v8;
  [(DMDAppController *)self _getEnterpriseAppMetadataForManifestURL:lCopy completion:v12];
}

- (void)getBundleIdentifierForAppRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = completionCopy;
  if (requestCopy)
  {
    if (completionCopy)
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
    v16 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for request: %{public}@", &v15, 0xCu);
  }

  bundleIdentifier = [requestCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    (v8)[2](v8, bundleIdentifier, 0);
  }

  else
  {
    storeItemIdentifier = [requestCopy storeItemIdentifier];
    if (storeItemIdentifier)
    {
      v12 = DMFAppLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = storeItemIdentifier;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Get bundle identifier for store item identifier: %{public}@", &v15, 0xCu);
      }

      storeItemIdentifier2 = [requestCopy storeItemIdentifier];
      personaIdentifier = [requestCopy personaIdentifier];
      [(DMDAppController *)self getBundleIdentifierForStoreItemIdentifier:storeItemIdentifier2 personaIdentifier:personaIdentifier completion:v8];
    }

    else
    {
      storeItemIdentifier2 = [requestCopy manifestURL];
      [(DMDAppController *)self getBundleIdentifierForManifestURL:storeItemIdentifier2 completion:v8];
    }
  }
}

- (void)getMetadataForAppRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = completionCopy;
  if (requestCopy)
  {
    if (completionCopy)
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
  manifestURL = [requestCopy manifestURL];

  if (manifestURL)
  {
    manifestURL2 = [requestCopy manifestURL];
    [(DMDAppController *)self _getEnterpriseAppMetadataForManifestURL:manifestURL2 completion:v8];
  }

  else
  {
    v11 = DMFAppLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = requestCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Get metadata for non-enterprise app request: %{public}@", &v12, 0xCu);
    }

    [(DMDAppController *)self getMetadataForNonEnterpriseAppRequest:requestCopy completion:v8];
  }
}

- (id)managementInformationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_10007C9EC();
  }

  v5 = [(DMDAppController *)self _metadataForBundleIdentifier:identifierCopy];
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

- (BOOL)setManagementInformation:(id)information forBundleIdentifier:(id)identifier error:(id *)error
{
  informationCopy = information;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_10007CA60();
    if (informationCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    _newMetadataDictionary = 0;
    goto LABEL_8;
  }

  if (!informationCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  _newMetadataDictionary = [(DMDAppController *)self _metadataForBundleIdentifier:identifierCopy];
  if (!_newMetadataDictionary)
  {
    _newMetadataDictionary = [(DMDAppController *)self _newMetadataDictionary];
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [informationCopy state]);
  [_newMetadataDictionary setObject:v11 forKeyedSubscript:@"state"];

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [informationCopy options]);
  [_newMetadataDictionary setObject:v12 forKeyedSubscript:@"flags"];

  redemptionCode = [informationCopy redemptionCode];
  [_newMetadataDictionary setObject:redemptionCode forKeyedSubscript:@"RedemptionCode"];

  unusedRedemptionCode = [informationCopy unusedRedemptionCode];
  [_newMetadataDictionary setObject:unusedRedemptionCode forKeyedSubscript:@"UnusedRedemptionCode"];

LABEL_8:
  v15 = [(DMDAppController *)self _setMetadata:_newMetadataDictionary forBundleIdentifier:identifierCopy error:error];

  return v15;
}

- (BOOL)writeManagementInformationToDiskWithError:(id *)error
{
  manifest = [(DMDAppController *)self manifest];
  v5 = [NSPropertyListSerialization dataWithPropertyList:manifest format:200 options:0 error:error];

  if (v5)
  {
    metadataPath = [objc_opt_class() metadataPath];
    v7 = [NSURL fileURLWithPath:metadataPath isDirectory:0];

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

        if (!error)
        {
          goto LABEL_14;
        }

        v16 = NSUnderlyingErrorKey;
        v17 = v9;
        v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v13 = DMFErrorWithCodeAndUserInfo();
        *error = v13;
      }

      else
      {
        if (v11)
        {
          sub_10007CB4C(v10);
        }

        if (!error)
        {
          goto LABEL_14;
        }

        v12 = DMFErrorWithCodeAndUserInfo();
        *error = v12;
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
  queue = [(DMDAppController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010E4C;
  block[3] = &unk_1000CDE38;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(queue, block);

  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)updateBundleIDPersonaIDMappingForPersonaID:(id)d addingBundleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (dCopy)
  {
    managedBundleIdentifiers = [(DMDAppController *)self managedBundleIdentifiers];
    v13 = managedBundleIdentifiers;
    if (iDCopy)
    {
      v14 = [managedBundleIdentifiers arrayByAddingObject:iDCopy];

      v13 = v14;
    }

    v15 = +[UMUserManager sharedManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001103C;
    v17[3] = &unk_1000CDE60;
    v18 = v13;
    v19 = dCopy;
    v20 = v11;
    v16 = v13;
    [v15 setBundlesIdentifiers:v16 forPersonaWithPersonaUniqueString:v19 completionHandler:v17];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (BOOL)removePersonaMappingForBundleID:(id)d error:(id *)error
{
  errorCopy = error;
  dCopy = d;
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
        userPersonaBundleIDList = [v11 userPersonaBundleIDList];
        v13 = [userPersonaBundleIDList containsObject:dCopy];

        if (v13)
        {
          userPersonaUniqueString = [v11 userPersonaUniqueString];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100011350;
          v19[3] = &unk_1000CDE88;
          v19[4] = &v24;
          [(DMDAppController *)self updateBundleIDPersonaIDMappingForPersonaID:userPersonaUniqueString addingBundleID:0 completionHandler:v19];

          v16 = v25[5];
          if (v16)
          {
            LOBYTE(v8) = 0;
            v14 = 0;
            if (errorCopy)
            {
              *errorCopy = v16;
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

- (id)VPNUUIDStringForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"VPNUUID"];

  return v5;
}

- (BOOL)setVPNUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set VPN UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"VPNUUID" toValue:stringCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)cellularSliceUUIDStringForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"CellularSliceUUID"];

  return v5;
}

- (BOOL)setCellularSliceUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set cellular slice UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"CellularSliceUUID" toValue:stringCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)contentFilterUUIDStringForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"ContentFilterUUID"];

  return v5;
}

- (BOOL)setContentFilterUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set content filter UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"ContentFilterUUID" toValue:stringCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)DNSProxyUUIDStringForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"DNSProxyUUID"];

  return v5;
}

- (BOOL)setDNSProxyUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set DNS proxy UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"DNSProxyUUID" toValue:stringCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)relayUUIDStringForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"RelayUUID"];

  return v5;
}

- (BOOL)setRelayUUIDString:(id)string forBundleIdentifier:(id)identifier error:(id *)error
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set relay UUID for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"RelayUUID" toValue:stringCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)associatedDomainsForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AssociatedDomains"];

  return v5;
}

- (BOOL)setAssociatedDomains:(id)domains forBundleIdentifier:(id)identifier error:(id *)error
{
  domainsCopy = domains;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [domainsCopy debugDescription];
    *buf = 138543618;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set associated domains for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v12 = [(DMDAppController *)self _updateMetadataSettingKey:@"AssociatedDomains" toValue:domainsCopy forBundleIdentifier:identifierCopy error:&v15];
  v13 = v15;
  if (error && !v12)
  {
    v13 = v13;
    *error = v13;
  }

  return v12;
}

- (id)associatedDomainsEnableDirectDownloadsForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];

  return v5;
}

- (BOOL)setAssociatedDomainsEnableDirectDownloads:(id)downloads forBundleIdentifier:(id)identifier error:(id *)error
{
  downloadsCopy = downloads;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = downloadsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set associated domains enable direct downloads for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AssociatedDomainsEnableDirectDownloads" toValue:downloadsCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)removabilityForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"Removable"];

  return v5;
}

- (void)setRemovability:(id)removability forBundleIdentifier:(id)identifier completion:(id)completion
{
  removabilityCopy = removability;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = identifierCopy;
    v30 = 2114;
    v31 = removabilityCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set removability for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001217C;
  v25[3] = &unk_1000CDEB0;
  v25[4] = self;
  v12 = identifierCopy;
  v26 = v12;
  v27 = completionCopy;
  v13 = completionCopy;
  v14 = objc_retainBlock(v25);
  if (removabilityCopy)
  {
    bOOLValue = [removabilityCopy BOOLValue];
    v16 = 1;
    if (!bOOLValue)
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
  v22 = removabilityCopy;
  v17 = removabilityCopy;
  v18 = v14;
  v19 = v12;
  [IXAppInstallCoordinator removabilityForAppWithBundleID:v19 completion:v20];
}

- (id)tapToPayScreenLockForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"TapToPayScreenLock"];

  return v5;
}

+ (void)_setTapToPayAttribute:(id)attribute forBundleIdentifier:(id)identifier
{
  attributeCopy = attribute;
  identifierCopy = identifier;
  v7 = DMFAppLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (attributeCopy)
  {
    if (v8)
    {
      sub_10007CD08(attributeCopy, v7);
    }

    [sub_10001262C() setMDMAppAttribute:0 withValue:objc_msgSend(attributeCopy forBundleID:{"BOOLValue"), identifierCopy}];
  }

  else
  {
    if (v8)
    {
      sub_10007CD80(v7);
    }

    [sub_10001262C() removeMDMAppAttribute:0 forBundleID:identifierCopy];
  }
}

- (void)setTapToPayScreenLock:(id)lock forBundleIdentifier:(id)identifier completion:(id)completion
{
  lockCopy = lock;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = lockCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setTapToPayScreenLock for bundle identifier %{public}@: %{public}@", buf, 0x16u);
  }

  [objc_opt_class() _setTapToPayAttribute:lockCopy forBundleIdentifier:identifierCopy];
  v13 = 0;
  [(DMDAppController *)self _updateMetadataSettingKey:@"TapToPayScreenLock" toValue:lockCopy forBundleIdentifier:identifierCopy error:&v13];
  v12 = v13;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (id)allowUserToHideForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AllowUserToHide"];

  return v5;
}

- (BOOL)setAllowUserToHide:(id)hide forBundleIdentifier:(id)identifier error:(id *)error
{
  hideCopy = hide;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = hideCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set allow user to hide (%@) for bundle identifier: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AllowUserToHide" toValue:hideCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (id)allowUserToLockForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"Attributes"];
  v5 = [v4 objectForKeyedSubscript:@"AllowUserToLock"];

  return v5;
}

- (BOOL)setAllowUserToLock:(id)lock forBundleIdentifier:(id)identifier error:(id *)error
{
  lockCopy = lock;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = lockCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set allow user to lock (%@) for bundle identifier: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  v11 = [(DMDAppController *)self _updateMetadataSettingKey:@"AllowUserToLock" toValue:lockCopy forBundleIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (error && !v11)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)_updateMetadataSettingKey:(id)key toValue:(id)value forBundleIdentifier:(id)identifier error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  identifierCopy = identifier;
  _newMetadataDictionary = [(DMDAppController *)self _metadataForBundleIdentifier:identifierCopy];
  if (!_newMetadataDictionary)
  {
    if (!valueCopy)
    {
      v15 = 1;
      goto LABEL_10;
    }

    _newMetadataDictionary = [(DMDAppController *)self _newMetadataDictionary];
  }

  v14 = [_newMetadataDictionary objectForKeyedSubscript:@"Attributes"];
  [v14 setObject:valueCopy forKeyedSubscript:keyCopy];

  v18 = 0;
  v15 = [(DMDAppController *)self _setMetadata:_newMetadataDictionary forBundleIdentifier:identifierCopy error:&v18];
  v16 = v18;
  if (!v15)
  {
    if (!v16)
    {
      v16 = DMFErrorWithCodeAndUserInfo();
    }

    if (error)
    {
      v16 = v16;
      *error = v16;
    }
  }

LABEL_10:
  return v15;
}

- (id)configurationForBundleIdentifier:(id)identifier
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:639 description:{@"%@ must implement %@", v6, v7}];

  return 0;
}

- (BOOL)setConfiguration:(id)configuration forBundleIdentifier:(id)identifier error:(id *)error
{
  v7 = [NSAssertionHandler currentHandler:configuration];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:644 description:{@"%@ must implement %@", v8, v9}];

  return 0;
}

- (id)feedbackForBundleIdentifier:(id)identifier
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:649 description:{@"%@ must implement %@", v6, v7}];

  return 0;
}

- (BOOL)setFeedback:(id)feedback forBundleIdentifier:(id)identifier error:(id *)error
{
  v7 = [NSAssertionHandler currentHandler:feedback];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:654 description:{@"%@ must implement %@", v8, v9}];

  return 0;
}

- (BOOL)setSourceIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = bundleIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set source ID %@ for bundle identifier: %{public}@", &v17, 0x16u);
  }

  v11 = [(DMDAppController *)self _metadataForBundleIdentifier:bundleIdentifierCopy];
  if (v11)
  {
    _newMetadataDictionary = v11;
    v13 = [v11 objectForKeyedSubscript:@"source"];
  }

  else
  {
    if (!identifierCopy)
    {
      v15 = 1;
      goto LABEL_12;
    }

    _newMetadataDictionary = [(DMDAppController *)self _newMetadataDictionary];
    v13 = identifierCopy;
  }

  v14 = v13;
  [_newMetadataDictionary setObject:identifierCopy forKeyedSubscript:@"source"];
  if ((identifierCopy == 0) != (v14 == 0) || v14 && ([identifierCopy isEqualToString:v14] & 1) == 0)
  {
    [objc_opt_class() _sendAppStatusChangeNotification];
  }

  v15 = [(DMDAppController *)self _setMetadata:_newMetadataDictionary forBundleIdentifier:bundleIdentifierCopy error:error];

LABEL_12:
  return v15;
}

- (id)sourceIdentifierForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = [v3 objectForKeyedSubscript:@"source"];

  return v4;
}

- (void)getBundleIdentifierForStoreItemIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier completion:(id)completion
{
  v9 = [NSAssertionHandler currentHandler:identifier];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:707 description:{@"%@ must implement %@", v7, v8}];
}

- (void)getMetadataForNonEnterpriseAppRequest:(id)request completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:request];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:712 description:{@"%@ must implement %@", v6, v7}];
}

- (void)handleFetchRequest:(id)request completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:request];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:717 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startInstallingEnterpriseAppWithManifestURL:(id)l completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:l];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:722 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startInstallingNonEnterpriseAppForRequest:(id)request completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:request];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:727 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startRedeemingAppWithCode:(id)code completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:code];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:732 description:{@"%@ must implement %@", v6, v7}];
}

- (void)cancelAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:identifier];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:737 description:{@"%@ must implement %@", v6, v7}];
}

- (void)resumeAppInstallationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:identifier];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:742 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startUpdatingAppForRequest:(id)request metadata:(id)metadata completion:(id)completion
{
  v9 = [NSAssertionHandler currentHandler:request];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:748 description:{@"%@ must implement %@", v7, v8}];
}

- (void)cancelAppUpdateWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:identifier];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:753 description:{@"%@ must implement %@", v6, v7}];
}

- (void)resumeAppUpdateWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:identifier];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppController.m" lineNumber:758 description:{@"%@ must implement %@", v6, v7}];
}

- (void)startUninstallingAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v8 = [NSAssertionHandler currentHandler:identifier];
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

- (void)didStartInstallingForLifeCycle:(id)cycle
{
  v6[0] = &off_1000D77D8;
  v6[1] = &off_1000D7808;
  v7[0] = &off_1000D77F0;
  v7[1] = &off_1000D77F0;
  v6[2] = &off_1000D7820;
  v7[2] = &off_1000D7838;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didFailInstallingForLifeCycle:(id)cycle
{
  v6 = &off_1000D77F0;
  v7 = &off_1000D7850;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didFinishInstallingForLifeCycle:(id)cycle
{
  v6[0] = &off_1000D77F0;
  v6[1] = &off_1000D77D8;
  v7[0] = &off_1000D7868;
  v7[1] = &off_1000D7868;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didStartUpdatingForLifeCycle:(id)cycle
{
  v6 = &off_1000D7868;
  v7 = &off_1000D7880;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didFinishUpdatingForLifeCycle:(id)cycle
{
  v6 = &off_1000D7880;
  v7 = &off_1000D7868;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didFinishUninstallingForLifeCycle:(id)cycle
{
  v6 = &off_1000D7868;
  v7 = &off_1000D77D8;
  cycleCopy = cycle;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(DMDAppController *)self _applyChangeInLifeCycle:cycleCopy stateMap:v5];
}

- (void)didResetStateForLifeCycle:(id)cycle state:(unint64_t)state
{
  cycleCopy = cycle;
  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [cycleCopy bundleIdentifier];
    v9 = 138543362;
    v10 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DMDAppController::didResetStateForLifeCycle(%{public}@)", &v9, 0xCu);
  }

  [(DMDAppController *)self _resetStateForChangeInLifeCycle:cycleCopy newState:state];
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
  queue = [(DMDAppController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014018;
  block[3] = &unk_1000CDE38;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(queue, block);

  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)setVPNUUIDString:(id)string cellularSliceUUIDString:(id)dString contentFilterUUIDString:(id)iDString DNSProxyUUIDString:(id)uIDString relayUUIDString:(id)uUIDString associatedDomains:(id)domains enableDirectDownloads:(id)downloads allowUserToHide:(id)self0 allowUserToLock:(id)self1 configuration:(id)self2 options:(unint64_t)self3 sourceIdentifier:(id)self4 forBundleIdentifier:(id)self5
{
  dStringCopy = dString;
  iDStringCopy = iDString;
  uIDStringCopy = uIDString;
  uUIDStringCopy = uUIDString;
  domainsCopy = domains;
  downloadsCopy = downloads;
  hideCopy = hide;
  lockCopy = lock;
  configurationCopy = configuration;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  stringCopy = string;
  v24 = DMFAppLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = bundleIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bulk set app attributes, configuration, source ID, and management information for bundle identifier: %{public}@", buf, 0xCu);
  }

  v85 = 0;
  v25 = [(DMDAppController *)self setVPNUUIDString:stringCopy forBundleIdentifier:bundleIdentifierCopy error:&v85];

  v26 = v85;
  v27 = uIDStringCopy;
  if ((v25 & 1) == 0)
  {
    v28 = DMFAppLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10007CDC4();
    }
  }

  v84 = v26;
  v29 = [(DMDAppController *)self setCellularSliceUUIDString:dStringCopy forBundleIdentifier:bundleIdentifierCopy error:&v84];
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
  v32 = [(DMDAppController *)self setContentFilterUUIDString:iDStringCopy forBundleIdentifier:bundleIdentifierCopy error:&v83];
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
  v35 = [(DMDAppController *)self setDNSProxyUUIDString:uIDStringCopy forBundleIdentifier:bundleIdentifierCopy error:&v82];
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
  v38 = [(DMDAppController *)self setRelayUUIDString:uUIDStringCopy forBundleIdentifier:bundleIdentifierCopy error:&v81];
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
  v41 = [(DMDAppController *)self setAssociatedDomains:domainsCopy forBundleIdentifier:bundleIdentifierCopy error:&v80];
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
  v44 = [(DMDAppController *)self setAssociatedDomainsEnableDirectDownloads:downloadsCopy forBundleIdentifier:bundleIdentifierCopy error:&v79];
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
  v47 = [(DMDAppController *)self setAllowUserToHide:hideCopy forBundleIdentifier:bundleIdentifierCopy error:&v78];
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
  v50 = [(DMDAppController *)self setAllowUserToLock:lockCopy forBundleIdentifier:bundleIdentifierCopy error:&v77];
  v51 = v77;

  if ((v50 & 1) == 0)
  {
    v52 = DMFAppLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10007D144();
    }
  }

  if ([identifierCopy isEqualToString:DMFAppSourceDeclarativeManagement])
  {
    v53 = dStringCopy;
    v54 = iDStringCopy;
    v55 = v51;
  }

  else
  {
    v76 = v51;
    v56 = [(DMDAppController *)self setConfiguration:configurationCopy forBundleIdentifier:bundleIdentifierCopy error:&v76];
    v55 = v76;

    v53 = dStringCopy;
    if (v56)
    {
      v54 = iDStringCopy;
    }

    else
    {
      v57 = DMFAppLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10007D1B4();
      }

      v54 = iDStringCopy;
    }
  }

  v75 = v55;
  v58 = [(DMDAppController *)self setSourceIdentifier:identifierCopy forBundleIdentifier:bundleIdentifierCopy error:&v75];
  v59 = v75;

  if ((v58 & 1) == 0)
  {
    v60 = DMFAppLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10007D224();
    }
  }

  v61 = [(DMDAppController *)self managementInformationForBundleIdentifier:bundleIdentifierCopy];
  if (!v61)
  {
    v61 = objc_opt_new();
  }

  [v61 setOptions:options];
  v74 = v59;
  v62 = [(DMDAppController *)self setManagementInformation:v61 forBundleIdentifier:bundleIdentifierCopy error:&v74];
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

- (unint64_t)stateForBundleIdentifier:(id)identifier
{
  v3 = [(DMDAppController *)self _metadataForBundleIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"state"];
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 19;
  }

  return unsignedIntegerValue;
}

- (BOOL)setState:(unint64_t)state forBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = DMFAppLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [DMFAppManagementInformation stringForState:state];
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set state: %{public}@, for bundle identifier: %{public}@", &v18, 0x16u);
  }

  _newMetadataDictionary = [(DMDAppController *)self _metadataForBundleIdentifier:identifierCopy];
  if (!_newMetadataDictionary)
  {
    _newMetadataDictionary = [(DMDAppController *)self _newMetadataDictionary];
  }

  v12 = [_newMetadataDictionary objectForKeyedSubscript:@"state"];
  v13 = v12;
  if (v12)
  {
    unsignedIntegerValue = [v12 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 19;
  }

  v15 = [NSNumber numberWithUnsignedInteger:state];
  [_newMetadataDictionary setObject:v15 forKeyedSubscript:@"state"];

  v16 = [(DMDAppController *)self _setMetadata:_newMetadataDictionary forBundleIdentifier:identifierCopy error:error];
  if (unsignedIntegerValue != state)
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
        state = [v11 state];
        if ((state - 9) >= 3)
        {
          if (state == 15)
          {
            v16 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v9];
            currentState = [v16 currentState];

            if (currentState)
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

          if (state != 18)
          {
            v20 = v7;
LABEL_22:
            unusedRedemptionCode = [v11 unusedRedemptionCode];
            if (unusedRedemptionCode)
            {
              [v11 setUnusedRedemptionCode:0];
              redemptionCode = [v11 redemptionCode];
              v23 = [redemptionCode isEqualToString:unusedRedemptionCode];

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

        unusedRedemptionCode = DMFAppLog();
        if (os_log_type_enabled(unusedRedemptionCode, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v38 = v9;
          v39 = 2114;
          v40 = v14;
          _os_log_error_impl(&_mh_execute_header, unusedRedemptionCode, OS_LOG_TYPE_ERROR, "Could not remove management information for bundle identifier: %{public}@, error: %{public}@", buf, 0x16u);
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
    selfCopy = self;
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
            unsignedIntegerValue = [v14 unsignedIntegerValue];
            v25 = v24;
            v16 = [(DMDAppController *)self setState:unsignedIntegerValue forBundleIdentifier:v6 error:&v25];
            v17 = v25;

            if ((v16 & 1) == 0)
            {
              v18 = DMFAppLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = [DMFAppManagementInformation stringForState:unsignedIntegerValue];
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
          self = selfCopy;
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

- (void)_applyChangeInLifeCycle:(id)cycle stateMap:(id)map
{
  mapCopy = map;
  cycleCopy = cycle;
  bundleIdentifier = [cycleCopy bundleIdentifier];
  v9 = [(DMDAppController *)self _isManagedBundleIdentifier:bundleIdentifier];

  if (v9)
  {
    bundleIdentifier2 = [cycleCopy bundleIdentifier];

    v11 = [(DMDAppController *)self stateForBundleIdentifier:bundleIdentifier2];
    v12 = [NSNumber numberWithUnsignedInteger:v11];
    v13 = [mapCopy objectForKeyedSubscript:v12];

    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      v15 = DMFAppLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [DMFAppManagementInformation stringForState:v11];
        v17 = [DMFAppManagementInformation stringForState:unsignedIntegerValue];
        *buf = 138543874;
        v26 = v16;
        v27 = 2114;
        v28 = v17;
        v29 = 2114;
        v30 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Observed change in life cycle from old state: %{public}@ to new state: %{public}@ for bundle identifier: %{public}@", buf, 0x20u);
      }

      v24 = 0;
      v18 = [(DMDAppController *)self setState:unsignedIntegerValue forBundleIdentifier:bundleIdentifier2 error:&v24];
      v19 = v24;
      if ((v18 & 1) == 0)
      {
        v20 = DMFAppLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = [DMFAppManagementInformation stringForState:unsignedIntegerValue];
          *buf = 138543874;
          v26 = v23;
          v27 = 2114;
          v28 = bundleIdentifier2;
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
        v28 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Observed change in life cycle from old state: %{public}@ to missing new state for bundle identifier: %{public}@", buf, 0x16u);
      }

      [objc_opt_class() _sendAppStatusChangeNotification];
    }
  }

  else
  {
    [(DMDAppController *)self _stopObservingLifeCycle:cycleCopy];
    bundleIdentifier2 = cycleCopy;
  }
}

- (void)_resetStateForChangeInLifeCycle:(id)cycle newState:(unint64_t)state
{
  cycleCopy = cycle;
  v7 = DMFAppLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [cycleCopy bundleIdentifier];
    *buf = 138543362;
    v27 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DMDAppController::_resetStateForChangeInLifeCycle(%{public}@)", buf, 0xCu);
  }

  if (qword_1000FEF58 != -1)
  {
    sub_10007D32C();
  }

  bundleIdentifier2 = [cycleCopy bundleIdentifier];
  v10 = [(DMDAppController *)self _isManagedBundleIdentifier:bundleIdentifier2];

  if (v10)
  {
    bundleIdentifier3 = [cycleCopy bundleIdentifier];
    v12 = [(DMDAppController *)self stateForBundleIdentifier:bundleIdentifier3];
    if ([objc_opt_class() _stateCanBeResetSafely:v12])
    {
      v13 = qword_1000FEF50;
      v14 = [NSNumber numberWithUnsignedInteger:state];
      v15 = [v13 objectForKeyedSubscript:v14];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = DMFAppLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [DMFAppManagementInformation stringForState:v12];
        v19 = [DMFAppManagementInformation stringForState:unsignedIntegerValue];
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v19;
        v30 = 2114;
        v31 = bundleIdentifier3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Reset state due to change in life cycle, old state: %{public}@ to new state: %{public}@ for bundle identifier: %{public}@", buf, 0x20u);
      }

      v25 = 0;
      v20 = [(DMDAppController *)self setState:unsignedIntegerValue forBundleIdentifier:bundleIdentifier3 error:&v25];
      v21 = v25;
      if ((v20 & 1) == 0)
      {
        v22 = DMFAppLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = [DMFAppManagementInformation stringForState:unsignedIntegerValue];
          *buf = 138543874;
          v27 = v24;
          v28 = 2114;
          v29 = bundleIdentifier3;
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
        v29 = bundleIdentifier3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reset state due to change in life cycle, old state preserved: %{public}@, for bundle identifier: %{public}@", buf, 0x16u);
      }
    }

    [objc_opt_class() _sendAppStatusChangeNotification];
  }

  else
  {
    [(DMDAppController *)self _stopObservingLifeCycle:cycleCopy];
  }
}

- (BOOL)_isManagedBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  managedBundleIdentifiers = [(DMDAppController *)self managedBundleIdentifiers];
  identifierCopy = [NSPredicate predicateWithFormat:@"self == %@", identifierCopy];

  v7 = [managedBundleIdentifiers filteredArrayUsingPredicate:identifierCopy];
  firstObject = [v7 firstObject];
  v9 = firstObject != 0;

  return v9;
}

- (void)_stopObservingLifeCycle:(id)cycle
{
  cycleCopy = cycle;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [cycleCopy bundleIdentifier];
    v7 = 138543362;
    v8 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing lifecycle observer for an app that is no longer managed: %{public}@", &v7, 0xCu);
  }

  [cycleCopy removeObserver:self];
  [objc_opt_class() _sendAppStatusChangeNotification];
}

+ (void)_sendAppStatusChangeNotification
{
  uTF8String = [DMFAppStatusDidChangeNotificationName UTF8String];

  notify_post(uTF8String);
}

- (id)_metadataForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100010E34;
  v18 = sub_100010E44;
  v19 = 0;
  objc_initWeak(&location, self);
  queue = [(DMDAppController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015E14;
  v9[3] = &unk_1000CDF68;
  v11 = &v14;
  objc_copyWeak(&v12, &location);
  v10 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v9);

  v7 = v15[5];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (BOOL)_setMetadata:(id)metadata forBundleIdentifier:(id)identifier error:(id *)error
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
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
  queue = [(DMDAppController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000160E8;
  v16[3] = &unk_1000CDF90;
  objc_copyWeak(&v21, &location);
  v12 = identifierCopy;
  v17 = v12;
  v13 = metadataCopy;
  v18 = v13;
  v19 = &v23;
  p_buf = &buf;
  dispatch_sync(queue, v16);

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
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
  manifest = [(DMDAppController *)self manifest];
  v3 = [manifest objectForKeyedSubscript:@"metadataByBundleID"];

  return v3;
}

- (id)_newMetadataDictionary
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:5];
  v3 = [NSMutableDictionary dictionaryWithCapacity:1];
  [v2 setObject:v3 forKeyedSubscript:@"Attributes"];

  return v2;
}

- (void)_getEnterpriseAppMetadataForManifestURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  if (lCopy)
  {
    if (completionCopy)
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
    host = [lCopy host];
    *buf = 138543362;
    v23 = host;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get metadata for manifest URL from: %{public}@", buf, 0xCu);
  }

  v11 = [NSURLRequest requestWithURL:lCopy];
  v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v13 = [NSURLSession sessionWithConfiguration:v12];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100016468;
  v19 = &unk_1000CDFB8;
  selfCopy = self;
  v21 = v8;
  v14 = v8;
  v15 = [v13 dataTaskWithRequest:v11 completionHandler:&v16];
  [v15 resume];
}

- (void)_getEnterpriseAppMetadataFromData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v14 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:data options:0 format:0 error:&v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"items"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] && objc_msgSend(v7, "count") < 2)
    {
      firstObject = [v7 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [firstObject objectForKeyedSubscript:@"metadata"];
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
                completionCopy[2](completionCopy, v13, 0);
              }

              else
              {
                v13 = DMFErrorWithCodeAndUserInfo();
                (completionCopy)[2](completionCopy, 0, v13);
              }
            }

            else
            {
              v12 = DMFErrorWithCodeAndUserInfo();
              (completionCopy)[2](completionCopy, 0, v12);
            }
          }

          else
          {
            v11 = DMFErrorWithCodeAndUserInfo();
            (completionCopy)[2](completionCopy, 0, v11);
          }
        }

        else
        {
          v10 = DMFErrorWithCodeAndUserInfo();
          (completionCopy)[2](completionCopy, 0, v10);
        }
      }

      else
      {
        v9 = DMFErrorWithCodeAndUserInfo();
        (completionCopy)[2](completionCopy, 0, v9);
      }
    }

    else
    {
      firstObject = DMFErrorWithCodeAndUserInfo();
      (completionCopy)[2](completionCopy, 0, firstObject);
    }
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

@end