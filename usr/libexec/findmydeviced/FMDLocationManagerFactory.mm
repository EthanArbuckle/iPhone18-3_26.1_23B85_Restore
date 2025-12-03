@interface FMDLocationManagerFactory
+ (FMDLocationManagerFactory)sharedInstance;
- (FMDLocationManagerFactory)init;
- (id)_newCLLocationManager;
- (id)newLocationManager;
- (void)_discardLocationManager:(id)manager;
@end

@implementation FMDLocationManagerFactory

+ (FMDLocationManagerFactory)sharedInstance
{
  if (qword_1003144B0 != -1)
  {
    sub_10000EAA8();
  }

  v3 = qword_1003144A8;

  return v3;
}

- (id)newLocationManager
{
  _newCLLocationManager = [(FMDLocationManagerFactory *)self _newCLLocationManager];
  v4 = [[FMDLocationManagerProxy alloc] initWithLocationManager:_newCLLocationManager];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012A05C;
  v6[3] = &unk_1002CD238;
  objc_copyWeak(&v7, &location);
  [(FMDLocationManagerProxy *)v4 setProxyDeallocationBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)_newCLLocationManager
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000A964;
  v14 = sub_100002A7C;
  v15 = 0;
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDLocationManagerFactory creating location manager", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000EDF8;
  v9[3] = &unk_1002CD260;
  v9[4] = self;
  v9[5] = &v10;
  v4 = objc_retainBlock(v9);
  if (+[NSThread isMainThread])
  {
    (v4[2])(v4);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v4);
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v11[5];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDLocationManagerFactory created %@", buf, 0xCu);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (FMDLocationManagerFactory)init
{
  v5.receiver = self;
  v5.super_class = FMDLocationManagerFactory;
  v2 = [(FMDLocationManagerFactory *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(FMDLocationManagerFactory *)v2 setLocationManagers:v3];
  }

  return v2;
}

- (void)_discardLocationManager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A1C0;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v8, &location);
  v7 = managerCopy;
  v5 = managerCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end