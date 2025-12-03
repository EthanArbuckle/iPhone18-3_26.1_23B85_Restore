@interface MCNewCardDAVAccountPayloadHandler
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

@implementation MCNewCardDAVAccountPayloadHandler

- (id)userInputFields
{
  v21.receiver = self;
  v21.super_class = MCNewCardDAVAccountPayloadHandler;
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
    v14 = [MCNewPayloadHandler promptDictionaryForKey:@"kCardDAVUsernameKey" title:v11 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v13 minimumLength:0 fieldType:0 flags:?];
    [v4 addObject:v14];
  }

  password = [payload password];

  if (!password)
  {
    v16 = MCLocalizedString();
    v17 = MCLocalizedFormat();
    v18 = MCLocalizedString();
    v19 = [MCNewPayloadHandler promptDictionaryForKey:@"kCardDAVPasswordKey" title:v16 description:v17 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v18 minimumLength:0 fieldType:3 flags:?];
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
        if ([v14 isEqualToString:@"kCardDAVUsernameKey"])
        {
          [payload setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kCardDAVPasswordKey"])
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
  v27.super_class = MCNewCardDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v27 setUserInputResponses:v6];
}

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  hostname = [payload hostname];
  if (hostname)
  {
    v4 = [NSString stringWithFormat:@"carddav|%@", hostname];
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
  selfCopy = self;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  [v8 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  friendlyName = [payload friendlyName];
  [v8 setManagingSourceName:friendlyName];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v10 userMode];

  if (userMode == 1)
  {
    mCACAccountIdentifier = [(MCACAccountPayloadHandler *)selfCopy MCACAccountIdentifier];
    if (mCACAccountIdentifier)
    {
      identifier = [v8 identifier];
      [v8 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

      [v8 setIdentifier:mCACAccountIdentifier];
    }

    v14 = sharedDAAccountStore();
    identifier2 = [v8 identifier];
    v16 = [v14 accountWithIdentifier:identifier2];

    if (v16)
    {
      objectID = [v16 objectID];
      [v8 performSelector:"_setObjectID:" withObject:objectID];
    }
  }

  supportedDataclasses = [v7 supportedDataclasses];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v19 = [supportedDataclasses countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v86;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v86 != v21)
        {
          objc_enumerationMutation(supportedDataclasses);
        }

        [v8 setProvisioned:1 forDataclass:*(*(&v85 + 1) + 8 * i)];
      }

      v20 = [supportedDataclasses countByEnumeratingWithState:&v85 objects:v94 count:16];
    }

    while (v20);
  }

  v23 = [DAAccount daAccountSubclassWithBackingAccountInfo:v8];
  v24 = v23;
  if (v23)
  {
    [v23 setEnabled:1 forDADataclass:2];
    [v24 setEnabled:1 forDADataclass:8];
    accountDescription = [payload accountDescription];
    v72 = supportedDataclasses;
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
    payload2 = [(MCNewPayloadHandler *)selfCopy payload];
    [payload2 UUID];
    v30 = v77 = v24;
    [backingAccountInfo setMcPayloadUUID:v30];

    backingAccountInfo2 = [v77 backingAccountInfo];
    payload3 = [(MCNewPayloadHandler *)selfCopy payload];
    profile = [payload3 profile];
    uUID = [profile UUID];
    [backingAccountInfo2 setMcProfileUUID:uUID];

    backingAccountInfo3 = [v77 backingAccountInfo];
    communicationServiceRules = [payload communicationServiceRules];
    [backingAccountInfo3 setCommunicationServiceRules:communicationServiceRules];

    payload4 = [(MCNewPayloadHandler *)selfCopy payload];
    profile2 = [payload4 profile];
    identifier3 = [profile2 identifier];

    v73 = v8;
    if (identifier3)
    {
      backingAccountInfo4 = [v77 backingAccountInfo];
      [backingAccountInfo4 setMcConfigurationProfileIdentifier:identifier3];
    }

    else
    {
      v41 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on CardDAV account.", buf, 2u);
      }
    }

    v71 = identifier3;
    v74 = v7;
    username = [payload username];
    v75 = payload;
    password = [payload password];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = responsesCopy;
    obj = responsesCopy;
    v44 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v44)
    {
      v45 = v44;
      v80 = *v82;
      v46 = kMCIDUUIDKey;
      v47 = kMCIDResponseKey;
      v48 = password;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v82 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v81 + 1) + 8 * j);
          v51 = [v50 objectForKey:v46];
          v52 = [v50 objectForKey:v47];
          if ([v51 isEqualToString:@"kCardDAVUsernameKey"])
          {
            v53 = v52;

            username = v53;
          }

          else if ([v51 isEqualToString:@"kCardDAVPasswordKey"])
          {
            v54 = v52;

            v48 = v54;
          }

          else
          {
            v55 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v56 = v55;
              v57 = objc_opt_class();
              *buf = 138543618;
              v90 = v57;
              v91 = 2114;
              v92 = v51;
              v58 = username;
              v59 = v48;
              v60 = v57;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

              v48 = v59;
              username = v58;
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v45);
    }

    else
    {
      v48 = password;
    }

    v61 = v48;

    v62 = v77;
    [v77 setUsername:username];
    payload = v75;
    if ([v75 port])
    {
      [v77 setPort:{objc_msgSend(v75, "port")}];
    }

    principalURL = [v75 principalURL];
    responsesCopy = v76;
    v8 = v73;
    v7 = v74;
    supportedDataclasses = v72;
    if (principalURL)
    {
      v64 = principalURL;
      principalURL2 = [v75 principalURL];
      v66 = [NSURL URLWithString:principalURL2];

      v62 = v77;
      if (v66)
      {
        [v77 setPrincipalURL:v66];
      }
    }

    else
    {
      v66 = 0;
    }

    v67 = &__kCFBooleanTrue;
    if (!v61)
    {
      v67 = &__kCFBooleanFalse;
    }

    v68 = v67;
    backingAccountInfo5 = [v62 backingAccountInfo];
    [backingAccountInfo5 setAccountProperty:v68 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v24 = v77;
    [v77 setPassword:v61];
  }

  return v24;
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

  accountValidationCompletionHandler = [(MCNewCardDAVAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (accountValidationCompletionHandler)
  {
    accountValidationCompletionHandler2 = [(MCNewCardDAVAccountPayloadHandler *)self accountValidationCompletionHandler];
    (accountValidationCompletionHandler2)[2](accountValidationCompletionHandler2, errorCopy);

    [(MCNewCardDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  [(MCNewCardDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:handler];
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
  v29 = sub_10006DF68;
  v30 = sub_10006DF78;
  v31 = 0;
  v7 = [(MCNewCardDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:responsesCopy];
  if (v7)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10006DF80;
    v23[3] = &unk_10011BFA0;
    v25 = &v26;
    v8 = dispatch_semaphore_create(0);
    v24 = v8;
    [(MCNewCardDAVAccountPayloadHandler *)self _preflightWithAccount:v7 completionHandler:v23];
    v9 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = v24;
  }

  else
  {
    v8 = MCErrorArray();
    v11 = [NSError MCErrorWithDomain:MCCardDAVErrorDomain code:20000 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
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
    v15 = [(MCNewCardDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0];
    v16 = v15;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_10006DF68;
    v59 = sub_10006DF78;
    v60 = 0;
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

      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_10006DF68;
      v53 = sub_10006DF78;
      v54 = dispatch_semaphore_create(0);
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 1;
      v18 = [installerCopy setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v18 count])
      {
        backingAccountInfo2 = [v16 backingAccountInfo];
        v20 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [backingAccountInfo2 setAccountProperty:v18 forKey:v20];
      }

      v21 = sharedDAAccountStore();
      backingAccountInfo3 = [v16 backingAccountInfo];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10006E580;
      v44[3] = &unk_10011C8E0;
      v44[4] = &v45;
      v44[5] = &v49;
      [v21 canSaveAccount:backingAccountInfo3 withCompletionHandler:v44];

      dispatch_semaphore_wait(v50[5], 0xFFFFFFFFFFFFFFFFLL);
      if (*(v46 + 24) == 1)
      {
        backingAccountInfo4 = [v16 backingAccountInfo];
        [backingAccountInfo4 setAuthenticated:1];

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10006E59C;
        v40[3] = &unk_10011B990;
        v42 = &v49;
        v41 = v16;
        v43 = &v55;
        v24 = objc_retainBlock(v40);
        if ([dCopy length])
        {
          v25 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v24];
        }

        else
        {
          (v24[2])(v24);
        }

        v32 = v41;
      }

      else
      {
        v32 = MCErrorArray();
        v33 = [NSError MCErrorWithDomain:MCCardDAVErrorDomain code:20002 descriptionArray:v32 errorType:MCErrorTypeFatal, 0];
        mCCopyAsPrimaryError = [v33 MCCopyAsPrimaryError];
        v35 = v56[5];
        v56[5] = mCCopyAsPrimaryError;
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);
    }

    else
    {
      v29 = MCErrorArray();
      v30 = [NSError MCErrorWithDomain:MCCardDAVErrorDomain code:20000 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      v31 = v56[5];
      v56[5] = v30;
    }

    backingAccountInfo5 = [v16 backingAccountInfo];
    identifier = [backingAccountInfo5 identifier];
    payload2 = [(MCNewPayloadHandler *)self payload];
    [payload2 setAcAccountIdentifier:identifier];

    v28 = v56[5];
    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v26 = MCCardDAVErrorDomain;
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:v26 code:20001 descriptionArray:v27 errorType:MCErrorTypeFatal, 0];
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
  v22 = [(MCNewCardDAVAccountPayloadHandler *)self _reallyInstallInstaller:installerCopy isInstalledByMDM:bOOLValue personaID:v15 rmAccountIdentifier:identifier];
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
  v4 = ACAccountTypeIdentifierCardDAV;
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
  v10.super_class = MCNewCardDAVAccountPayloadHandler;
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
        v15[2] = sub_10006ECB0;
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