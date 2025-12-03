@interface RPClientManager
+ (id)sharedInstance;
- (RPClientManager)init;
- (id)getClientContainingBundleID:(id)d;
- (id)getClientForBroadcastWithHostBundleID:(id)d;
- (id)getClientMatchingBundleID:(id)d;
- (id)getClientWithBundleID:(id)d;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)removeClient:(id)client;
- (void)stopAllClientsWithHandler:(id)handler;
@end

@implementation RPClientManager

+ (id)sharedInstance
{
  if (qword_1000B68F8 != -1)
  {
    sub_100062748();
  }

  v3 = qword_1000B68F0;

  return v3;
}

- (RPClientManager)init
{
  v8.receiver = self;
  v8.super_class = RPClientManager;
  v2 = [(RPClientManager *)&v8 init];
  if (v2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v10 = "[RPClientManager init]";
      v11 = 1024;
      v12 = 34;
      v13 = 2048;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v3 = objc_alloc_init(NSMutableDictionary);
    bundleIDToClientDictionary = v2->_bundleIDToClientDictionary;
    v2->_bundleIDToClientDictionary = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    mainBundleIDToBundleID = v2->_mainBundleIDToBundleID;
    v2->_mainBundleIDToBundleID = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPClientManager dealloc]";
    v6 = 1024;
    v7 = 44;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPClientManager;
  [(RPClientManager *)&v3 dealloc];
}

- (void)addClient:(id)client
{
  bundleIDToClientDictionary = self->_bundleIDToClientDictionary;
  clientCopy = client;
  clientBundleID = [clientCopy clientBundleID];
  [(NSMutableDictionary *)bundleIDToClientDictionary setObject:clientCopy forKey:clientBundleID];

  clientBundleID2 = [clientCopy clientBundleID];
  mainBundleIDToBundleID = self->_mainBundleIDToBundleID;
  clientMainBundleID = [clientCopy clientMainBundleID];

  [(NSMutableDictionary *)mainBundleIDToBundleID setObject:clientBundleID2 forKeyedSubscript:clientMainBundleID];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  [clientCopy stopCurrentActiveSessionWithHandler:&stru_1000A1E48];
  [clientCopy invalidate];
  bundleIDToClientDictionary = self->_bundleIDToClientDictionary;
  clientBundleID = [clientCopy clientBundleID];
  [(NSMutableDictionary *)bundleIDToClientDictionary removeObjectForKey:clientBundleID];

  mainBundleIDToBundleID = self->_mainBundleIDToBundleID;
  clientMainBundleID = [clientCopy clientMainBundleID];

  [(NSMutableDictionary *)mainBundleIDToBundleID setObject:0 forKeyedSubscript:clientMainBundleID];
}

- (id)getClientWithBundleID:(id)d
{
  dCopy = d;
  if (dCopy && ([(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy];
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_mainBundleIDToBundleID objectForKeyedSubscript:dCopy];
    if (v7)
    {
      v6 = [(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)getClientForBroadcastWithHostBundleID:(id)d
{
  dCopy = d;
  if (dCopy && ([(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allValues = [(NSMutableDictionary *)self->_bundleIDToClientDictionary allValues];
    v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          clientBundleID = [v12 clientBundleID];
          v14 = [clientBundleID componentsSeparatedByString:@".pid."];

          if (v14)
          {
            if ([v14 count])
            {
              v15 = [v14 objectAtIndexedSubscript:0];
              v16 = [dCopy isEqualToString:v15];

              if (v16)
              {
                v6 = v12;

                goto LABEL_16;
              }
            }
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)getClientContainingBundleID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_bundleIDToClientDictionary allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        clientBundleID = [v9 clientBundleID];
        v11 = [clientBundleID containsString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)getClientMatchingBundleID:(id)d
{
  dCopy = d;
  if (dCopy && ([(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableDictionary *)self->_bundleIDToClientDictionary objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)stopAllClientsWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPClientManager stopAllClientsWithHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 107;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_bundleIDToClientDictionary allValues];
  v7 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
  v13 = handlerCopy;
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 136446466;
          v25 = "[RPClientManager stopAllClientsWithHandler:]";
          v26 = 1024;
          v27 = 115;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enter stop group", v24, 0x12u);
        }

        dispatch_group_enter(v5);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002AC28;
        v17[3] = &unk_1000A1A68;
        v19 = buf;
        v18 = v5;
        [v10 stopCurrentActiveSessionWithHandler:v17];
      }

      v7 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136446466;
    v25 = "[RPClientManager stopAllClientsWithHandler:]";
    v26 = 1024;
    v27 = 133;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify stop group", v24, 0x12u);
  }

  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AD34;
  block[3] = &unk_1000A1E70;
  v15 = v13;
  v16 = buf;
  v12 = v13;
  dispatch_group_notify(v5, v11, block);

  _Block_object_dispose(buf, 8);
}

@end