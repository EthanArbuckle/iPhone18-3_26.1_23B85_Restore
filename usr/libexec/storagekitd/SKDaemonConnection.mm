@interface SKDaemonConnection
+ (int64_t)checkPrivilegeLevelWithConnection:(id)connection;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)authorizeRequestForRoot;
- (BOOL)chownFileAtURL:(id)l error:(id *)error;
- (BOOL)preflightRequestWithSKDisk:(id)disk entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func authorizationNeeded:(BOOL)needed;
- (SKDaemonConnection)initWithConnection:(id)connection;
- (id)_safe_object:(id)_safe_object;
- (id)eraseWithEraser:(id)eraser reply:(id)reply;
- (id)preflightRequestWithDiskDict:(id)dict entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func requireRoot:(BOOL)root failResGenFunc:(id)genFunc;
- (id)preflightRequestWithDiskDict:(id)dict entitlementLevel:(int64_t)level prettyFunc:(const char *)func;
- (id)preflightRequestWithDisksArr:(id)arr entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func requireRootForInternal:(BOOL)internal failResGenFunc:(id)genFunc;
- (id)resizeDisk:(id)disk size:(unint64_t)size reply:(id)reply;
- (void)childDisksForWholeDisk:(id)disk withCompletionUUID:(id)d;
- (void)ejectDisk:(id)disk withCompletionUUID:(id)d;
- (void)filesystemsWithCallbackBlock:(id)block;
- (void)isBusyWithCompletionUUID:(id)d;
- (void)mountDisk:(id)disk options:(id)options withCompletionUUID:(id)d;
- (void)physicalStoresForAPFSVolume:(id)volume withCompletionUUID:(id)d;
- (void)recacheDisk:(id)disk options:(unint64_t)options withCompletionUUID:(id)d;
- (void)renameDisk:(id)disk to:(id)to withCompletionUUID:(id)d;
- (void)syncAllDisksWithCompletionBlock:(id)block;
- (void)syncAllDisksWithCompletionUUID:(id)d;
- (void)unmountDisk:(id)disk options:(id)options withCompletionUUID:(id)d;
- (void)volumesForAPFSPS:(id)s withCompletionUUID:(id)d;
- (void)wholeDiskForDiskDictionary:(id)dictionary withCompletionUUID:(id)d;
@end

@implementation SKDaemonConnection

+ (int64_t)checkPrivilegeLevelWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "A SK client wants to connect", v14, 2u);
  }

  if ([connectionCopy BOOLValueForEntitlement:off_1000590A8])
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client entitled for destructive operations", v14, 2u);
    }

    v6 = 3;
    goto LABEL_7;
  }

  if ([connectionCopy BOOLValueForEntitlement:off_1000590A0])
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v6 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client entitled for destructive external operations", v14, 2u);
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_7;
  }

  if (![connectionCopy BOOLValueForEntitlement:off_100059098])
  {
    v8 = [connectionCopy BOOLValueForEntitlement:off_100059090];
    v5 = sub_10000BFD0();
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        LOWORD(v14[0]) = 0;
        v10 = "Client entitled for information";
        v11 = v5;
        v12 = 2;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
      }
    }

    else if (v9)
    {
      processIdentifier = [connectionCopy processIdentifier];
      v14[0] = 67109120;
      v14[1] = processIdentifier;
      v10 = "Client (%d) not entitiled, applying default level (information)";
      v11 = v5;
      v12 = 8;
      goto LABEL_21;
    }

    v6 = 0;
    goto LABEL_7;
  }

  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client entitled for state-changing", v14, 2u);
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (SKDaemonConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = SKDaemonConnection;
  v5 = [(SKDaemonConnection *)&v17 init];
  if (!v5)
  {
LABEL_14:
    v9 = v5;
    goto LABEL_15;
  }

  v6 = [SKDaemonConnection checkPrivilegeLevelWithConnection:connectionCopy];
  *(v5 + 4) = v6;
  if (v6 != -1)
  {
    if ([connectionCopy BOOLValueForEntitlement:off_1000590B0])
    {
      v7 = sub_10000BFD0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client has audited mounts entitlement", buf, 2u);
      }

      v5[16] = 1;
    }

    v8 = sub_100001228();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:v5];
    *(v5 + 5) = [connectionCopy effectiveUserIdentifier];
    *(v5 + 6) = [connectionCopy effectiveGroupIdentifier];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v10 = *&buf[16];
    *(v5 + 40) = *buf;
    *(v5 + 56) = v10;
    v11 = sub_1000013D4();
    [connectionCopy setRemoteObjectInterface:v11];

    v12 = [connectionCopy remoteObjectProxyWithErrorHandler:&stru_100048EC0];
    v13 = *(v5 + 1);
    *(v5 + 1) = v12;

    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 136315394;
      *&buf[4] = "[SKDaemonConnection initWithConnection:]";
      *&buf[12] = 1024;
      *&buf[14] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Connected via XPC from pid %d", buf, 0x12u);
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (BOOL)authorizeRequestForRoot
{
  v2 = sub_10000BFD0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[SKDaemonConnection authorizeRequestForRoot]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: Not allowed for non-root users on this platform", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)preflightRequestWithSKDisk:(id)disk entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func authorizationNeeded:(BOOL)needed
{
  diskCopy = disk;
  dCopy = d;
  if (!diskCopy)
  {
    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Couldn't find disk for given disk dictionary.";
      v17 = v14;
      v18 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  privilege = [(SKDaemonConnection *)self privilege];
  if ([diskCopy isExternal] && -[SKDaemonConnection privilege](self, "privilege") == 2)
  {
    privilege = 3;
  }

  if (privilege < level)
  {
    v14 = sub_10000BFD0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (dCopy)
    {
      if (v15)
      {
        *buf = 138543362;
        funcCopy = dCopy;
        v16 = "Missing entitlement, request denied for UUID: %{public}@.";
LABEL_14:
        v17 = v14;
        v18 = 12;
        goto LABEL_15;
      }
    }

    else if (v15)
    {
      *buf = 136446210;
      funcCopy = func;
      v16 = "Missing entitlement, request denied for API: %{public}s.";
      goto LABEL_14;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v19 = +[SKDaemonManager sharedManager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000D268;
  v22[3] = &unk_100048EE8;
  funcCopy2 = func;
  v23 = diskCopy;
  [v19 logEvent:@"com.apple.StorageKit.storagekitd.usage" eventPayloadBuilder:v22];

  v20 = 1;
  v14 = v23;
LABEL_17:

  return v20;
}

- (id)preflightRequestWithDiskDict:(id)dict entitlementLevel:(int64_t)level prettyFunc:(const char *)func
{
  dictCopy = dict;
  v9 = sub_10000BFD0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = dictCopy;
    v17 = 2080;
    funcCopy = func;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s", &v15, 0x16u);
  }

  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:dictCopy];

  v12 = [(SKDaemonConnection *)self preflightRequestWithSKDisk:v11 entitlementLevel:level completionUUID:0 prettyFunc:func authorizationNeeded:1];
  v13 = 0;
  if (v12)
  {
    v13 = v11;
  }

  return v13;
}

- (id)preflightRequestWithDiskDict:(id)dict entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func requireRoot:(BOOL)root failResGenFunc:(id)genFunc
{
  rootCopy = root;
  dictCopy = dict;
  dCopy = d;
  genFuncCopy = genFunc;
  if (rootCopy && ![(SKDaemonConnection *)self authorizeRequestForRoot])
  {
    progressHandler = self->_progressHandler;
    v19 = genFuncCopy[2](genFuncCopy);
    [(SKHelperClientProtocol *)progressHandler requestWithUUID:dCopy didCompleteWithResult:v19];

    v17 = 0;
  }

  else
  {
    v17 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:dictCopy entitlementLevel:level completionUUID:dCopy prettyFunc:func authorizationNeeded:!rootCopy failResGenFunc:genFuncCopy];
  }

  return v17;
}

- (id)preflightRequestWithDisksArr:(id)arr entitlementLevel:(int64_t)level completionUUID:(id)d prettyFunc:(const char *)func requireRootForInternal:(BOOL)internal failResGenFunc:(id)genFunc
{
  internalCopy = internal;
  arrCopy = arr;
  dCopy = d;
  genFuncCopy = genFunc;
  v13 = sub_10000BFD0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = arrCopy;
    v43 = 2080;
    funcCopy = func;
    v45 = 2114;
    v46 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrCopy count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = arrCopy;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v37;
    v31 = genFuncCopy;
LABEL_5:
    v20 = dCopy;
    v21 = 0;
    while (1)
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v36 + 1) + 8 * v21);
      v23 = +[SKDaemonManager sharedManager];
      v24 = [v23 knownDiskForDictionary:v22];

      if (!v24)
      {
        v27 = sub_10000BFD0();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Couldn't find disk for given disk dictionary.", buf, 2u);
        }

LABEL_24:
        progressHandler = self->_progressHandler;
        genFuncCopy = v31;
        v29 = v31[2](v31);
        dCopy = v20;
        [(SKHelperClientProtocol *)progressHandler requestWithUUID:v20 didCompleteWithResult:v29];

        v26 = 0;
        goto LABEL_25;
      }

      if ((v18 & 1) == 0)
      {
        if (!internalCopy)
        {
          if (![(SKDaemonConnection *)self preflightRequestWithSKDisk:v24 entitlementLevel:level completionUUID:v20 prettyFunc:func authorizationNeeded:1])
          {
            goto LABEL_24;
          }

LABEL_17:
          v18 = 0;
          goto LABEL_18;
        }

        isTrusted = [v24 isTrusted];
        if (![(SKDaemonConnection *)self preflightRequestWithSKDisk:v24 entitlementLevel:level completionUUID:v20 prettyFunc:func authorizationNeeded:isTrusted ^ 1])
        {
          goto LABEL_24;
        }

        if (!isTrusted)
        {
          goto LABEL_17;
        }

        if (![(SKDaemonConnection *)self authorizeRequestForRoot])
        {
          goto LABEL_24;
        }
      }

      v18 = 1;
LABEL_18:
      [v14 addObject:v24];

      if (v17 == ++v21)
      {
        v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
        dCopy = v20;
        genFuncCopy = v31;
        if (v17)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v26 = v14;
LABEL_25:

  return v26;
}

- (void)syncAllDisksWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SKDaemonConnection syncAllDisksWithCompletionBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Received sync request", buf, 0xCu);
  }

  [(SKDaemonConnection *)self validateAuthRef];
  v6 = +[SKDaemonManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DD50;
  v8[3] = &unk_100048F10;
  v9 = blockCopy;
  v7 = blockCopy;
  [v6 syncAllDisksWithCompletionBlock:v8];
}

- (void)syncAllDisksWithCompletionUUID:(id)d
{
  dCopy = d;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAEMON - waiting for initialPopulateComplete", buf, 2u);
  }

  [(SKDaemonConnection *)self validateAuthRef];
  v6 = +[SKDaemonManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DE64;
  v8[3] = &unk_100048F38;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [v6 syncAllDisksWithCompletionBlock:v8];
}

- (void)wholeDiskForDiskDictionary:(id)dictionary withCompletionUUID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = dictionaryCopy;
    v17 = 2080;
    v18 = "[SKDaemonConnection wholeDiskForDiskDictionary:withCompletionUUID:]";
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:dictionaryCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E010;
  v13[3] = &unk_100048F60;
  v13[4] = self;
  v14 = dCopy;
  v12 = dCopy;
  [v9 wholeDiskForDisk:v11 withCallbackBlock:v13];
}

- (void)childDisksForWholeDisk:(id)disk withCompletionUUID:(id)d
{
  diskCopy = disk;
  dCopy = d;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = diskCopy;
    v17 = 2080;
    v18 = "[SKDaemonConnection childDisksForWholeDisk:withCompletionUUID:]";
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:diskCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E268;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = dCopy;
  v12 = dCopy;
  [v9 childDisksForWholeDisk:v11 withCallbackBlock:v13];
}

- (void)isBusyWithCompletionUUID:(id)d
{
  dCopy = d;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SKDaemonConnection isBusyWithCompletionUUID:]";
    v12 = 2114;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preflight at %s with UUID: %{public}@", buf, 0x16u);
  }

  v6 = +[SKDaemonManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E528;
  v8[3] = &unk_100048FB0;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [v6 isBusy:v8];
}

- (void)recacheDisk:(id)disk options:(unint64_t)options withCompletionUUID:(id)d
{
  diskCopy = disk;
  dCopy = d;
  v10 = sub_10000BFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = diskCopy;
    v19 = 2080;
    v20 = "[SKDaemonConnection recacheDisk:options:withCompletionUUID:]";
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  [(SKDaemonConnection *)self validateAuthRef];
  v11 = +[SKDaemonManager sharedManager];
  v12 = +[SKDaemonManager sharedManager];
  v13 = [v12 knownDiskForDictionary:diskCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E784;
  v15[3] = &unk_100048F38;
  v15[4] = self;
  v16 = dCopy;
  v14 = dCopy;
  [v11 recacheDisk:v13 options:options callbackBlock:v15];
}

- (void)filesystemsWithCallbackBlock:(id)block
{
  blockCopy = block;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SKDaemonConnection filesystemsWithCallbackBlock:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Building filesystems array", buf, 0xCu);
  }

  v5 = +[SKDaemonManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E8C8;
  v7[3] = &unk_100048FD8;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 filesystemsWithCallbackBlock:v7];
}

- (void)physicalStoresForAPFSVolume:(id)volume withCompletionUUID:(id)d
{
  volumeCopy = volume;
  dCopy = d;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = volumeCopy;
    v17 = 2080;
    v18 = "[SKDaemonConnection physicalStoresForAPFSVolume:withCompletionUUID:]";
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:volumeCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000EA70;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = dCopy;
  v12 = dCopy;
  [v9 physicalStoresForAPFSVolume:v11 completionBlock:v13];
}

- (void)volumesForAPFSPS:(id)s withCompletionUUID:(id)d
{
  sCopy = s;
  dCopy = d;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = sCopy;
    v17 = 2080;
    v18 = "[SKDaemonConnection volumesForAPFSPS:withCompletionUUID:]";
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:sCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000ED94;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = dCopy;
  v12 = dCopy;
  [v9 volumesForAPFSPS:v11 completionBlock:v13];
}

- (void)renameDisk:(id)disk to:(id)to withCompletionUUID:(id)d
{
  toCopy = to;
  dCopy = d;
  v10 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:disk entitlementLevel:1 completionUUID:dCopy prettyFunc:"[SKDaemonConnection renameDisk:to:withCompletionUUID:]" failResGenFunc:&stru_100049018];
  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F0D4;
    v12[3] = &unk_100049040;
    v12[4] = self;
    v13 = dCopy;
    [v11 renameDisk:v10 to:toCopy withCompletionBlock:v12];
  }
}

- (void)unmountDisk:(id)disk options:(id)options withCompletionUUID:(id)d
{
  optionsCopy = options;
  dCopy = d;
  v10 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:disk entitlementLevel:1 completionUUID:dCopy prettyFunc:"[SKDaemonConnection unmountDisk:options:withCompletionUUID:]" failResGenFunc:&stru_100049060];
  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F334;
    v12[3] = &unk_100049040;
    v12[4] = self;
    v13 = dCopy;
    [v11 unmountDisk:v10 options:optionsCopy withCompletionBlock:v12];
  }
}

- (void)mountDisk:(id)disk options:(id)options withCompletionUUID:(id)d
{
  dCopy = d;
  optionsCopy = options;
  diskCopy = disk;
  v11 = +[SKDaemonManager sharedManager];
  v12 = [v11 knownDiskForDictionary:diskCopy];

  v13 = [SKMountOperation alloc];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10000F5D8;
  v22 = &unk_100049040;
  selfCopy = self;
  v14 = dCopy;
  v24 = v14;
  v15 = [(SKMountOperation *)v13 initWithDisk:v12 options:optionsCopy connection:self completionBlock:&v19];

  if (v15)
  {
    if ([(SKDaemonConnection *)self preflightRequestWithSKDisk:v12 entitlementLevel:1 completionUUID:v14 prettyFunc:"[SKDaemonConnection mountDisk:options:withCompletionUUID:]" authorizationNeeded:[(SKMountOperation *)v15 authenticateOnInit:v19]^ 1])
    {
      v16 = +[SKDaemonManager sharedManager];
      [v16 _scheduleOperation:v15];
    }

    else
    {
      progressHandler = self->_progressHandler;
      v16 = [SKError errorWithCode:112 userInfo:0];
      v25 = v16;
      v18 = [NSArray arrayWithObjects:&v25 count:1];
      [(SKHelperClientProtocol *)progressHandler requestWithUUID:v14 didCompleteWithResult:v18];
    }
  }
}

- (void)ejectDisk:(id)disk withCompletionUUID:(id)d
{
  dCopy = d;
  v7 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:disk entitlementLevel:1 completionUUID:dCopy prettyFunc:"[SKDaemonConnection ejectDisk:withCompletionUUID:]" failResGenFunc:&stru_100049080];
  if (v7)
  {
    v8 = +[SKDaemonManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F81C;
    v9[3] = &unk_100049040;
    v9[4] = self;
    v10 = dCopy;
    [v8 ejectDisk:v7 withCompletionBlock:v9];
  }
}

- (id)_safe_object:(id)_safe_object
{
  _safe_objectCopy = _safe_object;
  v4 = _safe_objectCopy;
  if (_safe_objectCopy)
  {
    v5 = _safe_objectCopy;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  return v6;
}

- (BOOL)chownFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = lCopy;
  if (lCopy && ([lCopy path], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    path = [v7 path];
    v10 = chown([path UTF8String], -[SKDaemonConnection uid](self, "uid"), -[SKDaemonConnection gid](self, "gid"));

    if (!v10)
    {
      v17 = 1;
      goto LABEL_9;
    }

    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [v7 path];
      v13 = *__error();
      v19 = 136315650;
      v20 = "[SKDaemonConnection chownFileAtURL:error:]";
      v21 = 2112;
      v22 = path2;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: chown on %@ failed with errno %d", &v19, 0x1Cu);
    }

    v14 = *__error();
    v15 = @"Chown operation failed";
  }

  else
  {
    v15 = @"Invalid URL for chown operation";
    v14 = 255;
  }

  v16 = [SKError errorWithCode:v14 debugDescription:v15 error:error];
  v17 = v16 != 0;

LABEL_9:
  return v17;
}

- (id)eraseWithEraser:(id)eraser reply:(id)reply
{
  eraserCopy = eraser;
  replyCopy = reply;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = eraserCopy;
    v20 = 2082;
    v21 = "[SKDaemonConnection eraseWithEraser:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight check for %@ at %{public}s", buf, 0x16u);
  }

  disk = [eraserCopy disk];
  v10 = [(SKDaemonConnection *)self preflightRequestWithSKDisk:disk entitlementLevel:3 prettyFunc:"[SKDaemonConnection eraseWithEraser:reply:]"];

  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000FCEC;
    v15[3] = &unk_1000490A8;
    v15[4] = self;
    v16 = replyCopy;
    v12 = [v11 eraseWithEraser:eraserCopy completionBlock:v15];
    v13 = v16;
  }

  else
  {
    v11 = [SKError errorWithCode:112 userInfo:0];
    v17 = v11;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    (*(replyCopy + 2))(replyCopy, v13);
    v12 = 0;
  }

  return v12;
}

- (id)resizeDisk:(id)disk size:(unint64_t)size reply:(id)reply
{
  replyCopy = reply;
  v9 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:disk entitlementLevel:3 prettyFunc:"[SKDaemonConnection resizeDisk:size:reply:]"];
  if (v9)
  {
    v10 = +[SKDaemonManager sharedManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000FF9C;
    v14[3] = &unk_1000490D0;
    v15 = replyCopy;
    v11 = [v10 resize:v9 toSize:size completionBlock:v14];
  }

  else
  {
    v12 = [SKError errorWithCode:112 userInfo:0];
    (*(replyCopy + 2))(replyCopy, v12);

    v11 = 0;
  }

  return v11;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

@end