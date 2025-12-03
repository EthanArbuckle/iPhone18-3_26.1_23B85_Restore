@interface DoAPSoundSensorRemoteDevice
- (DoAPSoundSensorRemoteDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d;
- (int)startStreaming;
- (void)activateSoundSensorClient;
- (void)cancelSoundSensorClient;
- (void)clearState;
- (void)handleAudioData:(char *)data dataLength:(int64_t)length;
- (void)handleEventIndicator:(unsigned __int8)indicator eventValue:(char *)value;
- (void)handleStartStreaming;
- (void)handleStopStreaming:(unsigned __int8)streaming;
- (void)start;
- (void)stop;
@end

@implementation DoAPSoundSensorRemoteDevice

- (DoAPSoundSensorRemoteDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d
{
  dCopy = d;
  codecsCopy = codecs;
  if (dCopy == 2)
  {
    v23.receiver = self;
    v23.super_class = DoAPSoundSensorRemoteDevice;
    v8 = [(DoAPDevice *)&v23 initWithCodecs:codecsCopy streamID:2];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codecs, codecs);
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
          allocQueue = [(DoAPDevice *)v9 allocQueue];
          queue = v9->_queue;
          v9->_queue = allocQueue;

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
    selfCopy = self;
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop DoAPSoundSensorRemoteDevice - Destroy DoAPAudioRelay", buf, 2u);
  }

  doapAudioStart = [(DoAPSoundSensorRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(doapAudioStart);

  doapAudioStop = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];

  if (doapAudioStop)
  {
    doapAudioStop2 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(doapAudioStop2);
  }

  doapAudioRelay = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];

  if (doapAudioRelay)
  {
    doapAudioRelay2 = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
    [doapAudioRelay2 invalidate];

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
  codecs = [(DoAPSoundSensorRemoteDevice *)self codecs];
  v5 = [codecs countByEnumeratingWithState:&v31 objects:v38 count:16];
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
          objc_enumerationMutation(codecs);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v31 + 1) + 8 * i) codec];
          if (v28 == 7)
          {
            peripheral = [(DoAPDevice *)self peripheral];
            identifier = [peripheral identifier];
            uUIDString = [identifier UUIDString];
            v13 = [NSString stringWithFormat:@"%@_%@", uUIDString, @"DoAP Sound Sensor"];

            v14 = +[DoAPAudioRelayHub instance];
            [v9 codec];
            v15 = [v14 relayWithIdentifier:v13 deviceType:4 properties:0 codecType:v27];
            [(DoAPSoundSensorRemoteDevice *)self setDoapAudioRelay:v15];

            doapAudioRelay = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
            [doapAudioRelay setDelegate:self];

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

      v6 = [codecs countByEnumeratingWithState:&v31 objects:v38 count:16];
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
  startStreaming = [(DoAPDevice *)&v5 startStreaming];
  if (startStreaming)
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

  return startStreaming;
}

- (void)clearState
{
  if ([(DoAPDevice *)self state]== 5)
  {
    doapAudioStart = [(DoAPSoundSensorRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(doapAudioStart);
  }

  doapAudioStop = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];

  if (doapAudioStop)
  {
    doapAudioStop2 = [(DoAPSoundSensorRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(doapAudioStop2);

    [(DoAPSoundSensorRemoteDevice *)self setDoapAudioStop:0];
  }

  audioBuffer = [(DoAPSoundSensorRemoteDevice *)self audioBuffer];

  if (audioBuffer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    audioBuffer2 = [(DoAPSoundSensorRemoteDevice *)selfCopy audioBuffer];
    [audioBuffer2 removeAllObjects];

    objc_sync_exit(selfCopy);
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
    peripheral = [(DoAPDevice *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v8 = 138477827;
    v9 = uUIDString;
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
    peripheral = [(DoAPDevice *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v8 = 138412290;
    v9 = uUIDString;
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

- (void)handleStopStreaming:(unsigned __int8)streaming
{
  streamingCopy = streaming;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = streamingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPSoundSensorRemoteDevice Received StopStreaming with error code%d", v7, 8u);
  }

  if ([(DoAPDevice *)self state]== 5)
  {
    doapAudioRelay = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
    [doapAudioRelay cancelStream];
  }

  [(DoAPSoundSensorRemoteDevice *)self clearState];
}

- (void)handleAudioData:(char *)data dataLength:(int64_t)length
{
  if ([(DoAPDevice *)self state]<= 6 && data && length >= 1)
  {
    v7 = +[NSDate date];
    [(DoAPSoundSensorRemoteDevice *)self setLastAudioDate:v7];

    v8 = [NSData dataWithBytes:data length:length];
    if ([(DoAPDevice *)self state]== 5)
    {
      doapAudioRelay = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
      isHubConnected = [doapAudioRelay isHubConnected];

      if (!isHubConnected)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000783A4();
        }

        goto LABEL_15;
      }

      selfCopy = [(DoAPSoundSensorRemoteDevice *)self doapAudioRelay];
      [(DoAPSoundSensorRemoteDevice *)selfCopy sendAudioFrame:v8];
    }

    else
    {
      if (!self->_vtEvent && !self->_vtSource)
      {
        state = [(DoAPDevice *)self state];
        v15 = qword_1000DDBC8;
        v16 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (state == 2)
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

      selfCopy = self;
      objc_sync_enter(selfCopy);
      audioBuffer = [(DoAPSoundSensorRemoteDevice *)selfCopy audioBuffer];

      if (audioBuffer)
      {
        audioBuffer2 = [(DoAPSoundSensorRemoteDevice *)selfCopy audioBuffer];
        [audioBuffer2 addObject:v8];
      }

      objc_sync_exit(selfCopy);
    }

LABEL_15:
  }
}

- (void)handleEventIndicator:(unsigned __int8)indicator eventValue:(char *)value
{
  if ((indicator - 3) >= 3 && indicator != 1)
  {
    if (indicator == 2)
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