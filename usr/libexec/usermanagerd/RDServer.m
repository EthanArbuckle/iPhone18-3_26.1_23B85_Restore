@interface RDServer
+ (id)sharedBubbleXPCInterface;
+ (id)sharedServer;
+ (id)sharedXPCInterface;
- (BOOL)LogoutToUser:(id)a3;
- (BOOL)anyBubblePopClients;
- (BOOL)inLoginSession;
- (BOOL)inLogoutProcess;
- (BOOL)notifyNextPersonaObserver:(id)a3 withUser:(unsigned int)a4;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3;
- (BOOL)retrievePasscodeFromFileHandle:(id)a3 ofLength:(unint64_t)a4 withbaseaddress:(char *)a5;
- (RDServer)init;
- (id)_allowlistedPreferencesKeys;
- (id)bubbleStakeHolder;
- (id)criticalStakeHolder;
- (id)fetchUserBlockTaskList;
- (id)fetchUserSyncTaskList;
- (int)asidForClient:(id)a3 withAuid:(unsigned int *)a4 withPid:(int)a5;
- (void)StopBubbleWithPID:(int)a3 WithUID:(unsigned int)a4 WithStatus:(unint64_t)a5;
- (void)_broadcastPersonaUpdates:(id)a3 withAuid:(unsigned int)a4;
- (void)_enumerateClientsWithBlock:(id)a3;
- (void)_reallySwitchUser:(BOOL)a3;
- (void)addBubbleClient:(id)a3;
- (void)addClient:(id)a3;
- (void)addUserSwitchBlockingTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5;
- (void)addUserSyncTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5;
- (void)createPersona:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 passcodeDataType:(unint64_t)a6 forPid:(int)a7 completionHandler:(id)a8;
- (void)deletePersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5;
- (void)disablePersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5;
- (void)fetchAllUsersPersonaListforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchAsidMapforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchBundleIdentifiersForPersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5;
- (void)fetchMachServiceNameswithPID:(int)a3 WithUID:(unsigned int)a4 WithCompletionHandler:(id)a5;
- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchPersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5;
- (void)fetchPersonaListforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)a3;
- (void)loginComplete;
- (void)loginUICheckinForPID:(int)a3 completionHandler:(id)a4;
- (void)logoutToLoginSessionWithPID:(int)a3 completionHandler:(id)a4;
- (void)personaLoginWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6;
- (void)personaLogoutWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6;
- (void)provisionDevice:(id)a3 forPid:(int)a4 completionHandler:(id)a5;
- (void)reengageUserQuotaForPID:(int)a3 completionHandler:(id)a4;
- (void)registerBubblePopStakeholderForPID:(int)a3 completionHandler:(id)a4;
- (void)registerCriticalUserSwitchStakeholderForPID:(int)a3 completionHandler:(id)a4;
- (void)registerUserPersonaObserverForPID:(int)a3 withMachServiceName:(id)a4 completionHandler:(id)a5;
- (void)registerUserPersonaStakeholderForPID:(int)a3 completionHandler:(id)a4;
- (void)registerUserSwitchStakeholderForPID:(int)a3 completionHandler:(id)a4;
- (void)registerUserSyncStakeholderForPID:(int)a3 machServiceName:(id)a4 completionHandler:(id)a5;
- (void)removeBubbleClient:(id)a3;
- (void)removeClient:(id)a3;
- (void)removeMachServiceName:(id)a3 withPID:(int)a4 WithUID:(unsigned int)a5;
- (void)removeUserSwitchBlockingTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5;
- (void)removeUserSyncTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5;
- (void)resetStateForUserSwitch;
- (void)resumeSyncBubbleForPID:(int)a3 completionHandler:(id)a4;
- (void)setMultiPersonaBundlesIdentifiers:(id)a3 forPid:(int)a4 WithcompletionHandler:(id)a5;
- (void)setSinglePersonaBundlesIdentifiers:(id)a3 forPersona:(id)a4 forPid:(int)a5 completionHandler:(id)a6;
- (void)suspendUserQuotaForPID:(int)a3 completionHandler:(id)a4;
- (void)switchToLoginUserWithPID:(int)a3 completionHandler:(id)a4;
- (void)switchToUser:(id)a3 passcodeData:(id)a4;
- (void)switchToUser:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 context:(id)a6 preferences:(id)a7 pid:(int)a8 completionHandler:(id)a9;
- (void)terminateSyncBubbleForPID:(int)a3 completionHandler:(id)a4;
- (void)unregisterStakeholderForPID:(int)a3 status:(unint64_t)a4 reason:(id)a5 completionHandler:(id)a6;
@end

@implementation RDServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003034;
  block[3] = &unk_1000DCE88;
  block[4] = a1;
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

- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3
{
  v3 = a3;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)retrievePasscodeFromFileHandle:(id)a3 ofLength:(unint64_t)a4 withbaseaddress:(char *)a5
{
  v7 = a3;
  v8 = v7;
  if (!a4)
  {
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (read([v7 fileDescriptor], a5, a4) != a4)
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

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003460;
  v7[3] = &unk_1000DCF10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000035C8;
  v7[3] = &unk_1000DCF10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)addBubbleClient:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000386C;
  v7[3] = &unk_1000DCF10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeBubbleClient:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000039D4;
  v7[3] = &unk_1000DCF10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_enumerateClientsWithBlock:(id)a3
{
  v4 = a3;
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
      v4[2](v4, v10, &v16);
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

- (void)registerUserSwitchStakeholderForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FBC;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)registerCriticalUserSwitchStakeholderForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004340;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)registerBubblePopStakeholderForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000047D0;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

      v9 = [v5 bubblePopstakeholderIsRegistered];
      if (v9)
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
    v9 = 0;
  }

  return v9;
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

- (void)registerUserSyncStakeholderForPID:(int)a3 machServiceName:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004E5C;
  v13[3] = &unk_1000DCF60;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)unregisterStakeholderForPID:(int)a3 status:(unint64_t)a4 reason:(id)a5 completionHandler:(id)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005328;
  block[3] = &unk_1000DCF88;
  v7 = a3;
  block[4] = self;
  block[5] = a4;
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

- (void)switchToUser:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 context:(id)a6 preferences:(id)a7 pid:(int)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a9;
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
  if (vm_page_size >= a5)
  {
    if (a5)
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
      if ([(RDServer *)self retrievePasscodeFromFileHandle:v16 ofLength:a5 withbaseaddress:?])
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
        if (vm_page_size >= a5)
        {
          v45 = a5;
        }

        else
        {
          v45 = vm_page_size;
        }

        memset_s(v65[3], v45, 0, v45);
        vm_deallocate(v42, v43, v44);
        goto LABEL_46;
      }
    }

    v35 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005EC4;
    block[3] = &unk_1000DCFD0;
    v55 = a8;
    block[4] = self;
    v51 = &v58;
    v52 = &v64;
    v54 = a5;
    v47 = v15;
    v50 = v19;
    v48 = v18;
    v53 = &v68;
    v49 = v17;
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

    if (v19)
    {
LABEL_46:
      (*(v19 + 2))(v19, v59[5]);
    }
  }

  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)switchToLoginUserWithPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006974;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)logoutToLoginSessionWithPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006EB8;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

- (void)loginUICheckinForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C28;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)terminateSyncBubbleForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000083C0;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)resumeSyncBubbleForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008794;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)fetchMachServiceNameswithPID:(int)a3 WithUID:(unsigned int)a4 WithCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089FC;
  block[3] = &unk_1000DD020;
  v13 = a3;
  v14 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)removeMachServiceName:(id)a3 withPID:(int)a4 WithUID:(unsigned int)a5
{
  v8 = a3;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008CF0;
  block[3] = &unk_1000DD048;
  v13 = a4;
  v14 = a5;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)StopBubbleWithPID:(int)a3 WithUID:(unsigned int)a4 WithStatus:(unint64_t)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E8C;
  block[3] = &unk_1000DCF88;
  v6 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_async(qword_1000EB610, block);
}

- (void)switchToUser:(id)a3 passcodeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(RDServer *)self setUserToSwitchTo:v6];
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

  v14 = [(RDServer *)self fastLogoutTimer];

  if (v14)
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
        v18 = [(RDServer *)self fastLogoutTimer];
        *v80 = 134217984;
        *&v80[4] = v18;
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

    v20 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(v20);

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
  if (CFDictionaryContainsKey(v6, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(v6, @"UserSwitchTaskOpqueData");
    v24 = CFRetain(Value);
    CFDictionaryRemoveValue(v6, @"UserSwitchTaskOpqueData");
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

    if (sub_100028D8C(v6, v7))
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

    if (v7)
    {
      [v7 resetBytesInRange:{0, objc_msgSend(v7, "length")}];
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

  sub_10002E9D8(v6, v24);
LABEL_90:
  if (v7)
  {
    [v7 resetBytesInRange:{0, objc_msgSend(v7, "length")}];
  }

  v47 = [(RDServer *)self logoutTimer:v72];

  if (v47)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v48 = qword_1000EB278;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v79[0] = 0;
      v49 = sub_1000011A8(0);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 &= ~1u;
      }

      if (v49)
      {
        v50 = v48;
        v51 = [(RDServer *)self logoutTimer];
        *v80 = 134217984;
        *&v80[4] = v51;
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
        v57 = [(RDServer *)self logoutTimer];
        *v80 = 134217984;
        *&v80[4] = v57;
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

    v59 = [(RDServer *)self logoutTimer];
    v60 = dispatch_time(0, 360000000000);
    dispatch_source_set_timer(v59, v60, 0xFFFFFFFFFFFFFFFFLL, 0);

    v61 = [(RDServer *)self logoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009C1C;
    handler[3] = &unk_1000DCFF8;
    handler[4] = self;
    dispatch_source_set_event_handler(v61, handler);

    v48 = [(RDServer *)self logoutTimer];
    dispatch_activate(v48);
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
      v76 = v6;
      v77 = self;
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

- (BOOL)LogoutToUser:(id)a3
{
  v4 = a3;
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
  v10 = [(RDServer *)self fastLogoutTimer];

  if (v10)
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
        v14 = [(RDServer *)self fastLogoutTimer];
        LODWORD(v52[0]) = 134217984;
        *(v52 + 4) = v14;
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

    v16 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(v16);

    [(RDServer *)self setFastLogoutTimer:0];
  }

  v17 = [(RDServer *)self pidsToClients:v45];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(RDServer *)self logoutTimer];

    if (v19)
    {
      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      v20 = qword_1000EB278;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 0;
        v21 = sub_1000011A8(0);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 &= ~1u;
        }

        if (v21)
        {
          v22 = v20;
          v23 = [(RDServer *)self logoutTimer];
          LODWORD(v52[0]) = 134217984;
          *(v52 + 4) = v23;
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
          v34 = [(RDServer *)self logoutTimer];
          LODWORD(v52[0]) = 134217984;
          *(v52 + 4) = v34;
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

      v41 = [(RDServer *)self logoutTimer];
      v42 = dispatch_time(0, 360000000000);
      dispatch_source_set_timer(v41, v42, 0xFFFFFFFFFFFFFFFFLL, 0);

      v43 = [(RDServer *)self logoutTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000A8F8;
      handler[3] = &unk_1000DCFF8;
      handler[4] = self;
      dispatch_source_set_event_handler(v43, handler);

      v20 = [(RDServer *)self logoutTimer];
      dispatch_activate(v20);
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000AC0C;
    v47[3] = &unk_1000DD0B0;
    v48 = v4;
    v49 = self;
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

- (void)_reallySwitchUser:(BOOL)a3
{
  v3 = a3;
  v5 = [(RDServer *)self userToSwitchTo];
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
      if (v3)
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
  v12 = [(RDServer *)self logoutTimer];

  if (v12)
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
        v16 = [(RDServer *)self logoutTimer];
        *v90 = 134217984;
        *&v90[4] = v16;
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

    v18 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(v18);

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
      v41 = [v37 stakeholderIsRegistered];
      LODWORD(v91) = 67109120;
      HIDWORD(v91) = v41;
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

    v63 = v5;
    if (v3)
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

  if (v3)
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
  v88 = v5;
  [v37 readyToSwitchToUser:v88 completionHandler:v87];

LABEL_149:
}

- (void)addUserSwitchBlockingTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D35C;
  v13[3] = &unk_1000DCF60;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)removeUserSwitchBlockingTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D6D4;
  v13[3] = &unk_1000DCF60;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DBBC;
  v7[3] = &unk_1000DD188;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)addUserSyncTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000DFBC;
  v13[3] = &unk_1000DCF60;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)removeUserSyncTask:(id)a3 forPID:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E364;
  v13[3] = &unk_1000DCF60;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)suspendUserQuotaForPID:(int)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6B8;
  block[3] = &unk_1000DD1B0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)reengageUserQuotaForPID:(int)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7D0;
  block[3] = &unk_1000DD1B0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)createPersona:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 passcodeDataType:(unint64_t)a6 forPid:(int)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = +[NSXPCConnection currentConnection];
  v17 = [v16 processIdentifier];

  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  if (v17 == a7)
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
    v19 = v13;
    v20 = v14;
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
      HIDWORD(v69) = v17;
      v70 = 1024;
      v71 = a7;
      LODWORD(v49) = 14;
      v48 = &v69;
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      v14 = v20;
      if (v23)
      {
        sub_100002A8C(v23);
        v13 = v19;
LABEL_13:
        free(v24);
        goto LABEL_14;
      }
    }

    else
    {
      v24 = 0;
      v14 = v20;
    }

    v13 = v19;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  if (vm_page_size < a5)
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
    if (v15)
    {
      v15[2](v15, 0, v43);
    }

    goto LABEL_60;
  }

  if (!a5)
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
    v15[2](v15, 0, v43);
    goto LABEL_60;
  }

  v66[3] = v62[3];
  if (![(RDServer *)self retrievePasscodeFromFileHandle:v14 ofLength:a5 withbaseaddress:?])
  {
LABEL_46:
    v40 = [NSXPCConnection currentConnection:v48];
    v41 = sub_1000011DC([v40 processIdentifier]);

    v42 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF28;
    block[3] = &unk_1000DD200;
    v58 = v17;
    block[4] = self;
    v53 = v15;
    v54 = &v61;
    v56 = a5;
    v57 = a6;
    v52 = v13;
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
  if (vm_page_size >= a5)
  {
    v47 = a5;
  }

  else
  {
    v47 = vm_page_size;
  }

  memset_s(v62[3], v47, 0, v47);
  vm_deallocate(v44, v45, v46);
  v15[2](v15, 0, v43);
LABEL_60:

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
}

- (void)deletePersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 processIdentifier];

  if (v11 != a4)
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
        v30[1] = v11;
        v31 = 1024;
        v32 = a4;
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
  v25 = v8;
  v27 = v11;
  v28 = v18;
  v26 = v9;
  v20 = v9;
  v21 = v8;
  dispatch_async(v19, block);
}

- (void)disablePersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 processIdentifier];

  if (v11 != a4)
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
        v30[1] = v11;
        v31 = 1024;
        v32 = a4;
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
  v25 = v8;
  v27 = v11;
  v28 = v18;
  v26 = v9;
  v20 = v9;
  v21 = v8;
  dispatch_async(v19, block);
}

- (void)fetchPersonaListforPid:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F78;
  block[3] = &unk_1000DD020;
  block[4] = self;
  v12 = v6;
  v13 = a3;
  v14 = v8;
  v10 = v6;
  dispatch_async(v9, block);
}

- (void)fetchAllUsersPersonaListforPid:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011600;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)fetchAsidMapforPid:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011C10;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)fetchPersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001205C;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = v8;
  v18 = a4;
  v19 = v11;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v15);
}

- (void)setSinglePersonaBundlesIdentifiers:(id)a3 forPersona:(id)a4 forPid:(int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[NSXPCConnection currentConnection];
  v14 = [v13 processIdentifier];

  if (v14 != a5)
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
        v35[1] = v14;
        v36 = 1024;
        v37 = a5;
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
  v29 = v11;
  v32 = v14;
  v33 = v21;
  v30 = v10;
  v31 = v12;
  v23 = v12;
  v24 = v10;
  v25 = v11;
  dispatch_async(v22, block);
}

- (void)fetchBundleIdentifiersForPersona:(id)a3 forPid:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013094;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = v8;
  v18 = a4;
  v19 = v11;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v15);
}

- (void)setMultiPersonaBundlesIdentifiers:(id)a3 forPid:(int)a4 WithcompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 processIdentifier];

  if (v11 != a4)
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
        v30[1] = v11;
        v31 = 1024;
        v32 = a4;
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
  v25 = v8;
  v27 = v11;
  v28 = v18;
  v26 = v9;
  v20 = v9;
  v21 = v8;
  dispatch_async(v19, block);
}

- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013F90;
  block[3] = &unk_1000DD020;
  v13 = a3;
  v14 = v8;
  block[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(v9, block);
}

- (void)personaLoginWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(a6 + 2))(v7, v8);
  }
}

- (void)personaLogoutWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(a6 + 2))(v7, v8);
  }
}

- (void)_broadcastPersonaUpdates:(id)a3 withAuid:(unsigned int)a4
{
  v6 = a3;
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

  v12 = sub_1000449E8(v6);
  v13 = v12;
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000147B4;
    v14[3] = &unk_1000DD278;
    v14[4] = self;
    v15 = a4;
    [(__CFArray *)v12 enumerateObjectsUsingBlock:v14];
  }
}

- (BOOL)notifyNextPersonaObserver:(id)a3 withUser:(unsigned int)a4
{
  v5 = a3;
  if (v5)
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
        *(v30 + 4) = v5;
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

    v16 = [[NSXPCConnection alloc] initWithMachServiceName:v5 options:0];
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
    v27 = v5;
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

  return v5 != 0;
}

- (void)registerUserPersonaStakeholderForPID:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015118;
  block[3] = &unk_1000DCF38;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)registerUserPersonaObserverForPID:(int)a3 withMachServiceName:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015640;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = v8;
  v18 = a3;
  v19 = v11;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v15);
}

- (int)asidForClient:(id)a3 withAuid:(unsigned int *)a4 withPid:(int)a5
{
  if (a4)
  {
    *a4 = -1;
  }

  return -1;
}

- (void)provisionDevice:(id)a3 forPid:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015C78;
  v13[3] = &unk_1000DCF60;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)resetStateForUserSwitch
{
  dispatch_assert_queue_V2(qword_1000EB610);
  [(RDServer *)self setSwitchState:0];
  [(RDServer *)self setUserToSwitchTo:0];
  v3 = [(RDServer *)self logoutTimer];

  if (v3)
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
        v7 = [(RDServer *)self logoutTimer];
        v19 = 134217984;
        v20 = v7;
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

    v9 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(v9);

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
        v14 = [(RDServer *)self fastLogoutTimer];
        v19 = 134217984;
        v20 = v14;
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

    v16 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(v16);

    [(RDServer *)self setFastLogoutTimer:0];
  }
}

@end