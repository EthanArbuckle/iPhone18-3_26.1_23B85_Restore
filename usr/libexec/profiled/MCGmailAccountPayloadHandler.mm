@interface MCGmailAccountPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (MCGmailAccountPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)MCACAccountIdentifier;
- (id)_installWithAccountDictionary:(id)dictionary;
- (id)unhashedAccountIdentifier;
- (void)_remove;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCGmailAccountPayloadHandler

- (MCGmailAccountPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = MCGmailAccountPayloadHandler;
  return [(MCNewPayloadHandler *)&v5 initWithPayload:payload profileHandler:handler];
}

- (id)unhashedAccountIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  emailAddress = [payload emailAddress];
  if (emailAddress)
  {
    v4 = [NSString stringWithFormat:@"google|%@", emailAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)MCACAccountIdentifier
{
  unhashedAccountIdentifier = [(MCGmailAccountPayloadHandler *)self unhashedAccountIdentifier];
  mCHashedIdentifier = [unhashedAccountIdentifier MCHashedIdentifier];

  return mCHashedIdentifier;
}

- (id)_installWithAccountDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy copy];
  v6 = [GmailAccount newAccountWithDictionary:v5];

  persistentAccount = [v6 persistentAccount];
  [persistentAccount setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  payload = [(MCNewPayloadHandler *)self payload];
  friendlyName = [payload friendlyName];
  [persistentAccount setManagingSourceName:friendlyName];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  LODWORD(friendlyName) = [v10 userMode];

  if (friendlyName == 1)
  {
    mCACAccountIdentifier = [(MCGmailAccountPayloadHandler *)self MCACAccountIdentifier];
    if (mCACAccountIdentifier)
    {
      identifier = [persistentAccount identifier];
      [persistentAccount setAccountProperty:identifier forKey:@"MCAccountIdentifer"];

      [persistentAccount setIdentifier:mCACAccountIdentifier];
    }
  }

  payload2 = [(MCNewPayloadHandler *)self payload];
  uUID = [payload2 UUID];
  [persistentAccount setMcPayloadUUID:uUID];

  payload3 = [(MCNewPayloadHandler *)self payload];
  profile = [payload3 profile];
  uUID2 = [profile UUID];
  [persistentAccount setMcProfileUUID:uUID2];

  payload4 = [(MCNewPayloadHandler *)self payload];
  profile2 = [payload4 profile];
  identifier2 = [profile2 identifier];

  if (identifier2)
  {
    [persistentAccount setMcConfigurationProfileIdentifier:identifier2];
  }

  else
  {
    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to retrieve profile identifier. Not setting profile identifier account property on Google account.", buf, 2u);
    }
  }

  [persistentAccount setAccountProperty:&__kCFBooleanFalse forKey:ACAccountPropertyShouldNeverUseSyncableCredential];
  if (v6)
  {
    [v6 savePersistentAccount];
    v22 = 0;
  }

  else
  {
    v23 = [dictionaryCopy objectForKey:MFMailAccountUsername];
    v24 = MCGoogleErrorDomain;
    v25 = MCErrorArray();
    v22 = [NSError MCErrorWithDomain:v24 code:47000 descriptionArray:v25 errorType:MCErrorTypeFatal, v23, 0];
  }

  persistentAccount2 = [v6 persistentAccount];
  identifier3 = [persistentAccount2 identifier];
  payload5 = [(MCNewPayloadHandler *)self payload];
  [payload5 setAcAccountIdentifier:identifier3];

  return v22;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100088DF8;
  v47 = sub_100088E08;
  v48 = 0;
  v10 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  bOOLValue = [v10 BOOLValue];

  if (!bOOLValue)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v12 = kMDMPersonaKey;
  v13 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [optionsCopy objectForKeyedSubscript:v12];
  }

  else
  {
    v14 = 0;
  }

  v16 = kMCInstallProfileOptionManagingProfileIdentifier;
  v17 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    identifier = 0;
    goto LABEL_11;
  }

  v18 = [optionsCopy objectForKeyedSubscript:v16];

  if (!v18)
  {
LABEL_5:
    identifier = 0;
    goto LABEL_12;
  }

  v19 = +[ACAccountStore defaultStore];
  v20 = [v19 dmc_remoteManagementAccountForManagementProfileIdentifier:v18];

  identifier = [v20 identifier];

  v17 = v18;
LABEL_11:

LABEL_12:
  payload = [(MCNewPayloadHandler *)self payload];
  v22 = [(MCGmailAccountPayloadHandler *)self accountDictionaryWithIsInstalledByMDM:bOOLValue personaID:v14 rmAccountIdentifier:identifier];
  v39 = [v22 objectForKey:MailAccountManagedTag];
  if (v22)
  {
    if ([v14 length])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100088E10;
      v40[3] = &unk_10011C9A0;
      v42 = &v43;
      v40[4] = self;
      v41 = v22;
      v23 = [DMCPersonaHelper performBlockUnderPersona:v14 block:v40];
    }

    else
    {
      v29 = [(MCGmailAccountPayloadHandler *)self _installWithAccountDictionary:v22];
      v30 = v44[5];
      v44[5] = v29;
    }

    if (!v44[5])
    {
      [payload setPersistentResourceID:v39];
    }
  }

  else
  {
    v24 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not create Google account description", buf, 2u);
    }

    emailAddress = [payload emailAddress];
    v26 = MCErrorArray();
    installerCopy = [NSError MCErrorWithDomain:MCGoogleErrorDomain code:47000 descriptionArray:v26 errorType:MCErrorTypeFatal, emailAddress, 0, installerCopy];
    v28 = v44[5];
    v44[5] = installerCopy;
  }

  v31 = v44[5];
  if (v31)
  {
    v32 = _MCLogObjects[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      payload2 = [(MCNewPayloadHandler *)self payload];
      friendlyName = [payload2 friendlyName];
      mCVerboseDescription = [v44[5] MCVerboseDescription];
      *buf = 138543618;
      v50 = friendlyName;
      v51 = 2114;
      v52 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Could not install Google payload %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v43, 8);
  return v31 == 0;
}

- (BOOL)isInstalled
{
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  if (persistentResourceID)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierGmail];
    [v4 accountsWithAccountType:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = MailAccountManagedTag;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) accountPropertyForKey:{v10, v16}];
          v13 = v12;
          if (v12 && ([v12 isEqualToString:persistentResourceID] & 1) != 0)
          {

            v14 = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  if (persistentResourceID)
  {
    v4 = +[ACAccountStore defaultStore];
    [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierGmail];
    v31 = v34 = v4;
    v5 = [v4 accountsWithAccountType:?];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      v11 = MailAccountManagedTag;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = [v13 accountPropertyForKey:v11];
          v15 = v14;
          if (v14 && [v14 isEqualToString:persistentResourceID])
          {
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v9);
    }

    v32 = persistentResourceID;
    v30 = v7;

    v16 = dispatch_group_create();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v6;
    v17 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      v20 = MailAccountManagedTag;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          v23 = [v22 accountPropertyForKey:{v20, v30}];
          v24 = [v23 componentsSeparatedByString:@"|"];
          if ([v24 count] < 2)
          {
            v28 = 0;
          }

          else
          {
            v25 = v20;
            v26 = v19;
            v27 = [v24 objectAtIndex:1];
            if ([v27 length])
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v19 = v26;
            v20 = v25;
          }

          dispatch_group_enter(v16);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000893B8;
          v35[3] = &unk_10011C908;
          v36 = v28;
          v37 = v16;
          v29 = v28;
          [v34 removeAccount:v22 withCompletionHandler:v35];
        }

        v18 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v18);
    }

    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    persistentResourceID = v32;
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    [(MCGmailAccountPayloadHandler *)self setSetAsideAccountDictionary:0];
  }

  else
  {
    [(MCGmailAccountPayloadHandler *)self _remove];
  }

  payload = [(MCNewPayloadHandler *)self payload];
  [payload setPersistentResourceID:0];
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  if (persistentResourceID)
  {
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierGmail];
    [v5 accountsWithAccountType:v6];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v19 = v6;
      v9 = *v21;
      v10 = MailAccountManagedTag;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 accountPropertyForKey:v10];
          v14 = v13;
          if (v13 && [v13 isEqualToString:persistentResourceID])
          {
            v17 = [v12 accountPropertyForKey:@"MCAccountIsManaged"];
            bOOLValue = [v17 BOOLValue];

            v15 = [v12 accountPropertyForKey:ACAccountPropertyPersonaIdentifier];
            v8 = [v12 accountPropertyForKey:ACAccountPropertyRemoteManagingAccountIdentifier];

            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v15 = 0;
      bOOLValue = 0;
LABEL_13:
      v6 = v19;
    }

    else
    {
      v15 = 0;
      bOOLValue = 0;
    }

    v18 = [(MCGmailAccountPayloadHandler *)self accountDictionaryWithIsInstalledByMDM:bOOLValue personaID:v15 rmAccountIdentifier:v8];
    [(MCGmailAccountPayloadHandler *)self setSetAsideAccountDictionary:v18];

    [(MCGmailAccountPayloadHandler *)self _remove];
  }
}

- (void)unsetAside
{
  setAsideAccountDictionary = [(MCGmailAccountPayloadHandler *)self setAsideAccountDictionary];

  if (setAsideAccountDictionary)
  {
    setAsideAccountDictionary2 = [(MCGmailAccountPayloadHandler *)self setAsideAccountDictionary];
    v4 = [(MCGmailAccountPayloadHandler *)self _installWithAccountDictionary:setAsideAccountDictionary2];
  }
}

@end