@interface NMROriginManager
+ (NMROriginManager)sharedManager;
- (NMROrigin)activeOrigin;
- (NMROrigin)companionOrigin;
- (NMROrigin)localOrigin;
- (NMROriginManager)init;
- (NSArray)availableOrigins;
- (id)originForPlayerPath:(id)path;
- (id)originWithDeviceIdentifier:(id)identifier;
- (id)originWithUniqueIdentifier:(id)identifier;
- (void)_handleDeviceInfoDidChangeNotification:(id)notification;
- (void)_onQueue_updateActiveOriginIdentifier:(id)identifier;
- (void)_onQueue_updateAvailableOrigins;
- (void)_updateMediaRemoteAvailableAndActiveOrigins;
- (void)_updateMediaRemoteLocalOrigin;
- (void)dealloc;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
@end

@implementation NMROriginManager

+ (NMROriginManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ADB4;
  block[3] = &unk_100049248;
  block[4] = self;
  if (qword_1000541B0 != -1)
  {
    dispatch_once(&qword_1000541B0, block);
  }

  v2 = qword_1000541A8;

  return v2;
}

- (NMROriginManager)init
{
  v13.receiver = self;
  v13.super_class = NMROriginManager;
  v2 = [(NMROriginManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMediaRemote.OriginManager", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleMediaRemoteActiveOriginDidChangeNotification:" name:kMRMediaRemoteActiveOriginDidChangeNotification object:0];
    [v6 addObserver:v2 selector:"_handleMediaRemoteAvailableOriginsDidChangeNotification:" name:kMRMediaRemoteAvailableOriginsDidChangeNotification object:0];
    [v6 addObserver:v2 selector:"_handleDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
    [(NMROriginManager *)v2 _updateMediaRemoteLocalOrigin];
    [(NMROriginManager *)v2 _updateMediaRemoteAvailableAndActiveOrigins];
    MRMediaRemoteSetWantsOriginChangeNotifications();
    v7 = objc_alloc_init(MPAVCompanionEndpointRoutingDataSource);
    v8 = [[MPAVRoutingController alloc] initWithDataSource:v7 name:@"CompanionDiscovery"];
    companionRoutingController = v2->_companionRoutingController;
    v2->_companionRoutingController = v8;

    [(MPAVRoutingController *)v2->_companionRoutingController setDelegate:v2];
    v10 = sub_10002C180(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [(MPAVRoutingController *)v2->_companionRoutingController name];
      *buf = 138412290;
      v15 = name;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Begin discovery", buf, 0xCu);
    }

    [(MPAVRoutingController *)v2->_companionRoutingController setDiscoveryMode:3];
  }

  return v2;
}

- (void)dealloc
{
  MRMediaRemoteSetWantsOriginChangeNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  availableOriginRefs = self->_availableOriginRefs;
  if (availableOriginRefs)
  {
    CFRelease(availableOriginRefs);
  }

  v5.receiver = self;
  v5.super_class = NMROriginManager;
  [(NMROriginManager *)&v5 dealloc];
}

- (NSArray)availableOrigins
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B150;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NMROrigin)activeOrigin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B290;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NMROrigin)localOrigin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B3D0;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NMROrigin)companionOrigin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B514;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)originWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000193E0;
  v17 = sub_1000193F0;
  v18 = 0;
  if (identifierCopy)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B6C0;
    block[3] = &unk_100048E90;
    v12 = &v13;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_sync(serialQueue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)originWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000193E0;
  v17 = sub_1000193F0;
  v18 = 0;
  if (identifierCopy)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B838;
    block[3] = &unk_100048E90;
    v12 = &v13;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_sync(serialQueue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)originForPlayerPath:(id)path
{
  pathCopy = path;
  route = [pathCopy route];

  if (!route)
  {
    localOrigin = [(NMROriginManager *)self localOrigin];
    goto LABEL_5;
  }

  route2 = [pathCopy route];
  isPhoneRoute = [route2 isPhoneRoute];

  if (isPhoneRoute)
  {
    localOrigin = [(NMROriginManager *)self companionOrigin];
LABEL_5:
    v9 = localOrigin;
    goto LABEL_7;
  }

  route3 = [pathCopy route];
  routeUID = [route3 routeUID];
  v9 = [(NMROriginManager *)self originWithDeviceIdentifier:routeUID];

LABEL_7:

  return v9;
}

- (void)_onQueue_updateAvailableOrigins
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = +[NSMutableOrderedSet orderedSet];
  v4 = +[NSMutableDictionary dictionary];
  v43 = +[NSMutableDictionary dictionary];
  if (selfCopy->_availableOriginRefs)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    v6 = CFAutorelease(Mutable);
    availableOriginRefs = selfCopy->_availableOriginRefs;
    if (availableOriginRefs && CFArrayGetCount(availableOriginRefs) >= 1)
    {
      v8 = selfCopy->_availableOriginRefs;
      v47.length = CFArrayGetCount(v8);
      v47.location = 0;
      CFArrayAppendArray(v6, v8, v47);
    }

    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v10 = Count;
      v11 = 0;
      v41 = v4;
      v42 = selfCopy;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
        v13 = MRMediaRemoteCopyDeviceInfo();
        if (v13)
        {
          v14 = CFAutorelease(v13);
          if (!MRPairedDeviceGetIsAirPlayActive())
          {
            v18 = MRPairedDeviceCopyLinkAgent();
            if (v18)
            {
              v18 = CFAutorelease(v18);
            }

            v15 = v18;
            if (([v15 isEqualToString:@"com.apple.RemoteMediaServices"]& 1) != 0 || [v15 isEqualToString:@"com.apple.TVRemote"])
            {
              v19 = sub_10002C180(2);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = ValueAtIndex;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Origin] Ignoring TVRemote origin: %@.", buf, 0xCu);
              }

              goto LABEL_29;
            }

            v20 = sub_1000199A4();
            v21 = [(NSDictionary *)selfCopy->_availableOriginsByDeviceIdentifier objectForKeyedSubscript:v20];
            v22 = v21;
            if (v21)
            {
              uniqueIdentifier = [(NMROrigin *)v21 uniqueIdentifier];
              if (uniqueIdentifier)
              {
                v39 = uniqueIdentifier;
                v40 = v3;
                uniqueIdentifier2 = [(NMROrigin *)v22 uniqueIdentifier];
                v25 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
                v26 = v25;
                if (uniqueIdentifier2 == v25)
                {

                  v3 = v40;
                }

                else
                {
                  v38 = [uniqueIdentifier2 isEqual:v25];

                  v3 = v40;
                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_25;
                  }
                }
              }

              [(NMROrigin *)v22 updateOrigin:ValueAtIndex deviceInfo:v14];
            }

            else
            {
LABEL_25:
              v27 = [[NMROrigin alloc] initWithOrigin:ValueAtIndex deviceInfo:v14];

              v22 = v27;
            }

            [v3 addObject:v22];
            [v41 setObject:v22 forKeyedSubscript:v20];
            uniqueIdentifier3 = [(NMROrigin *)v22 uniqueIdentifier];
            [v43 setObject:v22 forKeyedSubscript:uniqueIdentifier3];

            v4 = v41;
            selfCopy = v42;
            goto LABEL_29;
          }

          v15 = sub_10002C180(2);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = ValueAtIndex;
            v16 = v15;
            v17 = "[Origin] Ignoring AirPlay active origin: %@.";
LABEL_13:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          }
        }

        else
        {
          v15 = sub_10002C180(2);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = ValueAtIndex;
            v16 = v15;
            v17 = "[Origin] Ignoring origin with no device info: %@.";
            goto LABEL_13;
          }
        }

LABEL_29:

        ++v11;
      }

      while (v10 != v11);
    }
  }

  [v3 sortUsingComparator:&stru_100049288];
  v29 = [v3 isEqual:selfCopy->_availableOrigins];
  v30 = [v3 copy];
  availableOrigins = selfCopy->_availableOrigins;
  selfCopy->_availableOrigins = v30;

  v32 = [v4 copy];
  availableOriginsByDeviceIdentifier = selfCopy->_availableOriginsByDeviceIdentifier;
  selfCopy->_availableOriginsByDeviceIdentifier = v32;

  v34 = [v43 copy];
  availableOriginsByOriginIdentifier = selfCopy->_availableOriginsByOriginIdentifier;
  selfCopy->_availableOriginsByOriginIdentifier = v34;

  if ((v29 & 1) == 0)
  {
    v36 = sub_10002C180(3);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = selfCopy->_availableOrigins;
      *buf = 138412290;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[Origin] Updated available origins: %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BF54;
    block[3] = &unk_100048CD0;
    block[4] = selfCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_onQueue_updateActiveOriginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!identifierCopy || ([(NSDictionary *)self->_availableOriginsByOriginIdentifier objectForKeyedSubscript:identifierCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = sub_10002C180(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000310C8(identifierCopy, self);
    }

    v7 = self->_localOriginIdentifier;
    identifierCopy = v7;
  }

  if (![(NSNumber *)self->_activeOriginIdentifier isEqualToNumber:identifierCopy])
  {
    objc_storeStrong(&self->_activeOriginIdentifier, identifierCopy);
    v8 = sub_10002C180(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSDictionary *)self->_availableOriginsByOriginIdentifier objectForKeyedSubscript:self->_activeOriginIdentifier];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Origin] Update active origin: %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C16C;
    block[3] = &unk_100048CD0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateMediaRemoteLocalOrigin
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C240;
  block[3] = &unk_100048CD0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_updateMediaRemoteAvailableAndActiveOrigins
{
  v3 = sub_10002C180(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Origin] Fetching MediaRemote available origins and active origin.", buf, 2u);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_1000193E0;
  v22 = sub_1000193F0;
  v23 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  serialQueue = self->_serialQueue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10001C570;
  v15 = &unk_1000492B0;
  v17 = v24;
  v16 = v4;
  MRMediaRemoteGetAvailableOrigins();
  dispatch_group_enter(v16);
  v6 = self->_serialQueue;
  block[7] = _NSConcreteStackBlock;
  block[8] = 3221225472;
  block[9] = sub_10001C5E0;
  block[10] = &unk_1000492D8;
  v11 = buf;
  v7 = v16;
  v10 = v7;
  MRMediaRemoteGetActiveOrigin();
  v8 = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C670;
  block[3] = &unk_100049300;
  block[4] = self;
  block[5] = v24;
  block[6] = buf;
  dispatch_group_notify(v7, v8, block);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v24, 8);
}

- (void)_handleDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C7B0;
  v7[3] = &unk_100048C80;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C94C;
  v7[3] = &unk_100048C80;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

@end