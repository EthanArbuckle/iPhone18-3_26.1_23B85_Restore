@interface MCCellularPrivateNetworkPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (id)_ctPrivateNetworkProfile:(id)a3;
- (id)_installPrivateNetworkProfile;
- (void)_uninstallPrivateNetworkProfile;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCCellularPrivateNetworkPayloadHandler

- (id)_ctPrivateNetworkProfile:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 dataSetName];
  [v4 setDataSetName:v5];

  v6 = [v3 versionNumber];
  [v4 setVersionNumber:v6];

  v7 = [v3 csgNetworkIdentifier];
  [v4 setCsgNetworkIdentifier:v7];

  v8 = [v3 networkIdentifier];

  [v4 setNetworkIdentifier:v8];

  return v4;
}

- (id)_installPrivateNetworkProfile
{
  v37 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:v3];
  [v4 setCellularDataPreferred:{objc_msgSend(v3, "cellularDataPreferred")}];
  v5 = [v3 enableNRStandalone];

  if (v5)
  {
    v6 = [v3 enableNRStandalone];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v3 enableNRStandalone];
      v10 = [v9 BOOLValue];

      if (v10)
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
  v12 = [v3 geofenceList];
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = objc_opt_new();
        v19 = [v17 longitude];
        [v18 setLongitude:v19];

        v20 = [v17 latitude];
        [v18 setLatitude:v20];

        v21 = [v17 radius];
        [v18 setRadius:v21];

        v22 = [v17 geofenceId];
        [v18 setGeofenceId:v22];

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v14);
  }

  v23 = [NSArray arrayWithArray:v11];
  [v4 setGeofenceList:v23];

  v24 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v3 dataSetName];
    v27 = [v3 versionNumber];
    *buf = 138412546;
    v43 = v26;
    v44 = 2112;
    v45 = v27;
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

    v31 = [v29 code];
    v32 = MCPrivateNetworkErrorDomain;
    v33 = [NSNumber numberWithUnsignedInteger:v31];
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
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:v4];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 dataSetName];
    v9 = [v4 versionNumber];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to uninstall private network payload %@ - %@", &v15, 0x16u);
  }

  v10 = [v3 removePrivateNetworkProfile:v5];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v4 dataSetName];
      v14 = [v4 versionNumber];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Uninstall private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v7 = [(MCCellularPrivateNetworkPayloadHandler *)self _installPrivateNetworkProfile:a3];
  if (a6 && v7)
  {
    v7 = v7;
    *a6 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (void)setAside
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:v4];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 dataSetName];
    v9 = [v4 versionNumber];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting aside private network payload %@ - %@ aside", &v15, 0x16u);
  }

  v10 = [v3 updatePrivateNetworkProfile:v5 setProfileAside:1];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v4 dataSetName];
      v14 = [v4 versionNumber];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Setting aside private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (void)unsetAside
{
  v3 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [(MCCellularPrivateNetworkPayloadHandler *)self _ctPrivateNetworkProfile:v4];
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 dataSetName];
    v9 = [v4 versionNumber];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unsetting aside private network payload %@ - %@ aside", &v15, 0x16u);
  }

  v10 = [v3 updatePrivateNetworkProfile:v5 setProfileAside:0];
  if (v10)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v4 dataSetName];
      v14 = [v4 versionNumber];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unsetting aside private network payload %@ - %@ failed with error %@", &v15, 0x20u);
    }
  }
}

@end