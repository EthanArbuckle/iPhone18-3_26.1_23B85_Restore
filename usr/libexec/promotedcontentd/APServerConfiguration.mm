@interface APServerConfiguration
- (APServerConfiguration)init;
- (id)serverURLForMessageID:(id)d andBundleID:(id)iD;
- (void)dealloc;
@end

@implementation APServerConfiguration

- (APServerConfiguration)init
{
  v23.receiver = self;
  v23.super_class = APServerConfiguration;
  v2 = [(APServerConfiguration *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v5 = +[APServerConfigurationSettings settings];
    serverConfig = [v5 serverConfig];
    configurations = v2->_configurations;
    v2->_configurations = serverConfig;

    v8 = v2->_configurations;
    v9 = APLogForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        v11 = "Read configurations from settings module.";
        v12 = v10;
        v13 = OS_LOG_TYPE_INFO;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, 2u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      v11 = "Error reading from settings module.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    objc_initWeak(buf, v2);
    v14 = +[NSDistributedNotificationCenter defaultCenter];
    v15 = kAPAdLibBundleID;
    v16 = v2->_operationQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002A7508;
    v20[3] = &unk_10047C8E0;
    objc_copyWeak(&v21, buf);
    v17 = [v14 addObserverForName:@"ADConfigurationDidChangeNotification" object:v15 queue:v16 usingBlock:v20];
    notificationObject = v2->_notificationObject;
    v2->_notificationObject = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self->_notificationObject];

  v4.receiver = self;
  v4.super_class = APServerConfiguration;
  [(APServerConfiguration *)&v4 dealloc];
}

- (id)serverURLForMessageID:(id)d andBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") || (+[APMockAdServerSettings settings](APMockAdServerSettings, "settings"), v8 = objc_claimAutoreleasedReturnValue(), [v8 mockAdServerUrl], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9) || (+[APMockAdServerSettings settings](APMockAdServerSettings, "settings"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "mockAdServerUrl"), v11 = objc_claimAutoreleasedReturnValue(), +[NSURL URLWithString:](NSURL, "URLWithString:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    v13 = [NSURL URLWithString:@"https://iadsdk.apple.com/adserver"];
    configurations = [(APServerConfiguration *)self configurations];

    if (configurations)
    {
      configurations2 = [(APServerConfiguration *)self configurations];
      v16 = [configurations2 objectForKeyedSubscript:iDCopy];

      if (v16)
      {
        v17 = [v16 objectForKeyedSubscript:dCopy];
        v18 = APLogForCategory();
        v19 = v18;
        if (v17)
        {
          v20 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v24 = 138543362;
            v25 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Returning serverConfig URL: %{public}@", &v24, 0xCu);
            v20 = v17;
          }
        }

        else
        {
          v20 = v13;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Did not find serverURL. Returning default serverURL", &v24, 2u);
            v20 = v13;
          }
        }

        v12 = v20;
      }

      else
      {
        v22 = APLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Did not find requestTypeDictionary in serverConfigRecord. Returning default serverURL", &v24, 2u);
        }

        v12 = v13;
      }
    }

    else
    {
      v21 = APLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Did not find configurations in serverConfigRecord. Returning default serverURL", &v24, 2u);
      }

      v12 = v13;
    }
  }

  return v12;
}

@end