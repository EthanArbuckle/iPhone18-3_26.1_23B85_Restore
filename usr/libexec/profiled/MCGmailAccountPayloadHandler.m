@interface MCGmailAccountPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (MCGmailAccountPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (id)MCACAccountIdentifier;
- (id)_installWithAccountDictionary:(id)a3;
- (id)unhashedAccountIdentifier;
- (void)_remove;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCGmailAccountPayloadHandler

- (MCGmailAccountPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = MCGmailAccountPayloadHandler;
  return [(MCNewPayloadHandler *)&v5 initWithPayload:a3 profileHandler:a4];
}

- (id)unhashedAccountIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 emailAddress];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"google|%@", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)MCACAccountIdentifier
{
  v2 = [(MCGmailAccountPayloadHandler *)self unhashedAccountIdentifier];
  v3 = [v2 MCHashedIdentifier];

  return v3;
}

- (id)_installWithAccountDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = [GmailAccount newAccountWithDictionary:v5];

  v7 = [v6 persistentAccount];
  [v7 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  v8 = [(MCNewPayloadHandler *)self payload];
  v9 = [v8 friendlyName];
  [v7 setManagingSourceName:v9];

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  LODWORD(v9) = [v10 userMode];

  if (v9 == 1)
  {
    v11 = [(MCGmailAccountPayloadHandler *)self MCACAccountIdentifier];
    if (v11)
    {
      v12 = [v7 identifier];
      [v7 setAccountProperty:v12 forKey:@"MCAccountIdentifer"];

      [v7 setIdentifier:v11];
    }
  }

  v13 = [(MCNewPayloadHandler *)self payload];
  v14 = [v13 UUID];
  [v7 setMcPayloadUUID:v14];

  v15 = [(MCNewPayloadHandler *)self payload];
  v16 = [v15 profile];
  v17 = [v16 UUID];
  [v7 setMcProfileUUID:v17];

  v18 = [(MCNewPayloadHandler *)self payload];
  v19 = [v18 profile];
  v20 = [v19 identifier];

  if (v20)
  {
    [v7 setMcConfigurationProfileIdentifier:v20];
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

  [v7 setAccountProperty:&__kCFBooleanFalse forKey:ACAccountPropertyShouldNeverUseSyncableCredential];
  if (v6)
  {
    [v6 savePersistentAccount];
    v22 = 0;
  }

  else
  {
    v23 = [v4 objectForKey:MFMailAccountUsername];
    v24 = MCGoogleErrorDomain;
    v25 = MCErrorArray();
    v22 = [NSError MCErrorWithDomain:v24 code:47000 descriptionArray:v25 errorType:MCErrorTypeFatal, v23, 0];
  }

  v26 = [v6 persistentAccount];
  v27 = [v26 identifier];
  v28 = [(MCNewPayloadHandler *)self payload];
  [v28 setAcAccountIdentifier:v27];

  return v22;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v37 = a3;
  v9 = a4;
  v38 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100088DF8;
  v47 = sub_100088E08;
  v48 = 0;
  v10 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
  v11 = [v10 BOOLValue];

  if (!v11)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v12 = kMDMPersonaKey;
  v13 = [v9 objectForKeyedSubscript:kMDMPersonaKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v9 objectForKeyedSubscript:v12];
  }

  else
  {
    v14 = 0;
  }

  v16 = kMCInstallProfileOptionManagingProfileIdentifier;
  v17 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionManagingProfileIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v18 = [v9 objectForKeyedSubscript:v16];

  if (!v18)
  {
LABEL_5:
    v15 = 0;
    goto LABEL_12;
  }

  v19 = +[ACAccountStore defaultStore];
  v20 = [v19 dmc_remoteManagementAccountForManagementProfileIdentifier:v18];

  v15 = [v20 identifier];

  v17 = v18;
LABEL_11:

LABEL_12:
  v21 = [(MCNewPayloadHandler *)self payload];
  v22 = [(MCGmailAccountPayloadHandler *)self accountDictionaryWithIsInstalledByMDM:v11 personaID:v14 rmAccountIdentifier:v15];
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
      [v21 setPersistentResourceID:v39];
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

    v25 = [v21 emailAddress];
    v26 = MCErrorArray();
    v27 = [NSError MCErrorWithDomain:MCGoogleErrorDomain code:47000 descriptionArray:v26 errorType:MCErrorTypeFatal, v25, 0, v37];
    v28 = v44[5];
    v44[5] = v27;
  }

  v31 = v44[5];
  if (v31)
  {
    v32 = _MCLogObjects[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [(MCNewPayloadHandler *)self payload];
      v34 = [v33 friendlyName];
      v35 = [v44[5] MCVerboseDescription];
      *buf = 138543618;
      v50 = v34;
      v51 = 2114;
      v52 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Could not install Google payload %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v43, 8);
  return v31 == 0;
}

- (BOOL)isInstalled
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 persistentResourceID];

  if (v3)
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
          if (v12 && ([v12 isEqualToString:v3] & 1) != 0)
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
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 persistentResourceID];

  if (v3)
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
          if (v14 && [v14 isEqualToString:v3])
          {
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v9);
    }

    v32 = v3;
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
    v3 = v32;
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
  {
    [(MCGmailAccountPayloadHandler *)self setSetAsideAccountDictionary:0];
  }

  else
  {
    [(MCGmailAccountPayloadHandler *)self _remove];
  }

  v5 = [(MCNewPayloadHandler *)self payload];
  [v5 setPersistentResourceID:0];
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 persistentResourceID];

  if (v4)
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
          if (v13 && [v13 isEqualToString:v4])
          {
            v17 = [v12 accountPropertyForKey:@"MCAccountIsManaged"];
            v16 = [v17 BOOLValue];

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
      v16 = 0;
LABEL_13:
      v6 = v19;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v18 = [(MCGmailAccountPayloadHandler *)self accountDictionaryWithIsInstalledByMDM:v16 personaID:v15 rmAccountIdentifier:v8];
    [(MCGmailAccountPayloadHandler *)self setSetAsideAccountDictionary:v18];

    [(MCGmailAccountPayloadHandler *)self _remove];
  }
}

- (void)unsetAside
{
  v3 = [(MCGmailAccountPayloadHandler *)self setAsideAccountDictionary];

  if (v3)
  {
    v5 = [(MCGmailAccountPayloadHandler *)self setAsideAccountDictionary];
    v4 = [(MCGmailAccountPayloadHandler *)self _installWithAccountDictionary:v5];
  }
}

@end