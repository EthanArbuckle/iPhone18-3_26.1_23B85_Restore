@interface MSDAudioController
+ (id)sharedInstance;
- (BOOL)addRouteToSystemMusicForSpeaker;
- (BOOL)removeRouteToSystemMusicForSpeaker;
- (BOOL)setVolumeTo:(float)to forCategory:(unint64_t)category;
- (float)getVolumeForCategory:(unint64_t)category;
- (id)_NSStringFromVolumeCategory:(unint64_t)category;
- (id)_findRouteDescriptorWithRouteUID:(id)d usingRouteDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (id)_findRouteDescriptorWithUID:(id)d;
- (void)_handleAVSystemControllerDiedNotification:(id)notification;
- (void)_initializeAVSystemControllerIfNeeded;
- (void)_monitorRouteConfigUpdateForUUID:(id)d withCallback:(id)callback;
@end

@implementation MSDAudioController

+ (id)sharedInstance
{
  if (qword_1001A55B0 != -1)
  {
    sub_1000C5268();
  }

  v3 = qword_1001A55A8;

  return v3;
}

- (BOOL)setVolumeTo:(float)to forCategory:(unint64_t)category
{
  v6 = [(MSDAudioController *)self _NSStringFromVolumeCategory:category];
  if (v6)
  {
    avSystemController = [(MSDAudioController *)self avSystemController];
    objc_sync_enter(avSystemController);
    [(MSDAudioController *)self _initializeAVSystemControllerIfNeeded];
    avSystemController2 = [(MSDAudioController *)self avSystemController];
    *&v9 = to;
    v10 = [avSystemController2 setVolumeTo:v6 forCategory:0 mode:v9];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000C527C();
      }
    }

    objc_sync_exit(avSystemController);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (float)getVolumeForCategory:(unint64_t)category
{
  v11 = 0.0;
  v4 = [(MSDAudioController *)self _NSStringFromVolumeCategory:category];
  if (v4)
  {
    avSystemController = [(MSDAudioController *)self avSystemController];
    objc_sync_enter(avSystemController);
    [(MSDAudioController *)self _initializeAVSystemControllerIfNeeded];
    avSystemController2 = [(MSDAudioController *)self avSystemController];
    v7 = [avSystemController2 getVolume:&v11 forCategory:v4 mode:0];

    if ((v7 & 1) == 0)
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5300();
      }
    }

    objc_sync_exit(avSystemController);

    if (v7)
    {
      v9 = v11;
    }

    else
    {
      v9 = -1.0;
    }
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

- (BOOL)addRouteToSystemMusicForSpeaker
{
  v3 = [(MSDAudioController *)self _findRouteDescriptorWithUID:@"Speaker"];
  if (!v3)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v4 = dispatch_semaphore_create(0);
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v18 = kFigRoutingContextSelectRouteOptionKey_ClientRouteRequestID;
  v19 = uUIDString;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  cf = 0;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Adding route for system music to speaker...", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007328;
  v14[3] = &unk_100169CC0;
  v9 = v4;
  v15 = v9;
  [(MSDAudioController *)self _monitorRouteConfigUpdateForUUID:uUIDString withCallback:v14];
  if (FigRoutingContextRemoteCopySystemMusicContext())
  {
    sub_1000C5374();
    goto LABEL_14;
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11 || v11(v10, v3, v7))
  {
    sub_1000C5408();
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v12 = 1;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  return v12;
}

- (BOOL)removeRouteToSystemMusicForSpeaker
{
  v3 = [(MSDAudioController *)self _findRouteDescriptorWithUID:@"Speaker"];
  if (!v3)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v4 = dispatch_semaphore_create(0);
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v18 = kFigRoutingContextSelectRouteOptionKey_ClientRouteRequestID;
  v19 = uUIDString;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  cf = 0;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Removing route for system music to speaker...", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007614;
  v14[3] = &unk_100169CC0;
  v9 = v4;
  v15 = v9;
  [(MSDAudioController *)self _monitorRouteConfigUpdateForUUID:uUIDString withCallback:v14];
  if (FigRoutingContextRemoteCopySystemMusicContext())
  {
    sub_1000C5374();
    goto LABEL_14;
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v11 || v11(v10, v3, v7))
  {
    sub_1000C549C();
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v12 = 1;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  return v12;
}

- (void)_initializeAVSystemControllerIfNeeded
{
  avSystemController = [(MSDAudioController *)self avSystemController];

  if (!avSystemController)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Initializing AVSystemController!", buf, 2u);
    }

    v5 = +[AVSystemController sharedAVSystemController];
    [(MSDAudioController *)self setAvSystemController:v5];

    avSystemController2 = [(MSDAudioController *)self avSystemController];

    if (avSystemController2)
    {
      avSystemController3 = [(MSDAudioController *)self avSystemController];
      v14 = AVSystemController_ServerConnectionDiedNotification;
      v8 = [NSArray arrayWithObjects:&v14 count:1];
      v12 = 0;
      v9 = [avSystemController3 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v12];
      v10 = v12;

      if (v9)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 addObserver:self selector:"_handleAVSystemControllerDiedNotification:" name:AVSystemController_ServerConnectionDiedNotification object:0];
      }

      else
      {
        sub_1000C5530(v10);
      }
    }

    else
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000C55DC();
      }
    }
  }
}

- (id)_NSStringFromVolumeCategory:(unint64_t)category
{
  v3 = @"PhoneCall";
  if (category != 2)
  {
    v3 = 0;
  }

  if (category == 3)
  {
    return @"Audio/Video";
  }

  else
  {
    return v3;
  }
}

- (id)_findRouteDescriptorWithUID:(id)d
{
  dCopy = d;
  cf = 0;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Searching for route with UID: %{public}@", buf, 0xCu);
  }

  v32 = kFigRouteDiscovererCreationOption_DiscovererType;
  v33 = &off_10017AE28;
  v6 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  if (FigRouteDiscovererXPCRemoteCreate())
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C561C();
    }

    v11 = 0;
    v15 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v7 = objc_alloc_init(NSCondition);
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = kFigRouteDiscovererNotification_AvailableRoutesChanged;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100007D8C;
  v29 = &unk_100169CE8;
  v10 = v7;
  v30 = v10;
  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:&v26];

  v12 = cf;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13 || (v14 = kFigRouteDiscovererProperty_DiscoveryMode, v13(v12, kFigRouteDiscovererProperty_DiscoveryMode, kFigRouteDiscovererDiscoveryMode_DetailedDiscovery)))
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C570C();
    }

    v15 = 0;
LABEL_16:
    v16 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v15 = [NSDate dateWithTimeIntervalSinceNow:3.0, v26, v27, v28, v29];
  [v10 lock];
  while (1)
  {
    v16 = [(MSDAudioController *)self _findRouteDescriptorWithRouteUID:dCopy usingRouteDiscoverer:cf];
    if (v16)
    {
      break;
    }

    if (([v10 waitUntilDate:v15] & 1) == 0)
    {
      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000C568C();
      }

      [v10 unlock];
      v18 = sub_100063A54();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000C56CC();
      }

      goto LABEL_20;
    }
  }

  [v10 unlock];
  v18 = [v16 objectForKeyedSubscript:kFigEndpointDescriptorKey_RouteName];
  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Found route with name: %{public}@", buf, 0xCu);
  }

LABEL_20:
  v21 = cf;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v22 || v22(v21, v14, kFigRouteDiscovererDiscoveryMode_None))
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C570C();
    }

    goto LABEL_24;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 removeObserver:v11];
  }

  v24 = v16;

  return v16;
}

- (id)_findRouteDescriptorWithRouteUID:(id)d usingRouteDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  dCopy = d;
  v22 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(discoverer, kFigRouteDiscovererProperty_AvailableRouteDescriptors, kCFAllocatorDefault, &v22))
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C577C();
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v22;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = kFigEndpointDescriptorKey_RouteUID;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:{v11, v18}];
          v15 = v14;
          if (v14 && [v14 isEqualToString:dCopy])
          {
            v16 = v13;

            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (void)_monitorRouteConfigUpdateForUUID:(id)d withCallback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  if (callbackCopy)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kFigRoutingContextNotification_RouteConfigUpdated;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000813C;
    v10[3] = &unk_100169D10;
    v11 = dCopy;
    v12 = 0;
    v13 = callbackCopy;
    v9 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  }
}

- (void)_handleAVSystemControllerDiedNotification:(id)notification
{
  notificationCopy = notification;
  avSystemController = [(MSDAudioController *)self avSystemController];
  objc_sync_enter(avSystemController);
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDAudioController: AVSystemController died!", v8, 2u);
  }

  [(MSDAudioController *)self setAvSystemController:0];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];

  objc_sync_exit(avSystemController);
}

@end