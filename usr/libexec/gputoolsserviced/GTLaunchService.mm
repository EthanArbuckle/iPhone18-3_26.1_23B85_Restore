@interface GTLaunchService
- (BOOL)foregroundService:(unint64_t)service error:(id *)error;
- (BOOL)launchReplayService:(id)service error:(id *)error;
- (BOOL)launchReplayServiceApp:(id)app error:(id *)error;
- (BOOL)launchReplayServiceXPC:(id)c error:(id *)error;
- (BOOL)resumeService:(unint64_t)service error:(id *)error;
- (GTLaunchService)initWithServiceProvider:(id)provider;
- (void)launchReplayerLocallyWithConfigurationEmbedded:(id)embedded competionHandler:(id)handler;
- (void)processStateForService:(unint64_t)service completionHandler:(id)handler;
- (void)symbolicatorForService:(unint64_t)service completionHandler:(id)handler;
- (void)symbolicatorSignatureForPid:(int)pid completionHandler:(id)handler;
@end

@implementation GTLaunchService

- (void)processStateForService:(unint64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
  v8 = filteredArrayByPort(allServices, service);

  if ([v8 count] != 1)
  {
    v31 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithFormat:@"Invalid service port"];
    v32 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.gputools.LaunchService" code:6 userInfo:v21];

LABEL_10:
    handlerCopy[2](handlerCopy, 0, v22);
    goto LABEL_11;
  }

  firstObject = [v8 firstObject];
  processInfo = [firstObject processInfo];
  processIdentifier = [processInfo processIdentifier];
  tn = 0;
  v12 = task_name_for_pid(mach_task_self_, processIdentifier, &tn);
  if (v12)
  {
    v13 = v12;
    v14 = [NSString stringWithFormat:@"Failed to get name port for message destination pid %ld", processIdentifier];
    v37 = NSLocalizedDescriptionKey;
    *task_info_out = v14;
    v15 = [NSDictionary dictionaryWithObjects:task_info_out forKeys:&v37 count:1];
    v16 = [NSError errorWithDomain:NSMachErrorDomain code:v13 userInfo:v15];
    v17 = v16;

    v18 = 0;
    v19 = 0;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    *task_info_out = 0u;
    task_info_outCnt = 12;
    v23 = task_info(tn, 0x14u, task_info_out, &task_info_outCnt);
    v19 = v23 == 0;
    if (v23)
    {
      v24 = v23;
      v25 = [NSString stringWithFormat:@"Failed to get task basic info for pid %ld", processIdentifier];
      v33 = NSLocalizedDescriptionKey;
      v37 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v33 count:1];
      v16 = [NSError errorWithDomain:NSMachErrorDomain code:v24 userInfo:v26];
      v27 = v16;

      v18 = 0;
    }

    else
    {
      v16 = 0;
      v18 = HIDWORD(v36) != 0;
    }
  }

  v22 = v16;

  if (!v19)
  {
    goto LABEL_10;
  }

  v28 = objc_alloc_init(GTProcessState);
  [(GTProcessState *)v28 setIsSuspended:v18];
  (handlerCopy)[2](handlerCopy, v28, 0);

LABEL_11:
}

- (void)symbolicatorForService:(unint64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
  v8 = filteredArrayByPort(allServices, service);

  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    processInfo = [firstObject processInfo];
    processIdentifier = [processInfo processIdentifier];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001EDD0;
    v12[3] = &unk_100041078;
    v13 = handlerCopy;
    [(GTLaunchService *)self symbolicatorSignatureForPid:processIdentifier completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (BOOL)resumeService:(unint64_t)service error:(id *)error
{
  allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
  v8 = filteredArrayByPort(allServices, service);

  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    processInfo = [firstObject processInfo];
    processIdentifier = [processInfo processIdentifier];

    LOBYTE(error) = [(GTLaunchService *)self resumeTaskForPid:processIdentifier error:error];
  }

  else if (error)
  {
    v15 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"Invalid service port"];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *error = [NSError errorWithDomain:@"com.apple.gputools.LaunchService" code:6 userInfo:v13];

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)foregroundService:(unint64_t)service error:(id *)error
{
  allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
  v8 = filteredArrayByPort(allServices, service);

  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10001F2A0;
    v34 = sub_10001F2B0;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10001F2B8;
    v22 = &unk_100041050;
    v24 = &v26;
    v25 = &v30;
    v10 = dispatch_semaphore_create(0);
    v23 = v10;
    v11 = objc_retainBlock(&v19);
    processInfo = [firstObject processInfo];
    processIdentifier = [processInfo processIdentifier];

    [(GTLaunchService *)self bringGuestAppToForeground:processIdentifier completionHandler:v11];
    v14 = dispatch_time(0, 1000000000 * qword_100051F98);
    if (dispatch_semaphore_wait(v10, v14))
    {
      if (error)
      {
        v36 = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithFormat:@"Foreground service timed out"];
        v37 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *error = [NSError errorWithDomain:@"com.apple.gputools.LaunchService" code:7 userInfo:v16];
      }
    }

    else if (error)
    {
      *error = v31[5];
    }

    LOBYTE(error) = *(v27 + 24);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);

    goto LABEL_10;
  }

  if (error)
  {
    v38 = NSLocalizedDescriptionKey;
    firstObject = [NSString stringWithFormat:@"Invalid service port"];
    v39 = firstObject;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [NSError errorWithDomain:@"com.apple.gputools.LaunchService" code:6 userInfo:v17];

    LOBYTE(error) = 0;
LABEL_10:
  }

  return error & 1;
}

- (BOOL)launchReplayService:(id)service error:(id *)error
{
  serviceCopy = service;
  if ([serviceCopy preferXPCService])
  {
    v7 = [(GTLaunchService *)self launchReplayServiceXPC:serviceCopy error:error];
  }

  else
  {
    v7 = [(GTLaunchService *)self launchReplayServiceApp:serviceCopy error:error];
  }

  v8 = v7;

  return v8;
}

- (BOOL)launchReplayServiceApp:(id)app error:(id *)error
{
  appCopy = app;
  v7 = objc_opt_new();
  environment = [appCopy environment];
  v9 = modifyReplayerEnvironment(environment);
  [v7 setObject:v9 forKeyedSubscript:@"environment"];

  arguments = [appCopy arguments];

  [v7 setObject:arguments forKeyedSubscript:@"arguments"];
  v11 = qword_100051F98;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10001F2A0;
  v34 = sub_10001F2B0;
  v35 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10001F2A0;
  v24 = sub_10001F2B0;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001F69C;
  v19[3] = &unk_100041028;
  v19[4] = &v26;
  v19[5] = &v20;
  v19[6] = &v30;
  [(GTLaunchService *)self launchReplayerLocallyWithConfiguration:v7 competionHandler:v19];
  v12 = v31[5];
  v13 = dispatch_time(0, 1000000000 * v11);
  if (dispatch_semaphore_wait(v12, v13))
  {
    if (error)
    {
      v36 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithFormat:@"Replayer launch timed out"];
      v37 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *error = [NSError errorWithDomain:@"com.apple.gputools.LaunchService" code:8 userInfo:v15];
    }
  }

  else if (error)
  {
    v16 = v21[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v17;
}

- (BOOL)launchReplayServiceXPC:(id)c error:(id *)error
{
  cCopy = c;
  v7 = xpc_connection_create("com.apple.gputools.GPUToolsReplayService", 0);
  v14[0] = 0;
  v14[1] = 0;
  sessionUUID = [cCopy sessionUUID];
  [sessionUUID getUUIDBytes:v14];

  xpc_connection_set_oneshot_instance();
  xpc_connection_set_event_handler(v7, &stru_100041000);
  xpc_connection_activate(v7);
  empty = xpc_dictionary_create_empty();
  xpc_connection_send_message(v7, empty);

  if ([cCopy disableDisplay])
  {
    v10 = 1;
  }

  else
  {
    environment = [cCopy environment];
    v12 = [environment mutableCopy];

    [v12 setObject:@"1" forKeyedSubscript:@"MTLREPLAYER_DISABLE_REPLAY_SERVICE"];
    [cCopy setEnvironment:v12];
    v10 = [(GTLaunchService *)self launchReplayServiceApp:cCopy error:error];
  }

  return v10;
}

- (void)launchReplayerLocallyWithConfigurationEmbedded:(id)embedded competionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = FBSOpenApplicationOptionKeyDebuggingOptions;
  v19[0] = FBSDebugOptionKeyArguments;
  embeddedCopy = embedded;
  v7 = [embeddedCopy objectForKeyedSubscript:@"arguments"];
  v8 = v7;
  v9 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  v20[0] = v9;
  v19[1] = FBSDebugOptionKeyEnvironment;
  v10 = [embeddedCopy objectForKeyedSubscript:@"environment"];

  v11 = &__NSDictionary0__struct;
  if (v10)
  {
    v11 = v10;
  }

  v20[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v12;
  v22[1] = &__kCFBooleanTrue;
  v21[1] = FBSOpenApplicationOptionKeyUnlockDevice;
  v21[2] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v22[2] = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

  v14 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v15 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000201EC;
  v17[3] = &unk_100040FE0;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [v14 openApplication:@"com.apple.MTLReplayer" withOptions:v15 completion:v17];
}

- (void)symbolicatorSignatureForPid:(int)pid completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000203B0;
  v8[3] = &unk_100040FB8;
  pidCopy = pid;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, v8);
}

- (GTLaunchService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = GTLaunchService;
  v6 = [(GTLaunchService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
  }

  return v7;
}

@end