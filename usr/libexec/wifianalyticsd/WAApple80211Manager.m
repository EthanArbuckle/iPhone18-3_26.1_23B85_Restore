@interface WAApple80211Manager
+ (id)sharedObject;
- (WAApple80211Manager)init;
- (id)_getInfraApple80211;
- (id)getInfraApple80211;
@end

@implementation WAApple80211Manager

+ (id)sharedObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BDCC;
  block[3] = &unk_1000ED7E0;
  block[4] = a1;
  if (qword_10010DDD8 != -1)
  {
    dispatch_once(&qword_10010DDD8, block);
  }

  v2 = qword_10010DDD0;

  return v2;
}

- (WAApple80211Manager)init
{
  v8.receiver = self;
  v8.super_class = WAApple80211Manager;
  v2 = [(WAApple80211Manager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    interfaceNameToApple80211InstanceMap = v2->_interfaceNameToApple80211InstanceMap;
    v2->_interfaceNameToApple80211InstanceMap = v3;

    v5 = dispatch_queue_create("WAApple80211ManagerQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;
  }

  else
  {
    serialQueue = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(serialQueue, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "[WAApple80211Manager init]";
      v11 = 1024;
      v12 = 51;
      _os_log_impl(&_mh_execute_header, serialQueue, OS_LOG_TYPE_ERROR, "%{public}s::%d:FAILED to initialize!", buf, 0x12u);
    }
  }

  return v2;
}

- (id)getInfraApple80211
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003C03C;
  v12 = sub_10003C04C;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C054;
  block[3] = &unk_1000ED830;
  objc_copyWeak(&v7, &location);
  block[4] = &v8;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);

  return v4;
}

- (id)_getInfraApple80211
{
  if (self->_infraInterfaceName)
  {
    interfaceNameToApple80211InstanceMap = self->_interfaceNameToApple80211InstanceMap;
    if (interfaceNameToApple80211InstanceMap)
    {
      v4 = [(NSMutableDictionary *)interfaceNameToApple80211InstanceMap objectForKey:?];
      if (v4)
      {
        v7 = v4;
        goto LABEL_10;
      }
    }
  }

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446466;
    v21 = "[WAApple80211Manager _getInfraApple80211]";
    v22 = 1024;
    v23 = 78;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Finding interface name and alloc WAApple80211", &v20, 0x12u);
  }

  v6 = [[WAApple80211 alloc] initByFindingInterfaceName];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 ifName];
    infraInterfaceName = self->_infraInterfaceName;
    self->_infraInterfaceName = v8;

    v10 = self->_infraInterfaceName;
    if (v10 && [(NSString *)v10 length])
    {
      [(NSMutableDictionary *)self->_interfaceNameToApple80211InstanceMap setObject:v7 forKey:self->_infraInterfaceName];
      goto LABEL_10;
    }

    v13 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v20 = 136446466;
    v21 = "[WAApple80211Manager _getInfraApple80211]";
    v22 = 1024;
    v23 = 84;
    v14 = "%{public}s::%d:WAApple80211 bad infraInterfaceName";
    goto LABEL_17;
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446466;
    v21 = "[WAApple80211Manager _getInfraApple80211]";
    v22 = 1024;
    v23 = 81;
    v14 = "%{public}s::%d:WAApple80211 initByFindingInterfaceName failed";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, &v20, 0x12u);
  }

LABEL_18:

  v15 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446466;
    v21 = "[WAApple80211Manager _getInfraApple80211]";
    v22 = 1024;
    v23 = 91;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create WAApple80211", &v20, 0x12u);
  }

  if (self->_infraInterfaceName)
  {
    v16 = self->_interfaceNameToApple80211InstanceMap;
    if (v16)
    {
      v17 = [(NSMutableDictionary *)v16 objectForKey:?];

      if (v17)
      {
        v18 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = 136446466;
          v21 = "[WAApple80211Manager _getInfraApple80211]";
          v22 = 1024;
          v23 = 97;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Removing existing entry in interface map", &v20, 0x12u);
        }

        [(NSMutableDictionary *)self->_interfaceNameToApple80211InstanceMap removeObjectForKey:self->_infraInterfaceName];
      }
    }
  }

  v19 = self->_infraInterfaceName;
  self->_infraInterfaceName = 0;

  v7 = 0;
LABEL_10:
  v11 = v7;

  return v11;
}

@end