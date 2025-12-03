@interface W5PeerSnifferListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerSnifferListener)initWithInterface:(id)interface snifferManager:(id)manager;
- (id)_runSnifferOnChannels:(id)channels interface:(id)interface duration:(double)duration noAutoStop:(BOOL)stop rotationInternal:(int64_t)internal uuid:(id)uuid;
- (void)stopSnifferWithUUID:(id)d interface:(id)interface;
@end

@implementation W5PeerSnifferListener

- (W5PeerSnifferListener)initWithInterface:(id)interface snifferManager:(id)manager
{
  interfaceCopy = interface;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = W5PeerSnifferListener;
  v9 = [(W5PeerSnifferListener *)&v13 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_interface, interface), !v10->_interface) || (objc_storeStrong(&v10->_snifferManager, manager), !v10->_snifferManager))
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

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  version = [payload version];
  integerValue = [version integerValue];

  v8 = objc_alloc_init(W5PeerSnifferResponsePayload);
  [(W5PeerSnifferResponsePayload *)v8 setVersion:&off_1000EEEA0];
  if (integerValue == 1)
  {
    type = [payload type];
    channels = [payload channels];
    [payload duration];
    v12 = v11;
    uuid = [payload uuid];
    if (type == 2)
    {
      v18 = sub_100098A04();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = uuid;
        LODWORD(v24) = 12;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }

      [(W5PeerSnifferListener *)self stopSnifferWithUUID:uuid interface:self->_interface];
      [(W5PeerSnifferResponsePayload *)v8 setStatus:1];
    }

    else if (type == 1 && channels)
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = channels;
        LODWORD(v24) = 12;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }

      if (!uuid)
      {
        uuid = +[NSUUID UUID];
        v15 = sub_100098A04();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138543362;
          v26 = uuid;
          LODWORD(v24) = 12;
          v23 = &v25;
          _os_log_send_and_compose_impl();
        }
      }

      noAutoStop = [payload noAutoStop];
      if (noAutoStop)
      {
        rotationInterval = [payload rotationInterval];
      }

      else
      {
        rotationInterval = 0;
      }

      v19 = [(W5PeerSnifferListener *)self _runSnifferOnChannels:channels interface:self->_interface duration:noAutoStop noAutoStop:rotationInterval rotationInternal:uuid uuid:v12];
      [(W5PeerSnifferResponsePayload *)v8 setStatus:1];
      [(W5PeerSnifferResponsePayload *)v8 setFilePaths:v19];
      [(W5PeerSnifferResponsePayload *)v8 setUuid:uuid];
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
        v32 = uuid;
        v33 = 2114;
        v34 = v19;
        LODWORD(v24) = 48;
        v23 = &v25;
        _os_log_send_and_compose_impl();
      }
    }
  }

  handler = [requestCopy handler];
  (handler)[2](handler, v8, 0);

  return 1;
}

- (id)_runSnifferOnChannels:(id)channels interface:(id)interface duration:(double)duration noAutoStop:(BOOL)stop rotationInternal:(int64_t)internal uuid:(id)uuid
{
  channelsCopy = channels;
  interfaceCopy = interface;
  uuidCopy = uuid;
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
  stopCopy = stop;
  v17 = uuidCopy;
  v22 = v17;
  durationCopy = duration;
  internalCopy = internal;
  v18 = interfaceCopy;
  v25 = v37;
  v26 = v39;
  v23 = v18;
  selfCopy = self;
  v27 = &v31;
  [channelsCopy enumerateObjectsUsingBlock:v21];
  v19 = v32[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  return v19;
}

- (void)stopSnifferWithUUID:(id)d interface:(id)interface
{
  dCopy = d;
  interfaceCopy = interface;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = dCopy;
    _os_log_send_and_compose_impl();
  }

  snifferManager = self->_snifferManager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001369C;
  v15[3] = &unk_1000E1528;
  v10 = dCopy;
  v16 = v10;
  [(W5WiFiSniffManager *)snifferManager cancelRequestWithUUID:v10 reply:v15];
  v14 = 0;
  [interfaceCopy setUserAutoJoinDisabled:0 error:&v14];
  v11 = v14;
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    userAutoJoinDisabled = [interfaceCopy userAutoJoinDisabled];
    v17 = 136316418;
    v18 = "[W5PeerSnifferListener stopSnifferWithUUID:interface:]";
    v19 = 2080;
    v20 = "W5PeerSnifferListener.m";
    v21 = 1024;
    v22 = 176;
    v23 = 1024;
    v24 = 0;
    v25 = 1024;
    v26 = userAutoJoinDisabled;
    v27 = 2114;
    v28 = v11;
    _os_log_send_and_compose_impl();
  }
}

@end