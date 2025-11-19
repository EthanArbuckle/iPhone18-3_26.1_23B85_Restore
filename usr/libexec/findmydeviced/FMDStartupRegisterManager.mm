@interface FMDStartupRegisterManager
+ (id)sharedInstance;
- (BOOL)shouldForceRegisterOnStartup;
- (FMDStartupRegisterManager)init;
- (FMDStartupRegisterManager)initWithDict:(id)a3;
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

@implementation FMDStartupRegisterManager

+ (id)sharedInstance
{
  if (qword_100314578 != -1)
  {
    sub_100226B00();
  }

  v3 = qword_100314570;

  return v3;
}

- (void)_clearQCPendingEpoch
{
  v3 = [(FMDStartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D344;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_saveInfo
{
  if (![(FMDStartupRegisterManager *)self inTestingMode])
  {
    v3 = [(FMDStartupRegisterManager *)self info];
    [FMPreferencesUtil setObject:v3 forKey:@"startupRegisterInfo" inDomain:kFMDNotBackedUpPrefDomain];
  }
}

- (FMDStartupRegisterManager)init
{
  v3 = [FMPreferencesUtil objectForKey:@"startupRegisterInfo" inDomain:kFMDNotBackedUpPrefDomain];
  v4 = [(FMDStartupRegisterManager *)self initWithDict:v3];

  return v4;
}

- (FMDStartupRegisterManager)initWithDict:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMDStartupRegisterManager;
  v5 = [(FMDStartupRegisterManager *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.icloud.findmydeviced.startup_reg.mod_queue", v6);
    [(FMDStartupRegisterManager *)v5 setInfoChangeQueue:v7];

    if (v4)
    {
      v8 = [v4 mutableCopy];
    }

    else
    {
      v8 = +[NSMutableDictionary dictionary];
    }

    v9 = v8;
    [(FMDStartupRegisterManager *)v5 setInfo:v8];

    v10 = [(FMDStartupRegisterManager *)v5 info];
    v11 = [v10 copy];
    [(FMDStartupRegisterManager *)v5 setInfoAtStartup:v11];
  }

  return v5;
}

- (id)infoDictForTesting
{
  v2 = [(FMDStartupRegisterManager *)self info];
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
  v3 = [(FMDStartupRegisterManager *)self infoChangeQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013EE7C;
  v5[3] = &unk_1002CD260;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)eventDidOccur:(int64_t)a3
{
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDStartupRegisterManager *)self fm_logID];
    v7 = [(FMDStartupRegisterManager *)self _descriptionForEvent:a3];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Event occurred : %@", &v12, 0x16u);
  }

  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v10 = @"ackPendingEpoch";
          break;
        case 11:
          +[NSDate timeIntervalSinceReferenceDate];
          v8 = [NSNumber numberWithDouble:?];
          v9 = @"identityPendingEpoch";
          goto LABEL_29;
        case 12:
          v10 = @"identityPendingEpoch";
          break;
        default:
          return;
      }
    }

    else
    {
      if (a3 == 7)
      {
        [(FMDStartupRegisterManager *)self _clearQCPendingEpoch];
        goto LABEL_24;
      }

      if (a3 != 8)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v8 = [NSNumber numberWithDouble:?];
        v9 = @"ackPendingEpoch";
LABEL_29:
        [(FMDStartupRegisterManager *)self _setInfo:v8 forKey:v9];

        return;
      }

      v10 = @"commandPendingEpoch";
    }

    [(FMDStartupRegisterManager *)self _removeInfoForKey:v10];
    return;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
LABEL_21:
      +[NSDate timeIntervalSinceReferenceDate];
      v8 = [NSNumber numberWithDouble:?];
      v9 = @"qcPendingEpoch";
      goto LABEL_29;
    }

    if (a3 != 5)
    {
      goto LABEL_15;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [(FMDStartupRegisterManager *)self _setInfo:v11 forKey:@"qcPendingEpoch"];

LABEL_24:
    +[NSDate timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
    v9 = @"commandPendingEpoch";
    goto LABEL_29;
  }

  if (a3 < 2)
  {
    [(FMDStartupRegisterManager *)self _clearAllInfo];
    return;
  }

  if (a3 == 2)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
LABEL_15:
    [(FMDStartupRegisterManager *)self _clearQCPendingEpoch];
  }
}

- (id)description
{
  v3 = [(FMDStartupRegisterManager *)self fm_logID];
  v4 = [(FMDStartupRegisterManager *)self info];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"%@: %@", v3, v5];

  return v6;
}

- (void)_clearAllInfo
{
  v3 = [(FMDStartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013F2CC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_setInfo:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDStartupRegisterManager *)self infoChangeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013F3FC;
  block[3] = &unk_1002CDD98;
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
  v5 = [(FMDStartupRegisterManager *)self infoChangeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013F500;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)_descriptionForEvent:(int64_t)a3
{
  if ((a3 - 1) > 0xB)
  {
    return @"AccountAdded";
  }

  else
  {
    return *(&off_1002CDE48 + a3 - 1);
  }
}

@end