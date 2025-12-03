@interface NEAgentHotspotExtension
- (NEAgentHotspotExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (void)cancelWithError:(id)error;
- (void)dealloc;
- (void)handleAppsUninstalled:(id)uninstalled;
- (void)handleAppsUpdateBegins:(id)begins;
- (void)handleAppsUpdateEnding:(id)ending;
- (void)handleAppsUpdateEnds:(id)ends;
- (void)handleCancel;
- (void)handleDisposeWithCompletionHandler:(id)handler;
- (void)handleInitWithCompletionHandler:(id)handler;
- (void)handleXPCError;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startAuthenticationProvider;
- (void)startEvaluationProvider;
- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
- (void)updateConfiguration:(id)configuration;
- (void)wakeup;
@end

@implementation NEAgentHotspotExtension

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider cancelWithError %@", &v6, 0x16u);
  }
}

- (void)handleXPCError
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v16) = 138412290;
    *(&v16 + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider died unexpectedly", &v16, 0xCu);
  }

  if (self)
  {
    if (objc_getProperty(self, v4, 80, 1))
    {
      [objc_getProperty(self v5];
      objc_setProperty_atomic(self, v6, 0, 80);
    }

    if (objc_getProperty(self, v5, 88, 1))
    {
      [objc_getProperty(self v7];
      objc_setProperty_atomic(self, v8, 0, 88);
    }

    objc_setProperty_atomic(self, v7, 0, 56);
    objc_setProperty_atomic(self, v9, 0, 64);
    objc_setProperty_atomic(self, v10, 0, 40);
    objc_setProperty_atomic(self, v11, 0, 32);
    objc_setProperty_atomic(self, v12, 0, 72);
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ handleExtensionExit", buf, 0xCu);
    }

    Property = objc_getProperty(self, v14, 24, 1);
    *&v16 = _NSConcreteStackBlock;
    *(&v16 + 1) = 3221225472;
    v17 = sub_100002040;
    v18 = &unk_1000EB198;
    selfCopy2 = self;
    v20 = 0;
    dispatch_async(Property, &v16);
  }
}

- (void)stopWithReason:(int)reason
{
  if (self)
  {
    if (objc_getProperty(self, a2, 80, 1))
    {
      Property = objc_getProperty(self, v5, 80, 1);
      reasonCopy2 = reason;
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100002284;
      v18 = &unk_1000EAD98;
      selfCopy = self;
      v8 = &v15;
    }

    else
    {
      if (!objc_getProperty(self, v5, 88, 1))
      {
        return;
      }

      Property = objc_getProperty(self, v9, 88, 1);
      reasonCopy2 = reason;
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100002428;
      v13 = &unk_1000EAD98;
      selfCopy2 = self;
      v8 = &v10;
    }

    [Property stopWithReason:reasonCopy2 completion:{v8, v10, v11, v12, v13, selfCopy2, v15, v16, v17, v18, selfCopy}];
  }
}

- (void)startAuthenticationProvider
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002658;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

- (void)startEvaluationProvider
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002938;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: updateConfiguration", buf, 0xCu);
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
  v9[2] = sub_100002CCC;
  v9[3] = &unk_1000EB198;
  v9[4] = self;
  v10 = configurationCopy;
  v8 = configurationCopy;
  dispatch_async(Property, v9);
}

- (void)wakeup
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: wakeup", buf, 0xCu);
  }

  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002DFC;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(Property, block);
}

- (void)sleepWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletionHandler", buf, 0xCu);
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
  v9[2] = sub_10000322C;
  v9[3] = &unk_1000EB310;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(Property, v9);
}

- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = configurationCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: startWithConfiguration: %@", buf, 0x16u);
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
  block[2] = sub_100003718;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v14 = configurationCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = configurationCopy;
  dispatch_async(Property, block);
}

- (NSXPCInterface)driverInterface
{
  if (qword_1000FD4E0 != -1)
  {
    dispatch_once(&qword_1000FD4E0, &stru_1000E9648);
  }

  v3 = qword_1000FD4D8;

  return v3;
}

- (NSXPCInterface)managerInterface
{
  if (qword_1000FD4D0 != -1)
  {
    dispatch_once(&qword_1000FD4D0, &stru_1000E9628);
  }

  v3 = qword_1000FD4C8;

  return v3;
}

- (void)handleAppsUpdateEnds:(id)ends
{
  endsCopy = ends;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateEnds", buf, 0xCu);
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
  v9[2] = sub_100004990;
  v9[3] = &unk_1000EB198;
  v9[4] = self;
  v10 = endsCopy;
  v8 = endsCopy;
  dispatch_async(Property, v9);
}

- (void)handleAppsUpdateEnding:(id)ending
{
  endingCopy = ending;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateEnding", buf, 0xCu);
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
  v9[2] = sub_100004C08;
  v9[3] = &unk_1000EB198;
  v9[4] = self;
  v10 = endingCopy;
  v8 = endingCopy;
  dispatch_async(Property, v9);
}

- (void)handleAppsUpdateBegins:(id)begins
{
  beginsCopy = begins;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUpdateBegins", buf, 0xCu);
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
  v9[2] = sub_100004DE8;
  v9[3] = &unk_1000EB198;
  v9[4] = self;
  v10 = beginsCopy;
  v8 = beginsCopy;
  dispatch_async(Property, v9);
}

- (void)handleAppsUninstalled:(id)uninstalled
{
  uninstalledCopy = uninstalled;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleAppsUninstalled", buf, 0xCu);
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
  v9[2] = sub_10000502C;
  v9[3] = &unk_1000EB198;
  v10 = uninstalledCopy;
  selfCopy2 = self;
  v8 = uninstalledCopy;
  dispatch_async(Property, v9);
}

- (void)handleCancel
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ handleCancel", buf, 0xCu);
  }

  if (self)
  {
    if (objc_getProperty(self, v4, 80, 1))
    {
      Property = objc_getProperty(self, v5, 80, 1);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000052A8;
      v17 = &unk_1000EAD98;
      selfCopy2 = self;
      v7 = &v14;
    }

    else
    {
      if (!objc_getProperty(self, v5, 88, 1))
      {
        return;
      }

      Property = objc_getProperty(self, v8, 88, 1);
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_1000053A4;
      v12 = &unk_1000EAD98;
      selfCopy3 = self;
      v7 = &v9;
    }

    [Property stopWithReason:15 completion:{v7, v9, v10, v11, v12, selfCopy3, v14, v15, v16, v17, selfCopy2}];
  }
}

- (void)handleDisposeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleDisposeWithCompletionHandler", buf, 0xCu);
  }

  if (self)
  {
    self = objc_getProperty(self, v6, 24, 1);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055D8;
  block[3] = &unk_1000EAAE8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(&self->super, block);
}

- (void)handleInitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ handleInitWithCompletionHandler", &v6, 0xCu);
  }

  handlerCopy[2](handlerCopy, 1, 1);
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NEAgentHotspotExtension;
  [(NEAgentHotspotExtension *)&v4 dealloc];
}

- (NEAgentHotspotExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory
{
  typeCopy = type;
  infoCopy = info;
  queueCopy = queue;
  factoryCopy = factory;
  v23.receiver = self;
  v23.super_class = NEAgentHotspotExtension;
  v17 = [(NEAgentHotspotExtension *)&v23 init];
  if (v17)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v25 = v17;
      v26 = 2112;
      v27 = typeCopy;
      v28 = 2048;
      classCopy = class;
      v30 = 2112;
      v31 = infoCopy;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: pluginType: [%@] pluginClass: [%ld] pluginInfo: [%@]", buf, 0x2Au);
    }

    objc_storeWeak(&v17->_managerObjectFactory, factoryCopy);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_pluginType, type);
    v19 = [infoCopy objectForKeyedSubscript:@"extension-identifier"];
    extensionIdentifier = v17->_extensionIdentifier;
    v17->_extensionIdentifier = v19;

    v21 = [infoCopy objectForKeyedSubscript:@"hotspot-session-type"];
    if (isa_nsnumber())
    {
      v17->_sessionrType = [v21 intValue];
    }

    else
    {

      v17 = 0;
    }
  }

  return v17;
}

@end