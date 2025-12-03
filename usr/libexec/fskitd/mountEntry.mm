@interface mountEntry
+ (id)newWithName:(id)name fileSystem:(id)system displayName:(id)displayName storageName:(id)storageName provider:(id)provider path:(id)path mountID:(unsigned int)d auditToken:(id)self0 mntTable:(id)self1;
+ (id)newWithObject:(id)object path:(id)path mntTable:(id)table;
- (BOOL)ensureConnected:(int)connected status:(id *)status;
- (BOOL)unmountPreflight:(int)preflight;
- (NSString)stateAsString;
- (id)connect;
- (id)doConnect;
- (id)fsObjWithErrorHandler:(id)handler;
- (id)fsSynchObjWithErrorHandler:(id)handler;
- (id)mount:(int)mount options:(id)options;
- (id)unmount:(int)unmount;
- (id)unmountPostflight:(int)postflight;
- (int)isMountAtPath:(id)path err:(id *)err;
- (mountEntry)initWithName:(id)name fileSystem:(id)system displayName:(id)displayName storageName:(id)storageName provider:(id)provider path:(id)path mountID:(unsigned int)d auditToken:(id)self0 mntTable:(id)self1;
- (mountEntry)initWithObject:(id)object path:(id)path mntTable:(id)table;
- (mountTable)mntTable;
- (unint64_t)currentState;
- (void)copyDisconnectedRootAttrs:(_LIFileAttributes *)attrs;
- (void)createMountTaskForBSDName:(id)name;
- (void)dealloc;
- (void)doWakeAndUnlock;
- (void)forgetModuleVolumeWithFlags:(unsigned int)flags reply:(id)reply;
- (void)getLiveFilesConnectionForPath:(id)path withCompletionHandler:(id)handler;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)refreshPath:(id)path displayName:(id)name storageName:(id)storageName;
- (void)removeMountTask;
- (void)renameToName:(id)name reply:(id)reply;
- (void)resetConnectError;
- (void)setCurrentState:(unint64_t)state;
@end

@implementation mountEntry

- (mountEntry)initWithName:(id)name fileSystem:(id)system displayName:(id)displayName storageName:(id)storageName provider:(id)provider path:(id)path mountID:(unsigned int)d auditToken:(id)self0 mntTable:(id)self1
{
  nameCopy = name;
  systemCopy = system;
  displayNameCopy = displayName;
  storageNameCopy = storageName;
  providerCopy = provider;
  pathCopy = path;
  tokenCopy = token;
  tableCopy = table;
  if (tableCopy)
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
      objc_storeWeak(&v19->_mntTable, tableCopy);
      if (d == -1)
      {
        WeakRetained = objc_loadWeakRetained((v20 + 112));
        *(v20 + 48) = [WeakRetained nextIndex];
      }

      else
      {
        *(v20 + 48) = d;
      }

      objc_storeStrong((v20 + 64), name);
      objc_storeStrong((v20 + 72), displayName);
      objc_storeStrong((v20 + 80), system);
      objc_storeStrong((v20 + 88), storageName);
      objc_storeStrong((v20 + 96), provider);
      v24 = objc_opt_new();
      v25 = *(v20 + 160);
      *(v20 + 160) = v24;

      objc_storeStrong((v20 + 104), path);
      objc_storeStrong((v20 + 136), token);
      v26 = objc_loadWeakRetained((v20 + 112));
      [v26 add:v20];

      *(v20 + 24) = 0;
      *(v20 + 52) = 2;
      v27 = *(v20 + 176);
      *(v20 + 176) = 0;

      v28 = *(v20 + 184);
      *(v20 + 184) = 0;

      if (!systemCopy || ([systemCopy isEqualToString:@"exfat"] & 1) != 0 || (objc_msgSend(systemCopy, "isEqualToString:", @"ntfs") & 1) != 0 || (objc_msgSend(systemCopy, "isEqualToString:", @"apfs") & 1) != 0 || objc_msgSend(systemCopy, "isEqualToString:", @"hfs"))
      {
        *(v20 + 45) = 0;
      }

      else if ([systemCopy containsString:@"msdos"])
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
        nameCopy = [NSString stringWithFormat:@"mountEntryTransaction:%@:%@:%@", v32, *(v20 + 72), *(v20 + 80), tokenCopy, pathCopy, providerCopy, storageNameCopy, displayNameCopy, nameCopy];
        v34 = fskit_std_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100041410();
        }

        [nameCopy UTF8String];
        v35 = os_transaction_create();
        v36 = *(v20 + 32);
        *(v20 + 32) = v35;
      }
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v21 = fskit_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100041494();
    }

    selfCopy = 0;
  }

  return selfCopy;
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

- (mountEntry)initWithObject:(id)object path:(id)path mntTable:(id)table
{
  objectCopy = object;
  pathCopy = path;
  tableCopy = table;
  if (!tableCopy)
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100041494();
    }

    goto LABEL_10;
  }

  if (!objectCopy)
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
  self = [(mountEntry *)self initWithName:0 fileSystem:0 displayName:0 storageName:0 provider:0 path:pathCopy mountID:v19 auditToken:v12 mntTable:tableCopy];

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
  objc_storeStrong(&self->_fsObj, object);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003B1DC;
  v20[3] = &unk_100061EE0;
  v20[4] = &v21;
  v20[5] = &v24;
  [objectCopy getRootFileHandleWithError:v20];
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
    selfCopy = self;
    goto LABEL_16;
  }

LABEL_11:
  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

+ (id)newWithName:(id)name fileSystem:(id)system displayName:(id)displayName storageName:(id)storageName provider:(id)provider path:(id)path mountID:(unsigned int)d auditToken:(id)self0 mntTable:(id)self1
{
  tableCopy = table;
  tokenCopy = token;
  pathCopy = path;
  providerCopy = provider;
  storageNameCopy = storageName;
  displayNameCopy = displayName;
  systemCopy = system;
  nameCopy = name;
  LODWORD(v28) = d;
  v26 = [[self alloc] initWithName:nameCopy fileSystem:systemCopy displayName:displayNameCopy storageName:storageNameCopy provider:providerCopy path:pathCopy mountID:v28 auditToken:tokenCopy mntTable:tableCopy];

  return v26;
}

+ (id)newWithObject:(id)object path:(id)path mntTable:(id)table
{
  tableCopy = table;
  pathCopy = path;
  objectCopy = object;
  v11 = [[self alloc] initWithObject:objectCopy path:pathCopy mntTable:tableCopy];

  return v11;
}

- (void)refreshPath:(id)path displayName:(id)name storageName:(id)storageName
{
  pathCopy = path;
  nameCopy = name;
  storageNameCopy = storageName;
  mntOn = self->_mntOn;
  self->_mntOn = pathCopy;
  v15 = pathCopy;

  displayName = self->_displayName;
  self->_displayName = nameCopy;
  v13 = nameCopy;

  storageName = self->_storageName;
  self->_storageName = storageNameCopy;
}

- (id)fsObjWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_midx)
  {
    if (!self->_isFSKitModule)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v8 = [(NSXPCConnection *)selfCopy->_theConn remoteObjectProxyWithErrorHandler:handlerCopy];
      objc_sync_exit(selfCopy);

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

    v5 = [FSVolumeConnectorBridge newWithConnection:self->_theConn errorHandler:handlerCopy];
  }

  else
  {
    v5 = self->_fsObj;
  }

  v6 = v5;
LABEL_10:

  return v6;
}

- (id)fsSynchObjWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_midx)
  {
    if (!self->_isFSKitModule)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v8 = [(NSXPCConnection *)selfCopy->_theConn synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
      objc_sync_exit(selfCopy);

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

    v5 = [FSVolumeConnectorBridge newWithSyncConnection:self->_theConn errorHandler:handlerCopy];
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
  currentState = [(mountEntry *)self currentState];
  if (currentState > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100062350 + currentState);
  }
}

- (void)setCurrentState:(unint64_t)state
{
  [(NSCondition *)self->_theLock lock];
  self->_currentState = state;
  if (state == 2)
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

- (void)getLiveFilesConnectionForPath:(id)path withCompletionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  if (self->_isFSKitModule)
  {
    if ([(NSString *)self->_fileSystem localizedCaseInsensitiveContainsString:@"MSDOS"])
    {
      bundleIdentifier = @"com.apple.fskit.msdos";
LABEL_15:
      v16 = [[NSUUID alloc] initWithUUIDString:self->_volumeName];
      fs_volumeIdentifier = [v16 fs_volumeIdentifier];
      p_volumeID = &self->_volumeID;
      volumeID = self->_volumeID;
      self->_volumeID = fs_volumeIdentifier;

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
        *v60 = bundleIdentifier;
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
      [gExtensionManager existingExtensionForBundle:bundleIdentifier user:auditToken volume:v22 replyHandler:v43];
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
          *&v60[6] = bundleIdentifier;
          *&v60[14] = 2112;
          *&v60[16] = v16;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d: No extension instance found for bundleID (%@) volumeID (%@)", v57, 0x26u);
        }

        handlerCopy[2](handlerCopy, 0, v52[5]);
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
          *&v60[6] = bundleIdentifier;
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

          handlerCopy[2](handlerCopy, 0, v52[5]);
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

            handlerCopy[2](handlerCopy, 0, v52[5]);
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
            (handlerCopy)[2](handlerCopy, v37, v52[5]);
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
      bundleIdentifier = @"com.apple.fskit.passthroughfs";
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

      handlerCopy[2](handlerCopy, 0, v46[5]);
      bundleIdentifier = 0;
    }

    else
    {
      bundleIdentifier = [v52[5] bundleIdentifier];
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
    v39 = handlerCopy;
    [LIFSClientConnector getLiveFilesConnectionForProvider:providerName volume:volumeName withHandler:v38];
    bundleIdentifier = v39;
  }

LABEL_41:
}

- (void)createMountTaskForBSDName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [FSBlockDeviceResource proxyResourceForBSDName:nameCopy];
    resource = self->_resource;
    self->_resource = v5;

    [(FSResource *)self->_resource setState:6];
    v7 = objc_opt_new();
    mountTaskUUID = self->_mountTaskUUID;
    self->_mountTaskUUID = v7;

    v9 = [FSTaskDescription taskDescriptionWithID:self->_mountTaskUUID state:1 purpose:FSTaskPurposeActivate error:0 bundleID:@"Unknown" extensionID:0 resource:self->_resource];
    tasks = [gSettings tasks];
    objc_sync_enter(tasks);
    tasks2 = [gSettings tasks];
    [tasks2 setObject:v9 forKey:self->_mountTaskUUID];

    objc_sync_exit(tasks);
    [gSettings updateWorkTransaction];
    resourceManager = [gSettings resourceManager];
    objc_sync_enter(resourceManager);
    resourceManager2 = [gSettings resourceManager];
    [resourceManager2 addResource:self->_resource];

    resourceManager3 = [gSettings resourceManager];
    [resourceManager3 addTaskUUID:self->_mountTaskUUID resource:self->_resource];

    objc_sync_exit(resourceManager);
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
    selfCopy = self;
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
  exportedObject = [(NSXPCConnection *)self->_theConn exportedObject];
  if (exportedObject)
  {
    [exportedObject connectionWasInterupted];
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

- (BOOL)ensureConnected:(int)connected status:(id *)status
{
  [(NSCondition *)self->_theLock lock];
  *status = 0;
  if (self->_is_connected)
  {
    [(NSCondition *)self->_theLock unlock];
    LOBYTE(v7) = 1;
  }

  else
  {
    [(NSCondition *)self->_theLock unlock];
    if (connected)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      connect = [(mountEntry *)self connect];
      v7 = connect == 0;
      if (connect)
      {
        v9 = livefs_std_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100041BE4(connect, self);
        }

        v10 = connect;
        *status = connect;
      }
    }
  }

  return v7;
}

- (void)copyDisconnectedRootAttrs:(_LIFileAttributes *)attrs
{
  *&attrs->var0 = 0u;
  *&attrs->var2 = 0u;
  *&attrs->var19 = 0;
  attrs->var17 = 0u;
  attrs->var18 = 0u;
  attrs->var15 = 0u;
  attrs->var16 = 0u;
  attrs->var13 = 0u;
  attrs->var14 = 0u;
  *&attrs->var9 = 0u;
  *&attrs->var11 = 0u;
  *&attrs->var5 = 0u;
  attrs->var1 = 7647;
  *&attrs->var3 = 0x16D00000002;
  attrs->var11 = self->_fileno;
  attrs->var13.tv_sec = 1546329600;
  attrs->var15.tv_sec = 1546329600;
  attrs->var14.tv_sec = 1546329600;
  attrs->var5 = 2;
  attrs->var6 = getuid();
  attrs->var7 = getgid();
  *&attrs->var9 = vdupq_n_s64(1uLL);
}

- (id)mount:(int)mount options:(id)options
{
  optionsCopy = options;
  memset(v78, 0, sizeof(v78));
  v7 = objc_alloc_init(fskitdMounter);
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[mountEntry mount:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: will mount over LIFSv2", buf, 0xCu);
  }

  mntOn = [(mountEntry *)self mntOn];
  stringByStandardizingPath = [mntOn stringByStandardizingPath];
  p_realMountPath = &self->realMountPath;
  realMountPath = self->realMountPath;
  self->realMountPath = stringByStandardizingPath;

  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->realMountPath;
      mntOn2 = [(mountEntry *)self mntOn];
      *buf = 138412546;
      *&buf[4] = v14;
      v76 = 2112;
      v77 = mntOn2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "realMountPath = %@, mntOn = %@", buf, 0x16u);
    }
  }

  mntOn3 = [(mountEntry *)self mntOn];
  if (![mntOn3 hasPrefix:@"/private/"])
  {
    goto LABEL_10;
  }

  v17 = [(NSString *)*p_realMountPath hasPrefix:@"/private"];

  if ((v17 & 1) == 0)
  {
    v18 = [[NSString alloc] initWithFormat:@"%@%@", @"/private", *p_realMountPath];
    mntOn3 = *p_realMountPath;
    *p_realMountPath = v18;
LABEL_10:
  }

  if (self->_midx)
  {
    v19 = 0;
    self->_mnt_flags = mount;
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
  if ((mount & 8) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 10;
  }

  v7->args.actimeo = v26;
  if (!optionsCopy)
  {
    optionsCopy = &stru_100062B08;
  }

  v27 = strdup([(__CFString *)optionsCopy UTF8String]);
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

  if (![(__CFString *)optionsCopy length])
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
    mntOn4 = [(mountEntry *)self mntOn];
    [mntOn4 UTF8String];
    __strlcpy_chk();

    [(fskitdMounter *)v7 setMntFlags:v69];
    mount = [(fskitdMounter *)v7 mount];
    if (mount)
    {
      v56 = mount;
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
      mntOn5 = [(mountEntry *)self mntOn];
      v59 = sub_10003E80C([mntOn5 UTF8String], &v71 + 4, &v71);

      v27 = v70;
      if (!v59)
      {
        v60 = livefs_std_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          mntOn6 = [(mountEntry *)self mntOn];
          uTF8String = [mntOn6 UTF8String];
          *__stringp = 136315394;
          *&__stringp[4] = uTF8String;
          v73 = 1024;
          v74 = HIDWORD(v71);
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: FMT CAPS: 0x%08x", __stringp, 0x12u);
        }

        v63 = livefs_std_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          mntOn7 = [(mountEntry *)self mntOn];
          uTF8String2 = [mntOn7 UTF8String];
          *__stringp = 136315394;
          *&__stringp[4] = uTF8String2;
          v73 = 1024;
          v74 = v71;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: INT CAPS: 0x%08x", __stringp, 0x12u);
        }
      }

      v19 = 0;
      self->_mnt_flags = mount;
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

- (void)renameToName:(id)name reply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  v9 = gSettings;
  volumeName = self->_volumeName;
  providerName = self->_providerName;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10003EA50;
  v18 = &unk_100061338;
  v12 = nameCopy;
  v19 = v12;
  v13 = [v9 updateMountEntry:volumeName provider:providerName settingsDictionary:&v20 updateBlock:&v15];
  v14 = v20;
  if (v13)
  {
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    objc_storeStrong(&self->_displayName, name);
    [LivefsDomainManager updateDomain:v14 reply:replyCopy, v15, v16, v17, v18];
  }
}

- (int)isMountAtPath:(id)path err:(id *)err
{
  pathCopy = path;
  v14 = 0;
  if (pathCopy)
  {
    v6 = getmntinfo_r_np(&v14, 2);
    if (v6)
    {
      LODWORD(v7) = v6;
      uTF8String = [pathCopy UTF8String];
      v9 = 0;
      v10 = v14;
      if (uTF8String && v7 >= 1)
      {
        v11 = uTF8String;
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
      if (err)
      {
        *err = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
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

- (BOOL)unmountPreflight:(int)preflight
{
  if (!self->realMountPath)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_is_in_unmount_syscall || selfCopy->_is_in_unmount_method)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
    selfCopy->_is_in_unmount_method = 1;
  }

  objc_sync_exit(selfCopy);

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
      getResourceID = [(FSResource *)self->_resource getResourceID];
      sub_100042318(getResourceID, v13, v8);
    }

    resourceManager = [gSettings resourceManager];
    objc_sync_enter(resourceManager);
    resourceManager2 = [gSettings resourceManager];
    [resourceManager2 removeResource:self->_resource];

    objc_sync_exit(resourceManager);
    resource = self->_resource;
    self->_resource = 0;
  }

  objc_sync_exit(v7);
}

- (id)unmountPostflight:(int)postflight
{
  postflightCopy = postflight;
  v5 = self->realMountPath;
  if ((postflightCopy & 2) != 0)
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_is_killing_io = 0;
  [(mountEntry *)selfCopy removeMountTask];
  objc_sync_exit(selfCopy);

  return 0;
}

- (id)unmount:(int)unmount
{
  unmountCopy = unmount;
  v5 = self->realMountPath;
  v6 = v5;
  if ((unmountCopy & 2) == 0 || ([(NSString *)v5 isEqual:@"/private/var/mobile/Library/LiveFiles"]& 1) != 0 || ![(NSString *)v6 hasPrefix:@"/private/var/mobile/Library/LiveFiles"]|| !fsctl([(NSString *)v6 fileSystemRepresentation], 0x20006E04uLL, 0, 0))
  {
    v8 = 0;
    if ((unmountCopy & 4) == 0)
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

  if ((unmountCopy & 4) != 0)
  {
LABEL_10:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_is_killing_io = 1;
    objc_sync_exit(selfCopy);
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
  v13 = (unmountCopy & 1) << 19;
  if (!unmount([(NSString *)v6 fileSystemRepresentation], v13))
  {
    goto LABEL_29;
  }

  v14 = 0;
  while (1)
  {
    v15 = *__error();
    v16 = v15 == 35 && unmountCopy & 1;
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

    if (!unmount([(NSString *)v6 fileSystemRepresentation], (unmountCopy & 1) << 19))
    {
      goto LABEL_29;
    }
  }

  if ((unmountCopy & 5) != 0 || !v15)
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

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_is_in_unmount_method = 0;
  objc_sync_exit(selfCopy2);

  v12 = v30;
  v28 = v12;
LABEL_44:

  return v28;
}

- (void)forgetModuleVolumeWithFlags:(unsigned int)flags reply:(id)reply
{
  replyCopy = reply;
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
    replyCopy[2](replyCopy, v11);

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

    replyCopy[2](replyCopy, *(v24[0] + 40));
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
    [v13 deactivateVolume:volumeID numericOptions:flags replyHandler:v20];
    resourceManager = [gSettings resourceManager];
    objc_sync_enter(resourceManager);
    resourceManager2 = [gSettings resourceManager];
    getResourceID = [(FSResource *)self->_resource getResourceID];
    v18 = [resourceManager2 getResource:getResourceID];

    [v18 setState:0];
    resourceManager3 = [gSettings resourceManager];
    [resourceManager3 updateResource:v18];

    objc_sync_exit(resourceManager);
    [(FSResource *)self->_resource revoke];
    [(fskitdExtensionInstance *)self->_instance terminate];
    replyCopy[2](replyCopy, *(v24[0] + 40));
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