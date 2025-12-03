@interface KTIDSSupportServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation KTIDSSupportServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"application-identifier"];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.transparencyd.ids-support"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BC94();
    }

    v9 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v17 = 138412546;
      *v18 = v6;
      *&v18[8] = 1024;
      *&v18[10] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ids-support accepting new connection from: %@[%d]", &v17, 0x12u);
    }

    xpcQueue = [(KTIDSSupportServiceDelegate *)self xpcQueue];
    [connectionCopy _setQueue:xpcQueue];

    v12 = +[TransparencyIDSSupportInterface interface];
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self->_daemonContext];
    [connectionCopy resume];
  }

  else
  {
    v13 = [connectionCopy valueForEntitlement:@"application-identifier"];
    if (qword_10038BE00 != -1)
    {
      sub_10024BC80();
    }

    v14 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v17 = 67109378;
      *v18 = [connectionCopy processIdentifier];
      *&v18[4] = 2112;
      *&v18[6] = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ids-support rejecting client %d/[%@] due to lack of entitlement", &v17, 0x12u);
    }
  }

  return bOOLValue;
}

@end