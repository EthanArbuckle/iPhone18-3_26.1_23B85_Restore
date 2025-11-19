@interface SKDaemonConnection
+ (int64_t)checkPrivilegeLevelWithConnection:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)authorizeRequestForRoot;
- (BOOL)chownFileAtURL:(id)a3 error:(id *)a4;
- (BOOL)preflightRequestWithSKDisk:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 authorizationNeeded:(BOOL)a7;
- (SKDaemonConnection)initWithConnection:(id)a3;
- (id)_safe_object:(id)a3;
- (id)eraseWithEraser:(id)a3 reply:(id)a4;
- (id)preflightRequestWithDiskDict:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 requireRoot:(BOOL)a7 failResGenFunc:(id)a8;
- (id)preflightRequestWithDiskDict:(id)a3 entitlementLevel:(int64_t)a4 prettyFunc:(const char *)a5;
- (id)preflightRequestWithDisksArr:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 requireRootForInternal:(BOOL)a7 failResGenFunc:(id)a8;
- (id)resizeDisk:(id)a3 size:(unint64_t)a4 reply:(id)a5;
- (void)childDisksForWholeDisk:(id)a3 withCompletionUUID:(id)a4;
- (void)ejectDisk:(id)a3 withCompletionUUID:(id)a4;
- (void)filesystemsWithCallbackBlock:(id)a3;
- (void)isBusyWithCompletionUUID:(id)a3;
- (void)mountDisk:(id)a3 options:(id)a4 withCompletionUUID:(id)a5;
- (void)physicalStoresForAPFSVolume:(id)a3 withCompletionUUID:(id)a4;
- (void)recacheDisk:(id)a3 options:(unint64_t)a4 withCompletionUUID:(id)a5;
- (void)renameDisk:(id)a3 to:(id)a4 withCompletionUUID:(id)a5;
- (void)syncAllDisksWithCompletionBlock:(id)a3;
- (void)syncAllDisksWithCompletionUUID:(id)a3;
- (void)unmountDisk:(id)a3 options:(id)a4 withCompletionUUID:(id)a5;
- (void)volumesForAPFSPS:(id)a3 withCompletionUUID:(id)a4;
- (void)wholeDiskForDiskDictionary:(id)a3 withCompletionUUID:(id)a4;
@end

@implementation SKDaemonConnection

+ (int64_t)checkPrivilegeLevelWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "A SK client wants to connect", v14, 2u);
  }

  if ([v3 BOOLValueForEntitlement:off_1000590A8])
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

  if ([v3 BOOLValueForEntitlement:off_1000590A0])
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

  if (![v3 BOOLValueForEntitlement:off_100059098])
  {
    v8 = [v3 BOOLValueForEntitlement:off_100059090];
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
      v13 = [v3 processIdentifier];
      v14[0] = 67109120;
      v14[1] = v13;
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

- (SKDaemonConnection)initWithConnection:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKDaemonConnection;
  v5 = [(SKDaemonConnection *)&v17 init];
  if (!v5)
  {
LABEL_14:
    v9 = v5;
    goto LABEL_15;
  }

  v6 = [SKDaemonConnection checkPrivilegeLevelWithConnection:v4];
  *(v5 + 4) = v6;
  if (v6 != -1)
  {
    if ([v4 BOOLValueForEntitlement:off_1000590B0])
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
    [v4 setExportedInterface:v8];

    [v4 setExportedObject:v5];
    *(v5 + 5) = [v4 effectiveUserIdentifier];
    *(v5 + 6) = [v4 effectiveGroupIdentifier];
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v10 = *&buf[16];
    *(v5 + 40) = *buf;
    *(v5 + 56) = v10;
    v11 = sub_1000013D4();
    [v4 setRemoteObjectInterface:v11];

    v12 = [v4 remoteObjectProxyWithErrorHandler:&stru_100048EC0];
    v13 = *(v5 + 1);
    *(v5 + 1) = v12;

    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 processIdentifier];
      *buf = 136315394;
      *&buf[4] = "[SKDaemonConnection initWithConnection:]";
      *&buf[12] = 1024;
      *&buf[14] = v15;
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

- (BOOL)preflightRequestWithSKDisk:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 authorizationNeeded:(BOOL)a7
{
  v11 = a3;
  v12 = a5;
  if (!v11)
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

  v13 = [(SKDaemonConnection *)self privilege];
  if ([v11 isExternal] && -[SKDaemonConnection privilege](self, "privilege") == 2)
  {
    v13 = 3;
  }

  if (v13 < a4)
  {
    v14 = sub_10000BFD0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 138543362;
        v26 = v12;
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
      v26 = a6;
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
  v24 = a6;
  v23 = v11;
  [v19 logEvent:@"com.apple.StorageKit.storagekitd.usage" eventPayloadBuilder:v22];

  v20 = 1;
  v14 = v23;
LABEL_17:

  return v20;
}

- (id)preflightRequestWithDiskDict:(id)a3 entitlementLevel:(int64_t)a4 prettyFunc:(const char *)a5
{
  v8 = a3;
  v9 = sub_10000BFD0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2080;
    v18 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s", &v15, 0x16u);
  }

  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:v8];

  v12 = [(SKDaemonConnection *)self preflightRequestWithSKDisk:v11 entitlementLevel:a4 completionUUID:0 prettyFunc:a5 authorizationNeeded:1];
  v13 = 0;
  if (v12)
  {
    v13 = v11;
  }

  return v13;
}

- (id)preflightRequestWithDiskDict:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 requireRoot:(BOOL)a7 failResGenFunc:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a5;
  v16 = a8;
  if (v9 && ![(SKDaemonConnection *)self authorizeRequestForRoot])
  {
    progressHandler = self->_progressHandler;
    v19 = v16[2](v16);
    [(SKHelperClientProtocol *)progressHandler requestWithUUID:v15 didCompleteWithResult:v19];

    v17 = 0;
  }

  else
  {
    v17 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:v14 entitlementLevel:a4 completionUUID:v15 prettyFunc:a6 authorizationNeeded:!v9 failResGenFunc:v16];
  }

  return v17;
}

- (id)preflightRequestWithDisksArr:(id)a3 entitlementLevel:(int64_t)a4 completionUUID:(id)a5 prettyFunc:(const char *)a6 requireRootForInternal:(BOOL)a7 failResGenFunc:(id)a8
{
  v33 = a7;
  v10 = a3;
  v11 = a5;
  v12 = a8;
  v13 = sub_10000BFD0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = v10;
    v43 = 2080;
    v44 = a6;
    v45 = 2114;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v37;
    v31 = v12;
LABEL_5:
    v20 = v11;
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
        v12 = v31;
        v29 = v31[2](v31);
        v11 = v20;
        [(SKHelperClientProtocol *)progressHandler requestWithUUID:v20 didCompleteWithResult:v29];

        v26 = 0;
        goto LABEL_25;
      }

      if ((v18 & 1) == 0)
      {
        if (!v33)
        {
          if (![(SKDaemonConnection *)self preflightRequestWithSKDisk:v24 entitlementLevel:a4 completionUUID:v20 prettyFunc:a6 authorizationNeeded:1])
          {
            goto LABEL_24;
          }

LABEL_17:
          v18 = 0;
          goto LABEL_18;
        }

        v25 = [v24 isTrusted];
        if (![(SKDaemonConnection *)self preflightRequestWithSKDisk:v24 entitlementLevel:a4 completionUUID:v20 prettyFunc:a6 authorizationNeeded:v25 ^ 1])
        {
          goto LABEL_24;
        }

        if (!v25)
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
        v11 = v20;
        v12 = v31;
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

- (void)syncAllDisksWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [v6 syncAllDisksWithCompletionBlock:v8];
}

- (void)syncAllDisksWithCompletionUUID:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [v6 syncAllDisksWithCompletionBlock:v8];
}

- (void)wholeDiskForDiskDictionary:(id)a3 withCompletionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v6;
    v17 = 2080;
    v18 = "[SKDaemonConnection wholeDiskForDiskDictionary:withCompletionUUID:]";
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E010;
  v13[3] = &unk_100048F60;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v9 wholeDiskForDisk:v11 withCallbackBlock:v13];
}

- (void)childDisksForWholeDisk:(id)a3 withCompletionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v6;
    v17 = 2080;
    v18 = "[SKDaemonConnection childDisksForWholeDisk:withCompletionUUID:]";
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E268;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v9 childDisksForWholeDisk:v11 withCallbackBlock:v13];
}

- (void)isBusyWithCompletionUUID:(id)a3
{
  v4 = a3;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SKDaemonConnection isBusyWithCompletionUUID:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preflight at %s with UUID: %{public}@", buf, 0x16u);
  }

  v6 = +[SKDaemonManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E528;
  v8[3] = &unk_100048FB0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 isBusy:v8];
}

- (void)recacheDisk:(id)a3 options:(unint64_t)a4 withCompletionUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_10000BFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2080;
    v20 = "[SKDaemonConnection recacheDisk:options:withCompletionUUID:]";
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  [(SKDaemonConnection *)self validateAuthRef];
  v11 = +[SKDaemonManager sharedManager];
  v12 = +[SKDaemonManager sharedManager];
  v13 = [v12 knownDiskForDictionary:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E784;
  v15[3] = &unk_100048F38;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  [v11 recacheDisk:v13 options:a4 callbackBlock:v15];
}

- (void)filesystemsWithCallbackBlock:(id)a3
{
  v3 = a3;
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
  v8 = v3;
  v6 = v3;
  [v5 filesystemsWithCallbackBlock:v7];
}

- (void)physicalStoresForAPFSVolume:(id)a3 withCompletionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v6;
    v17 = 2080;
    v18 = "[SKDaemonConnection physicalStoresForAPFSVolume:withCompletionUUID:]";
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000EA70;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v9 physicalStoresForAPFSVolume:v11 completionBlock:v13];
}

- (void)volumesForAPFSPS:(id)a3 withCompletionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v6;
    v17 = 2080;
    v18 = "[SKDaemonConnection volumesForAPFSPS:withCompletionUUID:]";
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight for %@ at %s with UUID: %{public}@", buf, 0x20u);
  }

  v9 = +[SKDaemonManager sharedManager];
  v10 = +[SKDaemonManager sharedManager];
  v11 = [v10 knownDiskForDictionary:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000ED94;
  v13[3] = &unk_100048F88;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v9 volumesForAPFSPS:v11 completionBlock:v13];
}

- (void)renameDisk:(id)a3 to:(id)a4 withCompletionUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:a3 entitlementLevel:1 completionUUID:v9 prettyFunc:"[SKDaemonConnection renameDisk:to:withCompletionUUID:]" failResGenFunc:&stru_100049018];
  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F0D4;
    v12[3] = &unk_100049040;
    v12[4] = self;
    v13 = v9;
    [v11 renameDisk:v10 to:v8 withCompletionBlock:v12];
  }
}

- (void)unmountDisk:(id)a3 options:(id)a4 withCompletionUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:a3 entitlementLevel:1 completionUUID:v9 prettyFunc:"[SKDaemonConnection unmountDisk:options:withCompletionUUID:]" failResGenFunc:&stru_100049060];
  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F334;
    v12[3] = &unk_100049040;
    v12[4] = self;
    v13 = v9;
    [v11 unmountDisk:v10 options:v8 withCompletionBlock:v12];
  }
}

- (void)mountDisk:(id)a3 options:(id)a4 withCompletionUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SKDaemonManager sharedManager];
  v12 = [v11 knownDiskForDictionary:v10];

  v13 = [SKMountOperation alloc];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10000F5D8;
  v22 = &unk_100049040;
  v23 = self;
  v14 = v8;
  v24 = v14;
  v15 = [(SKMountOperation *)v13 initWithDisk:v12 options:v9 connection:self completionBlock:&v19];

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

- (void)ejectDisk:(id)a3 withCompletionUUID:(id)a4
{
  v6 = a4;
  v7 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:a3 entitlementLevel:1 completionUUID:v6 prettyFunc:"[SKDaemonConnection ejectDisk:withCompletionUUID:]" failResGenFunc:&stru_100049080];
  if (v7)
  {
    v8 = +[SKDaemonManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F81C;
    v9[3] = &unk_100049040;
    v9[4] = self;
    v10 = v6;
    [v8 ejectDisk:v7 withCompletionBlock:v9];
  }
}

- (id)_safe_object:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  return v6;
}

- (BOOL)chownFileAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 path], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 path];
    v10 = chown([v9 UTF8String], -[SKDaemonConnection uid](self, "uid"), -[SKDaemonConnection gid](self, "gid"));

    if (!v10)
    {
      v17 = 1;
      goto LABEL_9;
    }

    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 path];
      v13 = *__error();
      v19 = 136315650;
      v20 = "[SKDaemonConnection chownFileAtURL:error:]";
      v21 = 2112;
      v22 = v12;
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

  v16 = [SKError errorWithCode:v14 debugDescription:v15 error:a4];
  v17 = v16 != 0;

LABEL_9:
  return v17;
}

- (id)eraseWithEraser:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BFD0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v6;
    v20 = 2082;
    v21 = "[SKDaemonConnection eraseWithEraser:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preflight check for %@ at %{public}s", buf, 0x16u);
  }

  v9 = [v6 disk];
  v10 = [(SKDaemonConnection *)self preflightRequestWithSKDisk:v9 entitlementLevel:3 prettyFunc:"[SKDaemonConnection eraseWithEraser:reply:]"];

  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000FCEC;
    v15[3] = &unk_1000490A8;
    v15[4] = self;
    v16 = v7;
    v12 = [v11 eraseWithEraser:v6 completionBlock:v15];
    v13 = v16;
  }

  else
  {
    v11 = [SKError errorWithCode:112 userInfo:0];
    v17 = v11;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    (*(v7 + 2))(v7, v13);
    v12 = 0;
  }

  return v12;
}

- (id)resizeDisk:(id)a3 size:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = [(SKDaemonConnection *)self preflightRequestWithDiskDict:a3 entitlementLevel:3 prettyFunc:"[SKDaemonConnection resizeDisk:size:reply:]"];
  if (v9)
  {
    v10 = +[SKDaemonManager sharedManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000FF9C;
    v14[3] = &unk_1000490D0;
    v15 = v8;
    v11 = [v10 resize:v9 toSize:a4 completionBlock:v14];
  }

  else
  {
    v12 = [SKError errorWithCode:112 userInfo:0];
    (*(v8 + 2))(v8, v12);

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