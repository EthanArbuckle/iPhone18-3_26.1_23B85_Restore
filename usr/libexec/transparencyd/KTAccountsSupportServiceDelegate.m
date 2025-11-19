@interface KTAccountsSupportServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation KTAccountsSupportServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"application-identifier"];
  v7 = [v5 valueForEntitlement:@"com.apple.transparencyd.accounts-support"];
  v8 = [v7 BOOLValue];

  if (v8)
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

    v10 = [(KTAccountsSupportServiceDelegate *)self xpcQueue];
    [v5 _setQueue:v10];

    v11 = +[TransparencyAccountsSupportInterface interface];
    [v5 setExportedInterface:v11];

    [v5 setExportedObject:self->_daemonContext];
    [v5 resume];
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
      LODWORD(v16[0]) = [v5 processIdentifier];
      WORD2(v16[0]) = 2112;
      *(v16 + 6) = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "accounts-support rejecting client %d/[%@] due to lack of entitlement", &v15, 0x12u);
    }
  }

  return v8;
}

@end