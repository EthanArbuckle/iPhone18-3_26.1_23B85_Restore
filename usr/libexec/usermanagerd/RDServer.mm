@interface RDServer
+ (id)sharedBubbleXPCInterface;
+ (id)sharedServer;
+ (id)sharedXPCInterface;
- (BOOL)LogoutToUser:(id)user;
- (BOOL)anyBubblePopClients;
- (BOOL)inLoginSession;
- (BOOL)inLogoutProcess;
- (BOOL)notifyNextPersonaObserver:(id)observer withUser:(unsigned int)user;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement;
- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress;
- (RDServer)init;
- (id)_allowlistedPreferencesKeys;
- (id)bubbleStakeHolder;
- (id)criticalStakeHolder;
- (id)fetchUserBlockTaskList;
- (id)fetchUserSyncTaskList;
- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid;
- (void)StopBubbleWithPID:(int)d WithUID:(unsigned int)iD WithStatus:(unint64_t)status;
- (void)_broadcastPersonaUpdates:(id)updates withAuid:(unsigned int)auid;
- (void)_enumerateClientsWithBlock:(id)block;
- (void)_reallySwitchUser:(BOOL)user;
- (void)addBubbleClient:(id)client;
- (void)addClient:(id)client;
- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)createPersona:(id)persona withSecret:(id)secret secretSize:(unint64_t)size passcodeDataType:(unint64_t)type forPid:(int)pid completionHandler:(id)handler;
- (void)deletePersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)disablePersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchBundleIdentifiersForPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchMachServiceNameswithPID:(int)d WithUID:(unsigned int)iD WithCompletionHandler:(id)handler;
- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)handler;
- (void)loginComplete;
- (void)loginUICheckinForPID:(int)d completionHandler:(id)handler;
- (void)logoutToLoginSessionWithPID:(int)d completionHandler:(id)handler;
- (void)personaLoginWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)personaLogoutWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)provisionDevice:(id)device forPid:(int)pid completionHandler:(id)handler;
- (void)reengageUserQuotaForPID:(int)d completionHandler:(id)handler;
- (void)registerBubblePopStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerCriticalUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler;
- (void)registerUserPersonaStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserSyncStakeholderForPID:(int)d machServiceName:(id)name completionHandler:(id)handler;
- (void)removeBubbleClient:(id)client;
- (void)removeClient:(id)client;
- (void)removeMachServiceName:(id)name withPID:(int)d WithUID:(unsigned int)iD;
- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)resetStateForUserSwitch;
- (void)resumeSyncBubbleForPID:(int)d completionHandler:(id)handler;
- (void)setMultiPersonaBundlesIdentifiers:(id)identifiers forPid:(int)pid WithcompletionHandler:(id)handler;
- (void)setSinglePersonaBundlesIdentifiers:(id)identifiers forPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)suspendUserQuotaForPID:(int)d completionHandler:(id)handler;
- (void)switchToLoginUserWithPID:(int)d completionHandler:(id)handler;
- (void)switchToUser:(id)user passcodeData:(id)data;
- (void)switchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler;
- (void)terminateSyncBubbleForPID:(int)d completionHandler:(id)handler;
- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler;
@end

@implementation RDServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003034;
  block[3] = &unk_1000DCE88;
  block[4] = self;
  if (qword_1000EB230 != -1)
  {
    dispatch_once(&qword_1000EB230, block);
  }

  v2 = qword_1000EB228;

  return v2;
}

+ (id)sharedXPCInterface
{
  if (qword_1000EB240 != -1)
  {
    sub_100088CD8();
  }

  v3 = qword_1000EB238;

  return v3;
}

+ (id)sharedBubbleXPCInterface
{
  if (qword_1000EB250 != -1)
  {
    sub_100088CEC();
  }

  v3 = qword_1000EB248;

  return v3;
}

- (RDServer)init
{
  v6.receiver = self;
  v6.super_class = RDServer;
  v2 = [(RDServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pidsToClients = v2->_pidsToClients;
    v2->_pidsToClients = v3;
  }

  return v2;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:entitlementCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress
{
  handleCopy = handle;
  v8 = handleCopy;
  if (!length)
  {
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (read([handleCopy fileDescriptor], withbaseaddress, length) != length)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v10 = qword_1000EB268;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003460;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000035C8;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)addBubbleClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000386C;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)removeBubbleClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000039D4;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)_enumerateClientsWithBlock:(id)block
{
  blockCopy = block;
  [(RDServer *)self pidsToClients];
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v5 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
      blockCopy[2](blockCopy, v10, &v16);
      v11 = v16;

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)criticalStakeHolder
{
  [(RDServer *)self pidsToClients];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 = [v2 objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];

        if ([v4 criticalStakeHolder])
        {
          v4 = v4;
          v3 = v4;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)bubbleStakeHolder
{
  [(RDServer *)self pidsToClients];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 = [v2 objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];

        if ([v4 bubbleStakeHolder])
        {
          v4 = v4;
          v3 = v4;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)registerUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FBC;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerCriticalUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004340;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerBubblePopStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000047D0;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (BOOL)anyBubblePopClients
{
  [(RDServer *)self pidsToClients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 = [v2 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v7), v11}];

      bubblePopstakeholderIsRegistered = [v5 bubblePopstakeholderIsRegistered];
      if (bubblePopstakeholderIsRegistered)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    bubblePopstakeholderIsRegistered = 0;
  }

  return bubblePopstakeholderIsRegistered;
}

- (BOOL)inLogoutProcess
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 &= ~1u;
    }

    if (v4)
    {
      v5 = v3;
      [(RDServer *)self switchState];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return [(RDServer *)self switchState]!= 0;
}

- (void)registerUserSyncStakeholderForPID:(int)d machServiceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004E5C;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = nameCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = nameCopy;
  dispatch_async(v10, v13);
}

- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005328;
  block[3] = &unk_1000DCF88;
  dCopy = d;
  block[4] = self;
  block[5] = status;
  dispatch_async(qword_1000EB610, block);
}

- (id)_allowlistedPreferencesKeys
{
  if (qword_1000EB260 != -1)
  {
    sub_100088D50();
  }

  v3 = qword_1000EB258;

  return v3;
}

- (void)switchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler
{
  userCopy = user;
  secretCopy = secret;
  contextCopy = context;
  preferencesCopy = preferences;
  handlerCopy = handler;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100005EAC;
  v62 = sub_100005EBC;
  v63 = 0;
  if (vm_page_size >= size)
  {
    if (size)
    {
      if (vm_allocate(mach_task_self_, &v67, vm_page_size, -268435455))
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v25 = qword_1000EB268;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v57 = 0;
          v26 = sub_1000011A8(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
          }

          else
          {
            v27 = v26 & 0xFFFFFFFE;
          }

          if (v27)
          {
            v56 = 0;
            v28 = _os_log_send_and_compose_impl();
            v29 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }

        v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
        v39 = v59[5];
        v59[5] = v38;

        v65[3] = 0;
        goto LABEL_46;
      }

      v69[3] = v65[3];
      if ([(RDServer *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v30 = qword_1000EB268;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v57 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v56 = 0;
            v33 = _os_log_send_and_compose_impl();
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
        v41 = v59[5];
        v59[5] = v40;

        v42 = mach_task_self_;
        v43 = v65[3];
        v44 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

        memset_s(v65[3], sizeCopy, 0, sizeCopy);
        vm_deallocate(v42, v43, v44);
        goto LABEL_46;
      }
    }

    v35 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005EC4;
    block[3] = &unk_1000DCFD0;
    pidCopy = pid;
    block[4] = self;
    v51 = &v58;
    v52 = &v64;
    sizeCopy2 = size;
    v47 = userCopy;
    v50 = handlerCopy;
    v48 = preferencesCopy;
    v53 = &v68;
    v49 = contextCopy;
    dispatch_async(v35, block);
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v20 = qword_1000EB268;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v56 = 0;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v37 = v59[5];
    v59[5] = v36;

    if (handlerCopy)
    {
LABEL_46:
      (*(handlerCopy + 2))(handlerCopy, v59[5]);
    }
  }

  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)switchToLoginUserWithPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006974;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)logoutToLoginSessionWithPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006EB8;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (BOOL)inLoginSession
{
  v2 = dword_1000EB5B8;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
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

  if (v2 == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
LABEL_28:
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

        goto LABEL_31;
      }

LABEL_30:
      v14 = 0;
LABEL_31:
      free(v14);
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  return v2 == 1;
}

- (void)loginComplete
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000798C;
  block[3] = &unk_1000DCFF8;
  block[4] = self;
  dispatch_async(qword_1000EB610, block);
}

- (void)loginUICheckinForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C28;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)terminateSyncBubbleForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000083C0;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)resumeSyncBubbleForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008794;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchMachServiceNameswithPID:(int)d WithUID:(unsigned int)iD WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089FC;
  block[3] = &unk_1000DD020;
  dCopy = d;
  iDCopy = iD;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)removeMachServiceName:(id)name withPID:(int)d WithUID:(unsigned int)iD
{
  nameCopy = name;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008CF0;
  block[3] = &unk_1000DD048;
  dCopy = d;
  iDCopy = iD;
  block[4] = self;
  v12 = nameCopy;
  v10 = nameCopy;
  dispatch_async(v9, block);
}

- (void)StopBubbleWithPID:(int)d WithUID:(unsigned int)iD WithStatus:(unint64_t)status
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E8C;
  block[3] = &unk_1000DCF88;
  iDCopy = iD;
  block[4] = self;
  block[5] = status;
  dispatch_async(qword_1000EB610, block);
}

- (void)switchToUser:(id)user passcodeData:(id)data
{
  userCopy = user;
  dataCopy = data;
  [(RDServer *)self setUserToSwitchTo:userCopy];
  [(RDServer *)self setSwitchState:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v8 = &off_1000EB000;
  v9 = qword_1000EB268;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      LOWORD(v79[0]) = 0;
      LODWORD(v73) = 2;
      v71 = v79;
      v12 = _os_log_send_and_compose_impl();
      v13 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  fastLogoutTimer = [(RDServer *)self fastLogoutTimer];

  if (fastLogoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v15 = qword_1000EB278;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v79[0] = 0;
      v16 = sub_1000011A8(0);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 &= ~1u;
      }

      if (v16)
      {
        v17 = v15;
        fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
        *v80 = 134217984;
        *&v80[4] = fastLogoutTimer2;
        LODWORD(v73) = 12;
        v71 = v80;
        v19 = _os_log_send_and_compose_impl();

        if (v19)
        {
          sub_100002A8C(v19);
        }

        v8 = &off_1000EB000;
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    fastLogoutTimer3 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer3);

    [(RDServer *)self setFastLogoutTimer:0];
  }

  v21 = [(RDServer *)self pidsToClients:v71];
  if ([v21 count])
  {
    v22 = _os_feature_enabled_impl();

    if ((v22 & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  [(RDServer *)self setSwitchState:2];
  if (CFDictionaryContainsKey(userCopy, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(userCopy, @"UserSwitchTaskOpqueData");
    v24 = CFRetain(Value);
    CFDictionaryRemoveValue(userCopy, @"UserSwitchTaskOpqueData");
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = v8[77];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v79[0] = 0;
      v26 = sub_1000011A8(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 &= ~1u;
      }

      if (v26)
      {
        v27 = v25;
        Length = CFDataGetLength(v24);
        *v80 = 134217984;
        *&v80[4] = Length;
        LODWORD(v74) = 12;
        v72 = v80;
        v29 = _os_log_send_and_compose_impl();

        if (v29)
        {
          sub_100002A8C(v29);
        }

        v8 = &off_1000EB000;
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }
  }

  else
  {
    v24 = 0;
  }

  if (byte_1000EB602 == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v30 = v8[77];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 0;
      v31 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        LOWORD(v79[0]) = 0;
        LODWORD(v74) = 2;
        v72 = v79;
        v33 = _os_log_send_and_compose_impl();
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    if (sub_100028D8C(userCopy, dataCopy))
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v35 = v8[77];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      *v80 = 0;
      v36 = sub_1000011A8(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LOWORD(v79[0]) = 0;
        LODWORD(v74) = 2;
        v72 = v79;
        goto LABEL_72;
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v35 = v8[77];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      *v80 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        LOWORD(v79[0]) = 0;
        LODWORD(v74) = 2;
        v72 = v79;
LABEL_72:
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }

        goto LABEL_75;
      }
    }

    v41 = 0;
LABEL_75:
    free(v41);
LABEL_76:

    if (dataCopy)
    {
      [dataCopy resetBytesInRange:{0, objc_msgSend(dataCopy, "length")}];
    }
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v42 = v8[77];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    v43 = sub_1000011A8(1);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LOWORD(v79[0]) = 0;
      LODWORD(v74) = 2;
      v72 = v79;
      v45 = _os_log_send_and_compose_impl();
      v46 = v45;
      if (v45)
      {
        sub_100002A8C(v45);
      }
    }

    else
    {
      v46 = 0;
    }

    free(v46);
  }

  sub_10002E9D8(userCopy, v24);
LABEL_90:
  if (dataCopy)
  {
    [dataCopy resetBytesInRange:{0, objc_msgSend(dataCopy, "length")}];
  }

  v47 = [(RDServer *)self logoutTimer:v72];

  if (v47)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    logoutTimer5 = qword_1000EB278;
    if (os_log_type_enabled(logoutTimer5, OS_LOG_TYPE_DEFAULT))
    {
      v79[0] = 0;
      v49 = sub_1000011A8(0);
      if (!os_log_type_enabled(logoutTimer5, OS_LOG_TYPE_DEFAULT))
      {
        v49 &= ~1u;
      }

      if (v49)
      {
        v50 = logoutTimer5;
        logoutTimer = [(RDServer *)self logoutTimer];
        *v80 = 134217984;
        *&v80[4] = logoutTimer;
        v52 = _os_log_send_and_compose_impl();

        if (v52)
        {
          sub_100002A8C(v52);
        }
      }

      else
      {
        v52 = 0;
      }

      free(v52);
    }
  }

  else
  {
    v53 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
    [(RDServer *)self setLogoutTimer:v53];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v54 = qword_1000EB278;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v79[0] = 0;
      v55 = sub_1000011A8(0);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 &= ~1u;
      }

      if (v55)
      {
        v56 = v54;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        *v80 = 134217984;
        *&v80[4] = logoutTimer2;
        v58 = _os_log_send_and_compose_impl();

        if (v58)
        {
          sub_100002A8C(v58);
        }
      }

      else
      {
        v58 = 0;
      }

      free(v58);
    }

    logoutTimer3 = [(RDServer *)self logoutTimer];
    v60 = dispatch_time(0, 360000000000);
    dispatch_source_set_timer(logoutTimer3, v60, 0xFFFFFFFFFFFFFFFFLL, 0);

    logoutTimer4 = [(RDServer *)self logoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009C1C;
    handler[3] = &unk_1000DCFF8;
    handler[4] = self;
    dispatch_source_set_event_handler(logoutTimer4, handler);

    logoutTimer5 = [(RDServer *)self logoutTimer];
    dispatch_activate(logoutTimer5);
  }

  v62 = sub_100088F2C(qword_1000EB608);
  if (sub_100089A48(v62))
  {
    v63 = sub_100088F2C(qword_1000EB608);
    if (sub_100089AC4(v63) == 502)
    {

LABEL_128:
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100009F70;
      v75[3] = &unk_1000DD0B0;
      v76 = userCopy;
      selfCopy = self;
      [(RDServer *)self _enumerateClientsWithBlock:v75];

      goto LABEL_132;
    }

    v70 = dword_1000EB5B8;

    if (v70 != 1)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v64 = dword_1000EB5B8;

    if (v64 != 1)
    {
      goto LABEL_128;
    }
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v65 = v8[77];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    v66 = sub_1000011A8(1);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 & 0xFFFFFFFE;
    }

    if (v67)
    {
      LOWORD(v79[0]) = 0;
      v68 = _os_log_send_and_compose_impl();
      v69 = v68;
      if (v68)
      {
        sub_100002A8C(v68);
      }
    }

    else
    {
      v69 = 0;
    }

    free(v69);
  }

  [(RDServer *)self _reallySwitchUser:0];
LABEL_132:
}

- (BOOL)LogoutToUser:(id)user
{
  userCopy = user;
  [(RDServer *)self setUserToSwitchTo:0];
  [(RDServer *)self setSwitchState:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v5 = qword_1000EB268;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v52[0] = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v51) = 0;
      LODWORD(v46) = 2;
      v45 = &v51;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  dword_1000EB5B8 = 3;
  fastLogoutTimer = [(RDServer *)self fastLogoutTimer];

  if (fastLogoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v11 = qword_1000EB278;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 0;
      v12 = sub_1000011A8(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= ~1u;
      }

      if (v12)
      {
        v13 = v11;
        fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
        LODWORD(v52[0]) = 134217984;
        *(v52 + 4) = fastLogoutTimer2;
        LODWORD(v46) = 12;
        v45 = v52;
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    fastLogoutTimer3 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer3);

    [(RDServer *)self setFastLogoutTimer:0];
  }

  v17 = [(RDServer *)self pidsToClients:v45];
  v18 = [v17 count];

  if (v18)
  {
    logoutTimer = [(RDServer *)self logoutTimer];

    if (logoutTimer)
    {
      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      logoutTimer6 = qword_1000EB278;
      if (os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 0;
        v21 = sub_1000011A8(0);
        if (!os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
        {
          v21 &= ~1u;
        }

        if (v21)
        {
          v22 = logoutTimer6;
          logoutTimer2 = [(RDServer *)self logoutTimer];
          LODWORD(v52[0]) = 134217984;
          *(v52 + 4) = logoutTimer2;
          v24 = _os_log_send_and_compose_impl();

          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }
    }

    else
    {
      v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
      [(RDServer *)self setLogoutTimer:v30];

      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      v31 = qword_1000EB278;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 0;
        v32 = sub_1000011A8(0);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 &= ~1u;
        }

        if (v32)
        {
          v33 = v31;
          logoutTimer3 = [(RDServer *)self logoutTimer];
          LODWORD(v52[0]) = 134217984;
          *(v52 + 4) = logoutTimer3;
          v35 = _os_log_send_and_compose_impl();

          if (v35)
          {
            sub_100002A8C(v35);
          }
        }

        else
        {
          v35 = 0;
        }

        free(v35);
      }

      logoutTimer4 = [(RDServer *)self logoutTimer];
      v42 = dispatch_time(0, 360000000000);
      dispatch_source_set_timer(logoutTimer4, v42, 0xFFFFFFFFFFFFFFFFLL, 0);

      logoutTimer5 = [(RDServer *)self logoutTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000A8F8;
      handler[3] = &unk_1000DCFF8;
      handler[4] = self;
      dispatch_source_set_event_handler(logoutTimer5, handler);

      logoutTimer6 = [(RDServer *)self logoutTimer];
      dispatch_activate(logoutTimer6);
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000AC0C;
    v47[3] = &unk_1000DD0B0;
    v48 = userCopy;
    selfCopy = self;
    [(RDServer *)self _enumerateClientsWithBlock:v47];
  }

  else
  {
    [(RDServer *)self setSwitchState:2];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v52[0] = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v51) = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v36 = qword_1000EB268;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v52[0] = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        LOWORD(v51) = 0;
        v39 = _os_log_send_and_compose_impl();
        v40 = v39;
        if (v39)
        {
          sub_100002A8C(v39);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    [(RDServer *)self _reallySwitchUser:1];
  }

  return 1;
}

- (void)_reallySwitchUser:(BOOL)user
{
  userCopy = user;
  userToSwitchTo = [(RDServer *)self userToSwitchTo];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v6 = qword_1000EB268;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v91 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = "FALSE";
      if (userCopy)
      {
        v9 = "TRUE";
      }

      *v90 = 136315138;
      *&v90[4] = v9;
      LODWORD(v86) = 12;
      v85 = v90;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  [(RDServer *)self setSwitchState:2];
  logoutTimer = [(RDServer *)self logoutTimer];

  if (logoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v13 = qword_1000EB278;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v91 = 0;
      v14 = sub_1000011A8(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 &= ~1u;
      }

      if (v14)
      {
        v15 = v13;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        *v90 = 134217984;
        *&v90[4] = logoutTimer2;
        LODWORD(v86) = 12;
        v85 = v90;
        v17 = _os_log_send_and_compose_impl();

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    logoutTimer3 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(logoutTimer3);

    [(RDServer *)self setLogoutTimer:0];
  }

  v19 = sub_100088F2C(qword_1000EB608);
  if (sub_100089A48(v19))
  {
    v20 = sub_100088F2C(qword_1000EB608);
    v21 = sub_100089AC4(v20);

    if (v21 == 502)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v90 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v91) = 0;
          LODWORD(v86) = 2;
          v85 = &v91;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      sub_10001C0D0(0, 502);
      goto LABEL_66;
    }
  }

  else
  {
  }

  if ((dword_1000EB5B8 & 0xFFFFFFFE) == 2)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v27 = qword_1000EB268;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v28 = sub_1000011A8(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LOWORD(v91) = 0;
        LODWORD(v86) = 2;
        v85 = &v91;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    [(RDServer *)self _enumerateClientsWithBlock:&stru_1000DD0F8];
    sub_100034214();
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = dword_1000EB5B8;
        LODWORD(v86) = 8;
        v85 = &v91;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }
  }

LABEL_66:
  v37 = [(RDServer *)self criticalStakeHolder:v85];
  if (!v37)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v43 = qword_1000EB268;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v44 = sub_1000011A8(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        LOWORD(v91) = 0;
        v46 = _os_log_send_and_compose_impl();
        v47 = v46;
        if (v46)
        {
          sub_100002A8C(v46);
        }
      }

      else
      {
        v47 = 0;
      }

      free(v47);
    }

    goto LABEL_109;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v38 = qword_1000EB268;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *v90 = 0;
    v39 = sub_1000011A8(1);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 &= ~1u;
    }

    if (v39)
    {
      v40 = v38;
      stakeholderIsRegistered = [v37 stakeholderIsRegistered];
      LODWORD(v91) = 67109120;
      HIDWORD(v91) = stakeholderIsRegistered;
      v42 = _os_log_send_and_compose_impl();

      if (v42)
      {
        sub_100002A8C(v42);
      }
    }

    else
    {
      v42 = 0;
    }

    free(v42);
  }

  if (![v37 stakeholderIsRegistered])
  {
LABEL_109:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v58 = qword_1000EB268;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        LOWORD(v91) = 0;
        v61 = _os_log_send_and_compose_impl();
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
    }

    v63 = userToSwitchTo;
    if (userCopy)
    {
      v63 = sub_100018084(502);
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v64 = qword_1000EB268;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *v90 = 0;
        v65 = sub_1000011A8(1);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v65;
        }

        else
        {
          v66 = v65 & 0xFFFFFFFE;
        }

        if (v66)
        {
          LOWORD(v91) = 0;
          v67 = _os_log_send_and_compose_impl();
          v68 = v67;
          if (v67)
          {
            sub_100002A8C(v67);
          }
        }

        else
        {
          v68 = 0;
        }

        free(v68);
      }
    }

    if (v63 && CFDictionaryContainsKey(v63, @"UserSwitchTaskOpqueData"))
    {
      Value = CFDictionaryGetValue(v63, @"UserSwitchTaskOpqueData");
      v70 = CFRetain(Value);
      CFDictionaryRemoveValue(v63, @"UserSwitchTaskOpqueData");
    }

    else
    {
      v70 = 0;
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v71 = qword_1000EB268;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v72 = sub_1000011A8(1);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        LOWORD(v91) = 0;
        v74 = _os_log_send_and_compose_impl();
        v75 = v74;
        if (v74)
        {
          sub_100002A8C(v74);
        }
      }

      else
      {
        v75 = 0;
      }

      free(v75);
    }

    sub_10002E9D8(v63, v70);
    goto LABEL_149;
  }

  if (userCopy)
  {
    v48 = MKBLockDeviceNow();
    if (v48)
    {
      v49 = v48;
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v50 = qword_1000EB268;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_165;
      }

      *v90 = 0;
      v51 = sub_1000011A8(1);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v51;
      }

      else
      {
        v52 = v51 & 0xFFFFFFFE;
      }

      if (v52)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v49;
        goto LABEL_158;
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v50 = qword_1000EB268;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_165;
      }

      *v90 = 0;
      v76 = sub_1000011A8(1);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
      }

      else
      {
        v77 = v76 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(v91) = 0;
LABEL_158:
        v78 = _os_log_send_and_compose_impl();
        v79 = v78;
        if (v78)
        {
          sub_100002A8C(v78);
        }

        goto LABEL_164;
      }
    }

    v79 = 0;
LABEL_164:
    free(v79);
LABEL_165:

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v80 = qword_1000EB268;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 0;
      v81 = sub_1000011A8(1);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        LOWORD(v91) = 0;
        v83 = _os_log_send_and_compose_impl();
        v84 = v83;
        if (v83)
        {
          sub_100002A8C(v83);
        }
      }

      else
      {
        v84 = 0;
      }

      free(v84);
    }

    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10000C678;
    v89[3] = &unk_1000DCFF8;
    v89[4] = self;
    [v37 readyToSwitchToLoginSession:0 completionHandler:v89];
    goto LABEL_149;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v53 = qword_1000EB268;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *v90 = 0;
    v54 = sub_1000011A8(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 & 0xFFFFFFFE;
    }

    if (v55)
    {
      LOWORD(v91) = 0;
      v56 = _os_log_send_and_compose_impl();
      v57 = v56;
      if (v56)
      {
        sub_100002A8C(v56);
      }
    }

    else
    {
      v57 = 0;
    }

    free(v57);
  }

  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_10000D074;
  v87[3] = &unk_1000DCFF8;
  v88 = userToSwitchTo;
  [v37 readyToSwitchToUser:v88 completionHandler:v87];

LABEL_149:
}

- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D35C;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D6D4;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DBBC;
  v7[3] = &unk_1000DD188;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (id)fetchUserSyncTaskList
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DD7C;
  v5[3] = &unk_1000DD160;
  v3 = objc_opt_new();
  v6 = v3;
  [(RDServer *)self _enumerateClientsWithBlock:v5];

  return v3;
}

- (id)fetchUserBlockTaskList
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DE80;
  v5[3] = &unk_1000DD160;
  v3 = objc_opt_new();
  v6 = v3;
  [(RDServer *)self _enumerateClientsWithBlock:v5];

  return v3;
}

- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000DFBC;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E364;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)suspendUserQuotaForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6B8;
  block[3] = &unk_1000DD1B0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);
}

- (void)reengageUserQuotaForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7D0;
  block[3] = &unk_1000DD1B0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);
}

- (void)createPersona:(id)persona withSecret:(id)secret secretSize:(unint64_t)size passcodeDataType:(unint64_t)type forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  secretCopy = secret;
  handlerCopy = handler;
  v16 = +[NSXPCConnection currentConnection];
  processIdentifier = [v16 processIdentifier];

  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  if (processIdentifier == pid)
  {
    goto LABEL_15;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v18 = qword_1000EB268;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = personaCopy;
    v20 = secretCopy;
    v60 = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LODWORD(v69) = 67109376;
      HIDWORD(v69) = processIdentifier;
      v70 = 1024;
      pidCopy = pid;
      LODWORD(v49) = 14;
      v48 = &v69;
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      secretCopy = v20;
      if (v23)
      {
        sub_100002A8C(v23);
        personaCopy = v19;
LABEL_13:
        free(v24);
        goto LABEL_14;
      }
    }

    else
    {
      v24 = 0;
      secretCopy = v20;
    }

    personaCopy = v19;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  if (vm_page_size < size)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v69 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v60) = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v43);
    }

    goto LABEL_60;
  }

  if (!size)
  {
    goto LABEL_46;
  }

  if (vm_allocate(mach_task_self_, v62 + 3, vm_page_size, -268435455))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v30 = qword_1000EB268;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v69 = 0;
      v31 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        LOWORD(v60) = 0;
        v33 = _os_log_send_and_compose_impl();
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v62[3] = 0;
    handlerCopy[2](handlerCopy, 0, v43);
    goto LABEL_60;
  }

  v66[3] = v62[3];
  if (![(RDServer *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
  {
LABEL_46:
    v40 = [NSXPCConnection currentConnection:v48];
    v41 = sub_1000011DC([v40 processIdentifier]);

    v42 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF28;
    block[3] = &unk_1000DD200;
    v58 = processIdentifier;
    block[4] = self;
    v53 = handlerCopy;
    v54 = &v61;
    sizeCopy = size;
    typeCopy = type;
    v52 = personaCopy;
    v55 = &v65;
    v59 = v41;
    dispatch_async(v42, block);

    v43 = 0;
    goto LABEL_60;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v35 = qword_1000EB268;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v69 = 0;
    v36 = sub_1000011A8(1);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      LOWORD(v60) = 0;
      v38 = _os_log_send_and_compose_impl();
      v39 = v38;
      if (v38)
      {
        sub_100002A8C(v38);
      }
    }

    else
    {
      v39 = 0;
    }

    free(v39);
  }

  v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
  v44 = mach_task_self_;
  v45 = v62[3];
  v46 = vm_page_size;
  if (vm_page_size >= size)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = vm_page_size;
  }

  memset_s(v62[3], sizeCopy2, 0, sizeCopy2);
  vm_deallocate(v44, v45, v46);
  handlerCopy[2](handlerCopy, 0, v43);
LABEL_60:

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
}

- (void)deletePersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v30[0] = 67109376;
        v30[1] = processIdentifier;
        v31 = 1024;
        pidCopy = pid;
        LODWORD(v23) = 14;
        v22 = v30;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = [NSXPCConnection currentConnection:v22];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010194;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v25 = personaCopy;
  v27 = processIdentifier;
  v28 = v18;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = personaCopy;
  dispatch_async(v19, block);
}

- (void)disablePersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v30[0] = 67109376;
        v30[1] = processIdentifier;
        v31 = 1024;
        pidCopy = pid;
        LODWORD(v23) = 14;
        v22 = v30;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = [NSXPCConnection currentConnection:v22];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010930;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v25 = personaCopy;
  v27 = processIdentifier;
  v28 = v18;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = personaCopy;
  dispatch_async(v19, block);
}

- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F78;
  block[3] = &unk_1000DD020;
  block[4] = self;
  v12 = handlerCopy;
  pidCopy = pid;
  v14 = v8;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011600;
  block[3] = &unk_1000DCF38;
  pidCopy = pid;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011C10;
  block[3] = &unk_1000DCF38;
  pidCopy = pid;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001205C;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = personaCopy;
  pidCopy = pid;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = personaCopy;
  dispatch_async(v12, v15);
}

- (void)setSinglePersonaBundlesIdentifiers:(id)identifiers forPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  personaCopy = persona;
  handlerCopy = handler;
  v13 = +[NSXPCConnection currentConnection];
  processIdentifier = [v13 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v35[0] = 67109376;
        v35[1] = processIdentifier;
        v36 = 1024;
        pidCopy = pid;
        LODWORD(v27) = 14;
        v26 = v35;
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

  v20 = [NSXPCConnection currentConnection:v26];
  v21 = sub_1000011DC([v20 processIdentifier]);

  v22 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012938;
  block[3] = &unk_1000DD250;
  block[4] = self;
  v29 = personaCopy;
  v32 = processIdentifier;
  v33 = v21;
  v30 = identifiersCopy;
  v31 = handlerCopy;
  v23 = handlerCopy;
  v24 = identifiersCopy;
  v25 = personaCopy;
  dispatch_async(v22, block);
}

- (void)fetchBundleIdentifiersForPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013094;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = personaCopy;
  pidCopy = pid;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = personaCopy;
  dispatch_async(v12, v15);
}

- (void)setMultiPersonaBundlesIdentifiers:(id)identifiers forPid:(int)pid WithcompletionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v30[0] = 67109376;
        v30[1] = processIdentifier;
        v31 = 1024;
        pidCopy = pid;
        LODWORD(v23) = 14;
        v22 = v30;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = [NSXPCConnection currentConnection:v22];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013934;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v25 = identifiersCopy;
  v27 = processIdentifier;
  v28 = v18;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = identifiersCopy;
  dispatch_async(v19, block);
}

- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013F90;
  block[3] = &unk_1000DD020;
  pidCopy = pid;
  v14 = v8;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)personaLoginWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(handler + 2))(handlerCopy, v8);
  }
}

- (void)personaLogoutWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(handler + 2))(handlerCopy, v8);
  }
}

- (void)_broadcastPersonaUpdates:(id)updates withAuid:(unsigned int)auid
{
  updatesCopy = updates;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v7 = qword_1000EB268;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v16 = 0;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = sub_1000449E8(updatesCopy);
  v13 = v12;
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000147B4;
    v14[3] = &unk_1000DD278;
    v14[4] = self;
    auidCopy = auid;
    [(__CFArray *)v12 enumerateObjectsUsingBlock:v14];
  }
}

- (BOOL)notifyNextPersonaObserver:(id)observer withUser:(unsigned int)user
{
  observerCopy = observer;
  if (observerCopy)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v6 = qword_1000EB268;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LODWORD(v30[0]) = 138412290;
        *(v30 + 4) = observerCopy;
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v16 = [[NSXPCConnection alloc] initWithMachServiceName:observerCopy options:0];
    v17 = +[RDClient sharedXPCInterface];
    [v16 setRemoteObjectInterface:v17];

    v18 = +[RDServer sharedXPCInterface];
    [v16 setExportedInterface:v18];

    [v16 setExportedObject:self];
    [v16 setInterruptionHandler:&stru_1000DD298];
    [v16 setInvalidationHandler:&stru_1000DD2B8];
    [v16 resume];
    v11 = [RDClient clientWithXPCConnection:v16];
    if (!v11)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v19 = qword_1000EB268;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v30[0] = 0;
        v20 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          LOWORD(v29) = 0;
          v22 = _os_log_send_and_compose_impl();
          v23 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100014F34;
    v26[3] = &unk_1000DCF10;
    v27 = observerCopy;
    v28 = v16;
    v24 = v16;
    [v11 personaUpdateCallbackForMachServiceCompletionHandler:v26];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v11 = qword_1000EB268;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v30[0] = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LOWORD(v29) = 0;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }

  return observerCopy != 0;
}

- (void)registerUserPersonaStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015118;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015640;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = nameCopy;
  dCopy = d;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = nameCopy;
  dispatch_async(v12, v15);
}

- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid
{
  if (auid)
  {
    *auid = -1;
  }

  return -1;
}

- (void)provisionDevice:(id)device forPid:(int)pid completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015C78;
  v13[3] = &unk_1000DCF60;
  pidCopy = pid;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = deviceCopy;
  dispatch_async(v10, v13);
}

- (void)resetStateForUserSwitch
{
  dispatch_assert_queue_V2(qword_1000EB610);
  [(RDServer *)self setSwitchState:0];
  [(RDServer *)self setUserToSwitchTo:0];
  logoutTimer = [(RDServer *)self logoutTimer];

  if (logoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v4 = qword_1000EB278;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 &= ~1u;
      }

      if (v5)
      {
        v6 = v4;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        v19 = 134217984;
        v20 = logoutTimer2;
        LODWORD(v18) = 12;
        v17 = &v19;
        v8 = _os_log_send_and_compose_impl();

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    logoutTimer3 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(logoutTimer3);

    [(RDServer *)self setLogoutTimer:0];
  }

  v10 = [(RDServer *)self fastLogoutTimer:v17];

  if (v10)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v11 = qword_1000EB278;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= ~1u;
      }

      if (v12)
      {
        v13 = v11;
        fastLogoutTimer = [(RDServer *)self fastLogoutTimer];
        v19 = 134217984;
        v20 = fastLogoutTimer;
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer2);

    [(RDServer *)self setFastLogoutTimer:0];
  }
}

@end