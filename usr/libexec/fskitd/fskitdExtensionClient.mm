@interface fskitdExtensionClient
+ (void)closeResource:(id)a3 andRevoke:(BOOL)a4;
+ (void)postTaskStatusUpdate:(id)a3;
- (void)closeResource:(id)a3 replyHandler:(id)a4;
- (void)configureUserClient:(id)a3 replyHandler:(id)a4;
- (void)isVolumeIDUsed:(id)a3 bundle:(id)a4 replyHandler:(id)a5;
- (void)revokeResource:(id)a3 replyHandler:(id)a4;
- (void)taskStatusUpdate:(id)a3;
- (void)wipeResource:(id)a3 replyHandler:(id)a4;
@end

@implementation fskitdExtensionClient

+ (void)postTaskStatusUpdate:(id)a3
{
  v3 = a3;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 taskID];
    v6 = [v3 taskState];
    v7 = [v3 taskPurpose];
    *buf = 138412802;
    v42 = v5;
    v43 = 1024;
    v44 = v6;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got task update id %@ state %d purpose %@", buf, 0x1Cu);
  }

  v8 = v3;
  v9 = [gSettings tasks];
  objc_sync_enter(v9);
  v10 = [gSettings tasks];
  v11 = [v8 taskID];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = [v8 taskState];
    v14 = [v8 taskErrorState];
    v15 = [v12 updatedDescriptionInState:v13 error:v14];

    v16 = [gSettings tasks];
    v17 = [v8 taskID];
    [v16 setObject:v15 forKey:v17];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v18 = [v8 taskID];
      sub_10000FE94(v18, buf, v16);
    }

    v15 = v8;
  }

  objc_sync_exit(v9);
  if (v12)
  {
    v19 = [v8 taskResource];
    if (v19)
    {
      v20 = [v8 taskResource];
      v21 = [v20 kind] == 1;

      if (v21)
      {
        v22 = [v8 taskResource];
        v23 = [FSBlockDeviceResource dynamicCast:v22];

        if (v23)
        {
          v19 = [v23 BSDName];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    if ([v8 taskState] == 3)
    {
      v24 = gSettings;
      v25 = [v15 taskID];
      [v24 removeReferencesToTask:v25];

      if (v19)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000F030;
        v38[3] = &unk_1000610A8;
        v39 = v8;
        v40 = v19;
        [fskitdDAOperations setFSKitAdditions:0 disk:v40 replyHandler:v38];

        v26 = v39;
LABEL_23:
      }
    }

    else if (v19)
    {
      v26 = +[NSMutableDictionary dictionary];
      v27 = [v8 taskID];
      v28 = [v27 description];
      [v26 setObject:v28 forKeyedSubscript:FSDADiskTaskIDKey];

      v29 = [v8 taskPurpose];
      [v26 setObject:v29 forKeyedSubscript:FSDADiskTaskPurposeKey];

      v30 = [v8 taskBundleID];
      [v26 setObject:v30 forKeyedSubscript:FSDADiskTaskBundleIDKey];

      v31 = [v8 taskExtensionInstanceID];
      v32 = [v31 description];
      [v26 setObject:v32 forKeyedSubscript:FSDADiskTaskExtensionInstanceKey];

      v33 = [v8 taskState];
      if (v33 <= 3)
      {
        [v26 setObject:**(&off_100061110 + v33) forKeyedSubscript:FSDADiskTaskStateKey];
      }

      [fskitdDAOperations setFSKitAdditions:v26 disk:v19 replyHandler:&stru_1000610C8];
      goto LABEL_23;
    }

    v34 = [gSettings taskUpdateClients];
    objc_sync_enter(v34);
    v35 = [gSettings taskUpdateClients];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000F0C8;
    v36[3] = &unk_1000610F0;
    v37 = v15;
    [v35 enumerateObjectsUsingBlock:v36];

    objc_sync_exit(v34);
  }
}

+ (void)closeResource:(id)a3 andRevoke:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FEEC(v5);
  }

  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  [v8 removeResource:v5];

  objc_sync_exit(v7);
  if (v4)
  {
    [v5 revoke];
  }

  else
  {
    v9 = [FSBlockDeviceResource dynamicCast:v5];
    v10 = v9;
    if (v9)
    {
      [v9 terminate];
    }
  }
}

- (void)taskStatusUpdate:(id)a3
{
  v4 = a3;
  v5 = [gSettings tasks];
  objc_sync_enter(v5);
  v6 = [gSettings tasks];
  v7 = [v4 taskID];
  v8 = [v6 objectForKey:v7];

  objc_sync_exit(v5);
  if (!v8)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000100FC(v4);
    }

    goto LABEL_14;
  }

  v9 = [v4 taskExtensionInstanceID];
  p_ourInstance = &self->_ourInstance;
  v11 = [(fskitdExtensionInstance *)self->_ourInstance instanceID];
  v12 = [v11 fs_containerIdentifier];
  v13 = [v9 isEqual:v12];

  if ((v13 & 1) == 0)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000FF80(v4, p_ourInstance, v17);
    }

LABEL_14:

    goto LABEL_15;
  }

  [objc_opt_class() postTaskStatusUpdate:v4];
  if ([v4 taskState] == 3)
  {
    v14 = *p_ourInstance;
    if (v14)
    {
      v15 = [v4 taskID];
      [(fskitdExtensionInstance *)v14 removeTaskID:v15];
    }

    if ([v8 terminateExtensionWhenFinished])
    {
      v16 = fskit_std_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100010068(v4);
      }

      [(fskitdExtensionClient *)self terminateExtension];
    }
  }

LABEL_15:
}

- (void)wipeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010190(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if (!v6 || [v6 kind] != 1)
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
    sub_100010208(v6);
  }

  v17 = [(fskitdExtensionInstance *)self->_ourInstance resourceIDs];
  v18 = [v6 getResourceID];
  v19 = [v17 containsObject:v18];

  if ((v19 & 1) == 0)
  {
    v37 = fskit_std_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10001029C(v6);
    }

    goto LABEL_14;
  }

  v20 = [gSettings resourceManager];
  objc_sync_enter(v20);
  v21 = [gSettings resourceManager];
  v22 = [v6 getResourceID];
  v23 = [v21 getResource:v22];

  objc_sync_exit(v20);
  if (!v23)
  {
    v37 = fskit_std_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000103A8(v6);
    }

LABEL_14:

    v23 = fs_errorForPOSIXError();
    v7[2](v7, v23);
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
  v27 = v7;
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

- (void)isVolumeIDUsed:(id)a3 bundle:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100010624(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = gExtensionManager;
  v20 = [(fskitdExtensionInstance *)self->_ourInstance initiatorAuditToken];
  [v19 isVolumeIDUsed:v10 bundle:v9 user:v20 replyHandler:v8];

  v21 = fskit_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10001069C(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

- (void)configureUserClient:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010714(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [(fskitdExtensionInstance *)self->_ourInstance attributes];
  v17 = [v16 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsBlockResources];

  v18 = [(fskitdExtensionInstance *)self->_ourInstance instanceAuditToken];
  v19 = +[LiveFSUserClient defaultClient];
  if (v17)
  {
    v20 = [v17 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = fskit_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315906;
    v34 = "[fskitdExtensionClient configureUserClient:replyHandler:]";
    v35 = 1024;
    v36 = [v18 pid];
    v37 = 1024;
    v38 = [v18 pidversion];
    v39 = 1024;
    v40 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: pid %d pidversion %d enableBlockResource %d", &v33, 0x1Eu);
  }

  v22 = [v7 machPort];
  v23 = [v19 configureUserClient:v22 pid:objc_msgSend(v18 pidversion:"pid") supportBlockResource:{objc_msgSend(v18, "pidversion"), v20}];
  v24 = fskit_std_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_10001078C(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  if (v23)
  {
    v32 = fs_errorForPOSIXError();
    v6[2](v6, v32);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)revokeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010804(v6);
  }

  [objc_opt_class() closeResource:v6 andRevoke:1];
  ourInstance = self->_ourInstance;
  v10 = [v6 getResourceID];
  [(fskitdExtensionInstance *)ourInstance removeResourceID:v10];

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100010894(v6);
  }

  v7[2](v7, 0);
}

- (void)closeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100010924(v6);
  }

  [objc_opt_class() closeResource:v6 andRevoke:0];
  ourInstance = self->_ourInstance;
  v10 = [v6 getResourceID];
  [(fskitdExtensionInstance *)ourInstance removeResourceID:v10];

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000109B4(v6);
  }

  v7[2](v7, 0);
}

@end