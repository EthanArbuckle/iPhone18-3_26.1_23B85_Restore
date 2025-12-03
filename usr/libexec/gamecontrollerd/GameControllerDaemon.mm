@interface GameControllerDaemon
+ (id)sharedInstance;
+ (void)run;
- (BOOL)acceptNewConnection:(id)connection fromGCEnabledApp:(id)app;
- (BOOL)acceptNewConnection:(id)connection fromHIDServer:(id)server;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (GameControllerDaemon)init;
- (id)_init;
- (id)clientForConnection:(id)connection;
- (id)serviceFor:(id)for client:(id)client;
- (void)_start;
- (void)client:(id)client connectionsDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshClientTransaction;
- (void)registerAgentConnection:(id)connection;
- (void)unregisterAgentConnection:(id)connection;
@end

@implementation GameControllerDaemon

+ (void)run
{
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  v2 = _os_activity_create(&_mh_execute_header, "Daemon Start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v4);
  v3 = [GameControllerDaemon sharedInstance:v4.opaque[0]];
  [v3 _start];

  os_activity_scope_leave(&v4);
}

+ (id)sharedInstance
{
  if (qword_10000D330 != -1)
  {
    sub_100002BB8();
  }

  v3 = qword_10000D328;

  return v3;
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = GameControllerDaemon;
  v2 = [(GameControllerDaemon *)&v29 init];
  if (v2)
  {
    GCLookupSetFallbackProvider();
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.app"];
    appServiceListener = v2->_appServiceListener;
    v2->_appServiceListener = v3;

    [(NSXPCListener *)v2->_appServiceListener setDelegate:v2];
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.driver"];
    driverServiceListener = v2->_driverServiceListener;
    v2->_driverServiceListener = v5;

    [(NSXPCListener *)v2->_driverServiceListener setDelegate:v2];
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.haptics"];
    hapticServiceListener = v2->_hapticServiceListener;
    v2->_hapticServiceListener = v7;

    [(NSXPCListener *)v2->_hapticServiceListener setDelegate:v2];
    v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.agent"];
    agentServiceListener = v2->_agentServiceListener;
    v2->_agentServiceListener = v9;

    [(NSXPCListener *)v2->_agentServiceListener setDelegate:v2];
    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.GameController.system-button-service"];
    systemButtonServiceListener = v2->_systemButtonServiceListener;
    v2->_systemButtonServiceListener = v11;

    [(NSXPCListener *)v2->_systemButtonServiceListener setDelegate:v2];
    v13 = objc_alloc_init(NSMutableDictionary);
    agentRegistrations = v2->_agentRegistrations;
    v2->_agentRegistrations = v13;

    v15 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v15;

    v17 = objc_opt_new();
    analytics = v2->_analytics;
    v2->_analytics = v17;

    v19 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
    v20 = v19;
    if (!v19)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
    }

    objc_storeStrong(&v2->_defaults, v20);
    if (!v19)
    {
    }

    v21 = objc_alloc_init(GCGameIntentManager);
    gameIntentManager = v2->_gameIntentManager;
    v2->_gameIntentManager = v21;

    v23 = [[GCSSettingsStore alloc] initWithUserDefaults:v2->_defaults];
    settingsStore = v2->_settingsStore;
    v2->_settingsStore = v23;

    v25 = objc_opt_new();
    systemButtonServer = v2->_systemButtonServer;
    v2->_systemButtonServer = v25;

    v27 = +[_GCControllerManagerServer sharedInstance];
    [v27 addObserver:v2 forKeyPath:@"activeControllerDevices" options:5 context:off_10000D0F8];

    xpc_set_event_stream_handler("com.apple.iokit.match.gamecontroller", 0, &stru_100008468);
  }

  return v2;
}

- (GameControllerDaemon)init
{
  [(GameControllerDaemon *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)_start
{
  [(NSXPCListener *)self->_systemButtonServiceListener resume];
  [(NSXPCListener *)self->_appServiceListener resume];
  [(NSXPCListener *)self->_driverServiceListener resume];
  hapticServiceListener = self->_hapticServiceListener;

  [(NSXPCListener *)hapticServiceListener resume];
}

- (void)dealloc
{
  v3 = +[_GCControllerManagerServer sharedInstance];
  [v3 removeObserver:self forKeyPath:@"activeControllerDevices"];

  v4.receiver = self;
  v4.super_class = GameControllerDaemon;
  [(GameControllerDaemon *)&v4 dealloc];
}

- (id)serviceFor:(id)for client:(id)client
{
  forCopy = for;
  clientCopy = client;
  if (&OBJC_PROTOCOL___GCAnalytics == forCopy)
  {
    v9 = 72;
  }

  else if (&OBJC_PROTOCOL___GCUserDefaults == forCopy)
  {
    v9 = 80;
  }

  else if (&OBJC_PROTOCOL___GCSSettingsStoreService == forCopy)
  {
    v9 = 96;
  }

  else if (&OBJC_PROTOCOL___GCGameIntentLauncherService == forCopy)
  {
    v9 = 88;
  }

  else
  {
    if (objc_opt_class() != forCopy)
    {
      v12.receiver = self;
      v12.super_class = GameControllerDaemon;
      v8 = [(GameControllerDaemon *)&v12 serviceFor:forCopy client:clientCopy];
      goto LABEL_13;
    }

    v9 = 104;
  }

  v8 = *&self->GCDaemon_opaque[v9];
LABEL_13:
  v10 = v8;

  return v10;
}

- (id)clientForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v6 = [[_GCIPCRemoteProcess alloc] initWithConnection:connectionCopy];
  v7 = [(NSMutableSet *)self->_clients member:v6];

  if (!v7)
  {
    v7 = [[_GCIPCRemoteProcess alloc] initWithConnection:connectionCopy];
    [(NSMutableSet *)self->_clients addObject:v7];
    [v7 addObserver:self forKeyPath:@"connections" options:1 context:0];
    [(GameControllerDaemon *)self refreshClientTransaction];
    if (sub_1000013D8())
    {
      v9 = sub_1000015D0();
      sub_100002C74(v9);
    }
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)refreshClientTransaction
{
  v3 = self->_clients;
  objc_sync_enter(v3);
  if (sub_1000013D8())
  {
    v6 = sub_1000015D0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(NSMutableSet *)self->_clients count];
      activeDevicesCount = self->_activeDevicesCount;
      v10 = 134218240;
      v11 = v7;
      v12 = 2048;
      v13 = activeDevicesCount;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "refreshClientTransaction - %lu clients and %lu active devices", &v10, 0x16u);
    }
  }

  if ([(NSMutableSet *)self->_clients count]&& self->_activeDevicesCount)
  {
    if (self->_clientTransaction)
    {
      goto LABEL_8;
    }

    v4 = os_transaction_create();
    clientTransaction = self->_clientTransaction;
    self->_clientTransaction = v4;
  }

  else
  {
    clientTransaction = self->_clientTransaction;
    self->_clientTransaction = 0;
  }

LABEL_8:
  if (sub_1000013D8())
  {
    v9 = sub_1000015D0();
    sub_100002D0C(v9, 56, self);
  }

  objc_sync_exit(v3);
}

- (void)client:(id)client connectionsDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  v8 = self->_clients;
  objc_sync_enter(v8);
  if (![changeCopy count])
  {
    [clientCopy removeObserver:self forKeyPath:@"connections" context:0];
    [(NSMutableSet *)self->_clients removeObject:clientCopy];
    if (sub_1000013D8())
    {
      v9 = sub_1000015D0();
      sub_100002DB4(v9);
    }
  }

  [(GameControllerDaemon *)self refreshClientTransaction];
  objc_sync_exit(v8);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  v6 = _os_activity_create(&_mh_execute_header, "Incoming Connection", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v20);
  v7 = [(GameControllerDaemon *)self clientForConnection:connectionCopy, v20.opaque[0], v20.opaque[1]];
  serviceName = [connectionCopy serviceName];
  v9 = [serviceName isEqualToString:@"com.apple.GameController.gamecontrollerd.app"];

  if (v9)
  {
    v10 = [(GameControllerDaemon *)self acceptNewConnection:connectionCopy fromGCEnabledApp:v7];
LABEL_5:
    v13 = v10;
    goto LABEL_6;
  }

  serviceName2 = [connectionCopy serviceName];
  v12 = [serviceName2 isEqualToString:@"com.apple.GameController.gamecontrollerd.driver"];

  if (v12)
  {
    v10 = [(GameControllerDaemon *)self acceptNewConnection:connectionCopy fromHIDServer:v7];
    goto LABEL_5;
  }

  serviceName3 = [connectionCopy serviceName];
  v16 = [serviceName3 isEqualToString:@"com.apple.GameController.gamecontrollerd.haptics"];

  if (v16)
  {
    v17 = +[_GCHapticServerManager sharedInstance];
    v13 = [v17 acceptNewConnection:connectionCopy fromHapticsEnabledApp:v7];

    goto LABEL_6;
  }

  serviceName4 = [connectionCopy serviceName];
  v19 = [serviceName4 isEqualToString:@"com.apple.GameController.system-button-service"];

  if (v19)
  {
    v10 = [(GCSystemButtonServer *)self->_systemButtonServer acceptConnection:connectionCopy fromProcess:v7];
    goto LABEL_5;
  }

  if (sub_1000013D8())
  {
    sub_100002E4C(connectionCopy);
  }

  v13 = 0;
LABEL_6:
  os_activity_scope_leave(&v20);

  return v13;
}

- (BOOL)acceptNewConnection:(id)connection fromHIDServer:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  if (sub_1000013D8())
  {
    sub_100002F00(connectionCopy);
  }

  v7 = [[_GCDriverClientConnection alloc] initWithConnection:connectionCopy fromProcess:serverCopy];

  v8 = +[_GCControllerManagerServer sharedInstance];
  v9 = [v8 acceptIncomingDriverConnection:v7];

  return v9;
}

- (BOOL)acceptNewConnection:(id)connection fromGCEnabledApp:(id)app
{
  connectionCopy = connection;
  appCopy = app;
  if (sub_1000013D8())
  {
    sub_100002FB4(connectionCopy);
  }

  v7 = [[_GCAppClientConnection alloc] initWithConnection:connectionCopy fromProcess:appCopy];
  [appCopy addConnection:v7];

  v8 = +[_GCControllerManagerServer sharedInstance];
  v9 = [_GCAppClientProxy clientProxyWithConnection:v7 server:v8];

  [v7 setServer:v9];
  [v7 resume];

  return 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_10000D0F8 == context)
  {
    if ([pathCopy isEqualToString:@"activeControllerDevices"])
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      self->_activeDevicesCount = [v13 count];
      [(GameControllerDaemon *)self refreshClientTransaction];
      goto LABEL_7;
    }

LABEL_8:
    v14.receiver = self;
    v14.super_class = GameControllerDaemon;
    [(GameControllerDaemon *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![pathCopy isEqualToString:@"connections"])
  {
    goto LABEL_8;
  }

  v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
  [(GameControllerDaemon *)self client:objectCopy connectionsDidChange:v13];
LABEL_7:

LABEL_9:
}

- (void)registerAgentConnection:(id)connection
{
  connectionCopy = connection;
  v4 = self->_agentRegistrations;
  objc_sync_enter(v4);
  agentRegistrations = self->_agentRegistrations;
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [connectionCopy userIdentifier]);
  [(NSMutableDictionary *)agentRegistrations setObject:connectionCopy forKey:v6];

  objc_sync_exit(v4);
}

- (void)unregisterAgentConnection:(id)connection
{
  connectionCopy = connection;
  v4 = self->_agentRegistrations;
  objc_sync_enter(v4);
  agentRegistrations = self->_agentRegistrations;
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [connectionCopy userIdentifier]);
  [(NSMutableDictionary *)agentRegistrations removeObjectForKey:v6];

  [connectionCopy invalidate];
  objc_sync_exit(v4);
}

@end