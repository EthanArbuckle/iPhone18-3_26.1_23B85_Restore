@interface MCCellularPrivateNetworkPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)_ctPrivateNetworkProfile:(id)profile;
- (id)_installPrivateNetworkProfile;
- (void)_uninstallPrivateNetworkProfile;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCCellularPrivateNetworkPayloadHandler

- (id)_ctPrivateNetworkProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_opt_new();
  dataSetName = [profileCopy dataSetName];
  [v4 setDataSetName:dataSetName];

  versionNumber = [profileCopy versionNumber];
  [v4 setVersionNumber:versionNumber];

  csgNetworkIdentifier = [profileCopy csgNetworkIdentifier];
  [v4 setCsgNetworkIdentifier:csgNetworkIdentifier];

  networkIdentifier = [profileCopy networkIdentifier];

  [v4 setNetworkIdentifier:networkIdentifier];

  return v4;
}

- (id)_installPrivateNetworkProfile
{
  v37 = [[CoreTelephonyClient alloc] initWithQueue:0];
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:payload];
  [v4 setCellularDataPreferred:{objc_msgSend(payload, "cellularDataPreferred")}];
  enableNRStandalone = [payload enableNRStandalone];

  if (enableNRStandalone)
  {
    enableNRStandalone2 = [payload enableNRStandalone];
    bOOLValue = [enableNRStandalone2 BOOLValue];

    if (bOOLValue)
    {
      v8 = 1;
    }

    else
    {
      enableNRStandalone3 = [payload enableNRStandalone];
      bOOLValue2 = [enableNRStandalone3 BOOLValue];

      if (bOOLValue2)
      {
        goto LABEL_8;
      }

      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  [v4 setNRStandaloneMode:v8];
LABEL_8:
  v11 = +[NSMutableArray array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  geofenceList = [payload geofenceList];
  v13 = [geofenceList countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(geofenceList);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = objc_opt_new();
        longitude = [v17 longitude];
        [v18 setLongitude:longitude];

        latitude = [v17 latitude];
        [v18 setLatitude:latitude];

        radius = [v17 radius];
        [v18 setRadius:radius];

        geofenceId = [v17 geofenceId];
        [v18 setGeofenceId:geofenceId];

        [v11 addObject:v18];
      }

      v14 = [geofenceList countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v14);
  }

  v23 = [NSArray arrayWithArray:v11];
  [v4 setGeofenceList:v23];

  v24 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    dataSetName = [payload dataSetName];
    versionNumber = [payload versionNumber];
    *buf = 138412546;
    v43 = dataSetName;
    v44 = 2112;
    v45 = versionNumber;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Attempting to install new private network payload %@ - %@", buf, 0x16u);
  }

  v28 = [v37 installPrivateNetworkProfile:v4];
  if (v28)
  {
    v29 = v28;
    v30 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Installing private network payload failed with error %@", buf, 0xCu);
    }

    code = [v29 code];
    v32 = MCPrivateNetworkErrorDomain;
    v33 = [NSNumber numberWithUnsignedInteger:code];
    v34 = MCErrorArray();
    v35 = [NSError MCErrorWithDomain:v32 code:64000 descriptionArray:v34 errorType:MCErrorTypeFatal, v33, 0];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)_uninstallPrivateNetworkProfile
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  payload = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:payload];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    dataSetName = [payload dataSetName];
    versionNumber = [payload versionNumber];
    v15 = 138412546;
    v16 = dataSetName;
    v17 = 2112;
    v18 = versionNumber;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to uninstall private network payload %@ - %@", &v15, 0x16u);
  }

  v10 = [v3 removePrivateNetworkProfile:v5];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      dataSetName2 = [payload dataSetName];
      versionNumber2 = [payload versionNumber];
      v15 = 138412802;
      v16 = dataSetName2;
      v17 = 2112;
      v18 = versionNumber2;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Uninstall private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v7 = [(MCCellularPrivateNetworkPayloadHandler *)self _installPrivateNetworkProfile:installer];
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (void)setAside
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  payload = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:payload];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    dataSetName = [payload dataSetName];
    versionNumber = [payload versionNumber];
    v15 = 138412546;
    v16 = dataSetName;
    v17 = 2112;
    v18 = versionNumber;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting aside private network payload %@ - %@ aside", &v15, 0x16u);
  }

  v10 = [v3 updatePrivateNetworkProfile:v5 setProfileAside:1];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      dataSetName2 = [payload dataSetName];
      versionNumber2 = [payload versionNumber];
      v15 = 138412802;
      v16 = dataSetName2;
      v17 = 2112;
      v18 = versionNumber2;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Setting aside private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (void)unsetAside
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  payload = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:payload];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    dataSetName = [payload dataSetName];
    versionNumber = [payload versionNumber];
    v15 = 138412546;
    v16 = dataSetName;
    v17 = 2112;
    v18 = versionNumber;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unsetting aside private network payload %@ - %@ aside", &v15, 0x16u);
  }

  v10 = [v3 updatePrivateNetworkProfile:v5 setProfileAside:0];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      dataSetName2 = [payload dataSetName];
      versionNumber2 = [payload versionNumber];
      v15 = 138412802;
      v16 = dataSetName2;
      v17 = 2112;
      v18 = versionNumber2;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unsetting aside private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

@end