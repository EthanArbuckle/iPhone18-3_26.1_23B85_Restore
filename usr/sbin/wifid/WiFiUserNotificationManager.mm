@interface WiFiUserNotificationManager
+ (unint64_t)defaultThrottlingPeriodForBlacklistingType:(int)type source:(int64_t)source count:(unint64_t)count;
- (WiFiUserNotificationManager)initWithQueue:(id)queue supportsWAPI:(BOOL)i manager:(__WiFiManager *)manager;
- (int)dispatchNotificationWithAskToJoinHotspotRecommendation:(id)recommendation;
- (int)dispatchNotificationWithRecommendation:(id)recommendation currentLocation:(id)location force:(BOOL)force;
- (void)_cancelTimer;
- (void)_startTimerForNotificationWithUserInfo:(id)info;
- (void)_submitAnalyticsEventForJoinAlertReason:(int)reason action:(unint64_t)action visibleDuration:(double)duration;
- (void)_submitAnalyticsEventForRecommendation:(id)recommendation action:(unint64_t)action visibleDuration:(double)duration location:(id)location;
- (void)_timeoutTimerDidFire:(id)fire;
- (void)dealloc;
- (void)dismissJoinAlerts;
- (void)dispatchAccessoryJoinAlertForNetwork:(id)network unsecured:(BOOL)unsecured;
- (void)dispatchNotificationWithColocatedScanResult:(id)result fromScanResult:(id)scanResult;
- (void)dispatchNotificationWithRandomMAC:(id)c;
- (void)registerCallback:(id)callback withContext:(void *)context;
- (void)reset;
- (void)startListening;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WiFiUserNotificationManager

- (WiFiUserNotificationManager)initWithQueue:(id)queue supportsWAPI:(BOOL)i manager:(__WiFiManager *)manager
{
  v12.receiver = self;
  v12.super_class = WiFiUserNotificationManager;
  v8 = [(WiFiUserNotificationManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_queue = queue;
    v8->_supportsWAPI = i;
    v8->_managerRef = manager;
    v10 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.wifid.usernotification"];
    v9->_userNotificationCenterWiFi = v10;
    [(UNUserNotificationCenter *)v10 setDelegate:v9];
    [(UNUserNotificationCenter *)v9->_userNotificationCenterWiFi requestAuthorizationWithOptions:3 completionHandler:&stru_100262F60];
    [(UNUserNotificationCenter *)v9->_userNotificationCenterWiFi removeAllDeliveredNotifications];
    v9->_notificationMapping = objc_alloc_init(NSMutableDictionary);
    v9->_recentNotifications = objc_alloc_init(NSMutableDictionary);
    v9->_timeoutPeriod = 30;
    v9->_shouldTimeOutRecommendation = 1;
    v9->_deviceClass = MGGetSInt32Answer();
    v9->_notificationHistory = objc_alloc_init(WiFiUserNotificationHistory);
  }

  return v9;
}

- (void)dealloc
{
  callback = self->_callback;
  if (callback)
  {
    _Block_release(callback);
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
  }

  self->_queue = 0;
  v5.receiver = self;
  v5.super_class = WiFiUserNotificationManager;
  [(WiFiUserNotificationManager *)&v5 dealloc];
}

- (void)startListening
{
  [(UNUserNotificationCenter *)self->_userNotificationCenterWiFi setWantsNotificationResponsesDelivered];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: listening for user notifications", "-[WiFiUserNotificationManager startListening]"}];
  }

  objc_autoreleasePoolPop(v2);
}

+ (unint64_t)defaultThrottlingPeriodForBlacklistingType:(int)type source:(int64_t)source count:(unint64_t)count
{
  result = 2592000;
  if (type != 1)
  {
    if (source == 3)
    {
      if (os_variant_has_internal_content() && (_os_feature_enabled_impl() & 1) != 0)
      {
        return 10;
      }

      else
      {
        return 604800;
      }
    }

    else
    {
      v6 = 604800;
      if (count != 2)
      {
        v6 = 2592000;
      }

      if (count >= 2)
      {
        return v6;
      }

      else
      {
        return 86400;
      }
    }
  }

  return result;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  [(WiFiUserNotificationManager *)self _cancelTimer];
  v8 = [objc_msgSend(objc_msgSend(response "notification")];
  v9 = [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] objectForKey:v8];
  v10 = [v9 objectForKey:@"SSID"];
  v11 = [v9 objectForKey:@"BrokenBackhaulNetworkName"];
  v39 = [v9 objectForKey:@"Recommendation"];
  [-[NSMutableDictionary objectForKey:](-[WiFiUserNotificationManager recentNotifications](self "recentNotifications")];
  v13 = v12;
  actionIdentifier = [response actionIdentifier];
  v15 = [objc_msgSend(objc_msgSend(objc_msgSend(response "notification")];
  v16 = objc_autoreleasePoolPush();
  if (!v10)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ssid not found for notification (%@)", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", v8}];
    }

    objc_autoreleasePoolPop(v16);
    v21 = 0;
    goto LABEL_91;
  }

  v17 = -v13;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Handle action %@ for notification %@ (SSID: %@, category: %@) visibleDuration %f", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", actionIdentifier, v8, v10, v15, *&v17}];
  }

  objc_autoreleasePoolPop(v16);
  v18 = [v15 isEqualToString:@"joinalert"];
  v37 = v11;
  if (v18)
  {
    handlerCopy7 = handler;
    v38 = 0;
    v20 = 0;
    v21 = 2;
  }

  else if ([v15 isEqualToString:@"recommendation"])
  {
    handlerCopy7 = handler;
    v20 = 0;
    v38 = 1;
    v21 = 1;
  }

  else if ([v15 isEqualToString:@"lowdatamodealert"])
  {
    handlerCopy7 = handler;
    v38 = 0;
    v20 = 0;
    v21 = 3;
  }

  else if ([v15 isEqualToString:@"randommac"])
  {
    handlerCopy7 = handler;
    v38 = 0;
    v20 = 0;
    v21 = 4;
  }

  else if ([v15 isEqualToString:@"colocatedssid"])
  {
    handlerCopy7 = handler;
    v38 = 0;
    v21 = 5;
    v20 = 1;
  }

  else
  {
    if ([v15 isEqualToString:@"asktojoinpersonalhotspot"])
    {
      if (([actionIdentifier isEqualToString:@"join"] & 1) == 0)
      {
        if (![actionIdentifier isEqualToString:@"autojoin"])
        {
          handlerCopy7 = handler;
          v38 = 0;
          v20 = 0;
          v21 = 6;
          v36 = 1;
          goto LABEL_31;
        }

        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100112308;
        block[3] = &unk_10025ED68;
        block[4] = self;
        dispatch_async(queue, block);
      }

      v38 = 0;
      v21 = 6;
      v23 = 1;
      v9 = v10;
      v24 = v39;
LABEL_40:
      if (v11)
      {
        goto LABEL_41;
      }

LABEL_77:
      if (!v38)
      {
        goto LABEL_81;
      }

      goto LABEL_78;
    }

    handlerCopy7 = handler;
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unknown notificationType for category %@", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", v15}];
    }

    objc_autoreleasePoolPop(v25);
    v38 = 0;
    v20 = 0;
    v21 = 0;
  }

  if (([actionIdentifier isEqualToString:@"join"] & 1) == 0)
  {
    [actionIdentifier isEqualToString:@"autojoin"];
    v36 = 0;
LABEL_31:
    if ([actionIdentifier isEqualToString:@"settings"])
    {
      v28 = [v9 objectForKey:@"Reason"];
      if (v28)
      {
        -[WiFiUserNotificationManager _submitAnalyticsEventForJoinAlertReason:action:visibleDuration:](self, "_submitAnalyticsEventForJoinAlertReason:action:visibleDuration:", [v28 intValue], 5, v17);
        v23 = 3;
LABEL_37:
        v9 = v10;
LABEL_38:
        handler = handlerCopy7;
        v24 = v39;
        goto LABEL_39;
      }

      sub_1001AE758();
      v23 = 3;
      goto LABEL_96;
    }

    if ([actionIdentifier isEqualToString:@"disconnect"])
    {
      v29 = [v9 objectForKey:@"Reason"];
      if (v29)
      {
        -[WiFiUserNotificationManager _submitAnalyticsEventForJoinAlertReason:action:visibleDuration:](self, "_submitAnalyticsEventForJoinAlertReason:action:visibleDuration:", [v29 intValue], 4, v17);
        v23 = 2;
        goto LABEL_37;
      }

      sub_1001AE758();
      v23 = 2;
LABEL_96:
      v9 = v10;
      goto LABEL_97;
    }

    if (![actionIdentifier isEqualToString:@"joincolocated"])
    {
      if (([actionIdentifier isEqualToString:@"com.apple.UNNotificationSilenceActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", UNNotificationDismissActionIdentifier))
      {
        if (v38)
        {
          handler = handlerCopy7;
          v24 = v39;
          if (!v39)
          {
            sub_1001AE7C4(v8);
            v23 = 0;
            v9 = 0;
LABEL_80:
            v21 = 1;
            goto LABEL_81;
          }

          v30 = [v9 objectForKey:@"Location"];
          if (!v30)
          {
            v31 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: location is not present", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]"}];
            }

            objc_autoreleasePoolPop(v31);
          }

          [(WiFiUserNotificationManager *)self _submitAnalyticsEventForRecommendation:v39 action:2 visibleDuration:v30 location:v17];
          v23 = 0;
          if (v37)
          {
            v32 = v36;
          }

          else
          {
            v32 = 0;
          }

          if (v32 != 1)
          {
            v9 = v39;
LABEL_78:
            if ([objc_msgSend(v24 "network")] == 3)
            {
              [objc_msgSend(v24 "network")];
              CWFDidReceiveResponseToNearbyCaptiveAssistNotification();
            }

            goto LABEL_80;
          }

          v9 = v39;
LABEL_41:
          CWFDidReceiveResponseToPersonalHotspotNotificationForBrokenBackhaulNetworkName();
          v21 = 6;
          goto LABEL_81;
        }

        v24 = v39;
        if (v18)
        {
          v33 = [v9 objectForKey:@"Reason"];
          handler = handlerCopy7;
          if (!v33)
          {
            sub_1001AE758();
            v23 = 0;
            v21 = 2;
            v9 = v10;
            goto LABEL_81;
          }

          -[WiFiUserNotificationManager _submitAnalyticsEventForJoinAlertReason:action:visibleDuration:](self, "_submitAnalyticsEventForJoinAlertReason:action:visibleDuration:", [v33 intValue], 2, v17);
          v38 = 0;
          v23 = 0;
          v9 = v10;
        }

        else
        {
          if (!v20)
          {
            v38 = 0;
            v23 = 0;
            if (v36)
            {
              v9 = v10;
            }

            else
            {
              v9 = 0;
            }

            handler = handlerCopy7;
            v11 = v37;
            if (!v36)
            {
              goto LABEL_77;
            }

            goto LABEL_40;
          }

          if (![v9 objectForKey:@"ToScanResult"])
          {
            sub_1001AE6E8(v8);
            v23 = 0;
            v9 = 0;
            v21 = 5;
            goto LABEL_97;
          }

          handler = handlerCopy7;
          if (![v9 objectForKey:@"FromScanResult"])
          {
            sub_1001AE678(v8);
            v23 = 0;
            v9 = 0;
            v21 = 5;
            goto LABEL_81;
          }

          v38 = 0;
          v23 = 0;
        }

        goto LABEL_39;
      }

      v34 = [objc_msgSend(response "actionIdentifier")];
      if (v34)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      if (v34)
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_38;
    }

    if (![v9 objectForKey:@"ToScanResult"])
    {
      sub_1001AE6E8(v8);
      goto LABEL_93;
    }

    handler = handlerCopy7;
    v24 = v39;
    if ([v9 objectForKey:@"FromScanResult"])
    {
      v23 = 1;
LABEL_39:
      v11 = v37;
      if (!v36)
      {
        goto LABEL_77;
      }

      goto LABEL_40;
    }

    sub_1001AE678(v8);
LABEL_91:
    v23 = 0;
    v9 = 0;
    goto LABEL_81;
  }

  v24 = v39;
  if (!v39)
  {
    sub_1001AE7C4(v8);
LABEL_93:
    v23 = 0;
    v9 = 0;
LABEL_97:
    handler = handlerCopy7;
    goto LABEL_81;
  }

  v26 = [v9 objectForKey:@"Location"];
  handler = handlerCopy7;
  if (!v26)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: location is not present", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]"}];
    }

    objc_autoreleasePoolPop(v27);
  }

  v23 = 1;
  [(WiFiUserNotificationManager *)self _submitAnalyticsEventForRecommendation:v39 action:1 visibleDuration:v26 location:v17];
  v9 = v39;
  if (v38)
  {
    goto LABEL_78;
  }

  v9 = v39;
LABEL_81:
  [(WiFiUserNotificationHistory *)[(WiFiUserNotificationManager *)self notificationHistory] handleNotificationResponseForSSID:v10 type:v21 response:v23];
  if (self->_queue && [(WiFiUserNotificationManager *)self callback])
  {
    v35 = self->_queue;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100112320;
    v40[3] = &unk_1002609C0;
    v40[4] = self;
    v40[5] = v9;
    v41 = v21;
    v42 = v23;
    dispatch_sync(v35, v40);
  }

  if (handler)
  {
    (*(handler + 2))(handler);
  }

  [(WiFiUserNotificationManager *)self setVisibleRequest:0];
}

- (int)dispatchNotificationWithRecommendation:(id)recommendation currentLocation:(id)location force:(BOOL)force
{
  if (recommendation)
  {
    forceCopy = force;
    if (os_variant_has_internal_content() && _os_feature_enabled_impl())
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: [NearbyCaptiveAssistTestable] Location/time-based banner suppression policy for recommended networks is DISABLED: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]", objc_msgSend(recommendation, "SSID")}];
      }

      goto LABEL_18;
    }

    v10 = -[WiFiUserNotificationHistory canPresentRecommendationForSSID:currentLocation:](-[WiFiUserNotificationManager notificationHistory](self, "notificationHistory"), "canPresentRecommendationForSSID:currentLocation:", [recommendation SSID], location);
    v11 = v10;
    if (forceCopy || !v10)
    {
      if (!forceCopy)
      {
        goto LABEL_19;
      }

      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: forcing notification for %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]", recommendation}];
      }

LABEL_18:
      objc_autoreleasePoolPop(v9);
      v11 = 0;
LABEL_19:
      if ([(WiFiUserNotificationManager *)self visibleRequest])
      {
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1001129B8;
        v34[3] = &unk_100262FB0;
        v34[4] = self;
        v34[5] = recommendation;
        v34[6] = location;
        v35 = forceCopy;
        [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] getDeliveredNotificationsWithCompletionHandler:v34];
        return v11;
      }

      if ([objc_msgSend(recommendation "network")] == 2 || objc_msgSend(objc_msgSend(recommendation, "network"), "source") == 3)
      {
        shouldTimeOutRecommendation = [(WiFiUserNotificationManager *)self shouldTimeOutRecommendation];
      }

      else
      {
        shouldTimeOutRecommendation = 0;
      }

      uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
      v16 = objc_alloc_init(UNMutableNotificationContent);
      if (self->_supportsWAPI)
      {
        v17 = @"WIFI_RECOMMENDATION_TITLE_CH";
      }

      else
      {
        v17 = @"WIFI_RECOMMENDATION_TITLE";
      }

      [v16 setTitle:sub_10010E234(v17)];
      if ([objc_msgSend(recommendation "network")] == 1)
      {
        v18 = @"WIFI_RECOMMENDATION_BODY_WALLET";
      }

      else
      {
        if ([objc_msgSend(recommendation "network")] == 3 && objc_msgSend(objc_msgSend(recommendation, "network"), "receivedFromDeviceName"))
        {
          v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(@"WIFI_RECOMMENDATION_BODY_WITH_DEVICE_NAME"), [objc_msgSend(recommendation "network")], objc_msgSend(objc_msgSend(recommendation, "network"), "receivedFromDeviceName"));
          goto LABEL_35;
        }

        v18 = @"WIFI_RECOMMENDATION_BODY";
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(v18), [objc_msgSend(recommendation "network")], v28);
LABEL_35:
      v20 = v19;
      if (self->_enableTestMode)
      {
        v21 = [objc_msgSend(recommendation "network")];
        network = [recommendation network];
        if (v21 == 2)
        {
          v23 = -[NSString stringByAppendingFormat:](v20, "stringByAppendingFormat:", @"\nSource: 3Bars\nScore: %lu\nAccessPoints: %lu\nBSSID: %@", [objc_msgSend(network "popularityScore")], objc_msgSend(objc_msgSend(objc_msgSend(recommendation, "network"), "accessPoints"), "count"), objc_msgSend(objc_msgSend(recommendation, "scannedNetwork"), "BSSID"));
LABEL_40:
          v20 = v23;
          goto LABEL_41;
        }

        if ([network source] == 1)
        {
          v23 = -[NSString stringByAppendingFormat:](v20, "stringByAppendingFormat:", @"\nSource: Wallet\nIdentifier: %@", [objc_msgSend(recommendation "network")], v29, v30);
          goto LABEL_40;
        }
      }

LABEL_41:
      [v16 setBody:v20];
      [v16 setCategoryIdentifier:@"recommendation"];
      [v16 setShouldSuppressDefaultAction:1];
      if ([objc_msgSend(recommendation "network")] == 3)
      {
        v24 = 1;
      }

      else
      {
        v24 = 5;
      }

      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3052000000;
      v33[3] = sub_100002BB0;
      v33[4] = sub_1000067AC;
      v33[5] = self;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100112B60;
      v31[3] = &unk_100262FD8;
      v32 = shouldTimeOutRecommendation;
      v31[4] = uUIDString;
      v31[5] = recommendation;
      v31[6] = location;
      v31[7] = v33;
      [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] addNotificationRequest:[UNNotificationRequest withCompletionHandler:"requestWithIdentifier:content:trigger:destinations:" requestWithIdentifier:uUIDString content:v16 trigger:0 destinations:v24], v31];
      v25 = +[NSMutableDictionary dictionary];
      v26 = v25;
      if (location)
      {
        [v25 setObject:location forKey:@"Location"];
      }

      [v26 setObject:recommendation forKey:@"Recommendation"];
      [v26 setObject:objc_msgSend(recommendation forKey:{"SSID"), @"SSID"}];
      [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] setObject:v26 forKey:uUIDString];
      -[WiFiUserNotificationHistory presentedNotificationForSSID:type:currentLocation:](-[WiFiUserNotificationManager notificationHistory](self, "notificationHistory"), "presentedNotificationForSSID:type:currentLocation:", [recommendation SSID], 1, location);
      [(WiFiUserNotificationManager *)self setLastRecommendationLocation:location];
      if (v16)
      {
        CFRelease(v16);
      }

      _Block_object_dispose(v33, 8);
      return v11;
    }

    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: unable to dispatch recommendation for %@, reason: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]", objc_msgSend(recommendation, "SSID"), sub_100095E40(v11)}];
    }

    objc_autoreleasePoolPop(v12);
    if (v11 == 2)
    {
      -[WiFiUserNotificationHistory resetAttemptsForSSID:](-[WiFiUserNotificationManager notificationHistory](self, "notificationHistory"), "resetAttemptsForSSID:", [recommendation SSID]);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil recommendation", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]"}];
    }

    objc_autoreleasePoolPop(v13);
    return 1;
  }

  return v11;
}

- (void)dispatchNotificationWithRandomMAC:(id)c
{
  if (c)
  {
    if ([(WiFiUserNotificationManager *)self visibleRequest])
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100113050;
      v14[3] = &unk_100263000;
      v14[4] = self;
      v14[5] = c;
      [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] getDeliveredNotificationsWithCompletionHandler:v14];
    }

    else
    {
      uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
      v7 = objc_alloc_init(UNMutableNotificationContent);
      if (self->_supportsWAPI)
      {
        v8 = @"WIFI_RANDOM_MAC_TITLE_CH";
      }

      else
      {
        v8 = @"WIFI_RANDOM_MAC_TITLE";
      }

      v9 = [NSString stringWithFormat:sub_10010E234(v8), c];
      v10 = sub_10010E234(@"WIFI_RANDOM_MAC_BODY");
      [v7 setTitle:v9];
      [v7 setBody:v10];
      [v7 setCategoryIdentifier:@"randommac"];
      [v7 setShouldSuppressDefaultAction:1];
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3052000000;
      v13[3] = sub_100002BB0;
      v13[4] = sub_1000067AC;
      v13[5] = self;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100113164;
      v12[3] = &unk_100263028;
      v12[4] = uUIDString;
      v12[5] = v13;
      [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] addNotificationRequest:[UNNotificationRequest withCompletionHandler:"requestWithIdentifier:content:trigger:destinations:" requestWithIdentifier:uUIDString content:v7 trigger:0 destinations:1], v12];
      notificationMapping = [(WiFiUserNotificationManager *)self notificationMapping];
      v15 = @"SSID";
      cCopy = c;
      [(NSMutableDictionary *)notificationMapping setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v15 forKeys:1 count:?], uUIDString];
      [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self recentNotifications] setObject:+[NSDate forKey:"date"], c];
      if (v7)
      {
        CFRelease(v7);
      }

      _Block_object_dispose(v13, 8);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil ssid", "-[WiFiUserNotificationManager dispatchNotificationWithRandomMAC:]"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)dispatchAccessoryJoinAlertForNetwork:(id)network unsecured:(BOOL)unsecured
{
  if (unsecured)
  {
    v4 = 7;
  }

  else
  {
    v4 = 6;
  }

  [(WiFiUserNotificationManager *)self dispatchJoinAlertForNetwork:network withProviderName:0 andReason:v4];
}

- (void)dispatchNotificationWithColocatedScanResult:(id)result fromScanResult:(id)scanResult
{
  if ([result networkName])
  {
    if ([scanResult networkName])
    {
      if ([(WiFiUserNotificationManager *)self visibleRequest])
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001144D8;
        v23[3] = &unk_1002630C8;
        v23[4] = self;
        v23[5] = result;
        v23[6] = scanResult;
        [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] getDeliveredNotificationsWithCompletionHandler:v23];
        return;
      }

      uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
      v9 = objc_alloc_init(UNMutableNotificationContent);
      if (self->_supportsWAPI)
      {
        v10 = @"WIFI_COLOCATED_SSID_TITLE_CH";
      }

      else
      {
        v10 = @"WIFI_COLOCATED_SSID_TITLE";
      }

      if (self->_supportsWAPI)
      {
        v11 = @"WIFI_COLOCATED_SSID_BODY_CH";
      }

      else
      {
        v11 = @"WIFI_COLOCATED_SSID_BODY";
      }

      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(v10), [result networkName]);
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(v11), [result networkName]);
      if (os_variant_has_internal_content())
      {
        v14 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"ColocatedSSIDNotificationTitleOverride"];
        if (v14)
        {
          v12 = v14;
        }

        v15 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"ColocatedSSIDNotificationBodyOverride"];
        if (v15)
        {
          v13 = v15;
        }
      }

      [v9 setTitle:v12];
      [v9 setBody:v13];
      [v9 setShouldSuppressDefaultAction:1];
      [v9 setCategoryIdentifier:@"colocatedssid"];
      v16 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v9 trigger:0 destinations:1];
      notificationMapping = [(WiFiUserNotificationManager *)self notificationMapping];
      v24[0] = @"SSID";
      v25[0] = [result networkName];
      v24[1] = @"ToScanResult";
      v25[1] = [result scanRecord];
      v24[2] = @"FromScanResult";
      v25[2] = [scanResult scanRecord];
      [(NSMutableDictionary *)notificationMapping setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v25 forKeys:v24 count:3], uUIDString];
      -[NSMutableDictionary setObject:forKey:](-[WiFiUserNotificationManager recentNotifications](self, "recentNotifications"), "setObject:forKey:", +[NSDate date](NSDate, "date"), [result networkName]);
      if (os_variant_has_internal_content() && (v18 = [+[NSUserDefaults objectForKey:"objectForKey:"]!= 0)
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Will invoke -[UNUserNotificationCenter didReceiveNotificationResponse:withCompletionHandler:] with test action %@", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]", v18}];
        }

        objc_autoreleasePoolPop(v19);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1001145F8;
        v22[3] = &unk_10025ED68;
        v22[4] = v18;
        [(WiFiUserNotificationManager *)self userNotificationCenter:[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] didReceiveNotificationResponse:+[UNNotificationResponse responseWithNotification:actionIdentifier:](UNNotificationResponse withCompletionHandler:"responseWithNotification:actionIdentifier:", +[UNNotification notificationWithRequest:date:sourceIdentifier:intentIdentifiers:](UNNotification, "notificationWithRequest:date:sourceIdentifier:intentIdentifiers:", v16, +[NSDate date], &stru_1002680F8, &__NSArray0__struct), v18), v22];
        if (!v9)
        {
          return;
        }
      }

      else
      {
        v21[0] = 0;
        v21[1] = v21;
        v21[2] = 0x3052000000;
        v21[3] = sub_100002BB0;
        v21[4] = sub_1000067AC;
        v21[5] = self;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10011466C;
        v20[3] = &unk_100263028;
        v20[4] = uUIDString;
        v20[5] = v21;
        [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] addNotificationRequest:v16 withCompletionHandler:v20];
        _Block_object_dispose(v21, 8);
        if (!v9)
        {
          return;
        }
      }

      CFRelease(v9);
      return;
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil fromScanResult.networkName", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]"}];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil toScanResult.networkName", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]"}];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (int)dispatchNotificationWithAskToJoinHotspotRecommendation:(id)recommendation
{
  if (recommendation)
  {
    if ([(WiFiUserNotificationManager *)self visibleRequest])
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100114B34;
      v16[3] = &unk_1002630F0;
      v16[4] = self;
      [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] getDeliveredNotificationsWithCompletionHandler:v16];
      return 5;
    }

    shouldTimeOutRecommendation = [(WiFiUserNotificationManager *)self shouldTimeOutRecommendation];
    uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
    v9 = objc_alloc_init(UNMutableNotificationContent);
    v10 = +[NSMutableDictionary dictionary];
    if ([objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")] - 3 <= 1 && (v11 = objc_msgSend(objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager, "sharedXPCManager"), "coreWiFiInterface"), "networkName")) != 0)
    {
      v12 = v11;
      if (!CWFShouldPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName())
      {
        return 4;
      }

      [v9 setTitle:sub_10010E234(@"PERSONAL_HOTSPOT_BBH_BANNER_TITLE")];
      [v9 setBody:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(@"PERSONAL_HOTSPOT_BBH_BANNER_BODY"), recommendation)}];
      [v10 setObject:v12 forKeyedSubscript:@"BrokenBackhaulNetworkName"];
    }

    else
    {
      [v9 setTitle:sub_10010E234(@"PERSONAL_HOTSPOT_NEARBY_BANNER_TITLE")];
      [v9 setBody:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", sub_10010E234(@"PERSONAL_HOTSPOT_NEARBY_BANNER_BODY"), recommendation)}];
      v12 = 0;
    }

    [v9 setCategoryIdentifier:@"asktojoinpersonalhotspot"];
    [v9 setShouldSuppressDefaultAction:1];
    [v9 setIcon:{+[UNNotificationIcon iconNamed:](UNNotificationIcon, "iconNamed:", @"personal-hotspot"}];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3052000000;
    v15[3] = sub_100002BB0;
    v15[4] = sub_1000067AC;
    v15[5] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100114BF0;
    v13[3] = &unk_100262FD8;
    v14 = shouldTimeOutRecommendation;
    v13[4] = uUIDString;
    v13[5] = recommendation;
    v13[6] = v12;
    v13[7] = v15;
    [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] addNotificationRequest:[UNNotificationRequest withCompletionHandler:"requestWithIdentifier:content:trigger:destinations:" requestWithIdentifier:uUIDString content:v9 trigger:0 destinations:1], v13];
    [v10 setObject:recommendation forKey:@"SSID"];
    [v10 setObject:&off_1002820E8 forKey:@"type"];
    [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] setObject:v10 forKey:uUIDString];
    [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self recentNotifications] setObject:+[NSDate forKey:"date"], recommendation];
    if (v9)
    {
      CFRelease(v9);
    }

    _Block_object_dispose(v15, 8);
    return 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: nil SSID", "-[WiFiUserNotificationManager dispatchNotificationWithAskToJoinHotspotRecommendation:]"}];
    }

    objc_autoreleasePoolPop(v6);
    return 1;
  }
}

- (void)registerCallback:(id)callback withContext:(void *)context
{
  [(WiFiUserNotificationManager *)self setCallback:_Block_copy(callback)];

  [(WiFiUserNotificationManager *)self setCallbackContext:context];
}

- (void)dismissJoinAlerts
{
  if ([(WiFiUserNotificationManager *)self visibleRequest])
  {
    [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] removeAllDeliveredNotifications];
    v3 = [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] objectForKey:[(WiFiUserNotificationManager *)self visibleRequest]];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 objectForKey:@"type"];
      if (v5)
      {
        intValue = [v5 intValue];
        v7 = [v4 objectForKey:@"SSID"];
        if (intValue == 6)
        {
          v8 = v7;
          if (v7)
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Dismissing join alert for %@", "-[WiFiUserNotificationManager dismissJoinAlerts]", -[WiFiUserNotificationManager visibleRequest](self, "visibleRequest")}];
            }

            objc_autoreleasePoolPop(v9);
            callback = [(WiFiUserNotificationManager *)self callback];
            (callback)[2](callback, 6, v8, 5, [(WiFiUserNotificationManager *)self callbackContext]);
            [(WiFiUserNotificationManager *)self _cancelTimer];
            [(WiFiUserNotificationManager *)self setVisibleRequest:0];
            notificationMapping = [(WiFiUserNotificationManager *)self notificationMapping];

            [(NSMutableDictionary *)notificationMapping removeAllObjects];
          }
        }
      }
    }
  }
}

- (void)_startTimerForNotificationWithUserInfo:(id)info
{
  if (self->_timeoutTimer)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: previous timer already in progress, bailing for new userInfo %@", "-[WiFiUserNotificationManager _startTimerForNotificationWithUserInfo:]", info}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = [info copy];
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: starting timer for userInfo %@", "-[WiFiUserNotificationManager _startTimerForNotificationWithUserInfo:]", v6}];
    }

    objc_autoreleasePoolPop(v7);
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100115198;
    handler[3] = &unk_100261330;
    handler[4] = self;
    handler[5] = v6;
    dispatch_source_set_event_handler(v8, handler);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001151A4;
    v10[3] = &unk_10025ED68;
    v10[4] = v8;
    dispatch_source_set_cancel_handler(v8, v10);
    v9 = dispatch_time(0, 1000000000 * self->_timeoutPeriod);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    self->_timeoutTimer = v8;
    dispatch_activate(v8);
  }
}

- (void)_timeoutTimerDidFire:(id)fire
{
  [(WiFiUserNotificationManager *)self _cancelTimer];
  v5 = [fire objectForKeyedSubscript:@"identifier"];
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timeout timer fired for identifier %@ (self.visibleRequest %@)", "-[WiFiUserNotificationManager _timeoutTimerDidFire:]", v5, -[WiFiUserNotificationManager visibleRequest](self, "visibleRequest")}];
  }

  objc_autoreleasePoolPop(v6);
  if ([(NSString *)[(WiFiUserNotificationManager *)self visibleRequest] isEqualToString:v5])
  {
    v7 = [fire objectForKeyedSubscript:@"ssid"];
    v8 = [objc_msgSend(fire objectForKeyedSubscript:{@"type", "intValue"}];
    v15 = v5;
    [(UNUserNotificationCenter *)[(WiFiUserNotificationManager *)self userNotificationCenterWiFi] removeDeliveredNotificationsWithIdentifiers:[NSArray arrayWithObjects:&v15 count:1]];
    callback = [(WiFiUserNotificationManager *)self callback];
    callback[2](callback, v8, v7, 5, [(WiFiUserNotificationManager *)self callbackContext]);
    v10 = [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] objectForKey:v5];
    [-[NSMutableDictionary objectForKey:](-[WiFiUserNotificationManager recentNotifications](self "recentNotifications")];
    v12 = -v11;
    if (v8 == 1)
    {
      v13 = [fire objectForKeyedSubscript:@"location"];
      if (!v13)
      {
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: location is not present", "-[WiFiUserNotificationManager _timeoutTimerDidFire:]"}];
        }

        objc_autoreleasePoolPop(v14);
      }

      -[WiFiUserNotificationManager _submitAnalyticsEventForRecommendation:action:visibleDuration:location:](self, "_submitAnalyticsEventForRecommendation:action:visibleDuration:location:", [v10 objectForKey:@"Recommendation"], 3, v13, v12);
    }

    else if (v8 == 2)
    {
      -[WiFiUserNotificationManager _submitAnalyticsEventForJoinAlertReason:action:visibleDuration:](self, "_submitAnalyticsEventForJoinAlertReason:action:visibleDuration:", [objc_msgSend(v10 objectForKey:{@"Reason", "intValue"}], 3, v12);
    }

    [(WiFiUserNotificationHistory *)[(WiFiUserNotificationManager *)self notificationHistory] handleNotificationResponseForSSID:v7 type:v8 response:5];
    [(WiFiUserNotificationManager *)self setVisibleRequest:0];
    [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self notificationMapping] removeAllObjects];
  }
}

- (void)_submitAnalyticsEventForRecommendation:(id)recommendation action:(unint64_t)action visibleDuration:(double)duration location:(id)location
{
  v10 = [objc_msgSend(recommendation "scannedNetwork")];
  if ([objc_msgSend(recommendation "network")])
  {
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [objc_msgSend(objc_msgSend(recommendation "network")]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_msgSend(recommendation "network")] - 1;
  if (v12 > 2)
  {
    v13 = 0;
    if (location)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = qword_1001CE860[v12];
    if (location)
    {
LABEL_6:
      [location coordinate];
      v14 = [NSNumber numberWithDouble:?];
      [location coordinate];
      location = [NSNumber numberWithDouble:v15];
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_9:
  v16 = [TBJoinAnalyticsEvent joinRecommendationEventWithSource:v13 action:action BSSID:v10 latitude:v14 longitude:location score:v11 visibleDuration:[NSNumber numberWithInteger:llround(duration)]];

  [TBAnalytics captureEvent:v16];
}

- (void)_submitAnalyticsEventForJoinAlertReason:(int)reason action:(unint64_t)action visibleDuration:(double)duration
{
  v5 = (reason - 1);
  if (v5 >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 3;
  }

  v7 = [TBJoinAnalyticsEvent joinAlertEventWithSource:v6 action:action visibleDuration:[NSNumber numberWithInteger:llround(duration)]];

  [TBAnalytics captureEvent:v7];
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: resetting states", "-[WiFiUserNotificationManager reset]"}];
  }

  objc_autoreleasePoolPop(v3);
  [(WiFiUserNotificationManager *)self setLastRecommendationLocation:0];
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: recentNotifications %@", "-[WiFiUserNotificationManager reset]", -[WiFiUserNotificationManager recentNotifications](self, "recentNotifications")}];
  }

  objc_autoreleasePoolPop(v4);
  [(NSMutableDictionary *)[(WiFiUserNotificationManager *)self recentNotifications] removeAllObjects];
  notificationHistory = [(WiFiUserNotificationManager *)self notificationHistory];

  [(WiFiUserNotificationHistory *)notificationHistory reset];
}

- (void)_cancelTimer
{
  if (self->_timeoutTimer)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: canceling timer", "-[WiFiUserNotificationManager _cancelTimer]"}];
    }

    objc_autoreleasePoolPop(v3);
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;
    if (timeoutTimer)
    {

      dispatch_source_cancel(timeoutTimer);
    }
  }
}

@end