@interface NEAgentExtensibleSSO
- (NEAgentExtensibleSSO)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory;
- (NSArray)uuids;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (void)authenticateWithParameters:(id)parameters completionHandler:(id)handler;
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidNotHandle:(id)handle;
- (void)handleInitWithCompletionHandler:(id)handler;
- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation NEAgentExtensibleSSO

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  bodyCopy = body;
  responseCopy = response;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VPN Authorization completed", v13, 2u);
  }

  v10 = [responseCopy valueForHTTPHeaderField:@"X-SSO-Net-Credentials"];

  if (bodyCopy && v10 && [v10 isEqualToString:@"IdentityPersistentReference"])
  {
    v14 = @"extensible-sso-credential-certificate";
    v15 = bodyCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    sub_1000142D8(self, 1, v11);
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "VPN Authorization failed with bad HTTP response", v13, 2u);
    }

    sub_1000142D8(self, 0, 0);
  }
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  errorCopy = error;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "VPN Authorization completed with error %@", &v7, 0xCu);
  }

  sub_1000142D8(self, 0, 0);
}

- (void)authorizationDidCancel:(id)cancel
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "VPN Authorization canceled", v5, 2u);
  }

  sub_1000142D8(self, 2, 0);
}

- (void)authorizationDidNotHandle:(id)handle
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "VPN Authorization not handled", v5, 2u);
  }

  sub_1000142D8(self, 0, 0);
}

- (void)authenticateWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = [Property VPN];
  protocol = [v10 protocol];
  serverAddress = [protocol serverAddress];

  if (serverAddress)
  {
    goto LABEL_7;
  }

  v14 = self ? objc_getProperty(self, v13, 40, 1) : 0;
  appVPN = [v14 appVPN];
  protocol2 = [appVPN protocol];
  serverAddress = [protocol2 serverAddress];

  if (serverAddress)
  {
LABEL_7:
    v26[0] = @"X-SSO-Net-Authorization-Type";
    v26[1] = @"X-SSO-Net-Authorization";
    v27[0] = @"IKEv2";
    v27[1] = @"Certificate";
    v26[2] = @"X-SSO-Net-Resource";
    v27[2] = serverAddress;
    v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    if (self)
    {
      v19 = objc_getProperty(self, v17, 24, 1);
    }

    else
    {
      v19 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000147A8;
    block[3] = &unk_1000249B8;
    block[4] = self;
    v23 = v18;
    v24 = handlerCopy;
    v20 = v18;
    dispatch_async(v19, block);
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Configuration is missing a server address, cannot use extensible SSO", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000149A4;
  block[3] = &unk_1000249B8;
  block[4] = self;
  v13 = configurationCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = configurationCopy;
  dispatch_async(Property, block);
}

- (NSXPCInterface)driverInterface
{
  if (qword_10002B770 != -1)
  {
    dispatch_once(&qword_10002B770, &stru_100024990);
  }

  v3 = qword_10002B768;

  return v3;
}

- (NSXPCInterface)managerInterface
{
  if (qword_10002B760 != -1)
  {
    dispatch_once(&qword_10002B760, &stru_100024970);
  }

  v3 = qword_10002B758;

  return v3;
}

- (void)handleInitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  handlerCopy[2](handlerCopy, [SOAuthorization canPerformAuthorizationWithURL:Property responseCode:0 useInternalExtensions:0], 1);
}

- (NEAgentExtensibleSSO)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory
{
  infoCopy = info;
  queueCopy = queue;
  factoryCopy = factory;
  if (!objc_opt_class())
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "SOAuthorization is not available, cannot use extensible SSO", buf, 2u);
    }

    goto LABEL_11;
  }

  v22.receiver = self;
  v22.super_class = NEAgentExtensibleSSO;
  v13 = [(NEAgentExtensibleSSO *)&v22 init];
  self = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_managerObjectFactory, factoryCopy);
    objc_storeStrong(&self->_queue, queue);
    v14 = [infoCopy objectForKeyedSubscript:@"plugin-path"];
    v15 = [NSURL URLWithString:v14];
    extensibleSSOURL = self->_extensibleSSOURL;
    self->_extensibleSSOURL = v15;

    if (self->_extensibleSSOURL)
    {
      v17 = objc_alloc_init(SOAuthorization);
      authorization = self->_authorization;
      self->_authorization = v17;

      [(SOAuthorization *)self->_authorization setDelegate:self];
      [(SOAuthorization *)self->_authorization setDelegateDispatchQueue:self->_queue];
      [(SOAuthorization *)self->_authorization setEnableUserInteraction:0];

      goto LABEL_5;
    }

    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NSURL URLWithString failed for extensible SSO %@", buf, 0xCu);
    }

LABEL_11:
    selfCopy = 0;
    goto LABEL_12;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (NSArray)uuids
{
  v8 = 0;
  memset(buffer, 0, sizeof(buffer));
  v2 = getpid();
  v3 = 0;
  if (proc_pidinfo(v2, 17, 1uLL, buffer, 56) == 56)
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:buffer];
    v6 = v4;
    v3 = [NSArray arrayWithObjects:&v6 count:1];
  }

  return v3;
}

@end