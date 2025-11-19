@interface W5PeerDebugListener
- (BOOL)handleClientRequest:(id)a3;
- (W5PeerDebugListener)initWithDebugManager:(id)a3;
@end

@implementation W5PeerDebugListener

- (W5PeerDebugListener)initWithDebugManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = W5PeerDebugListener;
  v6 = [(W5PeerDebugListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_debugManager, a3), !v7->_debugManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerDebugListener initWithDebugManager:]";
      v13 = 2080;
      v14 = "W5PeerDebugListener.m";
      v15 = 1024;
      v16 = 36;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 requestType];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 configuration];
    v35 = 136316674;
    v36 = "[W5PeerDebugListener handleClientRequest:]";
    v37 = 2080;
    v38 = "W5PeerDebugListener.m";
    v39 = 1024;
    v40 = 46;
    v41 = 2114;
    v42 = v4;
    v43 = 2114;
    v44 = v5;
    v45 = 2114;
    v46 = v8;
    v47 = 2050;
    v48 = [v5 requestType];
    LODWORD(v27) = 68;
    v26 = &v35;
    _os_log_send_and_compose_impl();
  }

  v9 = objc_alloc_init(W5PeerDebugResponsePayload);
  v10 = [NSNumber numberWithInteger:[(W5PeerDebugListener *)self currentVersion]];
  [(W5PeerDebugResponsePayload *)v9 setVersion:v10];

  v11 = [v5 version];
  v12 = [v11 integerValue];
  v13 = [(W5PeerDebugListener *)self currentVersion];

  if (v12 != v13)
  {
    [(W5PeerDebugResponsePayload *)v9 setStatus:3];
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"W5NotSupportedErr";
    v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:4 userInfo:v16];
LABEL_21:

    goto LABEL_22;
  }

  if (v6 == 2)
  {
    v16 = [v5 configuration];
    if (v16)
    {
      v19 = [(W5PeerDebugListener *)self debugManager];
      [v19 setDebugConfiguration:v16 reply:0];
      v17 = 0;
      v20 = 1;
    }

    else
    {
      v23 = sub_100098A04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315650;
        v36 = "[W5PeerDebugListener handleClientRequest:]";
        v37 = 2080;
        v38 = "W5PeerDebugListener.m";
        v39 = 1024;
        v40 = 69;
        LODWORD(v27) = 28;
        v26 = &v35;
        _os_log_send_and_compose_impl();
      }

      v31 = NSLocalizedFailureReasonErrorKey;
      v32 = @"W5ParamErr";
      v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v19];
      v20 = 2;
    }

    [(W5PeerDebugResponsePayload *)v9 setStatus:v20];
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    v14 = [(W5PeerDebugListener *)self debugManager];
    v28 = 0;
    v15 = [v14 queryDebugConfigurationAndReturnError:&v28];
    v16 = v28;

    if (v16 || !v15)
    {
      v21 = sub_100098A04();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315906;
        v36 = "[W5PeerDebugListener handleClientRequest:]";
        v37 = 2080;
        v38 = "W5PeerDebugListener.m";
        v39 = 1024;
        v40 = 60;
        v41 = 2114;
        v42 = v16;
        LODWORD(v27) = 38;
        v26 = &v35;
        _os_log_send_and_compose_impl();
      }

      v33 = NSLocalizedFailureReasonErrorKey;
      v34 = @"W5ParamErr";
      v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v22];

      v18 = 2;
    }

    else
    {
      [(W5PeerDebugResponsePayload *)v9 setConfiguration:v15];
      v17 = 0;
      v18 = 1;
    }

    [(W5PeerDebugResponsePayload *)v9 setStatus:v18, v26, v27];

    goto LABEL_21;
  }

  v17 = 0;
LABEL_22:
  v24 = [v4 handler];
  (v24)[2](v24, v9, v17);

  return 1;
}

@end