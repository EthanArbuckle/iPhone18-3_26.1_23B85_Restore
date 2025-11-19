@interface RDClient
+ (RDClient)clientWithXPCConnection:(id)a3;
+ (id)sharedBubbleXPCInterface;
+ (id)sharedXPCInterface;
- ($115C4C562B26FF47E01F9F4EA65B5887)currentAuditToken;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)hasUserSwitchTasks;
- (BOOL)hasUserSyncTasks;
- (BOOL)removeUserSwitchTask:(id)a3;
- (BOOL)removeUserSyncTask:(id)a3;
- (RDClient)init;
- (id)proxy;
- (id)syncProxy;
- (id)taskDictionaryInArray:(id)a3 withUUIDString:(id)a4;
- (int)pid;
- (void)addUserSwitchTask:(id)a3;
- (void)addUserSyncTask:(id)a3;
- (void)bubbleDidPop;
- (void)bubbleShouldPop;
- (void)clearTaskLists;
- (void)deviceLoginSessionStateDidUpdate;
- (void)personaListDidUpdateCompletionHandler:(id)a3;
- (void)personaUpdateCallbackForMachServiceCompletionHandler:(id)a3;
- (void)readyToSwitchToLoginSession:(id)a3 completionHandler:(id)a4;
- (void)readyToSwitchToUser:(id)a3 completionHandler:(id)a4;
- (void)uploadContentWithCompletionHandler:(id)a3;
- (void)userSwitchTaskListDidUpdate;
- (void)willSwitchToUser:(id)a3 completionHandler:(id)a4;
@end

@implementation RDClient

+ (RDClient)clientWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setXpcConnection:v3];
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
  v2 = [(RDClient *)self xpcConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (BOOL)hasEntitlement:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(RDClient *)self xpcConnection];
  v6 = [v5 valueForEntitlement:v4];

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
  v4 = [(RDClient *)self xpcConnection];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
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
  v3 = [(RDClient *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050DB0;
  v6[3] = &unk_1000DD6C8;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (id)syncProxy
{
  v3 = [(RDClient *)self xpcConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050EA8;
  v6[3] = &unk_1000DD6C8;
  v6[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)addUserSwitchTask:(id)a3
{
  v4 = a3;
  v5 = [(RDClient *)self userSwitchTasks];
  [v5 addObject:v4];
}

- (id)taskDictionaryInArray:(id)a3 withUUIDString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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
        if ([v6 isEqualToString:v12])
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

- (BOOL)removeUserSwitchTask:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kUMUserSwitchTaskUUIDKey];
  v6 = [(RDClient *)self userSwitchTasks];
  v7 = [(RDClient *)self taskDictionaryInArray:v6 withUUIDString:v5];

  if (v7)
  {
    v8 = [(RDClient *)self userSwitchTasks];
    [v8 removeObject:v7];
  }

  else
  {
    NSLog(@"Client %@ does not have user switch task %@", self, v4);
  }

  return v7 != 0;
}

- (BOOL)hasUserSwitchTasks
{
  v2 = [(RDClient *)self userSwitchTasks];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)addUserSyncTask:(id)a3
{
  v4 = a3;
  v5 = [(RDClient *)self userSyncTasks];
  [v5 addObject:v4];
}

- (BOOL)removeUserSyncTask:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kUMUserSwitchTaskUUIDKey];
  v6 = [(RDClient *)self userSyncTasks];
  v7 = [(RDClient *)self taskDictionaryInArray:v6 withUUIDString:v5];

  if (v7)
  {
    v8 = [(RDClient *)self userSyncTasks];
    [v8 removeObject:v4];
  }

  else
  {
    NSLog(@"Client %@ does not have user sync task %@", self, v4);
  }

  return v7 != 0;
}

- (BOOL)hasUserSyncTasks
{
  v2 = [(RDClient *)self userSyncTasks];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)willSwitchToUser:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = a3;
  v9 = [(RDClient *)v7 proxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005141C;
  v12[3] = &unk_1000DD188;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [v9 willSwitchToUser:v8 completionHandler:v12];
}

- (void)personaListDidUpdateCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(RDClient *)v5 proxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051650;
  v9[3] = &unk_1000DD188;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 personaListDidUpdateCompletionHandler:v9];
}

- (void)personaUpdateCallbackForMachServiceCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self;
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
      v18 = [(RDClient *)v5 pid];
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

  v10 = [(RDClient *)v5 syncProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051994;
  v13[3] = &unk_1000DD188;
  v14 = v5;
  v15 = v4;
  v11 = v4;
  v12 = v5;
  [v10 personaUpdateCallbackForMachServiceCompletionHandler:v13];
}

- (void)readyToSwitchToUser:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
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
      [(RDClient *)v8 pid];
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

  v13 = [(RDClient *)v8 proxy];
  [v13 readyToSwitchToUser:v6 completionHandler:v7];
}

- (void)readyToSwitchToLoginSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
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
      [(RDClient *)v8 pid];
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

  v13 = [(RDClient *)v8 proxy];
  [v13 readyToSwitchToLoginSession:v6 completionHandler:v7];
}

- (void)userSwitchTaskListDidUpdate
{
  v2 = [(RDClient *)self proxy];
  [v2 userSwitchTaskListDidUpdate];
}

- (void)deviceLoginSessionStateDidUpdate
{
  v2 = [(RDClient *)self proxy];
  [v2 deviceLoginSessionStateDidUpdate];
}

- (void)uploadContentWithCompletionHandler:(id)a3
{
  v4 = a3;
  NSLog(@"BD: CLIENT IS ABOUT TO SEND UPLOAD CONTENT...");
  v5 = [(RDClient *)self proxy];
  [v5 uploadContentWithCompletionHandler:v4];
}

- (void)bubbleDidPop
{
  v2 = [(RDClient *)self proxy];
  [v2 bubbleDidPop];
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

  v8 = [(RDClient *)self proxy];
  [v8 bubbleShouldPop];
}

- (void)clearTaskLists
{
  v3 = [(RDClient *)self userSwitchTasks];
  [v3 removeAllObjects];

  v4 = [(RDClient *)self userSyncTasks];
  [v4 removeAllObjects];
}

@end