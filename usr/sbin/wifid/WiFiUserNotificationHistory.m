@interface WiFiUserNotificationHistory
- (WiFiUserNotificationHistory)init;
- (int)canPresentRecommendationForSSID:(id)a3 currentLocation:(id)a4;
- (void)dealloc;
- (void)reset;
- (void)resetAttemptsForSSID:(id)a3;
@end

@implementation WiFiUserNotificationHistory

- (WiFiUserNotificationHistory)init
{
  v5.receiver = self;
  v5.super_class = WiFiUserNotificationHistory;
  v2 = [(WiFiUserNotificationHistory *)&v5 init];
  v3 = objc_alloc_init(NSMutableDictionary);
  v2->_maxSystemCancellationAttempts = 2;
  v2->_notifications = v3;
  v2->_recommendationDistanceThreshold = 4000.0;
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiUserNotificationHistory;
  [(WiFiUserNotificationHistory *)&v3 dealloc];
}

- (int)canPresentRecommendationForSSID:(id)a3 currentLocation:(id)a4
{
  if (![(WiFiUserNotificationHistory *)self lastRecommendedSSID]|| ![(NSMutableDictionary *)[(WiFiUserNotificationHistory *)self notifications] count])
  {
    return 0;
  }

  if (!a3)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil ssid", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]", v22}];
    }

    goto LABEL_24;
  }

  v7 = [(NSString *)[(WiFiUserNotificationHistory *)self lastRecommendedSSID] isEqualToString:a3];
  v8 = [(NSMutableDictionary *)[(WiFiUserNotificationHistory *)self notifications] objectForKey:[(WiFiUserNotificationHistory *)self lastRecommendedSSID]];
  if ([v8 objectForKey:@"response"])
  {
    v9 = [objc_msgSend(v8 objectForKey:{@"response", "integerValue"}] == 5;
  }

  else
  {
    v9 = 0;
  }

  [objc_msgSend(v8 objectForKey:{@"date", "timeIntervalSinceNow"}];
  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ssid: %@ lastRecommendedSSID: %@ lastResponseWasSystemCancelled: %d lessThan24Hours: %d", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]", a3, -[WiFiUserNotificationHistory lastRecommendedSSID](self, "lastRecommendedSSID", -86400.0), v9, v12 >= -86400.0}];
  }

  objc_autoreleasePoolPop(v13);
  v14 = [v8 objectForKey:@"attempt"];
  if (v14 == 0 || !(v7 & v9))
  {
    v17 = [v8 objectForKey:@"location"];
    if (v17)
    {
      if (a4)
      {
        [a4 distanceFromLocation:v17];
        v19 = v18;
        if (v18 <= 4000.0 && v12 >= -86400.0)
        {
          v10 = objc_autoreleasePoolPush();
          v16 = 3;
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: suppressing notification, is at less than %.2fm since last recommendation (diff=%.2fm)", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]", 0x40AF400000000000, *&v19}];
          }

          goto LABEL_25;
        }

        goto LABEL_32;
      }

      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no current location available", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]"}];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no location available from last recommendation", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]"}];
      }
    }

    objc_autoreleasePoolPop(v20);
LABEL_32:
    if (v12 >= -86400.0)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: supressing notification, has been less than a day since last notification and we have no location", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]"}];
      }

      v16 = 4;
      goto LABEL_25;
    }

    return 0;
  }

  v15 = [v14 unsignedIntegerValue];
  v10 = objc_autoreleasePoolPush();
  if (v15 >= 2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: hit max attempts for system cancelled for ssid %@", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]", a3}];
    }

    v16 = 2;
    goto LABEL_25;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: allowing a re-prompting due to last response was system cancelled (total attempts: %lu)", "-[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:]", v15}];
  }

LABEL_24:
  v16 = 0;
LABEL_25:
  objc_autoreleasePoolPop(v10);
  return v16;
}

- (void)resetAttemptsForSSID:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: resetting attempts for ssid %@", "-[WiFiUserNotificationHistory resetAttemptsForSSID:]", a3}];
  }

  objc_autoreleasePoolPop(v5);
  v6 = [(NSMutableDictionary *)[(WiFiUserNotificationHistory *)self notifications] objectForKey:a3];
  if (v6)
  {
    v10 = [v6 mutableCopy];
    [v10 removeObjectForKey:@"attempt"];
    [(NSMutableDictionary *)[(WiFiUserNotificationHistory *)self notifications] setObject:v10 forKey:a3];
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: history for %@: %@", "-[WiFiUserNotificationHistory resetAttemptsForSSID:]", v10, a3}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no history found for ssid %@", "-[WiFiUserNotificationHistory resetAttemptsForSSID:]", a3}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: history %@", "-[WiFiUserNotificationHistory resetAttemptsForSSID:]", -[WiFiUserNotificationHistory notifications](self, "notifications")}];
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: reseting state for notifications: %@", "-[WiFiUserNotificationHistory reset]", -[WiFiUserNotificationHistory notifications](self, "notifications")}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = [(WiFiUserNotificationHistory *)self notifications];

  [(NSMutableDictionary *)v4 removeAllObjects];
}

@end