@interface MCNewWiFiPayloadHandler
+ (id)_originatorIdentifierFromInstallationOptions:(id)a3;
+ (id)_originatorNameFromInstallationOptions:(id)a3;
+ (id)managedWiFiNetworkNames;
- (BOOL)_applyProxyCredential:(id)a3;
- (BOOL)_configureEncryptionTypeForWiFiNetwork:(__WiFiNetwork *)a3 payload:(id)a4 outError:(id *)a5;
- (BOOL)_configureNetworkServiceForWiFiNetwork:(__WiFiNetwork *)a3 outError:(id *)a4;
- (BOOL)_installEAPConfiguration:(id)a3 isHotspot:(BOOL)a4 securityType:(id)a5 authProperties:(id)a6 username:(id)a7 password:(id)a8 identity:(__SecIdentity *)a9;
- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)a3;
- (BOOL)_isWiFiDaemonAvailable;
- (BOOL)_networkServiceRequired;
- (BOOL)_setEAPConfig:(id)a3 onNetwork:(__WiFiNetwork *)a4;
- (BOOL)_setEAPConfigUsingEAPConfigAPI:(id)a3;
- (BOOL)canInstallPayloadWithJoinBeforeFirstUnlock:(id)a3 error:(id *)a4;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (MCNewWiFiPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (id)profileMetadata;
- (id)userInputFields;
- (void)_removeEAPConfiguration;
- (void)_removeNetworkWithUUID:(id)a3 isAllowedBeforeFirstUnlock:(BOOL)a4;
- (void)_removeProxyCredential;
- (void)_updateWiFiCustomSetWithSetID:(id)a3 forSSID:(id)a4;
- (void)dealloc;
- (void)remove;
- (void)setAside;
- (void)setAsideEAPConfig;
- (void)unsetAside;
- (void)unsetAsideEAPConfig;
@end

@implementation MCNewWiFiPayloadHandler

- (MCNewWiFiPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v12.receiver = self;
  v12.super_class = MCNewWiFiPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v12 initWithPayload:a3 profileHandler:a4];
  if (v4)
  {
    v5 = WiFiManagerClientCreate();
    v4->_manager = v5;
    v6 = _MCLogObjects[0];
    if (v5)
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v7 = "MCNewWiFiPayloadHandler successfully created a WiFiManagerClient.";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, v11, 2u);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v7 = "MCNewWiFiPayloadHandler could not create a WiFiManagerClient. This payload handler will not function correctly.";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

  return v4;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v4.receiver = self;
  v4.super_class = MCNewWiFiPayloadHandler;
  [(MCNewWiFiPayloadHandler *)&v4 dealloc];
}

- (id)userInputFields
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 userInputFields];

  return v3;
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [(MCNewPayloadHandler *)self payload];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v11 = kMCIDUUIDKey;
    v12 = kMCIDResponseKey;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 objectForKey:{v11, v19}];
        v16 = [v14 objectForKey:v12];
        if ([v15 isEqualToString:@"UsernameUserInputKey"])
        {
          [v6 setUsername:v16];
        }

        else if ([v15 isEqualToString:@"PasswordUserInputKey"])
        {
          [v6 setPassword:v16];
        }

        else
        {
          v17 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler didn't ask for user input for key: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  return 1;
}

- (id)profileMetadata
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 UUID];
  v4 = [NSDictionary dictionaryWithObject:v3 forKey:kMCPayloadUUIDKey];

  return v4;
}

- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)a3
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = EAPOLClientProfileGetInformation();
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = kMCPayloadUUIDKey;
  v7 = [v4 objectForKey:kMCPayloadUUIDKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = [v5 objectForKey:v6];
  v10 = [v3 UUID];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (BOOL)_installEAPConfiguration:(id)a3 isHotspot:(BOOL)a4 securityType:(id)a5 authProperties:(id)a6 username:(id)a7 password:(id)a8 identity:(__SecIdentity *)a9
{
  v13 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(MCNewPayloadHandler *)self payload];
  v21 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v21)
  {
    v22 = v21;
    v61 = v16;
    v62 = v17;
    if (v13)
    {
      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANDomain();
      if (ProfileWithWLANDomain)
      {
        v24 = ProfileWithWLANDomain;
        CFRetain(ProfileWithWLANDomain);
LABEL_10:
        if (![(MCNewWiFiPayloadHandler *)self _isMetadataValid:v24, v61])
        {
          v31 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            v32 = v31;
            *buf = 138543362;
            v64 = objc_opt_class();
            v33 = v64;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}@ configuration for the Wi-Fi already exists", buf, 0xCu);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v29 = [v15 dataUsingEncoding:4];
      ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID();
      if (ProfileWithWLANSSID)
      {
        v24 = ProfileWithWLANSSID;
        CFRetain(ProfileWithWLANSSID);

        goto LABEL_10;
      }
    }

    v24 = EAPOLClientProfileCreate();
    if (!v24)
    {
      v44 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v45 = v44;
        *buf = 138543362;
        v64 = objc_opt_class();
        v46 = v64;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientProfileCreate() returned NULL", buf, 0xCu);
      }

      v28 = 0;
      v16 = v61;
      goto LABEL_49;
    }

LABEL_15:
    v34 = EAPOLClientItemIDCreateWithProfile();
    if (!v34)
    {
      v39 = _MCLogObjects[0];
      v17 = v62;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = objc_opt_class();
        *buf = 138543362;
        v64 = v41;
        v42 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_48;
    }

    v35 = v34;
    v36 = [v20 displayName];

    if (v36)
    {
      v37 = [v20 displayName];
      EAPOLClientProfileSetUserDefinedName();
    }

    EAPOLClientProfileSetAuthenticationProperties();
    v38 = [(MCNewWiFiPayloadHandler *)self profileMetadata];
    if (v38 && !EAPOLClientProfileSetInformation())
    {
      v47 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v48 = v47;
        v49 = objc_opt_class();
        *buf = 138543362;
        v64 = v49;
        v50 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientProfileSetInformation() failed", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v13)
    {
      EAPOLClientProfileSetWLANDomain();
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v43 = [v15 dataUsingEncoding:4];
      EAPOLClientProfileSetWLANSSIDAndSecurityType();

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if (v19 && !EAPOLClientItemIDSetPasswordItem())
    {
      v58 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v58;
        v59 = objc_opt_class();
        *buf = 138543362;
        v64 = v59;
        v54 = v59;
        v55 = "%{public}@ EAPOLClientItemIDSetPasswordItem() failed";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

LABEL_29:
    if (a9 && !EAPOLClientItemIDSetIdentity())
    {
      v56 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v56;
        v57 = objc_opt_class();
        *buf = 138543362;
        v64 = v57;
        v54 = v57;
        v55 = "%{public}@ EAPOLClientItemIDSetIdentity() failed";
        goto LABEL_45;
      }
    }

    else
    {
      if (EAPOLClientConfigurationSave())
      {
        v28 = 1;
LABEL_47:
        CFRelease(v35);
        v17 = v62;
LABEL_48:
        CFRelease(v24);
        v16 = v61;
LABEL_49:
        CFRelease(v22);
        goto LABEL_50;
      }

      v51 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v51;
        v53 = objc_opt_class();
        *buf = 138543362;
        v64 = v53;
        v54 = v53;
        v55 = "%{public}@ EAPOLClientConfigurationSave() failed";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v55, buf, 0xCu);
      }
    }

LABEL_46:
    v28 = 0;
    goto LABEL_47;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    *buf = 138543362;
    v64 = objc_opt_class();
    v27 = v64;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", buf, 0xCu);
  }

  v28 = 0;
LABEL_50:

  return v28;
}

- (void)_removeEAPConfiguration
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v4)
  {
    v5 = v4;
    v6 = [(MCNewPayloadHandler *)self profileHandler];
    v7 = [v6 isSetAside];
    v8 = qword_100136A20;

    if (v7)
    {
      if (!v8)
      {
        v9 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          *v47 = 138543362;
          *&v47[4] = objc_opt_class();
          v11 = *&v47[4];
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to find set aside EAP profile", v47, 0xCu);
        }
      }
    }

    if (qword_100136A20)
    {
      ProfileWithID = EAPOLClientConfigurationGetProfileWithID();
    }

    else
    {
      if (![v3 isHotspot])
      {
        v37 = [v3 ssid];
        v38 = [v37 dataUsingEncoding:4];

        ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID();
        if (ProfileWithWLANSSID)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

      [v3 domainName];
      ProfileWithID = EAPOLClientConfigurationGetProfileWithWLANDomain();
    }

    ProfileWithWLANSSID = ProfileWithID;
    if (ProfileWithID)
    {
LABEL_13:
      if ([(MCNewWiFiPayloadHandler *)self _isMetadataValid:ProfileWithWLANSSID, *v47])
      {
        v17 = EAPOLClientItemIDCreateWithProfile();
        if (v17)
        {
          v18 = v17;
          if (!EAPOLClientItemIDRemovePasswordItem())
          {
            v19 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              v21 = objc_opt_class();
              *v47 = 138543362;
              *&v47[4] = v21;
              v22 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDRemovePasswordItem() failed", v47, 0xCu);
            }
          }

          if (!EAPOLClientItemIDSetIdentity())
          {
            v23 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              v25 = objc_opt_class();
              *v47 = 138543362;
              *&v47[4] = v25;
              v26 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDSetIdentity() failed", v47, 0xCu);
            }
          }

          if (EAPOLClientConfigurationRemoveProfile())
          {
            if (EAPOLClientConfigurationSave())
            {
              goto LABEL_39;
            }

            v27 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            v28 = v27;
            v29 = objc_opt_class();
            *v47 = 138543362;
            *&v47[4] = v29;
            v30 = v29;
            v31 = "%{public}@ EAPOLClientConfigurationSave() failed";
          }

          else
          {
            v44 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
LABEL_39:
              v46 = qword_100136A20;
              qword_100136A20 = 0;

              CFRelease(v18);
              goto LABEL_34;
            }

            v28 = v44;
            v45 = objc_opt_class();
            *v47 = 138543362;
            *&v47[4] = v45;
            v30 = v45;
            v31 = "%{public}@ EAPOLClientConfigurationRemoveProfile() failed";
          }

          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v31, v47, 0xCu);

          goto LABEL_39;
        }

        v41 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v33 = v41;
          v42 = objc_opt_class();
          *v47 = 138543362;
          *&v47[4] = v42;
          v35 = v42;
          v36 = "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL";
          goto LABEL_32;
        }

LABEL_33:
        v43 = qword_100136A20;
        qword_100136A20 = 0;

LABEL_34:
        CFRelease(v5);
        goto LABEL_35;
      }

      v32 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v33 = v32;
      v34 = objc_opt_class();
      *v47 = 138543362;
      *&v47[4] = v34;
      v35 = v34;
      v36 = "%{public}@ metadata validation failed";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v36, v47, 0xCu);

      goto LABEL_33;
    }

LABEL_28:
    v39 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v33 = v39;
    v40 = objc_opt_class();
    *v47 = 138543362;
    *&v47[4] = v40;
    v35 = v40;
    v36 = "%{public}@ failed to find EAP profile";
    goto LABEL_32;
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    *v47 = 138543362;
    *&v47[4] = objc_opt_class();
    v15 = *&v47[4];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", v47, 0xCu);
  }

LABEL_35:
}

- (BOOL)_setEAPConfigUsingEAPConfigAPI:(id)a3
{
  v4 = a3;
  cf = 0;
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v4 mutableCopy];
  if ([v5 usernameRequired] && (objc_msgSend(v5, "username"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v47 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v48 = v47;
      *buf = 138543362;
      v66 = objc_opt_class();
      v49 = v66;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ username is not available", buf, 0xCu);
    }

    LODWORD(v8) = 0;
  }

  else
  {
    LODWORD(v8) = 1;
  }

  v9 = [v6 objectForKey:@"TLSTrustedCertificates"];

  if (v9)
  {
    if (!v8)
    {
      goto LABEL_38;
    }

LABEL_26:
    v31 = [v5 certificateUUID];

    if (v31)
    {
      v32 = v6;
      v33 = [(MCNewPayloadHandler *)self profileHandler];
      v34 = [v5 certificateUUID];
      v35 = [v33 persistentIDForCertificateUUID:v34];

      v36 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = objc_opt_class();
        *buf = 138543618;
        v66 = v38;
        v67 = 1026;
        LODWORD(v68) = v35 != 0;
        v39 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ handling identity certs? %{public}d", buf, 0x12u);
      }

      if (v35 && (EAPSecIdentityHandleCreateSecIdentity() || !cf))
      {
        v50 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          v51 = v50;
          v52 = objc_opt_class();
          *buf = 138543362;
          v66 = v52;
          v53 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPSecIdentityHandleCreateSecIdentity() failed", buf, 0xCu);
        }

        LOBYTE(v8) = 0;
        goto LABEL_37;
      }
    }

    v40 = [v5 username];
    v35 = [v40 dataUsingEncoding:4];

    v41 = [v5 password];
    v42 = [v41 dataUsingEncoding:4];

    v32 = v6;
    [v6 removeObjectForKey:@"UserPassword"];
    v8 = [v5 isHotspot];
    if (v8)
    {
      [v5 domainName];
    }

    else
    {
      [v5 ssid];
    }
    v43 = ;
    [v5 encryptionType];
    v45 = v44 = v5;
    LOBYTE(v8) = [(MCNewWiFiPayloadHandler *)self _installEAPConfiguration:v43 isHotspot:v8 securityType:v45 authProperties:v32 username:v35 password:v42 identity:cf];

    v5 = v44;
LABEL_37:

    v6 = v32;
    goto LABEL_38;
  }

  v54 = v8;
  v55 = v6;
  v57 = v4;
  v58 = +[NSMutableArray array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = v5;
  obj = [v5 payloadCertificateAnchorUUID];
  v10 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        v15 = [(MCNewPayloadHandler *)self profileHandler];
        v16 = [v15 persistentIDForCertificateUUID:v14];

        if (v16)
        {
          v17 = [(MCNewPayloadHandler *)self profileHandler];
          v18 = [v17 profile];
          v19 = [v18 isInstalledForSystem];

          v20 = [MCKeychain copyCertificateWithPersistentID:v16 useSystemKeychain:v19];
          if (v20)
          {
            v21 = v20;
            v22 = SecCertificateCopyData(v20);
            if (v22)
            {
              v23 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                v24 = v23;
                v25 = objc_opt_class();
                *buf = 138543874;
                v66 = v25;
                v67 = 2114;
                v68 = v14;
                v69 = 1026;
                v70 = v19;
                v26 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ adding trusted certificate UUID %{public}@ with system keychain? %{public}d", buf, 0x1Cu);
              }

              [v58 addObject:v22];
            }

            CFRelease(v21);
          }
        }

        else
        {
          v27 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            v29 = objc_opt_class();
            *buf = 138543618;
            v66 = v29;
            v67 = 2114;
            v68 = v14;
            v30 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ certificate UUID %{public}@ referenced by this payload does not exist, skipping.", buf, 0x16u);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v11);
  }

  v6 = v55;
  if ([v58 count])
  {
    [v55 setObject:v58 forKey:@"TLSTrustedCertificates"];
  }

  v5 = v56;
  v4 = v57;
  LOBYTE(v8) = v54;
  if (v54)
  {
    goto LABEL_26;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

- (void)setAsideEAPConfig
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = qword_100136A20;
  qword_100136A20 = 0;

  v5 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v5)
  {
    v6 = v5;
    if ([v3 isHotspot])
    {
      [v3 domainName];
      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANDomain();
      v8 = 1;
      if (ProfileWithWLANDomain)
      {
LABEL_4:
        if ([(MCNewWiFiPayloadHandler *)self _isMetadataValid:ProfileWithWLANDomain])
        {
          v9 = EAPOLClientProfileGetID();
          v10 = qword_100136A20;
          qword_100136A20 = v9;

          if (qword_100136A20)
          {
            if (v8)
            {
              EAPOLClientProfileSetWLANDomain();
            }

            else
            {
              EAPOLClientProfileSetWLANSSIDAndSecurityType();
            }

            if (EAPOLClientConfigurationSave())
            {
              goto LABEL_22;
            }

            v22 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            v17 = v22;
            v23 = 138543362;
            v24 = objc_opt_class();
            v18 = v24;
            v19 = "%{public}@ EAPOLClientConfigurationSave() failed";
            goto LABEL_21;
          }

          v21 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v17 = v21;
            v23 = 138543362;
            v24 = objc_opt_class();
            v18 = v24;
            v19 = "%{public}@ EAPOLClientProfileGetID() returned NULL";
            goto LABEL_21;
          }

LABEL_22:
          CFRelease(v6);
          goto LABEL_23;
        }

        v20 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v17 = v20;
        v23 = 138543362;
        v24 = objc_opt_class();
        v18 = v24;
        v19 = "%{public}@ metadata validation failed";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, &v23, 0xCu);

        goto LABEL_22;
      }
    }

    else
    {
      v14 = [v3 ssid];
      v15 = [v14 dataUsingEncoding:4];

      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANSSID();
      v8 = v15 == 0;
      if (ProfileWithWLANDomain)
      {
        goto LABEL_4;
      }
    }

    v16 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v17 = v16;
    v23 = 138543362;
    v24 = objc_opt_class();
    v18 = v24;
    v19 = "%{public}@ failed to find EAP Profile";
    goto LABEL_21;
  }

  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v23 = 138543362;
    v24 = objc_opt_class();
    v13 = v24;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v23, 0xCu);
  }

LABEL_23:
}

- (void)unsetAsideEAPConfig
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [(MCNewPayloadHandler *)self profileHandler];
  v5 = [v4 isSetAside];
  v6 = qword_100136A20;

  if (v5 && v6)
  {
    v7 = EAPOLClientConfigurationCreateWithAuthorization();
    if (v7)
    {
      v8 = v7;
      ProfileWithID = EAPOLClientConfigurationGetProfileWithID();
      v10 = qword_100136A20;
      qword_100136A20 = 0;

      if (ProfileWithID)
      {
        if ([v3 isHotspot])
        {
          [v3 domainName];
          EAPOLClientProfileSetWLANDomain();
        }

        else
        {
          v18 = [v3 ssid];
          v19 = [v18 dataUsingEncoding:4];
          [v3 encryptionType];
          EAPOLClientProfileSetWLANSSIDAndSecurityType();
        }

        if (EAPOLClientConfigurationSave())
        {
          goto LABEL_16;
        }

        v20 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v15 = v20;
        v21 = 138543362;
        v22 = objc_opt_class();
        v16 = v22;
        v17 = "%{public}@ EAPOLClientConfigurationSave() failed";
      }

      else
      {
        v14 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          CFRelease(v8);
          goto LABEL_17;
        }

        v15 = v14;
        v21 = 138543362;
        v22 = objc_opt_class();
        v16 = v22;
        v17 = "%{public}@ EAPOLClientConfigurationGetProfileWithID() returned NULL";
      }

      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, &v21, 0xCu);

      goto LABEL_16;
    }

    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v21 = 138543362;
      v22 = objc_opt_class();
      v13 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v21, 0xCu);
    }
  }

LABEL_17:
}

- (BOOL)_setEAPConfig:(id)a3 onNetwork:(__WiFiNetwork *)a4
{
  v5 = a3;
  v6 = [(MCNewPayloadHandler *)self payload];
  sub_10005F874();
  v7 = [v5 mutableCopy];
  if (![v6 usernameRequired])
  {
    goto LABEL_4;
  }

  v8 = [v6 username];

  if (v8)
  {
    v9 = [v6 username];
    [v7 setObject:v9 forKey:@"UserName"];

LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v39 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler requires a username but a username is not available.", buf, 2u);
  }

  v10 = 0;
LABEL_5:
  v11 = [v7 objectForKey:@"TLSTrustedCertificates"];

  if (v11)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v43 = v10;
    v44 = v7;
    v46 = v5;
    v20 = +[NSMutableArray array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = v6;
    v21 = [v6 payloadCertificateAnchorUUID];
    v48 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v48)
    {
      v22 = *v51;
      v47 = *v51;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v21);
          }

          v24 = *(*(&v50 + 1) + 8 * i);
          v25 = [(MCNewPayloadHandler *)self profileHandler];
          v26 = [v25 persistentIDForCertificateUUID:v24];

          if (v26)
          {
            v27 = [(MCNewPayloadHandler *)self profileHandler];
            v28 = [v27 profile];
            v29 = [v28 isInstalledForSystem];

            v30 = [MCKeychain copyCertificateWithPersistentID:v26 useSystemKeychain:v29];
            if (v30)
            {
              v31 = v30;
              v32 = SecCertificateCopyData(v30);
              if (v32)
              {
                v33 = v21;
                v34 = self;
                v35 = v20;
                v36 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v24;
                  v55 = 1026;
                  v56 = v29;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler adding trusted certificate UUID %{public}@ with system keychain? %{public}d", buf, 0x12u);
                }

                v20 = v35;
                [v35 addObject:v32];
                self = v34;
                v21 = v33;
                v22 = v47;
              }

              CFRelease(v31);
            }
          }

          else
          {
            v37 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler certificate UUID %{public}@ referenced by this payload does not exist, skipping.", buf, 0xCu);
            }
          }
        }

        v48 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v48);
    }

    v7 = v44;
    if ([v20 count])
    {
      [v44 setObject:v20 forKey:@"TLSTrustedCertificates"];
    }

    v6 = v45;
    v5 = v46;
    LOBYTE(v10) = v43;
    if (v43)
    {
LABEL_7:
      v12 = [v6 certificateUUID];

      if (!v12)
      {
LABEL_43:
        v40 = [NSDictionary dictionaryWithObject:v7 forKey:@"EAPClientConfiguration"];
        WiFiNetworkSetProperty();
        v41 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setEAPConfig succeeded with EAP profile: %{public}@", buf, 0xCu);
        }

        goto LABEL_46;
      }

      v13 = [(MCNewPayloadHandler *)self profileHandler];
      v14 = [v6 certificateUUID];
      v15 = [v13 persistentIDForCertificateUUID:v14];

      v16 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v15 != 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler handling identity certs? %{public}d", buf, 8u);
      }

      if (v15)
      {
        *buf = 0;
        EAPSecIdentityHandleCreateSecIdentity();
        if (*buf && (v17 = EAPSecIdentityHandleCreate(), CFRelease(*buf), v17))
        {
          [v7 setObject:v17 forKey:@"TLSIdentityHandle"];
          CFRelease(v17);
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            v19 = "MCNewWiFiPayloadHandler set identity handle.";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v49, 2u);
          }
        }

        else
        {
          [v7 setObject:v15 forKey:@"TLSIdentityHandle"];
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            v19 = "MCNewWiFiPayloadHandler set persistent ID as identity handle.";
            goto LABEL_41;
          }
        }
      }

      goto LABEL_43;
    }
  }

  v38 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler setEAPConfig failed.", buf, 2u);
  }

LABEL_46:

  return v10;
}

- (void)_updateWiFiCustomSetWithSetID:(id)a3 forSSID:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  v9 = WiFiManagerClientCopyProperty();
  v10 = v9;
  if (v9)
  {
    v11 = [v9 mutableCopy];
    [v11 setObject:v6 forKey:v7];
    v12 = self->_manager;
    WiFiManagerClientSetProperty();
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v11;
      v14 = "MCNewWiFiPayloadHandler updated custom settings: %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    }
  }

  else
  {
    v11 = [NSDictionary dictionaryWithObject:v6 forKey:v7];
    v15 = self->_manager;
    WiFiManagerClientSetProperty();
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v6;
      v14 = "MCNewWiFiPayloadHandler set custom settings: %{public}@";
      goto LABEL_6;
    }
  }
}

- (BOOL)_applyProxyCredential:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 proxyServer];
  v7 = [v6 length];
  if (v7)
  {
    v8 = +[NSURLCredentialStorage sharedCredentialStorage];
    v9 = [(MCNewPayloadHandler *)self profileHandler];
    v10 = [v9 profile];
    [v8 set_useSystemKeychain:{objc_msgSend(v10, "isInstalledForSystem")}];

    v11 = [v5 proxyServerPort];
    if (v11)
    {
      v12 = [v5 proxyServerPort];
      v13 = [v12 intValue];
    }

    else
    {
      v13 = 80;
    }

    v15 = [NSURLProtectionSpace alloc];
    v16 = [v5 proxyServer];
    v17 = [v15 initWithProxyHost:v16 port:v13 type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    v18 = [NSURLProtectionSpace alloc];
    v19 = [v5 proxyServer];
    v20 = [v18 initWithProxyHost:v19 port:v13 type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    [v8 setDefaultCredential:v4 forProtectionSpace:v17];
    [v8 setDefaultCredential:v4 forProtectionSpace:v20];
  }

  else
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler requires a proxy server to be provided.", v22, 2u);
    }
  }

  return v7 != 0;
}

- (BOOL)_configureEncryptionTypeForWiFiNetwork:(__WiFiNetwork *)a3 payload:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = [v8 eapClientConfig];

  if (v9)
  {
    [v8 isWPA];
    WiFiNetworkSetWPA();
    [v8 isWEP];
    WiFiNetworkSetWEP();
    v10 = [v8 eapClientConfig];
    v11 = [(MCNewWiFiPayloadHandler *)self _setEAPConfig:v10 onNetwork:a3];

    if (v11)
    {
      v37 = @"IE_KEY_WPA_AUTHSELS";
      v38 = &off_1001272F8;
      LOBYTE(a5) = 1;
      [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      WiFiNetworkSetProperty();
    }

    else if (a5)
    {
      v15 = MCWiFiErrorDomain;
      v16 = [@"ERROR_WIFI_COULD_NOT_SETUP_EAP" MCAppendGreenteaSuffix];
      v17 = [v8 ssid];
      v18 = MCErrorArray();
      *a5 = [NSError MCErrorWithDomain:v15 code:13004 descriptionArray:v18 errorType:MCErrorTypeFatal, v17, 0];

      LOBYTE(a5) = 0;
    }

    goto LABEL_24;
  }

  v12 = [v8 encryptionType];
  v13 = [v12 isEqualToString:kMCWiFiEncryptionTypeWEP];

  if (v13)
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WEP network", buf, 2u);
    }

    LOBYTE(a5) = 1;
    WiFiNetworkSetWEP();
    goto LABEL_24;
  }

  v19 = [v8 encryptionType];
  v20 = [v19 isEqualToString:kMCWiFiEncryptionTypeWPA];

  if (v20)
  {
    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA network", buf, 2u);
    }

    LOBYTE(a5) = 1;
    WiFiNetworkSetWPA();
    goto LABEL_24;
  }

  v22 = [v8 encryptionType];
  v23 = [v22 isEqualToString:kMCWiFiEncryptionTypeWPA2];

  if (v23)
  {
    v24 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA2 network", buf, 2u);
    }

    LOBYTE(a5) = 1;
LABEL_23:
    WiFiNetworkSetSAE();
    goto LABEL_24;
  }

  v25 = [v8 encryptionType];
  v26 = [v25 isEqualToString:kMCWiFiEncryptionTypeWPA3];

  if (v26)
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA3 network", buf, 2u);
    }

    LOBYTE(a5) = 1;
    goto LABEL_23;
  }

  v29 = [v8 encryptionType];
  v30 = [v29 isEqualToString:kMCWiFiEncryptionTypeAny];

  v31 = _MCLogObjects[0];
  v32 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting Any-secured network", buf, 2u);
    }

    LOBYTE(a5) = 1;
    WiFiNetworkSetWEP();
    WiFiNetworkSetWPA();
    goto LABEL_23;
  }

  if (v32)
  {
    v33 = v31;
    v34 = [v8 encryptionType];
    *buf = 138543362;
    v36 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler encryption type not recognized: %{public}@", buf, 0xCu);
  }

  LOBYTE(a5) = 1;
LABEL_24:

  return a5;
}

- (BOOL)_networkServiceRequired
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 proxyType];
  v4 = [v2 qosMarkingConfig];
  LOBYTE(v5) = 1;
  if (![v4 count] && v3 - 1 >= 2)
  {
    v6 = [v2 proxyUsername];
    if (v6)
    {
    }

    else
    {
      v5 = [v2 proxyPassword];

      if (v5)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v7 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          v5 = v7;
          v8 = [v2 ssid];
          v10 = 138543362;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler custom service not required for SSID: %{public}@", &v10, 0xCu);

          LOBYTE(v5) = 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)_configureNetworkServiceForWiFiNetwork:(__WiFiNetwork *)a3 outError:(id *)a4
{
  v7 = [(MCNewPayloadHandler *)self payload];
  v8 = SCPreferencesCreateWithAuthorization(0, @"com.apple.settings.wi-fi", 0, 0);
  if (!v8)
  {
    v22 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create system configuration preferences.", buf, 2u);
    }

    goto LABEL_137;
  }

  v9 = v8;
  manager = self->_manager;
  v11 = WiFiManagerClientCopyProperty();
  if (!SCPreferencesLock(v9, 1u))
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot lock system configuration preferences.", buf, 2u);
    }

    CFRelease(v9);
    goto LABEL_137;
  }

  SCPreferencesSynchronize(v9);
  v12 = SCNetworkSetCopyAll(v9);
  if (!v12)
  {
    v24 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot retrieve network sets from system configuration.", buf, 2u);
    }

    v25 = 0;
    v26 = 1;
    goto LABEL_132;
  }

  v141 = a2;
  name = [v7 ssid];
  v13 = [v11 objectForKey:?];
  v148 = v11;
  if (v13)
  {
    v14 = v13;
    v147 = v7;
    if (CFArrayGetCount(v12) >= 1)
    {
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        SetID = SCNetworkSetGetSetID(ValueAtIndex);
        if (SetID)
        {
          if (([(__CFString *)SetID isEqualToString:v14]& 1) != 0)
          {
            break;
          }
        }

        if (++v15 >= CFArrayGetCount(v12))
        {
          goto LABEL_10;
        }
      }

      if (ValueAtIndex)
      {
        v48 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v154 = v14;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler attempting to modify service for custom set ID: %{public}@...", buf, 0xCu);
        }

        v49 = SCNetworkSetCopyServices(ValueAtIndex);
        if (!v49)
        {
          v61 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot get existing services.", buf, 2u);
          }

          v25 = 0;
          v45 = 0;
          v38 = 0;
          v151 = 0;
          v46 = 0;
          v26 = 1;
          v59 = 1;
          v7 = v147;
          goto LABEL_124;
        }

        v50 = v49;
        v140 = a4;
        if (CFArrayGetCount(v49) <= 0)
        {
          CFRelease(v50);
          set = 0;
          v151 = 0;
          goto LABEL_112;
        }

        v143 = v14;
        v38 = 0;
        v51 = 0;
        while (1)
        {
          v52 = CFArrayGetValueAtIndex(v50, v51);
          Interface = SCNetworkServiceGetInterface(v52);
          if (Interface)
          {
            v54 = Interface;
            while (1)
            {
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v54);
              if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
              {
                break;
              }

              v54 = SCNetworkInterfaceGetInterface(v54);
              if (!v54)
              {
                goto LABEL_80;
              }
            }

            if (!v38)
            {
              v56 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler creating a new service...", buf, 2u);
              }

              v57 = SCNetworkServiceCreate(v9, v54);
              v38 = v57;
              if (!v57)
              {
                v100 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v101 = "MCNewWiFiPayloadHandler cannot create new service.";
                  goto LABEL_183;
                }

LABEL_184:
                CFRelease(v50);

                v25 = 0;
                v45 = 0;
                v151 = 0;
                v46 = 0;
                v26 = 1;
                v59 = 1;
                v7 = v147;
                a4 = v140;
                goto LABEL_124;
              }

              if (!SCNetworkServiceEstablishDefaultConfiguration(v57))
              {
                v100 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v101 = "MCNewWiFiPayloadHandler cannot establish new service.";
LABEL_183:
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, v101, buf, 2u);
                goto LABEL_184;
              }

              if (!SCNetworkServiceRemove(v52))
              {
                v100 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v101 = "MCNewWiFiPayloadHandler cannot remove old service.";
                goto LABEL_183;
              }

              if (!SCNetworkSetAddService(ValueAtIndex, v38))
              {
                v100 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v101 = "MCNewWiFiPayloadHandler cannot add new service.";
                goto LABEL_183;
              }
            }
          }

LABEL_80:
          if (++v51 >= CFArrayGetCount(v50))
          {
            CFRelease(v50);
            if (v38)
            {
              CFRelease(v38);
            }

            set = 0;
            v151 = 0;
            v14 = v143;
            goto LABEL_112;
          }
        }
      }
    }

LABEL_10:
    v18 = _MCLogObjects[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot retrieve custom network set from system configuration.", buf, 2u);
    }

    v7 = v147;
  }

  v19 = _MCLogObjects[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler attempting to create a new set for the network...", buf, 2u);
  }

  if (CFArrayGetCount(v12) < 1)
  {
    goto LABEL_29;
  }

  v20 = 0;
  while (1)
  {
    v21 = CFArrayGetValueAtIndex(v12, v20);
    if ([(__CFString *)SCNetworkSetGetName(v21) isEqualToString:@"Automatic"])
    {
      break;
    }

    if (++v20 >= CFArrayGetCount(v12))
    {
      goto LABEL_29;
    }
  }

  set = CFRetain(v21);
  if (!set)
  {
LABEL_29:
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler cannot get default set; using current set instead.", buf, 2u);
    }

    set = SCNetworkSetCopyCurrent(v9);
    if (!set)
    {
      v44 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot copy default set from system configuration.", buf, 2u);
      }

      v25 = 0;
      v45 = 0;
      v38 = 0;
      v151 = 0;
      v46 = 0;
      goto LABEL_93;
    }
  }

  v28 = SCNetworkSetCreate(v9);
  if (!v28)
  {
    v47 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create new set.", buf, 2u);
    }

    v25 = 0;
    v45 = 0;
    v38 = 0;
    v151 = 0;
    goto LABEL_87;
  }

  v29 = v28;
  SCNetworkSetSetName(v28, name);
  v30 = SCNetworkSetCopyServices(set);
  v151 = v29;
  if (!v30)
  {
    v58 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot get default services.", buf, 2u);
    }

    v25 = 0;
    v45 = 0;
    v38 = 0;
LABEL_87:
    v26 = 1;
    v59 = 1;
    v46 = set;
    goto LABEL_124;
  }

  v31 = v30;
  v147 = v7;
  v140 = a4;
  if (CFArrayGetCount(v30) < 1)
  {
    v32 = v31;
    goto LABEL_108;
  }

  v32 = 0;
  service = 0;
  v33 = 0;
  do
  {
    v34 = CFArrayGetValueAtIndex(v31, v33);
    v35 = SCNetworkServiceGetInterface(v34);
    if (!v35)
    {
LABEL_40:
      v38 = v34;
      goto LABEL_50;
    }

    v36 = v35;
    while (1)
    {
      v37 = SCNetworkInterfaceGetInterfaceType(v36);
      if (CFEqual(v37, kSCNetworkInterfaceTypeIEEE80211))
      {
        break;
      }

      v36 = SCNetworkInterfaceGetInterface(v36);
      if (!v36)
      {
        goto LABEL_40;
      }
    }

    v39 = _MCLogObjects[0];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler found WiFi interface.", buf, 2u);
    }

    if (v32)
    {
      v38 = v34;
      v29 = v151;
      goto LABEL_50;
    }

    v40 = _MCLogObjects[0];
    v29 = v151;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler creating new service...", buf, 2u);
    }

    v41 = SCNetworkServiceCreate(v9, v36);
    if (!v41)
    {
      v96 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create new service.", buf, 2u);
      }

      v38 = 0;
LABEL_169:
      v7 = v147;
      a4 = v140;
LABEL_92:
      v46 = set;
      CFRelease(v31);
      v25 = 0;
      v45 = 0;
LABEL_93:
      v26 = 1;
      v59 = 1;
      goto LABEL_124;
    }

    v38 = v41;
    if (!SCNetworkServiceEstablishDefaultConfiguration(v41))
    {
      v97 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot establish new service.", buf, 2u);
      }

      goto LABEL_169;
    }

    service = v34;
    v32 = v38;
LABEL_50:
    if (!SCNetworkSetAddService(v29, v38))
    {
      v60 = _MCLogObjects[0];
      a4 = v140;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot add new service.", buf, 2u);
      }

      v38 = v32;
      v7 = v147;
      goto LABEL_92;
    }

    ++v33;
  }

  while (v33 < CFArrayGetCount(v31));
  if (v32 && service)
  {
    ServiceOrder = SCNetworkSetGetServiceOrder(set);
    if (ServiceOrder)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v62 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    ServiceID = SCNetworkServiceGetServiceID(service);
    v157.location = 0;
    v157.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v62, v157, ServiceID);
    if (FirstIndexOfValue == -1)
    {
      v68 = _MCLogObjects[0];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v154 = v62;
        v155 = 2114;
        v156 = ServiceOrder;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed to set service order: %{public}@. Maintaining old order: %{public}@", buf, 0x16u);
      }

      v29 = v151;
    }

    else
    {
      v66 = FirstIndexOfValue;
      v67 = SCNetworkServiceGetServiceID(v32);
      CFArraySetValueAtIndex(v62, v66, v67);
      v29 = v151;
      SCNetworkSetSetServiceOrder(v151, v62);
      v68 = _MCLogObjects[0];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v154 = v62;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set service order: %{public}@", buf, 0xCu);
      }
    }

    CFRelease(v62);
    CFRelease(v31);
LABEL_108:
    CFRelease(v32);
  }

  else
  {
    CFRelease(v31);
    if (v32)
    {
      goto LABEL_108;
    }
  }

  v69 = SCNetworkSetGetSetID(v29);
  WiFiNetworkSetProperty();
  v70 = _MCLogObjects[0];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v154 = v69;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set system configuration set ID: %{public}@", buf, 0xCu);
  }

  v14 = 0;
  ValueAtIndex = v151;
LABEL_112:
  v71 = objc_opt_new();
  [v71 activate];
  servicea = [v71 interfaceName];
  v139 = v71;
  [v71 invalidate];
  v72 = SCNetworkSetCopyServices(ValueAtIndex);
  if (!v72)
  {
    goto LABEL_120;
  }

  v73 = v72;
  if (CFArrayGetCount(v72) < 1)
  {
LABEL_119:
    CFRelease(v73);
    goto LABEL_120;
  }

  v74 = 0;
  v144 = v14;
  while (1)
  {
    v75 = CFArrayGetValueAtIndex(v73, v74);
    v76 = SCNetworkServiceGetInterface(v75);
    if ([(__CFString *)SCNetworkInterfaceGetInterfaceType(v76) isEqualToString:kSCNetworkInterfaceTypeIEEE80211])
    {
      break;
    }

LABEL_118:
    if (++v74 >= CFArrayGetCount(v73))
    {
      goto LABEL_119;
    }
  }

  v77 = SCNetworkInterfaceGetBSDName(v76);
  if (![v77 isEqualToString:servicea])
  {

    v14 = v144;
    goto LABEL_118;
  }

  v88 = _MCLogObjects[0];
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v154 = servicea;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler found WiFi service matching interface name: %{public}@", buf, 0xCu);
  }

  v45 = CFRetain(v75);
  CFRelease(v73);
  v14 = v144;
  if (!v45)
  {
LABEL_120:
    v78 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler could not find WiFi service in system configuration.", buf, 2u);
    }

    v45 = 0;
    v25 = 0;
    v26 = 1;
    v59 = 1;
    v7 = v147;
    a4 = v140;
    v46 = set;
    goto LABEL_123;
  }

  v89 = SCNetworkSetGetServiceOrder(ValueAtIndex);
  if (([v89 containsObject:SCNetworkServiceGetServiceID(v45)] & 1) == 0)
  {
    sub_1000C2910(v141, self, v45);
  }

  v7 = v147;
  v142 = [v147 qosMarkingConfig];
  if ([v142 count] && !SCNetworkInterfaceSetQoSMarkingPolicy())
  {
    v99 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler could not set WiFi service QoS Marking Policy in system configuration.", buf, 2u);
    }

    v25 = 0;
    v26 = 1;
    v59 = 1;
    goto LABEL_228;
  }

  v25 = SCNetworkServiceCopyProtocol(v45, kSCEntNetProxies);
  if (v25)
  {
    v90 = [v147 proxyType];
    if (v90 == 1)
    {
      v91 = +[NSMutableDictionary dictionary];
      v102 = [v147 proxyPACURLString];

      if (v102)
      {
        [v91 setObject:&off_100127228 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
        v103 = [v147 proxyPACURLString];
        [v91 setObject:v103 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];
      }

      else
      {
        [v91 setObject:&off_100127228 forKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
      }

      if ([v147 proxyPACFallbackAllowed])
      {
        v110 = &off_100127228;
      }

      else
      {
        v110 = &off_100127240;
      }

      [v91 setObject:v110 forKeyedSubscript:kSCPropNetProxiesFallBackAllowed];
      v109 = 2;
      goto LABEL_198;
    }

    if (v90 == 2)
    {
      v91 = +[NSMutableDictionary dictionary];
      v92 = [v147 proxyServer];

      if (v92)
      {
        v93 = [v147 proxyServer];
        [v91 setObject:v93 forKey:kSCPropNetProxiesHTTPProxy];

        v94 = [v147 proxyServer];
        [v91 setObject:v94 forKey:kSCPropNetProxiesHTTPSProxy];
      }

      v95 = [v147 proxyServerPort];
      if (v95)
      {
        [v91 setObject:v95 forKey:kSCPropNetProxiesHTTPPort];
      }

      else
      {
        v104 = [NSNumber numberWithInt:80];
        [v91 setObject:v104 forKey:kSCPropNetProxiesHTTPPort];
      }

      v105 = [v147 proxyServerPort];
      if (v105)
      {
        [v91 setObject:v105 forKey:kSCPropNetProxiesHTTPSPort];
      }

      else
      {
        v106 = [NSNumber numberWithInt:80];
        [v91 setObject:v106 forKey:kSCPropNetProxiesHTTPSPort];
      }

      v107 = [NSNumber numberWithInt:1];
      [v91 setObject:v107 forKey:kSCPropNetProxiesHTTPEnable];

      v108 = [NSNumber numberWithInt:1];
      [v91 setObject:v108 forKey:kSCPropNetProxiesHTTPSEnable];

      v109 = 1;
LABEL_198:
      v111 = [NSNumber numberWithInt:v109];
      [v91 setObject:v111 forKey:@"HTTPProxyType"];
    }

    else
    {
      v91 = [(__CFDictionary *)SCNetworkProtocolGetConfiguration(v25) mutableCopy];
    }

    v112 = [v147 proxyUsername];
    if (v112)
    {

      goto LABEL_202;
    }

    v113 = [v147 proxyPassword];

    if (v113)
    {
LABEL_202:
      v114 = [NSNumber numberWithInt:1];
      [v91 setObject:v114 forKey:@"HTTPProxyAuthenticated"];

      v115 = [v147 proxyUsername];
      v116 = v115;
      if (v115)
      {
        v117 = v115;
      }

      else
      {
        v117 = &stru_10011E740;
      }

      [v91 setObject:v117 forKey:@"HTTPProxyUsername"];

      [v91 setObject:&stru_10011E740 forKey:@"HTTPProxyPassword"];
    }

    SCNetworkProtocolSetConfiguration(v25, v91);
    v118 = _MCLogObjects[0];
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v154 = v91;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set proxy protocol configuration: %{public}@", buf, 0xCu);
    }

    v14 = v144;
  }

  else
  {
    v98 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot find proxy protocol for the WiFi service.", buf, 2u);
    }
  }

  SCPreferencesCommitChanges(v9);
  SCPreferencesApplyChanges(v9);
  SCPreferencesSynchronize(v9);
  SCPreferencesUnlock(v9);
  v119 = [v147 proxyUsername];

  if (!v119)
  {
LABEL_225:
    Property = WiFiNetworkGetProperty();
    if (Property)
    {
      [(MCNewWiFiPayloadHandler *)self _updateWiFiCustomSetWithSetID:Property forSSID:name];
    }

    v26 = 0;
    v59 = 0;
    goto LABEL_228;
  }

  v120 = [v147 proxyUsername];
  v121 = [v147 proxyPassword];
  v122 = [NSURLCredential credentialWithUser:v120 password:v121 persistence:2];

  v14 = v144;
  if (![(MCNewWiFiPayloadHandler *)self _applyProxyCredential:v122])
  {
    goto LABEL_218;
  }

  v123 = [v147 proxyUsername];
  v124 = [v147 proxyPassword];
  v125 = CFURLCredentialCreate();

  if (!v125)
  {
LABEL_224:

    v7 = v147;
    goto LABEL_225;
  }

  Archive = _CFURLCredentialCreateArchive();
  if (!Archive)
  {
LABEL_223:
    CFRelease(v125);
    goto LABEL_224;
  }

  v127 = Archive;
  Data = CFPropertyListCreateData(0, Archive, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v127);
  if (!Data)
  {
    v135 = _MCLogObjects[0];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot serialize credential. Ignoring.", buf, 2u);
    }

    goto LABEL_222;
  }

  v129 = +[NSString MCMakeUUID];
  v137 = [(MCNewPayloadHandler *)self profileHandler];
  v130 = [v137 profile];
  v152 = 0;
  v138 = v129;
  +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", Data, @"MCWiFiCredential", v129, 0, 0, [v130 isInstalledForSystem], &v152);
  v131 = v152;

  v132 = Data;
  v133 = v131;
  CFRelease(v132);
  if (!v131)
  {
    v135 = v138;
    [v147 setCredentialUUID:v138];
    v14 = v144;
LABEL_222:

    goto LABEL_223;
  }

  v134 = _MCLogObjects[0];
  v14 = v144;
  if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v154 = v133;
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot commit credential to keychain with error: %{public}@", buf, 0xCu);
  }

  CFRelease(v125);
  v7 = v147;
LABEL_218:

  v59 = 0;
  v26 = 1;
LABEL_228:
  a4 = v140;
  v46 = set;

LABEL_123:
  v38 = 0;
LABEL_124:

  if (v38)
  {
    SCNetworkServiceRemove(v38);
    CFRelease(v38);
  }

  if (v151)
  {
    SCNetworkSetRemove(v151);
    CFRelease(v151);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (!v45)
  {
    if (!v59)
    {
      goto LABEL_133;
    }

LABEL_132:
    SCPreferencesUnlock(v9);
    goto LABEL_133;
  }

  CFRelease(v45);
  if (v59)
  {
    goto LABEL_132;
  }

LABEL_133:
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(v9);
  if (v25)
  {
    CFRelease(v25);
    if (v26)
    {
      goto LABEL_137;
    }

LABEL_143:
    v82 = _MCLogObjects[0];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v86 = [v7 ssid];
      *buf = 138543362;
      v154 = v86;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler successfully configured WiFi for SSID: %{public}@", buf, 0xCu);
    }

    v85 = 1;
LABEL_146:

    goto LABEL_147;
  }

  if (!v26)
  {
    goto LABEL_143;
  }

LABEL_137:
  v79 = _MCLogObjects[0];
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    v80 = [v7 ssid];
    *buf = 138543362;
    v154 = v80;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed to configure WiFi for SSID: %{public}@", buf, 0xCu);
  }

  if (a4)
  {
    v81 = MCWiFiErrorDomain;
    v82 = [@"ERROR_WIFI_COULD_NOT_SETUP_PROXY" MCAppendGreenteaSuffix];
    v83 = [v7 ssid];
    v84 = MCErrorArray();
    *a4 = [NSError MCErrorWithDomain:v81 code:13005 descriptionArray:v84 errorType:MCErrorTypeFatal, v83, 0];

    v85 = 0;
    goto LABEL_146;
  }

  v85 = 0;
LABEL_147:

  return v85;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v7 = a4;
  v8 = [(MCNewPayloadHandler *)self payload];
  v9 = [(MCNewWiFiPayloadHandler *)self _isWiFiDaemonAvailable];
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v9)
    {
      v11 = @"YES";
    }

    *buf = 138543362;
    *v97 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Wi-Fi daemon is available (install): %{public}@", buf, 0xCu);
  }

  v12 = WiFiNetworkCreate();
  if (!v12 || ((self->_manager != 0) & v9) == 0)
  {
    v25 = v7;
    v26 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v27 = self->_manager != 0;
      *buf = 67240704;
      *v97 = v12 != 0;
      *&v97[4] = 1026;
      *&v97[6] = v27;
      LOWORD(v98) = 1026;
      *(&v98 + 2) = v9;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create WiFi network. Network? %{public}d, Manager? %{public}d, wifid? %{public}d", buf, 0x14u);
    }

    v28 = MCWiFiErrorDomain;
    v29 = [@"ERROR_WIFI_COULD_NOT_CREATE" MCAppendGreenteaSuffix];
    v30 = MCErrorArray();
    v24 = [NSError MCErrorWithDomain:v28 code:13003 descriptionArray:v30 errorType:MCErrorTypeFatal, 0];
    goto LABEL_24;
  }

  [v8 ssid];
  WiFiNetworkSetProperty();
  [NSNumber numberWithInt:2];
  WiFiNetworkSetProperty();
  [v8 isHidden];
  WiFiNetworkSetDirectedState();
  v13 = [v7 objectForKey:kMCInstallProfileOptionFilterFlag];
  v14 = [v13 intValue];

  if ((v14 & 2) != 0)
  {
    WiFiNetworkSetProperty();
    v15 = [objc_opt_class() _originatorIdentifierFromInstallationOptions:v7];
    if (v15)
    {
      WiFiNetworkAddSIMIdentifier();
    }

    v16 = [objc_opt_class() _originatorNameFromInstallationOptions:v7];
    if (v16)
    {
      WiFiNetworkSetOriginatorName();
    }

    v17 = [v8 isFirstAutoJoinRestricted];
    v18 = v17;
    if (v17)
    {
      [v17 BOOLValue];
      WiFiNetworkDisableAutoJoinUntilFirstUserJoin();
    }

    v19 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [v8 ssid];
      v22 = v21 = self;
      *buf = 138544130;
      *v97 = v22;
      *&v97[8] = 2114;
      v98 = v16;
      v99 = 2114;
      v100 = v15;
      v101 = 2114;
      v102 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Carrier Profile WiFi originator properties: SSID=%{public}@, name=%{public}@, identifier=%{public}@, autojoin=%{public}@", buf, 0x2Au);

      self = v21;
    }
  }

  [v8 UUID];
  WiFiNetworkSetProperty();
  [v8 organization];
  WiFiNetworkSetProperty();
  [v8 identifier];
  WiFiNetworkSetProperty();
  if (([v8 isWEP] & 1) == 0 && !objc_msgSend(v8, "isWPA"))
  {
    v24 = 0;
LABEL_36:
    if ([v8 captiveBypass])
    {
      WiFiNetworkSetProperty();
    }

    if ([v8 isHotspot])
    {
      WiFiNetworkSetProperty();
    }

    v37 = [v8 domainName];

    if (v37)
    {
      v38 = [v8 domainName];
      WiFiNetworkSetProperty();
    }

    v39 = [v8 HESSID];

    if (v39)
    {
      v40 = [v8 HESSID];
      WiFiNetworkSetProperty();
    }

    [v8 isServiceProviderRoamingEnabled];
    WiFiNetworkSetProperty();
    v41 = [v8 roamingConsortiumOIs];
    v42 = [v41 count];

    if (v42)
    {
      v43 = [v8 roamingConsortiumOIs];
      WiFiNetworkSetProperty();
    }

    v44 = [v8 NAIRealmNames];
    v45 = [v44 count];

    if (v45)
    {
      v46 = [v8 NAIRealmNames];
      WiFiNetworkSetProperty();
    }

    v47 = [v8 MCCAndMNCs];
    v48 = [v47 count];

    v86 = self;
    if (v48)
    {
      v85 = v7;
      v49 = [v8 MCCAndMNCs];
      v50 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v49 count]);

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v51 = [v8 MCCAndMNCs];
      v52 = [v51 countByEnumeratingWithState:&v90 objects:v95 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v91;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v91 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v90 + 1) + 8 * i);
            if ([v56 characterAtIndex:3] == 48)
            {
              v57 = [v56 mutableCopy];
              [v57 replaceCharactersInRange:3 withString:{1, @"F"}];
              [v50 addObject:v57];
            }

            else
            {
              [v50 addObject:v56];
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v90 objects:v95 count:16];
        }

        while (v53);
      }

      WiFiNetworkSetProperty();
      v7 = v85;
    }

    v58 = [v8 displayedOperatorName];

    if (v58)
    {
      v59 = [v8 displayedOperatorName];
      WiFiNetworkSetProperty();
    }

    v60 = [v8 disableAssociationMACRandomization];

    if (v60)
    {
      v61 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        v63 = [v8 disableAssociationMACRandomization];
        *buf = 138543362;
        *v97 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting MAC randomization disable to: %{public}@", buf, 0xCu);
      }

      v64 = [v8 disableAssociationMACRandomization];
      [v64 BOOLValue];
      WiFiNetworkSetProperty();
    }

    sub_10005F874();
    v65 = [v8 password];
    v66 = [v65 length];

    if (v66)
    {
      v67 = v7;
      v68 = [v8 password];
      v69 = [v8 ssid];
      v70 = [v8 allowJoinBeforeFirstUnlock];
      v71 = &kSecAttrAccessibleAlways;
      if (!v70)
      {
        v71 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      }

      v72 = self;
      v73 = *v71;
      v74 = [(MCNewPayloadHandler *)v72 profileHandler];
      v75 = [v74 profile];
      v89 = v24;
      LOWORD(v84) = [v75 isInstalledForSystem];
      [MCKeychain setString:v68 forService:@"AirPort" account:v69 label:0 description:0 access:v73 group:0 useSystemKeychain:v84 sysBound:&v89 outError:?];
      v76 = v89;

      if (v76)
      {
        v24 = v76;
        v7 = v67;
        goto LABEL_25;
      }

      v24 = 0;
      v7 = v67;
      self = v86;
    }

    if ([(MCNewWiFiPayloadHandler *)self _networkServiceRequired])
    {
      v88 = v24;
      [(MCNewWiFiPayloadHandler *)self _configureNetworkServiceForWiFiNetwork:v12 outError:&v88];
      v77 = v88;

      if (v77)
      {
        v24 = v77;
        goto LABEL_25;
      }

      v24 = 0;
    }

    else
    {
      manager = self->_manager;
      WiFiManagerClientRemoveNetworkConfiguration();
    }

    v79 = self->_manager;
    WiFiManagerClientAddNetwork();
    if (([v8 autoJoin] & 1) == 0)
    {
      v80 = self->_manager;
      WiFiManagerClientDisableNetwork();
      v81 = self->_manager;
      WiFiManagerClientEnable();
    }

    if (![v8 allowJoinBeforeFirstUnlock])
    {
LABEL_25:
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v25 = v7;
    v29 = +[MCDependencyManager sharedManager];
    v30 = [v8 UUID];
    v82 = [v8 profile];
    v83 = [v82 identifier];
    [v29 addDependent:v30 ofParent:v83 inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];

LABEL_24:
    v7 = v25;
    goto LABEL_25;
  }

  v94 = 0;
  v23 = [(MCNewWiFiPayloadHandler *)self _configureEncryptionTypeForWiFiNetwork:v12 payload:v8 outError:&v94];
  v24 = v94;
  if (v23)
  {
    goto LABEL_36;
  }

LABEL_26:
  CFRelease(v12);
LABEL_27:
  v31 = _MCLogObjects[0];
  if (v24)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v97 = v24;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed installWithInstaller with error: %{public}@", buf, 0xCu);
    }

    if (a6)
    {
      v32 = MCWiFiErrorDomain;
      v33 = [@"ERROR_WIFI_COULD_NOT_INSTALL" MCAppendGreenteaSuffix];
      v34 = [v8 ssid];
      v35 = MCErrorArray();
      *a6 = [NSError MCErrorWithDomain:v32 code:13000 descriptionArray:v35 underlyingError:v24 errorType:MCErrorTypeFatal, v34, 0];
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler successfully completed installWithInstaller with no errors.", buf, 2u);
  }

  return v24 == 0;
}

+ (id)_originatorIdentifierFromInstallationOptions:(id)a3
{
  v3 = [a3 objectForKey:kMCInstallProfileOptionCarrierIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_originatorNameFromInstallationOptions:(id)a3
{
  v3 = [a3 objectForKey:kMCInstallProfileOptionCarrierName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isInstalled
{
  if (self->_manager && (v3 = WiFiManagerClientCopyNetworks()) != 0)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (CFArrayGetValueAtIndex(v4, i))
        {
          v9 = WiFiNetworkGetProperty();
          if (v9)
          {
            v10 = [(MCNewPayloadHandler *)self payload];
            v11 = [v10 UUID];
            v12 = [v9 isEqualToString:v11] ^ 1;

            v7 |= v12;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_isWiFiDaemonAvailable
{
  if (!self->_manager)
  {
    return 0;
  }

  v2 = WiFiManagerClientCopyDevices();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFArrayGetCount(v2) > 0;
  CFRelease(v3);
  return v4;
}

- (void)_removeProxyCredential
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 proxyServer];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 proxyType];

    if (v6 == 2)
    {
      v7 = [v3 proxyServerPort];
      if (v7)
      {
        v8 = [v3 proxyServerPort];
        v9 = [v8 intValue];
      }

      else
      {
        v9 = 80;
      }

      v10 = +[NSURLCredentialStorage sharedCredentialStorage];
      v11 = [(MCNewPayloadHandler *)self profileHandler];
      v12 = [v11 profile];
      [v10 set_useSystemKeychain:{objc_msgSend(v12, "isInstalledForSystem")}];

      v13 = [NSURLProtectionSpace alloc];
      v14 = [v3 proxyServer];
      v15 = [v13 initWithProxyHost:v14 port:v9 type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

      v16 = [v10 defaultCredentialForProtectionSpace:v15];
      if (v16)
      {
        v25 = NSURLCredentialStorageRemoveSynchronizableCredentials;
        v26 = &__kCFBooleanTrue;
        v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [v10 removeCredential:v16 forProtectionSpace:v15 options:v17];
      }

      v18 = [NSURLProtectionSpace alloc];
      v19 = [v3 proxyServer];
      v20 = [v18 initWithProxyHost:v19 port:v9 type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

      v21 = [v10 defaultCredentialForProtectionSpace:v20];
      if (v21)
      {
        v23 = NSURLCredentialStorageRemoveSynchronizableCredentials;
        v24 = &__kCFBooleanTrue;
        v22 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v10 removeCredential:v21 forProtectionSpace:v20 options:v22];
      }
    }
  }
}

- (void)_removeNetworkWithUUID:(id)a3 isAllowedBeforeFirstUnlock:(BOOL)a4
{
  v5 = a3;
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing WiFi network with UUID: %{public}@", buf, 0xCu);
  }

  if (self->_manager)
  {
    v7 = WiFiManagerClientCopyNetworks();
    if (v7)
    {
      v8 = v7;
      v18 = self;
      Count = CFArrayGetCount(v7);
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v20) = Count;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler iterating over %d WiFi networks", buf, 8u);
      }

      if (Count >= 1)
      {
        v11 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v8, v11);
          v12 = WiFiNetworkGetProperty();
          v13 = WiFiNetworkGetSSID();
          v14 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v20 = v13;
            v21 = 2114;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MCNewWiFiPayloadHandler considering WiFi network %{public}@ with payload UUID: %{public}@", buf, 0x16u);
          }

          if (v12 && [v12 isEqualToString:v5])
          {
            break;
          }

          if (Count == ++v11)
          {
            goto LABEL_20;
          }
        }

        v16 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v20 = v13;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler calling WiFiManagerClientRemoveNetwork() for WiFi network %{public}@ with payload UUID: %{public}@", buf, 0x16u);
        }

        WiFiNetworkIsEAP();
        manager = v18->_manager;
        WiFiManagerClientRemoveNetwork();
      }

LABEL_20:
      CFRelease(v8);
    }

    else
    {
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler WiFiManagerClientCopyNetworks returned nil.", buf, 2u);
      }
    }

    sub_10005F874();
  }
}

- (void)setAside
{
  v21 = [(MCNewPayloadHandler *)self payload];
  if ([v21 allowJoinBeforeFirstUnlock])
  {
    v3 = +[MCDependencyManager sharedManager];
    v4 = [v21 UUID];
    v5 = [v21 profile];
    v6 = [v5 identifier];
    [v3 removeDependent:v4 fromParent:v6 inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
  }

  if (self->_manager)
  {
    v7 = WiFiManagerClientCopyNetworks();
    if (v7)
    {
      v8 = v7;
      v20 = 32;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v8, v11);
          v12 = WiFiNetworkGetProperty();
          if (v12)
          {
            v13 = [(MCNewPayloadHandler *)self payload];
            v14 = [v13 UUID];
            v15 = [v12 isEqualToString:v14];

            if (v15)
            {
              break;
            }
          }

          if (v10 == ++v11)
          {
            goto LABEL_12;
          }
        }

        v16 = +[NSString MCMakeUUID];
        setAsideUUID = self->_setAsideUUID;
        self->_setAsideUUID = v16;

        v18 = self->_setAsideUUID;
        WiFiNetworkSetProperty();
        manager = self->_manager;
        WiFiManagerClientUpdateNetwork();
        WiFiNetworkIsEAP();
      }

LABEL_12:
      CFRelease(v8);
    }

    if ([v21 proxyType] == 2)
    {
      [(MCNewWiFiPayloadHandler *)self _removeProxyCredential];
    }

    sub_10005F874();
  }
}

- (void)unsetAside
{
  v33 = [(MCNewPayloadHandler *)self payload];
  if ([v33 allowJoinBeforeFirstUnlock])
  {
    v3 = +[MCDependencyManager sharedManager];
    v4 = [v33 UUID];
    v5 = [v33 profile];
    v6 = [v5 identifier];
    [v3 addDependent:v4 ofParent:v6 inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
  }

  if (self->_manager)
  {
    v7 = [(MCNewPayloadHandler *)self profileHandler];
    v8 = [v7 isSetAside];

    if (v8)
    {
      manager = self->_manager;
      v10 = WiFiManagerClientCopyNetworks();
      if (v10)
      {
        v11 = v10;
        Count = CFArrayGetCount(v10);
        if (Count >= 1)
        {
          v13 = Count;
          v14 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(v11, v14);
            v15 = WiFiNetworkGetProperty();
            v16 = v15;
            if (v15)
            {
              if ([v15 isEqualToString:self->_setAsideUUID])
              {
                break;
              }
            }

            if (v13 == ++v14)
            {
              goto LABEL_15;
            }
          }

          [v33 UUID];
          WiFiNetworkSetProperty();
          v17 = self->_manager;
          WiFiManagerClientUpdateNetwork();
          Property = WiFiNetworkGetProperty();
          if (Property)
          {
            v19 = Property;
            v20 = [v33 ssid];
            [(MCNewWiFiPayloadHandler *)self _updateWiFiCustomSetWithSetID:v19 forSSID:v20];
          }

          WiFiNetworkIsEAP();
        }

LABEL_15:
        CFRelease(v11);
      }

      sub_10005F874();
      setAsideUUID = self->_setAsideUUID;
      self->_setAsideUUID = 0;
    }

    v22 = [v33 credentialUUID];
    if (v22)
    {
      v23 = [(MCNewPayloadHandler *)self profileHandler];
      v24 = [v23 profile];
      v25 = +[MCKeychain dataFromService:account:label:description:useSystemKeychain:outError:](MCKeychain, "dataFromService:account:label:description:useSystemKeychain:outError:", @"MCWiFiCredential", v22, 0, 0, [v24 isInstalledForSystem], 0);

      if (v25)
      {
        v26 = CFPropertyListCreateWithData(0, v25, 0, 0, 0);
        if (v26)
        {
          v27 = v26;
          v28 = _CFURLCredentialCreateFromArchive();
          if (v28)
          {
            v29 = v28;
            v30 = CFURLCredentialGetUsername();
            v31 = CFURLCredentialCopyPassword();
            v32 = [NSURLCredential credentialWithUser:v30 password:v31 persistence:2];
            [(MCNewWiFiPayloadHandler *)self _applyProxyCredential:v32];
            CFRelease(v29);
          }

          CFRelease(v27);
        }
      }
    }
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];
  v5 = &stru_10011E740;
  if (v4)
  {
    v5 = @"set-aside ";
  }

  v6 = v5;

  v7 = [(MCNewPayloadHandler *)self payload];
  v8 = [(MCNewPayloadHandler *)self profileHandler];
  if ([v8 isSetAside])
  {
    v9 = self->_setAsideUUID;
  }

  else
  {
    v10 = [(MCNewPayloadHandler *)self payload];
    v9 = [v10 UUID];
  }

  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing %{public}@WiFi payload with UUID: %{public}@", v31, 0x16u);
  }

  v12 = [(MCNewWiFiPayloadHandler *)self _isWiFiDaemonAvailable];
  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (v12)
    {
      v14 = @"YES";
    }

    *v31 = 138543362;
    *&v31[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Wi-Fi daemon is available (remove): %{public}@", v31, 0xCu);
  }

  if (!self->_manager)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = v9;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - no manager";
    goto LABEL_22;
  }

  if ((v12 & 1) == 0)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = v9;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - wifid not available";
    goto LABEL_22;
  }

  if ([v7 allowJoinBeforeFirstUnlock] && MKBDeviceUnlockedSinceBoot() != 1)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = v9;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - before first unlock";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, v31, 0x16u);
    goto LABEL_29;
  }

  v15 = [(MCNewPayloadHandler *)self profileHandler];
  v16 = [v15 isSetAside];

  if (v16)
  {
    -[MCNewWiFiPayloadHandler _removeNetworkWithUUID:isAllowedBeforeFirstUnlock:](self, "_removeNetworkWithUUID:isAllowedBeforeFirstUnlock:", self->_setAsideUUID, [v7 allowJoinBeforeFirstUnlock]);
    setAsideUUID = self->_setAsideUUID;
    self->_setAsideUUID = 0;
  }

  else
  {
    v20 = [(MCNewPayloadHandler *)self payload];
    v21 = [v20 UUID];
    -[MCNewWiFiPayloadHandler _removeNetworkWithUUID:isAllowedBeforeFirstUnlock:](self, "_removeNetworkWithUUID:isAllowedBeforeFirstUnlock:", v21, [v7 allowJoinBeforeFirstUnlock]);

    [(MCNewWiFiPayloadHandler *)self _removeProxyCredential];
  }

  v22 = [v7 credentialUUID];
  if (v22)
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138543362;
      *&v31[4] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing credential with UUID: %{public}@", v31, 0xCu);
    }

    v24 = [(MCNewPayloadHandler *)self profileHandler];
    v25 = [v24 profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"MCWiFiCredential", v22, 0, 0, [v25 isInstalledForSystem], 0);
  }

LABEL_29:
  v26 = [(MCNewPayloadHandler *)self profileHandler:*v31];
  if ([v26 isSetAside])
  {
LABEL_32:

    goto LABEL_33;
  }

  v27 = [v7 allowJoinBeforeFirstUnlock];

  if (v27)
  {
    v26 = +[MCDependencyManager sharedManager];
    v28 = [v7 UUID];
    v29 = [v7 profile];
    v30 = [v29 identifier];
    [v26 removeDependent:v28 fromParent:v30 inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];

    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)canInstallPayloadWithJoinBeforeFirstUnlock:(id)a3 error:(id *)a4
{
  v5 = +[MDMCloudConfiguration sharedConfiguration];
  [v5 refreshDetailsFromDisk];
  if ([v5 isRapidReturnToService])
  {
    v6 = +[MCDependencyManager sharedReader];
    v7 = kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey;
    v8 = [v6 parentsInDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v6 dependentsOfParent:v9 inDomain:v7];

      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v10 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:0];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler: another WiFi payload (%{public}@) in profile with identifier: %{public}@ already has auto join before first unlock set", buf, 0x16u);
      }

      v15 = MCWiFiErrorDomain;
      v16 = [@"ERROR_WIFI_ONLY_ONE_RECOVERY_NETWORK" MCAppendGreenteaSuffix];
      v17 = MCErrorArray();
      v18 = [NSError MCErrorWithDomain:v15 code:13006 descriptionArray:v17 errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      v18 = 0;
    }

    v21 = v18 == 0;
  }

  else
  {
    v19 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler AutoJoinBeforeFirstUnlock not supported outside of RTS mode", buf, 2u);
    }

    v20 = MCWiFiErrorDomain;
    v6 = [@"ERROR_WIFI_ONLY_ALLOWED_IN_RTS_MODE" MCAppendGreenteaSuffix];
    v8 = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:v20 code:13007 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
    v21 = 0;
  }

  if (a4 && v18)
  {
    v22 = v18;
    *a4 = v18;
  }

  return v21;
}

+ (id)managedWiFiNetworkNames
{
  v2 = +[NSMutableArray array];
  if (qword_100136B90)
  {
    goto LABEL_5;
  }

  qword_100136B90 = WiFiManagerClientCreate();
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v17 = 67109120;
    LODWORD(v18) = qword_100136B90 != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler attempted to create WiFiManagerClient and got success status: %d", &v17, 8u);
  }

  if (qword_100136B90)
  {
LABEL_5:
    v4 = WiFiManagerClientCopyNetworks();
    v5 = v4;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
    }

    else
    {
      Count = 0;
    }

    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      v18 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler checking %ld networks for profile-installed configurations...", &v17, 0xCu);
    }

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        if (CFArrayGetValueAtIndex(v5, i))
        {
          if (WiFiNetworkGetProperty())
          {
            SSID = WiFiNetworkGetSSID();
            if (SSID)
            {
              [v2 addObject:SSID];
            }

            else
            {
              v14 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v17) = 0;
                v11 = v14;
                v12 = "MCNewWiFiPayloadHandler skipped Wi-Fi network missing SSID";
                goto LABEL_22;
              }
            }
          }

          else
          {
            v13 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v17) = 0;
              v11 = v13;
              v12 = "MCNewWiFiPayloadHandler skipped Wi-Fi network missing UUID";
              goto LABEL_22;
            }
          }
        }

        else
        {
          v10 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v17) = 0;
            v11 = v10;
            v12 = "MCNewWiFiPayloadHandler skipped non-existent Wi-Fi network";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, &v17, 2u);
          }
        }
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543362;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler managed Wi-Fi networks: %{public}@", &v17, 0xCu);
  }

  return v2;
}

@end