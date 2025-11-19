@interface StartupRegisterManager
+ (id)sharedInstance;
- (BOOL)shouldForceRegisterOnStartup;
- (StartupRegisterManager)init;
- (StartupRegisterManager)initWithDict:(id)a3;
- (id)_descriptionForEvent:(int64_t)a3;
- (id)description;
- (id)infoDictForTesting;
- (void)_clearAllInfo;
- (void)_clearQCPendingEpoch;
- (void)_removeInfoForKey:(id)a3;
- (void)_saveInfo;
- (void)_setInfo:(id)a3 forKey:(id)a4;
- (void)eventDidOccur:(int64_t)a3;
@end

@implementation StartupRegisterManager

+ (id)sharedInstance
{
  if (qword_100070330 != -1)
  {
    sub_100038A90();
  }

  v3 = qword_100070328;

  return v3;
}

- (StartupRegisterManager)init
{
  v3 = [FMPreferencesUtil objectForKey:@"startupRegisterInfo" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  v4 = [(StartupRegisterManager *)self initWithDict:v3];

  return v4;
}

- (StartupRegisterManager)initWithDict:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = StartupRegisterManager;
  v5 = [(StartupRegisterManager *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.icloud.fmflocatord.startup_reg.mod_queue", v6);
    [(StartupRegisterManager *)v5 setInfoChangeQueue:v7];

    if (v4)
    {
      v8 = [v4 mutableCopy];
    }

    else
    {
      v8 = +[NSMutableDictionary dictionary];
    }

    v9 = v8;
    [(StartupRegisterManager *)v5 setInfo:v8];

    v10 = [(StartupRegisterManager *)v5 info];
    v11 = [v10 copy];
    [(StartupRegisterManager *)v5 setInfoAtStartup:v11];
  }

  return v5;
}

- (id)infoDictForTesting
{
  v2 = [(StartupRegisterManager *)self info];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)shouldForceRegisterOnStartup
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(StartupRegisterManager *)self infoChangeQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023990;
  v5[3] = &unk_10005E340;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)eventDidOccur:(int64_t)a3
{
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(StartupRegisterManager *)self fm_logID];
    v7 = [(StartupRegisterManager *)self _descriptionForEvent:a3];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Event occurred : %@", &v12, 0x16u);
  }

  if (a3 > 5)
  {
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8:
          v8 = @"commandPendingEpoch";
          break;
        case 9:
          +[NSDate timeIntervalSinceReferenceDate];
          v10 = [NSNumber numberWithDouble:?];
          v11 = @"ackPendingEpoch";
          goto LABEL_22;
        case 10:
          v8 = @"ackPendingEpoch";
          break;
        default:
          return;
      }

      [(StartupRegisterManager *)self _removeInfoForKey:v8];
      return;
    }

    if (a3 != 6)
    {
      [(StartupRegisterManager *)self _clearQCPendingEpoch];
      goto LABEL_17;
    }

LABEL_18:
    [(StartupRegisterManager *)self _clearQCPendingEpoch];
    return;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
LABEL_20:
        +[NSDate timeIntervalSinceReferenceDate];
        v10 = [NSNumber numberWithDouble:?];
        v11 = @"qcPendingEpoch";
        goto LABEL_22;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v9 = [NSNumber numberWithDouble:?];
      [(StartupRegisterManager *)self _setInfo:v9 forKey:@"qcPendingEpoch"];

LABEL_17:
      +[NSDate timeIntervalSinceReferenceDate];
      v10 = [NSNumber numberWithDouble:?];
      v11 = @"commandPendingEpoch";
LABEL_22:
      [(StartupRegisterManager *)self _setInfo:v10 forKey:v11];

      return;
    }

    goto LABEL_18;
  }

  if (a3 < 2)
  {
    [(StartupRegisterManager *)self _clearAllInfo];
    return;
  }

  if (a3 == 2)
  {
    goto LABEL_20;
  }
}

- (id)description
{
  v3 = [(StartupRegisterManager *)self fm_logID];
  v4 = [(StartupRegisterManager *)self info];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"%@: %@", v3, v5];

  return v6;
}

- (void)_clearQCPendingEpoch
{
  v3 = [(StartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023D90;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_clearAllInfo
{
  v3 = [(StartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023FEC;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_setInfo:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002411C;
  block[3] = &unk_10005E368;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)_removeInfoForKey:(id)a3
{
  v4 = a3;
  v5 = [(StartupRegisterManager *)self infoChangeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024220;
  v7[3] = &unk_10005D6E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_saveInfo
{
  if (![(StartupRegisterManager *)self inTestingMode])
  {
    v3 = [(StartupRegisterManager *)self info];
    [FMPreferencesUtil setObject:v3 forKey:@"startupRegisterInfo" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  }
}

- (id)_descriptionForEvent:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return @"AccountAdded";
  }

  else
  {
    return off_10005E388[a3 - 1];
  }
}

@end