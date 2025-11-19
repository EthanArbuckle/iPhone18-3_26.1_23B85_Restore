@interface MCNewCalDAVAccountPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (id)_accountFromPayloadWithUserInputResponses:(id)a3;
- (id)_errorFromValidationError:(id)a3;
- (id)_reallyInstallInstaller:(id)a3 isInstalledByMDM:(BOOL)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (id)userInputFields;
- (void)_preflightWithAccount:(id)a3 completionHandler:(id)a4;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)remove;
- (void)setAsideWithInstaller:(id)a3;
- (void)setUserInputResponses:(id)a3;
- (void)unsetAside;
@end

@implementation MCNewCalDAVAccountPayloadHandler

- (id)userInputFields
{
  v21.receiver = self;
  v21.super_class = MCNewCalDAVAccountPayloadHandler;
  v3 = [(MCNewPayloadHandler *)&v21 userInputFields];
  v4 = [v3 mutableCopy];

  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 accountDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 hostname];
  }

  v9 = v8;

  v10 = [v5 username];

  if (!v10)
  {
    v11 = MCLocalizedString();
    v12 = MCLocalizedFormat();
    v13 = MCLocalizedString();
    v14 = [MCNewPayloadHandler promptDictionaryForKey:@"kCalDAVUsernameKey" title:v11 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v13 minimumLength:0 fieldType:&_mh_execute_header flags:?];
    [v4 addObject:v14];
  }

  v15 = [v5 password];

  if (!v15)
  {
    v16 = MCLocalizedString();
    v17 = MCLocalizedFormat();
    v18 = MCLocalizedString();
    v19 = [MCNewPayloadHandler promptDictionaryForKey:@"kCalDAVPasswordKey" title:v16 description:v17 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v18 minimumLength:0 fieldType:0x100000003 flags:?];
    [v4 addObject:v19];
  }

  return v4;
}

- (void)setUserInputResponses:(id)a3
{
  v4 = a3;
  v25 = self;
  v5 = [(MCNewPayloadHandler *)self payload];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    v11 = kMCIDUUIDKey;
    v26 = kMCIDResponseKey;
    *&v8 = 138543618;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 objectForKey:{v11, v24}];
        v15 = [v13 objectForKey:v26];
        if ([v14 isEqualToString:@"kCalDAVUsernameKey"])
        {
          [v5 setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kCalDAVPasswordKey"])
        {
          [v5 setPassword:v15];
        }

        else
        {
          v16 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            v18 = objc_opt_class();
            *buf = v24;
            v33 = v18;
            v34 = 2114;
            v35 = v14;
            v19 = v11;
            v20 = v10;
            v21 = v5;
            v22 = v6;
            v23 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

            v6 = v22;
            v5 = v21;
            v10 = v20;
            v11 = v19;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v27.receiver = v25;
  v27.super_class = MCNewCalDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v27 setUserInputResponses:v6];
}

- (id)unhashedAccountIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 hostname];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"caldav|%@", v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 username];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 stringByAppendingFormat:@"|%@", v5];

    v4 = v7;
  }

  return v4;
}

- (id)_accountFromPayloadWithUserInputResponses:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCalDAV];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  [v8 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  v9 = [v5 friendlyName];
  [v8 setManagingSourceName:v9];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  v11 = [v10 userMode];

  if (v11 == 1)
  {
    v12 = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
    if (v12)
    {
      v13 = [v8 identifier];
      [v8 setAccountProperty:v13 forKey:@"MCAccountIdentifer"];

      [v8 setIdentifier:v12];
    }

    v14 = sharedDAAccountStore();
    v15 = [v8 identifier];
    v16 = [v14 accountWithIdentifier:v15];

    v79 = v16 != 0;
    if (v16)
    {
      v17 = [v16 objectID];
      [v8 performSelector:"_setObjectID:" withObject:v17];
    }
  }

  else
  {
    v79 = 0;
  }

  v18 = [v7 supportedDataclasses];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v89;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v89 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v8 setProvisioned:1 forDataclass:*(*(&v88 + 1) + 8 * i)];
      }

      v20 = [v18 countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v20);
  }

  v23 = [DAAccount daAccountSubclassWithBackingAccountInfo:v8];
  v24 = v23;
  if (v23)
  {
    [v23 setEnabled:1 forDADataclass:4];
    [v24 setEnabled:1 forDADataclass:16];
    v25 = [v5 accountDescription];
    v74 = v18;
    if (v25)
    {
      [v24 setAccountDescription:v25];
    }

    else
    {
      v26 = [v5 hostname];
      [v24 setAccountDescription:v26];
    }

    v27 = [v5 hostname];
    [v24 setHost:v27];

    [v24 setUseSSL:{objc_msgSend(v5, "useSSL")}];
    v28 = [v24 backingAccountInfo];
    v29 = [(MCNewPayloadHandler *)self payload];
    [v29 UUID];
    v31 = v30 = v24;
    [v28 setMcPayloadUUID:v31];

    v32 = [v30 backingAccountInfo];
    v33 = [(MCNewPayloadHandler *)self payload];
    v34 = [v33 profile];
    v35 = [v34 UUID];
    [v32 setMcProfileUUID:v35];

    v36 = [(MCNewPayloadHandler *)self payload];
    v37 = [v36 profile];
    v38 = [v37 identifier];

    v81 = self;
    v75 = v8;
    if (v38)
    {
      v39 = [v30 backingAccountInfo];
      [v39 setMcConfigurationProfileIdentifier:v38];
    }

    else
    {
      v40 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on CalDAV account.", buf, 2u);
      }
    }

    v80 = v30;
    v76 = v7;
    v41 = [v5 username];
    v77 = v5;
    v42 = [v5 password];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v78 = v4;
    obj = v4;
    v43 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v43)
    {
      v44 = v43;
      v83 = *v85;
      v45 = kMCIDUUIDKey;
      v46 = kMCIDResponseKey;
      v47 = v42;
      do
      {
        for (j = 0; j != v44; j = j + 1)
        {
          if (*v85 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v84 + 1) + 8 * j);
          v50 = [v49 objectForKey:v45];
          v51 = [v49 objectForKey:v46];
          if ([v50 isEqualToString:@"kCalDAVUsernameKey"])
          {
            v52 = v51;

            v41 = v52;
          }

          else if ([v50 isEqualToString:@"kCalDAVPasswordKey"])
          {
            v53 = v51;

            v47 = v53;
          }

          else
          {
            v54 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v55 = v54;
              v56 = objc_opt_class();
              *buf = 138543618;
              v93 = v56;
              v94 = 2114;
              v95 = v50;
              v57 = v41;
              v58 = v47;
              v59 = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

              v47 = v58;
              v41 = v57;
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v44);
    }

    else
    {
      v47 = v42;
    }

    v60 = v80;
    [v80 setUsername:v41];
    v5 = v77;
    if ([v77 port])
    {
      [v80 setPort:{objc_msgSend(v77, "port")}];
    }

    v61 = [v77 principalURL];
    self = v81;
    v18 = v74;
    if (v61)
    {
      v62 = v61;
      v63 = [v77 principalURL];
      v64 = [NSURL URLWithString:v63];

      v60 = v80;
      if (v64)
      {
        [v80 setPrincipalURL:v64];
      }
    }

    else
    {
      v64 = 0;
    }

    v65 = &__kCFBooleanTrue;
    if (!v47)
    {
      v65 = &__kCFBooleanFalse;
    }

    v66 = v65;
    v67 = [v60 backingAccountInfo];
    [v67 setAccountProperty:v66 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v24 = v80;
    [v80 setPassword:v47];

    if (v79)
    {
      [v80 setShouldDoInitialAutodiscovery:1];
    }

    v4 = v78;
    v8 = v75;
    v7 = v76;
  }

  v68 = [v24 backingAccountInfo];
  v69 = [v68 identifier];
  [(MCNewPayloadHandler *)self payload];
  v71 = v70 = v24;
  [v71 setAcAccountIdentifier:v69];

  return v70;
}

- (id)_errorFromValidationError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  if (v4 == 102)
  {
    v11 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v11 code:18002 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:MCErrorTypeRetryable];
  }

  else if (v4 == 101)
  {
    v10 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v10 code:18001 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:MCErrorTypeSkippable];
  }

  else
  {
    if (v4 == 100)
    {
      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeSkippable;
    }

    else
    {
      v12 = [v3 localizedDescription];
      v13 = [v12 length];

      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      if (v13)
      {
        v14 = [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 underlyingError:v3 errorType:MCErrorTypeFatal, 0];
        goto LABEL_12;
      }

      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeFatal;
    }

    [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:v3 errorType:*v9];
  }
  v14 = ;

LABEL_12:

  return v14;
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 MCVerboseDescription];
    v15 = 138543874;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "account %{public}@ is valid %d with error %{public}@", &v15, 0x1Cu);
  }

  if (!v9 && !v6)
  {
    v9 = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
  }

  v13 = [(MCNewCalDAVAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (v13)
  {
    v14 = [(MCNewCalDAVAccountPayloadHandler *)self accountValidationCompletionHandler];
    (v14)[2](v14, v9);

    [(MCNewCalDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(MCNewCalDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:a4];
  v8 = sharedDAAccountStore();
  v7 = dataaccess_get_global_queue();
  [v6 checkValidityOnAccountStore:v8 withConsumer:self inQueue:v7];
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100066F90;
  v30 = sub_100066FA0;
  v31 = 0;
  v7 = [(MCNewCalDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:v6];
  if (v7)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100066FA8;
    v23[3] = &unk_10011BFA0;
    v25 = &v26;
    v8 = dispatch_semaphore_create(0);
    v24 = v8;
    [(MCNewCalDAVAccountPayloadHandler *)self _preflightWithAccount:v7 completionHandler:v23];
    v9 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = v24;
  }

  else
  {
    v8 = MCErrorArray();
    v11 = [NSError MCErrorWithDomain:MCCalDAVErrorDomain code:17000 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
    v10 = v27[5];
    v27[5] = v11;
  }

  v12 = [v27[5] MCErrorType];
  v13 = MCErrorTypeSkippable;
  v14 = [v12 isEqualToString:MCErrorTypeSkippable];

  if (v14)
  {
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v27[5] MCVerboseDescription];
      *buf = 138543362;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Swallowing skippable error %{public}@", buf, 0xCu);
    }

    v17 = v27[5];
    v27[5] = 0;
  }

  v18 = v27[5];
  if (!v18)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    *a4 = v18;
    v18 = v27[5];
  }

  v19 = [v18 MCErrorType];
  v20 = [v19 isEqualToString:v13];

  if (!v20)
  {
    v21 = 0;
  }

  else
  {
LABEL_12:
    v21 = 1;
  }

  _Block_object_dispose(&v26, 8);
  return v21;
}

- (id)_reallyInstallInstaller:(id)a3 isInstalledByMDM:(BOOL)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MCNewPayloadHandler *)self payload];
  v14 = [v13 hostname];

  if (v14)
  {
    v15 = [(MCNewCalDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0];
    v16 = v15;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100066F90;
    v56 = sub_100066FA0;
    v57 = 0;
    if (v15)
    {
      if (v8)
      {
        [v15 setAccountBoolProperty:1 forKey:@"MCAccountIsManaged"];
        if ([v11 length])
        {
          [v16 setAccountProperty:v11 forKey:ACAccountPropertyPersonaIdentifier];
        }

        if (v12)
        {
          [v16 setAccountProperty:v12 forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
        }
      }

      v17 = [v16 backingAccountInfo];
      [(MCACAccountPayloadHandler *)self markIfUpdatingOverInstalledAccount:v17];

      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100066F90;
      v50 = sub_100066FA0;
      v51 = dispatch_semaphore_create(0);
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 1;
      v18 = [v10 setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v18 count])
      {
        v19 = [v16 backingAccountInfo];
        v20 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [v19 setAccountProperty:v18 forKey:v20];
      }

      v21 = sharedDAAccountStore();
      v22 = [v16 backingAccountInfo];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100067568;
      v41[3] = &unk_10011C8E0;
      v41[4] = &v42;
      v41[5] = &v46;
      [v21 canSaveAccount:v22 withCompletionHandler:v41];

      dispatch_semaphore_wait(v47[5], 0xFFFFFFFFFFFFFFFFLL);
      if (*(v43 + 24) == 1)
      {
        v23 = [v16 backingAccountInfo];
        [v23 setAuthenticated:1];

        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100067584;
        v37[3] = &unk_10011B990;
        v39 = &v46;
        v38 = v16;
        v40 = &v52;
        v24 = objc_retainBlock(v37);
        if ([v11 length])
        {
          v25 = [DMCPersonaHelper performBlockUnderPersona:v11 block:v24];
        }

        else
        {
          (v24[2])(v24);
        }

        v32 = v38;
      }

      else
      {
        v32 = MCErrorArray();
        v33 = [NSError MCErrorWithDomain:MCCalDAVErrorDomain code:17002 descriptionArray:v32 errorType:MCErrorTypeFatal, 0];
        v34 = [v33 MCCopyAsPrimaryError];
        v35 = v53[5];
        v53[5] = v34;
      }

      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);
    }

    else
    {
      v29 = MCErrorArray();
      v30 = [NSError MCErrorWithDomain:MCCalDAVErrorDomain code:17000 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      v31 = v53[5];
      v53[5] = v30;
    }

    v28 = v53[5];
    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v26 = MCCalDAVErrorDomain;
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:v26 code:17001 descriptionArray:v27 errorType:MCErrorTypeFatal, 0];
  }

  return v28;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = kMDMPersonaKey;
    v14 = [v10 objectForKeyedSubscript:kMDMPersonaKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 objectForKeyedSubscript:v13];
    }

    else
    {
      v15 = 0;
    }

    v17 = kMCInstallProfileOptionManagingProfileIdentifier;
    v18 = [v10 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
      goto LABEL_11;
    }

    v19 = [v10 objectForKeyedSubscript:v17];

    if (v19)
    {
      v20 = +[ACAccountStore defaultStore];
      v21 = [v20 dmc_remoteManagementAccountForManagementProfileIdentifier:v19];

      v16 = [v21 identifier];

      v18 = v19;
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
LABEL_12:
  v22 = [(MCNewCalDAVAccountPayloadHandler *)self _reallyInstallInstaller:v9 isInstalledByMDM:v12 personaID:v15 rmAccountIdentifier:v16];
  if (a6 && v22)
  {
    v22 = v22;
    *a6 = v22;
  }

  v23 = v22 == 0;

  return v23;
}

- (id)accountTypeIdentifiers
{
  v4 = ACAccountTypeIdentifierCalDAV;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (BOOL)isInstalled
{
  v2 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v3 = v2 != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCNewCalDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v10 setAsideWithInstaller:v4];
  v5 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 backingAccountInfo];
    [(MCACAccountPayloadHandler *)self setSetAsideAccount:v7];

    v8 = [v6 backingAccountInfo];
    v9 = [v8 identifier];
    [v4 addSetAsideAccountIdentifier:v9 forPayloadClass:objc_opt_class()];
  }
}

- (void)unsetAside
{
  v14 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v14 userMode] == 1)
  {
    v3 = [(MCACAccountPayloadHandler *)self setAsideAccount];

    if (v3)
    {
      v4 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
      v5 = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v6 = [v5 accountPropertyForKey:@"MCAccountIdentifer"];

      v7 = [v4 backingAccountInfo];
      v8 = [v7 accountPropertyForKey:@"MCAccountIdentifer"];

      if (v6 && (!v8 || ([v6 isEqualToString:v8] & 1) == 0))
      {
        v9 = [(MCACAccountPayloadHandler *)self setAsideAccount];
        [v9 markAllPropertiesDirty];
        v10 = dispatch_semaphore_create(0);
        v11 = sharedDAAccountStore();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100067C98;
        v15[3] = &unk_10011C908;
        v16 = v9;
        v17 = v10;
        v12 = v10;
        v13 = v9;
        [v11 saveVerifiedAccount:v13 withCompletionHandler:v15];

        dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      }

      [(MCACAccountPayloadHandler *)self setSetAsideAccount:0];
    }
  }

  else
  {
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (!v4)
  {
    if ([(MCACAccountPayloadHandler *)self updatedOverInstalledAccount])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = [(MCACAccountPayloadHandler *)self _installedDAAccount];
    v7 = [v8 backingAccountInfo];

    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_10:
    [MCFeatureOverrides accountRemovalTimeoutWithDefaultValue:600.0];
    [(MCACAccountPayloadHandler *)self _synchronouslyDeleteAccountAndAssociatedData:v7 timeout:0 completion:?];
    goto LABEL_11;
  }

  v5 = +[MDMCloudConfiguration sharedConfiguration];
  v6 = [v5 userMode];

  if (v6 == 1)
  {
    [(MCACAccountPayloadHandler *)self _installedSetAsideACAccount];
  }

  else
  {
    [(MCACAccountPayloadHandler *)self setAsideAccount];
  }
  v7 = ;
  [(MCACAccountPayloadHandler *)self setSetAsideAccount:0];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:
}

@end