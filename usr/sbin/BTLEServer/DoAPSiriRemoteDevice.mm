@interface DoAPSiriRemoteDevice
- (DoAPSiriRemoteDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4;
- (int)startStreaming;
- (void)activateSiri:(int64_t)a3;
- (void)cancelSiri;
- (void)clearState;
- (void)doapAudioDidStop:(id)a3;
- (void)doapAudioWillStart:(id)a3;
- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4;
- (void)handleEventIndicator:(unsigned __int8)a3 eventValue:(char *)a4;
- (void)handleStartStreaming;
- (void)handleStopStreaming:(unsigned __int8)a3;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)start;
- (void)stop;
- (void)waitForSiriAudioToStop:(id)a3;
@end

@implementation DoAPSiriRemoteDevice

- (DoAPSiriRemoteDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4
{
  v4 = a4;
  v7 = a3;
  if (v4 == 1)
  {
    v27.receiver = self;
    v27.super_class = DoAPSiriRemoteDevice;
    v8 = [(DoAPDevice *)&v27 initWithCodecs:v7 streamID:1];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codecs, a3);
      v9->_vtEvent = 0;
      v9->_vtSource = 0;
      v10 = [[NSMutableArray alloc] initWithCapacity:200];
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
            dispatch_set_finalizer_f(v9->_queue, j__objc_msgSend_notifyDidStop_1);
            v19 = [AFNotifyObserver alloc];
            v20 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
            v21 = [v19 initWithName:v20 options:1 queue:&_dispatch_main_q delegate:v9];
            notifyObserver = v9->_notifyObserver;
            v9->_notifyObserver = v21;

            v9->_siriState = 0;
            goto LABEL_11;
          }

          v24 = v9->_doapAudioStart;
          v9->_doapAudioStart = 0;
        }

        v25 = v9->_groupStart;
        v9->_groupStart = 0;
      }

      v9 = 0;
    }

LABEL_11:
    self = v9;
    v23 = self;
    goto LABEL_12;
  }

  v23 = 0;
LABEL_12:

  return v23;
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop DoAPSiriRemoteDevice - Destroy DoAPAudioRelay", buf, 2u);
  }

  v4 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(v4);

  v5 = [(DoAPSiriRemoteDevice *)self doapAudioStop];

  if (v5)
  {
    v6 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(v6);
  }

  v7 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];

  if (v7)
  {
    v8 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
    [v8 invalidate];

    [(DoAPSiriRemoteDevice *)self setDoapAudioRelay:0];
  }

  [(AFNotifyObserver *)self->_notifyObserver invalidate];
  notifyObserver = self->_notifyObserver;
  self->_notifyObserver = 0;

  v12.receiver = self;
  v12.super_class = DoAPSiriRemoteDevice;
  [(DoAPDevice *)&v12 stop];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059470;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  v35.receiver = self;
  v35.super_class = DoAPSiriRemoteDevice;
  [(DoAPDevice *)&v35 start];
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start DoAPSiriRemoteDevice - Create DoAPAudioRelay", buf, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(DoAPSiriRemoteDevice *)self codecs];
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
            if (_os_feature_enabled_impl())
            {
              v11 = [(DoAPDevice *)self peripheral];
              v12 = [v11 identifier];
              v13 = [v12 UUIDString];
              v14 = [NSString stringWithFormat:@"%@_%@", v13, @"DoAP Siri"];
            }

            else
            {
              v11 = [(DoAPDevice *)self peripheral];
              v12 = [v11 identifier];
              v14 = [v12 UUIDString];
            }

            v15 = +[DoAPAudioRelayHub instance];
            [v9 codec];
            v16 = [v15 relayWithIdentifier:v14 deviceType:3 properties:0 codecType:v27];
            [(DoAPSiriRemoteDevice *)self setDoapAudioRelay:v16];

            v17 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
            [v17 setDelegate:self];

            v18 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              [v9 codec];
              *buf = 67109120;
              v37 = v26;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Start DoAPSiriRemoteDevice - Send SelectCodec(%u) msg", buf, 8u);
            }

            groupStart = self->_groupStart;
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10005992C;
            block[3] = &unk_1000BD8A8;
            block[4] = self;
            block[5] = v9;
            dispatch_group_async(groupStart, queue, block);
            v22 = self->_groupStart;
            v23 = dispatch_get_global_queue(21, 0);
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10005997C;
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
    sub_10007A17C();
  }
}

- (int)startStreaming
{
  v5.receiver = self;
  v5.super_class = DoAPSiriRemoteDevice;
  v3 = [(DoAPDevice *)&v5 startStreaming];
  if (v3)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A1B8();
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
    v3 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(v3);
  }

  v4 = [(DoAPSiriRemoteDevice *)self doapAudioStop];

  if (v4)
  {
    v5 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(v5);

    [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
  }

  v6 = [(DoAPSiriRemoteDevice *)self audioBuffer];

  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(DoAPSiriRemoteDevice *)v7 audioBuffer];
    [v8 removeAllObjects];

    objc_sync_exit(v7);
  }

  obj = self;
  objc_sync_enter(obj);
  [(DoAPSiriRemoteDevice *)obj clearEvent];
  [(DoAPDevice *)obj doapStateSet:2];
  objc_sync_exit(obj);
}

- (void)activateSiri:(int64_t)a3
{
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(DoAPDevice *)self peripheral];
    v8 = [v7 identifier];
    v9 = [v8 UUIDString];
    *buf = 134218243;
    v21 = a3;
    v22 = 2113;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri - activateSiri: Event %tu for ID %{private}@", buf, 0x16u);
  }

  if ((a3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(DoAPDevice *)self setHighPriorityLink:1 burstTime:&off_1000C3D08];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100059F44;
    v17[3] = &unk_1000BE3D8;
    v17[4] = self;
    v10 = objc_retainBlock(v17);
    if (a3 == 2)
    {
      mach_absolute_time();
      v11 = [(DoAPDevice *)self peripheral];
      v12 = [v11 identifier];
      v13 = [v12 UUIDString];
      AFSiriActivationBluetoothDeviceVoice();
    }

    else
    {
      v14 = [(DoAPDevice *)self state]!= 5;
      mach_absolute_time();
      v11 = [(DoAPDevice *)self peripheral];
      v12 = [v11 identifier];
      v13 = [v12 UUIDString];
      v18[0] = AFSiriActivationUserInfoKey[0];
      v15 = [NSNumber numberWithBool:v14];
      v18[1] = AFSiriActivationUserInfoKey[9];
      v19[0] = v15;
      v19[1] = &__kCFBooleanFalse;
      v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
      AFSiriActivationBluetoothDeviceDoubleTap();
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A298();
  }
}

- (void)cancelSiri
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(DoAPDevice *)self peripheral];
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Cancellation id %@", buf, 0xCu);
  }

  mach_absolute_time();
  v8 = [(DoAPDevice *)self peripheral];
  v9 = [v8 identifier];
  v10 = [v9 UUIDString];
  v11 = AFSiriActivationUserInfoKey[9];
  v13[0] = AFSiriActivationUserInfoKey[0];
  v13[1] = v11;
  v14[0] = &__kCFBooleanFalse;
  v14[1] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  AFSiriActivationBluetoothDeviceDoubleTap();
}

- (void)handleStartStreaming
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DoAPSiriRemoteDevice received StartStreaming", v3, 2u);
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPSiriRemoteDevice Received StopStreaming with error code%d", v7, 8u);
  }

  if ([(DoAPDevice *)self state]== 5)
  {
    v6 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
    [v6 cancelStream];
  }

  [(DoAPSiriRemoteDevice *)self clearState];
}

- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4
{
  if ([(DoAPDevice *)self state]<= 6 && a3 && a4 >= 1)
  {
    v7 = +[NSDate date];
    [(DoAPSiriRemoteDevice *)self setLastAudioDate:v7];

    v8 = [NSData dataWithBytes:a3 length:a4];
    if ([(DoAPDevice *)self state]== 5)
    {
      v9 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
      v10 = [v9 isHubConnected];

      if (!v10)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007A44C();
        }

        goto LABEL_17;
      }

      v11 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
      [(DoAPSiriRemoteDevice *)v11 sendAudioFrame:v8];
    }

    else
    {
      if (!self->_vtEvent && !self->_vtSource)
      {
        v17 = [(DoAPDevice *)self state];
        v18 = qword_1000DDBC8;
        v19 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (v17 == 2)
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DoAPSiri - handleAudioData: Audio received while DoAP is Active; calling stopStreaming", buf, 2u);
          }

          [(DoAPSiriRemoteDevice *)self stopStreaming:6];
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005A810;
          block[3] = &unk_1000BD398;
          block[4] = self;
          dispatch_async(queue, block);
        }

        else if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Audio data ignored", buf, 2u);
        }

        goto LABEL_17;
      }

      v11 = self;
      objc_sync_enter(v11);
      v12 = [(DoAPSiriRemoteDevice *)v11 audioBuffer];

      if (v12)
      {
        v13 = [(DoAPSiriRemoteDevice *)v11 audioBuffer];
        v14 = [v13 count];

        if (v14 >= 0xC8)
        {
          v15 = [(DoAPSiriRemoteDevice *)v11 audioBuffer];
          [v15 removeObjectAtIndex:0];
        }

        v16 = [(DoAPSiriRemoteDevice *)v11 audioBuffer];
        [v16 addObject:v8];
      }

      objc_sync_exit(v11);
    }

LABEL_17:
  }
}

- (void)handleEventIndicator:(unsigned __int8)a3 eventValue:(char *)a4
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3u:
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Received StreamingEnd EventIndicator", &v38, 2u);
        }

        v15 = [(DoAPSiriRemoteDevice *)self doapAudioStop];

        if (v15)
        {
          v16 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
          dispatch_semaphore_signal(v16);
        }

        v17 = [(DoAPSiriRemoteDevice *)self audioBuffer];

        if (v17)
        {
          v18 = self;
          objc_sync_enter(v18);
          v19 = [(DoAPSiriRemoteDevice *)v18 audioBuffer];
          [v19 removeAllObjects];

          objc_sync_exit(v18);
        }

        if ([(DoAPDevice *)self state]== 5)
        {
          [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
          v20 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
          dispatch_semaphore_signal(v20);
        }

        v21 = self;
        objc_sync_enter(v21);
        [(DoAPSiriRemoteDevice *)v21 clearEvent];
        [(DoAPDevice *)v21 doapStateSet:2];
        objc_sync_exit(v21);

        break;
      case 5u:
        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Received SiriCancel EventIndicator", &v38, 2u);
        }

        [(DoAPSiriRemoteDevice *)self cancelSiri];
        break;
      case 6u:
        v6 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *a4;
          v38 = 67109120;
          LODWORD(v39[0]) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Doap Received PTT/HTT Button Event (value = %d)", &v38, 8u);
        }

        if ([(DoAPDevice *)self state]== 2 && *a4 == 1)
        {
          self->_vtEvent = 6;
          self->_vtSource = 4;
          mach_absolute_time();
          v8 = [(DoAPDevice *)self peripheral];
          v9 = [v8 identifier];
          v10 = [v9 UUIDString];
          AFSiriActivationBluetoothDeviceButtonPress();
        }

        else if ([(DoAPDevice *)self state]== 2 && *a4 == 2)
        {
          mach_absolute_time();
          v27 = [(DoAPDevice *)self peripheral];
          v28 = [v27 identifier];
          v29 = [v28 UUIDString];
          AFSiriActivationBluetoothDeviceButtonRelease();
        }

        else
        {
          v30 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_10007A488(v30, self);
          }
        }

        return;
      default:
        goto LABEL_37;
    }

    return;
  }

  if (a3 == 1)
  {
    v23 = self;
    objc_sync_enter(v23);
    if ([(DoAPDevice *)v23 state]!= 2 && [(DoAPDevice *)v23 state]!= 5)
    {
LABEL_56:
      objc_sync_exit(v23);

      return;
    }

    v24 = *a4;
    if (v24 == 1)
    {
      if ([(DoAPDevice *)v23 state]== 2)
      {
        v25 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38) = 0;
          v26 = 2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "DoAPSiri - handleEventIndicator: SiriActivation by VoiceTrigger", &v38, 2u);
        }

        else
        {
          v26 = 2;
        }

LABEL_53:
        if ([(DoAPDevice *)v23 state]== 2)
        {
          [(DoAPDevice *)v23 doapStateSet:3];
        }

        v23->_vtEvent = 1;
        v23->_vtSource = *a4;
        [(DoAPSiriRemoteDevice *)v23 activateSiri:v26];
        goto LABEL_56;
      }

      v24 = *a4;
    }

    v31 = qword_1000DDBC8;
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v24 != 2)
    {
      if (v32)
      {
        v34 = [(DoAPDevice *)v23 doapStateNameFor:[(DoAPDevice *)v23 state]];
        v38 = 67109378;
        LODWORD(v39[0]) = 1;
        WORD2(v39[0]) = 2114;
        *(v39 + 6) = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "DoAPSiri - handleEventIndicator: Unhandled event type %d while %{public}@", &v38, 0x12u);
      }

      goto LABEL_56;
    }

    if (v32)
    {
      v33 = [(DoAPDevice *)v23 doapStateNameFor:[(DoAPDevice *)v23 state]];
      v38 = 138543362;
      *&v39[0] = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "DoAPSiri - handleEventIndicator: SiriActivation by DoubleTap while %{public}@", &v38, 0xCu);
    }

    v26 = 1;
    goto LABEL_53;
  }

  if (a3 != 2)
  {
LABEL_37:
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A524();
    }

    return;
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Received MyriadScore EventIndicator", &v38, 2u);
  }

  if ([(DoAPDevice *)self state]>= 2 && self->_vtEvent == 1 && self->_vtSource != 3)
  {
    v12 = *a4;
    v13 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 134217984;
      v39[0] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Siri Myriad Score %f", &v38, 0xCu);
    }

    mach_absolute_time();
    v35 = [(DoAPDevice *)self peripheral];
    v36 = [v35 identifier];
    v37 = [v36 UUIDString];
    AFSiriActivationHearstBoron();
  }
}

- (void)doapAudioWillStart:(id)a3
{
  v4 = a3;
  v5 = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (v5 < 7)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri AudioWillStart", buf, 2u);
    }

    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005B2A0;
    v8[3] = &unk_1000BD770;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A604();
  }
}

- (void)waitForSiriAudioToStop:(id)a3
{
  v4 = a3;
  v5 = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (v5 < 7)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri waitForSiriAudioToStop", buf, 2u);
    }

    v7 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
    [v7 timeIntervalSinceNow];
    v9 = fabs(v8) < 0.5;

    if (v9)
    {
      v10 = [(DoAPSiriRemoteDevice *)self doapAudioStop];

      if (v10)
      {
        v11 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
        [v11 timeIntervalSinceNow];
        v13 = v12;

        v14 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
        v15 = dispatch_time(0, 1000000 * vcvtpd_s64_f64((v13 + 0.5) * 1000.0));
        v16 = dispatch_semaphore_wait(v14, v15);

        v17 = qword_1000DDBC8;
        v18 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          if (v18)
          {
            v19 = v17;
            v20 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
            [v20 timeIntervalSinceNow];
            *buf = 134217984;
            v46 = fabs(v21) * 1000.0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Received Siri audio data %f ms ago.", buf, 0xCu);
          }

          queue = self->_queue;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10005BE3C;
          v41[3] = &unk_1000BD770;
          v41[4] = self;
          v42 = v4;
          dispatch_async(queue, v41);
        }

        else
        {
          if (v18)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Received streamEnd event.", buf, 2u);
          }

          [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
          if ([(DoAPDevice *)self state]< 7)
          {
            (*(v4 + 2))(v4, 0);
          }

          else
          {
            v37 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "DoAPSiri - SiriDevice is about to be stopped", buf, 2u);
            }
          }

          v38 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
          dispatch_semaphore_signal(v38);

          v39 = self;
          objc_sync_enter(v39);
          v40 = [(DoAPSiriRemoteDevice *)v39 audioBuffer];
          [v40 removeAllObjects];

          objc_sync_exit(v39);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007A750();
        }

        v43 = NSLocalizedDescriptionKey;
        v44 = @"No doapAudioStop semaphore";
        v32 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v33 = [NSError errorWithDomain:NSMachErrorDomain code:-536870165 userInfo:v32];

        (*(v4 + 2))(v4, v33);
        v34 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
        dispatch_semaphore_signal(v34);

        v35 = self;
        objc_sync_enter(v35);
        v36 = [(DoAPSiriRemoteDevice *)v35 audioBuffer];
        [v36 removeAllObjects];

        objc_sync_exit(v35);
      }
    }

    else
    {
      v23 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
        [v25 timeIntervalSinceNow];
        *buf = 134217984;
        v46 = fabs(v26) * 1000.0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Have not received audio data for %f ms. Stop Siri session.", buf, 0xCu);
      }

      [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
      (*(v4 + 2))(v4, 0);
      v27 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
      dispatch_semaphore_signal(v27);

      v28 = [(DoAPSiriRemoteDevice *)self audioBuffer];

      if (v28)
      {
        v29 = self;
        objc_sync_enter(v29);
        v30 = [(DoAPSiriRemoteDevice *)v29 audioBuffer];
        [v30 removeAllObjects];

        objc_sync_exit(v29);
      }

      v31 = self;
      objc_sync_enter(v31);
      [(DoAPSiriRemoteDevice *)v31 clearEvent];
      [(DoAPDevice *)v31 doapStateSet:2];
      objc_sync_exit(v31);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A78C();
  }
}

- (void)doapAudioDidStop:(id)a3
{
  v4 = a3;
  v5 = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (v5 < 7)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri AudioDidStop", buf, 2u);
    }

    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005BF64;
    v8[3] = &unk_1000BD770;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A7C8();
  }
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 != a5 && self->_notifyObserver == v8)
  {
    self->_siriState = a5;
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      siriState = self->_siriState;
      v12[0] = 67109376;
      v12[1] = a4;
      v13 = 1024;
      v14 = siriState;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DoAPSiri - SiriState changed 0x%0X -> 0x%0X", v12, 0xEu);
    }

    [(DoAPSiriRemoteDevice *)self eventIndicator:4 eventValue:self->_siriState];
  }
}

@end