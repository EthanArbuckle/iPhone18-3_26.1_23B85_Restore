@interface MCACAccountPayloadHandler
- (id)MCACAccountIdentifier;
- (id)_destructiveDataclassActionsForRemovalOfAccount:(id)a3;
- (id)_installedDAAccount;
- (id)_installedSetAsideACAccount;
- (id)installedACAccounts;
- (id)installedAccountWithIdentifier:(id)a3;
- (void)_synchronouslyDeleteAccountAndAssociatedData:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)markIfUpdatingOverInstalledAccount:(id)a3;
@end

@implementation MCACAccountPayloadHandler

- (id)installedAccountWithIdentifier:(id)a3
{
  v4 = a3;
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
            v16 = [v15 identifier];
            v17 = [v16 isEqualToString:v4];

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

- (void)markIfUpdatingOverInstalledAccount:(id)a3
{
  v9 = a3;
  v4 = +[MDMCloudConfiguration sharedConfiguration];
  v5 = [v4 userMode];

  v6 = v9;
  if (v5 == 1)
  {
    v7 = [v9 identifier];
    v8 = [(MCACAccountPayloadHandler *)self installedAccountWithIdentifier:v7];

    if (v8)
    {
      [(MCACAccountPayloadHandler *)self setUpdatedOverInstalledAccount:1];
    }

    v6 = v9;
  }
}

- (id)_destructiveDataclassActionsForRemovalOfAccount:(id)a3
{
  v3 = a3;
  v4 = sharedDAAccountStore();
  v5 = [v4 dataclassActionsForAccountDeletion:v3];

  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "ACAccountStore returned the following actions for removal: %{public}@", buf, 0xCu);
  }

  if (v5)
  {
    v25 = v3;
    v7 = objc_alloc_init(NSMutableDictionary);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [v5 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    v28 = v7;
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v26 = *v34;
      v27 = v8;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [v5 objectForKeyedSubscript:v13];
          if ([v14 count] == 1)
          {
            v15 = [v14 lastObject];
            [v7 setObject:v15 forKey:v13];
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
            v8 = v27;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v10);
    }

    v3 = v25;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)_synchronouslyDeleteAccountAndAssociatedData:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MCACAccountPayloadHandler *)self _destructiveDataclassActionsForRemovalOfAccount:v8];
  v11 = [v8 identifier];
  v12 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting to remove account with identifier: %{public}@", buf, 0xCu);
  }

  v13 = dispatch_semaphore_create(0);
  v14 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F414;
  block[3] = &unk_10011B8F0;
  v15 = v8;
  v23 = v15;
  v16 = v10;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  v18 = v9;
  v27 = v18;
  v19 = v13;
  v26 = v19;
  dispatch_async(v14, block);

  v20 = dispatch_time(0, (a4 * 1000000000.0));
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
  v3 = self;
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
  v32 = v3;
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
        v13 = [v12 mcProfileUUID];
        v14 = [(MCNewPayloadHandler *)v3 payload];
        v15 = [v14 profile];
        v43 = [v15 UUID];
        v41 = [v13 isEqualToString:?];
        if (v41)
        {
          v2 = [v12 mcPayloadUUID];
          v37 = [(MCNewPayloadHandler *)v3 payload];
          v36 = [v37 UUID];
          if ([v2 isEqualToString:?])
          {
            v42 = 1;
LABEL_18:

            goto LABEL_19;
          }
        }

        v38 = v15;
        v39 = v14;
        v40 = v13;
        v16 = [v12 mcConfigurationProfileIdentifier];
        v17 = [(MCNewPayloadHandler *)v3 payload];
        v18 = [v17 profile];
        v19 = [v18 identifier];
        v20 = v16;
        if ([v16 isEqualToString:v19])
        {
          [v12 mcAccountIdentifier];
          v21 = v34 = v2;
          v22 = [(MCNewPayloadHandler *)v3 payload];
          v23 = [v22 identifier];
          v42 = [v21 isEqualToString:v23];

          v3 = v32;
          v2 = v34;
        }

        else
        {
          v42 = 0;
        }

        v13 = v40;
        v15 = v38;
        v14 = v39;
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
  v2 = [(MCACAccountPayloadHandler *)self unhashedAccountIdentifier];
  v3 = [v2 MCHashedIdentifier];

  return v3;
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
              v13 = [v12 mcProfileUUID];
              v14 = [(MCNewPayloadHandler *)self payload];
              v15 = [v14 profile];
              v45 = [v15 UUID];
              v43 = [v13 isEqualToString:?];
              if (v43)
              {
                v16 = [v12 mcPayloadUUID];
                v2 = [(MCNewPayloadHandler *)self payload];
                [v2 UUID];
                v39 = v38 = v16;
                if ([v16 isEqualToString:?])
                {
                  v44 = 1;
LABEL_18:

                  goto LABEL_19;
                }
              }

              v40 = v15;
              v41 = v14;
              v42 = v13;
              v17 = [v12 mcConfigurationProfileIdentifier];
              v18 = [(MCNewPayloadHandler *)self payload];
              v19 = [v18 profile];
              v20 = [v19 identifier];
              v21 = v17;
              if ([v17 isEqualToString:v20])
              {
                [v12 mcAccountIdentifier];
                v22 = v36 = v2;
                v23 = [(MCNewPayloadHandler *)self payload];
                [v23 identifier];
                v25 = v24 = self;
                v44 = [v22 isEqualToString:v25];

                self = v24;
                v10 = v33;

                v2 = v36;
              }

              else
              {
                v44 = 0;
              }

              v13 = v42;
              v15 = v40;
              v14 = v41;
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
  v33 = [v3 userMode];

  v4 = [(MCACAccountPayloadHandler *)self setAsideAccount];
  v37 = [v4 mcAccountIdentifier];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(MCACAccountPayloadHandler *)self accountTypeIdentifiers];
  v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v29)
  {
    v28 = *v44;
    v32 = self;
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
            v15 = [v14 mcProfileUUID];
            v16 = [(MCNewPayloadHandler *)self payload];
            v17 = [v16 profile];
            v18 = [v17 UUID];
            if ([v15 isEqualToString:v18])
            {
              v19 = [v14 mcPayloadUUID];
              v20 = [(MCNewPayloadHandler *)self payload];
              v21 = [v20 UUID];
              v38 = v19;
              v22 = [v19 isEqualToString:v21];
              if (v22)
              {
                v23 = v33 == 1;
              }

              else
              {
                v23 = 0;
              }

              if (v23 && v37 != 0)
              {
                v25 = [v14 mcAccountIdentifier];
                v22 = [v25 isEqualToString:v37];

                self = v32;
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