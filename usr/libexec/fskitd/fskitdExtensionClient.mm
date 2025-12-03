@interface fskitdExtensionClient
+ (void)closeResource:(id)resource andRevoke:(BOOL)revoke;
+ (void)postTaskStatusUpdate:(id)update;
- (void)closeResource:(id)resource replyHandler:(id)handler;
- (void)configureUserClient:(id)client replyHandler:(id)handler;
- (void)isVolumeIDUsed:(id)used bundle:(id)bundle replyHandler:(id)handler;
- (void)revokeResource:(id)resource replyHandler:(id)handler;
- (void)taskStatusUpdate:(id)update;
- (void)wipeResource:(id)resource replyHandler:(id)handler;
@end

@implementation fskitdExtensionClient

+ (void)postTaskStatusUpdate:(id)update
{
  updateCopy = update;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    taskID = [updateCopy taskID];
    taskState = [updateCopy taskState];
    taskPurpose = [updateCopy taskPurpose];
    *buf = 138412802;
    v42 = taskID;
    v43 = 1024;
    v44 = taskState;
    v45 = 2112;
    v46 = taskPurpose;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got task update id %@ state %d purpose %@", buf, 0x1Cu);
  }

  v8 = updateCopy;
  tasks = [gSettings tasks];
  objc_sync_enter(tasks);
  tasks2 = [gSettings tasks];
  taskID2 = [v8 taskID];
  v12 = [tasks2 objectForKey:taskID2];

  if (v12)
  {
    taskState2 = [v8 taskState];
    taskErrorState = [v8 taskErrorState];
    v15 = [v12 updatedDescriptionInState:taskState2 error:taskErrorState];

    tasks3 = [gSettings tasks];
    taskID3 = [v8 taskID];
    [tasks3 setObject:v15 forKey:taskID3];
  }

  else
  {
    tasks3 = fskit_std_log();
    if (os_log_type_enabled(tasks3, OS_LOG_TYPE_FAULT))
    {
      taskID4 = [v8 taskID];
      sub_10000FE94(taskID4, buf, tasks3);
    }

    v15 = v8;
  }

  objc_sync_exit(tasks);
  if (v12)
  {
    taskResource = [v8 taskResource];
    if (taskResource)
    {
      taskResource2 = [v8 taskResource];
      v21 = [taskResource2 kind] == 1;

      if (v21)
      {
        taskResource3 = [v8 taskResource];
        v23 = [FSBlockDeviceResource dynamicCast:taskResource3];

        if (v23)
        {
          taskResource = [v23 BSDName];
        }

        else
        {
          taskResource = 0;
        }
      }

      else
      {
        taskResource = 0;
      }
    }

    if ([v8 taskState] == 3)
    {
      v24 = gSettings;
      taskID5 = [v15 taskID];
      [v24 removeReferencesToTask:taskID5];

      if (taskResource)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000F030;
        v38[3] = &unk_1000610A8;
        v39 = v8;
        v40 = taskResource;
        [fskitdDAOperations setFSKitAdditions:0 disk:v40 replyHandler:v38];

        v26 = v39;
LABEL_23:
      }
    }

    else if (taskResource)
    {
      v26 = +[NSMutableDictionary dictionary];
      taskID6 = [v8 taskID];
      v28 = [taskID6 description];
      [v26 setObject:v28 forKeyedSubscript:FSDADiskTaskIDKey];

      taskPurpose2 = [v8 taskPurpose];
      [v26 setObject:taskPurpose2 forKeyedSubscript:FSDADiskTaskPurposeKey];

      taskBundleID = [v8 taskBundleID];
      [v26 setObject:taskBundleID forKeyedSubscript:FSDADiskTaskBundleIDKey];

      taskExtensionInstanceID = [v8 taskExtensionInstanceID];
      v32 = [taskExtensionInstanceID description];
      [v26 setObject:v32 forKeyedSubscript:FSDADiskTaskExtensionInstanceKey];

      taskState3 = [v8 taskState];
      if (taskState3 <= 3)
      {
        [v26 setObject:**(&off_100061110 + taskState3) forKeyedSubscript:FSDADiskTaskStateKey];
      }

      [fskitdDAOperations setFSKitAdditions:v26 disk:taskResource replyHandler:&stru_1000610C8];
      goto LABEL_23;
    }

    taskUpdateClients = [gSettings taskUpdateClients];
    objc_sync_enter(taskUpdateClients);
    taskUpdateClients2 = [gSettings taskUpdateClients];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000F0C8;
    v36[3] = &unk_1000610F0;
    v37 = v15;
    [taskUpdateClients2 enumerateObjectsUsingBlock:v36];

    objc_sync_exit(taskUpdateClients);
  }
}

+ (void)closeResource:(id)resource andRevoke:(BOOL)revoke
{
  revokeCopy = revoke;
  resourceCopy = resource;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FEEC(resourceCopy);
  }

  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  [resourceManager2 removeResource:resourceCopy];

  objc_sync_exit(resourceManager);
  if (revokeCopy)
  {
    [resourceCopy revoke];
  }

  else
  {
    v9 = [FSBlockDeviceResource dynamicCast:resourceCopy];
    v10 = v9;
    if (v9)
    {
      [v9 terminate];
    }
  }
}

- (void)taskStatusUpdate:(id)update
{
  updateCopy = update;
  tasks = [gSettings tasks];
  objc_sync_enter(tasks);
  tasks2 = [gSettings tasks];
  taskID = [updateCopy taskID];
  v8 = [tasks2 objectForKey:taskID];

  objc_sync_exit(tasks);
  if (!v8)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000100FC(updateCopy);
    }

    goto LABEL_14;
  }

  taskExtensionInstanceID = [updateCopy taskExtensionInstanceID];
  p_ourInstance = &self->_ourInstance;
  instanceID = [(fskitdExtensionInstance *)self->_ourInstance instanceID];
  fs_containerIdentifier = [instanceID fs_containerIdentifier];
  v13 = [taskExtensionInstanceID isEqual:fs_containerIdentifier];

  if ((v13 & 1) == 0)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000FF80(updateCopy, p_ourInstance, v17);
    }

LABEL_14:

    goto LABEL_15;
  }

  [objc_opt_class() postTaskStatusUpdate:updateCopy];
  if ([updateCopy taskState] == 3)
  {
    v14 = *p_ourInstance;
    if (v14)
    {
      taskID2 = [updateCopy taskID];
      [(fskitdExtensionInstance *)v14 removeTaskID:taskID2];
    }

    if ([v8 terminateExtensionWhenFinished])
    {
      v16 = fskit_std_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100010068(updateCopy);
      }

      [(fskitdExtensionClient *)self terminateExtension];
    }
  }

LABEL_15:
}

- (void)wipeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010190(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if (!resourceCopy || [resourceCopy kind] != 1)
  {
    v37 = fskit_std_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10001043C(v37);
    }

    goto LABEL_14;
  }

  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100010208(resourceCopy);
  }

  resourceIDs = [(fskitdExtensionInstance *)self->_ourInstance resourceIDs];
  getResourceID = [resourceCopy getResourceID];
  v19 = [resourceIDs containsObject:getResourceID];

  if ((v19 & 1) == 0)
  {
    v37 = fskit_std_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10001029C(resourceCopy);
    }

    goto LABEL_14;
  }

  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  getResourceID2 = [resourceCopy getResourceID];
  v23 = [resourceManager2 getResource:getResourceID2];

  objc_sync_exit(resourceManager);
  if (!v23)
  {
    v37 = fskit_std_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000103A8(resourceCopy);
    }

LABEL_14:

    v23 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v23);
    goto LABEL_15;
  }

  v24 = [FSBlockDeviceResource dynamicCast:v23];
  v25 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.fskit.fskit_helper" options:4096];
  v26 = +[FSKitConstants FSKitHelperProtocol];
  [v25 setRemoteObjectInterface:v26];

  [v25 resume];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10000F7FC;
  v40[3] = &unk_100060E08;
  v27 = handlerCopy;
  v41 = v27;
  v28 = [v25 remoteObjectProxyWithErrorHandler:v40];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000F870;
  v38[3] = &unk_100060E08;
  v39 = v27;
  [v28 wipeFS:v24 replyHandler:v38];
  v29 = fskit_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_100010330(v29, v30, v31, v32, v33, v34, v35, v36);
  }

LABEL_15:
}

- (void)isVolumeIDUsed:(id)used bundle:(id)bundle replyHandler:(id)handler
{
  handlerCopy = handler;
  bundleCopy = bundle;
  usedCopy = used;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100010624(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = gExtensionManager;
  initiatorAuditToken = [(fskitdExtensionInstance *)self->_ourInstance initiatorAuditToken];
  [v19 isVolumeIDUsed:usedCopy bundle:bundleCopy user:initiatorAuditToken replyHandler:handlerCopy];

  v21 = fskit_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10001069C(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

- (void)configureUserClient:(id)client replyHandler:(id)handler
{
  handlerCopy = handler;
  clientCopy = client;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010714(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  attributes = [(fskitdExtensionInstance *)self->_ourInstance attributes];
  v17 = [attributes objectForKeyedSubscript:FSModuleIdentityAttributeSupportsBlockResources];

  instanceAuditToken = [(fskitdExtensionInstance *)self->_ourInstance instanceAuditToken];
  v19 = +[LiveFSUserClient defaultClient];
  if (v17)
  {
    bOOLValue = [v17 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v21 = fskit_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315906;
    v34 = "[fskitdExtensionClient configureUserClient:replyHandler:]";
    v35 = 1024;
    v36 = [instanceAuditToken pid];
    v37 = 1024;
    pidversion = [instanceAuditToken pidversion];
    v39 = 1024;
    v40 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: pid %d pidversion %d enableBlockResource %d", &v33, 0x1Eu);
  }

  machPort = [clientCopy machPort];
  v23 = [v19 configureUserClient:machPort pid:objc_msgSend(instanceAuditToken pidversion:"pid") supportBlockResource:{objc_msgSend(instanceAuditToken, "pidversion"), bOOLValue}];
  v24 = fskit_std_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_10001078C(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  if (v23)
  {
    v32 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v32);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)revokeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010804(resourceCopy);
  }

  [objc_opt_class() closeResource:resourceCopy andRevoke:1];
  ourInstance = self->_ourInstance;
  getResourceID = [resourceCopy getResourceID];
  [(fskitdExtensionInstance *)ourInstance removeResourceID:getResourceID];

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100010894(resourceCopy);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)closeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010924(resourceCopy);
  }

  [objc_opt_class() closeResource:resourceCopy andRevoke:0];
  ourInstance = self->_ourInstance;
  getResourceID = [resourceCopy getResourceID];
  [(fskitdExtensionInstance *)ourInstance removeResourceID:getResourceID];

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000109B4(resourceCopy);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end