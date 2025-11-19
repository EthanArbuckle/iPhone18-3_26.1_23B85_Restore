@interface mountEntry
+ (id)newWithName:(id)a3 fileSystem:(id)a4 displayName:(id)a5 storageName:(id)a6 provider:(id)a7 path:(id)a8 mountID:(unsigned int)a9 auditToken:(id)a10 mntTable:(id)a11;
+ (id)newWithObject:(id)a3 path:(id)a4 mntTable:(id)a5;
- (BOOL)ensureConnected:(int)a3 status:(id *)a4;
- (BOOL)unmountPreflight:(int)a3;
- (NSString)stateAsString;
- (id)connect;
- (id)doConnect;
- (id)fsObjWithErrorHandler:(id)a3;
- (id)fsSynchObjWithErrorHandler:(id)a3;
- (id)mount:(int)a3 options:(id)a4;
- (id)unmount:(int)a3;
- (id)unmountPostflight:(int)a3;
- (int)isMountAtPath:(id)a3 err:(id *)a4;
- (mountEntry)initWithName:(id)a3 fileSystem:(id)a4 displayName:(id)a5 storageName:(id)a6 provider:(id)a7 path:(id)a8 mountID:(unsigned int)a9 auditToken:(id)a10 mntTable:(id)a11;
- (mountEntry)initWithObject:(id)a3 path:(id)a4 mntTable:(id)a5;
- (mountTable)mntTable;
- (unint64_t)currentState;
- (void)copyDisconnectedRootAttrs:(_LIFileAttributes *)a3;
- (void)createMountTaskForBSDName:(id)a3;
- (void)dealloc;
- (void)doWakeAndUnlock;
- (void)forgetModuleVolumeWithFlags:(unsigned int)a3 reply:(id)a4;
- (void)getLiveFilesConnectionForPath:(id)a3 withCompletionHandler:(id)a4;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)refreshPath:(id)a3 displayName:(id)a4 storageName:(id)a5;
- (void)removeMountTask;
- (void)renameToName:(id)a3 reply:(id)a4;
- (void)resetConnectError;
- (void)setCurrentState:(unint64_t)a3;
@end

@implementation mountEntry

- (mountEntry)initWithName:(id)a3 fileSystem:(id)a4 displayName:(id)a5 storageName:(id)a6 provider:(id)a7 path:(id)a8 mountID:(unsigned int)a9 auditToken:(id)a10 mntTable:(id)a11
{
  v43 = a3;
  v44 = a4;
  v42 = a5;
  v41 = a6;
  v40 = a7;
  v39 = a8;
  v38 = a10;
  v18 = a11;
  if (v18)
  {
    v45.receiver = self;
    v45.super_class = mountEntry;
    v19 = [(mountEntry *)&v45 init];
    v20 = v19;
    if (v19)
    {
      v19->_is_connected = 0;
      v19->_connecting = 0;
      v19->_is_inet = loopback;
      *&v19->_is_killing_io = 0;
      objc_storeWeak(&v19->_mntTable, v18);
      if (a9 == -1)
      {
        WeakRetained = objc_loadWeakRetained((v20 + 112));
        *(v20 + 48) = [WeakRetained nextIndex];
      }

      else
      {
        *(v20 + 48) = a9;
      }

      objc_storeStrong((v20 + 64), a3);
      objc_storeStrong((v20 + 72), a5);
      objc_storeStrong((v20 + 80), a4);
      objc_storeStrong((v20 + 88), a6);
      objc_storeStrong((v20 + 96), a7);
      v24 = objc_opt_new();
      v25 = *(v20 + 160);
      *(v20 + 160) = v24;

      objc_storeStrong((v20 + 104), a8);
      objc_storeStrong((v20 + 136), a10);
      v26 = objc_loadWeakRetained((v20 + 112));
      [v26 add:v20];

      *(v20 + 24) = 0;
      *(v20 + 52) = 2;
      v27 = *(v20 + 176);
      *(v20 + 176) = 0;

      v28 = *(v20 + 184);
      *(v20 + 184) = 0;

      if (!v44 || ([v44 isEqualToString:@"exfat"] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", @"ntfs") & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", @"apfs") & 1) != 0 || objc_msgSend(v44, "isEqualToString:", @"hfs"))
      {
        *(v20 + 45) = 0;
      }

      else if ([v44 containsString:@"msdos"])
      {
        *(v20 + 45) = _os_feature_enabled_impl();
      }

      else
      {
        *(v20 + 45) = 1;
      }

      v29 = *(v20 + 192);
      *(v20 + 192) = 0;

      v30 = *(v20 + 200);
      *(v20 + 200) = 0;

      v31 = fskit_std_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10004138C(v20);
      }

      v32 = *(v20 + 64);
      if (v32)
      {
        v33 = [NSString stringWithFormat:@"mountEntryTransaction:%@:%@:%@", v32, *(v20 + 72), *(v20 + 80), v38, v39, v40, v41, v42, v43];
        v34 = fskit_std_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100041410();
        }

        [v33 UTF8String];
        v35 = os_transaction_create();
        v36 = *(v20 + 32);
        *(v20 + 32) = v35;
      }
    }

    self = v20;
    v22 = self;
  }

  else
  {
    v21 = fskit_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100041494();
    }

    v22 = 0;
  }

  return v22;
}

- (void)dealloc
{
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000414D0();
  }

  mountTransaction = self->_mountTransaction;
  self->_mountTransaction = 0;

  v5.receiver = self;
  v5.super_class = mountEntry;
  [(mountEntry *)&v5 dealloc];
}

- (mountEntry)initWithObject:(id)a3 path:(id)a4 mntTable:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100041494();
    }

    goto LABEL_10;
  }

  if (!v9)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000415C8();
    }

LABEL_10:

    goto LABEL_11;
  }

  v12 = +[FSAuditToken token];
  LODWORD(v19) = -1;
  self = [(mountEntry *)self initWithName:0 fileSystem:0 displayName:0 storageName:0 provider:0 path:v10 mountID:v19 auditToken:v12 mntTable:v11];

  if (!self)
  {
    goto LABEL_15;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10003A7E8;
  v28 = sub_10003A7F8;
  v29 = 0;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = sub_10003A7E8;
  v22[3] = sub_10003A7F8;
  v23 = 0;
  self->_is_connected = 1;
  self->_midx = 0;
  objc_storeStrong(&self->_fsObj, a3);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003B1DC;
  v20[3] = &unk_100061EE0;
  v20[4] = &v21;
  v20[5] = &v24;
  [v9 getRootFileHandleWithError:v20];
  v13 = v25[5];
  if (v13)
  {
    v14 = v13;
    rootLIFileHandle = self->_rootLIFileHandle;
    self->_rootLIFileHandle = v14;
  }

  else
  {
    rootLIFileHandle = livefs_std_log();
    if (os_log_type_enabled(rootLIFileHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100041550(v22);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v24, 8);

  if (v13)
  {
LABEL_15:
    self = self;
    v17 = self;
    goto LABEL_16;
  }

LABEL_11:
  v17 = 0;
LABEL_16:

  return v17;
}

+ (id)newWithName:(id)a3 fileSystem:(id)a4 displayName:(id)a5 storageName:(id)a6 provider:(id)a7 path:(id)a8 mountID:(unsigned int)a9 auditToken:(id)a10 mntTable:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LODWORD(v28) = a9;
  v26 = [[a1 alloc] initWithName:v25 fileSystem:v24 displayName:v23 storageName:v22 provider:v21 path:v20 mountID:v28 auditToken:v19 mntTable:v18];

  return v26;
}

+ (id)newWithObject:(id)a3 path:(id)a4 mntTable:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithObject:v10 path:v9 mntTable:v8];

  return v11;
}

- (void)refreshPath:(id)a3 displayName:(id)a4 storageName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  mntOn = self->_mntOn;
  self->_mntOn = v8;
  v15 = v8;

  displayName = self->_displayName;
  self->_displayName = v9;
  v13 = v9;

  storageName = self->_storageName;
  self->_storageName = v10;
}

- (id)fsObjWithErrorHandler:(id)a3
{
  v4 = a3;
  if (self->_midx)
  {
    if (!self->_isFSKitModule)
    {
      v7 = self;
      objc_sync_enter(v7);
      v8 = [(NSXPCConnection *)v7->_theConn remoteObjectProxyWithErrorHandler:v4];
      objc_sync_exit(v7);

      if (v8)
      {
        v6 = [LiveFSVolumeCore_FSFileNameBridge newWithProxy:v8];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_10;
    }

    v5 = [FSVolumeConnectorBridge newWithConnection:self->_theConn errorHandler:v4];
  }

  else
  {
    v5 = self->_fsObj;
  }

  v6 = v5;
LABEL_10:

  return v6;
}

- (id)fsSynchObjWithErrorHandler:(id)a3
{
  v4 = a3;
  if (self->_midx)
  {
    if (!self->_isFSKitModule)
    {
      v7 = self;
      objc_sync_enter(v7);
      v8 = [(NSXPCConnection *)v7->_theConn synchronousRemoteObjectProxyWithErrorHandler:v4];
      objc_sync_exit(v7);

      if (v8)
      {
        v6 = [LiveFSVolumeCore_FSFileNameBridge newWithProxy:v8];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_10;
    }

    v5 = [FSVolumeConnectorBridge newWithSyncConnection:self->_theConn errorHandler:v4];
  }

  else
  {
    v5 = self->_fsObj;
  }

  v6 = v5;
LABEL_10:

  return v6;
}

- (void)doWakeAndUnlock
{
  waiters = self->_waiters;
  self->_waiters = 0;
  [(NSCondition *)self->_theLock unlock];
  if (waiters)
  {
    theLock = self->_theLock;

    [(NSCondition *)theLock broadcast];
  }
}

- (unint64_t)currentState
{
  [(NSCondition *)self->_theLock lock];
  currentState = self->_currentState;
  [(NSCondition *)self->_theLock unlock];
  return currentState;
}

- (NSString)stateAsString
{
  v2 = [(mountEntry *)self currentState];
  if (v2 > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100062350 + v2);
  }
}

- (void)setCurrentState:(unint64_t)a3
{
  [(NSCondition *)self->_theLock lock];
  self->_currentState = a3;
  if (a3 == 2)
  {
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100041604();
    }

    mountTransaction = self->_mountTransaction;
    self->_mountTransaction = 0;
  }

  [(mountEntry *)self doWakeAndUnlock];
}

- (void)getLiveFilesConnectionForPath:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isFSKitModule)
  {
    if ([(NSString *)self->_fileSystem localizedCaseInsensitiveContainsString:@"MSDOS"])
    {
      v8 = @"com.apple.fskit.msdos";
LABEL_15:
      v16 = [[NSUUID alloc] initWithUUIDString:self->_volumeName];
      v17 = [v16 fs_volumeIdentifier];
      p_volumeID = &self->_volumeID;
      volumeID = self->_volumeID;
      self->_volumeID = v17;

      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_10003A7E8;
      v55 = sub_10003A7F8;
      v56 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = sub_10003A7E8;
      v49 = sub_10003A7F8;
      v50 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v62 = sub_10003A7E8;
      v63 = sub_10003A7F8;
      v64 = 0;
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 136315650;
        v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
        v59 = 2112;
        *v60 = v8;
        *&v60[8] = 2112;
        *&v60[10] = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Trying to find a FSVolumeConnector using bundleID (%@) and volumeID (%@)", v57, 0x20u);
      }

      auditToken = self->_auditToken;
      v22 = self->_volumeID;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10003C21C;
      v43[3] = &unk_100061478;
      v43[4] = &v51;
      v43[5] = &v45;
      [gExtensionManager existingExtensionForBundle:v8 user:auditToken volume:v22 replyHandler:v43];
      if (v52[5])
      {
        v23 = fskit_std_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 136315906;
          v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
          v59 = 1024;
          *v60 = 590;
          *&v60[4] = 2112;
          *&v60[6] = v8;
          *&v60[14] = 2112;
          *&v60[16] = v16;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d: No extension instance found for bundleID (%@) volumeID (%@)", v57, 0x26u);
        }

        v7[2](v7, 0, v52[5]);
      }

      else
      {
        objc_storeStrong(&self->_instance, v46[5]);
        v24 = fskit_std_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 136315906;
          v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
          v59 = 1024;
          *v60 = 595;
          *&v60[4] = 2112;
          *&v60[6] = v8;
          *&v60[14] = 2112;
          *&v60[16] = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d: Found extension instance for bundleID (%@) volumeID (%@)", v57, 0x26u);
        }

        instance = self->_instance;
        v26 = v52;
        obj = v52[5];
        v27 = [(fskitdExtensionInstance *)instance newXPCConnectionWithError:&obj];
        objc_storeStrong(v26 + 5, obj);
        if (v52[5])
        {
          v28 = fskit_std_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v52[5];
            *v57 = 136315394;
            v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
            v59 = 2112;
            *v60 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Connecting to extension instance reported error %@", v57, 0x16u);
          }

          v7[2](v7, 0, v52[5]);
        }

        else
        {
          v30 = fskit_std_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v57 = 136315394;
            v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
            v59 = 1024;
            *v60 = 601;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s:%d: creating FSModuleXPC sync proxy", v57, 0x12u);
          }

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10003C29C;
          v41[3] = &unk_1000614C8;
          v41[4] = &v51;
          v31 = [v27 synchronousRemoteObjectProxyWithErrorHandler:v41];
          v32 = fskit_std_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_10004170C(p_volumeID);
          }

          v33 = *p_volumeID;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10003C2AC;
          v40[3] = &unk_1000611C8;
          v40[4] = buf;
          v40[5] = &v51;
          [v31 getVolumeEndpoint:v33 replyHandler:v40];
          if (v52[5])
          {
            v34 = fskit_std_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 136315394;
              v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
              v59 = 1024;
              *v60 = 616;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d: No FSVolumeConnector endpoint found", v57, 0x12u);
            }

            v7[2](v7, 0, v52[5]);
          }

          else
          {
            v35 = fskit_std_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 136315394;
              v58 = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
              v59 = 1024;
              *v60 = 619;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s:%d: FSVolumeConnector endpoint found", v57, 0x12u);
            }

            v36 = [NSXPCConnection alloc];
            v37 = [v36 initWithListenerEndpoint:*(*&buf[8] + 40)];
            (v7)[2](v7, v37, v52[5]);
          }
        }
      }

      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);

      goto LABEL_41;
    }

    if ([(NSString *)self->_fileSystem localizedCaseInsensitiveContainsString:@"passthroughfs"])
    {
      v8 = @"com.apple.fskit.passthroughfs";
      goto LABEL_15;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_10003A7E8;
    v55 = sub_10003A7F8;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_10003A7E8;
    v49 = sub_10003A7F8;
    v50 = 0;
    fileSystem = self->_fileSystem;
    v13 = self->_auditToken;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10003C194;
    v44[3] = &unk_100061F08;
    v44[4] = &v51;
    v44[5] = &v45;
    [gAgentManager currentExtensionForShortName:fileSystem auditToken:v13 replyHandler:v44];
    v14 = v46[5];
    if (v14)
    {
      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[mountEntry getLiveFilesConnectionForPath:withCompletionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: No extension instance found for bundleID (%@)", buf, 0x16u);
      }

      v7[2](v7, 0, v46[5]);
      v8 = 0;
    }

    else
    {
      v8 = [v52[5] bundleIdentifier];
    }

    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&v51, 8);
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100041684();
    }

    providerName = self->_providerName;
    volumeName = self->_volumeName;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10003C334;
    v38[3] = &unk_100061F30;
    v39 = v7;
    [LIFSClientConnector getLiveFilesConnectionForProvider:providerName volume:volumeName withHandler:v38];
    v8 = v39;
  }

LABEL_41:
}

- (void)createMountTaskForBSDName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [FSBlockDeviceResource proxyResourceForBSDName:v4];
    resource = self->_resource;
    self->_resource = v5;

    [(FSResource *)self->_resource setState:6];
    v7 = objc_opt_new();
    mountTaskUUID = self->_mountTaskUUID;
    self->_mountTaskUUID = v7;

    v9 = [FSTaskDescription taskDescriptionWithID:self->_mountTaskUUID state:1 purpose:FSTaskPurposeActivate error:0 bundleID:@"Unknown" extensionID:0 resource:self->_resource];
    v10 = [gSettings tasks];
    objc_sync_enter(v10);
    v11 = [gSettings tasks];
    [v11 setObject:v9 forKey:self->_mountTaskUUID];

    objc_sync_exit(v10);
    [gSettings updateWorkTransaction];
    v12 = [gSettings resourceManager];
    objc_sync_enter(v12);
    v13 = [gSettings resourceManager];
    [v13 addResource:self->_resource];

    v14 = [gSettings resourceManager];
    [v14 addTaskUUID:self->_mountTaskUUID resource:self->_resource];

    objc_sync_exit(v12);
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000417A8();
    }
  }
}

- (id)doConnect
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_10003A7E8;
  v73 = sub_10003A7F8;
  v74 = 0;
  v3 = dispatch_semaphore_create(0);
  isFSKitModule = self->_isFSKitModule;
  [(NSCondition *)self->_theLock lock];
  self->_is_connected = 0;
  if (verbose)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      mntOn = self->_mntOn;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = mntOn;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "doConnect: starting at %@", &buf, 0xCu);
    }
  }

  theConn = self->_theConn;
  self->_theConn = 0;

  rootLIFileHandle = self->_rootLIFileHandle;
  self->_rootLIFileHandle = 0;

  if (!self->_domainError)
  {
    [(NSCondition *)self->_theLock unlock];
    v13 = self->_mntOn;
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tweaked path is %{public}@", &buf, 0xCu);
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10003CE28;
    v64[3] = &unk_100061F58;
    v67 = &v69;
    v16 = v3;
    v68 = isFSKitModule;
    v65 = v16;
    v66 = self;
    [(mountEntry *)self getLiveFilesConnectionForPath:v13 withCompletionHandler:v64];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    if (!self->_theConn)
    {
      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000417E4();
      }

      v27 = fs_errorForPOSIXError();
      v17 = v70[5];
      v70[5] = v27;
      goto LABEL_38;
    }

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10003D160;
    v63[3] = &unk_1000614C8;
    v63[4] = &v69;
    v17 = [(mountEntry *)self fsSynchObjWithErrorHandler:v63];
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "About to get root fh", &buf, 2u);
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10003D170;
    v62[3] = &unk_100061F80;
    v62[4] = self;
    v62[5] = &v69;
    [v17 getRootFileHandleWithError:v62];
    if (!self->_is_connected)
    {
LABEL_38:

      [(NSCondition *)self->_theLock lock];
      v14 = v65;
      goto LABEL_39;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = sub_10003A7E8;
    v84 = sub_10003A7F8;
    v85 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_10003A7E8;
    v60 = sub_10003A7F8;
    v61 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_10003A7E8;
    v54 = sub_10003A7F8;
    v55 = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10003D30C;
    v49[3] = &unk_1000614C8;
    v49[4] = &v50;
    v19 = [(mountEntry *)self fsSynchObjWithErrorHandler:v49];
    v20 = self->_rootLIFileHandle;
    v21 = [FSFileName nameWithCString:"_S_f_location"];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10003D31C;
    v48[3] = &unk_100061FA8;
    v48[4] = &buf;
    v48[5] = &v50;
    [v19 otherAttributeOf:v20 named:v21 requestID:0 reply:v48];

    if (!v51[5])
    {
      v22 = self->_rootLIFileHandle;
      v23 = [FSFileName nameWithCString:"_S_f_type"];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10003D41C;
      v47[3] = &unk_100061FA8;
      v47[4] = &v56;
      v47[5] = &v50;
      [v19 otherAttributeOf:v22 named:v23 requestID:0 reply:v47];
    }

    v24 = v57[5];
    if (v24)
    {
      v25 = [v24 caseInsensitiveCompare:@"smb"] == 0;
    }

    else
    {
      v25 = 0;
    }

    v28 = v51[5];
    if (v28 && ([v28 domain], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqual:", NSPOSIXErrorDomain), v29, v51[5]))
    {
      if (((self->_mountTaskUUID != 0 || v25) & v30 & 1) == 0)
      {
        v31 = fskit_std_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v44 = v51[5];
          v45 = v57[5];
          mountTaskUUID = self->_mountTaskUUID;
          *v75 = 138412802;
          v76 = v44;
          v77 = 2112;
          v78 = v45;
          v79 = 2112;
          v80 = mountTaskUUID;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "error creating mountTask:err:%@:type:%@:mountTask:%@", v75, 0x20u);
        }

        v32 = v70;
        v33 = v51[5];
        v34 = v32[5];
        v32[5] = v33;
LABEL_33:

LABEL_37:
        _Block_object_dispose(&v50, 8);

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_38;
      }
    }

    else if (self->_mountTaskUUID == 0 && !v25)
    {
      v39 = fskit_std_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(*(&buf + 1) + 40);
        v41 = v57[5];
        *v75 = 138412546;
        v76 = v40;
        v77 = 2112;
        v78 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "creating mount task to %@ with type %@", v75, 0x16u);
      }

      [(mountEntry *)self createMountTaskForBSDName:*(*(&buf + 1) + 40)];
      goto LABEL_37;
    }

    v35 = fskit_std_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = self->_mountTaskUUID;
      v37 = v51[5];
      v38 = v57[5];
      *v75 = 138412802;
      v76 = v36;
      v77 = 2112;
      v78 = v37;
      v79 = 2112;
      v80 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "not creating mount task:mountTaskUUID:%@:err:%@:type:%@", v75, 0x20u);
    }

    v34 = v70[5];
    v70[5] = 0;
    goto LABEL_33;
  }

  v9 = livefs_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    domainError = self->_domainError;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = domainError;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "doConnect exiting as domain has error %@", &buf, 0xCu);
  }

  v11 = v70;
  v12 = self->_domainError;
  v13 = 0;
  v14 = v11[5];
  v11[5] = v12;
LABEL_39:

  self->_connecting = 0;
  objc_storeStrong(&self->_lastConnectError, v70[5]);
  [(mountEntry *)self doWakeAndUnlock];
  v42 = v70[5];

  _Block_object_dispose(&v69, 8);

  return v42;
}

- (id)connect
{
  if (!self->_midx)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[mountEntry connect]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s returning without connection, idx 0", buf, 0xCu);
    }

    goto LABEL_17;
  }

  [(NSCondition *)self->_theLock lock];
  if (verbose)
  {
    v3 = livefs_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_is_connected)
      {
        v4 = "";
      }

      else
      {
        v4 = "not ";
      }

      midx = self->_midx;
      v6 = !self->_connecting;
      *buf = 136315906;
      v31 = "[mountEntry connect]";
      v32 = 2080;
      v33 = v4;
      if (v6)
      {
        v7 = "no";
      }

      else
      {
        v7 = "yes";
      }

      v34 = 1024;
      v35 = midx;
      v36 = 2080;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s entered is %sConnected id %d connecting %s", buf, 0x26u);
    }
  }

  if (self->_is_connected)
  {
    [(NSCondition *)self->_theLock unlock];
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    currentState = self->_currentState;
    if (currentState)
    {
      break;
    }

    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100041AE4(buf, &buf[1], v12);
    }

    [(mountEntry *)self doWait];
  }

  if (currentState == 2)
  {
    lastConnectError = self->_lastConnectError;
    if (lastConnectError)
    {
      v14 = lastConnectError;
    }

    else
    {
      v14 = fs_errorForPOSIXError();
    }

    v9 = v14;
    [(NSCondition *)self->_theLock unlock];
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100041AA8();
    }
  }

  else
  {
    if (!self->_connecting)
    {
      self->_connecting = 1;
      v15 = dispatch_get_global_queue(2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003D990;
      block[3] = &unk_100060978;
      block[4] = self;
      dispatch_async(v15, block);
    }

    is_connected = self->_is_connected;
    if (is_connected)
    {
      goto LABEL_56;
    }

    is_connected = 0;
    v17 = 0;
LABEL_32:
    if (self->_lastConnectError)
    {
LABEL_56:
      v18 = self->_currentState;
    }

    else
    {
      while (1)
      {
        v18 = self->_currentState;
        if (v18 != 1)
        {
          break;
        }

        if (((verbose == 0) & (v17 ^ 1)) == 0)
        {
          v19 = livefs_std_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "About to sleep for connecting", v28, 2u);
          }
        }

        [(mountEntry *)self doWait];
        if (((verbose == 0) & (v17 ^ 1)) == 0)
        {
          v20 = livefs_std_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Waking from sleep for connecting", v28, 2u);
          }
        }

        if (self->_is_connected)
        {
LABEL_55:
          is_connected = self->_is_connected;
          goto LABEL_56;
        }

        if (!self->_lastConnectError && !((self->_currentState != 1) | v17 & 1))
        {
          v21 = livefs_std_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            sub_100041B24(&v26, v27, v21);
          }

          is_connected = self->_is_connected;
          v17 = 1;
          if (!is_connected)
          {
            goto LABEL_32;
          }

          goto LABEL_56;
        }

        is_connected = 0;
        if (self->_lastConnectError)
        {
          goto LABEL_55;
        }
      }
    }

    if (v18 == 2 && !self->_lastConnectError)
    {
      v23 = fs_errorForPOSIXError();
      v24 = self->_lastConnectError;
      self->_lastConnectError = v23;

      is_connected = self->_is_connected;
    }

    v25 = self->_lastConnectError;
    [(NSCondition *)self->_theLock unlock];
    if (is_connected)
    {
      v9 = 0;
    }

    else
    {
      v9 = v25;
    }
  }

LABEL_18:

  return v9;
}

- (void)handleConnectionInvalidated
{
  self->_is_connected = 0;
  v4 = [(NSXPCConnection *)self->_theConn exportedObject];
  if (v4)
  {
    [v4 connectionWasInterupted];
  }

  theConn = self->_theConn;
  self->_theConn = 0;
}

- (void)handleConnectionInterrupted
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DAC4;
  block[3] = &unk_100060978;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)ensureConnected:(int)a3 status:(id *)a4
{
  [(NSCondition *)self->_theLock lock];
  *a4 = 0;
  if (self->_is_connected)
  {
    [(NSCondition *)self->_theLock unlock];
    LOBYTE(v7) = 1;
  }

  else
  {
    [(NSCondition *)self->_theLock unlock];
    if (a3)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = [(mountEntry *)self connect];
      v7 = v8 == 0;
      if (v8)
      {
        v9 = livefs_std_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100041BE4(v8, self);
        }

        v10 = v8;
        *a4 = v8;
      }
    }
  }

  return v7;
}

- (void)copyDisconnectedRootAttrs:(_LIFileAttributes *)a3
{
  *&a3->var0 = 0u;
  *&a3->var2 = 0u;
  *&a3->var19 = 0;
  a3->var17 = 0u;
  a3->var18 = 0u;
  a3->var15 = 0u;
  a3->var16 = 0u;
  a3->var13 = 0u;
  a3->var14 = 0u;
  *&a3->var9 = 0u;
  *&a3->var11 = 0u;
  *&a3->var5 = 0u;
  a3->var1 = 7647;
  *&a3->var3 = 0x16D00000002;
  a3->var11 = self->_fileno;
  a3->var13.tv_sec = 1546329600;
  a3->var15.tv_sec = 1546329600;
  a3->var14.tv_sec = 1546329600;
  a3->var5 = 2;
  a3->var6 = getuid();
  a3->var7 = getgid();
  *&a3->var9 = vdupq_n_s64(1uLL);
}

- (id)mount:(int)a3 options:(id)a4
{
  v6 = a4;
  memset(v78, 0, sizeof(v78));
  v7 = objc_alloc_init(fskitdMounter);
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[mountEntry mount:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: will mount over LIFSv2", buf, 0xCu);
  }

  v9 = [(mountEntry *)self mntOn];
  v10 = [v9 stringByStandardizingPath];
  p_realMountPath = &self->realMountPath;
  realMountPath = self->realMountPath;
  self->realMountPath = v10;

  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->realMountPath;
      v15 = [(mountEntry *)self mntOn];
      *buf = 138412546;
      *&buf[4] = v14;
      v76 = 2112;
      v77 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "realMountPath = %@, mntOn = %@", buf, 0x16u);
    }
  }

  v16 = [(mountEntry *)self mntOn];
  if (![v16 hasPrefix:@"/private/"])
  {
    goto LABEL_10;
  }

  v17 = [(NSString *)*p_realMountPath hasPrefix:@"/private"];

  if ((v17 & 1) == 0)
  {
    v18 = [[NSString alloc] initWithFormat:@"%@%@", @"/private", *p_realMountPath];
    v16 = *p_realMountPath;
    *p_realMountPath = v18;
LABEL_10:
  }

  if (self->_midx)
  {
    v19 = 0;
    self->_mnt_flags = a3;
    goto LABEL_100;
  }

  if (verbose >= 2)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "mountTable->mount: Enter", buf, 2u);
    }
  }

  v21 = [theRoot mkMountPath:*p_realMountPath mountID:0];
  if (v21)
  {
    v19 = v21;
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100041C5C(p_realMountPath);
    }

    goto LABEL_100;
  }

  if (verbose >= 2)
  {
    v23 = livefs_std_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      rootLIFileHandle = self->_rootLIFileHandle;
      *buf = 138412290;
      *&buf[4] = rootLIFileHandle;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Got fh = %@", buf, 0xCu);
    }
  }

  if (!self->_rootLIFileHandle)
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    goto LABEL_100;
  }

  createLIFSfh([(mountEntry *)self midx], self->_rootLIFileHandle, v78);
  v25 = [[NSData alloc] initWithBytes:v78 length:64];
  [(fskitdMounter *)v7 setFh:v25];

  v7->args.rsize = 0x80000;
  v7->args.wsize = 0x10000;
  v7->args.readahead = 4;
  v7->args.dsize = 0x10000;
  if ((a3 & 8) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 10;
  }

  v7->args.actimeo = v26;
  if (!v6)
  {
    v6 = &stru_100062B08;
  }

  v27 = strdup([(__CFString *)v6 UTF8String]);
  bzero(&buf[8], 0x318uLL);
  *buf = "-v";
  v28 = livefs_std_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_100041CDC();
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_100041D64();
  }

  v30 = 271581188;

  if (![(__CFString *)v6 length])
  {
    v31 = 0;
    LODWORD(v32) = 1;
LABEL_58:
    v43 = livefs_std_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_100041FA8();
    }

    v44 = livefs_std_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_100042028();
    }

    if (v31)
    {
      if (v32 >= 98)
      {
        v45 = livefs_std_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000420A4();
        }

        v19 = fs_errorForPOSIXError();
        goto LABEL_98;
      }

      v69 = v30;
      v70 = v27;
      v48 = &buf[8 * v32];
      LODWORD(v32) = v32 + 2;
      *v48 = "-o";
      v48[1] = v31;
    }

    else
    {
      v69 = v30;
      v70 = v27;
    }

    v49 = [[NSMutableArray alloc] initWithCapacity:v32];
    if (v32 >= 1)
    {
      v32 = v32;
      v50 = buf;
      do
      {
        v51 = [NSString alloc];
        v52 = *v50++;
        v53 = [v51 initWithUTF8String:v52];
        [v49 addObject:v53];

        --v32;
      }

      while (v32);
    }

    [(fskitdMounter *)v7 setOptions:v49];

    __strlcpy_chk();
    v54 = [(mountEntry *)self mntOn];
    [v54 UTF8String];
    __strlcpy_chk();

    [(fskitdMounter *)v7 setMntFlags:v69];
    v55 = [(fskitdMounter *)v7 mount];
    if (v55)
    {
      v56 = v55;
      v57 = livefs_std_log();
      v27 = v70;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1000420E0(v56);
      }

      v19 = fs_errorForPOSIXError();
      [(mountEntry *)self removeMountTask];
    }

    else
    {
      v71 = 0;
      v58 = [(mountEntry *)self mntOn];
      v59 = sub_10003E80C([v58 UTF8String], &v71 + 4, &v71);

      v27 = v70;
      if (!v59)
      {
        v60 = livefs_std_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [(mountEntry *)self mntOn];
          v62 = [v61 UTF8String];
          *__stringp = 136315394;
          *&__stringp[4] = v62;
          v73 = 1024;
          v74 = HIDWORD(v71);
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: FMT CAPS: 0x%08x", __stringp, 0x12u);
        }

        v63 = livefs_std_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [(mountEntry *)self mntOn];
          v65 = [v64 UTF8String];
          *__stringp = 136315394;
          *&__stringp[4] = v65;
          v73 = 1024;
          v74 = v71;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: INT CAPS: 0x%08x", __stringp, 0x12u);
        }
      }

      v19 = 0;
      self->_mnt_flags = a3;
    }

    goto LABEL_97;
  }

  v71 = 0x1030000410300004;
  v31 = 0;
  if (!v27)
  {
    goto LABEL_94;
  }

  *__stringp = v27;
  LODWORD(v32) = 1;
  while (1)
  {
    v33 = strsep(__stringp, ",");
    if (!v33)
    {
      break;
    }

    v34 = v33;
    if (*v33)
    {
      if (*v33 == 45)
      {
        v35 = strdup(v33);
        v36 = v32 + 1;
        *&buf[8 * v32] = v35;
        v37 = strchr(v35, 61);
        if (v37)
        {
          *v37 = 0;
          LODWORD(v32) = v32 + 2;
          *&buf[8 * v36] = strdup(v37 + 1);
        }

        else
        {
          LODWORD(v32) = v32 + 1;
        }

        goto LABEL_52;
      }

      if (v31)
      {
        if (*v31)
        {
          v38 = strlen(v31);
          v39 = v38 + strlen(v34);
          v40 = malloc_type_malloc(v39 + 2, 0x62D19FB0uLL);
          if (!v40)
          {
            v31 = 0;
            goto LABEL_52;
          }

          v41 = v40;
          snprintf(v40, v39 + 2, "%s,%s", v31, v34);
        }

        else
        {
          v41 = strdup(v33);
        }

        free(v31);
        v31 = v41;
      }

      else
      {
        v31 = strdup(v33);
      }
    }

LABEL_52:
    if (v32 >= 100)
    {
      v42 = fskit_std_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100041DE0();
      }

      v31 = 0;
      goto LABEL_94;
    }
  }

  v46 = livefs_std_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    sub_100041E1C();
  }

  if (v31)
  {
    getmnt_silent = 1;
    if (getmntopts())
    {
      v30 = HIDWORD(v71);
      if ((v71 & 0xD000000000000) == 0)
      {
        freemntopts();
        goto LABEL_58;
      }

      v47 = livefs_std_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100041EB0();
      }

      freemntopts();
    }

    else
    {
      v66 = livefs_std_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_100041F2C();
      }
    }
  }

LABEL_94:
  v67 = fskit_std_log();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *__stringp = 0x1604000100;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Failed to parse options %{darwin.errno}d", __stringp, 8u);
  }

  v19 = fs_errorForPOSIXError();
LABEL_97:
  if (v31)
  {
LABEL_98:
    free(v31);
  }

  free(v27);
LABEL_100:

  return v19;
}

- (void)renameToName:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = gSettings;
  volumeName = self->_volumeName;
  providerName = self->_providerName;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10003EA50;
  v18 = &unk_100061338;
  v12 = v7;
  v19 = v12;
  v13 = [v9 updateMountEntry:volumeName provider:providerName settingsDictionary:&v20 updateBlock:&v15];
  v14 = v20;
  if (v13)
  {
    v8[2](v8, v13);
  }

  else
  {
    objc_storeStrong(&self->_displayName, a3);
    [LivefsDomainManager updateDomain:v14 reply:v8, v15, v16, v17, v18];
  }
}

- (int)isMountAtPath:(id)a3 err:(id *)a4
{
  v5 = a3;
  v14 = 0;
  if (v5)
  {
    v6 = getmntinfo_r_np(&v14, 2);
    if (v6)
    {
      LODWORD(v7) = v6;
      v8 = [v5 UTF8String];
      v9 = 0;
      v10 = v14;
      if (v8 && v7 >= 1)
      {
        v11 = v8;
        v7 = v7;
        f_mntonname = v14->f_mntonname;
        while (strcmp(v11, f_mntonname))
        {
          f_mntonname += 2168;
          if (!--v7)
          {
            v9 = 0;
            goto LABEL_14;
          }
        }

        v9 = 1;
      }

LABEL_14:
      free(v10);
    }

    else
    {
      if (a4)
      {
        *a4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      }

      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)unmountPreflight:(int)a3
{
  if (!self->realMountPath)
  {
    return 0;
  }

  v3 = self;
  objc_sync_enter(v3);
  if (v3->_is_in_unmount_syscall || v3->_is_in_unmount_method)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
    v3->_is_in_unmount_method = 1;
  }

  objc_sync_exit(v3);

  return v4;
}

- (void)removeMountTask
{
  p_mountTaskUUID = &self->_mountTaskUUID;
  v4 = self->_mountTaskUUID;
  objc_sync_enter(v4);
  if (*p_mountTaskUUID)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100042298(p_mountTaskUUID);
    }

    [gSettings removeReferencesToTask:*p_mountTaskUUID];
    v6 = *p_mountTaskUUID;
    *p_mountTaskUUID = 0;
  }

  objc_sync_exit(v4);

  v7 = self->_resource;
  objc_sync_enter(v7);
  if (self->_resource)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(FSResource *)self->_resource getResourceID];
      sub_100042318(v9, v13, v8);
    }

    v10 = [gSettings resourceManager];
    objc_sync_enter(v10);
    v11 = [gSettings resourceManager];
    [v11 removeResource:self->_resource];

    objc_sync_exit(v10);
    resource = self->_resource;
    self->_resource = 0;
  }

  objc_sync_exit(v7);
}

- (id)unmountPostflight:(int)a3
{
  v3 = a3;
  v5 = self->realMountPath;
  if ((v3 & 2) != 0)
  {
    self->_is_connected = 0;
    theConn = self->_theConn;
    self->_theConn = 0;

    v7 = rmdir([(NSString *)v5 fileSystemRepresentation]);
    [(mountEntry *)self setCurrentState:2];
    if (v7)
    {
      v8 = livefs_std_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100042384(v5);
      }
    }
  }

  v9 = self;
  objc_sync_enter(v9);
  *&v9->_is_killing_io = 0;
  [(mountEntry *)v9 removeMountTask];
  objc_sync_exit(v9);

  return 0;
}

- (id)unmount:(int)a3
{
  v3 = a3;
  v5 = self->realMountPath;
  v6 = v5;
  if ((v3 & 2) == 0 || ([(NSString *)v5 isEqual:@"/private/var/mobile/Library/LiveFiles"]& 1) != 0 || ![(NSString *)v6 hasPrefix:@"/private/var/mobile/Library/LiveFiles"]|| !fsctl([(NSString *)v6 fileSystemRepresentation], 0x20006E04uLL, 0, 0))
  {
    v8 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = *__error();
  v8 = getNSErrorFromLiveFSErrno();
  v9 = livefs_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10004241C();
  }

  if ((v3 & 4) != 0)
  {
LABEL_10:
    v10 = self;
    objc_sync_enter(v10);
    v10->_is_killing_io = 1;
    objc_sync_exit(v10);
  }

LABEL_11:
  v35 = v8;
  v11 = [(mountEntry *)self isMountAtPath:v6 err:&v35];
  v12 = v35;

  if ((v11 & 0x80000000) != 0)
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100042518();
    }

    goto LABEL_34;
  }

  if (v11 != 1)
  {
LABEL_34:
    v28 = 0;
    goto LABEL_44;
  }

  v34 = v12;
  v13 = (v3 & 1) << 19;
  if (!unmount([(NSString *)v6 fileSystemRepresentation], v13))
  {
    goto LABEL_29;
  }

  v14 = 0;
  while (1)
  {
    v15 = *__error();
    v16 = v15 == 35 && v3 & 1;
    if (!v16 || v14 > 3)
    {
      break;
    }

    [NSThread sleepForTimeInterval:0.002];
    storageName = self->_storageName;
    v19 = livefs_std_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (storageName)
    {
      if (v20)
      {
        v21 = self->_storageName;
        *buf = 138412290;
        v37 = v21;
        v22 = v19;
        v23 = "unmount for %@ slept while looping";
        v24 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v23, buf, v24);
      }
    }

    else if (v20)
    {
      *buf = 0;
      v22 = v19;
      v23 = "unmount for <unknown> slept while looping";
      v24 = 2;
      goto LABEL_27;
    }

    v14 += v16;

    if (!unmount([(NSString *)v6 fileSystemRepresentation], (v3 & 1) << 19))
    {
      goto LABEL_29;
    }
  }

  if ((v3 & 5) != 0 || !v15)
  {
    if (v15)
    {
      v25 = livefs_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        realMountPath = self->realMountPath;
        *buf = 138412802;
        v37 = realMountPath;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v15;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "unmount for %@ with %#x returned %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_43;
    }

LABEL_29:
    v25 = livefs_std_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = self->realMountPath;
      *buf = 138412802;
      v37 = v26;
      v38 = 1024;
      v39 = v13;
      v40 = 1024;
      v41 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "unmount for %@ with %#x returned %d", buf, 0x18u);
    }

LABEL_43:

    v28 = 0;
    v12 = v34;
    goto LABEL_44;
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_100042494();
  }

  v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];

  v31 = self;
  objc_sync_enter(v31);
  v31->_is_in_unmount_method = 0;
  objc_sync_exit(v31);

  v12 = v30;
  v28 = v12;
LABEL_44:

  return v28;
}

- (void)forgetModuleVolumeWithFlags:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  if (![(mountEntry *)self isFSKitModule])
  {
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100042588(self);
    }

    goto LABEL_9;
  }

  instance = self->_instance;
  if (!instance)
  {
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100042684(self);
    }

LABEL_9:

    v11 = fs_errorForPOSIXError();
    v6[2](v6, v11);

    goto LABEL_17;
  }

  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = sub_10003A7E8;
  v24[3] = sub_10003A7F8;
  v25 = 0;
  obj = 0;
  v8 = [(fskitdExtensionInstance *)instance newXPCConnectionWithError:&obj];
  objc_storeStrong(&v25, obj);
  if (*(v24[0] + 40))
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100042608(v24);
    }

    v6[2](v6, *(v24[0] + 40));
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[mountEntry forgetModuleVolumeWithFlags:reply:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Creating FSModuleXPC sync proxy", buf, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003F6C8;
    v21[3] = &unk_100061298;
    v21[4] = self;
    v21[5] = &v23;
    v13 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v21];
    volumeID = self->_volumeID;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003F744;
    v20[3] = &unk_1000614C8;
    v20[4] = &v23;
    [v13 deactivateVolume:volumeID numericOptions:a3 replyHandler:v20];
    v15 = [gSettings resourceManager];
    objc_sync_enter(v15);
    v16 = [gSettings resourceManager];
    v17 = [(FSResource *)self->_resource getResourceID];
    v18 = [v16 getResource:v17];

    [v18 setState:0];
    v19 = [gSettings resourceManager];
    [v19 updateResource:v18];

    objc_sync_exit(v15);
    [(FSResource *)self->_resource revoke];
    [(fskitdExtensionInstance *)self->_instance terminate];
    v6[2](v6, *(v24[0] + 40));
  }

  _Block_object_dispose(&v23, 8);
LABEL_17:
}

- (void)resetConnectError
{
  lastConnectError = self->_lastConnectError;
  self->_lastConnectError = 0;
  _objc_release_x1();
}

- (mountTable)mntTable
{
  WeakRetained = objc_loadWeakRetained(&self->_mntTable);

  return WeakRetained;
}

@end