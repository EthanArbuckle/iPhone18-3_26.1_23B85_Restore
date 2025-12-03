@interface MCGlobalEthernetPayloadHandler
- (BOOL)_install:(id)_install username:(id)username password:(id)password identity:(__SecIdentity *)identity;
- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)valid;
- (BOOL)_setEAPConfig:(id)config;
- (BOOL)_uninstall;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCGlobalEthernetPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)profileMetadata;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCGlobalEthernetPayloadHandler

- (MCGlobalEthernetPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = MCGlobalEthernetPayloadHandler;
  return [(MCNewPayloadHandler *)&v5 initWithPayload:payload profileHandler:handler];
}

- (id)profileMetadata
{
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  v4 = [NSDictionary dictionaryWithObject:uUID forKey:kMCPayloadUUIDKey];

  return v4;
}

- (BOOL)_install:(id)_install username:(id)username password:(id)password identity:(__SecIdentity *)identity
{
  _installCopy = _install;
  usernameCopy = username;
  passwordCopy = password;
  payload = [(MCNewPayloadHandler *)self payload];
  v14 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v14)
  {
    v15 = v14;
    SystemEthernetProfile = EAPOLClientConfigurationGetSystemEthernetProfile();
    if (SystemEthernetProfile && ![(MCGlobalEthernetPayloadHandler *)self _isMetadataValid:SystemEthernetProfile])
    {
      v28 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v49 = 138543362;
        v50 = objc_opt_class();
        v30 = v50;
        v31 = "%{public}@ payload of this type is already installed";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v31, &v49, 0xCu);
      }
    }

    else
    {
      v17 = EAPOLClientProfileCreate();
      if (v17)
      {
        v18 = v17;
        if (EAPOLClientProfileGetID())
        {
          v19 = EAPOLClientItemIDCreateWithProfile();
          if (v19)
          {
            v20 = v19;
            displayName = [payload displayName];

            if (displayName)
            {
              displayName2 = [payload displayName];
              EAPOLClientProfileSetUserDefinedName();
            }

            EAPOLClientProfileSetAuthenticationProperties();
            profileMetadata = [(MCGlobalEthernetPayloadHandler *)self profileMetadata];
            if (profileMetadata && !EAPOLClientProfileSetInformation())
            {
              v38 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                v39 = v38;
                v49 = 138543362;
                v50 = objc_opt_class();
                v40 = v50;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientProfileSetInformation() failed", &v49, 0xCu);
              }

              goto LABEL_46;
            }

            if (usernameCopy && passwordCopy && !EAPOLClientItemIDSetPasswordItem())
            {
              v46 = _MCLogObjects[0];
              if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_46;
              }

              v42 = v46;
              v49 = 138543362;
              v50 = objc_opt_class();
              v43 = v50;
              v44 = "%{public}@ EAPOLClientItemIDSetPasswordItem() failed";
            }

            else if (identity && !EAPOLClientItemIDSetIdentity())
            {
              v45 = _MCLogObjects[0];
              if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_46;
              }

              v42 = v45;
              v49 = 138543362;
              v50 = objc_opt_class();
              v43 = v50;
              v44 = "%{public}@ EAPOLClientItemIDSetIdentity() failed";
            }

            else
            {
              if (EAPOLClientConfigurationSetSystemEthernetProfile())
              {
                if (EAPOLClientConfigurationSave())
                {
                  v24 = 1;
LABEL_47:
                  CFRelease(v20);
                  goto LABEL_48;
                }

                v47 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  v42 = v47;
                  v49 = 138543362;
                  v50 = objc_opt_class();
                  v43 = v50;
                  v44 = "%{public}@ EAPOLClientConfigurationSave() failed";
                  goto LABEL_45;
                }

LABEL_46:
                v24 = 0;
                goto LABEL_47;
              }

              v41 = _MCLogObjects[0];
              if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_46;
              }

              v42 = v41;
              v49 = 138543362;
              v50 = objc_opt_class();
              v43 = v50;
              v44 = "%{public}@ EAPOLClientConfigurationSetSystemEthernetProfile() failed";
            }

LABEL_45:
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v44, &v49, 0xCu);

            goto LABEL_46;
          }

          v37 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v34 = v37;
            v49 = 138543362;
            v50 = objc_opt_class();
            v35 = v50;
            v36 = "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL";
            goto LABEL_32;
          }
        }

        else
        {
          v33 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
            v49 = 138543362;
            v50 = objc_opt_class();
            v35 = v50;
            v36 = "%{public}@ EAPOLClientProfileGetID() returned NULL";
LABEL_32:
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v36, &v49, 0xCu);
          }
        }

        v24 = 0;
LABEL_48:
        CFRelease(v18);
        goto LABEL_49;
      }

      v32 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v29 = v32;
        v49 = 138543362;
        v50 = objc_opt_class();
        v30 = v50;
        v31 = "%{public}@ EAPOLClientProfileCreate() returned NULL";
        goto LABEL_26;
      }
    }

    v24 = 0;
LABEL_49:
    CFRelease(v15);
    goto LABEL_50;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    v49 = 138543362;
    v50 = objc_opt_class();
    v27 = v50;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v49, 0xCu);
  }

  v24 = 0;
LABEL_50:

  return v24;
}

- (BOOL)_uninstall
{
  v3 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v3)
  {
    v4 = v3;
    if (self->_setAsideProfileID)
    {
      ProfileWithID = EAPOLClientConfigurationGetProfileWithID();
    }

    else
    {
      ProfileWithID = EAPOLClientConfigurationGetSystemEthernetProfile();
    }

    if (ProfileWithID)
    {
      if ([(MCGlobalEthernetPayloadHandler *)self _isMetadataValid:ProfileWithID])
      {
        v10 = EAPOLClientItemIDCreateWithProfile();
        if (v10)
        {
          v11 = v10;
          if (!EAPOLClientItemIDRemovePasswordItem())
          {
            v12 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              v35 = 138543362;
              v36 = objc_opt_class();
              v14 = v36;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDRemovePasswordItem() failed", &v35, 0xCu);
            }
          }

          if (!EAPOLClientItemIDSetIdentity())
          {
            v15 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = objc_opt_class();
              v35 = 138543362;
              v36 = v17;
              v18 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDSetIdentity() failed", &v35, 0xCu);
            }
          }

          if (self->_setAsideProfileID || EAPOLClientConfigurationSetSystemEthernetProfile())
          {
            if (EAPOLClientConfigurationRemoveProfile())
            {
              if (EAPOLClientConfigurationSave())
              {
                v9 = 1;
LABEL_40:
                CFRelease(v11);
                goto LABEL_30;
              }

              v31 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                v27 = v31;
                v32 = objc_opt_class();
                v35 = 138543362;
                v36 = v32;
                v29 = v32;
                v30 = "%{public}@ EAPOLClientConfigurationSave() failed";
                goto LABEL_38;
              }
            }

            else
            {
              v26 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                v27 = v26;
                v28 = objc_opt_class();
                v35 = 138543362;
                v36 = v28;
                v29 = v28;
                v30 = "%{public}@ EAPOLClientConfigurationRemoveProfile() failed";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v30, &v35, 0xCu);
              }
            }
          }

          else
          {
            v33 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              v27 = v33;
              v34 = objc_opt_class();
              v35 = 138543362;
              v36 = v34;
              v29 = v34;
              v30 = "%{public}@ EAPOLClientConfigurationSetSystemEthernetProfile() failed";
              goto LABEL_38;
            }
          }

          v9 = 0;
          goto LABEL_40;
        }

        v24 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v20 = v24;
          v35 = 138543362;
          v36 = objc_opt_class();
          v21 = v36;
          v22 = "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL";
          goto LABEL_28;
        }

LABEL_29:
        v9 = 0;
LABEL_30:
        CFRelease(v4);
        return v9;
      }

      v23 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v20 = v23;
      v35 = 138543362;
      v36 = objc_opt_class();
      v21 = v36;
      v22 = "%{public}@ metadata validation failed";
    }

    else
    {
      v19 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v20 = v19;
      v35 = 138543362;
      v36 = objc_opt_class();
      v21 = v36;
      v22 = "%{public}@ failed to find EAP profile";
    }

LABEL_28:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v22, &v35, 0xCu);

    goto LABEL_29;
  }

  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v35 = 138543362;
    v36 = objc_opt_class();
    v8 = v36;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v35, 0xCu);
  }

  return 0;
}

- (BOOL)_setEAPConfig:(id)config
{
  configCopy = config;
  cf = 0;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = [configCopy mutableCopy];
  if ([payload usernameRequired] && (objc_msgSend(payload, "username"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138543362;
      v75 = objc_opt_class();
      v12 = v75;
      v13 = "%{public}@ username is not available";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }
  }

  else
  {
    if (![payload passwordRequired] || (objc_msgSend(payload, "password"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = 1;
      goto LABEL_12;
    }

    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v11 = v14;
      *buf = 138543362;
      v75 = objc_opt_class();
      v12 = v75;
      v13 = "%{public}@ password is not available";
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_12:
  v15 = [v6 objectForKey:@"TLSTrustedCertificates"];

  if (v15)
  {
    if (!v9)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v63 = v9;
    v64 = v6;
    v66 = configCopy;
    v67 = +[NSMutableArray array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v65 = payload;
    obj = [payload payloadCertificateAnchorUUIDs];
    v16 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v70;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v69 + 1) + 8 * i);
          profileHandler = [(MCNewPayloadHandler *)self profileHandler];
          v22 = [profileHandler persistentIDForCertificateUUID:v20];

          if (v22)
          {
            profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
            profile = [profileHandler2 profile];
            isInstalledForSystem = [profile isInstalledForSystem];

            v26 = [MCKeychain copyCertificateWithPersistentID:v22 useSystemKeychain:isInstalledForSystem];
            if (v26)
            {
              v27 = v26;
              v28 = SecCertificateCopyData(v26);
              if (v28)
              {
                v29 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                {
                  v30 = v29;
                  v31 = objc_opt_class();
                  *buf = 138543874;
                  v75 = v31;
                  v76 = 2114;
                  v77 = v20;
                  v78 = 1026;
                  v79 = isInstalledForSystem;
                  v32 = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ adding trusted certificate UUID %{public}@ with system keychain? %{public}d", buf, 0x1Cu);
                }

                [v67 addObject:v28];
              }

              CFRelease(v27);
            }
          }

          else
          {
            v33 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v34 = v33;
              v35 = objc_opt_class();
              *buf = 138543618;
              v75 = v35;
              v76 = 2114;
              v77 = v20;
              v36 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ certificate UUID %{public}@ referenced by this payload does not exist, skipping.", buf, 0x16u);
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      }

      while (v17);
    }

    v6 = v64;
    if ([v67 count])
    {
      [v64 setObject:v67 forKey:@"TLSTrustedCertificates"];
    }

    payload = v65;
    configCopy = v66;
    if (!v63)
    {
      goto LABEL_48;
    }
  }

  certificateUUID = [payload certificateUUID];

  if (certificateUUID)
  {
    profileHandler3 = [(MCNewPayloadHandler *)self profileHandler];
    certificateUUID2 = [payload certificateUUID];
    v40 = [profileHandler3 persistentIDForCertificateUUID:certificateUUID2];

    v41 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = objc_opt_class();
      *buf = 138543618;
      v75 = v43;
      v76 = 1026;
      LODWORD(v77) = v40 != 0;
      v44 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ handling identity certs? %{public}d", buf, 0x12u);
    }

    if (v40 && (EAPSecIdentityHandleCreateSecIdentity() || !cf))
    {
      v54 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
        v56 = objc_opt_class();
        *buf = 138543362;
        v75 = v56;
        v57 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPSecIdentityHandleCreateSecIdentity() failed", buf, 0xCu);
      }

      goto LABEL_48;
    }
  }

  username = [payload username];
  v46 = [username dataUsingEncoding:4];

  password = [payload password];
  v48 = [password dataUsingEncoding:4];

  LODWORD(password) = [(MCGlobalEthernetPayloadHandler *)self _install:v6 username:v46 password:v48 identity:cf];
  if (!password)
  {
LABEL_48:
    v58 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v59 = v58;
      v60 = objc_opt_class();
      *buf = 138543362;
      v75 = v60;
      v61 = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}@ installation failed.", buf, 0xCu);
    }

    v53 = 0;
    goto LABEL_51;
  }

  v49 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v50 = v49;
    v51 = objc_opt_class();
    *buf = 138543618;
    v75 = v51;
    v76 = 2114;
    v77 = v6;
    v52 = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ installation succeeded with EAP profile: %{public}@", buf, 0x16u);
  }

  v53 = 1;
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  return v53;
}

- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)valid
{
  payload = [(MCNewPayloadHandler *)self payload];
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
  uUID = [payload UUID];
  v11 = [v9 isEqualToString:uUID];

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

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [(MCNewPayloadHandler *)self payload:installer];
  eapClientConfiguration = [v8 eapClientConfiguration];

  if (!eapClientConfiguration)
  {
    goto LABEL_6;
  }

  eapClientConfiguration2 = [v8 eapClientConfiguration];
  v11 = [(MCGlobalEthernetPayloadHandler *)self _setEAPConfig:eapClientConfiguration2];

  if ((v11 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v12 = MCGlobalEthernetErrorDomain;
    v13 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v12 code:62000 descriptionArray:v13 errorType:MCErrorTypeFatal, 0];

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

- (void)remove
{
  if (![(MCGlobalEthernetPayloadHandler *)self _uninstall])
  {
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v11 = 138543362;
      v12 = objc_opt_class();
      v5 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ uninstallation failed.", &v11, 0xCu);
    }
  }

  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v11 = 138543362;
    v12 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@ uninstallation succeeded", &v11, 0xCu);
  }

  setAsideProfileID = self->_setAsideProfileID;
  self->_setAsideProfileID = 0;
}

- (void)setAside
{
  setAsideProfileID = self->_setAsideProfileID;
  self->_setAsideProfileID = 0;

  v4 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v4)
  {
    v5 = v4;
    SystemEthernetProfile = EAPOLClientConfigurationGetSystemEthernetProfile();
    if (SystemEthernetProfile)
    {
      if ([(MCGlobalEthernetPayloadHandler *)self _isMetadataValid:SystemEthernetProfile])
      {
        v7 = EAPOLClientProfileGetID();
        v8 = self->_setAsideProfileID;
        self->_setAsideProfileID = v7;

        if (self->_setAsideProfileID)
        {
          if (EAPOLClientConfigurationSetSystemEthernetProfile())
          {
            if (EAPOLClientConfigurationSave())
            {
              goto LABEL_20;
            }

            v9 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            v10 = v9;
            v20 = 138543362;
            v21 = objc_opt_class();
            v11 = v21;
            v12 = "%{public}@ EAPOLClientConfigurationSave() failed";
            goto LABEL_19;
          }

          v19 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v10 = v19;
            v20 = 138543362;
            v21 = objc_opt_class();
            v11 = v21;
            v12 = "%{public}@ EAPOLClientConfigurationSetSystemEthernetProfile() failed";
            goto LABEL_19;
          }

LABEL_20:
          CFRelease(v5);
          return;
        }

        v18 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v10 = v18;
        v20 = 138543362;
        v21 = objc_opt_class();
        v11 = v21;
        v12 = "%{public}@ EAPOLClientProfileGetID() returned NULL";
      }

      else
      {
        v17 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v10 = v17;
        v20 = 138543362;
        v21 = objc_opt_class();
        v11 = v21;
        v12 = "%{public}@ metadata validation failed";
      }
    }

    else
    {
      v16 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v10 = v16;
      v20 = 138543362;
      v21 = objc_opt_class();
      v11 = v21;
      v12 = "%{public}@ EAPOLClientProfileCreate() returned NULL";
    }

LABEL_19:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, &v20, 0xCu);

    goto LABEL_20;
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    v20 = 138543362;
    v21 = objc_opt_class();
    v15 = v21;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v20, 0xCu);
  }
}

- (void)unsetAside
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  if ([profileHandler isSetAside])
  {
    setAsideProfileID = self->_setAsideProfileID;

    if (!setAsideProfileID)
    {
      return;
    }

    v4 = EAPOLClientConfigurationCreateWithAuthorization();
    if (v4)
    {
      v5 = v4;
      v6 = self->_setAsideProfileID;
      if (EAPOLClientConfigurationGetProfileWithID())
      {
        if (EAPOLClientConfigurationSetSystemEthernetProfile())
        {
          if (EAPOLClientConfigurationSave())
          {
            v7 = self->_setAsideProfileID;
            self->_setAsideProfileID = 0;

LABEL_20:
            CFRelease(v5);
            return;
          }

          v16 = _MCLogObjects[0];
          if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v12 = v16;
          *buf = 138543362;
          v19 = objc_opt_class();
          v13 = v19;
          v14 = "%{public}@ EAPOLClientConfigurationSave() failed";
        }

        else
        {
          v15 = _MCLogObjects[0];
          if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v12 = v15;
          *buf = 138543362;
          v19 = objc_opt_class();
          v13 = v19;
          v14 = "%{public}@ EAPOLClientConfigurationSetSystemEthernetProfile() failed";
        }
      }

      else
      {
        v11 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v12 = v11;
        *buf = 138543362;
        v19 = objc_opt_class();
        v13 = v19;
        v14 = "%{public}@ EAPOLClientConfigurationGetProfileWithID() returned NULL";
      }

      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);

      goto LABEL_20;
    }

    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      *buf = 138543362;
      v19 = objc_opt_class();
      v10 = v19;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", buf, 0xCu);
    }
  }

  else
  {
  }
}

@end