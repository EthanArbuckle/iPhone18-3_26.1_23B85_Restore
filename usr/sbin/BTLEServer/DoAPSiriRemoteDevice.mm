@interface DoAPSiriRemoteDevice
- (DoAPSiriRemoteDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d;
- (int)startStreaming;
- (void)activateSiri:(int64_t)siri;
- (void)cancelSiri;
- (void)clearState;
- (void)doapAudioDidStop:(id)stop;
- (void)doapAudioWillStart:(id)start;
- (void)handleAudioData:(char *)data dataLength:(int64_t)length;
- (void)handleEventIndicator:(unsigned __int8)indicator eventValue:(char *)value;
- (void)handleStartStreaming;
- (void)handleStopStreaming:(unsigned __int8)streaming;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)start;
- (void)stop;
- (void)waitForSiriAudioToStop:(id)stop;
@end

@implementation DoAPSiriRemoteDevice

- (DoAPSiriRemoteDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d
{
  dCopy = d;
  codecsCopy = codecs;
  if (dCopy == 1)
  {
    v27.receiver = self;
    v27.super_class = DoAPSiriRemoteDevice;
    v8 = [(DoAPDevice *)&v27 initWithCodecs:codecsCopy streamID:1];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codecs, codecs);
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
          allocQueue = [(DoAPDevice *)v9 allocQueue];
          queue = v9->_queue;
          v9->_queue = allocQueue;

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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop DoAPSiriRemoteDevice - Destroy DoAPAudioRelay", buf, 2u);
  }

  doapAudioStart = [(DoAPSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(doapAudioStart);

  doapAudioStop = [(DoAPSiriRemoteDevice *)self doapAudioStop];

  if (doapAudioStop)
  {
    doapAudioStop2 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(doapAudioStop2);
  }

  doapAudioRelay = [(DoAPSiriRemoteDevice *)self doapAudioRelay];

  if (doapAudioRelay)
  {
    doapAudioRelay2 = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
    [doapAudioRelay2 invalidate];

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
  codecs = [(DoAPSiriRemoteDevice *)self codecs];
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
            if (_os_feature_enabled_impl())
            {
              peripheral = [(DoAPDevice *)self peripheral];
              identifier = [peripheral identifier];
              uUIDString = [identifier UUIDString];
              uUIDString2 = [NSString stringWithFormat:@"%@_%@", uUIDString, @"DoAP Siri"];
            }

            else
            {
              peripheral = [(DoAPDevice *)self peripheral];
              identifier = [peripheral identifier];
              uUIDString2 = [identifier UUIDString];
            }

            v15 = +[DoAPAudioRelayHub instance];
            [v9 codec];
            v16 = [v15 relayWithIdentifier:uUIDString2 deviceType:3 properties:0 codecType:v27];
            [(DoAPSiriRemoteDevice *)self setDoapAudioRelay:v16];

            doapAudioRelay = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
            [doapAudioRelay setDelegate:self];

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
    sub_10007A17C();
  }
}

- (int)startStreaming
{
  v5.receiver = self;
  v5.super_class = DoAPSiriRemoteDevice;
  startStreaming = [(DoAPDevice *)&v5 startStreaming];
  if (startStreaming)
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

  return startStreaming;
}

- (void)clearState
{
  if ([(DoAPDevice *)self state]== 5)
  {
    doapAudioStart = [(DoAPSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(doapAudioStart);
  }

  doapAudioStop = [(DoAPSiriRemoteDevice *)self doapAudioStop];

  if (doapAudioStop)
  {
    doapAudioStop2 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
    dispatch_semaphore_signal(doapAudioStop2);

    [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
  }

  audioBuffer = [(DoAPSiriRemoteDevice *)self audioBuffer];

  if (audioBuffer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    audioBuffer2 = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
    [audioBuffer2 removeAllObjects];

    objc_sync_exit(selfCopy);
  }

  obj = self;
  objc_sync_enter(obj);
  [(DoAPSiriRemoteDevice *)obj clearEvent];
  [(DoAPDevice *)obj doapStateSet:2];
  objc_sync_exit(obj);
}

- (void)activateSiri:(int64_t)siri
{
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    peripheral = [(DoAPDevice *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    *buf = 134218243;
    siriCopy = siri;
    v22 = 2113;
    v23 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri - activateSiri: Event %tu for ID %{private}@", buf, 0x16u);
  }

  if ((siri - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(DoAPDevice *)self setHighPriorityLink:1 burstTime:&off_1000C3D08];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100059F44;
    v17[3] = &unk_1000BE3D8;
    v17[4] = self;
    v10 = objc_retainBlock(v17);
    if (siri == 2)
    {
      mach_absolute_time();
      peripheral2 = [(DoAPDevice *)self peripheral];
      identifier2 = [peripheral2 identifier];
      uUIDString2 = [identifier2 UUIDString];
      AFSiriActivationBluetoothDeviceVoice();
    }

    else
    {
      v14 = [(DoAPDevice *)self state]!= 5;
      mach_absolute_time();
      peripheral2 = [(DoAPDevice *)self peripheral];
      identifier2 = [peripheral2 identifier];
      uUIDString2 = [identifier2 UUIDString];
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
    peripheral = [(DoAPDevice *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138412290;
    v16 = uUIDString;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Cancellation id %@", buf, 0xCu);
  }

  mach_absolute_time();
  peripheral2 = [(DoAPDevice *)self peripheral];
  identifier2 = [peripheral2 identifier];
  uUIDString2 = [identifier2 UUIDString];
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

- (void)handleStopStreaming:(unsigned __int8)streaming
{
  streamingCopy = streaming;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = streamingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPSiriRemoteDevice Received StopStreaming with error code%d", v7, 8u);
  }

  if ([(DoAPDevice *)self state]== 5)
  {
    doapAudioRelay = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
    [doapAudioRelay cancelStream];
  }

  [(DoAPSiriRemoteDevice *)self clearState];
}

- (void)handleAudioData:(char *)data dataLength:(int64_t)length
{
  if ([(DoAPDevice *)self state]<= 6 && data && length >= 1)
  {
    v7 = +[NSDate date];
    [(DoAPSiriRemoteDevice *)self setLastAudioDate:v7];

    v8 = [NSData dataWithBytes:data length:length];
    if ([(DoAPDevice *)self state]== 5)
    {
      doapAudioRelay = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
      isHubConnected = [doapAudioRelay isHubConnected];

      if (!isHubConnected)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007A44C();
        }

        goto LABEL_17;
      }

      selfCopy = [(DoAPSiriRemoteDevice *)self doapAudioRelay];
      [(DoAPSiriRemoteDevice *)selfCopy sendAudioFrame:v8];
    }

    else
    {
      if (!self->_vtEvent && !self->_vtSource)
      {
        state = [(DoAPDevice *)self state];
        v18 = qword_1000DDBC8;
        v19 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (state == 2)
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

      selfCopy = self;
      objc_sync_enter(selfCopy);
      audioBuffer = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];

      if (audioBuffer)
      {
        audioBuffer2 = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
        v14 = [audioBuffer2 count];

        if (v14 >= 0xC8)
        {
          audioBuffer3 = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
          [audioBuffer3 removeObjectAtIndex:0];
        }

        audioBuffer4 = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
        [audioBuffer4 addObject:v8];
      }

      objc_sync_exit(selfCopy);
    }

LABEL_17:
  }
}

- (void)handleEventIndicator:(unsigned __int8)indicator eventValue:(char *)value
{
  if (indicator > 2)
  {
    switch(indicator)
    {
      case 3u:
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Received StreamingEnd EventIndicator", &v38, 2u);
        }

        doapAudioStop = [(DoAPSiriRemoteDevice *)self doapAudioStop];

        if (doapAudioStop)
        {
          doapAudioStop2 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
          dispatch_semaphore_signal(doapAudioStop2);
        }

        audioBuffer = [(DoAPSiriRemoteDevice *)self audioBuffer];

        if (audioBuffer)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          audioBuffer2 = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
          [audioBuffer2 removeAllObjects];

          objc_sync_exit(selfCopy);
        }

        if ([(DoAPDevice *)self state]== 5)
        {
          [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
          doapAudioStart = [(DoAPSiriRemoteDevice *)self doapAudioStart];
          dispatch_semaphore_signal(doapAudioStart);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        [(DoAPSiriRemoteDevice *)selfCopy2 clearEvent];
        [(DoAPDevice *)selfCopy2 doapStateSet:2];
        objc_sync_exit(selfCopy2);

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
          v7 = *value;
          v38 = 67109120;
          LODWORD(v39[0]) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Doap Received PTT/HTT Button Event (value = %d)", &v38, 8u);
        }

        if ([(DoAPDevice *)self state]== 2 && *value == 1)
        {
          self->_vtEvent = 6;
          self->_vtSource = 4;
          mach_absolute_time();
          peripheral = [(DoAPDevice *)self peripheral];
          identifier = [peripheral identifier];
          uUIDString = [identifier UUIDString];
          AFSiriActivationBluetoothDeviceButtonPress();
        }

        else if ([(DoAPDevice *)self state]== 2 && *value == 2)
        {
          mach_absolute_time();
          peripheral2 = [(DoAPDevice *)self peripheral];
          identifier2 = [peripheral2 identifier];
          uUIDString2 = [identifier2 UUIDString];
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

  if (indicator == 1)
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    if ([(DoAPDevice *)selfCopy3 state]!= 2 && [(DoAPDevice *)selfCopy3 state]!= 5)
    {
LABEL_56:
      objc_sync_exit(selfCopy3);

      return;
    }

    v24 = *value;
    if (v24 == 1)
    {
      if ([(DoAPDevice *)selfCopy3 state]== 2)
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
        if ([(DoAPDevice *)selfCopy3 state]== 2)
        {
          [(DoAPDevice *)selfCopy3 doapStateSet:3];
        }

        selfCopy3->_vtEvent = 1;
        selfCopy3->_vtSource = *value;
        [(DoAPSiriRemoteDevice *)selfCopy3 activateSiri:v26];
        goto LABEL_56;
      }

      v24 = *value;
    }

    v31 = qword_1000DDBC8;
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v24 != 2)
    {
      if (v32)
      {
        v34 = [(DoAPDevice *)selfCopy3 doapStateNameFor:[(DoAPDevice *)selfCopy3 state]];
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
      v33 = [(DoAPDevice *)selfCopy3 doapStateNameFor:[(DoAPDevice *)selfCopy3 state]];
      v38 = 138543362;
      *&v39[0] = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "DoAPSiri - handleEventIndicator: SiriActivation by DoubleTap while %{public}@", &v38, 0xCu);
    }

    v26 = 1;
    goto LABEL_53;
  }

  if (indicator != 2)
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
    v12 = *value;
    v13 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 134217984;
      v39[0] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Siri Myriad Score %f", &v38, 0xCu);
    }

    mach_absolute_time();
    peripheral3 = [(DoAPDevice *)self peripheral];
    identifier3 = [peripheral3 identifier];
    uUIDString3 = [identifier3 UUIDString];
    AFSiriActivationHearstBoron();
  }
}

- (void)doapAudioWillStart:(id)start
{
  startCopy = start;
  state = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (state < 7)
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
    v9 = startCopy;
    dispatch_async(queue, v8);
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A604();
  }
}

- (void)waitForSiriAudioToStop:(id)stop
{
  stopCopy = stop;
  state = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (state < 7)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPSiri waitForSiriAudioToStop", buf, 2u);
    }

    lastAudioDate = [(DoAPSiriRemoteDevice *)self lastAudioDate];
    [lastAudioDate timeIntervalSinceNow];
    v9 = fabs(v8) < 0.5;

    if (v9)
    {
      doapAudioStop = [(DoAPSiriRemoteDevice *)self doapAudioStop];

      if (doapAudioStop)
      {
        lastAudioDate2 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
        [lastAudioDate2 timeIntervalSinceNow];
        v13 = v12;

        doapAudioStop2 = [(DoAPSiriRemoteDevice *)self doapAudioStop];
        v15 = dispatch_time(0, 1000000 * vcvtpd_s64_f64((v13 + 0.5) * 1000.0));
        v16 = dispatch_semaphore_wait(doapAudioStop2, v15);

        v17 = qword_1000DDBC8;
        v18 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          if (v18)
          {
            v19 = v17;
            lastAudioDate3 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
            [lastAudioDate3 timeIntervalSinceNow];
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
          v42 = stopCopy;
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
            (*(stopCopy + 2))(stopCopy, 0);
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

          doapAudioStart = [(DoAPSiriRemoteDevice *)self doapAudioStart];
          dispatch_semaphore_signal(doapAudioStart);

          selfCopy = self;
          objc_sync_enter(selfCopy);
          audioBuffer = [(DoAPSiriRemoteDevice *)selfCopy audioBuffer];
          [audioBuffer removeAllObjects];

          objc_sync_exit(selfCopy);
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

        (*(stopCopy + 2))(stopCopy, v33);
        doapAudioStart2 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
        dispatch_semaphore_signal(doapAudioStart2);

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        audioBuffer2 = [(DoAPSiriRemoteDevice *)selfCopy2 audioBuffer];
        [audioBuffer2 removeAllObjects];

        objc_sync_exit(selfCopy2);
      }
    }

    else
    {
      v23 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        lastAudioDate4 = [(DoAPSiriRemoteDevice *)self lastAudioDate];
        [lastAudioDate4 timeIntervalSinceNow];
        *buf = 134217984;
        v46 = fabs(v26) * 1000.0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "DoAPSiri - Have not received audio data for %f ms. Stop Siri session.", buf, 0xCu);
      }

      [(DoAPSiriRemoteDevice *)self setDoapAudioStop:0];
      (*(stopCopy + 2))(stopCopy, 0);
      doapAudioStart3 = [(DoAPSiriRemoteDevice *)self doapAudioStart];
      dispatch_semaphore_signal(doapAudioStart3);

      audioBuffer3 = [(DoAPSiriRemoteDevice *)self audioBuffer];

      if (audioBuffer3)
      {
        selfCopy3 = self;
        objc_sync_enter(selfCopy3);
        audioBuffer4 = [(DoAPSiriRemoteDevice *)selfCopy3 audioBuffer];
        [audioBuffer4 removeAllObjects];

        objc_sync_exit(selfCopy3);
      }

      selfCopy4 = self;
      objc_sync_enter(selfCopy4);
      [(DoAPSiriRemoteDevice *)selfCopy4 clearEvent];
      [(DoAPDevice *)selfCopy4 doapStateSet:2];
      objc_sync_exit(selfCopy4);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A78C();
  }
}

- (void)doapAudioDidStop:(id)stop
{
  stopCopy = stop;
  state = [(DoAPDevice *)self state];
  v6 = qword_1000DDBC8;
  if (state < 7)
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
    v9 = stopCopy;
    dispatch_async(queue, v8);
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A7C8();
  }
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  observerCopy = observer;
  v9 = observerCopy;
  if (from != to && self->_notifyObserver == observerCopy)
  {
    self->_siriState = to;
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      siriState = self->_siriState;
      v12[0] = 67109376;
      v12[1] = from;
      v13 = 1024;
      v14 = siriState;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DoAPSiri - SiriState changed 0x%0X -> 0x%0X", v12, 0xEu);
    }

    [(DoAPSiriRemoteDevice *)self eventIndicator:4 eventValue:self->_siriState];
  }
}

@end