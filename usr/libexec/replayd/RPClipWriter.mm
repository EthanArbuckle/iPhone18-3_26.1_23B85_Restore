@interface RPClipWriter
- (RPClipWriter)initWithWindowSize:(CGSize)size;
- (id)dispatchClipWriterQueue;
- (void)appendAudio1SampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)appendAudio2SampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)flushClipBuffer;
- (void)queueAndWaitForSample:(int)sample withAssetInput:(id)input withBuffer:(id)buffer didAppendIdleFrame:(BOOL)frame;
- (void)setupAssetWriter;
- (void)updateLatestSampleTime:(opaqueCMSampleBuffer *)time;
- (void)waitForCompletionAndFinishWriting:(id *)writing withHandler:(id)handler;
@end

@implementation RPClipWriter

- (RPClipWriter)initWithWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPClipWriter initWithWindowSize:]";
    v21 = 1024;
    v22 = 60;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v18.receiver = self;
  v18.super_class = RPClipWriter;
  v6 = [(RPClipWriter *)&v18 init];
  if (v6)
  {
    v7 = [[RPClipBuffer alloc] initForVideo:1];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = [[RPClipBuffer alloc] initForVideo:0];
    v10 = *(v6 + 2);
    *(v6 + 2) = v9;

    v11 = [[RPClipBuffer alloc] initForVideo:0];
    v12 = *(v6 + 3);
    *(v6 + 3) = v11;

    v13 = dispatch_group_create();
    v14 = *(v6 + 4);
    *(v6 + 4) = v13;

    v15 = dispatch_queue_create("com.apple.ReplayKit.RPClipWriterQueue", 0);
    v16 = *(v6 + 5);
    *(v6 + 5) = v15;

    *(v6 + 7) = width;
    *(v6 + 8) = height;
    *(v6 + 120) = *&kCMTimeNegativeInfinity.value;
    *(v6 + 17) = kCMTimeNegativeInfinity.epoch;
  }

  return v6;
}

- (void)setupAssetWriter
{
  videoInput = self->_videoInput;
  self->_videoInput = 0;

  audioInput1 = self->_audioInput1;
  self->_audioInput1 = 0;

  audioInput2 = self->_audioInput2;
  self->_audioInput2 = 0;

  v6 = [AVAssetWriter alloc];
  outputURL = self->_outputURL;
  v24 = 0;
  v8 = [v6 initWithURL:outputURL fileType:AVFileTypeMPEG4 error:&v24];
  v9 = v24;
  assetWriter = self->_assetWriter;
  self->_assetWriter = v8;

  if (v9)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100066920(v9);
    }
  }

  else
  {
    v11 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeVideo outputSettings:0 sourceFormatHint:{-[RPClipBuffer getFormatDescription](self->_clipBufferVideo, "getFormatDescription")}];
    v12 = self->_videoInput;
    self->_videoInput = v11;

    [(AVAssetWriterInput *)self->_videoInput setExpectsMediaDataInRealTime:0];
    [(AVAssetWriter *)self->_assetWriter addInput:self->_videoInput];
    v21 = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0;
    v19 = 6619138;
    v25[0] = AVFormatIDKey;
    v25[1] = AVNumberOfChannelsKey;
    v26[0] = &off_1000A6D88;
    v26[1] = &off_1000A6DA0;
    v26[2] = &off_1000A6E30;
    v25[2] = AVSampleRateKey;
    v25[3] = AVChannelLayoutKey;
    v13 = [NSData dataWithBytes:&v19 length:32];
    v25[4] = AVEncoderBitRateKey;
    v26[3] = v13;
    v26[4] = &off_1000A6DB8;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];

    v15 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeAudio outputSettings:v14];
    v16 = self->_audioInput1;
    self->_audioInput1 = v15;

    [(AVAssetWriterInput *)self->_audioInput1 setExpectsMediaDataInRealTime:0];
    [(AVAssetWriter *)self->_assetWriter addInput:self->_audioInput1];
    if (self->_enableMic)
    {
      v17 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeAudio outputSettings:v14];
      v18 = self->_audioInput2;
      self->_audioInput2 = v17;

      [(AVAssetWriterInput *)self->_audioInput2 setExpectsMediaDataInRealTime:0];
      [(AVAssetWriter *)self->_assetWriter addInput:self->_audioInput2];
    }
  }
}

- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPClipWriter appendVideoSampleBuffer:]";
    v9 = 1024;
    v10 = 109;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %p", buf, 0x1Cu);
  }

  CFRetain(buffer);
  dispatchClipWriterQueue = [(RPClipWriter *)self dispatchClipWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053BE4;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = buffer;
  dispatch_async(dispatchClipWriterQueue, v6);
}

- (void)appendAudio1SampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPClipWriter appendAudio1SampleBuffer:]";
    v9 = 1024;
    v10 = 133;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %p", buf, 0x1Cu);
  }

  CFRetain(buffer);
  dispatchClipWriterQueue = [(RPClipWriter *)self dispatchClipWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053DD8;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = buffer;
  dispatch_async(dispatchClipWriterQueue, v6);
}

- (void)appendAudio2SampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPClipWriter appendAudio2SampleBuffer:]";
    v9 = 1024;
    v10 = 143;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %p", buf, 0x1Cu);
  }

  CFRetain(buffer);
  dispatchClipWriterQueue = [(RPClipWriter *)self dispatchClipWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053F74;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = buffer;
  dispatch_async(dispatchClipWriterQueue, v6);
}

- (void)updateLatestSampleTime:(opaqueCMSampleBuffer *)time
{
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, time);
  latestCMSamplePresentationTime = self->_latestCMSamplePresentationTime;
  Seconds = CMTimeGetSeconds(&latestCMSamplePresentationTime);
  latestCMSamplePresentationTime = v6;
  if (Seconds < CMTimeGetSeconds(&latestCMSamplePresentationTime))
  {
    self->_latestCMSamplePresentationTime = v6;
  }
}

- (void)queueAndWaitForSample:(int)sample withAssetInput:(id)input withBuffer:(id)buffer didAppendIdleFrame:(BOOL)frame
{
  inputCopy = input;
  bufferCopy = buffer;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]";
    *&buf[12] = 1024;
    *&buf[14] = 160;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v12 = [bufferCopy count];
  *(*&buf[8] + 24) = v12;
  dispatch_group_enter(self->_clipWriterDispatchGroup);
  clipWriterQueue = self->_clipWriterQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000542A4;
  v16[3] = &unk_1000A2728;
  sampleCopy = sample;
  v20 = v27;
  v21 = buf;
  v14 = inputCopy;
  v17 = v14;
  v22 = v25;
  v15 = bufferCopy;
  v18 = v15;
  selfCopy = self;
  frameCopy = frame;
  [v14 requestMediaDataWhenReadyOnQueue:clipWriterQueue usingBlock:v16];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(buf, 8);
}

- (void)waitForCompletionAndFinishWriting:(id *)writing withHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPClipWriter waitForCompletionAndFinishWriting:withHandler:]";
    v16 = 1024;
    v17 = 212;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  clipWriterDispatchGroup = self->_clipWriterDispatchGroup;
  clipWriterQueue = self->_clipWriterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054930;
  block[3] = &unk_1000A2750;
  v12 = *&writing->var0;
  var3 = writing->var3;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_group_notify(clipWriterDispatchGroup, clipWriterQueue, block);
}

- (void)flushClipBuffer
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPClipWriter flushClipBuffer]";
    v7 = 1024;
    v8 = 231;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  dispatchClipWriterQueue = [(RPClipWriter *)self dispatchClipWriterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054BF0;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(dispatchClipWriterQueue, block);
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136446466;
    *(&buf.value + 4) = "[RPClipWriter exportClipToURL:duration:completionHandler:]";
    LOWORD(buf.flags) = 1024;
    *(&buf.flags + 2) = 240;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &buf, 0x12u);
  }

  v39 = *&self->_latestCMSamplePresentationTime.value;
  epoch = self->_latestCMSamplePresentationTime.epoch;
  buf = self->_latestCMSamplePresentationTime;
  Seconds = CMTimeGetSeconds(&buf);
  objc_storeStrong(&self->_outputURL, l);
  buf.value = 0;
  *&buf.timescale = &buf;
  buf.epoch = 0x3032000000;
  v43 = sub_10005521C;
  v44 = sub_10005522C;
  v45 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10005521C;
  v37 = sub_10005522C;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10005521C;
  v31 = sub_10005522C;
  v32 = 0;
  dispatchClipWriterQueue = [(RPClipWriter *)self dispatchClipWriterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055234;
  block[3] = &unk_1000A2778;
  block[4] = self;
  block[5] = &buf;
  block[6] = &v33;
  block[7] = &v27;
  dispatch_sync(dispatchClipWriterQueue, block);

  self->_enableMic = [v28[5] getTotalNumberOfSamples] != 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000552C0;
  v21[3] = &unk_1000A27A0;
  p_buf = &buf;
  v24 = &v33;
  v25 = &v27;
  v13 = handlerCopy;
  v22 = v13;
  v14 = objc_retainBlock(v21);
  if ([(RPClipBuffer *)self->_clipBufferVideo getTotalNumberOfSamples])
  {
    [(RPClipWriter *)self setupAssetWriter];
    v15 = +[AVMutableMetadataItem metadataItem];
    [v15 setKeySpace:AVMetadataKeySpaceQuickTimeMetadata];
    [v15 setKey:AVMetadataQuickTimeMetadataKeyAuthor];
    [v15 setValue:@"ReplayKitRecording"];
    v16 = [NSArray arrayWithObjects:v15, 0];
    [(AVAssetWriter *)self->_assetWriter setMetadata:v16];

    [(AVAssetWriter *)self->_assetWriter startWriting];
    v17 = Seconds;
    self->_didAppendFirstSample = 0;
    if (self->_videoInput)
    {
      v18 = [[NSMutableArray alloc] initWithCapacity:0];
      -[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:](self, "queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:", 0, self->_videoInput, v18, [*(*&buf.timescale + 40) getSamplesForDuration:v18 latestSeconds:duration withOutputArray:v17]);
    }

    if (self->_audioInput1)
    {
      v19 = [[NSMutableArray alloc] initWithCapacity:0];
      -[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:](self, "queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:", 1, self->_audioInput1, v19, [v34[5] getSamplesForDuration:v19 latestSeconds:duration withOutputArray:v17]);
    }

    if (self->_audioInput2)
    {
      v20 = [[NSMutableArray alloc] initWithCapacity:0];
      -[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:](self, "queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:", 2, self->_audioInput2, v20, [v28[5] getSamplesForDuration:v20 latestSeconds:duration withOutputArray:v17]);
    }

    *v41 = v39;
    *&v41[16] = epoch;
    [(RPClipWriter *)self waitForCompletionAndFinishWriting:v41 withHandler:v14];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 136446466;
      *&v41[4] = "[RPClipWriter exportClipToURL:duration:completionHandler:]";
      *&v41[12] = 1024;
      *&v41[14] = 313;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No video samples found", v41, 0x12u);
    }

    v15 = [NSError _rpUserErrorForCode:-5822 userInfo:0];
    (v14[2])(v14, v15);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&buf, 8);
}

- (id)dispatchClipWriterQueue
{
  if (qword_1000B6A28 != -1)
  {
    sub_100066A68();
  }

  v3 = qword_1000B6A20;

  return v3;
}

@end