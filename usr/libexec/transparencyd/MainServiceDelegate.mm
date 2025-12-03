@interface MainServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MainServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"application-identifier"];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.transparency.kt"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BC6C();
    }

    v9 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v16 = 138412546;
      *v17 = v6;
      *&v17[8] = 1024;
      *&v17[10] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "transparency accepting new connection from: %@[%d]", &v16, 0x12u);
    }

    xpcQueue = [(MainServiceDelegate *)self xpcQueue];
    [connectionCopy _setQueue:xpcQueue];

    v12 = +[TransparencyXPCInterface interface];
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self->_daemonContext];
    [connectionCopy resume];
  }

  else
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BC58();
    }

    v13 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v16 = 67109378;
      *v17 = [connectionCopy processIdentifier];
      *&v17[4] = 2112;
      *&v17[6] = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "transparency rejecting client %d/[%@] due to lack of entitlement", &v16, 0x12u);
    }
  }

  return bOOLValue;
}

@end