@interface GKTurnBasedMultiplayerTurnCountBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
@end

@implementation GKTurnBasedMultiplayerTurnCountBulletin

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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerTurnCountBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v9 = +[GKReporter reporter];
  [v9 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBasedTurnCount];

  v10 = [notificationCopy objectForKey:@"i"];
  v11 = +[GKClientProxy gameCenterClient];
  if (v10)
  {
    v12 = +[GKPlayerCredentialController sharedController];
    v13 = [v12 pushCredentialForEnvironment:{objc_msgSend(v11, "environment")}];
    playerInternal = [v13 playerInternal];
    playerID = [playerInternal playerID];
    v16 = [playerID isEqualToString:v10];

    if (v16)
    {
      v29 = v11;
      v30 = v10;
      v31 = handlerCopy;
      v32 = notificationCopy;
      [notificationCopy objectForKey:@"tc"];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v37 = 0u;
      v17 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = [v21 objectForKey:@"t"];
            unsignedIntegerValue = [v22 unsignedIntegerValue];

            v24 = [v21 objectForKeyedSubscript:@"d"];
            v25 = [[GKGameDescriptor alloc] initWithPushDictionary:v24];
            bundleIdentifier = [v25 bundleIdentifier];

            if (bundleIdentifier)
            {
              v27 = +[GKBadgeController sharedController];
              bundleIdentifier2 = [v25 bundleIdentifier];
              [v27 setBadgeCount:unsignedIntegerValue forBundleID:bundleIdentifier2 badgeType:2];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v18);
      }

      handlerCopy = v31;
      notificationCopy = v32;
      v11 = v29;
      v10 = v30;
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end