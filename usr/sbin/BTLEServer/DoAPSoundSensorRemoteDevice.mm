@interface DoAPSoundSensorRemoteDevice
- (DoAPSoundSensorRemoteDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4;
- (int)startStreaming;
- (void)activateSoundSensorClient;
- (void)cancelSoundSensorClient;
- (void)clearState;
- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4;
- (void)handleEventIndicator:(unsigned __int8)a3 eventValue:(char *)a4;
- (void)handleStartStreaming;
- (void)handleStopStreaming:(unsigned __int8)a3;
- (void)start;
- (void)stop;
@end

@implementation DoAPSoundSensorRemoteDevice

- (DoAPSoundSensorRemoteDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4
{
  v4 = a4;
  v7 = a3;
  if (v4 == 2)
  {
    v23.receiver = self;
    v23.super_class = DoAPSoundSensorRemoteDevice;
    v8 = [(DoAPDevice *)&v23 initWithCodecs:v7 streamID:2];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codecs, a3);
      v9->_vtEvent = 0;
      v9->_vtSource = 0;
      v10 = objc_alloc_init(NSMutableArray);
      audioBuffer = v9->_audioBuffer;
      v9->_audioBuffer = v10;

      v12 = dispatch_group_create();
      groupStart = v9->_groupStart;
      v9->_groupStart = v12;

      if (v9->_groupStart)
      {
        v14 = dispatch_semaphore_create(1);
        doapAudioStart = v9->_doapAudioStart;
        v9->_doapAudioStart = v14;

        if (v9->_doapAudioStart)
        {
          v16 = [(DoAPDevice *)v9 allocQueue];
          queue = v9->_queue;
          v9->_queue = v16;

          v18 = v9->_queue;
          if (v18)
          {
            dispatch_set_context(v18, v9);
            dispatch_set_finalizer_f(v9->_queue, j__objc_msgSend_notifyDidStop_0);
            goto LABEL_11;
          }

          v20 = v9->_doapAudioStart;
          v9->_doapAudioStart = 0;
        }

        v21 = v9->_groupStart;
        v9->_groupStart = 0;
      }

      v9 = 0;
    }

LABEL_11:
    self = v9;
    v19 = self;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop DoAPSoundSensorRemoteDevice - Destroy DoAPAudioRelay", buf, 2u);
  }

  v4 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(v4);

  v5 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];

  if (v5)
  {
    v6 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(v6);
  }

  v7 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];

  if (v7)
  {
    v8 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
    [v8 invalidate];

    [(DoAPSoundSensorRemoteDevice *)self setDoapAudioRelay:0];
  }

  v11.receiver = self;
  v11.super_class = DoAPSoundSensorRemoteDevice;
  [(DoAPDevice *)&v11 stop];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BEA8;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  v35.receiver = self;
  v35.super_class = DoAPSoundSensorRemoteDevice;
  [(DoAPDevice *)&v35 start];
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start DoAPSoundSensorRemoteDevice - Create DoAPAudioRelay", buf, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(DoAPSoundSensorRemoteDevice *)self codecs];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v31 + 1) + 8 * i) codec];
          if (v28 == 7)
          {
            v10 = [(DoAPDevice *)self peripheral];
            v11 = [v10 identifier];
            v12 = [v11 UUIDString];
            v13 = [NSString stringWithFormat:@"%@_%@", v12, @"DoAP Sound Sensor"];

            v14 = +[DoAPAudioRelayHub instance];
            [v9 codec];
            v15 = [v14 relayWithIdentifier:v13 deviceType:4 properties:0 codecType:v27];
            [(DoAPSoundSensorRemoteDevice *)self setDoapAudioRelay:v15];

            v16 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
            [v16 setDelegate:self];

            v17 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v17;
              [v9 codec];
              *buf = 67109120;
              v37 = v26;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Start DoAPSoundSensorRemoteDevice - Send SelectCodec(%u) msg", buf, 8u);
            }

            groupStart = self->_groupStart;
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10004C320;
            block[3] = &unk_1000BD8A8;
            block[4] = self;
            block[5] = v9;
            dispatch_group_async(groupStart, queue, block);
            v22 = self->_groupStart;
            v23 = dispatch_get_global_queue(21, 0);
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10004C370;
            v24[3] = &unk_1000BD398;
            v24[4] = self;
            dispatch_group_async(v22, v23, v24);

            return;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007827C();
  }
}

- (int)startStreaming
{
  v5.receiver = self;
  v5.super_class = DoAPSoundSensorRemoteDevice;
  v3 = [(DoAPDevice *)&v5 startStreaming];
  if (v3)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000782BC();
    }
  }

  else
  {
    self->_vtEvent = 1;
    self->_vtSource = 3;
  }

  return v3;
}

- (void)clearState
{
  if ([(DoAPDevice *)self state]== 5)
  {
    v3 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(v3);
  }

  v4 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];

  if (v4)
  {
    v5 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(v5);

    [(DoAPSoundSensorRemoteDevice *)self setDoapAudioStop:0];
  }

  v6 = [(DoAPSoundSensorRemoteDevice *)self audioBuffer];

  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(DoAPSoundSensorRemoteDevice *)v7 audioBuffer];
    [v8 removeAllObjects];

    objc_sync_exit(v7);
  }

  obj = self;
  objc_sync_enter(obj);
  [(DoAPSoundSensorRemoteDevice *)obj clearEvent];
  [(DoAPDevice *)obj doapStateSet:2];
  objc_sync_exit(obj);
}

- (void)activateSoundSensorClient
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(DoAPDevice *)self peripheral];
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    v8 = 138477827;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensor - activateSoundSensorClient: ** TBD ** for ID %{private}@", &v8, 0xCu);
  }

  [(DoAPDevice *)self setHighPriorityLink:1 burstTime:&off_1000C3C18];
}

- (void)cancelSoundSensorClient
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(DoAPDevice *)self peripheral];
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensor - cancelSoundSensorClient - id %@", &v8, 0xCu);
  }
}

- (void)handleStartStreaming
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensorRemoteDevice received StartStreaming", v3, 2u);
  }
}

- (void)handleStopStreaming:(unsigned __int8)a3
{
  v3 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensorRemoteDevice Received StopStreaming with error code%d", v7, 8u);
  }

  if ([(DoAPDevice *)self state]== 5)
  {
    v6 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
    [v6 cancelStream];
  }

  [(DoAPSoundSensorRemoteDevice *)self clearState];
}

- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4
{
  if ([(DoAPDevice *)self state]<= 6 && a3 && a4 >= 1)
  {
    v7 = +[NSDate date];
    [(DoAPSoundSensorRemoteDevice *)self setLastAudioDate:v7];

    v8 = [NSData dataWithBytes:a3 length:a4];
    if ([(DoAPDevice *)self state]== 5)
    {
      v9 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
      v10 = [v9 isHubConnected];

      if (!v10)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000783A4();
        }

        goto LABEL_15;
      }

      v11 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
      [(DoAPSoundSensorRemoteDevice *)v11 sendAudioFrame:v8];
    }

    else
    {
      if (!self->_vtEvent && !self->_vtSource)
      {
        v14 = [(DoAPDevice *)self state];
        v15 = qword_1000DDBC8;
        v16 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (v14 == 2)
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensor - handleAudioData: Audio received while DoAP is Active; calling stopStreaming", buf, 2u);
          }

          [(DoAPSoundSensorRemoteDevice *)self stopStreaming:6];
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10004CC34;
          block[3] = &unk_1000BD398;
          block[4] = self;
          dispatch_async(queue, block);
        }

        else if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensor - Audio data ignored", buf, 2u);
        }

        goto LABEL_15;
      }

      v11 = self;
      objc_sync_enter(v11);
      v12 = [(DoAPSoundSensorRemoteDevice *)v11 audioBuffer];

      if (v12)
      {
        v13 = [(DoAPSoundSensorRemoteDevice *)v11 audioBuffer];
        [v13 addObject:v8];
      }

      objc_sync_exit(v11);
    }

LABEL_15:
  }
}

- (void)handleEventIndicator:(unsigned __int8)a3 eventValue:(char *)a4
{
  if ((a3 - 3) >= 3 && a3 != 1)
  {
    if (a3 == 2)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000783E4();
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100078424();
    }
  }
}

@end