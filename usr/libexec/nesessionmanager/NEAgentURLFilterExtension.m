@interface NEAgentURLFilterExtension
- (NEAgentURLFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (void)cancelWithError:(id)a3;
- (void)dealloc;
- (void)fetchURLFilterServerParameters;
- (void)getURLFilterClientConnectionWithCompletionHandler:(int)a3 completionHandler:(id)a4;
- (void)handleAppsUninstalled:(id)a3;
- (void)handleAppsUpdateBegins:(id)a3;
- (void)handleAppsUpdateEnding:(id)a3;
- (void)handleAppsUpdateEnds:(id)a3;
- (void)handleCancel;
- (void)handleDisposeWithCompletionHandler:(id)a3;
- (void)handleXPCError;
- (void)resetURLFilterCache;
- (void)sleepWithCompletionHandler:(id)a3;
- (void)startURLFilter;
- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)updateConfiguration:(id)a3;
- (void)wakeup;
@end

@implementation NEAgentURLFilterExtension

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = self;
    v8 = 2080;
    v9 = "[NEAgentURLFilterExtension cancelWithError:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %s - Extension cancelWithError %@", &v6, 0x20u);
  }

  sub_10009C4E0(self, 0, 2);
}

- (void)handleXPCError
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v8 = 138412546;
    *&v8[4] = self;
    *&v8[12] = 2080;
    *&v8[14] = "[NEAgentURLFilterExtension handleXPCError]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: %s - Extension died unexpectedly", v8, 0x16u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    *v8 = _NSConcreteStackBlock;
    *&v8[8] = 3221225472;
    *&v8[16] = sub_10009C85C;
    v9 = &unk_1000EB198;
    v10 = self;
    v11 = 0;
    dispatch_async(Property, v8);

    v7 = objc_getProperty(self, v6, 24, 1);
    *v8 = _NSConcreteStackBlock;
    *&v8[8] = 3221225472;
    *&v8[16] = sub_10009C718;
    v9 = &unk_1000EB1C0;
    v10 = self;
    dispatch_async(v7, v8);
  }
}

- (void)resetURLFilterCache
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CBD0;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(&self->super, block);
}

- (void)fetchURLFilterServerParameters
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CD80;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(&self->super, block);
}

- (void)getURLFilterClientConnectionWithCompletionHandler:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009CF64;
  v9[3] = &unk_1000EB310;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(Property, v9);
}

- (void)startURLFilter
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D17C;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(&self->super, block);
}

- (void)updateConfiguration:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009F4B4;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)wakeup
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F8BC;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(&self->super, block);
}

- (void)sleepWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009FB00;
  v8[3] = &unk_1000EB310;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)startWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = self;
    v18 = 2080;
    v19 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: %s - %@", buf, 0x20u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v9, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FE4C;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(Property, block);
}

- (NSXPCInterface)driverInterface
{
  if (qword_1000FD5B8 != -1)
  {
    dispatch_once(&qword_1000FD5B8, &stru_1000EAD48);
  }

  v3 = qword_1000FD5B0;

  return v3;
}

- (NSXPCInterface)managerInterface
{
  if (qword_1000FD5A8 != -1)
  {
    dispatch_once(&qword_1000FD5A8, &stru_1000EAD28);
  }

  v3 = qword_1000FD5A0;

  return v3;
}

- (void)handleAppsUpdateEnds:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A0A4C;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)handleAppsUpdateEnding:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A0C30;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)handleAppsUpdateBegins:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A0D78;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)handleAppsUninstalled:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A10D4;
  v8[3] = &unk_1000EB198;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)handleCancel
{
  if (self)
  {
    if (objc_getProperty(self, a2, 104, 1))
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000A13A8;
      v4[3] = &unk_1000EAD08;
      v4[4] = self;
      [objc_getProperty(self v3];
    }
  }
}

- (void)handleDisposeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = "[NEAgentURLFilterExtension handleDisposeWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A1600;
  v9[3] = &unk_1000EB310;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(Property, v9);
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2080;
    v19 = "[NEAgentURLFilterExtension dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  if (self)
  {
    if (objc_getProperty(self, v4, 56, 1))
    {
      Property = objc_getProperty(self, v5, 56, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(self, v7, 0, 56);
    }

    if (objc_getProperty(self, v5, 128, 1))
    {
      v9 = objc_getProperty(self, v8, 128, 1);
      dispatch_source_cancel(v9);
      objc_setProperty_atomic(self, v10, 0, 128);
    }

    if (objc_getProperty(self, v8, 120, 1))
    {
      v12 = objc_getProperty(self, v11, 120, 1);
      dispatch_source_cancel(v12);
      objc_setProperty_atomic(self, v13, 0, 120);
    }

    objc_setProperty_atomic(self, v11, 0, 104);
    objc_setProperty_atomic(self, v14, 0, 112);
  }

  v15.receiver = self;
  v15.super_class = NEAgentURLFilterExtension;
  [(NEAgentURLFilterExtension *)&v15 dealloc];
}

- (NEAgentURLFilterExtension)initWithPluginType:(id)a3 pluginClass:(int64_t)a4 pluginInfo:(id)a5 queue:(id)a6 factory:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = NEAgentURLFilterExtension;
  v17 = [(NEAgentURLFilterExtension *)&v20 init];
  if (v17)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v22 = v17;
      v23 = 2080;
      v24 = "[NEAgentURLFilterExtension initWithPluginType:pluginClass:pluginInfo:queue:factory:]";
      v25 = 2112;
      v26 = v13;
      v27 = 2048;
      v28 = a4;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: %s - pluginType %@ pluginClass %ld pluginInfo %@", buf, 0x34u);
    }

    objc_storeWeak(&v17->_managerObjectFactory, v16);
    objc_storeStrong(&v17->_queue, a6);
    objc_storeStrong(&v17->_pluginType, a3);
    objc_storeStrong(&v17->_extensionIdentifier, a3);
  }

  return v17;
}

@end