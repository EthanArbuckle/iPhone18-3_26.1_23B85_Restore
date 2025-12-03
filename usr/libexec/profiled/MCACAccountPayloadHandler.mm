@interface MCACAccountPayloadHandler
- (id)MCACAccountIdentifier;
- (id)_destructiveDataclassActionsForRemovalOfAccount:(id)account;
- (id)_installedDAAccount;
- (id)_installedSetAsideACAccount;
- (id)installedACAccounts;
- (id)installedAccountWithIdentifier:(id)identifier;
- (void)_synchronouslyDeleteAccountAndAssociatedData:(id)data timeout:(double)timeout completion:(id)completion;
- (void)markIfUpdatingOverInstalledAccount:(id)account;
@end

@implementation MCACAccountPayloadHandler

- (id)installedAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MCACAccountPayloadHandler *)self accountTypeIdentifiers];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v26 + 1) + 8 * v5);
      v7 = sharedDAAccountStore();
      v8 = [v7 accountTypeWithAccountTypeIdentifier:v6];

      v9 = sharedDAAccountStore();
      v10 = [v9 accountsWithAccountType:v8];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        v13 = *v23;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            identifier = [v15 identifier];
            v17 = [identifier isEqualToString:identifierCopy];

            if (v17)
            {
              v12 = v15;
              goto LABEL_16;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      if (v12)
      {
        break;
      }

      if (++v5 == v21)
      {
        v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v21)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v12 = 0;
  }

  return v12;
}

- (void)markIfUpdatingOverInstalledAccount:(id)account
{
  accountCopy = account;
  v4 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v4 userMode];

  v6 = accountCopy;
  if (userMode == 1)
  {
    identifier = [accountCopy identifier];
    v8 = [(MCACAccountPayloadHandler *)self installedAccountWithIdentifier:identifier];

    if (v8)
    {
      [(MCACAccountPayloadHandler *)self setUpdatedOverInstalledAccount:1];
    }

    v6 = accountCopy;
  }
}

- (id)_destructiveDataclassActionsForRemovalOfAccount:(id)account
{
  accountCopy = account;
  v4 = sharedDAAccountStore();
  v5 = [v4 dataclassActionsForAccountDeletion:accountCopy];

  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "ACAccountStore returned the following actions for removal: %{public}@", buf, 0xCu);
  }

  if (v5)
  {
    v25 = accountCopy;
    v7 = objc_alloc_init(NSMutableDictionary);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [v5 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
    v28 = v7;
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v26 = *v34;
      v27 = allKeys;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [v5 objectForKeyedSubscript:v13];
          if ([v14 count] == 1)
          {
            lastObject = [v14 lastObject];
            [v7 setObject:lastObject forKey:v13];
          }

          else if ([v14 count] < 2)
          {
            v23 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v40 = v13;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to get possible actions for dataclass %{public}@ during account removal.", buf, 0xCu);
            }
          }

          else
          {
            v16 = v5;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v17 = v14;
            v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v30;
              while (2)
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v30 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v29 + 1) + 8 * j);
                  if ([v22 isDestructive])
                  {
                    v7 = v28;
                    [v28 setObject:v22 forKey:v13];

                    v5 = v16;
                    goto LABEL_24;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v16;
            v7 = v28;
LABEL_24:
            v11 = v26;
            allKeys = v27;
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v10);
    }

    accountCopy = v25;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)_synchronouslyDeleteAccountAndAssociatedData:(id)data timeout:(double)timeout completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = [(MCACAccountPayloadHandler *)self _destructiveDataclassActionsForRemovalOfAccount:dataCopy];
  identifier = [dataCopy identifier];
  v12 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = identifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting to remove account with identifier: %{public}@", buf, 0xCu);
  }

  v13 = dispatch_semaphore_create(0);
  v14 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F414;
  block[3] = &unk_10011B8F0;
  v15 = dataCopy;
  v23 = v15;
  v16 = v10;
  v24 = v16;
  v17 = identifier;
  v25 = v17;
  v18 = completionCopy;
  v27 = v18;
  v19 = v13;
  v26 = v19;
  dispatch_async(v14, block);

  v20 = dispatch_time(0, (timeout * 1000000000.0));
  if (dispatch_semaphore_wait(v19, v20))
  {
    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Timed out waiting on removing account with identifier: %{public}@", buf, 0xCu);
    }
  }
}

- (id)_installedDAAccount
{
  selfCopy = self;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(MCACAccountPayloadHandler *)self accountTypeIdentifiers];
  v29 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v29)
  {
LABEL_29:

    v24 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  v28 = *v49;
  v32 = selfCopy;
LABEL_3:
  v4 = 0;
  while (2)
  {
    if (*v49 != v28)
    {
      objc_enumerationMutation(obj);
    }

    v5 = *(*(&v48 + 1) + 8 * v4);
    v6 = sharedDAAccountStore();
    v7 = [v6 accountTypeWithAccountTypeIdentifier:v5];

    v8 = sharedDAAccountStore();
    v9 = [v8 accountsWithAccountType:v7];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = v9;
    v35 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v35)
    {
      v24 = 0;
      goto LABEL_26;
    }

    v30 = v7;
    v31 = v4;
    v10 = *v45;
    while (2)
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v33);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        mcProfileUUID = [v12 mcProfileUUID];
        payload = [(MCNewPayloadHandler *)selfCopy payload];
        profile = [payload profile];
        uUID = [profile UUID];
        v41 = [mcProfileUUID isEqualToString:?];
        if (v41)
        {
          mcPayloadUUID = [v12 mcPayloadUUID];
          payload2 = [(MCNewPayloadHandler *)selfCopy payload];
          uUID2 = [payload2 UUID];
          if ([mcPayloadUUID isEqualToString:?])
          {
            v42 = 1;
LABEL_18:

            goto LABEL_19;
          }
        }

        v38 = profile;
        v39 = payload;
        v40 = mcProfileUUID;
        mcConfigurationProfileIdentifier = [v12 mcConfigurationProfileIdentifier];
        payload3 = [(MCNewPayloadHandler *)selfCopy payload];
        profile2 = [payload3 profile];
        identifier = [profile2 identifier];
        v20 = mcConfigurationProfileIdentifier;
        if ([mcConfigurationProfileIdentifier isEqualToString:identifier])
        {
          [v12 mcAccountIdentifier];
          v21 = v34 = mcPayloadUUID;
          payload4 = [(MCNewPayloadHandler *)selfCopy payload];
          identifier2 = [payload4 identifier];
          v42 = [v21 isEqualToString:identifier2];

          selfCopy = v32;
          mcPayloadUUID = v34;
        }

        else
        {
          v42 = 0;
        }

        mcProfileUUID = v40;
        profile = v38;
        payload = v39;
        if (v41)
        {
          goto LABEL_18;
        }

LABEL_19:

        if (v42)
        {
          v24 = v12;
          goto LABEL_24;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }

    v24 = 0;
LABEL_24:
    v7 = v30;
    v4 = v31;
LABEL_26:

    if (!v24)
    {
      if (++v4 != v29)
      {
        continue;
      }

      v29 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v29)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    break;
  }

  v25 = [DAAccount daAccountSubclassWithBackingAccountInfo:v24];
LABEL_31:

  return v25;
}

- (id)MCACAccountIdentifier
{
  unhashedAccountIdentifier = [(MCACAccountPayloadHandler *)self unhashedAccountIdentifier];
  mCHashedIdentifier = [unhashedAccountIdentifier MCHashedIdentifier];

  return mCHashedIdentifier;
}

- (id)installedACAccounts
{
  v34 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(MCACAccountPayloadHandler *)self accountTypeIdentifiers];
  v30 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v30)
  {
    v29 = *v51;
    do
    {
      v4 = 0;
      do
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = *(*(&v50 + 1) + 8 * v4);
        v6 = sharedDAAccountStore();
        v7 = [v6 accountTypeWithAccountTypeIdentifier:v5];

        v8 = sharedDAAccountStore();
        v31 = v7;
        v9 = [v8 accountsWithAccountType:v7];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v35 = v9;
        v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v37)
        {
          v10 = *v47;
          v33 = *v47;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v47 != v10)
              {
                objc_enumerationMutation(v35);
              }

              v12 = *(*(&v46 + 1) + 8 * i);
              mcProfileUUID = [v12 mcProfileUUID];
              payload = [(MCNewPayloadHandler *)self payload];
              profile = [payload profile];
              uUID = [profile UUID];
              v43 = [mcProfileUUID isEqualToString:?];
              if (v43)
              {
                mcPayloadUUID = [v12 mcPayloadUUID];
                payload2 = [(MCNewPayloadHandler *)self payload];
                [payload2 UUID];
                v39 = v38 = mcPayloadUUID;
                if ([mcPayloadUUID isEqualToString:?])
                {
                  v44 = 1;
LABEL_18:

                  goto LABEL_19;
                }
              }

              v40 = profile;
              v41 = payload;
              v42 = mcProfileUUID;
              mcConfigurationProfileIdentifier = [v12 mcConfigurationProfileIdentifier];
              payload3 = [(MCNewPayloadHandler *)self payload];
              profile2 = [payload3 profile];
              identifier = [profile2 identifier];
              v21 = mcConfigurationProfileIdentifier;
              if ([mcConfigurationProfileIdentifier isEqualToString:identifier])
              {
                [v12 mcAccountIdentifier];
                v22 = v36 = payload2;
                payload4 = [(MCNewPayloadHandler *)self payload];
                [payload4 identifier];
                v25 = v24 = self;
                v44 = [v22 isEqualToString:v25];

                self = v24;
                v10 = v33;

                payload2 = v36;
              }

              else
              {
                v44 = 0;
              }

              mcProfileUUID = v42;
              profile = v40;
              payload = v41;
              if (v43)
              {
                goto LABEL_18;
              }

LABEL_19:

              if (v44)
              {
                [v34 addObject:v12];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v37);
        }

        v4 = v32 + 1;
      }

      while ((v32 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v30);
  }

  v26 = [v34 copy];

  return v26;
}

- (id)_installedSetAsideACAccount
{
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  userMode = [v3 userMode];

  setAsideAccount = [(MCACAccountPayloadHandler *)self setAsideAccount];
  mcAccountIdentifier = [setAsideAccount mcAccountIdentifier];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(MCACAccountPayloadHandler *)self accountTypeIdentifiers];
  v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v29)
  {
    v28 = *v44;
    selfCopy = self;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v44 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v43 + 1) + 8 * v5);
      v7 = sharedDAAccountStore();
      v8 = [v7 accountTypeWithAccountTypeIdentifier:v6];

      v9 = sharedDAAccountStore();
      v10 = [v9 accountsWithAccountType:v8];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v36 = v10;
      v11 = [v36 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v11)
      {
        v30 = v8;
        v31 = v5;
        v12 = *v40;
        v34 = *v40;
        do
        {
          v13 = 0;
          v35 = v11;
          do
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(v36);
            }

            v14 = *(*(&v39 + 1) + 8 * v13);
            mcProfileUUID = [v14 mcProfileUUID];
            payload = [(MCNewPayloadHandler *)self payload];
            profile = [payload profile];
            uUID = [profile UUID];
            if ([mcProfileUUID isEqualToString:uUID])
            {
              mcPayloadUUID = [v14 mcPayloadUUID];
              payload2 = [(MCNewPayloadHandler *)self payload];
              uUID2 = [payload2 UUID];
              v38 = mcPayloadUUID;
              v22 = [mcPayloadUUID isEqualToString:uUID2];
              if (v22)
              {
                v23 = userMode == 1;
              }

              else
              {
                v23 = 0;
              }

              if (v23 && mcAccountIdentifier != 0)
              {
                mcAccountIdentifier2 = [v14 mcAccountIdentifier];
                v22 = [mcAccountIdentifier2 isEqualToString:mcAccountIdentifier];

                self = selfCopy;
              }

              v12 = v34;
              v11 = v35;
              if (v22)
              {
                v11 = v14;
                goto LABEL_25;
              }
            }

            else
            {
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v36 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v11);
LABEL_25:
        v8 = v30;
        v5 = v31;
      }

      if (v11)
      {
        break;
      }

      if (++v5 == v29)
      {
        v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v11 = 0;
  }

  return v11;
}

@end