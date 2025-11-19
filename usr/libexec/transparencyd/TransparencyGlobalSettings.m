@interface TransparencyGlobalSettings
+ (BOOL)fetchDelayed:(double)a3 lastFetch:(id)a4 now:(id)a5;
- (BOOL)setupCloudKit;
- (TransparencyGlobalSettings)initWithContainer:(id)a3 dew:(id)a4 logger:(id)a5;
- (TransparencyGlobalSettingsProtocol)delegate;
- (id)fetchOperationGroup;
- (id)fuzzyTimeSinceLastUpdate;
- (void)fetchCloudData:(id)a3 updateField:(id)a4 complete:(id)a5;
- (void)fetchSettings:(id)a3 force:(BOOL)a4;
- (void)updateDewConfigurationWithData:(id)a3;
- (void)updateSFAConfigurationWithData:(id)a3;
@end

@implementation TransparencyGlobalSettings

- (TransparencyGlobalSettings)initWithContainer:(id)a3 dew:(id)a4 logger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = TransparencyGlobalSettings;
  v11 = [(TransparencyGlobalSettings *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyGlobalSettings *)v11 setLogger:v10];
    [(TransparencyGlobalSettings *)v12 setDew:v9];
    [(TransparencyGlobalSettings *)v12 setDelegate:v12];
    [(TransparencyGlobalSettings *)v12 setContainer:v8];
    objc_initWeak(&location, v12);
    v13 = [(TransparencyGlobalSettings *)v12 logger];
    v14 = SFAnalyticsSamplerIntervalOncePerReport;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000683A8;
    v17[3] = &unk_1003188E8;
    objc_copyWeak(&v18, &location);
    [v13 addMultiSamplerForName:@"TransparencyGlobalSettings" withTimeInterval:v17 block:v14];

    v15 = v12;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)fuzzyTimeSinceLastUpdate
{
  v2 = [(TransparencyGlobalSettings *)self logger];
  v3 = [v2 fuzzyTimeSinceDateKey:@"TransparencySettingsKey"];

  return v3;
}

- (BOOL)setupCloudKit
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TransparencyGlobalSettings *)v2 container];

  if (v3)
  {
    v4 = [(TransparencyGlobalSettings *)v2 publicCloudDatabase];

    if (v4)
    {
      LOBYTE(v3) = 0;
      LOBYTE(v5) = 1;
    }

    else
    {
      v3 = [(TransparencyGlobalSettings *)v2 container];
      v5 = [v3 publicCloudDatabase];
      [(TransparencyGlobalSettings *)v2 setPublicCloudDatabase:v5];

      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  objc_sync_exit(v2);

  return (v5 | v3) & 1;
}

+ (BOOL)fetchDelayed:(double)a3 lastFetch:(id)a4 now:(id)a5
{
  v7 = a5;
  v8 = [a4 dateByAddingTimeInterval:a3];
  v9 = v8;
  v10 = !v8 || [v8 compare:v7] != 1;

  return v10;
}

- (void)fetchSettings:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(TransparencyGlobalSettings *)self delegate];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100068A84;
  v27[4] = sub_100068A94;
  v28 = os_transaction_create();
  if (v6 && xpc_activity_should_defer(v6))
  {
    if (qword_10038BD70 != -1)
    {
      sub_10024A948();
    }

    v8 = qword_10038BD78;
    if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deferring fetchSettings", buf, 2u);
    }

    xpc_activity_set_state(v6, 3);
    goto LABEL_32;
  }

  if (v7)
  {
    if (a4)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v12 = os_variant_allows_internal_security_policies();
      if (v12)
      {
        v13 = 43200.0;
      }

      else
      {
        v13 = 561600.0;
      }

      if (v12)
      {
        v9 = @"TransparencyDewSettings";
      }

      else
      {
        v9 = @"TransparencyPublicDewSettings";
      }

      if (v12)
      {
        v10 = @"TransparencySFASettings";
      }

      else
      {
        v10 = @"TransparencyPublicSFASettings";
      }

      v14 = [(TransparencyGlobalSettings *)self logger];
      v15 = [v14 datePropertyForKey:@"TransparencySettingsKey"];

      v16 = objc_opt_class();
      v17 = +[NSDate date];
      LODWORD(v16) = [v16 fetchDelayed:v15 lastFetch:v17 now:v13];

      if (v16)
      {
        if (qword_10038BD70 != -1)
        {
          sub_10024A970();
        }

        v18 = qword_10038BD78;
        if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v13;
          *buf = 138412546;
          v32 = v15;
          v33 = 2048;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping fetch, not enough time has passed: %@ + %7.1f", buf, 0x16u);
        }

        goto LABEL_31;
      }
    }

    v20 = [(TransparencyGlobalSettings *)self logger];
    v21 = +[NSDate date];
    [v20 setDateProperty:v21 forKey:@"TransparencySettingsKey"];

    v30[0] = v10;
    v30[1] = v9;
    v15 = [NSArray arrayWithObjects:v30 count:2];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100068B68;
    v23[3] = &unk_10031C518;
    objc_copyWeak(&v26, &location);
    v24 = v10;
    v25 = v9;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100068DA0;
    v22[3] = &unk_10031C560;
    v22[4] = v27;
    [v7 fetchCloudData:v15 updateField:v23 complete:v22];

    objc_destroyWeak(&v26);
LABEL_31:

    goto LABEL_32;
  }

  if (qword_10038BD70 != -1)
  {
    sub_10024A998();
  }

  v11 = qword_10038BD78;
  if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Deferring fetchSettings, no delegate", buf, 2u);
  }

LABEL_32:
  _Block_object_dispose(v27, 8);

  objc_destroyWeak(&location);
}

- (id)fetchOperationGroup
{
  v2 = objc_alloc_init(CKOperationGroup);
  [v2 setExpectedSendSize:1];
  [v2 setExpectedReceiveSize:1];
  [v2 setName:@"KTGlobalSetting"];

  return v2;
}

- (void)fetchCloudData:(id)a3 updateField:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(TransparencyGlobalSettings *)self setupCloudKit])
  {
    v24 = v9;
    v11 = +[NSMutableArray array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[CKRecordID alloc] initWithRecordName:*(*(&v30 + 1) + 8 * i)];
          if (!v17)
          {
            if (qword_10038BD70 != -1)
            {
              sub_10024AA24();
            }

            v9 = v24;
            v23 = qword_10038BD78;
            if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create CKRecord", buf, 2u);
            }

            v10[2](v10, 0);
            goto LABEL_17;
          }

          v18 = v17;
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v12 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v11];
    v19 = [(TransparencyGlobalSettings *)self fetchOperationGroup];
    [v12 setGroup:v19];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000692D4;
    v27[3] = &unk_10031C5E8;
    v9 = v24;
    v28 = v24;
    [v12 setPerRecordCompletionBlock:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006952C;
    v25[3] = &unk_10031BCC0;
    v26 = v10;
    v20 = [NSBlockOperation blockOperationWithBlock:v25];
    [v20 addDependency:v12];
    v21 = +[NSOperationQueue mainQueue];
    [v21 addOperation:v20];

    v22 = [(TransparencyGlobalSettings *)self publicCloudDatabase];
    [v22 addOperation:v12];

LABEL_17:
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-1001 description:@"time out"];
    (v10)[2](v10, v11);
  }
}

- (void)updateSFAConfigurationWithData:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyGlobalSettings *)self logger];
  [v5 updateCollectionConfigurationWithData:v4];
}

- (void)updateDewConfigurationWithData:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyGlobalSettings *)self dew];
  [v5 updateDewConfigurationWithData:v4];
}

- (TransparencyGlobalSettingsProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end