@interface NEKDaemon
- (NEKDaemon)initWithEnvironment:(id)environment;
- (id)environment;
- (void)_databaseChangedExternally;
- (void)_registerForNotifications;
- (void)_triggerFullSync;
- (void)_triggerMigrationSync;
- (void)_triggerNightlySync;
- (void)didReceiveReunionSyncCommand:(id)command;
- (void)didReceiveStartSyncCommand:(id)command;
@end

@implementation NEKDaemon

- (NEKDaemon)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v35.receiver = self;
  v35.super_class = NEKDaemon;
  v5 = [(NEKDaemon *)&v35 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = [NDTLog facilityWithSubsystem:@"com.apple.eventkitsync" category:@"phone"];
    v8 = qword_1000D18A8;
    qword_1000D18A8 = v7;

    v9 = [NDTLog facilityWithSubsystem:@"com.apple.eventkitsync" category:@"ics"];
    v10 = qword_1000D18B0;
    qword_1000D18B0 = v9;

    v11 = [NDTLog facilityWithSubsystem:@"com.apple.eventkitsync" category:@"analytics"];
    v12 = qword_1000D18B8;
    qword_1000D18B8 = v11;

    [(NEKDaemon *)v6 _enableDisableLogging];
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "== Started EventKitSync-419", buf, 2u);
    }

    environment = [(NEKDaemon *)v6 environment];
    dbFileManager = [environment dbFileManager];
    pairingID = [dbFileManager pairingID];

    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = pairingID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Pairing ID: %{public}@", buf, 0xCu);
    }

    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_1000716D0();
    }

    v18 = sub_100004B98("PreferencesObserver");
    preferencesQueue = v6->_preferencesQueue;
    v6->_preferencesQueue = v18;

    objc_initWeak(buf, v6);
    v20 = v6->_preferencesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B820;
    block[3] = &unk_1000B4B48;
    objc_copyWeak(&v34, buf);
    dispatch_async(v20, block);
    v21 = sub_100004B98("com.apple.eventkitsyncd.daemon");
    daemonQueue = v6->_daemonQueue;
    v6->_daemonQueue = v21;

    v23 = v6->_daemonQueue;
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10002B898;
    v31 = &unk_1000B4B90;
    v24 = v6;
    v32 = v24;
    dispatch_async(v23, &v28);
    v25 = sub_100004B98("com.apple.eventkitsyncd.notifications");
    notificationQueue = v24->_notificationQueue;
    v24->_notificationQueue = v25;

    [(NEKDaemon *)v24 _registerForNotifications:v28];
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)_registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NEKSyncCoordinator receivedStartSyncNotificationString];
  [v3 addObserver:self selector:"didReceiveStartSyncCommand:" name:v4 object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = +[NEKSyncCoordinator receivedReunionSyncNotificationString];
  [v5 addObserver:self selector:"didReceiveReunionSyncCommand:" name:v6 object:0];

  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002BBBC;
  handler[3] = &unk_1000B5438;
  objc_copyWeak(&v12, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", notificationQueue, handler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002C2DC;
  v9[3] = &unk_1000B5438;
  objc_copyWeak(&v10, &location);
  xpc_activity_register("com.apple.eventkitsync.analytics.daily", XPC_ACTIVITY_CHECK_IN, v9);
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[NEKDaemon _registerForNotifications]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Registered for XPC activity (notifications).", buf, 0xCu);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)didReceiveStartSyncCommand:(id)command
{
  commandCopy = command;
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received full sync command from NEKSyncCoordinator.", buf, 2u);
  }

  objc_initWeak(buf, self);
  preferencesQueue = self->_preferencesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C58C;
  block[3] = &unk_1000B4B48;
  objc_copyWeak(&v12, buf);
  dispatch_async(preferencesQueue, block);
  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting sync controller.", v10, 2u);
  }

  environment = [(NEKDaemon *)self environment];
  syncController = [environment syncController];
  [syncController setNeedsFullSync];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)didReceiveReunionSyncCommand:(id)command
{
  commandCopy = command;
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received reunion sync command.", buf, 2u);
  }

  objc_initWeak(buf, self);
  preferencesQueue = self->_preferencesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C7B0;
  block[3] = &unk_1000B4B48;
  objc_copyWeak(&v12, buf);
  dispatch_async(preferencesQueue, block);
  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting sync controller.", v10, 2u);
  }

  environment = [(NEKDaemon *)self environment];
  syncController = [environment syncController];
  [syncController setNeedsReunionSync];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_databaseChangedExternally
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NEKDatabaseChangedExternallyNotification" object:0];
}

- (void)_triggerFullSync
{
  environment = [(NEKDaemon *)self environment];
  syncController = [environment syncController];
  [syncController setNeedsFullSync];
}

- (void)_triggerNightlySync
{
  environment = [(NEKDaemon *)self environment];
  syncController = [environment syncController];
  [syncController setNeedsNightlySync];
}

- (void)_triggerMigrationSync
{
  environment = [(NEKDaemon *)self environment];
  syncController = [environment syncController];
  [syncController setNeedsMigrationSync];
}

@end