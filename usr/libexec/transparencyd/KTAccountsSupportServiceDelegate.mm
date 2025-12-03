@interface KTAccountsSupportServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation KTAccountsSupportServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"application-identifier"];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.transparencyd.accounts-support"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BCBC();
    }

    v9 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16[0] = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "accounts-support accepting new connection from %@", &v15, 0xCu);
    }

    xpcQueue = [(KTAccountsSupportServiceDelegate *)self xpcQueue];
    [connectionCopy _setQueue:xpcQueue];

    v11 = +[TransparencyAccountsSupportInterface interface];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self->_daemonContext];
    [connectionCopy resume];
  }

  else
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BCA8();
    }

    v12 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v15 = 67109378;
      LODWORD(v16[0]) = [connectionCopy processIdentifier];
      WORD2(v16[0]) = 2112;
      *(v16 + 6) = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "accounts-support rejecting client %d/[%@] due to lack of entitlement", &v15, 0x12u);
    }
  }

  return bOOLValue;
}

@end