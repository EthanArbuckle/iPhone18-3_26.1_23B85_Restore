@interface CHPKPersistentAnalyticsController
+ (id)sharedInstance;
+ (id)userModelDataStorePath;
+ (void)registerScheduledEventsActivity;
- (BOOL)cachedSettingsBoolForKey:(id)key userModel:(id)model;
- (BOOL)inputModeIdentifierIsValid:(id)valid;
- (CHPKPersistentAnalyticsController)init;
- (CHPKPersistentAnalyticsSessionDelegate)sessionDelegate;
- (id)newContextForAnalyticsWithUserModel:(id)model language:(id)language;
- (id)settingsDictionary;
- (void)didBeginInputSession;
- (void)didEndInputSessionUsingScribbleWithInputMode:(id)mode;
- (void)didEndInputSessionWithInputMode:(id)mode;
- (void)didEndPKCanvasSession:(id)session withInputMode:(id)mode;
- (void)dispatchDailyUsageEvents;
- (void)dispatchLifecycleEventForFeature:(id)feature denominatorKey:(id)key inputModeIdentifier:(id)identifier values:(id)values sinceDate:(id)date;
- (void)dispatchLifecycleEvents;
- (void)dispatchScheduledEventsWithCompletionBlock:(id)block;
- (void)dispatchSettingsEvents;
@end

@implementation CHPKPersistentAnalyticsController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A68;
  block[3] = &unk_1000247B8;
  block[4] = self;
  if (qword_10002AC58 == -1)
  {
    v2 = qword_10002AC50;
  }

  else
  {
    dispatch_once(&qword_10002AC58, block);
    v2 = qword_10002AC50;
  }

  return v2;
}

- (CHPKPersistentAnalyticsController)init
{
  v11.receiver = self;
  v11.super_class = CHPKPersistentAnalyticsController;
  v2 = [(CHPKPersistentAnalyticsController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.handwritingd.analytics.scheduledEventsWorkerQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    userModelDataStorePath = [objc_opt_class() userModelDataStorePath];
    v8 = [TIUserModelDataStore initializeDataStoreAtPath:userModelDataStorePath];
    dataStore = v2->_dataStore;
    v2->_dataStore = v8;
  }

  return v2;
}

+ (id)userModelDataStorePath
{
  v2 = TI_USER_DIRECTORY();
  v3 = [v2 stringByAppendingPathComponent:@"Handwriting"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSFileManager defaultManager];
    v11 = 0;
    [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v11];
    v7 = v11;

    if (v7)
    {
      if (qword_10002AD20 != -1)
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
      }

      v8 = qword_10002ACE8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to create directory for user store. %@", buf, 0xCu);
      }
    }
  }

  v9 = [v3 stringByAppendingPathComponent:@"TIUserData"];

  return v9;
}

+ (void)registerScheduledEventsActivity
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v3 = qword_10002ACE8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = @"com.apple.handwritingd.analytics.scheduledEventsActivity";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preparing for %@ activity", buf, 0xCu);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002E4C;
  handler[3] = &unk_100024848;
  handler[4] = self;
  xpc_activity_register([@"com.apple.handwritingd.analytics.scheduledEventsActivity" UTF8String], XPC_ACTIVITY_CHECK_IN, handler);
}

- (id)settingsDictionary
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UIKit"];
  +[NSUserDefaults standardUserDefaults];
  v26[0] = @"PKLastSeenWhatsNewVersionKey";
  v26[1] = @"UIPencilOnlyDrawWithPencilKey";
  v27[0] = v2;
  v27[1] = v2;
  v26[2] = @"UIPencilPreferredTapAction";
  v26[3] = @"ApplePencilTextInputEnabled";
  v28 = v27[2] = v2;
  v23 = v28;
  v3 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003824;
  v4 = v24[3] = &unk_100024870;
  v25 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v24];
  v5 = +[CHTextInputProtoSettings sharedSettings];
  isScribbleActive = [v5 isScribbleActive];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v9 = +[NSLocale _deviceLanguage];
    v29 = v9;
    v10 = [NSArray arrayWithObjects:&v29 count:1];
    v11 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_1000260C0 forPreferredLanguages:v10];

    bOOLValue = [v11 count] != 0;
  }

  v12 = +[NSLocale _deviceLanguage];
  v29 = v12;
  v13 = [NSArray arrayWithObjects:&v29 count:1];
  v14 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_1000260C0 forPreferredLanguages:v13];

  v15 = [v14 count] != 0;
  v16 = [v2 integerForKey:@"PKLastSeenWhatsNewVersionKey"] > 1;
  v17 = [NSNumber numberWithBool:isScribbleActive];
  [v4 setObject:v17 forKey:@"ApplePencilTextInputActive"];

  v18 = [NSNumber numberWithBool:v16];
  [v4 setObject:v18 forKey:@"PencilAttachedForCurrentWhatsNewVersion"];

  v19 = [NSNumber numberWithBool:bOOLValue];
  [v4 setObject:v19 forKey:@"LiveTextEnabledKey"];

  v20 = [NSNumber numberWithBool:v15];
  [v4 setObject:v20 forKey:@"LiveTextSupportedByPrimaryLanguageKey"];

  return v4;
}

- (BOOL)cachedSettingsBoolForKey:(id)key userModel:(id)model
{
  keyCopy = key;
  cachedSettingsDictionary = [model cachedSettingsDictionary];
  v7 = [cachedSettingsDictionary objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v7 BOOLValue];

    return bOOLValue;
  }

  else
  {

    return 0;
  }
}

- (id)newContextForAnalyticsWithUserModel:(id)model language:(id)language
{
  languageCopy = language;
  modelCopy = model;
  v8 = [CHPKAnalyticsMetricsContext alloc];
  v9 = TIInputModeGetLanguage();
  v10 = TIInputModeGetRegion();

  v11 = [(CHPKAnalyticsMetricsContext *)v8 initWithInputLanguage:v9 inputRegion:v10];
  [(CHPKAnalyticsMetricsContext *)v11 setFingerDrawingEnabled:[(CHPKPersistentAnalyticsController *)self cachedSettingsBoolForKey:@"UIPencilOnlyDrawWithPencilKey" userModel:modelCopy]];
  v12 = [(CHPKPersistentAnalyticsController *)self cachedSettingsBoolForKey:@"ApplePencilTextInputEnabled" userModel:modelCopy];

  [(CHPKAnalyticsMetricsContext *)v11 setScribbleEnabled:v12];
  return v11;
}

- (void)dispatchScheduledEventsWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003AC4;
  v7[3] = &unk_100024898;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

- (void)dispatchSettingsEvents
{
  v2 = [@"com.apple.pencilkit." stringByAppendingString:@"scheduled.settings"];
  AnalyticsSendEventLazy();
}

- (void)dispatchDailyUsageEvents
{
  v35[0] = CHPKStrokesDrawnKey;
  v35[1] = CHPKSmartSelectionUsedKey;
  v36[0] = &off_100025EE8;
  v36[1] = &off_100025EE8;
  v35[2] = CHPKCopyAsTextUsedKey;
  v35[3] = CHPKSmartShapesUsedKey;
  v36[2] = &off_100025EE8;
  v36[3] = &off_100025EE8;
  v35[4] = CHPKInsertSpaceUsedKey;
  v35[5] = CHPKDataDetectorUsedKey;
  v36[4] = &off_100025EE8;
  v36[5] = &off_100025EE8;
  v35[6] = CHPKTextLineStraighteningUsedKey;
  v36[6] = &off_100025EE8;
  v3 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];
  v4 = [v3 mutableCopy];
  selfCopy = self;
  [(TIUserModelDataStore *)self->_dataStore getAllKnownInputModes];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v18 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v18)
  {
    v16 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v5;
        v7 = [[TIUserModel alloc] initWithInputMode:*(*(&v29 + 1) + 8 * v5) userModelDataStore:selfCopy->_dataStore];
        [v7 setConfigurationDelegate:selfCopy];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        contexts = [v7 contexts];
        v9 = [contexts countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(contexts);
              }

              v13 = [v7 valuesFromContext:*(*(&v25 + 1) + 8 * i)];
              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_100003F7C;
              v21[3] = &unk_1000248E8;
              v22 = v13;
              v23 = v7;
              v24 = v4;
              v14 = v13;
              [v3 enumerateKeysAndObjectsUsingBlock:v21];
            }

            v10 = [contexts countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        v6 = [@"com.apple.pencilkit." stringByAppendingString:@"scheduled.dailyUsage"];
        v20 = v4;
        AnalyticsSendEventLazy();

        v5 = v19 + 1;
      }

      while ((v19 + 1) != v18);
      v18 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v18);
  }
}

- (void)dispatchLifecycleEvents
{
  v31 = @"scribbledInSession";
  v32 = @"totalSessions";
  v3 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(TIUserModelDataStore *)self->_dataStore getAllKnownInputModes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v16)
  {
    v15 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = [[TIUserModel alloc] initWithInputMode:v5 userModelDataStore:self->_dataStore];
        [v6 setConfigurationDelegate:self];
        contexts = [v6 contexts];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [contexts countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            v11 = 0;
            do
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(contexts);
              }

              v12 = [v6 valuesFromContext:*(*(&v21 + 1) + 8 * v11)];
              v18[0] = _NSConcreteStackBlock;
              v18[1] = 3221225472;
              v18[2] = sub_100004324;
              v18[3] = &unk_100024910;
              v18[4] = self;
              v18[5] = v5;
              v19 = v12;
              v20 = v6;
              v13 = v12;
              [v3 enumerateKeysAndObjectsUsingBlock:v18];

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [contexts countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        v4 = v17 + 1;
      }

      while ((v17 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v16);
  }
}

- (void)dispatchLifecycleEventForFeature:(id)feature denominatorKey:(id)key inputModeIdentifier:(id)identifier values:(id)values sinceDate:(id)date
{
  identifierCopy = identifier;
  v30[0] = kFeatureUsageStateInactive;
  v30[1] = kFeatureUsageStateActiveVeryLow;
  v30[2] = kFeatureUsageStateActiveLow;
  v30[3] = kFeatureUsageStateActiveMedium;
  v30[4] = kFeatureUsageStateActiveHigh;
  v30[5] = kFeatureUsageStateActiveVeryHigh;
  v30[6] = kFeatureUsageStateActiveUnusuallyHigh;
  dateCopy = date;
  valuesCopy = values;
  keyCopy = key;
  featureCopy = feature;
  v16 = [NSArray arrayWithObjects:v30 count:7];
  v17 = [valuesCopy aggregatedCountFromTransientCounterWithName:keyCopy forNumberOfDays:kFeatureUsageQueryTimeFrame fromLoadedDate:dateCopy];

  v18 = [valuesCopy aggregatedCountFromTransientCounterWithName:featureCopy forNumberOfDays:kFeatureUsageQueryTimeFrame fromLoadedDate:dateCopy];

  v19 = kFeatureUsageStateInsufficientData;
  if (([v17 integerValue] & 0x8000000000000000) == 0)
  {
    [v18 doubleValue];
    v21 = v20;
    [v17 doubleValue];
    v23 = [NSNumber numberWithDouble:v21 / v22];
    v24 = [TIAnalyticsUtil bucketNumber:v23 bucketThresholds:&off_1000260A8 bucketValues:v16];

    v19 = v24;
  }

  v25 = [@"com.apple.pencilkit." stringByAppendingString:@"scheduled.inputMode.scribbleUsage"];
  v28 = identifierCopy;
  v29 = v19;
  v26 = v19;
  v27 = identifierCopy;
  AnalyticsSendEventLazy();
}

- (BOOL)inputModeIdentifierIsValid:(id)valid
{
  v3 = [NSLocale localeWithLocaleIdentifier:valid];
  v4 = [CHRecognitionSession isLocaleSupported:v3];

  return v4;
}

- (void)didBeginInputSession
{
  sessionDelegate = [(CHPKPersistentAnalyticsController *)self sessionDelegate];
  [sessionDelegate sessionDidBegin];
}

- (void)didEndInputSessionWithInputMode:(id)mode
{
  modeCopy = mode;
  sessionDelegate = [(CHPKPersistentAnalyticsController *)self sessionDelegate];
  [sessionDelegate sessionDidEnd];

  if ([(CHPKPersistentAnalyticsController *)self inputModeIdentifierIsValid:modeCopy])
  {
    v5 = [[TIUserModel alloc] initWithInputMode:modeCopy userModelDataStore:self->_dataStore];
    [v5 setConfigurationDelegate:self];
    if ([(CHPKPersistentAnalyticsController *)self cachedSettingsBoolForKey:@"PencilAttachedForCurrentWhatsNewVersion" userModel:v5])
    {
      v6 = [(CHPKPersistentAnalyticsController *)self newContextForAnalyticsWithUserModel:v5 language:modeCopy];
      [v5 addIntegerToTransientCounter:1 forKey:@"totalSessions" andCandidateLength:0 andContext:v6];
    }
  }
}

- (void)didEndInputSessionUsingScribbleWithInputMode:(id)mode
{
  modeCopy = mode;
  sessionDelegate = [(CHPKPersistentAnalyticsController *)self sessionDelegate];
  [sessionDelegate sessionDidEnd];

  if ([(CHPKPersistentAnalyticsController *)self inputModeIdentifierIsValid:modeCopy])
  {
    v5 = [[TIUserModel alloc] initWithInputMode:modeCopy userModelDataStore:self->_dataStore];
    [v5 setConfigurationDelegate:self];
    if ([(CHPKPersistentAnalyticsController *)self cachedSettingsBoolForKey:@"PencilAttachedForCurrentWhatsNewVersion" userModel:v5])
    {
      v6 = [(CHPKPersistentAnalyticsController *)self newContextForAnalyticsWithUserModel:v5 language:modeCopy];
      [v5 addIntegerToTransientCounter:1 forKey:@"scribbledInSession" andCandidateLength:0 andContext:v6];
      [v5 addIntegerToTransientCounter:1 forKey:@"totalSessions" andCandidateLength:0 andContext:v6];
    }
  }
}

- (void)didEndPKCanvasSession:(id)session withInputMode:(id)mode
{
  sessionCopy = session;
  modeCopy = mode;
  v8 = [[TIUserModel alloc] initWithInputMode:modeCopy userModelDataStore:self->_dataStore];
  [v8 setConfigurationDelegate:self];
  v18 = modeCopy;
  v9 = [(CHPKPersistentAnalyticsController *)self newContextForAnalyticsWithUserModel:v8 language:modeCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [sessionCopy allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [sessionCopy objectForKeyedSubscript:v15];
        intValue = [v16 intValue];

        if (intValue >= 1)
        {
          [v8 addIntegerToTransientCounter:1 forKey:v15 andCandidateLength:0 andContext:v9];
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (CHPKPersistentAnalyticsSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

@end