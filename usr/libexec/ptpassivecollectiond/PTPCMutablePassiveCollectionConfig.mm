@interface PTPCMutablePassiveCollectionConfig
+ (BOOL)resetPersistedDefaults:(id)a3 errorOut:(id *)a4;
+ (id)currentPersistedSettings:(id)a3 errorOut:(id *)a4;
+ (id)keyToExpectedClassDict;
- (BOOL)collectAppInFocus;
- (BOOL)collectLoggingAppLaunch;
- (BOOL)collectLoggingHangs;
- (BOOL)collectLoggingMetalFramePacing;
- (BOOL)collectLoggingPerfPowerMetrics;
- (BOOL)collectLoggingScrolling;
- (BOOL)collectLoggingUserInteraction;
- (BOOL)collectMSS;
- (NSDate)imitationRecordStartDate;
- (NSNumber)collectAppInFocusNum;
- (NSNumber)collectLoggingAppLaunchNum;
- (NSNumber)collectLoggingHangsNum;
- (NSNumber)collectLoggingMetalFramePacingNum;
- (NSNumber)collectLoggingPerfPowerMetricsNum;
- (NSNumber)collectLoggingScrollingNum;
- (NSNumber)collectLoggingUserInteractionNum;
- (NSNumber)collectMSSNum;
- (NSNumber)collectionLookbackIntervalNum;
- (NSNumber)imitationRecordStartTimeSinceReferenceDate;
- (PTPCMutablePassiveCollectionConfig)initWithDefaultsDomain:(id)a3 errorOut:(id *)a4;
- (double)collectionLookbackInterval;
- (id)_numberValueForKey:(id)a3 defaultValue:(id)a4;
- (void)_setValueForKey:(id)a3 newValue:(id)a4;
- (void)resetSettings;
- (void)setCollectAppInFocusNum:(id)a3;
- (void)setCollectLoggingAppLaunchNum:(id)a3;
- (void)setCollectLoggingHangsNum:(id)a3;
- (void)setCollectLoggingMetalFramePacingNum:(id)a3;
- (void)setCollectLoggingPerfPowerMetricsNum:(id)a3;
- (void)setCollectLoggingScrollingNum:(id)a3;
- (void)setCollectLoggingUserInteractionNum:(id)a3;
- (void)setCollectMSSNum:(id)a3;
- (void)setCollectionLookbackInterval:(double)a3;
- (void)setCollectionLookbackIntervalNum:(id)a3;
- (void)setImitationRecordStartDate:(id)a3;
- (void)setImitationRecordStartTimeSinceReferenceDate:(id)a3;
@end

@implementation PTPCMutablePassiveCollectionConfig

+ (id)currentPersistedSettings:(id)a3 errorOut:(id *)a4
{
  v5 = a3;
  v6 = [[PTPCMutablePassiveCollectionConfig alloc] initWithDefaultsDomain:v5 errorOut:a4];

  return v6;
}

+ (BOOL)resetPersistedDefaults:(id)a3 errorOut:(id *)a4
{
  v5 = a3;
  v6 = sub_100004414(v5, a4);
  v7 = v6;
  if (v6)
  {
    [v6 removeObjectForKey:@"CollectionConfiguration"];
    v8 = sub_1000045A4();
    if (os_signpost_enabled(v8))
    {
      v9 = @"com.apple.PerformanceTrace.passive.config";
      if (v5)
      {
        v9 = v5;
      }

      v14 = 138543362;
      v15 = v9;
      v10 = "HardResetSuccess";
      v11 = "Reset of collection configuration for domain %{public}@";
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v14, 0xCu);
    }
  }

  else
  {
    v8 = sub_100004560();
    if (os_signpost_enabled(v8))
    {
      v12 = @"com.apple.PerformanceTrace.passive.config";
      if (v5)
      {
        v12 = v5;
      }

      v14 = 138543362;
      v15 = v12;
      v10 = "HardResetFailure";
      v11 = "Failed to do a reset of collection configuration for domain %{public}@";
      goto LABEL_10;
    }
  }

  return v7 != 0;
}

+ (id)keyToExpectedClassDict
{
  if (qword_100025CC8 != -1)
  {
    sub_1000131B0();
  }

  v3 = qword_100025CC0;

  return v3;
}

- (PTPCMutablePassiveCollectionConfig)initWithDefaultsDomain:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"com.apple.PerformanceTrace.passive.config";
  }

  v8 = [PTPCDefaultsManager alloc];
  v9 = [objc_opt_class() keyToExpectedClassDict];
  v10 = [(PTPCDefaultsManager *)v8 initWithDefaultsDomain:v7 configurationDictKey:@"CollectionConfiguration" keyToExpectedClassDict:v9 errorOut:a4];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = PTPCMutablePassiveCollectionConfig;
    v11 = [(PTPCMutablePassiveCollectionConfig *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_defaultsManager, v10);
      v12->_syncLock._os_unfair_lock_opaque = 0;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)resetSettings
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000493C;
  v3[3] = &unk_1000208A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_syncLock);
  sub_10000493C(v3);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (id)_numberValueForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTPCMutablePassiveCollectionConfig *)self defaultsManager];
  v9 = [v8 objectForKey:v6];

  v10 = sub_1000045A4();
  v11 = os_signpost_enabled(v10);
  if (v9)
  {
    v12 = v9;
    if (v11)
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LookingUpKey", "Returning value for key '%{public}@': %{public}@", &v15, 0x16u);
      v12 = v9;
    }
  }

  else
  {
    v12 = v7;
    if (v11)
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LookingUpKey", "Returning default for key '%{public}@': %{public}@", &v15, 0x16u);
      v12 = v7;
    }
  }

  v13 = v12;

  return v13;
}

- (void)_setValueForKey:(id)a3 newValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTPCMutablePassiveCollectionConfig *)self defaultsManager];
  v9 = [v8 setObjectForKey:v6 objectValue:v7];

  if (v9)
  {
    v10 = sub_1000045A4();
    if (os_signpost_enabled(v10))
    {
      if (v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = @"nil";
      }

      v12 = [v9 localizedDescription];
      v13 = v12;
      v14 = @"Unknown";
      v17 = 138543874;
      v18 = v6;
      if (v12)
      {
        v14 = v12;
      }

      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionConfigurationUpdateFailed", "Failed to updated key '%{public}@' to '%{public}@' due to error: '%{public}@'", &v17, 0x20u);
    }
  }

  v15 = sub_1000045A4();
  if (os_signpost_enabled(v15))
  {
    v16 = @"nil";
    if (v7)
    {
      v16 = v7;
    }

    v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionConfigurationUpdate", "Updated key '%{public}@' to %{public}@", &v17, 0x16u);
  }
}

- (NSNumber)collectMSSNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100004E40;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectMSSNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004F50;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100004F50(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectMSS
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectMSSNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectAppInFocusNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005134;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectAppInFocusNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005244;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100005244(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectAppInFocus
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectAppInFocusNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingUserInteractionNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005428;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingUserInteractionNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005538;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100005538(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingUserInteraction
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingUserInteractionNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingMetalFramePacingNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10000571C;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingMetalFramePacingNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000582C;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_10000582C(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingMetalFramePacing
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingMetalFramePacingNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingScrollingNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005A10;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingScrollingNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005B20;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100005B20(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingScrolling
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingScrollingNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingPerfPowerMetricsNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005D04;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingPerfPowerMetricsNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005E14;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100005E14(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingPerfPowerMetrics
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingPerfPowerMetricsNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingAppLaunchNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005FF8;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingAppLaunchNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006108;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_100006108(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingAppLaunch
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingAppLaunchNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)collectLoggingHangsNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000062EC;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingHangsNum:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000063FC;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_1000063FC(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingHangs
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingHangsNum];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)imitationRecordStartTimeSinceReferenceDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000065E0;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setImitationRecordStartTimeSinceReferenceDate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000066EC;
  v5[3] = &unk_1000208F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_syncLock);
  sub_1000066EC(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (NSDate)imitationRecordStartDate
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self imitationRecordStartTimeSinceReferenceDate];
  if (v2)
  {
    v3 = [NSDate alloc];
    [v2 doubleValue];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImitationRecordStartDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
    [(PTPCMutablePassiveCollectionConfig *)self setImitationRecordStartTimeSinceReferenceDate:v4];
  }

  else
  {

    [(PTPCMutablePassiveCollectionConfig *)self setImitationRecordStartTimeSinceReferenceDate:?];
  }
}

- (NSNumber)collectionLookbackIntervalNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100006934;
  v8 = &unk_1000208D0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectionLookbackIntervalNum:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 doubleValue], v6 <= 0.0))
  {
    v7 = sub_100004560();
    if (os_signpost_enabled(v7))
    {
      [v5 doubleValue];
      *buf = 134349056;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidLookbackInterval", "Cannot set lookback to %{public}f seconds", buf, 0xCu);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006AF4;
    v9[3] = &unk_1000208F8;
    v9[4] = self;
    v10 = v5;
    os_unfair_lock_lock(&self->_syncLock);
    sub_100006AF4(v9);
    os_unfair_lock_unlock(&self->_syncLock);
  }
}

- (double)collectionLookbackInterval
{
  v2 = [(PTPCMutablePassiveCollectionConfig *)self collectionLookbackIntervalNum];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setCollectionLookbackInterval:(double)a3
{
  v4 = [NSNumber numberWithDouble:a3];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectionLookbackIntervalNum:v4];
}

@end