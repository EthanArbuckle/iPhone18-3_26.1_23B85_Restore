@interface MCProfileHandler
+ (id)payloadsOfClass:(Class)class installedBeforePayload:(id)payload;
+ (id)payloadsOfClass:(Class)class removedBeforePayload:(id)payload;
+ (id)payloadsOfClass:(Class)class setAsideBeforePayload:(id)payload;
+ (id)payloadsOfClass:(Class)class unsetAsideBeforePayload:(id)payload;
+ (id)userCancelledError;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index outError:(id *)error;
- (BOOL)stageForInstallationWithInstaller:(id)installer interactionClient:(id)client outError:(id *)error;
- (MCProfileHandler)initWithProfile:(id)profile;
- (id)_profileInstallationErrorWithUnderlyingError:(id)error;
- (id)payloadHandlerWithUUID:(id)d;
- (id)persistentIDForCertificateUUID:(id)d;
- (id)userCancelledError;
- (void)convertPayloadWithUUIDToUnknownPayload:(id)payload;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)removeWithInstaller:(id)installer options:(id)options;
- (void)setAsideWithInstaller:(id)installer;
- (void)unsetAside;
- (void)unstageFromInstallationWithInstaller:(id)installer;
@end

@implementation MCProfileHandler

- (id)payloadHandlerWithUUID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloadHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        payload = [v9 payload];
        uUID = [payload UUID];
        v12 = [uUID isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (MCProfileHandler)initWithProfile:(id)profile
{
  profileCopy = profile;
  v31.receiver = self;
  v31.super_class = MCProfileHandler;
  v6 = [(MCProfileHandler *)&v31 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v8 = [NSMutableArray alloc];
    payloads = [profileCopy payloads];
    v10 = [v8 initWithCapacity:{objc_msgSend(payloads, "count")}];
    v11 = p_isa[2];
    p_isa[2] = v10;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    payloads2 = [profileCopy payloads];
    v13 = [payloads2 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(payloads2);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 handlerWithProfileHandler:p_isa];
          if (!v18)
          {
            v21 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = objc_opt_class();
              v24 = v23;
              friendlyName = [v17 friendlyName];
              *buf = 138543618;
              v33 = v23;
              v34 = 2114;
              v35 = friendlyName;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Cannot instantiate a payload handler for payload “%{public}@”.", buf, 0x16u);
            }

            v20 = 0;
            goto LABEL_15;
          }

          v19 = v18;
          [p_isa[2] addObject:v18];
        }

        v14 = [payloads2 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v20 = p_isa;
LABEL_15:

  return v20;
}

+ (id)userCancelledError
{
  v2 = MCInstallationErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:4004 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)userCancelledError
{
  v2 = MCInstallationErrorDomain;
  profile = [(MCProfileHandler *)self profile];
  friendlyName = [profile friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v2 code:4004 descriptionArray:v5 errorType:MCErrorTypeFatal, friendlyName, 0];

  return v6;
}

- (id)_profileInstallationErrorWithUnderlyingError:(id)error
{
  v4 = MCProfileErrorDomain;
  errorCopy = error;
  profile = [(MCProfileHandler *)self profile];
  friendlyName = [profile friendlyName];
  v8 = MCErrorArray();
  v9 = [NSError MCErrorWithDomain:v4 code:1009 descriptionArray:v8 underlyingError:errorCopy errorType:MCErrorTypeFatal, friendlyName, 0];

  return v9;
}

- (BOOL)stageForInstallationWithInstaller:(id)installer interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  clientCopy = client;
  v64 = clientCopy;
  v65 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_payloadHandlers, "count")}];
  selfCopy = self;
  errorCopy = error;
  if (clientCopy)
  {
    v66 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)self->_payloadHandlers count]];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v10 = self->_payloadHandlers;
    v68 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (v68)
    {
      v62 = installerCopy;
      v11 = 0;
      v67 = *v87;
      v12 = kMCIDFinePrintKey;
      v13 = kMCIDFlagsKey;
      v14 = v66;
      do
      {
        for (i = 0; i != v68; i = i + 1)
        {
          if (*v87 != v67)
          {
            objc_enumerationMutation(v10);
          }

          userInputFields = [*(*(&v86 + 1) + 8 * i) userInputFields];
          if ([userInputFields count])
          {
            v69 = userInputFields;
            v70 = i;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v17 = userInputFields;
            v18 = [v17 countByEnumeratingWithState:&v82 objects:v96 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v83;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v83 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v82 + 1) + 8 * j);
                  v23 = [v22 objectForKey:v12];

                  if (!v23)
                  {
                    v24 = [v22 objectForKey:v13];
                    [v24 intValue];

                    friendlyName = [(MCProfile *)selfCopy->_profile friendlyName];
                    v25 = MCLocalizedFormat();

                    [v22 setObject:v25 forKey:{v12, friendlyName}];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v82 objects:v96 count:16];
              }

              while (v19);
            }

            v11 = 1;
            v14 = v66;
            userInputFields = v69;
            i = v70;
          }

          [v14 addObject:userInputFields];
        }

        v68 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v68);

      installerCopy = v62;
      v26 = errorCopy;
      clientCopy = v64;
      self = selfCopy;
      if ((v11 & 1) == 0)
      {
        goto LABEL_27;
      }

      v81 = 0;
      v27 = [v64 requestUserInput:v66 delegate:selfCopy outResult:&v81];
      v28 = v81;
      v10 = v28;
      if (!v27 || (v29 = -[NSMutableArray count](v28, "count"), v29 != [v66 count]))
      {
        userCancelledError = [(MCProfileHandler *)selfCopy userCancelledError];

        v38 = v66;
LABEL_42:

        if (userCancelledError)
        {
          v45 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v46 = v45;
            profile = [(MCProfileHandler *)selfCopy profile];
            identifier = [profile identifier];
            *buf = 138543362;
            v91 = identifier;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Rolling back staging of profile “%{public}@”...", buf, 0xCu);
          }

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v49 = v65;
          v50 = [v49 countByEnumeratingWithState:&v72 objects:v94 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v73;
            do
            {
              for (k = 0; k != v51; k = k + 1)
              {
                if (*v73 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                [*(*(&v72 + 1) + 8 * k) unstageFromInstallationWithInstaller:installerCopy];
              }

              v51 = [v49 countByEnumeratingWithState:&v72 objects:v94 count:16];
            }

            while (v51);
          }

          v54 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v55 = v54;
            profile2 = [(MCProfileHandler *)selfCopy profile];
            identifier2 = [profile2 identifier];
            mCVerboseDescription = [userCancelledError MCVerboseDescription];
            *buf = 138543618;
            v91 = identifier2;
            v92 = 2114;
            v93 = mCVerboseDescription;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Installation of profile “%{public}@” failed with error: %{public}@", buf, 0x16u);
          }

          if (v26)
          {
            v59 = userCancelledError;
            *v26 = userCancelledError;
          }
        }

        goto LABEL_56;
      }

      if ([(NSMutableArray *)selfCopy->_payloadHandlers count])
      {
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = [(NSMutableArray *)selfCopy->_payloadHandlers objectAtIndex:v30];
          v33 = [(NSMutableArray *)v10 objectAtIndex:v30];
          [v32 setUserInputResponses:v33];

          v30 = v31;
        }

        while ([(NSMutableArray *)selfCopy->_payloadHandlers count]> v31++);
      }
    }

LABEL_27:
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v35 = self->_payloadHandlers;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v77 objects:v95 count:16];
  if (!v36)
  {
    v38 = 0;
LABEL_40:

    userCancelledError = 0;
LABEL_41:
    v26 = errorCopy;
    goto LABEL_42;
  }

  v37 = v36;
  v38 = 0;
  v39 = *v78;
LABEL_30:
  v40 = 0;
  v41 = v38;
  while (1)
  {
    if (*v78 != v39)
    {
      objc_enumerationMutation(v35);
    }

    v42 = *(*(&v77 + 1) + 8 * v40);
    v76 = v41;
    v43 = [v42 stageForInstallationWithInstaller:installerCopy interactionClient:clientCopy outError:&v76];
    v38 = v76;

    if (!v43)
    {
      break;
    }

    [v65 insertObject:v42 atIndex:0];
    v40 = v40 + 1;
    v41 = v38;
    if (v37 == v40)
    {
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v77 objects:v95 count:16];
      if (v37)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }
  }

  if (v38)
  {
    userCancelledError = [(MCProfileHandler *)selfCopy _profileInstallationErrorWithUnderlyingError:v38];
    goto LABEL_41;
  }

  userCancelledError = 0;
LABEL_56:

  return userCancelledError == 0;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v62 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_payloadHandlers, "count")}];
  v61 = [(NSMutableArray *)self->_payloadHandlers mutableCopy];
  v12 = objc_alloc_init(NSMutableDictionary);
  UUIDToPersistentIDMap = self->_UUIDToPersistentIDMap;
  self->_UUIDToPersistentIDMap = v12;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = self->_payloadHandlers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v73 objects:v83 count:16];
  v59 = optionsCopy;
  if (v15)
  {
    v16 = v15;
    selfCopy = self;
    errorCopy = error;
    profile = 0;
    v18 = *v74;
LABEL_3:
    v19 = 0;
    v20 = profile;
    while (1)
    {
      if (*v74 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v73 + 1) + 8 * v19);
      v22 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v78 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Installing payload handler: %{public}@", buf, 0xCu);
      }

      v72 = v20;
      v23 = [v21 installWithInstaller:installerCopy options:optionsCopy interactionClient:clientCopy outError:&v72];
      profile = v72;

      if (!v23)
      {
        break;
      }

      [v62 insertObject:v21 atIndex:0];
      [v61 removeObject:v21];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        payload = [v21 payload];
        v25 = selfCopy->_UUIDToPersistentIDMap;
        certificatePersistentID = [payload certificatePersistentID];
        uUID = [payload UUID];
        [(NSMutableDictionary *)v25 setObject:certificatePersistentID forKey:uUID];

        optionsCopy = v59;
      }

      v19 = v19 + 1;
      v20 = profile;
      if (v16 == v19)
      {
        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    error = errorCopy;
    self = selfCopy;
    if (profile)
    {
      v28 = [(MCProfileHandler *)selfCopy _profileInstallationErrorWithUnderlyingError:profile];
      goto LABEL_20;
    }
  }

  else
  {
  }

  profile = [(MCProfileHandler *)self profile];
  if ([profile isLocked] && (objc_msgSend(profile, "removalPasscode"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    removalPasscode = [profile removalPasscode];
    v31 = kMCProfileRemovalPasscodeService;
    uUID2 = [profile UUID];
    isInstalledForSystem = [profile isInstalledForSystem];
    v71 = 0;
    v34 = v31;
    optionsCopy = v59;
    [MCKeychain setString:removalPasscode forService:v34 account:uUID2 label:0 description:0 useSystemKeychain:isInstalledForSystem outError:&v71];
    v28 = v71;
  }

  else
  {
    v28 = 0;
  }

LABEL_20:

  v35 = self->_UUIDToPersistentIDMap;
  self->_UUIDToPersistentIDMap = 0;

  if (v28)
  {
    v36 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      profile2 = [(MCProfileHandler *)self profile];
      identifier = [profile2 identifier];
      *buf = 138543362;
      v78 = identifier;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Rolling back installation of profile “%{public}@”...", buf, 0xCu);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = v62;
    v41 = [v40 countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v68;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v68 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [*(*(&v67 + 1) + 8 * i) remove];
        }

        v42 = [v40 countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v42);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v61;
    v46 = [v45 countByEnumeratingWithState:&v63 objects:v81 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v64;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v64 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [*(*(&v63 + 1) + 8 * j) unstageFromInstallationWithInstaller:installerCopy];
        }

        v47 = [v45 countByEnumeratingWithState:&v63 objects:v81 count:16];
      }

      while (v47);
    }

    v50 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      profile3 = [(MCProfileHandler *)self profile];
      identifier2 = [profile3 identifier];
      mCVerboseDescription = [v28 MCVerboseDescription];
      *buf = 138543618;
      v78 = identifier2;
      v79 = 2114;
      v80 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Installation of profile “%{public}@” failed with error: %{public}@", buf, 0x16u);
    }

    optionsCopy = v59;
    if (error)
    {
      v55 = v28;
      *error = v28;
    }
  }

  return v28 == 0;
}

- (void)unstageFromInstallationWithInstaller:(id)installer
{
  installerCopy = installer;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    profile = [(MCProfileHandler *)self profile];
    identifier = [profile identifier];
    *buf = 138543362;
    v20 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unstaging profile “%{public}@”...", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_payloadHandlers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) unstageFromInstallationWithInstaller:{installerCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  restrictionsCopy = restrictions;
  globalRestrictionsCopy = globalRestrictions;
  profile = [(MCProfileHandler *)self profile];
  v9 = +[NSDate date];
  [profile setInstallDate:v9];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_payloadHandlers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) didInstallOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:{globalRestrictionsCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  restrictionsCopy = restrictions;
  globalRestrictionsCopy = globalRestrictions;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_payloadHandlers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) didRemoveOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:{globalRestrictionsCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)isInstalled
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_payloadHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v6 &= [v8 isInstalled];
        objc_autoreleasePoolPop(v9);
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    profile = [(MCProfileHandler *)self profile];
    identifier = [profile identifier];
    *buf = 138543362;
    v22 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Profile “%{public}@” being set aside.", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_payloadHandlers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        [v14 setAsideWithInstaller:{installerCopy, v16}];
        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  self->_isSetAside = 1;
}

- (void)unsetAside
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    profile = [(MCProfileHandler *)self profile];
    identifier = [profile identifier];
    v11 = 138543362;
    v12 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Profile “%{public}@” being unset aside.", &v11, 0xCu);
  }

  v7 = [(NSMutableArray *)self->_payloadHandlers count];
  if (v7 >= 1)
  {
    v8 = (v7 & 0x7FFFFFFF) + 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:v8 - 2];
      [v10 unsetAside];

      objc_autoreleasePoolPop(v9);
      --v8;
    }

    while (v8 > 1);
  }
}

- (void)removeWithInstaller:(id)installer options:(id)options
{
  installerCopy = installer;
  optionsCopy = options;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    profile = [(MCProfileHandler *)self profile];
    identifier = [profile identifier];
    v20 = 138543362;
    v21 = identifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Profile “%{public}@” being removed.", &v20, 0xCu);
  }

  v12 = [(NSMutableArray *)self->_payloadHandlers count];
  if (v12 >= 1)
  {
    v13 = (v12 & 0x7FFFFFFF) + 1;
    do
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:v13 - 2];
      [v15 removeWithInstaller:installerCopy options:optionsCopy];

      objc_autoreleasePoolPop(v14);
      --v13;
    }

    while (v13 > 1);
  }

  profile2 = [(MCProfileHandler *)self profile];
  if ([profile2 isLocked])
  {
    removalPasscode = [profile2 removalPasscode];

    if (removalPasscode)
    {
      v18 = kMCProfileRemovalPasscodeService;
      uUID = [profile2 UUID];
      +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", v18, uUID, 0, 0, [profile2 isInstalledForSystem], 0);
    }
  }
}

- (void)convertPayloadWithUUIDToUnknownPayload:(id)payload
{
  payloadCopy = payload;
  if ([(NSMutableArray *)self->_payloadHandlers count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:v4];
      payload = [v6 payload];
      uUID = [payload UUID];
      v9 = [uUID isEqualToString:payloadCopy];

      if (v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [MCUnknownPayload alloc];
        payload2 = [v6 payload];
        v13 = [v11 initWithContentsOfPayload:payload2 profile:self->_profile];

        [(MCProfile *)self->_profile replacePayloadWithUUID:payloadCopy withPayload:v13];
        v14 = [v13 handlerWithProfileHandler:self];
        [(NSMutableArray *)self->_payloadHandlers setObject:v14 atIndexedSubscript:v4];

        [v6 remove];
        objc_autoreleasePoolPop(v10);
      }

      v4 = v5;
    }

    while ([(NSMutableArray *)self->_payloadHandlers count]> v5++);
  }
}

+ (id)payloadsOfClass:(Class)class installedBeforePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  profile = [payloadCopy profile];
  payloads = [profile payloads];

  v8 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(payloads);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v12 == payloadCopy)
      {
        break;
      }

      v13 = *(*(&v15 + 1) + 8 * v11);
      if (objc_opt_isKindOfClass())
      {
        [v5 addObject:v12];
      }

      if (v9 == ++v11)
      {
        v9 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v5;
}

+ (id)payloadsOfClass:(Class)class removedBeforePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[NSMutableArray array];
  profile = [payloadCopy profile];
  payloads = [profile payloads];
  v8 = [payloads count];

  if (v8 >= 1)
  {
    v9 = (v8 & 0x7FFFFFFF) + 1;
    while (1)
    {
      profile2 = [payloadCopy profile];
      payloads2 = [profile2 payloads];
      v12 = [payloads2 objectAtIndexedSubscript:v9 - 2];

      if (v12 == payloadCopy)
      {
        break;
      }

      if (objc_opt_isKindOfClass())
      {
        [v5 addObject:v12];
      }

      if (--v9 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return v5;
}

+ (id)payloadsOfClass:(Class)class setAsideBeforePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  profile = [payloadCopy profile];
  payloads = [profile payloads];

  v8 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(payloads);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v12 == payloadCopy)
      {
        break;
      }

      v13 = *(*(&v15 + 1) + 8 * v11);
      if (objc_opt_isKindOfClass())
      {
        [v5 addObject:v12];
      }

      if (v9 == ++v11)
      {
        v9 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v5;
}

+ (id)payloadsOfClass:(Class)class unsetAsideBeforePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[NSMutableArray array];
  profile = [payloadCopy profile];
  payloads = [profile payloads];
  v8 = [payloads count];

  if (v8 >= 1)
  {
    v9 = (v8 & 0x7FFFFFFF) + 1;
    while (1)
    {
      profile2 = [payloadCopy profile];
      payloads2 = [profile2 payloads];
      v12 = [payloads2 objectAtIndexedSubscript:v9 - 2];

      if (v12 == payloadCopy)
      {
        break;
      }

      if (objc_opt_isKindOfClass())
      {
        [v5 addObject:v12];
      }

      if (--v9 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return v5;
}

- (BOOL)preflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index outError:(id *)error
{
  responsesCopy = responses;
  if ([(NSMutableArray *)self->_payloadHandlers count]<= index)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received preflight request with out-of-bounds payload index.", v13, 2u);
    }

    v10 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:index];
    v10 = [v9 preflightUserInputResponses:responsesCopy outError:error];
  }

  return v10;
}

- (id)persistentIDForCertificateUUID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_UUIDToPersistentIDMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end