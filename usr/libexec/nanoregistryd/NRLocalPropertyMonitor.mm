@interface NRLocalPropertyMonitor
+ (BOOL)_supportsR2;
+ (NRLocalPropertyMonitor)sharedInstance;
+ (id)_getGestaltData:(__CFString *)data;
+ (id)_getGestaltDictionary:(__CFString *)dictionary;
+ (id)_getGestaltDmin:(__CFString *)dmin;
+ (id)_getGestaltNumber:(__CFString *)number;
+ (id)_getGestaltStringValue:(__CFString *)value withName:(id)name;
+ (id)remoteDeviceChipIDNumber;
+ (void)initializeGetters;
- (NRLocalPropertyMonitor)init;
- (NRLocalPropertyMonitor)initWithCoder:(id)coder;
- (NSDictionary)properties;
- (NSObject)localeToken;
- (NSObject)planToken;
- (double)blockTimer:(id)timer;
- (id)_readProperty:(id)property shouldUpdateCache:(BOOL)cache isUpdated:(BOOL *)updated forceLog:(BOOL)log;
- (id)description;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_notifyObserversPropertiesDidChange:(id)change thisIsAllOfThem:(BOOL)them;
- (void)dealloc;
- (void)handleMDMDistributedNotification;
- (void)handleMDMNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pollProperties;
- (void)refreshPropertyCache;
- (void)registerForMDMNotifications;
- (void)registerForNotifications;
- (void)removePropertyObserver:(id)observer;
- (void)setRemoteDeviceChipIDNumber:(id)number;
- (void)unregisterFromNotifications;
@end

@implementation NRLocalPropertyMonitor

- (NRLocalPropertyMonitor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NRLocalPropertyMonitor *)self init];
  if (v5)
  {
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v12 count:2];
    v7 = NRClassesForPropertiesWithArray(v6);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"propertyCache"];
    v9 = [v8 mutableCopy];
    propertyCache = v5->_propertyCache;
    v5->_propertyCache = v9;
  }

  return v5;
}

- (id)description
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_propertyCache allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = @"NRLocalPropertyMonitor cache: ";
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * v8);
        v11 = [(NSMutableDictionary *)self->_propertyCache objectForKey:v10];
        v7 = [(__CFString *)v9 stringByAppendingFormat:@"%@=%@ ", v10, v11];

        v8 = v8 + 1;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = @"NRLocalPropertyMonitor cache: ";
  }

  return v7;
}

+ (id)_getGestaltNumber:(__CFString *)number
{
  v3 = MGCopyAnswer();

  return v3;
}

+ (id)_getGestaltStringValue:(__CFString *)value withName:(id)name
{
  if (name)
  {
    [qword_1001B39E8 setObject:name forKey:value];
  }

  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Unknown";
  }

  v7 = v6;

  return v6;
}

+ (id)_getGestaltData:(__CFString *)data
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSData data];
  }

  v6 = v5;

  return v6;
}

+ (id)_getGestaltDictionary:(__CFString *)dictionary
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &off_100187E88;
  }

  v6 = v5;

  return v5;
}

+ (id)_getGestaltDmin:(__CFString *)dmin
{
  v3 = MGCopyAnswer();

  return v3;
}

- (void)setRemoteDeviceChipIDNumber:(id)number
{
  numberCopy = number;
  v5 = qword_1001B39F0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC1CC;
  v7[3] = &unk_100175598;
  v8 = numberCopy;
  selfCopy = self;
  v6 = numberCopy;
  dispatch_async(v5, v7);
}

+ (id)remoteDeviceChipIDNumber
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000AC384;
  v9 = sub_1000AC394;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC39C;
  block[3] = &unk_100175880;
  block[4] = &v5;
  dispatch_sync(qword_1001B39F0, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (NRLocalPropertyMonitor)sharedInstance
{
  if (qword_1001B3A08 != -1)
  {
    sub_1001028E0();
  }

  v3 = qword_1001B3A00;

  return v3;
}

- (NRLocalPropertyMonitor)init
{
  v10.receiver = self;
  v10.super_class = NRLocalPropertyMonitor;
  v2 = [(NRLocalPropertyMonitor *)&v10 init];
  if (v2)
  {
    v3 = [NSPointerArray pointerArrayWithOptions:5];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[NSUserDefaults standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    propertyCache = v2->_propertyCache;
    v2->_propertyCache = v7;

    v2->_MGToken = -1;
    v2->_logAllPropertyReads = [(NSUserDefaults *)v2->_userDefaults BOOLForKey:@"logAllPropertyReads"];
    if (qword_1001B3A18 != -1)
    {
      sub_1001028F4();
    }

    [(NRLocalPropertyMonitor *)v2 registerForMDMNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(NRLocalPropertyMonitor *)self unregisterFromNotifications];
  v3.receiver = self;
  v3.super_class = NRLocalPropertyMonitor;
  [(NRLocalPropertyMonitor *)&v3 dealloc];
}

- (void)registerForNotifications
{
  if (!self->_hasRegisteredForNotifications)
  {
    self->_hasRegisteredForNotifications = 1;
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v38 = "[NRLocalPropertyMonitor registerForNotifications]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", buf, 0xCu);
      }
    }

    [(NRLocalPropertyMonitor *)self _pollPropertiesAllOfThem:1 dontSendChanges:1];
    objc_initWeak(&location, self);
    allKeys = [qword_1001B39E8 allKeys];
    v7 = [allKeys count] == 0;

    if (!v7)
    {
      v8 = nr_daemon_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = nr_daemon_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          allKeys2 = [qword_1001B39E8 allKeys];
          *buf = 138543362;
          v38 = allKeys2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Registering for MobileGestalt updates %{public}@", buf, 0xCu);
        }
      }

      [qword_1001B39E8 allKeys];
      v12 = +[NRQueue registryDaemonQueue];
      queue = [v12 queue];
      v34[1] = _NSConcreteStackBlock;
      v34[2] = 3221225472;
      v34[3] = sub_1000ACBA4;
      v34[4] = &unk_100178A68;
      objc_copyWeak(&v35, &location);
      self->_MGToken = MGRegisterForBulkUpdates();

      objc_destroyWeak(&v35);
    }

    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registering for locale changes", buf, 2u);
      }
    }

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = +[NSOperationQueue mainQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000ACDAC;
    v33[3] = &unk_100178A90;
    objc_copyWeak(v34, &location);
    v19 = [v17 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v18 usingBlock:v33];
    objc_storeWeak(&self->_localeToken, v19);

    v20 = dispatch_queue_create("com.nanoregistry.cellular.plan.manager.temporary", 0);
    dispatch_async(v20, &stru_100178AB0);

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = +[NSOperationQueue mainQueue];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000AD034;
    v31[3] = &unk_100178AD8;
    objc_copyWeak(&v32, &location);
    v31[4] = self;
    v23 = [v21 addObserverForName:CTCellularPlanInfoDidChangeNotification object:0 queue:v22 usingBlock:v31];
    objc_storeWeak(&self->_planToken, v23);

    v24 = +[NRPairingDaemon sharedInstance];
    history = [v24 history];

    if (history)
    {
      deviceCollection = [history deviceCollection];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000AD15C;
      v29[3] = &unk_100178B28;
      objc_copyWeak(&v30, &location);
      v27 = [deviceCollection addObserverQueue:0 withBlock:v29];
      deviceCollectionObserver = self->_deviceCollectionObserver;
      self->_deviceCollectionObserver = v27;

      objc_destroyWeak(&v30);
    }

    if (_NRIsInternalInstall())
    {
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"localPropertyOverride" options:7 context:0];
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

- (void)unregisterFromNotifications
{
  if (self->_hasRegisteredForNotifications)
  {
    self->_hasRegisteredForNotifications = 0;
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[NRLocalPropertyMonitor unregisterFromNotifications]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", &v16, 0xCu);
      }
    }

    if (self->_MGToken != -1)
    {
      MGCancelNotifications();
      self->_MGToken = -1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_localeToken);

    if (WeakRetained)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      v8 = objc_loadWeakRetained(&self->_localeToken);
      [v7 removeObserver:v8];

      objc_storeWeak(&self->_localeToken, 0);
    }

    v9 = objc_loadWeakRetained(&self->_planToken);

    if (v9)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      v11 = objc_loadWeakRetained(&self->_planToken);
      [v10 removeObserver:v11];

      objc_storeWeak(&self->_planToken, 0);
    }

    v12 = +[NRPairingDaemon sharedInstance];
    history = [v12 history];

    if (history && self->_deviceCollectionObserver)
    {
      deviceCollection = [history deviceCollection];
      [deviceCollection removeObserver:self->_deviceCollectionObserver];
      deviceCollectionObserver = self->_deviceCollectionObserver;
      self->_deviceCollectionObserver = 0;
    }

    if (_NRIsInternalInstall())
    {
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"localPropertyOverride"];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = nr_daemon_log();
  LODWORD(object) = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

  if (object)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v62 = pathCopy;
      v63 = 2112;
      v64 = objectCopy;
      v65 = 2112;
      v66 = changeCopy;
      v67 = 2112;
      contextCopy = context;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "KVO:- keyPath:%@, object:%@, change:%@, context:%@", buf, 0x2Au);
    }
  }

  if ([pathCopy isEqual:@"localPropertyOverride"])
  {
    p_propertiesToOverride = &self->_propertiesToOverride;
    v49 = self->_propertiesToOverride;
    v16 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = changeCopy;
      v47 = objectCopy;
      v48 = pathCopy;
      objc_storeStrong(&self->_propertiesToOverride, v16);
      v50 = objc_alloc_init(NSMutableDictionary);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      allKeys = [(NSDictionary *)*p_propertiesToOverride allKeys];
      v18 = [allKeys countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = v18;
      v20 = *v56;
      while (1)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v56 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v55 + 1) + 8 * i);
          v23 = [qword_1001B3A20 objectForKeyedSubscript:v22];

          if (v23)
          {
            buf[0] = 0;
            v24 = [(NRLocalPropertyMonitor *)self _readProperty:v22 shouldUpdateCache:1 isUpdated:buf forceLog:1];
            v25 = v24;
            if (buf[0] == 1)
            {
              if (v24)
              {
                [v50 setObject:v24 forKeyedSubscript:v22];
              }

              else
              {
                v28 = +[NSNull null];
                [v50 setObject:v28 forKeyedSubscript:v22];
              }
            }
          }

          else
          {
            v26 = nr_daemon_log();
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

            if (!v27)
            {
              continue;
            }

            v25 = nr_daemon_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v62 = v22;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Local overriding of unrecognized property %{public}@, ignoring", buf, 0xCu);
            }
          }
        }

        v19 = [allKeys countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (!v19)
        {
LABEL_24:

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          allKeys2 = [(NSDictionary *)v49 allKeys];
          v30 = [allKeys2 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v52;
            do
            {
              for (j = 0; j != v31; j = j + 1)
              {
                if (*v52 != v32)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v34 = *(*(&v51 + 1) + 8 * j);
                v35 = [qword_1001B3A20 objectForKeyedSubscript:v34];

                if (v35)
                {
                  v36 = [(NSDictionary *)*p_propertiesToOverride objectForKeyedSubscript:v34];

                  if (!v36)
                  {
                    v37 = nr_daemon_log();
                    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

                    if (v38)
                    {
                      v39 = nr_daemon_log();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v62 = v34;
                        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No longer overriding local property %{public}@", buf, 0xCu);
                      }
                    }

                    buf[0] = 0;
                    v40 = [(NRLocalPropertyMonitor *)self _readProperty:v34 shouldUpdateCache:1 isUpdated:buf forceLog:1];
                    v41 = v40;
                    if (buf[0] == 1)
                    {
                      if (v40)
                      {
                        [v50 setObject:v40 forKeyedSubscript:v34];
                      }

                      else
                      {
                        v42 = +[NSNull null];
                        [v50 setObject:v42 forKeyedSubscript:v34];
                      }
                    }
                  }
                }
              }

              v31 = [allKeys2 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v31);
          }

          v43 = v50;
          if ([v50 count])
          {
            [(NRLocalPropertyMonitor *)self _notifyObserversPropertiesDidChange:v50 thisIsAllOfThem:0];
          }

          objectCopy = v47;
          pathCopy = v48;
          changeCopy = v46;
          goto LABEL_45;
        }
      }
    }

    v44 = nr_daemon_log();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

    if (v45)
    {
      v43 = nr_daemon_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10010291C(v16, v43);
      }

LABEL_45:
    }
  }
}

- (void)removePropertyObserver:(id)observer
{
  observerCopy = observer;
  v5 = [NSPointerArray pointerArrayWithOptions:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_observers;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11 == observerCopy;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [(NSPointerArray *)v5 addPointer:v14];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  observers = self->_observers;
  self->_observers = v5;
}

- (void)registerForMDMNotifications
{
  if (!self->_mcConnection)
  {
    v3 = +[MCProfileConnection sharedConnection];
    mcConnection = self->_mcConnection;
    self->_mcConnection = v3;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleMDMNotification:" name:MCProfileListChangedNotification object:self->_mcConnection];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleMDMNotification:" name:MCCloudConfigurationDidChangeNotification object:self->_mcConnection];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleMDMDistributedNotification" name:kMDMUprootedNotification object:0];
}

- (void)handleMDMNotification:(id)notification
{
  notificationCopy = notification;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name = [notificationCopy name];
      *buf = 138412290;
      v12 = name;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received %@ notification, which could mean MDM status changes, polling properties.", buf, 0xCu);
    }
  }

  v9 = +[NRQueue registryDaemonQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE068;
  v10[3] = &unk_100175660;
  v10[4] = self;
  [v9 dispatchAsync:v10];
}

- (void)handleMDMDistributedNotification
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received kMDMUprootedNotification notification, which could mean MDM status changes, polling properties.", buf, 2u);
    }
  }

  v6 = +[NRQueue registryDaemonQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AE16C;
  v7[3] = &unk_100175660;
  v7[4] = self;
  [v6 dispatchAsync:v7];
}

+ (void)initializeGetters
{
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_1000AC384;
  v72[4] = sub_1000AC394;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_1000AC384;
  v70[4] = sub_1000AC394;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_1000AC384;
  v68[4] = sub_1000AC394;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_1000AC384;
  v66[4] = sub_1000AC394;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_1000AC384;
  v64[4] = sub_1000AC394;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_1000AC384;
  v62[4] = sub_1000AC394;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_1000AC384;
  v60[4] = sub_1000AC394;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_1000AC384;
  v58[4] = sub_1000AC394;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_1000AC384;
  v56[4] = sub_1000AC394;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_1000AC384;
  v54[4] = sub_1000AC394;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_1000AC384;
  v52[4] = sub_1000AC394;
  v53 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = sub_1000AC384;
  v50[4] = sub_1000AC394;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_1000AC384;
  v48[4] = sub_1000AC394;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_1000AC384;
  v46[4] = sub_1000AC394;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_1000AC384;
  v44[4] = sub_1000AC394;
  v45 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF47C;
  block[3] = &unk_100178B50;
  block[4] = v72;
  block[5] = v70;
  block[6] = v68;
  block[7] = v66;
  block[8] = v64;
  block[9] = v62;
  block[10] = v60;
  block[11] = v58;
  block[12] = v56;
  block[13] = v54;
  block[14] = v52;
  block[15] = v50;
  block[16] = v46;
  block[17] = v48;
  block[18] = v44;
  if (qword_1001B3A28 != -1)
  {
    dispatch_once(&qword_1001B3A28, block);
  }

  v74[0] = NRDevicePropertyBackgroundAtrialFibrillationVersion;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000AF8E8;
  v42[3] = &unk_100178B78;
  v42[4] = v72;
  v23 = objc_retainBlock(v42);
  v75[0] = v23;
  v74[1] = NRDevicePropertyBackgroundAtrialFibrillationUDI;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000AF8F8;
  v41[3] = &unk_100178B78;
  v41[4] = v70;
  v22 = objc_retainBlock(v41);
  v75[1] = v22;
  v74[2] = NRDevicePropertyBackgroundAtrialFibrillationReleaseYear;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000AF908;
  v40[3] = &unk_100178B78;
  v40[4] = v68;
  v21 = objc_retainBlock(v40);
  v75[2] = v21;
  v74[3] = NRDevicePropertyElectrocardiogramVersion;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000AF918;
  v39[3] = &unk_100178B78;
  v39[4] = v66;
  v20 = objc_retainBlock(v39);
  v75[3] = v20;
  v74[4] = NRDevicePropertyElectrocardiogramUDI;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000AF928;
  v38[3] = &unk_100178B78;
  v38[4] = v64;
  v19 = objc_retainBlock(v38);
  v75[4] = v19;
  v74[5] = NRDevicePropertyElectrocardiogramReleaseYear;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000AF938;
  v37[3] = &unk_100178B78;
  v37[4] = v62;
  v18 = objc_retainBlock(v37);
  v75[5] = v18;
  v74[6] = NRDevicePropertyElectrocardiogramV2AvailableRegions;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000AF948;
  v36[3] = &unk_100178B78;
  v36[4] = v58;
  v17 = objc_retainBlock(v36);
  v75[6] = v17;
  v74[7] = NRDevicePropertyMenstrualCyclesAlgorithmsVersion;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000AF958;
  v35[3] = &unk_100178B78;
  v35[4] = v56;
  v16 = objc_retainBlock(v35);
  v75[7] = v16;
  v74[8] = NRDevicePropertyCardioFitnessVersion;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000AF968;
  v34[3] = &unk_100178B78;
  v34[4] = v54;
  v15 = objc_retainBlock(v34);
  v75[8] = v15;
  v74[9] = NRDevicePropertyCardioFitnessAvailableRegions;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AF978;
  v33[3] = &unk_100178B78;
  v33[4] = v52;
  v14 = objc_retainBlock(v33);
  v75[9] = v14;
  v75[10] = &stru_100178BB8;
  v74[10] = NRDevicePropertyMedicationScheduleCompatibilityVersion;
  v74[11] = NRDevicePropertySleepCoachingVersion;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000AF994;
  v32[3] = &unk_100178B78;
  v32[4] = v50;
  v13 = objc_retainBlock(v32);
  v75[11] = v13;
  v74[12] = NRDevicePropertySleepActionsVersion;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000AF9A4;
  v31[3] = &unk_100178B78;
  v31[4] = v48;
  v3 = objc_retainBlock(v31);
  v75[12] = v3;
  v74[13] = NRDevicePropertySleepTrackingVersion;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000AF9B4;
  v30[3] = &unk_100178B78;
  v30[4] = v46;
  v4 = objc_retainBlock(v30);
  v75[13] = v4;
  v74[14] = NRDevicePropertyOxygenSaturationRecordingVersion;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000AF9C4;
  v29[3] = &unk_100178B78;
  v29[4] = v44;
  v5 = objc_retainBlock(v29);
  v75[14] = v5;
  v74[15] = NRDevicePropertyName;
  v74[16] = NRDevicePropertyBluetoothMACAddress;
  v75[15] = &stru_100178BD8;
  v75[16] = &stru_100178BF8;
  v75[17] = &stru_100178C18;
  v74[17] = NRDevicePropertyWIFIMACAddress;
  v74[18] = NRDevicePropertyTotalStorage;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000AFA1C;
  v28[3] = &unk_100178C38;
  v28[4] = self;
  v6 = objc_retainBlock(v28);
  v75[18] = v6;
  v74[19] = NRDevicePropertySerialNumber;
  v74[20] = NRDevicePropertyProductType;
  v75[19] = &stru_100178C58;
  v75[20] = &stru_100178C78;
  v74[21] = NRDevicePropertyHomeButtonType;
  v74[22] = NRDevicePropertyLocalizedModel;
  v75[21] = &stru_100178C98;
  v75[22] = &stru_100178CB8;
  v74[23] = NRDevicePropertyRegionCode;
  v74[24] = NRDevicePropertyRegionInfo;
  v75[23] = &stru_100178CD8;
  v75[24] = &stru_100178CF8;
  v74[25] = NRDevicePropertyModelNumber;
  v74[26] = NRDevicePropertyHWModelString;
  v75[25] = &stru_100178D18;
  v75[26] = &stru_100178D38;
  v74[27] = NRDevicePropertyUDID;
  v74[28] = NRDevicePropertyMainScreenWidth;
  v75[27] = &stru_100178D58;
  v75[28] = &stru_100178D78;
  v74[29] = NRDevicePropertyMainScreenHeight;
  v74[30] = NRDevicePropertyScreenSize;
  v75[29] = &stru_100178D98;
  v75[30] = &stru_100178DB8;
  v74[31] = NRDevicePropertyClass;
  v74[32] = NRDevicePropertyScreenScale;
  v75[31] = &stru_100178DD8;
  v75[32] = &stru_100178DF8;
  v74[33] = NRDevicePropertyBuildType;
  v74[34] = NRDevicePropertyEnclosureMaterial;
  v75[33] = &stru_100178E18;
  v75[34] = &stru_100178E38;
  v74[35] = _NRDevicePropertyAdvertisingIdentifierSeed;
  v74[36] = NRDevicePropertyPairedDeviceCount;
  v75[35] = &stru_100178E58;
  v75[36] = &stru_100178E78;
  v74[37] = NRDevicePropertyGreenTeaDevice;
  v74[38] = NRDevicePropertySigningFuse;
  v75[37] = &stru_100178E98;
  v75[38] = &stru_100178EB8;
  v74[39] = _NRDevicePropertySupportedPairingStrategy;
  v74[40] = NRDevicePropertyDeviceNameString;
  v75[39] = &stru_100178ED8;
  v75[40] = &stru_100178EF8;
  v74[41] = NRDevicePropertyCurrentUserLocale;
  v74[42] = NRDevicePropertyDeviceInDemoMode;
  v75[41] = &stru_100178F18;
  v75[42] = &stru_100178F38;
  v74[43] = NRDevicePropertyPreferredLanguages;
  v74[44] = NRDevicePropertyMarketingVersion;
  v75[43] = &stru_100178F58;
  v75[44] = &stru_100178F78;
  v74[45] = NRDevicePropertyIMEI;
  v74[46] = NRDevicePropertyMEID;
  v75[45] = &stru_100178F98;
  v75[46] = &stru_100178FB8;
  v75[47] = &stru_100178FD8;
  v74[47] = NRDevicePropertyIMEI2;
  v74[48] = _NRDevicePropertyCapabilities;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000AFF80;
  v27[3] = &unk_100178C38;
  v27[4] = self;
  v7 = objc_retainBlock(v27);
  v75[48] = v7;
  v74[49] = NRDevicePropertyIsInternalInstall;
  v74[50] = NRDevicePropertyRegulatoryModelNumber;
  v75[49] = &stru_100178FF8;
  v75[50] = &stru_100179018;
  v74[51] = NRDevicePropertyHasSEP;
  v74[52] = NRDevicePropertyHasSecureElement;
  v75[51] = &stru_100179038;
  v75[52] = &stru_100179058;
  v74[53] = NRDevicePropertyMarketingProductName;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000B3818;
  v26[3] = &unk_100178C38;
  v26[4] = self;
  v8 = objc_retainBlock(v26);
  v75[53] = v8;
  v74[54] = NRDevicePropertyCPUType;
  v74[55] = NRDevicePropertyCPUSubType;
  v75[54] = &stru_100179078;
  v75[55] = &stru_100179098;
  v74[56] = NRDevicePropertyMainScreenClass;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B3850;
  v25[3] = &unk_100178C38;
  v25[4] = self;
  v9 = objc_retainBlock(v25);
  v75[56] = v9;
  v74[57] = NRDevicePropertyChipID;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B3860;
  v24[3] = &unk_100178C38;
  v24[4] = self;
  v10 = objc_retainBlock(v24);
  v75[57] = v10;
  v74[58] = NRDevicePropertyIsAltAccount;
  v74[59] = NRDevicePropertyMDMManagementState;
  v75[58] = &stru_1001790B8;
  v75[59] = &stru_1001790D8;
  v11 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:60];
  v12 = qword_1001B3A20;
  qword_1001B3A20 = v11;

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(v70, 8);

  _Block_object_dispose(v72, 8);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v4 = [qword_1001B3A20 objectForKey:subscriptCopy];
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_supportsR2
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
    {
      v5 = valuePtr == 8228;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

- (void)pollProperties
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[NRLocalPropertyMonitor pollProperties]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", &v6, 0xCu);
    }
  }

  [(NRLocalPropertyMonitor *)self _pollPropertiesAllOfThem:0 dontSendChanges:0];
}

- (void)_notifyObserversPropertiesDidChange:(id)change thisIsAllOfThem:(BOOL)them
{
  changeCopy = change;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_observers;
  v8 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v12)
        {
          v13 = +[NRQueue registryDaemonQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000B3FD8;
          v14[3] = &unk_100175CE0;
          v14[4] = v12;
          v14[5] = self;
          v15 = changeCopy;
          themCopy = them;
          [v13 dispatchAsync:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (id)_readProperty:(id)property shouldUpdateCache:(BOOL)cache isUpdated:(BOOL *)updated forceLog:(BOOL)log
{
  cacheCopy = cache;
  propertyCopy = property;
  v10 = [(NSMutableDictionary *)self->_propertyCache objectForKey:propertyCopy];
  v11 = [qword_1001B3A20 objectForKey:propertyCopy];
  v12 = v11;
  if (!v11)
  {
    v36 = 0;
    goto LABEL_38;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1000AC384;
  v46 = sub_1000AC394;
  v47 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000B4494;
  v38[3] = &unk_100176E20;
  v41 = &v42;
  v40 = v11;
  v13 = propertyCopy;
  v39 = v13;
  [(NRLocalPropertyMonitor *)self blockTimer:v38];
  v15 = v14;
  if (self->_logAllPropertyReads)
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v43[5];
        *buf = 138412802;
        v49 = v13;
        v50 = 2112;
        v51 = *&v19;
        v52 = 2048;
        v53 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Property %@ reads as %@ and took %1.2f seconds to query", buf, 0x20u);
      }
    }
  }

  if (v15 > 0.1)
  {
    v20 = nr_daemon_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = nr_daemon_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v49 = v13;
        v50 = 2048;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Property %{public}@ took %1.2f seconds to query! That seems like a long time.", buf, 0x16u);
      }
    }
  }

  if (_NRIsInternalInstall())
  {
    v23 = [(NSDictionary *)self->_propertiesToOverride objectForKeyedSubscript:v13];
    if (v23)
    {
      v24 = nr_daemon_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = nr_daemon_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v43[5];
          *buf = 138543874;
          v49 = v13;
          v50 = 2112;
          v51 = *&v27;
          v52 = 2114;
          v53 = *&v23;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NRLocalPropertyMonitor overrides the actual value of %{public}@ from %@ with %{public}@", buf, 0x20u);
        }
      }

      objc_storeStrong(v43 + 5, v23);
    }
  }

  v28 = +[NSNull null];
  if ([v10 isEqual:v28])
  {
    v29 = 0;
  }

  else
  {
    v29 = v10;
  }

  v30 = v29;

  if (cacheCopy)
  {
    propertyCache = self->_propertyCache;
    v32 = v43[5];
    v33 = v32;
    if (!v32)
    {
      v33 = +[NSNull null];
    }

    [(NSMutableDictionary *)propertyCache setObject:v33 forKey:v13];
    if (!v32)
    {
    }
  }

  v34 = v43[5];
  if (v34)
  {
    if (![v34 isEqual:v30])
    {
      if (!updated)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v35 = v43[5] == 0;
    if (!updated)
    {
      goto LABEL_37;
    }

LABEL_34:
    if (!v35 || !v30)
    {
      goto LABEL_37;
    }

LABEL_36:
    *updated = 1;
    goto LABEL_37;
  }

  v35 = 1;
  if (updated)
  {
    goto LABEL_34;
  }

LABEL_37:
  v36 = v43[5];

  _Block_object_dispose(&v42, 8);
  v10 = v30;
LABEL_38:

  return v36;
}

- (double)blockTimer:(id)timer
{
  timerCopy = timer;
  [(NRLocalPropertyMonitor *)self abs_to_seconds:mach_absolute_time()];
  v6 = v5;
  timerCopy[2](timerCopy);

  [(NRLocalPropertyMonitor *)self abs_to_seconds:mach_absolute_time()];
  return v7 - v6;
}

- (void)refreshPropertyCache
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[NRLocalPropertyMonitor refreshPropertyCache]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: trace", &v6, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_propertyCache removeAllObjects];
  [(NRLocalPropertyMonitor *)self _pollPropertiesAllOfThem:1 dontSendChanges:0];
}

- (NSDictionary)properties
{
  [(NRLocalPropertyMonitor *)self _pollPropertiesAllOfThem:1 dontSendChanges:0];
  v3 = [(NSMutableDictionary *)self->_propertyCache copy];

  return v3;
}

- (NSObject)localeToken
{
  WeakRetained = objc_loadWeakRetained(&self->_localeToken);

  return WeakRetained;
}

- (NSObject)planToken
{
  WeakRetained = objc_loadWeakRetained(&self->_planToken);

  return WeakRetained;
}

@end