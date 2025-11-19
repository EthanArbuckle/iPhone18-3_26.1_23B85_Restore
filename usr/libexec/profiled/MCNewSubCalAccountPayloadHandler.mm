@interface MCNewSubCalAccountPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (id)_accountFromPayload;
- (id)_reallyInstallInstaller:(id)a3 isInstalledByMDM:(BOOL)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6;
- (id)accountTypeIdentifiers;
- (id)unhashedAccountIdentifier;
- (void)remove;
- (void)setAsideWithInstaller:(id)a3;
- (void)unsetAside;
@end

@implementation MCNewSubCalAccountPayloadHandler

- (id)unhashedAccountIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 hostname];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"subcal|%@", v3];
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

- (id)_accountFromPayload
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = sharedDAAccountStore();
  v5 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierSubscribedCalendar];

  v6 = [[ACAccount alloc] initWithAccountType:v5];
  [v6 setManagingOwnerIdentifier:kMCAccountManagingOwnerIdentifier];
  v7 = [v3 friendlyName];
  [v6 setManagingSourceName:v7];

  v8 = +[MDMCloudConfiguration sharedConfiguration];
  v9 = [v8 userMode];

  if (v9 == 1)
  {
    v10 = [(MCACAccountPayloadHandler *)self MCACAccountIdentifier];
    if (v10)
    {
      v11 = [v6 identifier];
      [v6 setAccountProperty:v11 forKey:@"MCAccountIdentifer"];

      [v6 setIdentifier:v10];
    }

    v12 = sharedDAAccountStore();
    v13 = [v6 identifier];
    v14 = [v12 accountWithIdentifier:v13];

    if (v14)
    {
      v15 = [v14 objectID];
      [v6 performSelector:"_setObjectID:" withObject:v15];
    }
  }

  v16 = [v5 supportedDataclasses];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(v16);
        }

        [v6 setProvisioned:1 forDataclass:*(*(&v49 + 1) + 8 * i)];
      }

      v18 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v18);
  }

  v21 = [DAAccount daAccountSubclassWithBackingAccountInfo:v6];
  v22 = v21;
  if (v21)
  {
    [v21 setEnabled:1 forDADataclass:4];
    v23 = [v3 password];
    v24 = &__kCFBooleanTrue;
    if (!v23)
    {
      v24 = &__kCFBooleanFalse;
    }

    v25 = v24;

    v26 = [v22 backingAccountInfo];
    [v26 setAccountProperty:v25 forKey:ACAccountPropertyShouldNeverUseSyncableCredential];

    v27 = [v3 accountDescription];
    if (v27)
    {
      [v22 setAccountDescription:v27];
    }

    else
    {
      v28 = [v3 hostname];
      [v22 setAccountDescription:v28];
    }

    v29 = [v3 hostname];
    [v22 setHost:v29];

    v30 = [v3 username];
    [v22 setUsername:v30];

    v31 = [v3 password];
    [v22 setPassword:v31];

    [v22 setUseSSL:{objc_msgSend(v3, "useSSL")}];
    v32 = [v22 backingAccountInfo];
    v33 = [(MCNewPayloadHandler *)self payload];
    v34 = [v33 UUID];
    [v32 setMcPayloadUUID:v34];

    v35 = [v22 backingAccountInfo];
    v36 = [(MCNewPayloadHandler *)self payload];
    v37 = [v36 profile];
    v38 = [v37 UUID];
    [v35 setMcProfileUUID:v38];

    v39 = [(MCNewPayloadHandler *)self payload];
    v40 = [v39 profile];
    v41 = [v40 identifier];

    if (v41)
    {
      v42 = [v22 backingAccountInfo];
      [v42 setMcConfigurationProfileIdentifier:v41];
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

    v44 = [v22 backingAccountInfo];
    v45 = [v44 identifier];
    v46 = [(MCNewPayloadHandler *)self payload];
    [v46 setAcAccountIdentifier:v45];
  }

  return v22;
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
    v15 = [(MCNewSubCalAccountPayloadHandler *)self _accountFromPayload];
    v16 = v15;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100065078;
    v56 = sub_100065088;
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
      v49 = sub_100065078;
      v50 = sub_100065088;
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
      v41[2] = sub_100065090;
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
        v37[2] = sub_1000650AC;
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
        v33 = [NSError MCErrorWithDomain:MCSubCalErrorDomain code:16002 descriptionArray:v32 errorType:MCErrorTypeFatal, 0];
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
  v22 = [(MCNewSubCalAccountPayloadHandler *)self _reallyInstallInstaller:v9 isInstalledByMDM:v12 personaID:v15 rmAccountIdentifier:v16];
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
  v4 = ACAccountTypeIdentifierSubscribedCalendar;
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
  v10.super_class = MCNewSubCalAccountPayloadHandler;
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
        v15[2] = sub_1000657C0;
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