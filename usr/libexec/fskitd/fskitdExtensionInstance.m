@interface fskitdExtensionInstance
+ (id)dynamicCast:(id)a3;
+ (id)newForBundle:(id)a3 user:(id)a4 instance:(id)a5;
+ (id)newForBundle:(id)a3 user:(id)a4 instanceUUID:(id)a5 instanceID:(id)a6;
- (id)errorFromStartingProc;
- (id)initForBundle:(id)a3 user:(id)a4 instance:(id)a5;
- (id)newXPCConnectionWithError:(id *)a3;
- (void)addResourceID:(id)a3;
- (void)addTaskID:(id)a3;
- (void)addVolumeID:(id)a3;
- (void)dealloc;
- (void)removeResourceID:(id)a3;
- (void)removeTaskID:(id)a3;
- (void)removeVolumeID:(id)a3;
- (void)terminate;
- (void)weDied;
@end

@implementation fskitdExtensionInstance

- (id)initForBundle:(id)a3 user:(id)a4 instance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = fskitdExtensionInstance;
  v11 = [(fskitdExtensionInstance *)&v25 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleID = v11->_bundleID;
    v11->_bundleID = v12;

    v11->_uid = getuid();
    v11->_ourUID = 1;
    v14 = [v10 copy];
    instanceID = v11->_instanceID;
    v11->_instanceID = v14;

    v16 = objc_opt_new();
    resourceIDs = v11->_resourceIDs;
    v11->_resourceIDs = v16;

    v18 = objc_opt_new();
    volumeIDs = v11->_volumeIDs;
    v11->_volumeIDs = v18;

    v20 = [[FSContainerIdentifier alloc] initWithUUID:v11->_instanceID];
    containerID = v11->_containerID;
    v11->_containerID = v20;

    v11->_running = 0;
    v22 = objc_opt_new();
    taskIDs = v11->_taskIDs;
    v11->_taskIDs = v22;

    objc_storeStrong(&v11->_initiatorAuditToken, a4);
  }

  return v11;
}

+ (id)newForBundle:(id)a3 user:(id)a4 instanceUUID:(id)a5 instanceID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 alloc];
  if (v14)
  {
    v15 = [v14 initForBundle:v10 user:v11 instance:v12];
    v16 = v15;
    if (v15)
    {
      if ([v15 isOurUID])
      {
        v17 = [gFSModuleHost configurationForInstance:v13 ofBundle:v10];
        [v16 setInstanceConfig:v17];

        v18 = [v16 instanceConfig];

        if (!v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        [v16 setBundleID:v10];
        [v16 setInstanceUUID:v12];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v16 = v16;
  v18 = v16;
LABEL_9:

  return v18;
}

+ (id)newForBundle:(id)a3 user:(id)a4 instance:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_EXExtensionInstanceIdentifier alloc] initWithIdentifier:v8];
  v12 = [a1 newForBundle:v10 user:v9 instanceUUID:v8 instanceID:v11];

  return v12;
}

- (void)dealloc
{
  instanceConnection = self->_instanceConnection;
  if (instanceConnection)
  {
    [(NSXPCConnection *)instanceConnection invalidate];
    v4 = self->_instanceConnection;
    self->_instanceConnection = 0;
  }

  v5.receiver = self;
  v5.super_class = fskitdExtensionInstance;
  [(fskitdExtensionInstance *)&v5 dealloc];
}

- (void)weDied
{
  v3 = fs_errorForPOSIXError();
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    containerID = self->_containerID;
    *buf = 138412290;
    v26 = containerID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Boom!🤯 Instance %@ died", buf, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_taskIDs;
  v8 = v6->_resourceIDs;
  v9 = objc_opt_new();
  taskIDs = v6->_taskIDs;
  v6->_taskIDs = v9;

  v11 = objc_opt_new();
  resourceIDs = v6->_resourceIDs;
  v6->_resourceIDs = v11;

  instanceProc = v6->_instanceProc;
  v6->_instanceProc = 0;
  v14 = instanceProc;

  v15 = v6->_instanceConnection;
  instanceConnection = v6->_instanceConnection;
  v6->_instanceConnection = 0;

  v6->_running = 0;
  objc_sync_exit(v6);

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100010FE8;
  v22 = &unk_100061138;
  v17 = v3;
  v23 = v17;
  v24 = v6;
  [(NSMutableArray *)v7 enumerateObjectsUsingBlock:&v19];
  [(NSMutableArray *)v8 enumerateObjectsUsingBlock:&stru_100061178, v19, v20, v21, v22];

  v18 = fskit_std_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Death came for them", buf, 2u);
  }

  if (v15)
  {
    [(NSXPCConnection *)v15 invalidate];
  }

  [gExtensionManager cleanUpInstance:v6];
}

- (id)errorFromStartingProc
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10001180C;
  v44 = sub_10001181C;
  v45 = 0;
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_running)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  if ([(fskitdExtensionInstance *)v2 isOurUID])
  {
    objc_initWeak(&location, v2);
    v5 = [(_EXHostConfiguration *)v2->_instanceConfig copy];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100011824;
    v38[3] = &unk_1000609A0;
    objc_copyWeak(&v39, &location);
    [v5 setInterruptionHandler:v38];
    v9 = (v41 + 5);
    obj = v41[5];
    v6 = [_EXExtensionProcess extensionProcessWithConfiguration:v5 error:&obj];
    objc_storeStrong(v9, obj);
    if (v41[5])
    {
      v10 = fskit_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        containerID = v2->_containerID;
        v12 = v41[5];
        *buf = 138412546;
        *&buf[4] = containerID;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to start instance %@: %@", buf, 0x16u);
      }

      v7 = v41[5];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
      v3 = 0;
      v4 = 0;
      goto LABEL_4;
    }

    v20 = [v6 rbs_pid];
    v23 = [(_EXHostConfiguration *)v2->_instanceConfig extensionIdentity];
    v4 = [v23 attributes];

    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v3 = [FSAuditToken tokenWithToken:buf];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
LABEL_23:
    if (v2->_running)
    {
      goto LABEL_3;
    }

    v2->_running = 1;
    objc_storeStrong(&v2->_instanceProc, v6);
    v2->_pid = v20;
    objc_storeStrong(&v2->_attributes, v4);
    objc_storeStrong(&v2->_instanceAuditToken, v3);
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "About to grab assertion on pid %d", buf, 8u);
    }

    v25 = [BKSProcessAssertion alloc];
    v26 = [v25 initWithPID:v20 flags:14 reason:13 name:@"com.apple.extension.session"];

    if (v26)
    {
      if (([v26 acquire] & 1) == 0)
      {
        v29 = fskit_std_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100013E84(v29);
        }

        [v26 invalidate];
        goto LABEL_35;
      }

      v27 = v26;
      instanceMemoryAssertion = v2->_instanceMemoryAssertion;
      v2->_instanceMemoryAssertion = v27;
    }

    else
    {
      instanceMemoryAssertion = fskit_std_log();
      if (os_log_type_enabled(instanceMemoryAssertion, OS_LOG_TYPE_ERROR))
      {
        sub_100013EC8(instanceMemoryAssertion);
      }
    }

LABEL_35:
    goto LABEL_3;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_10001180C;
  v51 = sub_10001181C;
  v52 = 0;
  location = 0;
  p_location = &location;
  v33 = 0x3032000000;
  v34 = sub_10001180C;
  v35 = sub_10001181C;
  v36 = 0;
  bundleID = v2->_bundleID;
  instanceUUID = v2->_instanceUUID;
  uid = v2->_uid;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100011868;
  v30[3] = &unk_1000611A0;
  v30[4] = buf;
  v30[5] = &location;
  v30[6] = &v40;
  [gAgentManager startExtension:bundleID instanceID:instanceUUID uid:uid replyHandler:v30];
  v16 = v41[5];
  if (v16)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v2->_containerID;
      v19 = v41[5];
      *v46 = 138412546;
      v47 = v18;
      v48 = 2112;
      v49 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to start instance %@: %@", v46, 0x16u);
    }

    v20 = 0;
    v3 = 0;
    v4 = 0;
    v7 = v41[5];
  }

  else
  {
    v20 = [p_location[5] pid];
    v4 = [*(*&buf[8] + 40) attributes];
    v7 = p_location[5];
    v3 = v7;
  }

  v21 = v16 == 0;
  v22 = v7;
  _Block_object_dispose(&location, 8);

  _Block_object_dispose(buf, 8);
  v5 = 0;
  v6 = 0;
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_4:
  objc_sync_exit(v2);

  _Block_object_dispose(&v40, 8);

  return v7;
}

- (id)newXPCConnectionWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_running)
  {
    instanceConnection = v4->_instanceConnection;
    if (instanceConnection)
    {
LABEL_17:
      v8 = instanceConnection;
      goto LABEL_18;
    }

    if (v4->_ourUID)
    {
      v6 = [(_EXExtensionProcess *)v4->_instanceProc newXPCConnectionWithError:a3];
      v7 = v4->_instanceConnection;
      v4->_instanceConnection = v6;

LABEL_15:
      instanceConnection = v4->_instanceConnection;
      if (instanceConnection)
      {
        v19 = instanceConnection;
        v20 = objc_opt_new();
        [v20 setOurInstance:v4];
        v21 = +[FSKitConstants FSModuleExtensionXPCProtocol];
        [(NSXPCConnection *)v19 setRemoteObjectInterface:v21];

        [(NSXPCConnection *)v19 setExportedObject:v20];
        v22 = +[FSKitConstants FSModuleExtensionHostXPCProtocol];
        [(NSXPCConnection *)v19 setExportedInterface:v22];

        [(NSXPCConnection *)v19 resume];
        instanceConnection = v4->_instanceConnection;
      }

      goto LABEL_17;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_10001180C;
    v35 = sub_10001181C;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_10001180C;
    v29 = sub_10001181C;
    v30 = 0;
    bundleID = v4->_bundleID;
    instanceUUID = v4->_instanceUUID;
    uid = v4->_uid;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011C7C;
    v24[3] = &unk_1000611C8;
    v24[4] = &v31;
    v24[5] = &v25;
    [gAgentManager getNSXPCListenerEndpoint:bundleID instanceID:instanceUUID uid:uid replyHandler:v24];
    v12 = v26[5];
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }
    }

    else
    {
      v14 = [NSXPCConnection alloc];
      v15 = [v14 initWithListenerEndpoint:v32[5]];
      v16 = v4->_instanceConnection;
      v4->_instanceConnection = v15;

      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v4->_instanceConnection;
        *buf = 138412290;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "non-ours instance connection got %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_18;
  }

  fs_errorForPOSIXError();
  *a3 = v8 = 0;
LABEL_18:
  objc_sync_exit(v4);

  return v8;
}

- (void)terminate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [gSettings resourceManager];
  objc_sync_enter(v3);
  v4 = [(fskitdExtensionInstance *)v2 resourceIDs];
  [v4 enumerateObjectsUsingBlock:&stru_100061208];

  objc_sync_exit(v3);
  if (v2->_running)
  {
    if (!v2->_ourUID)
    {
      [gAgentManager stopExtension:v2->_bundleID instanceID:v2->_instanceUUID uid:v2->_uid replyHandler:&stru_100061248];
    }

    pid = v2->_pid;
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100013F0C(pid, v6);
    }

    v7 = objc_alloc_init(RBSTerminateContext);
    v8 = [NSString stringWithFormat:@"Request to terminate instance process (%d)", pid];
    [v7 setExplanation:v8];

    v9 = [RBSTerminateRequest alloc];
    v10 = [NSNumber numberWithInt:pid];
    v11 = [v9 initWithProcessIdentifier:v10 context:v7];

    v19 = 0;
    LOBYTE(v10) = [v11 execute:&v19];
    v12 = v19;
    if ((v10 & 1) == 0)
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v12 description];
        sub_100013F98(v14, buf, v13);
      }
    }

    instanceProc = v2->_instanceProc;
    v2->_instanceProc = 0;

    v2->_running = 0;
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100014004(v16);
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v7 = 0;
  }

  instanceConnection = v2->_instanceConnection;
  if (instanceConnection)
  {
    [(NSXPCConnection *)instanceConnection invalidate];
    v18 = v2->_instanceConnection;
    v2->_instanceConnection = 0;
  }

  objc_sync_exit(v2);
}

+ (id)dynamicCast:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)addResourceID:(id)a3
{
  v5 = a3;
  v4 = self->_resourceIDs;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_resourceIDs containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_resourceIDs addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)removeResourceID:(id)a3
{
  v5 = a3;
  v4 = self->_resourceIDs;
  objc_sync_enter(v4);
  if ([(NSMutableArray *)self->_resourceIDs containsObject:v5])
  {
    [(NSMutableArray *)self->_resourceIDs removeObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)addVolumeID:(id)a3
{
  v5 = a3;
  v4 = self->_volumeIDs;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_volumeIDs containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_volumeIDs addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)removeVolumeID:(id)a3
{
  v5 = a3;
  v4 = self->_volumeIDs;
  objc_sync_enter(v4);
  if ([(NSMutableArray *)self->_volumeIDs containsObject:v5])
  {
    [(NSMutableArray *)self->_volumeIDs removeObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)addTaskID:(id)a3
{
  v5 = a3;
  v4 = self->_taskIDs;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_taskIDs containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_taskIDs addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)removeTaskID:(id)a3
{
  v5 = a3;
  v4 = self->_taskIDs;
  objc_sync_enter(v4);
  if ([(NSMutableArray *)self->_taskIDs containsObject:v5])
  {
    [(NSMutableArray *)self->_taskIDs removeObject:v5];
  }

  objc_sync_exit(v4);
}

@end