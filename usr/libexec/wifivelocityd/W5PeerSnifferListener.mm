@interface W5PeerSnifferListener
- (BOOL)handleClientRequest:(id)a3;
- (W5PeerSnifferListener)initWithInterface:(id)a3 snifferManager:(id)a4;
- (id)_runSnifferOnChannels:(id)a3 interface:(id)a4 duration:(double)a5 noAutoStop:(BOOL)a6 rotationInternal:(int64_t)a7 uuid:(id)a8;
- (void)stopSnifferWithUUID:(id)a3 interface:(id)a4;
@end

@implementation W5PeerSnifferListener

- (W5PeerSnifferListener)initWithInterface:(id)a3 snifferManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = W5PeerSnifferListener;
  v9 = [(W5PeerSnifferListener *)&v13 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_interface, a3), !v10->_interface) || (objc_storeStrong(&v10->_snifferManager, a4), !v10->_snifferManager))
  {

    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[W5PeerSnifferListener initWithInterface:snifferManager:]";
      v16 = 2080;
      v17 = "W5PeerSnifferListener.m";
      v18 = 1024;
      v19 = 43;
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)handleClientRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 version];
  v7 = [v6 integerValue];

  v8 = objc_alloc_init(W5PeerSnifferResponsePayload);
  [(W5PeerSnifferResponsePayload *)v8 setVersion:&off_1000EEEA0];
  if (v7 == 1)
  {
    v9 = [v5 type];
    v10 = [v5 channels];
    [v5 duration];
    v12 = v11;
    v13 = [v5 uuid];
    if (v9 == 2)
    {
      v18 = sub_100098A04();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v13;
        LODWORD(v24) = 12;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }

      [(W5PeerSnifferListener *)self stopSnifferWithUUID:v13 interface:self->_interface];
      [(W5PeerSnifferResponsePayload *)v8 setStatus:1];
    }

    else if (v9 == 1 && v10)
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v10;
        LODWORD(v24) = 12;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }

      if (!v13)
      {
        v13 = +[NSUUID UUID];
        v15 = sub_100098A04();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138543362;
          v26 = v13;
          LODWORD(v24) = 12;
          v23 = &v25;
          _os_log_send_and_compose_impl();
        }
      }

      v16 = [v5 noAutoStop];
      if (v16)
      {
        v17 = [v5 rotationInterval];
      }

      else
      {
        v17 = 0;
      }

      v19 = [(W5PeerSnifferListener *)self _runSnifferOnChannels:v10 interface:self->_interface duration:v16 noAutoStop:v17 rotationInternal:v13 uuid:v12];
      [(W5PeerSnifferResponsePayload *)v8 setStatus:1];
      [(W5PeerSnifferResponsePayload *)v8 setFilePaths:v19];
      [(W5PeerSnifferResponsePayload *)v8 setUuid:v13];
      v20 = sub_100098A04();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316162;
        v26 = "[W5PeerSnifferListener handleClientRequest:]";
        v27 = 2080;
        v28 = "W5PeerSnifferListener.m";
        v29 = 1024;
        v30 = 83;
        v31 = 2114;
        v32 = v13;
        v33 = 2114;
        v34 = v19;
        LODWORD(v24) = 48;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }
    }
  }

  v21 = [v4 handler];
  (v21)[2](v21, v8, 0);

  return 1;
}

- (id)_runSnifferOnChannels:(id)a3 interface:(id)a4 duration:(double)a5 noAutoStop:(BOOL)a6 rotationInternal:(int64_t)a7 uuid:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100012DBC;
  v39[4] = sub_100012DCC;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100012DBC;
  v35 = sub_100012DCC;
  v36 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100012DD4;
  v21[3] = &unk_1000E1500;
  v30 = a6;
  v17 = v16;
  v22 = v17;
  v28 = a5;
  v29 = a7;
  v18 = v15;
  v25 = v37;
  v26 = v39;
  v23 = v18;
  v24 = self;
  v27 = &v31;
  [v14 enumerateObjectsUsingBlock:v21];
  v19 = v32[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  return v19;
}

- (void)stopSnifferWithUUID:(id)a3 interface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v6;
    _os_log_send_and_compose_impl();
  }

  snifferManager = self->_snifferManager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001369C;
  v15[3] = &unk_1000E1528;
  v10 = v6;
  v16 = v10;
  [(W5WiFiSniffManager *)snifferManager cancelRequestWithUUID:v10 reply:v15];
  v14 = 0;
  [v7 setUserAutoJoinDisabled:0 error:&v14];
  v11 = v14;
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 userAutoJoinDisabled];
    v17 = 136316418;
    v18 = "[W5PeerSnifferListener stopSnifferWithUUID:interface:]";
    v19 = 2080;
    v20 = "W5PeerSnifferListener.m";
    v21 = 1024;
    v22 = 176;
    v23 = 1024;
    v24 = 0;
    v25 = 1024;
    v26 = v13;
    v27 = 2114;
    v28 = v11;
    _os_log_send_and_compose_impl();
  }
}

@end