@interface MCNewCalDAVAccountPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (id)_accountFromPayloadWithUserInputResponses:(id)responses;
- (id)_errorFromValidationError:(id)error;
- (id)_reallyInstallInstaller:(id)installer isInstalledByMDM:(BOOL)m personaID:(id)d rmAccountIdentifier:(id)identifier;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (id)userInputFields;
- (void)_preflightWithAccount:(id)account completionHandler:(id)handler;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)remove;
- (void)setAsideWithInstaller:(id)installer;
- (void)setUserInputResponses:(id)responses;
- (void)unsetAside;
@end

@implementation MCNewCalDAVAccountPayloadHandler

- (id)userInputFields
{
  v21.receiver = self;
  v21.super_class = MCNewCalDAVAccountPayloadHandler;
  userInputFields = [(MCNewPayloadHandler *)&v21 userInputFields];
  v4 = [userInputFields mutableCopy];

  payload = [(MCNewPayloadHandler *)self payload];
  accountDescription = [payload accountDescription];
  v7 = accountDescription;
  if (accountDescription)
  {
    hostname = accountDescription;
  }

  else
  {
    hostname = [payload hostname];
  }

  v9 = hostname;

  username = [payload username];

  if (!username)
  {
    v11 = MCLocalizedString();
    v12 = MCLocalizedFormat();
    v13 = MCLocalizedString();
    v14 = [MCNewPayloadHandler promptDictionaryForKey:@"kCalDAVUsernameKey" title:v11 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v13 minimumLength:0 fieldType:&_mh_execute_header flags:?];
    [v4 addObject:v14];
  }

  password = [payload password];

  if (!password)
  {
    v16 = MCLocalizedString();
    v17 = MCLocalizedFormat();
    v18 = MCLocalizedString();
    v19 = [MCNewPayloadHandler promptDictionaryForKey:@"kCalDAVPasswordKey" title:v16 description:v17 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v18 minimumLength:0 fieldType:0x100000003 flags:?];
    [v4 addObject:v19];
  }

  return v4;
}

- (void)setUserInputResponses:(id)responses
{
  responsesCopy = responses;
  selfCopy = self;
  payload = [(MCNewPayloadHandler *)self payload];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = responsesCopy;
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
          [payload setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kCalDAVPasswordKey"])
        {
          [payload setPassword:v15];
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
            v21 = payload;
            v22 = v6;
            v23 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

            v6 = v22;
            payload = v21;
            v10 = v20;
            v11 = v19;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v27.receiver = selfCopy;
  v27.super_class = MCNewCalDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v27 setUserInputResponses:v6];
}

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  hostname = [payload hostname];
  if (hostname)
  {
    v4 = [NSString stringWithFormat:@"caldav|%@", hostname];
  }

  else
  {
    v4 = 0;
  }

  username = [payload username];
  v6 = username;
  if (v4 && username)
  {
    v7 = [v4 stringByAppendingFormat:@"|%@", username];

    v4 = v7;
  }

  return v4;
}

- (id)_accountFromPayloadWithUserInputResponses:(id)responses
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCalDAV];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  [v8 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  friendlyName = [payload friendlyName];
  [v8 setManagingSourceName:friendlyName];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v10 userMode];

  if (userMode == 1)
  {
    mCACAccountIdentifier = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
    if (mCACAccountIdentifier)
    {
      identifier = [v8 identifier];
      [v8 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

      [v8 setIdentifier:mCACAccountIdentifier];
    }

    v14 = sharedDAAccountStore();
    identifier2 = [v8 identifier];
    v16 = [v14 accountWithIdentifier:identifier2];

    v79 = v16 != 0;
    if (v16)
    {
      objectID = [v16 objectID];
      [v8 performSelector:"_setObjectID:" withObject:objectID];
    }
  }

  else
  {
    v79 = 0;
  }

  supportedDataclasses = [v7 supportedDataclasses];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v19 = [supportedDataclasses countByEnumeratingWithState:&v88 objects:v97 count:16];
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
          objc_enumerationMutation(supportedDataclasses);
        }

        [v8 setProvisioned:1 forDataclass:*(*(&v88 + 1) + 8 * i)];
      }

      v20 = [supportedDataclasses countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v20);
  }

  v23 = [DAAccount daAccountSubclassWithBackingAccountInfo:v8];
  v24 = v23;
  if (v23)
  {
    [v23 setEnabled:1 forDADataclass:4];
    [v24 setEnabled:1 forDADataclass:16];
    accountDescription = [payload accountDescription];
    v74 = supportedDataclasses;
    if (accountDescription)
    {
      [v24 setAccountDescription:accountDescription];
    }

    else
    {
      hostname = [payload hostname];
      [v24 setAccountDescription:hostname];
    }

    hostname2 = [payload hostname];
    [v24 setHost:hostname2];

    [v24 setUseSSL:{objc_msgSend(payload, "useSSL")}];
    backingAccountInfo = [v24 backingAccountInfo];
    payload2 = [(MCNewPayloadHandler *)self payload];
    [payload2 UUID];
    v31 = v30 = v24;
    [backingAccountInfo setMcPayloadUUID:v31];

    backingAccountInfo2 = [v30 backingAccountInfo];
    payload3 = [(MCNewPayloadHandler *)self payload];
    profile = [payload3 profile];
    uUID = [profile UUID];
    [backingAccountInfo2 setMcProfileUUID:uUID];

    payload4 = [(MCNewPayloadHandler *)self payload];
    profile2 = [payload4 profile];
    identifier3 = [profile2 identifier];

    selfCopy = self;
    v75 = v8;
    if (identifier3)
    {
      backingAccountInfo3 = [v30 backingAccountInfo];
      [backingAccountInfo3 setMcConfigurationProfileIdentifier:identifier3];
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
    username = [payload username];
    v77 = payload;
    password = [payload password];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v78 = responsesCopy;
    obj = responsesCopy;
    v43 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v43)
    {
      v44 = v43;
      v83 = *v85;
      v45 = kMCIDUUIDKey;
      v46 = kMCIDResponseKey;
      v47 = password;
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

            username = v52;
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
              v57 = username;
              v58 = v47;
              v59 = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

              v47 = v58;
              username = v57;
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v44);
    }

    else
    {
      v47 = password;
    }

    v60 = v80;
    [v80 setUsername:username];
    payload = v77;
    if ([v77 port])
    {
      [v80 setPort:{objc_msgSend(v77, "port")}];
    }

    principalURL = [v77 principalURL];
    self = selfCopy;
    supportedDataclasses = v74;
    if (principalURL)
    {
      v62 = principalURL;
      principalURL2 = [v77 principalURL];
      v64 = [NSURL URLWithString:principalURL2];

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
    backingAccountInfo4 = [v60 backingAccountInfo];
    [backingAccountInfo4 setAccountProperty:v66 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v24 = v80;
    [v80 setPassword:v47];

    if (v79)
    {
      [v80 setShouldDoInitialAutodiscovery:1];
    }

    responsesCopy = v78;
    v8 = v75;
    v7 = v76;
  }

  backingAccountInfo5 = [v24 backingAccountInfo];
  identifier4 = [backingAccountInfo5 identifier];
  [(MCNewPayloadHandler *)self payload];
  v71 = v70 = v24;
  [v71 setAcAccountIdentifier:identifier4];

  return v70;
}

- (id)_errorFromValidationError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if (code == 102)
  {
    v11 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v11 code:18002 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:MCErrorTypeRetryable];
  }

  else if (code == 101)
  {
    v10 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v10 code:18001 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:MCErrorTypeSkippable];
  }

  else
  {
    if (code == 100)
    {
      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeSkippable;
    }

    else
    {
      localizedDescription = [errorCopy localizedDescription];
      v13 = [localizedDescription length];

      v5 = MCDAErrorDomain;
      v6 = MCErrorArray();
      if (v13)
      {
        v14 = [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];
        goto LABEL_12;
      }

      v7 = MCLocalizedErrorString();
      v8 = MCUSEnglishErrorString();
      v9 = &MCErrorTypeFatal;
    }

    [NSError MCErrorWithDomain:v5 code:18000 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:*v9];
  }
  v14 = ;

LABEL_12:

  return v14;
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    mCVerboseDescription = [errorCopy MCVerboseDescription];
    v15 = 138543874;
    v16 = accountCopy;
    v17 = 1024;
    v18 = validCopy;
    v19 = 2114;
    v20 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "account %{public}@ is valid %d with error %{public}@", &v15, 0x1Cu);
  }

  if (!errorCopy && !validCopy)
  {
    errorCopy = [NSError errorWithDomain:DAAccountValidationDomain code:102 userInfo:0];
  }

  accountValidationCompletionHandler = [(MCNewCalDAVAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (accountValidationCompletionHandler)
  {
    accountValidationCompletionHandler2 = [(MCNewCalDAVAccountPayloadHandler *)self accountValidationCompletionHandler];
    (accountValidationCompletionHandler2)[2](accountValidationCompletionHandler2, errorCopy);

    [(MCNewCalDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  [(MCNewCalDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:handler];
  v8 = sharedDAAccountStore();
  v7 = dataaccess_get_global_queue();
  [accountCopy checkValidityOnAccountStore:v8 withConsumer:self inQueue:v7];
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100066F90;
  v30 = sub_100066FA0;
  v31 = 0;
  v7 = [(MCNewCalDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:responsesCopy];
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

  mCErrorType = [v27[5] MCErrorType];
  v13 = MCErrorTypeSkippable;
  v14 = [mCErrorType isEqualToString:MCErrorTypeSkippable];

  if (v14)
  {
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      mCVerboseDescription = [v27[5] MCVerboseDescription];
      *buf = 138543362;
      v33 = mCVerboseDescription;
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

  if (error)
  {
    *error = v18;
    v18 = v27[5];
  }

  mCErrorType2 = [v18 MCErrorType];
  v20 = [mCErrorType2 isEqualToString:v13];

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

- (id)_reallyInstallInstaller:(id)installer isInstalledByMDM:(BOOL)m personaID:(id)d rmAccountIdentifier:(id)identifier
{
  mCopy = m;
  installerCopy = installer;
  dCopy = d;
  identifierCopy = identifier;
  payload = [(MCNewPayloadHandler *)self payload];
  hostname = [payload hostname];

  if (hostname)
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
      if (mCopy)
      {
        [v15 setAccountBoolProperty:1 forKey:@"MCAccountIsManaged"];
        if ([dCopy length])
        {
          [v16 setAccountProperty:dCopy forKey:ACAccountPropertyPersonaIdentifier];
        }

        if (identifierCopy)
        {
          [v16 setAccountProperty:identifierCopy forKey:ACAccountPropertyRemoteManagingAccountIdentifier];
        }
      }

      backingAccountInfo = [v16 backingAccountInfo];
      [(MCACAccountPayloadHandler *)self markIfUpdatingOverInstalledAccount:backingAccountInfo];

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
      v18 = [installerCopy setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v18 count])
      {
        backingAccountInfo2 = [v16 backingAccountInfo];
        v20 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [backingAccountInfo2 setAccountProperty:v18 forKey:v20];
      }

      v21 = sharedDAAccountStore();
      backingAccountInfo3 = [v16 backingAccountInfo];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100067568;
      v41[3] = &unk_10011C8E0;
      v41[4] = &v42;
      v41[5] = &v46;
      [v21 canSaveAccount:backingAccountInfo3 withCompletionHandler:v41];

      dispatch_semaphore_wait(v47[5], 0xFFFFFFFFFFFFFFFFLL);
      if (*(v43 + 24) == 1)
      {
        backingAccountInfo4 = [v16 backingAccountInfo];
        [backingAccountInfo4 setAuthenticated:1];

        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100067584;
        v37[3] = &unk_10011B990;
        v39 = &v46;
        v38 = v16;
        v40 = &v52;
        v24 = objc_retainBlock(v37);
        if ([dCopy length])
        {
          v25 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v24];
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
        mCCopyAsPrimaryError = [v33 MCCopyAsPrimaryError];
        v35 = v53[5];
        v53[5] = mCCopyAsPrimaryError;
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

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  v11 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = kMDMPersonaKey;
    v14 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [optionsCopy objectForKeyedSubscript:v13];
    }

    else
    {
      v15 = 0;
    }

    v17 = kMCInstallProfileOptionManagingProfileIdentifier;
    v18 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      identifier = 0;
      goto LABEL_11;
    }

    v19 = [optionsCopy objectForKeyedSubscript:v17];

    if (v19)
    {
      v20 = +[ACAccountStore defaultStore];
      v21 = [v20 dmc_remoteManagementAccountForManagementProfileIdentifier:v19];

      identifier = [v21 identifier];

      v18 = v19;
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  identifier = 0;
LABEL_12:
  v22 = [(MCNewCalDAVAccountPayloadHandler *)self _reallyInstallInstaller:installerCopy isInstalledByMDM:bOOLValue personaID:v15 rmAccountIdentifier:identifier];
  if (error && v22)
  {
    v22 = v22;
    *error = v22;
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
  _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v3 = _installedDAAccount != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v10.receiver = self;
  v10.super_class = MCNewCalDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v10 setAsideWithInstaller:installerCopy];
  _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
  v6 = _installedDAAccount;
  if (_installedDAAccount)
  {
    backingAccountInfo = [_installedDAAccount backingAccountInfo];
    [(MCACAccountPayloadHandler *)self setSetAsideAccount:backingAccountInfo];

    backingAccountInfo2 = [v6 backingAccountInfo];
    identifier = [backingAccountInfo2 identifier];
    [installerCopy addSetAsideAccountIdentifier:identifier forPayloadClass:objc_opt_class()];
  }
}

- (void)unsetAside
{
  v14 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v14 userMode] == 1)
  {
    setAsideAccount = [(MCACAccountPayloadHandler *)self setAsideAccount];

    if (setAsideAccount)
    {
      _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
      setAsideAccount2 = [(MCACAccountPayloadHandler *)self setAsideAccount];
      v6 = [setAsideAccount2 accountPropertyForKey:@"MCAccountIdentifer"];

      backingAccountInfo = [_installedDAAccount backingAccountInfo];
      v8 = [backingAccountInfo accountPropertyForKey:@"MCAccountIdentifer"];

      if (v6 && (!v8 || ([v6 isEqualToString:v8] & 1) == 0))
      {
        setAsideAccount3 = [(MCACAccountPayloadHandler *)self setAsideAccount];
        [setAsideAccount3 markAllPropertiesDirty];
        v10 = dispatch_semaphore_create(0);
        v11 = sharedDAAccountStore();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100067C98;
        v15[3] = &unk_10011C908;
        v16 = setAsideAccount3;
        v17 = v10;
        v12 = v10;
        v13 = setAsideAccount3;
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
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (!isSetAside)
  {
    if ([(MCACAccountPayloadHandler *)self updatedOverInstalledAccount])
    {
      backingAccountInfo = 0;
      goto LABEL_11;
    }

    _installedDAAccount = [(MCACAccountPayloadHandler *)self _installedDAAccount];
    backingAccountInfo = [_installedDAAccount backingAccountInfo];

    if (!backingAccountInfo)
    {
      goto LABEL_11;
    }

LABEL_10:
    [MCFeatureOverrides accountRemovalTimeoutWithDefaultValue:600.0];
    [(MCACAccountPayloadHandler *)self _synchronouslyDeleteAccountAndAssociatedData:backingAccountInfo timeout:0 completion:?];
    goto LABEL_11;
  }

  v5 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v5 userMode];

  if (userMode == 1)
  {
    [(MCACAccountPayloadHandler *)self _installedSetAsideACAccount];
  }

  else
  {
    [(MCACAccountPayloadHandler *)self setAsideAccount];
  }
  backingAccountInfo = ;
  [(MCACAccountPayloadHandler *)self setSetAsideAccount:0];
  if (backingAccountInfo)
  {
    goto LABEL_10;
  }

LABEL_11:
}

@end