@interface MCProfileHandler
+ (id)payloadsOfClass:(Class)a3 installedBeforePayload:(id)a4;
+ (id)payloadsOfClass:(Class)a3 removedBeforePayload:(id)a4;
+ (id)payloadsOfClass:(Class)a3 setAsideBeforePayload:(id)a4;
+ (id)payloadsOfClass:(Class)a3 unsetAsideBeforePayload:(id)a4;
+ (id)userCancelledError;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 forPayloadIndex:(unint64_t)a4 outError:(id *)a5;
- (BOOL)stageForInstallationWithInstaller:(id)a3 interactionClient:(id)a4 outError:(id *)a5;
- (MCProfileHandler)initWithProfile:(id)a3;
- (id)_profileInstallationErrorWithUnderlyingError:(id)a3;
- (id)payloadHandlerWithUUID:(id)a3;
- (id)persistentIDForCertificateUUID:(id)a3;
- (id)userCancelledError;
- (void)convertPayloadWithUUIDToUnknownPayload:(id)a3;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)removeWithInstaller:(id)a3 options:(id)a4;
- (void)setAsideWithInstaller:(id)a3;
- (void)unsetAside;
- (void)unstageFromInstallationWithInstaller:(id)a3;
@end

@implementation MCProfileHandler

- (id)payloadHandlerWithUUID:(id)a3
{
  v4 = a3;
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
        v10 = [v9 payload];
        v11 = [v10 UUID];
        v12 = [v11 isEqualToString:v4];

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

- (MCProfileHandler)initWithProfile:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = MCProfileHandler;
  v6 = [(MCProfileHandler *)&v31 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v8 = [NSMutableArray alloc];
    v9 = [v5 payloads];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];
    v11 = p_isa[2];
    p_isa[2] = v10;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v5 payloads];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
            objc_enumerationMutation(v12);
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
              v25 = [v17 friendlyName];
              *buf = 138543618;
              v33 = v23;
              v34 = 2114;
              v35 = v25;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Cannot instantiate a payload handler for payload “%{public}@”.", buf, 0x16u);
            }

            v20 = 0;
            goto LABEL_15;
          }

          v19 = v18;
          [p_isa[2] addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
  v3 = [(MCProfileHandler *)self profile];
  v4 = [v3 friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v2 code:4004 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_profileInstallationErrorWithUnderlyingError:(id)a3
{
  v4 = MCProfileErrorDomain;
  v5 = a3;
  v6 = [(MCProfileHandler *)self profile];
  v7 = [v6 friendlyName];
  v8 = MCErrorArray();
  v9 = [NSError MCErrorWithDomain:v4 code:1009 descriptionArray:v8 underlyingError:v5 errorType:MCErrorTypeFatal, v7, 0];

  return v9;
}

- (BOOL)stageForInstallationWithInstaller:(id)a3 interactionClient:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v64 = v9;
  v65 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_payloadHandlers, "count")}];
  v71 = self;
  v63 = a5;
  if (v9)
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
      v62 = v8;
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

          v16 = [*(*(&v86 + 1) + 8 * i) userInputFields];
          if ([v16 count])
          {
            v69 = v16;
            v70 = i;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v17 = v16;
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

                    v61 = [(MCProfile *)v71->_profile friendlyName];
                    v25 = MCLocalizedFormat();

                    [v22 setObject:v25 forKey:{v12, v61}];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v82 objects:v96 count:16];
              }

              while (v19);
            }

            v11 = 1;
            v14 = v66;
            v16 = v69;
            i = v70;
          }

          [v14 addObject:v16];
        }

        v68 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v68);

      v8 = v62;
      v26 = v63;
      v9 = v64;
      self = v71;
      if ((v11 & 1) == 0)
      {
        goto LABEL_27;
      }

      v81 = 0;
      v27 = [v64 requestUserInput:v66 delegate:v71 outResult:&v81];
      v28 = v81;
      v10 = v28;
      if (!v27 || (v29 = -[NSMutableArray count](v28, "count"), v29 != [v66 count]))
      {
        v44 = [(MCProfileHandler *)v71 userCancelledError];

        v38 = v66;
LABEL_42:

        if (v44)
        {
          v45 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v46 = v45;
            v47 = [(MCProfileHandler *)v71 profile];
            v48 = [v47 identifier];
            *buf = 138543362;
            v91 = v48;
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

                [*(*(&v72 + 1) + 8 * k) unstageFromInstallationWithInstaller:v8];
              }

              v51 = [v49 countByEnumeratingWithState:&v72 objects:v94 count:16];
            }

            while (v51);
          }

          v54 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v55 = v54;
            v56 = [(MCProfileHandler *)v71 profile];
            v57 = [v56 identifier];
            v58 = [v44 MCVerboseDescription];
            *buf = 138543618;
            v91 = v57;
            v92 = 2114;
            v93 = v58;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Installation of profile “%{public}@” failed with error: %{public}@", buf, 0x16u);
          }

          if (v26)
          {
            v59 = v44;
            *v26 = v44;
          }
        }

        goto LABEL_56;
      }

      if ([(NSMutableArray *)v71->_payloadHandlers count])
      {
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = [(NSMutableArray *)v71->_payloadHandlers objectAtIndex:v30];
          v33 = [(NSMutableArray *)v10 objectAtIndex:v30];
          [v32 setUserInputResponses:v33];

          v30 = v31;
        }

        while ([(NSMutableArray *)v71->_payloadHandlers count]> v31++);
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

    v44 = 0;
LABEL_41:
    v26 = v63;
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
    v43 = [v42 stageForInstallationWithInstaller:v8 interactionClient:v9 outError:&v76];
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
    v44 = [(MCProfileHandler *)v71 _profileInstallationErrorWithUnderlyingError:v38];
    goto LABEL_41;
  }

  v44 = 0;
LABEL_56:

  return v44 == 0;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v60 = a5;
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
  v59 = v11;
  if (v15)
  {
    v16 = v15;
    v58 = self;
    v57 = a6;
    v17 = 0;
    v18 = *v74;
LABEL_3:
    v19 = 0;
    v20 = v17;
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
      v23 = [v21 installWithInstaller:v10 options:v11 interactionClient:v60 outError:&v72];
      v17 = v72;

      if (!v23)
      {
        break;
      }

      [v62 insertObject:v21 atIndex:0];
      [v61 removeObject:v21];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v21 payload];
        v25 = v58->_UUIDToPersistentIDMap;
        v26 = [v24 certificatePersistentID];
        v27 = [v24 UUID];
        [(NSMutableDictionary *)v25 setObject:v26 forKey:v27];

        v11 = v59;
      }

      v19 = v19 + 1;
      v20 = v17;
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

    a6 = v57;
    self = v58;
    if (v17)
    {
      v28 = [(MCProfileHandler *)v58 _profileInstallationErrorWithUnderlyingError:v17];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v17 = [(MCProfileHandler *)self profile];
  if ([v17 isLocked] && (objc_msgSend(v17, "removalPasscode"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    v30 = [v17 removalPasscode];
    v31 = kMCProfileRemovalPasscodeService;
    v32 = [v17 UUID];
    v33 = [v17 isInstalledForSystem];
    v71 = 0;
    v34 = v31;
    v11 = v59;
    [MCKeychain setString:v30 forService:v34 account:v32 label:0 description:0 useSystemKeychain:v33 outError:&v71];
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
      v38 = [(MCProfileHandler *)self profile];
      v39 = [v38 identifier];
      *buf = 138543362;
      v78 = v39;
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

          [*(*(&v63 + 1) + 8 * j) unstageFromInstallationWithInstaller:v10];
        }

        v47 = [v45 countByEnumeratingWithState:&v63 objects:v81 count:16];
      }

      while (v47);
    }

    v50 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v51 = v50;
      v52 = [(MCProfileHandler *)self profile];
      v53 = [v52 identifier];
      v54 = [v28 MCVerboseDescription];
      *buf = 138543618;
      v78 = v53;
      v79 = 2114;
      v80 = v54;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Installation of profile “%{public}@” failed with error: %{public}@", buf, 0x16u);
    }

    v11 = v59;
    if (a6)
    {
      v55 = v28;
      *a6 = v28;
    }
  }

  return v28 == 0;
}

- (void)unstageFromInstallationWithInstaller:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(MCProfileHandler *)self profile];
    v8 = [v7 identifier];
    *buf = 138543362;
    v20 = v8;
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

        [*(*(&v14 + 1) + 8 * v13) unstageFromInstallationWithInstaller:{v4, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCProfileHandler *)self profile];
  v9 = +[NSDate date];
  [v8 setInstallDate:v9];

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

        [*(*(&v15 + 1) + 8 * v14) didInstallOldGlobalRestrictions:v6 newGlobalRestrictions:{v7, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v6 = a3;
  v7 = a4;
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

        [*(*(&v13 + 1) + 8 * v12) didRemoveOldGlobalRestrictions:v6 newGlobalRestrictions:{v7, v13}];
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

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = [(MCProfileHandler *)self profile];
    v8 = [v7 identifier];
    *buf = 138543362;
    v22 = v8;
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
        [v14 setAsideWithInstaller:{v4, v16}];
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
    v5 = [(MCProfileHandler *)self profile];
    v6 = [v5 identifier];
    v11 = 138543362;
    v12 = v6;
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

- (void)removeWithInstaller:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [(MCProfileHandler *)self profile];
    v11 = [v10 identifier];
    v20 = 138543362;
    v21 = v11;
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
      [v15 removeWithInstaller:v6 options:v7];

      objc_autoreleasePoolPop(v14);
      --v13;
    }

    while (v13 > 1);
  }

  v16 = [(MCProfileHandler *)self profile];
  if ([v16 isLocked])
  {
    v17 = [v16 removalPasscode];

    if (v17)
    {
      v18 = kMCProfileRemovalPasscodeService;
      v19 = [v16 UUID];
      +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", v18, v19, 0, 0, [v16 isInstalledForSystem], 0);
    }
  }
}

- (void)convertPayloadWithUUIDToUnknownPayload:(id)a3
{
  v16 = a3;
  if ([(NSMutableArray *)self->_payloadHandlers count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:v4];
      v7 = [v6 payload];
      v8 = [v7 UUID];
      v9 = [v8 isEqualToString:v16];

      if (v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [MCUnknownPayload alloc];
        v12 = [v6 payload];
        v13 = [v11 initWithContentsOfPayload:v12 profile:self->_profile];

        [(MCProfile *)self->_profile replacePayloadWithUUID:v16 withPayload:v13];
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

+ (id)payloadsOfClass:(Class)a3 installedBeforePayload:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 profile];
  v7 = [v6 payloads];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v12 == v4)
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
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)payloadsOfClass:(Class)a3 removedBeforePayload:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableArray array];
  v6 = [v4 profile];
  v7 = [v6 payloads];
  v8 = [v7 count];

  if (v8 >= 1)
  {
    v9 = (v8 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v10 = [v4 profile];
      v11 = [v10 payloads];
      v12 = [v11 objectAtIndexedSubscript:v9 - 2];

      if (v12 == v4)
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

+ (id)payloadsOfClass:(Class)a3 setAsideBeforePayload:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 profile];
  v7 = [v6 payloads];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v12 == v4)
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
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)payloadsOfClass:(Class)a3 unsetAsideBeforePayload:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableArray array];
  v6 = [v4 profile];
  v7 = [v6 payloads];
  v8 = [v7 count];

  if (v8 >= 1)
  {
    v9 = (v8 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v10 = [v4 profile];
      v11 = [v10 payloads];
      v12 = [v11 objectAtIndexedSubscript:v9 - 2];

      if (v12 == v4)
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

- (BOOL)preflightUserInputResponses:(id)a3 forPayloadIndex:(unint64_t)a4 outError:(id *)a5
{
  v8 = a3;
  if ([(NSMutableArray *)self->_payloadHandlers count]<= a4)
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
    v9 = [(NSMutableArray *)self->_payloadHandlers objectAtIndex:a4];
    v10 = [v9 preflightUserInputResponses:v8 outError:a5];
  }

  return v10;
}

- (id)persistentIDForCertificateUUID:(id)a3
{
  if (a3)
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