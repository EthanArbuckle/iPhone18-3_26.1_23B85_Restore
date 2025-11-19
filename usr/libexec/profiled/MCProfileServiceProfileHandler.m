@interface MCProfileServiceProfileHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (MCProfileServiceProfileHandler)initWithProfile:(id)a3;
- (id)_badIdentityError;
- (id)_sdpErrorForFinalProfile:(id)a3;
- (id)fetchFinalProfileWithClient:(id)a3 outProfileData:(id *)a4 outError:(id *)a5;
- (void)dealloc;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)removeWithInstaller:(id)a3 options:(id)a4;
- (void)setAsideWithInstaller:(id)a3;
- (void)unsetAside;
@end

@implementation MCProfileServiceProfileHandler

- (MCProfileServiceProfileHandler)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCProfileServiceProfileHandler;
  v5 = [(MCProfileHandler *)&v10 initWithProfile:v4];
  if (v5)
  {
    v6 = [v4 enrollmentIdentityPersistentID];
    persistentID = v5->_persistentID;
    v5->_persistentID = v6;

    v8 = v5->_persistentID;
    if (v8)
    {
      v5->_identity = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v8, [v4 isInstalledForSystem]);
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

- (id)fetchFinalProfileWithClient:(id)a3 outProfileData:(id *)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = [(MCProfileHandler *)self profile];
  v10 = [v9 URLString];
  v85 = [NSURL URLWithString:v10];

  p_vtable = MCNewSubCalAccountPayloadHandler.vtable;
  if (self->_identity)
  {
    v82 = a4;
    v83 = a5;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_3;
  }

  v23 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Enrolling in OTA Profile service...", buf, 2u);
  }

  v24 = [v9 deviceAttributes];
  v25 = [v9 challenge];
  v90 = 0;
  v26 = [MCMachineInfo machineInfoWithKeys:v24 challenge:v25 identity:0 additionalInfo:0 outError:&v90];
  v12 = v90;

  if (v12)
  {
    v14 = 0;
LABEL_15:

    v22 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v81 = v8;
  v82 = a4;
  v30 = [[DMCHTTPTransaction alloc] initWithURL:v85 method:@"POST"];
  [v30 setTimeout:45.0];
  [v30 setUserAgent:kMCProfileUserAgent];
  [v30 setContentType:@"application/pkcs7-signature"];
  [v30 setData:v26];
  [v30 performSynchronously];
  v31 = [v30 responseData];
  v14 = [v30 permanentlyRedirectedURL];
  v32 = [v30 error];
  if (v32)
  {
    v12 = v32;

    v8 = v81;
    goto LABEL_15;
  }

  v89 = 0;
  v84 = v31;
  v34 = [MCProfile profileWithData:v31 outError:&v89];
  v35 = v89;
  v79 = v34;
  if (v35)
  {
    goto LABEL_48;
  }

  [v34 payloads];
  v37 = v36 = v34;
  v38 = [v37 count];

  if (v38 != 1)
  {
    v35 = [(MCProfileServiceProfileHandler *)self _badIdentityError];
LABEL_48:
    v12 = v35;
    v61 = 0;
    v13 = 0;
    goto LABEL_49;
  }

  v39 = [v36 payloads];
  v40 = [v39 objectAtIndex:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v40 isIdentity])
  {
    v41 = 0;
  }

  else
  {
    v41 = [(MCProfileServiceProfileHandler *)self _badIdentityError];
  }

  [v40 handlerWithProfileHandler:self];
  v13 = v78 = v40;
  v88 = v41;
  v75 = [v13 copyIdentityImmediatelyWithInteractionClient:v81 outError:&v88];
  v12 = v88;

  v63 = v78;
  self->_identity = v75;
  v61 = v12 == 0;
  if (!v12)
  {
    v76 = [v9 installType];
    v73 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v92 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "Temporarily storing identity for profile service profile, storing with accessibility %@", buf, 0xCu);
    }

    v74 = v76 == 2;
    v77 = v76 != 2;
    identity = self->_identity;
    v69 = [v9 UUID];
    v64 = [MCKeychain saveItem:identity withLabel:v69 group:kMCAppleIdentitiesKeychainGroup useSystemKeychain:v77 accessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly];
    persistentID = self->_persistentID;
    self->_persistentID = v64;

    v70 = self->_persistentID;
    v68 = [v9 UUID];
    [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:v70 andUUID:v68 forSystem:v77 user:v74];

    v72 = self->_persistentID;
    v71 = [v9 UUID];
    [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:v72 andUUID:v71 forSystem:v77 user:v74];

    v63 = v78;
  }

LABEL_49:
  if (v61)
  {
    v83 = a5;
    v8 = v81;
    p_vtable = (MCNewSubCalAccountPayloadHandler + 24);
LABEL_3:
    v15 = v8;
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieving profile from OTA Profile service...", buf, 2u);
    }

    v17 = p_vtable + 432;
    v18 = [v9 deviceAttributes];
    v19 = self->_identity;
    v87 = v12;
    v20 = [v17 machineInfoWithKeys:v18 challenge:0 identity:v19 additionalInfo:0 outError:&v87];
    v21 = v87;

    if (v21)
    {
      v22 = 0;
      v12 = v21;
LABEL_29:

      v8 = v15;
      a5 = v83;
      goto LABEL_30;
    }

    v27 = [[DMCHTTPTransaction alloc] initWithURL:v85 method:@"POST"];
    [v27 setTimeout:45.0];
    [v27 setUserAgent:kMCProfileUserAgent];
    [v27 setContentType:@"application/pkcs7-signature"];
    [v27 setData:v20];
    [v27 performSynchronously];
    v28 = [v27 responseData];
    v80 = [v27 permanentlyRedirectedURL];

    v29 = [v27 error];
    if (v29)
    {
      v12 = v29;
      v22 = 0;
LABEL_28:

      v14 = v80;
      goto LABEL_29;
    }

    v86 = 0;
    v22 = [MCProfile profileWithData:v28 outError:&v86];
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

        if (v82)
        {
          v62 = v28;
          v12 = 0;
          *v82 = v28;
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
  v8 = v81;
LABEL_30:

  if (!v12)
  {
    [v9 setEnrollmentIdentityPersistentID:self->_persistentID];
    [v22 setOTAProfile:v9];
    v57 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v59 = [v22 identifier];
      *buf = 138543362;
      v92 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Received final profile: %{public}@", buf, 0xCu);
    }

    v22 = v22;
    v12 = 0;
    v56 = v22;
    goto LABEL_43;
  }

LABEL_31:
  if (v14)
  {
    v48 = [v12 userInfo];
    v49 = [v48 mutableCopy];

    v50 = [v14 absoluteString];
    [v49 setObject:v50 forKey:MCErrorPermanentlyRedirectedURLString];

    v51 = [v12 domain];
    v52 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v51, [v12 code], v49);

    v12 = v52;
  }

  if (a5)
  {
    *a5 = [v12 MCCopyAsPrimaryError];
  }

  v53 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v54 = v53;
    v55 = [v12 MCVerboseDescription];
    *buf = 138543362;
    v92 = v55;
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

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(MCProfileHandler *)self profile];
  v25.receiver = self;
  v25.super_class = MCProfileServiceProfileHandler;
  v26 = 0;
  [(MCProfileHandler *)&v25 installWithInstaller:v12 options:v11 interactionClient:v10 outError:&v26];

  v14 = v26;
  v15 = v14;
  if (v14)
  {
    if (a6)
    {
      v16 = v14;
      *a6 = v15;
    }
  }

  else
  {
    v17 = [v13 installType];
    v18 = v17 != 2;
    v19 = v17 == 2;
    v20 = [v13 enrollmentIdentityPersistentID];
    v21 = [v13 UUID];
    [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:v20 andUUID:v21 forSystem:v18 user:v19];

    v22 = +[MCInstaller sharedInstaller];
    v23 = [v13 identifier];
    [v22 purgePurgatoryProfileWithIdentifier:v23 targetDevice:{+[MCProfile thisDeviceType](MCProfile, "thisDeviceType")}];
  }

  return v15 == 0;
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "OTA Profile installed", buf, 2u);
  }

  v9 = [(MCProfileHandler *)self profile];
  if ([v9 confirmInstallation])
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
      v12 = [v9 URLString];
      v13 = [NSURL URLWithString:v12];

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

- (void)setAsideWithInstaller:(id)a3
{
  v10.receiver = self;
  v10.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v10 setAsideWithInstaller:a3];
  v4 = [(MCProfileHandler *)self profile];
  v5 = [v4 installType];
  v6 = v5 != 2;
  v7 = v5 == 2;
  v8 = [v4 enrollmentIdentityPersistentID];
  v9 = [v4 UUID];
  [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:v8 andUUID:v9 forSystem:v6 user:v7];
}

- (void)unsetAside
{
  v9.receiver = self;
  v9.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v9 unsetAside];
  v3 = [(MCProfileHandler *)self profile];
  v4 = [v3 installType];
  v5 = v4 != 2;
  v6 = v4 == 2;
  v7 = [v3 enrollmentIdentityPersistentID];
  v8 = [v3 UUID];
  [(MCProfileServiceProfileHandler *)self _retainDependencyBetweenPersistentID:v7 andUUID:v8 forSystem:v5 user:v6];
}

- (void)removeWithInstaller:(id)a3 options:(id)a4
{
  v11.receiver = self;
  v11.super_class = MCProfileServiceProfileHandler;
  [(MCProfileHandler *)&v11 removeWithInstaller:a3 options:a4];
  if (![(MCProfileHandler *)self isSetAside])
  {
    v5 = [(MCProfileHandler *)self profile];
    v6 = [v5 installType];
    v7 = v6 != 2;
    v8 = v6 == 2;
    v9 = [v5 enrollmentIdentityPersistentID];
    v10 = [v5 UUID];
    [(MCProfileServiceProfileHandler *)self _releaseDependencyBetweenPersistentID:v9 andUUID:v10 forSystem:v7 user:v8];
  }
}

- (id)_sdpErrorForFinalProfile:(id)a3
{
  v3 = a3;
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
  [MCInstaller isInteractiveProfileInstallationAllowedBySDP:v3 completion:&v7];
  [v4 waitForCompletion];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

@end