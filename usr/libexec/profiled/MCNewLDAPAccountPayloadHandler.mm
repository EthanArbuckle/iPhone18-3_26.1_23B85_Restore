@interface MCNewLDAPAccountPayloadHandler
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

@implementation MCNewLDAPAccountPayloadHandler

- (id)userInputFields
{
  v21.receiver = self;
  v21.super_class = MCNewLDAPAccountPayloadHandler;
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
    v14 = [MCNewPayloadHandler promptDictionaryForKey:@"kLDAPUsernameKey" title:v11 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v13 minimumLength:0 fieldType:&_mh_execute_header flags:?];
    [v4 addObject:v14];
  }

  password = [payload password];

  if (!password)
  {
    v16 = MCLocalizedString();
    v17 = MCLocalizedFormat();
    v18 = MCLocalizedString();
    v19 = [MCNewPayloadHandler promptDictionaryForKey:@"kLDAPPasswordKey" title:v16 description:v17 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v18 minimumLength:0 fieldType:0x100000003 flags:?];
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
        if ([v14 isEqualToString:@"kLDAPUsernameKey"])
        {
          [payload setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kLDAPPasswordKey"])
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
  v27.super_class = MCNewLDAPAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v27 setUserInputResponses:v6];
}

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  hostname = [payload hostname];
  if (hostname)
  {
    v4 = [NSString stringWithFormat:@"ldap|%@", hostname];
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
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierLDAP];

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
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v19 = [supportedDataclasses countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v99;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v99 != v21)
        {
          objc_enumerationMutation(supportedDataclasses);
        }

        [v8 setProvisioned:1 forDataclass:*(*(&v98 + 1) + 8 * i)];
      }

      v20 = [supportedDataclasses countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v20);
  }

  v23 = [DAAccount daAccountSubclassWithBackingAccountInfo:v8];
  v24 = v23;
  if (v23)
  {
    [v23 setEnabled:1 forDADataclass:8];
    accountDescription = [payload accountDescription];
    v82 = responsesCopy;
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
    uUID = [payload2 UUID];
    [backingAccountInfo setMcPayloadUUID:uUID];

    backingAccountInfo2 = [v24 backingAccountInfo];
    payload3 = [(MCNewPayloadHandler *)selfCopy payload];
    profile = [payload3 profile];
    uUID2 = [profile UUID];
    [backingAccountInfo2 setMcProfileUUID:uUID2];

    backingAccountInfo3 = [v24 backingAccountInfo];
    communicationServiceRules = [payload communicationServiceRules];
    [backingAccountInfo3 setCommunicationServiceRules:communicationServiceRules];

    payload4 = [(MCNewPayloadHandler *)selfCopy payload];
    profile2 = [payload4 profile];
    identifier3 = [profile2 identifier];

    v76 = identifier3;
    if (identifier3)
    {
      backingAccountInfo4 = [v24 backingAccountInfo];
      [backingAccountInfo4 setMcConfigurationProfileIdentifier:identifier3];

      v41 = responsesCopy;
    }

    else
    {
      v42 = _MCLogObjects[0];
      v41 = responsesCopy;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on LDAP account.", buf, 2u);
      }
    }

    v89 = v24;
    v78 = supportedDataclasses;
    v79 = v8;
    v80 = v7;
    username = [payload username];
    v81 = payload;
    password = [payload password];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v41;
    v45 = [obj countByEnumeratingWithState:&v94 objects:v107 count:16];
    if (v45)
    {
      v46 = v45;
      v87 = *v95;
      v47 = kMCIDUUIDKey;
      v48 = kMCIDResponseKey;
      v49 = username;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v95 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v94 + 1) + 8 * j);
          v52 = [v51 objectForKey:v47];
          v53 = [v51 objectForKey:v48];
          if ([v52 isEqualToString:@"kLDAPUsernameKey"])
          {
            v54 = v53;

            v49 = v54;
          }

          else if ([v52 isEqualToString:@"kLDAPPasswordKey"])
          {
            v55 = v53;

            password = v55;
          }

          else
          {
            v56 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
              v58 = objc_opt_class();
              *buf = 138543618;
              v104 = v58;
              v105 = 2114;
              v106 = v52;
              v59 = password;
              v60 = v49;
              v61 = v58;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

              v49 = v60;
              password = v59;
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v94 objects:v107 count:16];
      }

      while (v46);
    }

    else
    {
      v49 = username;
    }

    v62 = &__kCFBooleanTrue;
    if (!password)
    {
      v62 = &__kCFBooleanFalse;
    }

    v63 = v62;
    backingAccountInfo5 = [v89 backingAccountInfo];
    v83 = v63;
    [backingAccountInfo5 setAccountProperty:v63 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    obja = v49;
    [v89 setUsername:v49];
    [v89 setPassword:password];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    searchSettings = [v81 searchSettings];
    v65 = [searchSettings countByEnumeratingWithState:&v90 objects:v102 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v91;
      do
      {
        for (k = 0; k != v66; k = k + 1)
        {
          if (*v91 != v67)
          {
            objc_enumerationMutation(searchSettings);
          }

          v69 = *(*(&v90 + 1) + 8 * k);
          v70 = [v69 objectForKey:@"LDAPSearchSettingDescription"];
          v71 = [v69 objectForKey:@"LDAPSearchSettingSearchBase"];
          v72 = [v69 objectForKey:@"LDAPSearchSettingScope"];
          if ([v72 isEqualToString:@"LDAPSearchSettingScopeBase"])
          {
            v73 = 0;
          }

          else if ([v72 isEqualToString:@"LDAPSearchSettingScopeOneLevel"])
          {
            v73 = 1;
          }

          else
          {
            v73 = 2;
          }

          v74 = objc_alloc_init(MCLDAPSearchSettingsClass());
          [v74 setSearchDescription:v70];
          [v74 setSearchBase:v71];
          [v74 setScope:v73];
          [v89 addSearchSettings:v74];
        }

        v66 = [searchSettings countByEnumeratingWithState:&v90 objects:v102 count:16];
      }

      while (v66);
    }

    payload = v81;
    responsesCopy = v82;
    v8 = v79;
    v7 = v80;
    supportedDataclasses = v78;
    v24 = v89;
  }

  return v24;
}

- (id)_errorFromValidationError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if (code == 102)
  {
    v12 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    v18 = MCErrorTypeRetryable;
    v9 = v12;
    v10 = 18002;
    goto LABEL_7;
  }

  if (code == 101)
  {
    v11 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    v18 = MCErrorTypeSkippable;
    v9 = v11;
    v10 = 18001;
    goto LABEL_7;
  }

  if (code == 100)
  {
    v5 = MCDAErrorDomain;
    v6 = MCErrorArray();
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    v18 = MCErrorTypeSkippable;
    v9 = v5;
    v10 = 18000;
LABEL_7:
    [NSError MCErrorWithDomain:v9 code:v10 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:errorCopy errorType:v18];
    v13 = LABEL_8:;

    goto LABEL_9;
  }

  localizedDescription = [errorCopy localizedDescription];
  v16 = [localizedDescription length];

  v17 = MCDAErrorDomain;
  v6 = MCErrorArray();
  if (!v16)
  {
    v7 = MCLocalizedErrorString();
    v8 = MCUSEnglishErrorString();
    [NSError MCErrorWithDomain:v17 code:18000 descriptionArray:v6 suggestion:v7 USEnglishSuggestion:v8 underlyingError:0 errorType:MCErrorTypeFatal];
    goto LABEL_8;
  }

  v13 = [NSError MCErrorWithDomain:v17 code:18000 descriptionArray:v6 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];
LABEL_9:

  return v13;
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

  accountValidationCompletionHandler = [(MCNewLDAPAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (accountValidationCompletionHandler)
  {
    accountValidationCompletionHandler2 = [(MCNewLDAPAccountPayloadHandler *)self accountValidationCompletionHandler];
    (accountValidationCompletionHandler2)[2](accountValidationCompletionHandler2, errorCopy);

    [(MCNewLDAPAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  [(MCNewLDAPAccountPayloadHandler *)self setAccountValidationCompletionHandler:handler];
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
  v29 = sub_10006B864;
  v30 = sub_10006B874;
  v31 = 0;
  v7 = [(MCNewLDAPAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:responsesCopy];
  if (v7)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10006B87C;
    v23[3] = &unk_10011BFA0;
    v25 = &v26;
    v8 = dispatch_semaphore_create(0);
    v24 = v8;
    [(MCNewLDAPAccountPayloadHandler *)self _preflightWithAccount:v7 completionHandler:v23];
    v9 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = v24;
  }

  else
  {
    v8 = MCErrorArray();
    v11 = [NSError MCErrorWithDomain:MCLDAPErrorDomain code:19000 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
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
    v15 = [(MCNewLDAPAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:0];
    v16 = v15;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_10006B864;
    v59 = sub_10006B874;
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
      v52 = sub_10006B864;
      v53 = sub_10006B874;
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
      v44[2] = sub_10006BE7C;
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
        v40[2] = sub_10006BE98;
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
        v33 = [NSError MCErrorWithDomain:MCLDAPErrorDomain code:19002 descriptionArray:v32 errorType:MCErrorTypeFatal, 0];
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
      v30 = [NSError MCErrorWithDomain:MCLDAPErrorDomain code:19000 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
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
    v26 = MCLDAPErrorDomain;
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:v26 code:19001 descriptionArray:v27 errorType:MCErrorTypeFatal, 0];
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
  v22 = [(MCNewLDAPAccountPayloadHandler *)self _reallyInstallInstaller:installerCopy isInstalledByMDM:bOOLValue personaID:v15 rmAccountIdentifier:identifier];
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
  v4 = ACAccountTypeIdentifierLDAP;
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
  v10.super_class = MCNewLDAPAccountPayloadHandler;
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
        v15[2] = sub_10006C5AC;
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