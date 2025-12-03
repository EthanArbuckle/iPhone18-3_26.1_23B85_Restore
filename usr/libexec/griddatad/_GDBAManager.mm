@interface _GDBAManager
+ (id)loadNumberForPreferenceKey:(id)key;
+ (id)sharedInstance;
+ (void)saveNumber:(id)number forKey:(id)key;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_GDBAManager)init;
- (id)boundaryPolygons;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)registerClientID:(id)d locationBundlePath:(id)path handler:(id)handler;
- (void)setupLocationManagerForPath:(id)path identifier:(id)identifier;
- (void)updateBA;
- (void)updateBAClientID:(id)d handler:(id)handler;
- (void)updateBAStatusForLocationManager:(id)manager;
@end

@implementation _GDBAManager

- (_GDBAManager)init
{
  v17.receiver = self;
  v17.super_class = _GDBAManager;
  v2 = [(_GDBAManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.griddatad.locmonitor.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.gds", "geoDataReader");
    log = v2->_log;
    v2->_log = v6;

    v8 = v2->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initializing delegate", buf, 2u);
    }

    v9 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001114;
    block[3] = &unk_100008320;
    v10 = v2;
    v15 = v10;
    dispatch_sync(v9, block);
    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.griddatad.registration"];
    v12 = v10[3];
    v10[3] = v11;

    [v10[3] setDelegate:v10];
    [v10[3] resume];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10000CAE8 != -1)
  {
    sub_1000038A8();
  }

  v3 = qword_10000CAE0;

  return v3;
}

+ (id)loadNumberForPreferenceKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.gridDataServices", kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  return v3;
}

+ (void)saveNumber:(id)number forKey:(id)key
{
  CFPreferencesSetValue(key, number, @"com.apple.gridDataServices", kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(@"com.apple.gridDataServices", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v7 = [authorizationCopy description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Location Manager did change authorization for manager: %@", &v8, 0xCu);
  }

  [(_GDBAManager *)self updateBAStatusForLocationManager:authorizationCopy];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Location Manager failed with error: %@", &v7, 0xCu);
  }
}

- (id)boundaryPolygons
{
  v3 = os_transaction_create();
  v4 = [_GDBAManager loadNumberForPreferenceKey:@"polygonsFetchDate"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v6 timeIntervalSinceNow];
    if (v7 > -2592000.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Polygons were fetched in last 30 days", buf, 2u);
      }

      v9 = [NSString stringWithFormat:@"%@/%@", @"/var/db/GridData", @"polygons.json"];
      v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
      v11 = v10;
      if (v10)
      {
        allKeys = [v10 allKeys];
        v13 = [allKeys count];

        if (v13)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetching polygons", buf, 2u);
  }

  v15 = +[_GDSBalancingAuthority fetchBalancingAuthorityPolygons];
  v11 = v15;
  if (v15)
  {
    allKeys2 = [v15 allKeys];
    v17 = [allKeys2 count];

    if (v17)
    {
      v6 = +[NSFileManager defaultManager];
      v29 = 0;
      v18 = [NSString stringWithFormat:@"%@/%@", @"/var/db/GridData", @"polygons.json"];
      if ([v6 fileExistsAtPath:v18 isDirectory:&v29])
      {
        v19 = 0;
      }

      else
      {
        v28 = 0;
        v20 = [v6 createDirectoryAtPath:@"/var/db/GridData" withIntermediateDirectories:1 attributes:0 error:&v28];
        v19 = v28;
        if ((v20 & 1) == 0)
        {
          v21 = self->_log;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000038BC(v19, v21);
          }
        }
      }

      v22 = [NSURL fileURLWithPath:v18];
      v27 = v19;
      [v11 writeToURL:v22 error:&v27];
      v9 = v27;

      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v18;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Wrote to File %@. Error: %@", buf, 0x16u);
      }

      v24 = +[NSDate date];
      [v24 timeIntervalSinceReferenceDate];
      v25 = [NSNumber numberWithDouble:?];
      [_GDBAManager saveNumber:v25 forKey:@"polygonsFetchDate"];

LABEL_21:
    }
  }

  return v11;
}

- (void)updateBAStatusForLocationManager:(id)manager
{
  managerCopy = manager;
  v5 = +[_GDSBalancingAuthority loadBalancingAuthorityStatus];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
  }

  clientIDToLocationManager = self->_clientIDToLocationManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001974;
  v10[3] = &unk_100008388;
  v11 = managerCopy;
  selfCopy = self;
  v13 = v6;
  v8 = v6;
  v9 = managerCopy;
  [(NSMutableDictionary *)clientIDToLocationManager enumerateKeysAndObjectsUsingBlock:v10];
  [_GDSBalancingAuthority saveBalancingAuthorityStatus:v8];
}

- (void)updateBA
{
  v3 = os_transaction_create();
  queue = [(_GDBAManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BC8;
  block[3] = &unk_100008320;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)setupLocationManagerForPath:(id)path identifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  if (!self->_clientIDToLocationManager)
  {
    v7 = +[NSMutableDictionary dictionary];
    clientIDToLocationManager = self->_clientIDToLocationManager;
    self->_clientIDToLocationManager = v7;
  }

  v9 = [CLLocationManager alloc];
  v10 = [NSBundle bundleWithPath:pathCopy];
  v11 = [v9 initWithEffectiveBundle:v10 delegate:self onQueue:self->_queue];

  [v11 setDesiredAccuracy:3000.0];
  [(NSMutableDictionary *)self->_clientIDToLocationManager setObject:v11 forKeyedSubscript:identifierCopy];
}

- (void)registerClientID:(id)d locationBundlePath:(id)path handler:(id)handler
{
  dCopy = d;
  pathCopy = path;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000251C;
  v15[3] = &unk_100008500;
  v15[4] = self;
  v16 = dCopy;
  v17 = pathCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = pathCopy;
  v14 = dCopy;
  dispatch_sync(queue, v15);
}

- (void)updateBAClientID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received request for BA update from %@!", &v9, 0xCu);
  }

  [(_GDBAManager *)self updateBA];
  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000039E4();
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.griddata.allow"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = log;
      v16[0] = 67109120;
      v16[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Listener accepted new connection from PID %d\n", v16, 8u);
    }

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GDSManagerProtocol];
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v13 = 1;
  }

  else
  {
    v14 = [(_GDBAManager *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100003A24(connectionCopy, v14);
    }

    v13 = 0;
  }

  return v13;
}

@end