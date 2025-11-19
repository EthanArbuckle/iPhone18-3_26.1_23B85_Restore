@interface DSStorageDataServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DSStorageDataServiceDelegate)init;
@end

@implementation DSStorageDataServiceDelegate

- (DSStorageDataServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = DSStorageDataServiceDelegate;
  v2 = [(DSStorageDataServiceDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v3;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100000D18();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection from pid %d ", &buf, 8u);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.storage-data"];

  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STStorageDataServiceProtocol];
    [v7 setExportedInterface:v10];

    v11 = objc_opt_new();
    [v7 setExportedObject:v11];
    [v7 resume];
    [(NSMutableSet *)self->_connections addObject:v7];
    objc_initWeak(&buf, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000010F0;
    v13[3] = &unk_100004178;
    objc_copyWeak(&v14, &buf);
    v13[4] = self;
    [v7 setInvalidationHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&buf);
  }

  else
  {
    v11 = sub_100000D18();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000012E8(v7, v11);
    }
  }

  return v9 != 0;
}

@end