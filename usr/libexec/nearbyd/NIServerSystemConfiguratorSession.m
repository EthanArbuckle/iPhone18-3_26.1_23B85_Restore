@interface NIServerSystemConfiguratorSession
- (BOOL)updateConfiguration:(id)a3;
- (NIServerSystemConfiguratorSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)_processSystemEvent:(id)a3;
- (id)configure;
- (id)pauseWithSource:(int64_t)a3;
- (id)run;
- (void)dealloc;
- (void)didUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationType:(Class)a4;
- (void)didUpdateSystemState:(id)a3;
- (void)invalidate;
@end

@implementation NIServerSystemConfiguratorSession

- (NIServerSystemConfiguratorSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NIServerSystemConfiguratorSession.mm" lineNumber:33 description:@"Invalid configuration type."];
  }

  v12 = [v9 serverSessionIdentifier];

  if (!v12)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"NIServerSystemConfiguratorSession.mm" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v25.receiver = self;
  v25.super_class = NIServerSystemConfiguratorSession;
  v13 = [(NIServerBaseSession *)&v25 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v13)
  {
    v14 = [v9 clientConnectionQueue];
    clientQueue = v13->_clientQueue;
    v13->_clientQueue = v14;

    v16 = [v10 copy];
    configuration = v13->_configuration;
    v13->_configuration = v16;

    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];
    v20 = [NSString stringWithFormat:@"ses-system-%@", v19];
    configuratorClientIdentifier = v13->_configuratorClientIdentifier;
    v13->_configuratorClientIdentifier = v20;
  }

  return v13;
}

- (id)configure
{
  v7.receiver = self;
  v7.super_class = NIServerSystemConfiguratorSession;
  v2 = [(NIServerBaseSession *)&v7 resourcesManager];
  if ([v2 entitlementGranted:0])
  {
    v3 = 0;
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ABAFC(v4);
    }

    v8 = NSLocalizedDescriptionKey;
    v9 = @"Not authorized.";
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v5];
  }

  return v3;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138412290;
    v12 = configuration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-system,Run with configuration: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = NIServerSystemConfiguratorSession;
  v5 = [(NIServerBaseSession *)&v10 resourcesManager];
  v6 = [v5 lifecycleSupervisor];
  [v6 setTimeoutOnPeerInactivity:0];

  v7 = +[NIServerSystemConfigurator sharedInstance];
  [v7 addClient:self identifier:self->_configuratorClientIdentifier];

  v8 = +[NIServerSystemConfigurator sharedInstance];
  [v8 clientWithIdentifier:self->_configuratorClientIdentifier requestedPrewarmUWB:-[NISystemConfiguration prewarmUWB](self->_configuration prewarmSecureElementChannel:{"prewarmUWB"), -[NISystemConfiguration prewarmSecureElementChannel](self->_configuration, "prewarmSecureElementChannel")}];

  return 0;
}

- (id)pauseWithSource:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-system,Pause (no-op)", v5, 2u);
  }

  return 0;
}

- (BOOL)updateConfiguration:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = configuration;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-system,Update to configuration: %@. Previous: %@", &v10, 0x16u);
  }

  v7 = [v4 copy];
  v8 = self->_configuration;
  self->_configuration = v7;

  return 1;
}

- (id)_processSystemEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!v4)
  {
    __assert_rtn("[NIServerSystemConfiguratorSession _processSystemEvent:]", "NIServerSystemConfiguratorSession.mm", 91, "event");
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-system,Process system event: %@", &v16, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"SystemEventDictKey_EventType"];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v10 = [v4 objectForKeyedSubscript:@"SystemEventDictKey_PassiveAccessIntentOptions"];
    if (v10)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v13 = [v10 unsignedIntegerValue];
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    v14 = v13;
    v11 = +[NIServerSystemConfigurator sharedInstance];
    [v11 clientWithIdentifier:self->_configuratorClientIdentifier notifiedPassiveAccessIntent:v14];
    goto LABEL_14;
  }

  if (v7 == 2)
  {
    v8 = [v4 objectForKeyedSubscript:@"SystemEventDictKey_ConfigurationType"];
    v9 = NSClassFromString(v8);

    v10 = [v4 objectForKeyedSubscript:@"SystemEventDictKey_ResourceUsageLimitExceededValue"];
    if (!v10)
    {
      goto LABEL_15;
    }

    objc_opt_class();
    if (((v9 != 0) & objc_opt_isKindOfClass()) != 1)
    {
      goto LABEL_15;
    }

    v11 = +[NIServerSystemConfigurator sharedInstance];
    [v11 clientWithIdentifier:self->_configuratorClientIdentifier notifiedResourceUsageLimitExceeded:objc_msgSend(v10 forSessionConfigurationType:{"BOOLValue"), v9}];
LABEL_14:

LABEL_15:
  }

  return 0;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-system,Invalidate", buf, 2u);
  }

  v4 = +[NIServerSystemConfigurator sharedInstance];
  [v4 removeClientWithIdentifier:self->_configuratorClientIdentifier];

  v5.receiver = self;
  v5.super_class = NIServerSystemConfiguratorSession;
  [(NIServerBaseSession *)&v5 invalidate];
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-system,Dealloc", buf, 2u);
  }

  v4 = +[NIServerSystemConfigurator sharedInstance];
  [v4 removeClientWithIdentifier:self->_configuratorClientIdentifier];

  v5.receiver = self;
  v5.super_class = NIServerSystemConfiguratorSession;
  [(NIServerSystemConfiguratorSession *)&v5 dealloc];
}

- (void)didUpdateSystemState:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100207C38;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

- (void)didUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationType:(Class)a4
{
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100207D48;
  block[3] = &unk_10099E558;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(clientQueue, block);
}

@end