@interface MCNewSubCalAccountPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (id)_accountFromPayload;
- (id)_reallyInstallInstaller:(id)installer isInstalledByMDM:(BOOL)m personaID:(id)d rmAccountIdentifier:(id)identifier;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (void)remove;
- (void)setAsideWithInstaller:(id)installer;
- (void)unsetAside;
@end

@implementation MCNewSubCalAccountPayloadHandler

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  hostname = [payload hostname];
  if (hostname)
  {
    v4 = [NSString stringWithFormat:@"subcal|%@", hostname];
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

- (id)_accountFromPayload
{
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = sharedDAAccountStore();
  v5 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSubscribedCalendar];

  v6 = [[ACAccount alloc] initWithAccountType:v5];
  [v6 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  friendlyName = [payload friendlyName];
  [v6 setManagingSourceName:friendlyName];

  v8 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v8 userMode];

  if (userMode == 1)
  {
    mCACAccountIdentifier = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
    if (mCACAccountIdentifier)
    {
      identifier = [v6 identifier];
      [v6 setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

      [v6 setIdentifier:mCACAccountIdentifier];
    }

    v12 = sharedDAAccountStore();
    identifier2 = [v6 identifier];
    v14 = [v12 accountWithIdentifier:identifier2];

    if (v14)
    {
      objectID = [v14 objectID];
      [v6 performSelector:"_setObjectID:" withObject:objectID];
    }
  }

  supportedDataclasses = [v5 supportedDataclasses];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = [supportedDataclasses countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(supportedDataclasses);
        }

        [v6 setProvisioned:1 forDataclass:*(*(&v49 + 1) + 8 * i)];
      }

      v18 = [supportedDataclasses countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v18);
  }

  v21 = [DAAccount daAccountSubclassWithBackingAccountInfo:v6];
  v22 = v21;
  if (v21)
  {
    [v21 setEnabled:1 forDADataclass:4];
    password = [payload password];
    v24 = &__kCFBooleanTrue;
    if (!password)
    {
      v24 = &__kCFBooleanFalse;
    }

    v25 = v24;

    backingAccountInfo = [v22 backingAccountInfo];
    [backingAccountInfo setAccountProperty:v25 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    accountDescription = [payload accountDescription];
    if (accountDescription)
    {
      [v22 setAccountDescription:accountDescription];
    }

    else
    {
      hostname = [payload hostname];
      [v22 setAccountDescription:hostname];
    }

    hostname2 = [payload hostname];
    [v22 setHost:hostname2];

    username = [payload username];
    [v22 setUsername:username];

    password2 = [payload password];
    [v22 setPassword:password2];

    [v22 setUseSSL:{objc_msgSend(payload, "useSSL")}];
    backingAccountInfo2 = [v22 backingAccountInfo];
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
    [backingAccountInfo2 setMcPayloadUUID:uUID];

    backingAccountInfo3 = [v22 backingAccountInfo];
    payload3 = [(MCNewPayloadHandler *)self payload];
    profile = [payload3 profile];
    uUID2 = [profile UUID];
    [backingAccountInfo3 setMcProfileUUID:uUID2];

    payload4 = [(MCNewPayloadHandler *)self payload];
    profile2 = [payload4 profile];
    identifier3 = [profile2 identifier];

    if (identifier3)
    {
      backingAccountInfo4 = [v22 backingAccountInfo];
      [backingAccountInfo4 setMcConfigurationProfileIdentifier:identifier3];
    }

    else
    {
      v43 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on subscribed calendar.", v48, 2u);
      }
    }

    backingAccountInfo5 = [v22 backingAccountInfo];
    identifier4 = [backingAccountInfo5 identifier];
    payload5 = [(MCNewPayloadHandler *)self payload];
    [payload5 setAcAccountIdentifier:identifier4];
  }

  return v22;
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
    _accountFromPayload = [(MCNewSubCalAccountPayloadHandler *)self _accountFromPayload];
    v16 = _accountFromPayload;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100065078;
    v56 = sub_100065088;
    v57 = 0;
    if (_accountFromPayload)
    {
      if (mCopy)
      {
        [_accountFromPayload setAccountBoolProperty:1 forKey:@"MCAccountIsManaged"];
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
      v49 = sub_100065078;
      v50 = sub_100065088;
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
      v41[2] = sub_100065090;
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
        v37[2] = sub_1000650AC;
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
        v33 = [NSError MCErrorWithDomain:MCSubCalErrorDomain code:16002 descriptionArray:v32 errorType:MCErrorTypeFatal, 0];
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
      v30 = [NSError MCErrorWithDomain:MCSubCalErrorDomain code:16000 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      v31 = v53[5];
      v53[5] = v30;
    }

    v28 = v53[5];
    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v26 = MCSubCalErrorDomain;
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:v26 code:16001 descriptionArray:v27 errorType:MCErrorTypeFatal, 0];
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
  v22 = [(MCNewSubCalAccountPayloadHandler *)self _reallyInstallInstaller:installerCopy isInstalledByMDM:bOOLValue personaID:v15 rmAccountIdentifier:identifier];
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
  v4 = ACAccountTypeIdentifierSubscribedCalendar;
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
  v10.super_class = MCNewSubCalAccountPayloadHandler;
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
        v15[2] = sub_1000657C0;
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