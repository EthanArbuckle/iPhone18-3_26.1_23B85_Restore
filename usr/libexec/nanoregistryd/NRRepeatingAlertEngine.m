@interface NRRepeatingAlertEngine
+ (id)createAlertItemDictionary;
+ (id)sharedInstance;
+ (id)sharedUNUserNotificationCenter;
- (id)initBase;
- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (void)_presentAlertsIfNeeded;
- (void)addErrorCodeToPairingFailureAlert:(unint64_t)a3 withReasonString:(id)a4;
- (void)clearUINotificationwithName:(id)a3;
- (void)presentAlertIfEnabledWithName:(id)a3;
- (void)presentAlertsIfNeeded;
- (void)registerForNotifications;
- (void)resetStateForAlertWithName:(id)a3;
- (void)resume;
- (void)setEnabled:(BOOL)a3 withName:(id)a4 withDevice:(id)a5;
- (void)sigTerm;
@end

@implementation NRRepeatingAlertEngine

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3C84;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3A90 != -1)
  {
    dispatch_once(&qword_1001B3A90, block);
  }

  v2 = qword_1001B3A98;

  return v2;
}

+ (id)sharedUNUserNotificationCenter
{
  if (qword_1001B3AA8 != -1)
  {
    sub_100103A20();
  }

  v3 = qword_1001B3AA0;

  return v3;
}

- (id)initBase
{
  v11.receiver = self;
  v11.super_class = NRRepeatingAlertEngine;
  v2 = [(NRRepeatingAlertEngine *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.NanoRegistry.repeatingAlertEngine", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = +[NRRepeatingAlertEngine createAlertItemDictionary];
    items = v3->_items;
    v3->_items = v8;
  }

  return v3;
}

- (void)resume
{
  [(NRRepeatingAlertEngine *)self registerForNotifications];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3EA0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (id)createAlertItemDictionary
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [[NRRepeatingAlertEngineItemLaunchBridge alloc] initWithName:@"PairedWatchIsIncompatible" strings:&off_100187F10 maxAcknowledgementCount:3 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:28800.0];
  v4 = [(NRRepeatingAlertEngineItem *)v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];

  v5 = [[NRRepeatingAlertEngineItemLaunchBridgeToFaceGallery alloc] initWithName:@"PairedWatchWasUpdatedCheckoutFaceGallery" strings:&off_100187F28 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v6 = [(NRRepeatingAlertEngineItem *)v5 name];
  [v2 setObject:v5 forKeyedSubscript:v6];

  v7 = [[NRRepeatingAlertEngineItemWatchDidNotReset alloc] initWithName:@"RepeatingAlertPairedWatchDidNotReset" strings:&off_100187F40 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v8 = [(NRRepeatingAlertEngineItem *)v7 name];
  [v2 setObject:v7 forKeyedSubscript:v8];

  v9 = [[NRRepeatingAlertEngineItemMigrationFailed alloc] initWithName:@"MigrationFailed" strings:&off_100187F58 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v10 = [(NRRepeatingAlertEngineItem *)v9 name];
  [v2 setObject:v9 forKeyedSubscript:v10];

  v11 = [[NRRepeatingAlertEngineItemMigrationFailedPermanentlyForThisWatch alloc] initWithName:@"MigrationFailedPermanentlyForThisWatch" strings:&off_100187F70 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v12 = [(NRRepeatingAlertEngineItem *)v11 name];
  [v2 setObject:v11 forKeyedSubscript:v12];

  v13 = [[NRRepeatingAlertEngineItemMigrationSamePhone alloc] initWithName:@"SamePhone" strings:&off_100187F88 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v14 = [(NRRepeatingAlertEngineItem *)v13 name];
  [v2 setObject:v13 forKeyedSubscript:v14];

  v15 = [[NRRepeatingAlertEngineItemStandAloneMode alloc] initWithName:@"StandAloneMode" strings:&off_100187FA0 maxAcknowledgementCount:1 reoccurrenceInterval:0 localizedStrings:0 userNotificationCenter:60.0];
  v16 = [(NRRepeatingAlertEngineItem *)v15 name];
  [v2 setObject:v15 forKeyedSubscript:v16];

  v17 = [[NRRepeatingAlertEngineItemStandAloneMode alloc] initWithName:@"HealthSyncSetupFailed" strings:&off_100187FB8 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v18 = [(NRRepeatingAlertEngineItem *)v17 name];
  [v2 setObject:v17 forKeyedSubscript:v18];

  v19 = [NRRepeatingAlertEngineItemLaunchBridgeDeleteGraduationBackup alloc];
  v20 = +[NRRepeatingAlertEngine sharedUNUserNotificationCenter];
  v21 = [(NRRepeatingAlertEngineItem *)v19 initWithName:@"TinkerWatchFoundInAccount" strings:&off_100187FD0 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:v20 userNotificationCenter:60.0];

  v22 = [(NRRepeatingAlertEngineItem *)v21 name];
  [v2 setObject:v21 forKeyedSubscript:v22];

  v23 = [NRRepeatingAlertEngineItemLegalBackstopNotification alloc];
  v24 = +[NRRepeatingAlertEngine sharedUNUserNotificationCenter];
  v25 = [(NRRepeatingAlertEngineItem *)v23 initWithName:@"TinkerLegalBackstop" strings:&off_100187FE8 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:v24 userNotificationCenter:60.0];

  v26 = [(NRRepeatingAlertEngineItem *)v25 name];
  [v2 setObject:v25 forKeyedSubscript:v26];

  v27 = [[NRRepeatingAlertEngineItemWatchUnexpectedlyUnpaired alloc] initWithName:@"WatchUnexpectedlyUnpaired" strings:&off_100188000 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v28 = [(NRRepeatingAlertEngineItem *)v27 name];
  [v2 setObject:v27 forKeyedSubscript:v28];

  v29 = [[NRRepeatingAlertEngineItemWatchUnexpectedlyUnpairedBridge alloc] initWithName:@"WatchUnexpectedlyUnpairedBridge" strings:&off_100188018 maxAcknowledgementCount:5 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:300.0];
  v30 = [(NRRepeatingAlertEngineItem *)v29 name];
  [v2 setObject:v29 forKeyedSubscript:v30];

  v31 = [[NRRepeatingAlertEngineItemWatchesUnpairedProhibited alloc] initWithName:@"WatchesUnpairedProhibited" strings:&off_100188030 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v32 = [(NRRepeatingAlertEngineItem *)v31 name];
  [v2 setObject:v31 forKeyedSubscript:v32];

  v33 = [[NRRepeatingAlertEngineItemWatchesUnpairedProhibited alloc] initWithName:@"MigrationNotSupportedForMDMWatch" strings:&off_100188048 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v34 = [(NRRepeatingAlertEngineItem *)v33 name];
  [v2 setObject:v33 forKeyedSubscript:v34];

  v35 = [[NRRepeatingAlertEngineItemInternalPairingFailed alloc] initWithName:@"InternalPairingFailed" strings:&off_100188060 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v36 = [(NRRepeatingAlertEngineItem *)v35 name];
  [v2 setObject:v35 forKeyedSubscript:v36];

  v37 = [[NRRepeatingAlertEngineItemInternalMigrationFailed alloc] initWithName:@"InternalMigrationFailed" strings:&off_100188078 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v38 = [(NRRepeatingAlertEngineItem *)v37 name];
  [v2 setObject:v37 forKeyedSubscript:v38];

  v39 = [[NRRepeatingAlertEngineItemLostIDSPairing alloc] initWithName:@"InternalIDSPairingLost" strings:&off_100188090 maxAcknowledgementCount:1 reoccurrenceInterval:1 localizedStrings:0 userNotificationCenter:60.0];
  v40 = [(NRRepeatingAlertEngineItem *)v39 name];
  [v2 setObject:v39 forKeyedSubscript:v40];

  return v2;
}

- (void)setEnabled:(BOOL)a3 withName:(id)a4 withDevice:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D462C;
  v13[3] = &unk_100175CE0;
  v13[4] = self;
  v14 = v8;
  v16 = a3;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)clearUINotificationwithName:(id)a3
{
  v3 = [(NSDictionary *)self->_items objectForKeyedSubscript:a3];
  [v3 clearNotifications];
}

- (void)addErrorCodeToPairingFailureAlert:(unint64_t)a3 withReasonString:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    v16 = v6;
    v7 = [(NSDictionary *)self->_items objectForKeyedSubscript:@"InternalPairingFailed"];
    v8 = [v7 strings];
    v9 = [v8 mutableCopy];

    v10 = [NSString stringWithFormat:@"[Internal] Pairing Failed! Code: %lu", a3];
    v11 = +[NSDate date];
    v12 = [NRTextFormattingUtilities dateFormatter:v11];

    if (a3 == 3)
    {
      [NSString stringWithFormat:@"Apple Watch setup timed out due to inactivity.\n\nThis was likely caused by the Watch app being backgrounded for 10 minutes during the setup flow. If this was the case, no radar is necessary. If this was not the case, file a radar to ‘Watch App & Pairing’. Include a sysdiagnose from 📱 & ⌚️.\nTime: %@", v12, v15];
    }

    else
    {
      [NSString stringWithFormat:@"File a Radar to 'Watch App & Pairing'. Include a sysdiagnose from 📱 & ⌚️.\n\nError: %@\nTime: %@", v16, v12];
    }
    v13 = ;
    [v9 setObject:v10 atIndexedSubscript:0];
    [v9 setObject:v13 atIndexedSubscript:1];
    v14 = [(NSDictionary *)self->_items objectForKeyedSubscript:@"InternalPairingFailed"];
    [v14 setStrings:v9];

    v6 = v16;
  }
}

- (void)presentAlertsIfNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D49A8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_presentAlertsIfNeeded
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSDictionary *)self->_items allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 shouldTriggerAlertNow])
        {
          [v8 presentAlertIfEnabledWithString:self->_alertString];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)sigTerm
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSDictionary *)self->_items allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlertAsync];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)presentAlertIfEnabledWithName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4C48;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)resetStateForAlertWithName:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting alert %@", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D4DE4;
  v10[3] = &unk_100175598;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(queue, v10);
}

- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    if (!notify_register_dispatch(v10, &out_token, v8, v9))
    {
      goto LABEL_9;
    }
  }

  else if (!notify_register_check(v10, &out_token))
  {
    goto LABEL_9;
  }

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to register block and get notify token for %@", buf, 0xCu);
    }
  }

LABEL_9:
  v14 = out_token;

  return v14;
}

- (void)registerForNotifications
{
  if (self->_notifyToken == -1)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000D504C;
    v4[3] = &unk_100179790;
    objc_copyWeak(&v5, &location);
    self->_notifyToken = [(NRRepeatingAlertEngine *)self registerNotifyTokenWithName:@"com.apple.springboard.homescreenunlocked" withQueue:queue withBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

@end