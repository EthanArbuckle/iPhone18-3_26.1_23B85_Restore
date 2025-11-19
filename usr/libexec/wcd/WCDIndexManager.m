@interface WCDIndexManager
+ (id)sharedManager;
- (WCDIndexManager)init;
- (id)contentIndexWithApplication:(id)a3 type:(id)a4 pairingID:(id)a5;
- (void)clearCacheForApplication:(id)a3;
@end

@implementation WCDIndexManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E828;
  block[3] = &unk_100048E08;
  block[4] = a1;
  if (qword_100054CA8 != -1)
  {
    dispatch_once(&qword_100054CA8, block);
  }

  v2 = qword_100054CA0;

  return v2;
}

- (WCDIndexManager)init
{
  v6.receiver = self;
  v6.super_class = WCDIndexManager;
  v2 = [(WCDIndexManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    indexCache = v2->_indexCache;
    v2->_indexCache = v3;
  }

  return v2;
}

- (id)contentIndexWithApplication:(id)a3 type:(id)a4 pairingID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WCDIndexManager *)self _bundleIDForApplication:v8];
  v12 = [(WCDIndexManager *)self indexKeyWithBundleID:v11 type:v9 pairingID:v10];
  v13 = [(WCDIndexManager *)self indexCache];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (!v14)
  {
    v15 = +[WCDSystemMonitor sharedSystemMonitor];
    v16 = [v15 dataContainerURLForApplicationInfo:v8];

    if ([v9 isEqual:@"file"])
    {
      v17 = WCSessionFilesURLInContainer();
    }

    else if ([v9 isEqual:@"file_results"])
    {
      v17 = WCFileTransfersURLInContainer();
    }

    else if ([v9 isEqual:@"user_info"])
    {
      v17 = WCTransferredUserInfoInboxURLInContainer();
    }

    else
    {
      if (![v9 isEqual:@"user_info_results"])
      {
        goto LABEL_12;
      }

      v17 = WCUserInfoTransfersInContainer();
    }

    v18 = v17;
    if (v17)
    {
      v14 = [[WCContentIndex alloc] initWithContainingFolder:v17];
      v19 = [(WCDIndexManager *)self indexCache];
      [v19 setObject:v14 forKeyedSubscript:v12];

LABEL_13:
      goto LABEL_14;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v14;
}

- (void)clearCacheForApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WCDIndexManager *)self _bundleIDForApplication:v4];
    if (v5)
    {
      v29 = v4;
      v6 = objc_opt_new();
      v7 = [(WCDIndexManager *)self indexCache];
      v8 = [v7 allKeys];
      v9 = [v8 copy];

      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = WCCompactStringFromCollection();
        *buf = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ from indexCache with keys: %{public}@", buf, 0x16u);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            if ([v17 hasPrefix:v5])
            {
              [v6 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      v18 = wc_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = WCCompactStringFromCollection();
        *buf = 138543362;
        v41 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "removing %{public}@", buf, 0xCu);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = v6;
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v30 + 1) + 8 * j);
            v26 = [(WCDIndexManager *)self indexCache];
            v27 = [v26 objectForKeyedSubscript:v25];

            [v27 invalidate];
            v28 = [(WCDIndexManager *)self indexCache];
            [v28 removeObjectForKey:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v22);
      }

      v4 = v29;
    }

    else
    {
      v20 = wc_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10002A564(v4, v20);
      }
    }
  }

  else
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002A5DC(v5);
    }
  }
}

@end