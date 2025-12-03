@interface NRRegistryServer
- (NRRegistryServer)initWithParameters:(id)parameters;
- (id)_dumpSecureProperties:(id)properties propertyIDList:(id)list;
- (void)_notifyClients;
- (void)invalidate;
- (void)xpcApplyDiff:(id)diff withSecureProperties:(id)properties block:(id)block;
- (void)xpcBooleanForInternalPreference:(id)preference withBlock:(id)block;
- (void)xpcClientInfo:(id)info;
- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)index withBlock:(id)block;
- (void)xpcGetChangeHistoryWithBlock:(id)block;
- (void)xpcGetDeviceCollectionWithBlock:(id)block;
- (void)xpcGetDiffSinceTokenValue:(unint64_t)value getSecureProperties:(BOOL)properties withBlock:(id)block;
- (void)xpcLongForInternalPreference:(id)preference withBlock:(id)block;
- (void)xpcRetrieveSecureProperties:(id)properties block:(id)block;
- (void)xpcSetMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block;
- (void)xpcSwitchIndex:(id)index;
@end

@implementation NRRegistryServer

- (NRRegistryServer)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v22.receiver = self;
  v22.super_class = NRRegistryServer;
  v5 = [(NRRegistryServer *)&v22 initWithParameters:parametersCopy];
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
    proxyClass = [objc_opt_class() proxyClass];
    v10 = -[NRXPCServer initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:](v8, "initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:", proxyClass, [objc_opt_class() xpcListenerClass], v5, v5, v5);
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
  history = [(NRRegistryServer *)self history];

  if (history)
  {
    sub_1000FE09C(self);
  }
}

- (void)invalidate
{
  managementQueue = [(NRRegistryServer *)self managementQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002048C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(managementQueue, block);

  v4.receiver = self;
  v4.super_class = NRRegistryServer;
  [(NRRegistryServer *)&v4 invalidate];
}

- (void)xpcGetDeviceCollectionWithBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000206B8;
  v4[3] = &unk_1001761E8;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(NRRegistryServer *)selfCopy grabHistoryWithReadBlock:v4];
}

- (id)_dumpSecureProperties:(id)properties propertyIDList:(id)list
{
  propertiesCopy = properties;
  allObjects = [list allObjects];
  if (!allObjects)
  {
    secureProperties = [(NRRegistryServer *)self secureProperties];
    allObjects = [secureProperties allSecurePropertyIDs];
  }

  v9 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = allObjects;
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
        v16 = [propertiesCopy objectForKeyedSubscript:{v15, v18}];
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

- (void)xpcGetDiffSinceTokenValue:(unint64_t)value getSecureProperties:(BOOL)properties withBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000209B4;
  v9[3] = &unk_100176210;
  blockCopy = block;
  valueCopy = value;
  propertiesCopy = properties;
  v9[4] = self;
  v8 = blockCopy;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v9];
}

- (void)xpcRetrieveSecureProperties:(id)properties block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020C74;
  v8[3] = &unk_100176238;
  propertiesCopy = properties;
  blockCopy = block;
  v8[4] = self;
  v6 = propertiesCopy;
  v7 = blockCopy;
  [(NRRegistryServer *)self grabRegistryWithReadBlock:v8];
}

- (void)xpcGetChangeHistoryWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020DA4;
  v5[3] = &unk_100176260;
  blockCopy = block;
  v4 = blockCopy;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v5];
}

- (void)xpcClientInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020E98;
  v4[3] = &unk_100175FA0;
  selfCopy = self;
  infoCopy = info;
  v3 = infoCopy;
  [(NRRegistryServer *)selfCopy enqueueAsync:v4];
}

- (void)xpcApplyDiff:(id)diff withSecureProperties:(id)properties block:(id)block
{
  diffCopy = diff;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021184;
  v12[3] = &unk_1001762B0;
  propertiesCopy = properties;
  v14 = diffCopy;
  blockCopy = block;
  v9 = blockCopy;
  v10 = diffCopy;
  v11 = propertiesCopy;
  [(NRRegistryServer *)self grabRegistryWithWriteBlockAsync:v12];
}

- (void)xpcDeviceIDAtSwitchIndex:(unsigned int)index withBlock:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021380;
  v6[3] = &unk_1001762D8;
  indexCopy = index;
  blockCopy = block;
  v5 = blockCopy;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v6];
}

- (void)xpcSetMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000214BC;
  v9[3] = &unk_100176300;
  consentedCopy = consented;
  dCopy = d;
  blockCopy = block;
  v7 = blockCopy;
  v8 = dCopy;
  [(NRRegistryServer *)self grabRegistryWithWriteBlockAsync:v9];
}

- (void)xpcSwitchIndex:(id)index
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021B18;
  v5[3] = &unk_100176260;
  indexCopy = index;
  v4 = indexCopy;
  [(NRRegistryServer *)self grabHistoryWithReadBlock:v5];
}

- (void)xpcLongForInternalPreference:(id)preference withBlock:(id)block
{
  blockCopy = block;
  keyExistsAndHasValidFormat = 0;
  if (preference)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(preference, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
    v7 = keyExistsAndHasValidFormat != 0;
  }

  else
  {
    v7 = 0;
    AppIntegerValue = 0;
  }

  blockCopy[2](blockCopy, v7, AppIntegerValue);
}

- (void)xpcBooleanForInternalPreference:(id)preference withBlock:(id)block
{
  blockCopy = block;
  keyExistsAndHasValidFormat = 0;
  if (preference)
  {
    v6 = CFPreferencesGetAppBooleanValue(preference, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat) != 0;
    v7 = keyExistsAndHasValidFormat != 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  blockCopy[2](blockCopy, v7, v6);
}

@end