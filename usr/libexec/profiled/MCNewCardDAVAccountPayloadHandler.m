@interface MCNewCardDAVAccountPayloadHandler
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

@implementation MCNewCardDAVAccountPayloadHandler

- (id)userInputFields
{
  v21.receiver = self;
  v21.super_class = MCNewCardDAVAccountPayloadHandler;
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
    v14 = [MCNewPayloadHandler promptDictionaryForKey:@"kCardDAVUsernameKey" title:v11 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v13 minimumLength:0 fieldType:0 flags:?];
    [v4 addObject:v14];
  }

  v15 = [v5 password];

  if (!v15)
  {
    v16 = MCLocalizedString();
    v17 = MCLocalizedFormat();
    v18 = MCLocalizedString();
    v19 = [MCNewPayloadHandler promptDictionaryForKey:@"kCardDAVPasswordKey" title:v16 description:v17 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:v18 minimumLength:0 fieldType:3 flags:?];
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
        if ([v14 isEqualToString:@"kCardDAVUsernameKey"])
        {
          [v5 setUsername:v15];
        }

        else if ([v14 isEqualToString:@"kCardDAVPasswordKey"])
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
  v27.super_class = MCNewCardDAVAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v27 setUserInputResponses:v6];
}

- (id)unhashedAccountIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 hostname];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"carddav|%@", v3];
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
  v78 = self;
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];

  v8 = [[ACAccount alloc] initWithAccountType:v7];
  [v8 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  v9 = [v5 friendlyName];
  [v8 setManagingSourceName:v9];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  v11 = [v10 userMode];

  if (v11 == 1)
  {
    v12 = [(MCACAccountPayloadHandler *)v78 MCACAccountIdentifier];
    if (v12)
    {
      v13 = [v8 identifier];
      [v8 setAccountProperty:v13 forKey:@"MCAccountIdentifer"];

      [v8 setIdentifier:v12];
    }

    v14 = sharedDAAccountStore();
    v15 = [v8 identifier];
    v16 = [v14 accountWithIdentifier:v15];

    if (v16)
    {
      v17 = [v16 objectID];
      [v8 performSelector:"_setObjectID:" withObject:v17];
    }
  }

  v18 = [v7 supportedDataclasses];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v85 objects:v94 count:16];
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
          objc_enumerationMutation(v18);
        }

        [v8 setProvisioned:1 forDataclass:*(*(&v85 + 1) + 8 * i)];
      }

      v20 = [v18 countByEnumeratingWithState:&v85 objects:v94 count:16];
    }

    while (v20);
  }

  v23 = [DAAccount daAccountSubclassWithBackingAccountInfo:v8];
  v24 = v23;
  if (v23)
  {
    [v23 setEnabled:1 forDADataclass:2];
    [v24 setEnabled:1 forDADataclass:8];
    v25 = [v5 accountDescription];
    v72 = v18;
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
    v29 = [(MCNewPayloadHandler *)v78 payload];
    [v29 UUID];
    v30 = v77 = v24;
    [v28 setMcPayloadUUID:v30];

    v31 = [v77 backingAccountInfo];
    v32 = [(MCNewPayloadHandler *)v78 payload];
    v33 = [v32 profile];
    v34 = [v33 UUID];
    [v31 setMcProfileUUID:v34];

    v35 = [v77 backingAccountInfo];
    v36 = [v5 communicationServiceRules];
    [v35 setCommunicationServiceRules:v36];

    v37 = [(MCNewPayloadHandler *)v78 payload];
    v38 = [v37 profile];
    v39 = [v38 identifier];

    v73 = v8;
    if (v39)
    {
      v40 = [v77 backingAccountInfo];
      [v40 setMcConfigurationProfileIdentifier:v39];
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

    v71 = v39;
    v74 = v7;
    v42 = [v5 username];
    v75 = v5;
    v43 = [v5 password];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = v4;
    obj = v4;
    v44 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v44)
    {
      v45 = v44;
      v80 = *v82;
      v46 = kMCIDUUIDKey;
      v47 = kMCIDResponseKey;
      v48 = v43;
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

            v42 = v53;
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
              v58 = v42;
              v59 = v48;
              v60 = v57;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);

              v48 = v59;
              v42 = v58;
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v45);
    }

    else
    {
      v48 = v43;
    }

    v61 = v48;

    v62 = v77;
    [v77 setUsername:v42];
    v5 = v75;
    if ([v75 port])
    {
      [v77 setPort:{objc_msgSend(v75, "port")}];
    }

    v63 = [v75 principalURL];
    v4 = v76;
    v8 = v73;
    v7 = v74;
    v18 = v72;
    if (v63)
    {
      v64 = v63;
      v65 = [v75 principalURL];
      v66 = [NSURL URLWithString:v65];

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
    v69 = [v62 backingAccountInfo];
    [v69 setAccountProperty:v68 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v24 = v77;
    [v77 setPassword:v61];
  }

  return v24;
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

  v13 = [(MCNewCardDAVAccountPayloadHandler *)self accountValidationCompletionHandler];

  if (v13)
  {
    v14 = [(MCNewCardDAVAccountPayloadHandler *)self accountValidationCompletionHandler];
    (v14)[2](v14, v9);

    [(MCNewCardDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:0];
  }
}

- (void)_preflightWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(MCNewCardDAVAccountPayloadHandler *)self setAccountValidationCompletionHandler:a4];
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
  v29 = sub_10006DF68;
  v30 = sub_10006DF78;
  v31 = 0;
  v7 = [(MCNewCardDAVAccountPayloadHandler *)self _accountFromPayloadWithUserInputResponses:v6];
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
      v18 = [v10 setAsideAccountIdentifiersForPayloadClass:objc_opt_class()];
      if ([v18 count])
      {
        v19 = [v16 backingAccountInfo];
        v20 = +[DASharedAccountProperties DAAccountIdentifiersToIgnoreForUniquenessCheck];
        [v19 setAccountProperty:v18 forKey:v20];
      }

      v21 = sharedDAAccountStore();
      v22 = [v16 backingAccountInfo];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10006E580;
      v44[3] = &unk_10011C8E0;
      v44[4] = &v45;
      v44[5] = &v49;
      [v21 canSaveAccount:v22 withCompletionHandler:v44];

      dispatch_semaphore_wait(v50[5], 0xFFFFFFFFFFFFFFFFLL);
      if (*(v46 + 24) == 1)
      {
        v23 = [v16 backingAccountInfo];
        [v23 setAuthenticated:1];

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10006E59C;
        v40[3] = &unk_10011B990;
        v42 = &v49;
        v41 = v16;
        v43 = &v55;
        v24 = objc_retainBlock(v40);
        if ([v11 length])
        {
          v25 = [DMCPersonaHelper performBlockUnderPersona:v11 block:v24];
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
        v34 = [v33 MCCopyAsPrimaryError];
        v35 = v56[5];
        v56[5] = v34;
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

    v36 = [v16 backingAccountInfo];
    v37 = [v36 identifier];
    v38 = [(MCNewPayloadHandler *)self payload];
    [v38 setAcAccountIdentifier:v37];

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
  v22 = [(MCNewCardDAVAccountPayloadHandler *)self _reallyInstallInstaller:v9 isInstalledByMDM:v12 personaID:v15 rmAccountIdentifier:v16];
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
  v4 = ACAccountTypeIdentifierCardDAV;
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
  v10.super_class = MCNewCardDAVAccountPayloadHandler;
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
        v15[2] = sub_10006ECB0;
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