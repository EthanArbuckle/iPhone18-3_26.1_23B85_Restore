@interface WCM_Server
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)singleton;
- (WCM_Server)init;
- (id)getSessionFor:(int)for;
- (id)getSessionSync:(int)sync;
- (void)addSessionToList:(id)list;
- (void)dealloc;
- (void)enterTestMode;
- (void)existingSessions;
- (void)exitTestMode;
- (void)handleConnection:(id)connection;
- (void)handleEvent:(id)event;
- (void)handleXPCEvent:(id)event;
- (void)removeSessionFromList:(id)list;
- (void)startService;
@end

@implementation WCM_Server

+ (id)singleton
{
  result = qword_1002B7E68;
  if (!qword_1002B7E68)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___WCM_Server;
    result = [objc_msgSendSuper2(&v4 allocWithZone:{0), "init"}];
    qword_1002B7E68 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  singleton = [self singleton];

  return singleton;
}

- (WCM_Server)init
{
  v5.receiver = self;
  v5.super_class = WCM_Server;
  v2 = [(WCM_Server *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mConnection = 0;
    v2->testMode = 0;
    v2->mQueue = dispatch_queue_create("com.apple.WRMServer", 0);
    v3->mClientSessions = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  mConnection = self->mConnection;
  if (mConnection)
  {
    xpc_release(mConnection);
  }

  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
  }

  mClientSessions = self->mClientSessions;
  if (mClientSessions)
  {
  }

  v6.receiver = self;
  v6.super_class = WCM_Server;
  [(WCM_Server *)&v6 dealloc];
}

- (void)startService
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", global_queue, 1uLL);
  self->mConnection = mach_service;
  if (!mach_service)
  {
    [WCM_Logging logLevel:0 message:@"Failed to create XPC server. Exiting."];
    exit(0);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10008665C;
  handler[3] = &unk_10023F930;
  handler[4] = self;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(self->mConnection);
}

- (void)handleEvent:(id)event
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000866DC;
  v4[3] = &unk_10023DC80;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(mQueue, v4);
}

- (void)handleXPCEvent:(id)event
{
  type = xpc_get_type(event);
  [WCM_Logging logLevel:2 message:@"WCM_Server: Handling XPC Event : %@", event];
  if (type == &_xpc_type_connection)
  {
    [WCM_Logging logLevel:2 message:@"WCM_Server: Handling XPC Connection Event"];

    [(WCM_Server *)self handleConnection:event];
  }

  else if (type == &_xpc_type_error)
  {
    [WCM_Logging logLevel:0 message:@"WCM_Server: XPC server error: %s", xpc_dictionary_get_string(event, _xpc_error_key_description)];
  }

  else if (type == &_xpc_type_dictionary)
  {
    [WCM_Logging logLevel:2 message:@"Received new message %@", event];
  }

  else
  {
    v6 = xpc_copy_description(event);
    [WCM_Logging logLevel:0 message:@"Unexpected XPC server event: %s", v6];

    free(v6);
  }
}

- (void)handleConnection:(id)connection
{
  if (!self->testMode)
  {
    v6 = objc_alloc_init(WCM_Session);
    [(WCM_Session *)v6 initWithConnection:connection];
    [(WCM_Server *)self addSessionToList:v6];
  }
}

- (void)addSessionToList:(id)list
{
  [(NSMutableArray *)self->mClientSessions addObject:list];

  [(WCM_Server *)self existingSessions];
}

- (void)removeSessionFromList:(id)list
{
  [(NSMutableArray *)self->mClientSessions removeObject:list];

  [(WCM_Server *)self existingSessions];
}

- (id)getSessionFor:(int)for
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_100086A04;
  v12 = sub_100086A14;
  v13 = 0;
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086A20;
  block[3] = &unk_10023F958;
  forCopy = for;
  block[4] = self;
  block[5] = &v8;
  dispatch_async(mQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)getSessionSync:(int)sync
{
  [(WCM_Server *)self existingSessions];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  mClientSessions = self->mClientSessions;
  v6 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(mClientSessions);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 getProcessId] == sync)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)existingSessions
{
  [WCM_Logging logLevel:2 message:@"WCM_Server: %d active sessions", [(NSMutableArray *)self->mClientSessions count]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mClientSessions = self->mClientSessions;
  v4 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mClientSessions);
        }

        [WCM_Logging logLevel:2 message:@"Session: %@", *(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)enterTestMode
{
  [WCM_Logging logLevel:3 message:@"WCM_Server: Entering Test Mode"];
  self->testMode = 1;
  [(WCM_Server *)self existingSessions];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mClientSessions = self->mClientSessions;
  v4 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mClientSessions);
        }

        [*(*(&v8 + 1) + 8 * v7) suspendExternalConnection];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)exitTestMode
{
  [WCM_Logging logLevel:3 message:@"WCM_Server: Existing Test Mode"];
  self->testMode = 0;
  [(WCM_Server *)self existingSessions];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mClientSessions = self->mClientSessions;
  v4 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mClientSessions);
        }

        [*(*(&v8 + 1) + 8 * v7) resumeExternalConnection];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)mClientSessions countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end