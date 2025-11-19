@interface MainServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MainServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"application-identifier"];
  v7 = [v5 valueForEntitlement:@"com.apple.transparency.kt"];
  v8 = [v7 BOOLValue];

  if (v8)
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
      *&v17[10] = [v5 processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "transparency accepting new connection from: %@[%d]", &v16, 0x12u);
    }

    v11 = [(MainServiceDelegate *)self xpcQueue];
    [v5 _setQueue:v11];

    v12 = +[TransparencyXPCInterface interface];
    [v5 setExportedInterface:v12];

    [v5 setExportedObject:self->_daemonContext];
    [v5 resume];
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
      *v17 = [v5 processIdentifier];
      *&v17[4] = 2112;
      *&v17[6] = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "transparency rejecting client %d/[%@] due to lack of entitlement", &v16, 0x12u);
    }
  }

  return v8;
}

@end