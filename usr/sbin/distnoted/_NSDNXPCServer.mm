@interface _NSDNXPCServer
- (NSString)serviceName;
- (_NSDNXPCServer)initWithConfiguration:(distnoted_configuration *)configuration;
- (id)__invalidate;
- (id)allClients;
- (id)createEndpoint;
- (id)makeNewClient;
- (void)addInvalidationHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)setMakeNewClient:(id)client;
- (void)setServiceName:(id)name;
- (void)start:(id)start;
@end

@implementation _NSDNXPCServer

- (id)allClients
{
  v2 = [(NSMutableArray *)self->_clients copy];

  return v2;
}

- (_NSDNXPCServer)initWithConfiguration:(distnoted_configuration *)configuration
{
  v6.receiver = self;
  v6.super_class = _NSDNXPCServer;
  v3 = [(_NSDNXPCServer *)&v6 init];
  v3->_invalidHandlers = objc_opt_new();
  v3->_clients = objc_opt_new();
  v4 = v3;
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSDNXPCServer;
  [(_NSDNXPCServer *)&v3 dealloc];
}

- (NSString)serviceName
{
  v2 = self->_serviceName;

  return v2;
}

- (void)setServiceName:(id)name
{
  if (self->_started || self->_invalid)
  {
    CFLog();
  }

  else
  {
    v4 = [name copy];
    serviceName = self->_serviceName;
    self->_serviceName = v4;

    _objc_release_x1();
  }
}

- (id)makeNewClient
{
  v2 = self->_makeNewClient;

  return v2;
}

- (void)setMakeNewClient:(id)client
{
  if (self->_started || self->_invalid)
  {
    CFLog();
  }

  else
  {
    v4 = [client copy];
    makeNewClient = self->_makeNewClient;
    self->_makeNewClient = v4;

    _objc_release_x1();
  }
}

- (id)__invalidate
{
  makeNewClient = self->_makeNewClient;
  self->_makeNewClient = 0;
  invalidHandlers = self->_invalidHandlers;
  self->_invalidHandlers = 0;

  return invalidHandlers;
}

- (void)invalidate
{
  invalid = self->_invalid;
  self->_invalid = invalid + 1;
  if (invalid)
  {
    goto LABEL_4;
  }

  if (self->_conn)
  {
    xpc_connection_cancel(self->_conn);
LABEL_4:
    __invalidate = 0;
    goto LABEL_5;
  }

  __invalidate = [(_NSDNXPCServer *)self __invalidate];
LABEL_5:
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [__invalidate countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(__invalidate);
        }

        (*(*(*(&v8 + 1) + 8 * i) + 16))();
      }

      v5 = [__invalidate countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addInvalidationHandler:(id)handler
{
  v5 = [handler copy];
  invalidHandlers = self->_invalidHandlers;
  v7 = v5;
  [(NSMutableArray *)invalidHandlers addObject:?];
  if (!invalidHandlers)
  {
    (*(handler + 2))(handler);
  }
}

- (void)start:(id)start
{
  if (!self->_invalid)
  {
    maxBufLen[10] = v3;
    maxBufLen[11] = v4;
    if (self->_makeNewClient)
    {
      started = self->_started;
      self->_started = started + 1;
      if (!started)
      {
        serviceName = self->_serviceName;
        if (serviceName)
        {
          maxBufLen[0] = 0;
          v13.length = CFStringGetLength(serviceName);
          v13.location = 0;
          CFStringGetBytes(serviceName, v13, 0x8000100u, 0, 0, 0, 0, maxBufLen);
          v9 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
          v14.length = CFStringGetLength(serviceName);
          v14.location = 0;
          CFStringGetBytes(serviceName, v14, 0x8000100u, 0, 0, v9, maxBufLen[0], 0);
          v9[maxBufLen[0]] = 0;
          if (self->_priv)
          {
            v10 = 3;
          }

          else
          {
            v10 = 1;
          }

          mach_service = xpc_connection_create_mach_service(v9, start, v10);
        }

        else
        {
          mach_service = xpc_connection_create(0, start);
          v9 = 0;
        }

        self->_conn = mach_service;
        maxBufLen[0] = _NSConcreteStackBlock;
        maxBufLen[1] = 3221225472;
        maxBufLen[2] = sub_100000C60;
        maxBufLen[3] = &unk_100008548;
        maxBufLen[4] = self;
        maxBufLen[5] = start;
        xpc_connection_set_event_handler(mach_service, maxBufLen);
        xpc_connection_activate(self->_conn);
        if (serviceName)
        {
          free(v9);
        }
      }
    }

    else
    {
      CFLog();
    }
  }
}

- (id)createEndpoint
{
  if (self->_serviceName)
  {
    return 0;
  }

  else
  {
    return xpc_endpoint_create(self->_conn);
  }
}

@end