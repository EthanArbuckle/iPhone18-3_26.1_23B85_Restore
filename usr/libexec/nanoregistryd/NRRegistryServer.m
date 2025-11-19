@interface NRRegistryServer
- (NRRegistryServer)initWithParameters:(id)a3;
- (id)_dumpSecureProperties:(id)a3 propertyIDList:(id)a4;
- (void)_notifyClients;
- (void)invalidate;
- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5;
- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcClientInfo:(id)a3;
- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)a3 withBlock:(id)a4;
- (void)xpcGetChangeHistoryWithBlock:(id)a3;
- (void)xpcGetDeviceCollectionWithBlock:(id)a3;
- (void)xpcGetDiffSinceTokenValue:(unint64_t)a3 getSecureProperties:(BOOL)a4 withBlock:(id)a5;
- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4;
- (void)xpcSetMigrationConsented:(BOOL)a3 forDeviceID:(id)a4 withBlock:(id)a5;
- (void)xpcSwitchIndex:(id)a3;
@end

@implementation NRRegistryServer

- (NRRegistryServer)initWithParameters:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NRRegistryServer;
  v5 = [(NRRegistryServer *)&v22 initWithParameters:v4];
  if (v5)
  {
    v5->_devicesUpdateCounterNotifyToken = [objc_opt_class() registerNotifyTokenWithName:NRRegistryUpdateCounterNotification withQueue:0 withBlock:0];
    objc_initWeak(&location, v5);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002011C;
    v19[3] = &unk_100175D30;
    objc_copyWeak(&v20, &location);
    v6 = [(NRRegistryServer *)v5 addDiffObserverWithWriteBlock:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002015C;
    v17[3] = &unk_100176170;
    objc_copyWeak(&v18, &location);
    v7 = [(NRRegistryServer *)v5 addSecurePropertiesObserverWithReadBlock:v17];
    v8 = [NRXPCServer alloc];
    v9 = [objc_opt_class() proxyClass];
    v10 = -[NRXPCServer initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:](v8, "initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:", v9, [objc_opt_class() xpcListenerClass], v5, v5, v5);
    registryServer = v5->_registryServer;
    v5->_registryServer = v10;

    v12 = [objc_msgSend(objc_opt_class() "proxyClass")];
    v13 = nr_framework_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = nr_framework_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Listening to %@", buf, 0xCu);
      }
    }

    [(NRRegistryServer *)v5 _notifyClients];
    [(NRXPCServer *)v5->_registryServer resume];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_notifyClients
{
  v3 = [(NRRegistryServer *)self history];

  if (v3)
  {
    sub_1000FE09C(self);
  }
}

- (void)invalidate
{
  v3 = [(NRRegistryServer *)self managementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002048C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = NRRegistryServer;
  [(NRRegistryServer *)&v4 invalidate];
}

- (void)xpcGetDeviceCollectionWithBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000206B8;
  v4[3] = &unk_1001761E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRRegistryServer *)v5 grabHistoryWithReadBlock:v4];
}

- (id)_dumpSecureProperties:(id)a3 propertyIDList:(id)a4
{
  v6 = a3;
  v7 = [a4 allObjects];
  if (!v7)
  {
    v8 = [(NRRegistryServer *)self secureProperties];
    v7 = [v8 allSecurePropertyIDs];
  }

  v9 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:{v15, v18}];
        if (v16)
        {
          [v9 setObject:v16 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)xpcGetDiffSinceTokenValue:(unint64_t)a3 getSecureProperties:(BOOL)a4 withBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000209B4;
  v9[3] = &unk_100176210;
  v10 = a5;
  v11 = a3;
  v12 = a4;
  v9[4] = self;
  v8 = v10;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v9];
}

- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020C74;
  v8[3] = &unk_100176238;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(NRRegistryServer *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcGetChangeHistoryWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020DA4;
  v5[3] = &unk_100176260;
  v6 = a3;
  v4 = v6;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v5];
}

- (void)xpcClientInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020E98;
  v4[3] = &unk_100175FA0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRRegistryServer *)v5 enqueueAsync:v4];
}

- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021184;
  v12[3] = &unk_1001762B0;
  v13 = a4;
  v14 = v8;
  v15 = a5;
  v9 = v15;
  v10 = v8;
  v11 = v13;
  [(NRRegistryServer *)self grabRegistryWithWriteBlockAsync:v12];
}

- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)a3 withBlock:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021380;
  v6[3] = &unk_1001762D8;
  v8 = a3;
  v7 = a4;
  v5 = v7;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v6];
}

- (void)xpcSetMigrationConsented:(BOOL)a3 forDeviceID:(id)a4 withBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000214BC;
  v9[3] = &unk_100176300;
  v12 = a3;
  v10 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [(NRRegistryServer *)self grabRegistryWithWriteBlockAsync:v9];
}

- (void)xpcSwitchIndex:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021B18;
  v5[3] = &unk_100176260;
  v6 = a3;
  v4 = v6;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v5];
}

- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  keyExistsAndHasValidFormat = 0;
  if (a3)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(a3, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
    v7 = keyExistsAndHasValidFormat != 0;
  }

  else
  {
    v7 = 0;
    AppIntegerValue = 0;
  }

  v5[2](v5, v7, AppIntegerValue);
}

- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  keyExistsAndHasValidFormat = 0;
  if (a3)
  {
    v6 = CFPreferencesGetAppBooleanValue(a3, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat) != 0;
    v7 = keyExistsAndHasValidFormat != 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v5[2](v5, v7, v6);
}

@end