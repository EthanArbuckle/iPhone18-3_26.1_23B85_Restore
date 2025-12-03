@interface SDBonjourResolver
- (SDBonjourResolver)initWithName:(id)name type:(id)type domain:(id)domain path:(id)path timeout:(BOOL)timeout;
- (SDBonjourResolverDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)notifyClient:(int)client;
- (void)resolve;
@end

@implementation SDBonjourResolver

- (SDBonjourResolver)initWithName:(id)name type:(id)type domain:(id)domain path:(id)path timeout:(BOOL)timeout
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = SDBonjourResolver;
  v17 = [(SDBonjourResolver *)&v24 init];
  v18 = v17;
  if (v17)
  {
    v17->_connection = 0;
    objc_storeStrong(&v17->_domain, domain);
    v18->_error = 0;
    hostName = v18->_hostName;
    v18->_hostName = 0;

    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v18->_path, path);
    portNumber = v18->_portNumber;
    v18->_portNumber = 0;

    v18->_resolve = 0;
    v18->_timeout = timeout;
    timer = v18->_timer;
    v18->_timer = 0;

    objc_storeStrong(&v18->_type, type);
    url = v18->_url;
    v18->_url = 0;
  }

  return v18;
}

- (void)dealloc
{
  [(SDBonjourResolver *)self cancel];
  v3.receiver = self;
  v3.super_class = SDBonjourResolver;
  [(SDBonjourResolver *)&v3 dealloc];
}

- (void)notifyClient:(int)client
{
  [(SDBonjourResolver *)self cancel];
  self->_error = client;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bonjourResolverDidChange:self];
}

- (void)resolve
{
  p_connection = &self->_connection;
  if (self->_connection)
  {
    return;
  }

  Connection = DNSServiceCreateConnection(&self->_connection);
  if (!Connection)
  {
    self->_resolve = self->_connection;
    uTF8String = [(NSString *)self->_name UTF8String];
    uTF8String2 = [(NSString *)self->_type UTF8String];
    uTF8String3 = [(NSString *)self->_domain UTF8String];
    v10 = +[SDStatusMonitor sharedMonitor];
    if ([(NSString *)self->_type isEqual:sub_10011830C()])
    {
      v30 = uTF8String;
      if ([v10 enableDemoMode])
      {
        v11 = 0;
        v12 = 0x4000;
      }

      else
      {
        v12 = 1064960;
        v13 = sub_1001F2A44();
        if (v13)
        {
          v11 = v13;
        }

        else
        {
          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100272450();
          }

          v11 = 0;
        }
      }

      v15 = airdrop_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v16 = sub_1001F04A8(v11);
        v17 = v16;
        v29 = v10;
        if (v16)
        {
          v27 = 0;
          v18 = v16;
        }

        else if (v11)
        {
          v18 = [NSNumber numberWithInt:v11];
          v27 = 1;
        }

        else
        {
          v27 = 0;
          v18 = @"all interfaces";
        }

        *buf = 138412546;
        v33 = name;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Bonjour resolving %@ over %@", buf, 0x16u);
        if (v27)
        {
        }

        v10 = v29;
      }

      uTF8String = v30;
    }

    else
    {
      LODWORD(v11) = 0;
      v12 = 0x4000;
    }

    v19 = DNSServiceResolve(&self->_resolve, v12, v11, uTF8String, uTF8String2, uTF8String3, sub_1002721A4, self);
    if (v19)
    {
      v20 = v19;
      v21 = browser_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100272490();
      }
    }

    else
    {
      v22 = DNSServiceSetDispatchQueue(*p_connection, &_dispatch_main_q);
      if (!v22)
      {
        if (self->_timeout)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1002721D4;
          v31[3] = &unk_1008CDEA0;
          v31[4] = self;
          v23 = sub_1001F0548(0, &_dispatch_main_q, v31);
          timer = self->_timer;
          self->_timer = v23;

          v25 = self->_timer;
          v26 = sub_1001F0530(15.0);
          sub_1001F05F0(v25, v26);
          dispatch_resume(self->_timer);
        }

        goto LABEL_32;
      }

      v20 = v22;
      v21 = browser_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100272504();
      }
    }

    [(SDBonjourResolver *)self notifyClient:v20];
LABEL_32:

    return;
  }

  v5 = Connection;
  v6 = browser_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1002723DC();
  }

  [(SDBonjourResolver *)self notifyClient:v5];
}

- (void)cancel
{
  resolve = self->_resolve;
  if (resolve)
  {
    DNSServiceRefDeallocate(resolve);
    self->_resolve = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    DNSServiceRefDeallocate(connection);
    self->_connection = 0;
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v6 = self->_timer;
    self->_timer = 0;
  }
}

- (SDBonjourResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end