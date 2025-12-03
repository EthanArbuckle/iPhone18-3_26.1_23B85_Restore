@interface MCProfileServiceProfileHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCProfileServiceProfileHandler)initWithProfile:(id)profile;
- (id)_badIdentityError;
- (id)_sdpErrorForFinalProfile:(id)profile;
- (id)fetchFinalProfileWithClient:(id)client outProfileData:(id *)data outError:(id *)error;
- (void)dealloc;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)removeWithInstaller:(id)installer options:(id)options;
- (void)setAsideWithInstaller:(id)installer;
- (void)unsetAside;
@end

@implementation MCProfileServiceProfileHandler

- (MCProfileServiceProfileHandler)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = MCProfileServiceProfileHandler;
  v5 = [(MCProfileHandler *)&v10 initWithProfile:profileCopy];
  if (v5)
  {
    enrollmentIdentityPersistentID = [profileCopy enrollmentIdentityPersistentID];
    persistentID = v5->_persistentID;
    v5->_persistentID = enrollmentIdentityPersistentID;

    v8 = v5->_persistentID;
    if (v8)
    {
      v5->_identity = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v8, [profileCopy isInstalledForSystem]);
    }
  }

  return v5;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MCProfileServiceProfileHandler;
  [(MCProfileServiceProfileHandler *)&v4 dealloc];
}

- (id)_badIdentityError
{
  v2 = MCOTAProfilesErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:24002 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)fetchFinalProfileWithClient:(id)client outProfileData:(id *)data outError:(id *)error
{
  clientCopy = client;
  profile = [(MCProfileHandler *)self profile];
  uRLString = [profile URLString];
  v85 = [NSURL URLWithString:uRLString];

  p_vtable = MCNewSubCalAccountPayloadHandler.vtable;
  if (self->_identity)
  {
    dataCopy2 = data;
    errorCopy2 = error;
    v12 = 0;
    v13 = 0;
    permanentlyRedirectedURL = 0;
    goto LABEL_3;
  }

  v23 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Enrolling in OTA Profile service...", buf, 2u);
  }

  deviceAttributes = [profile deviceAttributes];
  challenge = [profile challenge];
  v90 = 0;
  v26 = [MCMachineInfo machineInfoWithKeys:deviceAttributes challenge:challenge identity:0 additionalInfo:0 outError:&v90];
  v12 = v90;

  if (v12)
  {
    permanentlyRedirectedURL = 0;
LABEL_15:

    v22 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v81 = clientCopy;
  dataCopy2 = data;
  v30 = [[DMCHTTPTransaction alloc] initWithURL:v85 method:@"POST"];
  [v30 setTimeout:45.0];
  [v30 setUserAgent:kMCProfileUserAgent];
  [v30 setContentType:@"application/pkcs7-signature"];
  [v30 setData:v26];
  [v30 performSynchronously];
  responseData = [v30 responseData];
  permanentlyRedirectedURL = [v30 permanentlyRedirectedURL];
  error = [v30 error];
  if (error)
  {
    v12 = error;

    clientCopy = v81;
    goto LABEL_15;
  }

  v89 = 0;
  v84 = responseData;
  v34 = [MCProfile profileWithData:responseData outError:&v89];
  _badIdentityError = v89;
  v79 = v34;
  if (_badIdentityError)
  {
    goto LABEL_48;
  }

  [v34 payloads];
  v37 = v36 = v34;
  v38 = [v37 count];

  if (v38 != 1)
  {
    _badIdentityError = [(MCProfileServiceProfileHandler *)self _badIdentityError];
LABEL_48:
    v12 = _badIdentityError;
    v61 = 0;
    v13 = 0;
    goto LABEL_49;
  }

  payloads = [v36 payloads];
  v40 = [payloads objectAtIndex:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v40 isIdentity])
  {
    _badIdentityError2 = 0;
  }

  else
  {
    _badIdentityError2 = [(MCProfileServiceProfileHandler *)self _badIdentityError];
  }

  [v40 handlerWithProfileHandler:self];
  v13 = v78 = v40;
  v88 = _badIdentityError2;
  v75 = [v13 copyIdentityImmediatelyWithInteractionClient:v81 outError:&v88];
  v12 = v88;

  v63 = v78;
  self->_identity = v75;
  v61 = v12 == 0;
  if (!v12)
  {
    installType = [profile installType];
    v73 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v92 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "Temporarily storing identity for profile service profile, storing with accessibility %@", buf, 0xCu);
    }

    v74 = installType == 2;
    v77 = installType != 2;
    identity = self->_identity;
    uUID = [profile UUID];
    v64 = [MCKeychain saveItem:identity withLabel:uUID group:kMCAppleIdentitiesKeychainGroup useSystemKeychain:v77 accessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly];
    persistentID = self->_persistentID;
    self->_persistentID = v64;

    v70 = self->_persistentID;
    uUID2 = [profile UUID];
    [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:v70 andUUID:uUID2 forSystem:v77 user:v74];

    v72 = self->_persistentID;
    uUID3 = [profile UUID];
    [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:v72 andUUID:uUID3 forSystem:v77 user:v74];

    v63 = v78;
  }

LABEL_49:
  if (v61)
  {
    errorCopy2 = error;
    clientCopy = v81;
    p_vtable = (MCNewSubCalAccountPayloadHandler + 24);
LABEL_3:
    v15 = clientCopy;
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieving profile from OTA Profile service...", buf, 2u);
    }

    v17 = p_vtable + 432;
    deviceAttributes2 = [profile deviceAttributes];
    v19 = self->_identity;
    v87 = v12;
    v20 = [v17 machineInfoWithKeys:deviceAttributes2 challenge:0 identity:v19 additionalInfo:0 outError:&v87];
    v21 = v87;

    if (v21)
    {
      v22 = 0;
      v12 = v21;
LABEL_29:

      clientCopy = v15;
      error = errorCopy2;
      goto LABEL_30;
    }

    v27 = [[DMCHTTPTransaction alloc] initWithURL:v85 method:@"POST"];
    [v27 setTimeout:45.0];
    [v27 setUserAgent:kMCProfileUserAgent];
    [v27 setContentType:@"application/pkcs7-signature"];
    [v27 setData:v20];
    [v27 performSynchronously];
    responseData2 = [v27 responseData];
    permanentlyRedirectedURL2 = [v27 permanentlyRedirectedURL];

    error2 = [v27 error];
    if (error2)
    {
      v12 = error2;
      v22 = 0;
LABEL_28:

      permanentlyRedirectedURL = permanentlyRedirectedURL2;
      goto LABEL_29;
    }

    v86 = 0;
    v22 = [MCProfile profileWithData:responseData2 outError:&v86];
    v33 = v86;
    if (v33)
    {
LABEL_17:
      v12 = v33;
      goto LABEL_28;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v22 isUserEnrollmentProfile])
      {
        if (v15)
        {
          if (+[DMCMobileGestalt isVisionDevice](DMCMobileGestalt, "isVisionDevice") && [v22 isMDMProfile] && (+[DMCFeatureFlags isVisionProfileEnrollEnabled](DMCFeatureFlags, "isVisionProfileEnrollEnabled") & 1) == 0)
          {
            v66 = MCOTAProfilesErrorDomain;
            v43 = MCErrorArrayByDevice();
            v44 = MCErrorTypeFatal;
            v45 = v66;
            v46 = 24006;
            goto LABEL_27;
          }

          v33 = [(MCProfileServiceProfileHandler *)self _sdpErrorForFinalProfile:v22];
          if (v33)
          {
            goto LABEL_17;
          }
        }

        if (dataCopy2)
        {
          v62 = responseData2;
          v12 = 0;
          *dataCopy2 = responseData2;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_28;
      }

      v42 = MCOTAProfilesErrorDomain;
      v43 = MCErrorArray();
      v44 = MCErrorTypeFatal;
      v45 = v42;
      v46 = 24004;
    }

    else
    {
      v47 = MCOTAProfilesErrorDomain;
      v43 = MCErrorArray();
      v44 = MCErrorTypeFatal;
      v45 = v47;
      v46 = 24003;
    }

LABEL_27:
    v12 = [NSError MCErrorWithDomain:v45 code:v46 descriptionArray:v43 errorType:v44, 0];

    goto LABEL_28;
  }

  v22 = 0;
  clientCopy = v81;
LABEL_30:

  if (!v12)
  {
    [profile setEnrollmentIdentityPersistentID:self->_persistentID];
    [v22 setOTAProfile:profile];
    v57 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      identifier = [v22 identifier];
      *buf = 138543362;
      v92 = identifier;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Received final profile: %{public}@", buf, 0xCu);
    }

    v22 = v22;
    v12 = 0;
    v56 = v22;
    goto LABEL_43;
  }

LABEL_31:
  if (permanentlyRedirectedURL)
  {
    userInfo = [v12 userInfo];
    v49 = [userInfo mutableCopy];

    absoluteString = [permanentlyRedirectedURL absoluteString];
    [v49 setObject:absoluteString forKey:MCErrorPermanentlyRedirectedURLString];

    domain = [v12 domain];
    v52 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v12 code], v49);

    v12 = v52;
  }

  if (error)
  {
    *error = [v12 MCCopyAsPrimaryError];
  }

  v53 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v54 = v53;
    mCVerboseDescription = [v12 MCVerboseDescription];
    *buf = 138543362;
    v92 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failure occurred while retrieving profile during OTA Profile Enrollment: %{public}@", buf, 0xCu);
  }

  if (!v13)
  {
    v56 = 0;
    goto LABEL_44;
  }

  [v13 remove];
  v56 = 0;
LABEL_43:

LABEL_44:

  return v56;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  optionsCopy = options;
  installerCopy = installer;
  profile = [(MCProfileHandler *)self profile];
  v25.receiver = self;
  v25.super_class = MCProfileServiceProfileHandler;
  v26 = 0;
  [(MCProfileHandler *)&v25 installWithInstaller:installerCopy options:optionsCopy interactionClient:clientCopy outError:&v26];

  v14 = v26;
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }
  }

  else
  {
    installType = [profile installType];
    v18 = installType != 2;
    v19 = installType == 2;
    enrollmentIdentityPersistentID = [profile enrollmentIdentityPersistentID];
    uUID = [profile UUID];
    [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:enrollmentIdentityPersistentID andUUID:uUID forSystem:v18 user:v19];

    v22 = +[MCInstaller sharedInstaller];
    identifier = [profile identifier];
    [v22 purgePurgatoryProfileWithIdentifier:identifier targetDevice:{+[MCProfile thisDeviceType](MCProfile, "thisDeviceType")}];
  }

  return v15 == 0;
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  restrictionsCopy = restrictions;
  globalRestrictionsCopy = globalRestrictions;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "OTA Profile installed", buf, 2u);
  }

  profile = [(MCProfileHandler *)self profile];
  if ([profile confirmInstallation])
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending installation confirmation to OTA Profile service. No error check is performed.", v17, 2u);
    }

    v11 = [NSPropertyListSerialization dataWithPropertyList:&off_100127328 format:100 options:0 error:0];
    if (v11)
    {
      uRLString = [profile URLString];
      v13 = [NSURL URLWithString:uRLString];

      v14 = +[NSMutableData data];
      identity = self->_identity;
      if (!SecCMSSignDataAndAttributes())
      {
        v16 = [[DMCHTTPTransaction alloc] initWithURL:v13 method:@"POST"];
        [v16 setTimeout:45.0];
        [v16 setUserAgent:kMCProfileUserAgent];
        [v16 setContentType:@"application/pkcs7-signature"];
        [v16 setData:v14];
        [v16 performSynchronously];
      }
    }
  }
}

- (void)setAsideWithInstaller:(id)installer
{
  v10.receiver = self;
  v10.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v10 setAsideWithInstaller:installer];
  profile = [(MCProfileHandler *)self profile];
  installType = [profile installType];
  v6 = installType != 2;
  v7 = installType == 2;
  enrollmentIdentityPersistentID = [profile enrollmentIdentityPersistentID];
  uUID = [profile UUID];
  [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:enrollmentIdentityPersistentID andUUID:uUID forSystem:v6 user:v7];
}

- (void)unsetAside
{
  v9.receiver = self;
  v9.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v9 unsetAside];
  profile = [(MCProfileHandler *)self profile];
  installType = [profile installType];
  v5 = installType != 2;
  v6 = installType == 2;
  enrollmentIdentityPersistentID = [profile enrollmentIdentityPersistentID];
  uUID = [profile UUID];
  [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:enrollmentIdentityPersistentID andUUID:uUID forSystem:v5 user:v6];
}

- (void)removeWithInstaller:(id)installer options:(id)options
{
  v11.receiver = self;
  v11.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v11 removeWithInstaller:installer options:options];
  if (![(MCProfileHandler *)self isSetAside])
  {
    profile = [(MCProfileHandler *)self profile];
    installType = [profile installType];
    v7 = installType != 2;
    v8 = installType == 2;
    enrollmentIdentityPersistentID = [profile enrollmentIdentityPersistentID];
    uUID = [profile UUID];
    [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:enrollmentIdentityPersistentID andUUID:uUID forSystem:v7 user:v8];
  }
}

- (id)_sdpErrorForFinalProfile:(id)profile
{
  profileCopy = profile;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100084168;
  v17 = sub_100084178;
  v18 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100084180;
  v10 = &unk_10011CDB8;
  v12 = &v13;
  v4 = objc_opt_new();
  v11 = v4;
  [MCInstaller isInteractiveProfileInstallationAllowedBySDP:profileCopy completion:&v7];
  [v4 waitForCompletion];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

@end