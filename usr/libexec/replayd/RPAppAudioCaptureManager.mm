@interface RPAppAudioCaptureManager
+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)stereo;
+ (AudioStreamBasicDescription)descriptionForHQLR;
- (BOOL)handleStartAudioQueueFailed:(int)failed didFailHandler:(id)handler;
- (RPAppAudioCaptureManager)init;
- (id)newAudioTapForAudioCaptureConfig:(id)config;
- (void)startWithConfig:(id)config outputHandler:(id)handler didStartHandler:(id)startHandler;
- (void)stop;
@end

@implementation RPAppAudioCaptureManager

+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)stereo
{
  retstr->mSampleRate = 44100.0;
  *&retstr->mFormatID = 0xE6C70636DLL;
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  retstr->mBytesPerFrame = v4;
  retstr->mChannelsPerFrame = v5;
  retstr->mBytesPerPacket = v4;
  retstr->mFramesPerPacket = 1;
  *&retstr->mBitsPerChannel = 16;
  return result;
}

+ (AudioStreamBasicDescription)descriptionForHQLR
{
  v7 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:48000.0];
  streamDescription = [v7 streamDescription];
  v5 = streamDescription[1];
  *&retstr->mSampleRate = *streamDescription;
  *&retstr->mBytesPerPacket = v5;
  *&retstr->mBitsPerChannel = *(streamDescription + 4);

  return result;
}

- (RPAppAudioCaptureManager)init
{
  v10.receiver = self;
  v10.super_class = RPAppAudioCaptureManager;
  v2 = [(RPAppAudioCaptureManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ReplayKit.AppAudioCaptureQueue", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = *(v2 + 2);
    *(v2 + 2) = 0;

    [RPAppAudioCaptureManager audioStreamBasicDescriptionWithStereo:1];
    *(v2 + 56) = v7;
    *(v2 + 72) = v8;
    *(v2 + 11) = v9;
    +[RPAppAudioCaptureManager descriptionForHQLR];
    *(v2 + 6) = v7;
    *(v2 + 7) = v8;
    *(v2 + 16) = v9;
    v2[160] = 0;
  }

  return v2;
}

- (BOOL)handleStartAudioQueueFailed:(int)failed didFailHandler:(id)handler
{
  handlerCopy = handler;
  if (failed)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064FC0();
      if (!handlerCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (handlerCopy)
    {
LABEL_5:
      v6 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      handlerCopy[2](handlerCopy, v6);
    }
  }

LABEL_6:

  return failed != 0;
}

- (void)startWithConfig:(id)config outputHandler:(id)handler didStartHandler:(id)startHandler
{
  var2 = config.var2;
  v7 = *&config.var0;
  handlerCopy = handler;
  startHandlerCopy = startHandler;
  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_10004679C;
  block[3] = &unk_1000A24D8;
  block[4] = self;
  v16 = handlerCopy;
  v18 = v7;
  v19 = var2;
  v17 = startHandlerCopy;
  v12 = startHandlerCopy;
  v13 = var2;
  v14 = handlerCopy;
  dispatch_async(audioDispatchQueue, block);
}

- (void)stop
{
  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047308;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(audioDispatchQueue, block);
}

- (id)newAudioTapForAudioCaptureConfig:(id)config
{
  var2 = config.var2;
  v4 = *&config.var0;
  v5 = [[AVAudioFormat alloc] initWithStreamDescription:&self->_audioBasicDescription];
  if (!v5)
  {
    sub_100065678(&v13, &v14);
    goto LABEL_25;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = [[ATAudioTapDescription alloc] initScreenSharingTapWithFormat:v5];
      goto LABEL_18;
    }

    if (v4 == 3)
    {
      v7 = dword_1000B6840;
      if (dword_1000B6840 > 1)
      {
        goto LABEL_12;
      }

      sub_100065550();
    }
  }

  else
  {
    if (!v4)
    {
      v6 = [[ATAudioTapDescription alloc] initProcessTapWithFormat:v5 PID:HIDWORD(v4)];
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      if (!var2)
      {
        sub_1000653AC(&v13, &v14);
        goto LABEL_25;
      }

      v6 = [[ATAudioTapDescription alloc] initPreSpatialSceneIdentifierTapWithFormat:v5 sceneIdentifier:var2];
LABEL_18:
      v8 = v6;
      if (v6)
      {
        v10 = [[ATAudioTap alloc] initWithTapDescription:v6];
        v11 = v10;
        if (v10)
        {
          [v10 setScreenSharingHost:1];
          v9 = v11;
          goto LABEL_21;
        }

        sub_100065478(v8, &v13, &v14);
LABEL_25:
        v8 = v13;
        v9 = v14;
        goto LABEL_21;
      }
    }
  }

  v7 = dword_1000B6840;
LABEL_12:
  if (v7 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000655F0();
  }

  v8 = 0;
  v9 = 0;
LABEL_21:

  return v9;
}

@end