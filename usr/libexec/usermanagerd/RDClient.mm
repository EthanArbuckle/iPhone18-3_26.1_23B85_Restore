@interface RDClient
+ (RDClient)clientWithXPCConnection:(id)connection;
+ (id)sharedBubbleXPCInterface;
+ (id)sharedXPCInterface;
- ($115C4C562B26FF47E01F9F4EA65B5887)currentAuditToken;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)hasUserSwitchTasks;
- (BOOL)hasUserSyncTasks;
- (BOOL)removeUserSwitchTask:(id)task;
- (BOOL)removeUserSyncTask:(id)task;
- (RDClient)init;
- (id)proxy;
- (id)syncProxy;
- (id)taskDictionaryInArray:(id)array withUUIDString:(id)string;
- (int)pid;
- (void)addUserSwitchTask:(id)task;
- (void)addUserSyncTask:(id)task;
- (void)bubbleDidPop;
- (void)bubbleShouldPop;
- (void)clearTaskLists;
- (void)deviceLoginSessionStateDidUpdate;
- (void)personaListDidUpdateCompletionHandler:(id)handler;
- (void)personaUpdateCallbackForMachServiceCompletionHandler:(id)handler;
- (void)readyToSwitchToLoginSession:(id)session completionHandler:(id)handler;
- (void)readyToSwitchToUser:(id)user completionHandler:(id)handler;
- (void)uploadContentWithCompletionHandler:(id)handler;
- (void)userSwitchTaskListDidUpdate;
- (void)willSwitchToUser:(id)user completionHandler:(id)handler;
@end

@implementation RDClient

+ (RDClient)clientWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setXpcConnection:connectionCopy];
  }

  return v5;
}

+ (id)sharedXPCInterface
{
  if (qword_1000EB340 != -1)
  {
    sub_100089EC0();
  }

  v3 = qword_1000EB338;

  return v3;
}

+ (id)sharedBubbleXPCInterface
{
  if (qword_1000EB350 != -1)
  {
    sub_100089ED4();
  }

  v3 = qword_1000EB348;

  return v3;
}

- (RDClient)init
{
  v8.receiver = self;
  v8.super_class = RDClient;
  v2 = [(RDClient *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    userSwitchTasks = v2->_userSwitchTasks;
    v2->_userSwitchTasks = v3;

    v5 = objc_opt_new();
    userSyncTasks = v2->_userSyncTasks;
    v2->_userSyncTasks = v5;
  }

  return v2;
}

- (int)pid
{
  xpcConnection = [(RDClient *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];

  return processIdentifier;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  if (!entitlement)
  {
    return 1;
  }

  entitlementCopy = entitlement;
  xpcConnection = [(RDClient *)self xpcConnection];
  v6 = [xpcConnection valueForEntitlement:entitlementCopy];

  v7 = 0;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
    {
      v7 = 1;
    }
  }

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)currentAuditToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  xpcConnection = [(RDClient *)self xpcConnection];
  if (xpcConnection)
  {
    v6 = xpcConnection;
    [xpcConnection auditToken];
    xpcConnection = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)proxy
{
  xpcConnection = [(RDClient *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050DB0;
  v6[3] = &unk_1000DD6C8;
  v6[4] = self;
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (id)syncProxy
{
  xpcConnection = [(RDClient *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050EA8;
  v6[3] = &unk_1000DD6C8;
  v6[4] = self;
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)addUserSwitchTask:(id)task
{
  taskCopy = task;
  userSwitchTasks = [(RDClient *)self userSwitchTasks];
  [userSwitchTasks addObject:taskCopy];
}

- (id)taskDictionaryInArray:(id)array withUUIDString:(id)string
{
  arrayCopy = array;
  stringCopy = string;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{kUMUserSwitchTaskUUIDKey, v14}];
        if ([stringCopy isEqualToString:v12])
        {
          v8 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)removeUserSwitchTask:(id)task
{
  taskCopy = task;
  v5 = [taskCopy objectForKeyedSubscript:kUMUserSwitchTaskUUIDKey];
  userSwitchTasks = [(RDClient *)self userSwitchTasks];
  v7 = [(RDClient *)self taskDictionaryInArray:userSwitchTasks withUUIDString:v5];

  if (v7)
  {
    userSwitchTasks2 = [(RDClient *)self userSwitchTasks];
    [userSwitchTasks2 removeObject:v7];
  }

  else
  {
    NSLog(@"Client %@ does not have user switch task %@", self, taskCopy);
  }

  return v7 != 0;
}

- (BOOL)hasUserSwitchTasks
{
  userSwitchTasks = [(RDClient *)self userSwitchTasks];
  v3 = [userSwitchTasks count] != 0;

  return v3;
}

- (void)addUserSyncTask:(id)task
{
  taskCopy = task;
  userSyncTasks = [(RDClient *)self userSyncTasks];
  [userSyncTasks addObject:taskCopy];
}

- (BOOL)removeUserSyncTask:(id)task
{
  taskCopy = task;
  v5 = [taskCopy objectForKeyedSubscript:kUMUserSwitchTaskUUIDKey];
  userSyncTasks = [(RDClient *)self userSyncTasks];
  v7 = [(RDClient *)self taskDictionaryInArray:userSyncTasks withUUIDString:v5];

  if (v7)
  {
    userSyncTasks2 = [(RDClient *)self userSyncTasks];
    [userSyncTasks2 removeObject:taskCopy];
  }

  else
  {
    NSLog(@"Client %@ does not have user sync task %@", self, taskCopy);
  }

  return v7 != 0;
}

- (BOOL)hasUserSyncTasks
{
  userSyncTasks = [(RDClient *)self userSyncTasks];
  v3 = [userSyncTasks count] != 0;

  return v3;
}

- (void)willSwitchToUser:(id)user completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  userCopy = user;
  proxy = [(RDClient *)selfCopy proxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005141C;
  v12[3] = &unk_1000DD188;
  v13 = selfCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = selfCopy;
  [proxy willSwitchToUser:userCopy completionHandler:v12];
}

- (void)personaListDidUpdateCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  proxy = [(RDClient *)selfCopy proxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051650;
  v9[3] = &unk_1000DD188;
  v10 = selfCopy;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = selfCopy;
  [proxy personaListDidUpdateCompletionHandler:v9];
}

- (void)personaUpdateCallbackForMachServiceCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v6 = qword_1000EB358;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v7 = sub_1000011A8(1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= ~1u;
    }

    if (v7)
    {
      v8 = v6;
      v17 = 67109120;
      v18 = [(RDClient *)selfCopy pid];
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  syncProxy = [(RDClient *)selfCopy syncProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051994;
  v13[3] = &unk_1000DD188;
  v14 = selfCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = selfCopy;
  [syncProxy personaUpdateCallbackForMachServiceCompletionHandler:v13];
}

- (void)readyToSwitchToUser:(id)user completionHandler:(id)handler
{
  userCopy = user;
  handlerCopy = handler;
  selfCopy = self;
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v9 = qword_1000EB358;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= ~1u;
    }

    if (v10)
    {
      v11 = v9;
      [(RDClient *)selfCopy pid];
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  proxy = [(RDClient *)selfCopy proxy];
  [proxy readyToSwitchToUser:userCopy completionHandler:handlerCopy];
}

- (void)readyToSwitchToLoginSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  selfCopy = self;
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v9 = qword_1000EB358;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= ~1u;
    }

    if (v10)
    {
      v11 = v9;
      [(RDClient *)selfCopy pid];
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  proxy = [(RDClient *)selfCopy proxy];
  [proxy readyToSwitchToLoginSession:sessionCopy completionHandler:handlerCopy];
}

- (void)userSwitchTaskListDidUpdate
{
  proxy = [(RDClient *)self proxy];
  [proxy userSwitchTaskListDidUpdate];
}

- (void)deviceLoginSessionStateDidUpdate
{
  proxy = [(RDClient *)self proxy];
  [proxy deviceLoginSessionStateDidUpdate];
}

- (void)uploadContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(@"BD: CLIENT IS ABOUT TO SEND UPLOAD CONTENT...");
  proxy = [(RDClient *)self proxy];
  [proxy uploadContentWithCompletionHandler:handlerCopy];
}

- (void)bubbleDidPop
{
  proxy = [(RDClient *)self proxy];
  [proxy bubbleDidPop];
}

- (void)bubbleShouldPop
{
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v3 = qword_1000EB358;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  proxy = [(RDClient *)self proxy];
  [proxy bubbleShouldPop];
}

- (void)clearTaskLists
{
  userSwitchTasks = [(RDClient *)self userSwitchTasks];
  [userSwitchTasks removeAllObjects];

  userSyncTasks = [(RDClient *)self userSyncTasks];
  [userSyncTasks removeAllObjects];
}

@end