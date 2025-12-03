@interface GKTTRUploadRequestBulletin
+ (id)packFakeTTRBulletinWithInfo:(id)info;
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKTTRUploadRequestBulletin)initWithPushNotification:(id)notification;
- (void)assembleBulletin;
@end

@implementation GKTTRUploadRequestBulletin

+ (id)packFakeTTRBulletinWithInfo:(id)info
{
  infoCopy = info;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTTRUploadRequestBulletin: packFakeTTRBulletinWithInfo", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = &OBJC_METACLASS___GKTTRUploadRequestBulletin;
  v7 = objc_msgSendSuper2(&v22, "packFakeTTRBulletinWithInfo:", infoCopy);
  v8 = [v7 mutableCopy];

  [v8 setObject:&off_1003825F8 forKeyedSubscript:GKPushCommandKey];
  v9 = GKTTRBulletinKeyRadarID;
  v10 = [infoCopy objectForKeyedSubscript:GKTTRBulletinKeyRadarID];
  v11 = v10;
  v12 = @"UnknownID";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = GKTTRBulletinKeyRequesterPlayerAlias;
  v15 = [infoCopy objectForKeyedSubscript:GKTTRBulletinKeyRequesterPlayerAlias];
  v16 = v15;
  v17 = @"UnknownAlias";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  [v8 setObject:v13 forKeyedSubscript:v9];
  [v8 setObject:v18 forKeyedSubscript:v14];
  v19 = [NSString stringWithFormat:@"%@ has requested your logs. Tap here to upload your sysdiagnose to radar://%@", v18, v13];

  [v8 setObject:v19 forKeyedSubscript:GKTTRBulletinKeySubtitle];
  v20 = [v8 copy];

  return v20;
}

- (GKTTRUploadRequestBulletin)initWithPushNotification:(id)notification
{
  notificationCopy = notification;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTTRUploadRequestBulletin: initWithPushNotification", buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = GKTTRUploadRequestBulletin;
  v7 = [(GKTTRBulletin *)&v11 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [notificationCopy objectForKeyedSubscript:GKTTRBulletinKeyRadarID];
    [(GKTTRUploadRequestBulletin *)v7 setRadarID:v8];

    v9 = [notificationCopy objectForKeyedSubscript:GKTTRBulletinKeyRequesterPlayerAlias];
    [(GKTTRUploadRequestBulletin *)v7 setRequesterPlayerAlias:v9];
  }

  return v7;
}

- (void)assembleBulletin
{
  v3.receiver = self;
  v3.super_class = GKTTRUploadRequestBulletin;
  [(GKTTRBulletin *)&v3 assembleBulletin];
  [(GKBulletin *)self setCategoryIdentifier:@"GKNotificationCategoryActionsTTRUploadRequest"];
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKTTRBulletin: loadBulletinsForPushNotification", v11, 2u);
  }

  v9 = [[GKTTRUploadRequestBulletin alloc] initWithPushNotification:notificationCopy];
  [(GKTTRUploadRequestBulletin *)v9 assembleBulletin];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  handlerCopy[2](handlerCopy, v10);
}

@end