@interface TransparencyGlobalSettings
+ (BOOL)fetchDelayed:(double)delayed lastFetch:(id)fetch now:(id)now;
- (BOOL)setupCloudKit;
- (TransparencyGlobalSettings)initWithContainer:(id)container dew:(id)dew logger:(id)logger;
- (TransparencyGlobalSettingsProtocol)delegate;
- (id)fetchOperationGroup;
- (id)fuzzyTimeSinceLastUpdate;
- (void)fetchCloudData:(id)data updateField:(id)field complete:(id)complete;
- (void)fetchSettings:(id)settings force:(BOOL)force;
- (void)updateDewConfigurationWithData:(id)data;
- (void)updateSFAConfigurationWithData:(id)data;
@end

@implementation TransparencyGlobalSettings

- (TransparencyGlobalSettings)initWithContainer:(id)container dew:(id)dew logger:(id)logger
{
  containerCopy = container;
  dewCopy = dew;
  loggerCopy = logger;
  v20.receiver = self;
  v20.super_class = TransparencyGlobalSettings;
  v11 = [(TransparencyGlobalSettings *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyGlobalSettings *)v11 setLogger:loggerCopy];
    [(TransparencyGlobalSettings *)v12 setDew:dewCopy];
    [(TransparencyGlobalSettings *)v12 setDelegate:v12];
    [(TransparencyGlobalSettings *)v12 setContainer:containerCopy];
    objc_initWeak(&location, v12);
    logger = [(TransparencyGlobalSettings *)v12 logger];
    v14 = SFAnalyticsSamplerIntervalOncePerReport;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000683A8;
    v17[3] = &unk_1003188E8;
    objc_copyWeak(&v18, &location);
    [logger addMultiSamplerForName:@"TransparencyGlobalSettings" withTimeInterval:v17 block:v14];

    v15 = v12;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)fuzzyTimeSinceLastUpdate
{
  logger = [(TransparencyGlobalSettings *)self logger];
  v3 = [logger fuzzyTimeSinceDateKey:@"TransparencySettingsKey"];

  return v3;
}

- (BOOL)setupCloudKit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  container = [(TransparencyGlobalSettings *)selfCopy container];

  if (container)
  {
    publicCloudDatabase = [(TransparencyGlobalSettings *)selfCopy publicCloudDatabase];

    if (publicCloudDatabase)
    {
      LOBYTE(container) = 0;
      LOBYTE(publicCloudDatabase2) = 1;
    }

    else
    {
      container = [(TransparencyGlobalSettings *)selfCopy container];
      publicCloudDatabase2 = [container publicCloudDatabase];
      [(TransparencyGlobalSettings *)selfCopy setPublicCloudDatabase:publicCloudDatabase2];

      LOBYTE(container) = 1;
    }
  }

  else
  {
    LOBYTE(publicCloudDatabase2) = 0;
  }

  objc_sync_exit(selfCopy);

  return (publicCloudDatabase2 | container) & 1;
}

+ (BOOL)fetchDelayed:(double)delayed lastFetch:(id)fetch now:(id)now
{
  nowCopy = now;
  v8 = [fetch dateByAddingTimeInterval:delayed];
  v9 = v8;
  v10 = !v8 || [v8 compare:nowCopy] != 1;

  return v10;
}

- (void)fetchSettings:(id)settings force:(BOOL)force
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  delegate = [(TransparencyGlobalSettings *)self delegate];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100068A84;
  v27[4] = sub_100068A94;
  v28 = os_transaction_create();
  if (settingsCopy && xpc_activity_should_defer(settingsCopy))
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

    xpc_activity_set_state(settingsCopy, 3);
    goto LABEL_32;
  }

  if (delegate)
  {
    if (force)
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

      logger = [(TransparencyGlobalSettings *)self logger];
      v15 = [logger datePropertyForKey:@"TransparencySettingsKey"];

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

    logger2 = [(TransparencyGlobalSettings *)self logger];
    v21 = +[NSDate date];
    [logger2 setDateProperty:v21 forKey:@"TransparencySettingsKey"];

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
    [delegate fetchCloudData:v15 updateField:v23 complete:v22];

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

- (void)fetchCloudData:(id)data updateField:(id)field complete:(id)complete
{
  dataCopy = data;
  fieldCopy = field;
  completeCopy = complete;
  if ([(TransparencyGlobalSettings *)self setupCloudKit])
  {
    v24 = fieldCopy;
    v11 = +[NSMutableArray array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = dataCopy;
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

            fieldCopy = v24;
            v23 = qword_10038BD78;
            if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create CKRecord", buf, 2u);
            }

            completeCopy[2](completeCopy, 0);
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
    fetchOperationGroup = [(TransparencyGlobalSettings *)self fetchOperationGroup];
    [v12 setGroup:fetchOperationGroup];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000692D4;
    v27[3] = &unk_10031C5E8;
    fieldCopy = v24;
    v28 = v24;
    [v12 setPerRecordCompletionBlock:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006952C;
    v25[3] = &unk_10031BCC0;
    v26 = completeCopy;
    v20 = [NSBlockOperation blockOperationWithBlock:v25];
    [v20 addDependency:v12];
    v21 = +[NSOperationQueue mainQueue];
    [v21 addOperation:v20];

    publicCloudDatabase = [(TransparencyGlobalSettings *)self publicCloudDatabase];
    [publicCloudDatabase addOperation:v12];

LABEL_17:
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-1001 description:@"time out"];
    (completeCopy)[2](completeCopy, v11);
  }
}

- (void)updateSFAConfigurationWithData:(id)data
{
  dataCopy = data;
  logger = [(TransparencyGlobalSettings *)self logger];
  [logger updateCollectionConfigurationWithData:dataCopy];
}

- (void)updateDewConfigurationWithData:(id)data
{
  dataCopy = data;
  v5 = [(TransparencyGlobalSettings *)self dew];
  [v5 updateDewConfigurationWithData:dataCopy];
}

- (TransparencyGlobalSettingsProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end