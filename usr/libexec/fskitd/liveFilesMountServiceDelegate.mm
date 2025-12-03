@interface liveFilesMountServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation liveFilesMountServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100045104();
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.LiveFS.connection"];
  v9 = v8;
  if (v8)
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = bOOLValue;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Incomming connection, entitled %d", &buf, 8u);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSMounter];
  [connectionCopy setExportedInterface:v12];

  v13 = [[fskitdXPCServer alloc] initForEntitledClient:bOOLValue];
  v14 = v13;
  if (v13)
  {
    [v13 setOurConn:connectionCopy];
    [connectionCopy setExportedObject:v14];
    v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSMounterClient];
    [connectionCopy setRemoteObjectInterface:v15];

    objc_initWeak(&buf, v14);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100001CE0;
    v24[3] = &unk_1000609A0;
    objc_copyWeak(&v25, &buf);
    [connectionCopy setInterruptionHandler:v24];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100001D98;
    v22 = &unk_1000609A0;
    objc_copyWeak(&v23, &buf);
    [connectionCopy setInvalidationHandler:&v19];
    [connectionCopy resume];
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100045204();
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100045184();
    }
  }

  return v14 != 0;
}

@end