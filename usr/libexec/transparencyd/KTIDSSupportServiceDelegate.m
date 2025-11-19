@interface KTIDSSupportServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation KTIDSSupportServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"application-identifier"];
  v7 = [v5 valueForEntitlement:@"com.apple.transparencyd.ids-support"];
  v8 = [v7 BOOLValue];

  if (v8)
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
      *&v18[10] = [v5 processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ids-support accepting new connection from: %@[%d]", &v17, 0x12u);
    }

    v11 = [(KTIDSSupportServiceDelegate *)self xpcQueue];
    [v5 _setQueue:v11];

    v12 = +[TransparencyIDSSupportInterface interface];
    [v5 setExportedInterface:v12];

    [v5 setExportedObject:self->_daemonContext];
    [v5 resume];
  }

  else
  {
    v13 = [v5 valueForEntitlement:@"application-identifier"];
    if (qword_10038BE00 != -1)
    {
      sub_10024BC80();
    }

    v14 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v17 = 67109378;
      *v18 = [v5 processIdentifier];
      *&v18[4] = 2112;
      *&v18[6] = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ids-support rejecting client %d/[%@] due to lack of entitlement", &v17, 0x12u);
    }
  }

  return v8;
}

@end