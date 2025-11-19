@interface ServiceProviderMgr
+ (id)sharedInstance;
- (ServiceProviderMgr)init;
- (id)initSingleton;
- (id)serviceProviderForAccount:(id)a3;
- (void)accountListDidChange;
- (void)dealloc;
- (void)start;
- (void)startGlobalManagers;
- (void)stop;
- (void)stopGlobalManagers;
@end

@implementation ServiceProviderMgr

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036958(self, v3);
  }

  v4 = qword_1000700F8;
  qword_1000700F8 = 0;

  v5.receiver = self;
  v5.super_class = ServiceProviderMgr;
  [(ServiceProviderMgr *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_100070100 != -1)
  {
    sub_1000369F0();
  }

  v2 = qword_1000700F8;
  if (!qword_1000700F8)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The ServiceProviderMgr singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1000700F8;
  }

  return v2;
}

- (ServiceProviderMgr)init
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100036A48(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v13.receiver = self;
  v13.super_class = ServiceProviderMgr;
  v2 = [(ServiceProviderMgr *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v16 = v4;
    v17 = objc_opt_class();
    v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    accountTypeToServiceProviderType = v2->_accountTypeToServiceProviderType;
    v2->_accountTypeToServiceProviderType = v5;

    if (+[FMFGainsboroughServiceProvider isSimulationActive])
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v14 = v8;
      v15 = objc_opt_class();
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = v2->_accountTypeToServiceProviderType;
      v2->_accountTypeToServiceProviderType = v9;
    }

    v11 = +[NSMutableDictionary dictionary];
    [(ServiceProviderMgr *)v2 setAccountUUIDToServiceProvider:v11];

    objc_storeStrong(&qword_1000700F8, v2);
  }

  return v2;
}

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[AccountManager sharedInstance];
  [v4 loadExistingAccounts];

  v5 = +[AccountManager sharedInstance];
  v6 = [v5 accounts];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000082AC;
  v11[3] = &unk_10005D320;
  v11[4] = self;
  [v6 enumerateObjectsUsingBlock:v11];
  [(ServiceProviderMgr *)self startGlobalManagers];
  v7 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
  [v7 enumerateKeysAndObjectsUsingBlock:&stru_10005D360];

  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
    v10 = [v9 count];
    *buf = 134217984;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Total %ld service providers at startup", buf, 0xCu);
  }

  [v3 addObserver:self selector:"accountListDidChange" name:@"AccountListDidChangeNotification" object:0];
}

- (void)stop
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"AccountListDidChangeNotification" object:0];
  v3 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_10005D380];

  v4 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
  [v4 removeAllObjects];

  [(ServiceProviderMgr *)self stopGlobalManagers];
}

- (void)startGlobalManagers
{
  v2 = +[AppleAccountManager sharedInstance];
  [v2 syncFMFAccountInfo];

  v3 = +[FMFFencesMgr sharedInstance];
  [v3 start];
}

- (void)stopGlobalManagers
{
  v2 = +[FMFFencesMgr sharedInstance];
  [v2 stop];
}

- (void)accountListDidChange
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Account list changed. Recalculating service providers...", buf, 2u);
  }

  v4 = +[AccountManager sharedInstance];
  v5 = [v4 accounts];

  v6 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
  v7 = [v6 mutableCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008730;
  v13[3] = &unk_10005D3A8;
  v8 = v7;
  v14 = v8;
  v15 = self;
  [v5 enumerateObjectsUsingBlock:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008930;
  v12[3] = &unk_10005D3D0;
  v12[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
    v11 = [v10 count];
    *buf = 134217984;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Total %ld service providers now", buf, 0xCu);
  }
}

- (id)serviceProviderForAccount:(id)a3
{
  v4 = a3;
  v5 = [(ServiceProviderMgr *)self accountUUIDToServiceProvider];
  v6 = [v4 uuid];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

@end