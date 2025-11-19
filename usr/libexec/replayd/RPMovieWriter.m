@interface RPMovieWriter
+ (BOOL)replaceFormatDescription:(opaqueCMFormatDescription *)a3 WithReplacementFormatDescription:(const opaqueCMFormatDescription *)a4 width:(int)a5 height:(int)a6 maxCLL:(unsigned __int16)a7;
+ (id)averageVideoBitrateForWidth:(double)a3 height:(double)a4 codecType:(id)a5 isHDR:(BOOL)a6 shouldCapForExport:(BOOL)a7;
- (BOOL)appendInitialSampleBuffer:(opaqueCMSampleBuffer *)a3 withTransform:(CGAffineTransform *)a4 input:(id)a5;
- (BOOL)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 withWindowTransform:(CGAffineTransform *)a4;
- (BOOL)assetWriterInput:(id)a3 shouldReplaceFormatDescription:(opaqueCMFormatDescription *)a4 replacementFormatDescription:(const opaqueCMFormatDescription *)a5;
- (BOOL)dispatchedAppendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 withWindowTransform:(CGAffineTransform *)a4;
- (CGSize)windowSize;
- (NSURL)outputURL;
- (id)audioOutputSettingsForCodec:(unsigned int)a3 audioChannelLayout:(AudioChannelLayout *)a4;
- (id)averageVideoBitrate;
- (id)createAssetURLFromPhotosIdentifier:(id)a3;
- (id)createCustomDirectoryURLFromDestURL:(id)a3;
- (id)createDownloadsURLFromDestURL:(id)a3;
- (id)createNotificationRequestWithAssetURL:(id)a3;
- (id)createNotificationRequestWithURL:(id)a3 photoAsset:(id)a4;
- (id)createVideoCompressionSettings;
- (id)createVideoSettingsWithVideoCompressionSettings:(id)a3;
- (id)displayNameForFolderPath:(id)a3;
- (int64_t)consumeSandboxExtensionToken:(id)a3;
- (void)appendAudio1SampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)appendAudio2SampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)appendHQLRAudioSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)dispatchedAppendAudio1SampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)displayHQLRNotificationWithURL:(id)a3;
- (void)displayScreenRecorderNotificationWithPhotoAsset:(id)a3;
- (void)finishWritingAndSaveToCameraRollWithSessionID:(id)a3 mixAudioTracks:(BOOL)a4 handler:(id)a5;
- (void)finishWritingAndSaveToDownloadsWithSessionID:(id)a3 mixAudioTracks:(BOOL)a4 handler:(id)a5;
- (void)finishWritingAndSaveToURL:(id)a3 sandboxExtensionTokenForFileURL:(id)a4 withHandler:(id)a5;
- (void)finishWritingWithHandler:(id)a3;
- (void)moveToCustomSaveLocation:(id)a3 handler:(id)a4;
- (void)notifyRecordingMayBeStopped;
- (void)notifyRecordingResumed;
- (void)saveVideoToCameraRoll:(id)a3 sessionID:(id)a4 mixAudioTracks:(BOOL)a5 handler:(id)a6;
- (void)saveVideoToDownloads:(id)a3 sessionID:(id)a4 handler:(id)a5;
- (void)setLastAudio1PresentationTime:(id *)a3;
- (void)setLastAudio2PresentationTime:(id *)a3;
- (void)setLastVideoPresentationTime:(id *)a3;
- (void)setTrimVideoPresentationTime:(id *)a3;
- (void)setUpAssetWriterWithHandler:(id)a3;
- (void)showHQLRNotificationForCustomLocation:(id)a3 sessionID:(id)a4;
- (void)startWritingHandler:(id)a3;
- (void)trimMovieWithURL:(id)a3 startClipDuration:(double)a4 endClipDuration:(double)a5 outputFileURL:(id)a6 handler:(id)a7;
- (void)updateOutputPath;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation RPMovieWriter

- (void)startWritingHandler:(id)a3
{
  v4 = a3;
  v5 = [(RPMovieWriter *)self movieWriterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000077A8;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 withWindowTransform:(CGAffineTransform *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v7 = [(RPMovieWriter *)self movieWriterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v8 = *&a4->c;
  v11 = *&a4->a;
  v12 = v8;
  block[2] = sub_100007A94;
  block[3] = &unk_1000A1208;
  block[4] = self;
  block[5] = &v14;
  block[6] = a3;
  v13 = *&a4->tx;
  dispatch_sync(v7, block);

  LOBYTE(a4) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return a4;
}

- (void)appendAudio1SampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(RPMovieWriter *)self movieWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007B80;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)appendAudio2SampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(RPMovieWriter *)self movieWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007C20;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)appendHQLRAudioSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(RPMovieWriter *)self movieWriterQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007CC4;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)moveToCustomSaveLocation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPMovieWriter moveToCustomSaveLocation:handler:]";
    *&buf[12] = 1024;
    *&buf[14] = 240;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = CFPreferencesCopyAppValue(@"RPSaveLocationPath", @"com.apple.replayd");
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v9 = v9;
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "[RPMovieWriter moveToCustomSaveLocation:handler:]";
        *&buf[12] = 1024;
        *&buf[14] = 248;
        *&buf[18] = 2112;
        *&buf[20] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Found custom save path: %@", buf, 0x1Cu);
      }

      CFRelease(v9);
      if ([v9 length])
      {
        v22 = [v6 lastPathComponent];
        v11 = [NSURL fileURLWithPath:v9];
        v21 = [v11 URLByAppendingPathComponent:v22];

        v12 = v9;
        v13 = [v9 fileSystemRepresentation];
        v14 = sandbox_extension_issue_file();
        if (!v14)
        {
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005EE5C();
          }

          v15 = [NSError _rpUserErrorForCode:-5835 userInfo:0, v21];
          v7[2](v7, v6, v15);
          goto LABEL_42;
        }

        v15 = [NSString stringWithCString:v14 encoding:4];
        free(v14);
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "[RPMovieWriter moveToCustomSaveLocation:handler:]";
          *&buf[12] = 1024;
          *&buf[14] = 272;
          *&buf[18] = 2080;
          *&buf[20] = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Issued sandbox extension for custom save path: %s", buf, 0x1Cu);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = -1;
        if (v15)
        {
          v16 = [(RPMovieWriter *)self consumeSandboxExtensionToken:v15, v21];
          *(*&buf[8] + 24) = v16;
          if (v16 == -1)
          {
            if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10005ED48();
            }

            v17 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
            v7[2](v7, v6, v17);
            goto LABEL_41;
          }
        }

        v17 = +[NSFileManager defaultManager];
        if ([v17 fileExistsAtPath:v9])
        {
          v18 = 0;
        }

        else
        {
          v28 = 0;
          v19 = [v17 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v28];
          v18 = v28;
          if ((v19 & 1) == 0)
          {
            if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10005EDD0();
            }

            if (*(*&buf[8] + 24) != -1)
            {
              [(RPMovieWriter *)self releaseSandboxExtensionHandle:?];
            }

            v7[2](v7, v6, v18);
            goto LABEL_40;
          }
        }

        v20 = +[NSFileManager defaultManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100008308;
        v23[3] = &unk_1000A1258;
        v27 = buf;
        v23[4] = self;
        v26 = v7;
        v24 = v6;
        v25 = v21;
        [v20 _srMoveFileFromURL:v24 toURL:v25 completion:v23];

LABEL_40:
LABEL_41:

        _Block_object_dispose(buf, 8);
LABEL_42:

        goto LABEL_23;
      }
    }

    else
    {
      CFRelease(v9);
      v9 = 0;
    }
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPMovieWriter moveToCustomSaveLocation:handler:]";
    *&buf[12] = 1024;
    *&buf[14] = 256;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No custom save location configured, using default location", buf, 0x12u);
  }

  v7[2](v7, v6, 0);
LABEL_23:
}

- (void)finishWritingWithHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPMovieWriter finishWritingWithHandler:]";
    v11 = 1024;
    v12 = 328;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = [(RPMovieWriter *)self movieWriterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000085F0;
  v7[3] = &unk_1000A11E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)finishWritingAndSaveToCameraRollWithSessionID:(id)a3 mixAudioTracks:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[RPMovieWriter finishWritingAndSaveToCameraRollWithSessionID:mixAudioTracks:handler:]";
    v18 = 1024;
    v19 = 406;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008D70;
  v12[3] = &unk_1000A12A8;
  v13 = v8;
  v14 = v9;
  v12[4] = self;
  v15 = a4;
  v10 = v8;
  v11 = v9;
  [(RPMovieWriter *)self finishWritingWithHandler:v12];
}

- (void)finishWritingAndSaveToDownloadsWithSessionID:(id)a3 mixAudioTracks:(BOOL)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPMovieWriter finishWritingAndSaveToDownloadsWithSessionID:mixAudioTracks:handler:]";
    v16 = 1024;
    v17 = 439;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000091E8;
  v11[3] = &unk_1000A1320;
  v12 = v7;
  v13 = v8;
  v11[4] = self;
  v9 = v7;
  v10 = v8;
  [(RPMovieWriter *)self finishWritingWithHandler:v11];
}

- (void)showHQLRNotificationForCustomLocation:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = [(RPMovieWriter *)self createCustomDirectoryURLFromDestURL:a3];
  v8 = +[RPFeatureFlagUtility sharedInstance];
  v9 = [v8 systemBannerEnabled];

  if (v9)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "[RPMovieWriter showHQLRNotificationForCustomLocation:sessionID:]";
      v15 = 1024;
      v16 = 492;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Show Angel Proxy UI for saving to custom location", buf, 0x12u);
    }

    v10 = +[RPAngelProxy sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009934;
    v11[3] = &unk_1000A1348;
    v11[4] = self;
    v12 = v7;
    [v10 showBannerWithURL:v12 identifier:0 sessionID:v6 completionHandler:v11];
  }

  else
  {
    [(RPMovieWriter *)self displayHQLRNotificationWithURL:v7];
  }
}

- (void)finishWritingAndSaveToURL:(id)a3 sandboxExtensionTokenForFileURL:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPMovieWriter finishWritingAndSaveToURL:sandboxExtensionTokenForFileURL:withHandler:]";
    v21 = 1024;
    v22 = 504;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009BA0;
  v14[3] = &unk_1000A1398;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v18 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [(RPMovieWriter *)self finishWritingWithHandler:v14];
}

- (void)trimMovieWithURL:(id)a3 startClipDuration:(double)a4 endClipDuration:(double)a5 outputFileURL:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(RPMovieWriter *)self movieWriterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A09C;
  block[3] = &unk_1000A13E8;
  v21 = v12;
  v22 = v14;
  v20 = v13;
  v23 = a4;
  v24 = a5;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  dispatch_async(v15, block);
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPMovieWriter dealloc]";
    v9 = 1024;
    v10 = 595;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  audioBufferQueue1 = self->_audioBufferQueue1;
  if (audioBufferQueue1)
  {
    CFRelease(audioBufferQueue1);
  }

  audioBufferQueue2 = self->_audioBufferQueue2;
  if (audioBufferQueue2)
  {
    CFRelease(audioBufferQueue2);
  }

  videoBufferQueue = self->_videoBufferQueue;
  if (videoBufferQueue)
  {
    CFRelease(videoBufferQueue);
  }

  v6.receiver = self;
  v6.super_class = RPMovieWriter;
  [(RPMovieWriter *)&v6 dealloc];
}

- (NSURL)outputURL
{
  v2 = [(RPMovieWriter *)self outputPath];
  v3 = [NSURL fileURLWithPath:v2];

  return v3;
}

- (void)updateOutputPath
{
  [(RPMovieWriter *)self setAssetWriterStartCount:[(RPMovieWriter *)self assetWriterStartCount]+ 1];
  v3 = [(RPMovieWriter *)self originalOutputPath];
  v4 = [NSURL fileURLWithPath:v3];

  v5 = [v4 pathExtension];
  v6 = [v4 URLByDeletingPathExtension];
  v7 = [v6 path];

  v8 = [NSString stringWithFormat:@"%@_%d.%@", v7, [(RPMovieWriter *)self assetWriterStartCount], v5];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(RPMovieWriter *)self outputPath];
    *buf = 136447234;
    v11 = "[RPMovieWriter updateOutputPath]";
    v12 = 1024;
    v13 = 611;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = [(RPMovieWriter *)self assetWriterStartCount];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Updating the AVAssetWriter path from %@ to %@ with start count of %d", buf, 0x2Cu);
  }

  [(RPMovieWriter *)self setOutputPath:v8];
}

- (id)averageVideoBitrate
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"RPBitRateOverride"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    [(RPMovieWriter *)self windowSize];
    v7 = v6;
    [(RPMovieWriter *)self windowSize];
    v5 = [RPMovieWriter averageVideoBitrateForWidth:self->_videoCodecType height:[(RPMovieWriter *)self assetWriterIsHDR] codecType:1 isHDR:v7 shouldCapForExport:v8];
  }

  v9 = v5;

  return v9;
}

+ (id)averageVideoBitrateForWidth:(double)a3 height:(double)a4 codecType:(id)a5 isHDR:(BOOL)a6 shouldCapForExport:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a5;
  [@"com.apple.replayd" UTF8String];
  if (os_variant_allows_internal_security_policies() && (v12 = CFPreferencesCopyAppValue(@"SCKBitRateOverride", @"com.apple.replayd")) != 0)
  {
    v13 = v12;
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446722;
      v21 = "+[RPMovieWriter averageVideoBitrateForWidth:height:codecType:isHDR:shouldCapForExport:]";
      v22 = 1024;
      v23 = 630;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d use default write bitrate=%@", &v20, 0x1Cu);
    }

    CFRelease(v13);
  }

  else
  {
    v14 = a3 * 11.4 * a4;
    v15 = v14;
    if (v14 <= 64000)
    {
      v16 = 64000;
    }

    else
    {
      v16 = v14;
    }

    if (v7 && (![v11 isEqualToString:AVVideoCodecTypeHEVC] ? (v17 = 25000000) : (v17 = 15000000), v17 < v15))
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136447234;
        v21 = "+[RPMovieWriter averageVideoBitrateForWidth:height:codecType:isHDR:shouldCapForExport:]";
        v22 = 1024;
        v23 = 644;
        v24 = 2048;
        v25 = v16;
        v26 = 2048;
        v27 = v17;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d bitrate=%ld exceed maxBitrate=%ld for videoCodecType=%@, cap at max", &v20, 0x30u);
      }
    }

    else
    {
      v17 = v16;
    }

    if (v8)
    {
      v18 = (v17 * 1.2);
    }

    else
    {
      v18 = v17;
    }

    v13 = [NSNumber numberWithInteger:v18];
  }

  return v13;
}

- (id)createVideoCompressionSettings
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(RPMovieWriter *)self averageVideoBitrate];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v35 = "[RPMovieWriter createVideoCompressionSettings]";
    v36 = 1024;
    v37 = 664;
    v38 = 2048;
    v39 = COERCE_DOUBLE([v4 integerValue]);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d bit rate set to %ld", buf, 0x1Cu);
  }

  v5 = [(RPMovieWriter *)self assetWriterIsHDR];
  v6 = [(RPMovieWriter *)self videoCodecType];
  v7 = [v6 isEqualToString:AVVideoCodecTypeH264];

  if (v7)
  {
    v8 = &AVVideoProfileLevelH264HighAutoLevel;
LABEL_9:
    v11 = *v8;
    goto LABEL_11;
  }

  v9 = [(RPMovieWriter *)self videoCodecType];
  v10 = [v9 isEqualToString:AVVideoCodecTypeHEVC];

  if (v10)
  {
    v8 = &kVTProfileLevel_HEVC_Main_AutoLevel;
    if (v5)
    {
      v8 = &kVTProfileLevel_HEVC_Main10_AutoLevel;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_11:
  v32[0] = AVVideoExpectedSourceFrameRateKey;
  v32[1] = AVVideoProfileLevelKey;
  v33[0] = &off_1000A6AA0;
  v33[1] = v11;
  v32[2] = AVVideoMaxKeyFrameIntervalKey;
  v33[2] = &off_1000A6AA0;
  v12 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
  [v3 addEntriesFromDictionary:v12];

  if ((v5 & 1) == 0)
  {
    v30 = AVVideoAverageBitRateKey;
    v31 = v4;
    v25 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v3 addEntriesFromDictionary:v25];

    goto LABEL_32;
  }

  v28[0] = kVTCompressionPropertyKey_SpatialAdaptiveQPLevel;
  v28[1] = kVTCompressionPropertyKey_SuggestedLookAheadFrameCount;
  v29[0] = &off_1000A6AB8;
  v29[1] = &off_1000A6AD0;
  v13 = kVTCompressionPropertyKey_VBVMaxBitRate;
  v14 = kVTCompressionPropertyKey_ConstantQualityFactor;
  v28[2] = kVTCompressionPropertyKey_VBVMaxBitRate;
  v28[3] = kVTCompressionPropertyKey_ConstantQualityFactor;
  v29[2] = &off_1000A6AE8;
  v29[3] = &off_1000A6E00;
  v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  [v3 addEntriesFromDictionary:v15];

  [@"com.apple.replayd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SCKVBVMaxBitRateOverride", @"com.apple.replayd", 0);
    if (AppIntegerValue >= 1)
    {
      v17 = *&AppIntegerValue;
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v35 = "[RPMovieWriter createVideoCompressionSettings]";
        v36 = 1024;
        v37 = 699;
        v38 = 2048;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d use default write VBVMaxBitRate=%ld", buf, 0x1Cu);
      }

      v18 = [NSNumber numberWithInteger:*&v17];
      [v3 setObject:v18 forKeyedSubscript:v13];
    }

    v19 = CFPreferencesGetAppIntegerValue(@"SCKCQFOverride", @"com.apple.replayd", 0);
    if (v19 >= 1)
    {
      v21 = v19;
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v35 = "[RPMovieWriter createVideoCompressionSettings]";
        v36 = 1024;
        v37 = 705;
        v38 = 2048;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d use default write CQF=%lf", buf, 0x1Cu);
      }

      *&v20 = v21 / 100.0;
      v22 = [NSNumber numberWithFloat:v20];
      [v3 setObject:v22 forKeyedSubscript:v14];
    }
  }

  if ([(RPMovieWriter *)self assetWriterSetting]== 1)
  {
    v23 = kVTCompressionPropertyKey_HDRMetadataInsertionMode;
    v24 = @"HDRMetadataInsertionMode_RequestSDRRangePreservation";
  }

  else
  {
    if ([(RPMovieWriter *)self assetWriterSetting]== 2)
    {
      v26 = &kVTHDRMetadataInsertionMode_None;
    }

    else
    {
      if ([(RPMovieWriter *)self assetWriterSetting]!= 3)
      {
        goto LABEL_32;
      }

      v26 = &kVTHDRMetadataInsertionMode_Auto;
    }

    v24 = *v26;
    v23 = kVTCompressionPropertyKey_HDRMetadataInsertionMode;
  }

  [v3 setValue:v24 forKey:v23];
LABEL_32:

  return v3;
}

- (id)createVideoSettingsWithVideoCompressionSettings:(id)a3
{
  v4 = a3;
  [(RPMovieWriter *)self windowSize];
  v6 = ((v5 + 1 + ((v5 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  [(RPMovieWriter *)self windowSize];
  v8 = ((v7 + 1 + ((v7 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  v9 = [NSMutableDictionary alloc];
  v25[0] = AVVideoCodecKey;
  v10 = [(RPMovieWriter *)self videoCodecType];
  v26[0] = v10;
  v25[1] = AVVideoWidthKey;
  v11 = [NSNumber numberWithDouble:v6];
  v26[1] = v11;
  v25[2] = AVVideoHeightKey;
  v12 = [NSNumber numberWithDouble:v8];
  v26[2] = v12;
  v26[3] = v4;
  v25[3] = AVVideoCompressionPropertiesKey;
  v25[4] = AVVideoScalingModeKey;
  v26[4] = AVVideoScalingModeResizeAspect;
  v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
  v14 = [v9 initWithDictionary:v13];

  if (![(RPMovieWriter *)self assetWriterSetting])
  {
    v23[0] = AVVideoColorPrimariesKey;
    v23[1] = AVVideoTransferFunctionKey;
    v24[0] = AVVideoColorPrimaries_ITU_R_709_2;
    v24[1] = AVVideoTransferFunction_ITU_R_709_2;
    v23[2] = AVVideoYCbCrMatrixKey;
    v24[2] = AVVideoYCbCrMatrix_ITU_R_709_2;
    v15 = v24;
    v16 = v23;
    goto LABEL_8;
  }

  if ([(RPMovieWriter *)self assetWriterSetting]== 1)
  {
    v21[0] = AVVideoColorPrimariesKey;
    v21[1] = AVVideoTransferFunctionKey;
    v22[0] = AVVideoColorPrimaries_ITU_R_2020;
    v22[1] = AVVideoTransferFunction_SMPTE_ST_2084_PQ;
    v21[2] = AVVideoYCbCrMatrixKey;
    v22[2] = AVVideoYCbCrMatrix_ITU_R_2020;
    v15 = v22;
    v16 = v21;
LABEL_8:
    v17 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:3];
    goto LABEL_9;
  }

  if ([(RPMovieWriter *)self assetWriterSetting]== 3 || [(RPMovieWriter *)self assetWriterSetting]== 2)
  {
    v19[0] = AVVideoColorPrimariesKey;
    v19[1] = AVVideoTransferFunctionKey;
    v20[0] = AVVideoColorPrimaries_ITU_R_2020;
    v20[1] = AVVideoTransferFunction_ITU_R_2100_HLG;
    v19[2] = AVVideoYCbCrMatrixKey;
    v20[2] = AVVideoYCbCrMatrix_ITU_R_2020;
    v15 = v20;
    v16 = v19;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:
  [v14 setValue:v17 forKey:AVVideoColorPropertiesKey];

  return v14;
}

- (void)setUpAssetWriterWithHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPMovieWriter setUpAssetWriterWithHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 772;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  [(RPMovieWriter *)self updateOutputPath];
  CMBufferQueueReset(self->_videoBufferQueue);
  CMBufferQueueReset(self->_audioBufferQueue1);
  CMBufferQueueReset(self->_audioBufferQueue2);
  *buf = *&kCMTimeInvalid.value;
  v36 = *buf;
  *&buf[16] = kCMTimeInvalid.epoch;
  v5 = *&buf[16];
  [(RPMovieWriter *)self setLastVideoPresentationTime:buf];
  *buf = v36;
  *&buf[16] = v5;
  [(RPMovieWriter *)self setLastAudio1PresentationTime:buf];
  *buf = v36;
  *&buf[16] = v5;
  [(RPMovieWriter *)self setLastAudio2PresentationTime:buf];
  v6 = [AVAssetWriter alloc];
  v7 = [(RPMovieWriter *)self outputURL];
  v38 = 0;
  v8 = [v6 initWithURL:v7 fileType:AVFileTypeMPEG4 error:&v38];
  v9 = v38;
  [(RPMovieWriter *)self setAssetWriter:v8];

  v10 = [(RPMovieWriter *)self assetWriter];
  [v10 setFinishWritingDelegate:self];

  if (v9)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F6CC(v9);
      if (!v4)
      {
        goto LABEL_28;
      }

      goto LABEL_8;
    }

    if (v4)
    {
LABEL_8:
      v11 = [NSError _rpUserErrorForCode:-5824 userInfo:0];
LABEL_27:
      v4[2](v4, v11);
    }
  }

  else
  {
    v12 = +[AVMutableMetadataItem metadataItem];
    [v12 setKeySpace:AVMetadataKeySpaceQuickTimeMetadata];
    [v12 setKey:AVMetadataQuickTimeMetadataKeyAuthor];
    [v12 setValue:@"ReplayKitRecording"];
    v13 = objc_alloc_init(AVMutableMetadataItem);
    [v13 setIdentifier:AVMetadataIdentifierQuickTimeMetadataFullFrameRatePlaybackIntent];
    [v13 setDataType:kCMMetadataBaseDataType_UInt32];
    [v13 setValue:&__kCFBooleanTrue];
    v14 = [NSArray arrayWithObjects:v12, v13, 0];
    v15 = [(RPMovieWriter *)self assetWriter];
    [v15 setMetadata:v14];

    v16 = [(RPMovieWriter *)self createVideoCompressionSettings];
    v17 = [(RPBroadcastConfiguration *)self->_broadcastConfig videoCompressionProperties];

    if (v17)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "[RPMovieWriter setUpAssetWriterWithHandler:]";
        *&buf[12] = 1024;
        *&buf[14] = 818;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using custom video compression properties", buf, 0x12u);
      }

      v18 = [(RPBroadcastConfiguration *)self->_broadcastConfig videoCompressionProperties];
      [v16 addEntriesFromDictionary:v18];
    }

    v19 = [(RPMovieWriter *)self createVideoSettingsWithVideoCompressionSettings:v16];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[RPMovieWriter setUpAssetWriterWithHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 824;
      *&buf[18] = 2112;
      *&buf[20] = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d videoSettings=%@", buf, 0x1Cu);
    }

    v37 = v16;
    v20 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeVideo outputSettings:v19];
    [(RPMovieWriter *)self setVideoInput:v20];

    v21 = [(RPMovieWriter *)self videoInput];
    [v21 setExpectsMediaDataInRealTime:1];

    if ([(RPMovieWriter *)self isSparselyInterleaved])
    {
      [(AVAssetWriterInput *)self->_videoInput setMediaDataLocation:AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData];
    }

    v22 = [(RPMovieWriter *)self assetWriter];
    v23 = [(RPMovieWriter *)self videoInput];
    [v22 addInput:v23];

    if ([(RPMovieWriter *)self audioCodecType]== 1718378851)
    {
      v24 = 6553601;
    }

    else
    {
      v24 = 6619138;
    }

    v25 = [(RPMovieWriter *)self audioCodecType];
    *buf = v24;
    memset(&buf[4], 0, 24);
    v40 = 0;
    v26 = [(RPMovieWriter *)self audioOutputSettingsForCodec:v25 audioChannelLayout:buf];
    v27 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeAudio outputSettings:v26];
    [(RPMovieWriter *)self setAudioInput1:v27];

    v28 = [(RPMovieWriter *)self audioInput1];
    [v28 setExpectsMediaDataInRealTime:1];

    v29 = [(RPMovieWriter *)self assetWriter];
    v30 = [(RPMovieWriter *)self audioInput1];
    [v29 addInput:v30];

    v31 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeAudio outputSettings:v26];
    [(RPMovieWriter *)self setAudioInput2:v31];

    v32 = [(RPMovieWriter *)self audioInput2];
    [v32 setExpectsMediaDataInRealTime:1];

    v33 = [(RPMovieWriter *)self assetWriter];
    v34 = [(RPMovieWriter *)self audioInput2];
    [v33 addInput:v34];

    if (v4)
    {
      v35 = [(RPMovieWriter *)self assetWriter];
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = [NSError _rpUserErrorForCode:-5824 userInfo:0];
      }

      goto LABEL_27;
    }
  }

LABEL_28:
}

- (id)audioOutputSettingsForCodec:(unsigned int)a3 audioChannelLayout:(AudioChannelLayout *)a4
{
  if (a3 == 1718378851)
  {
    v21[0] = AVFormatIDKey;
    v21[1] = AVNumberOfChannelsKey;
    v22[0] = &off_1000A6B00;
    v22[1] = &off_1000A6B18;
    v22[2] = &off_1000A6E10;
    v21[2] = AVSampleRateKey;
    v21[3] = AVChannelLayoutKey;
    v5 = [NSData dataWithBytes:a4 length:32];
    v22[3] = v5;
    v6 = v22;
    v7 = v21;
    v8 = 4;
  }

  else
  {
    v19[0] = AVFormatIDKey;
    v19[1] = AVNumberOfChannelsKey;
    v20[0] = &off_1000A6B30;
    v20[1] = &off_1000A6B48;
    v20[2] = &off_1000A6E20;
    v19[2] = AVSampleRateKey;
    v19[3] = AVChannelLayoutKey;
    v5 = [NSData dataWithBytes:a4 length:32];
    v19[4] = AVEncoderBitRateKey;
    v20[3] = v5;
    v20[4] = &off_1000A6B60;
    v6 = v20;
    v7 = v19;
    v8 = 5;
  }

  v9 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446978;
    v12 = "[RPMovieWriter audioOutputSettingsForCodec:audioChannelLayout:]";
    v13 = 1024;
    v14 = 869;
    v15 = 2112;
    v16 = v9;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using settings=%@ for codecType=%d", &v11, 0x22u);
  }

  return v9;
}

- (BOOL)dispatchedAppendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 withWindowTransform:(CGAffineTransform *)a4
{
  v7 = [(RPMovieWriter *)self assetWriter];
  v8 = v7;
  if (!a3 || !v7)
  {

    return 1;
  }

  v9 = [(RPMovieWriter *)self isFinishingWriting];

  if ((v9 & 1) == 0)
  {
    v10 = [(RPMovieWriter *)self assetWriter];
    if ([v10 status] == 1)
    {
      v11 = [(RPMovieWriter *)self didProcessFirstSample];

      if (v11)
      {
        if (CMBufferQueueGetBufferCount(self->_videoBufferQueue) >= 5)
        {
          if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].value) = 136446466;
            *(&buf[0].value + 4) = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]";
            LOWORD(buf[0].flags) = 1024;
            *(&buf[0].flags + 2) = 884;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Dropping oldest sample buffer from video buffer queue", buf, 0x12u);
          }

          v12 = CMBufferQueueDequeueAndRetain(self->_videoBufferQueue);
          if (v12)
          {
            CFRelease(v12);
          }
        }

        if (CMBufferQueueEnqueue(self->_videoBufferQueue, a3))
        {
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005F7E4();
          }
        }

        else
        {
          v25 = [(RPMovieWriter *)self videoInput];
          if ([v25 isReadyForMoreMediaData])
          {
            *&v26 = 136446722;
            v40 = v26;
            while (1)
            {
              v27 = CMBufferQueueIsEmpty(self->_videoBufferQueue) == 0;

              if (!v27)
              {
                break;
              }

              v28 = CMBufferQueueDequeueAndRetain(self->_videoBufferQueue);
              if (v28)
              {
                buf[0] = self->_lastVideoPresentationTime;
                time2 = kCMTimeInvalid;
                if (CMTimeCompare(buf, &time2))
                {
                  buf[0] = self->_lastVideoPresentationTime;
                  Seconds = CMTimeGetSeconds(buf);
                  CMSampleBufferGetPresentationTimeStamp(buf, v28);
                  if (Seconds >= CMTimeGetSeconds(buf))
                  {
                    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      buf[0] = self->_lastVideoPresentationTime;
                      v38 = CMTimeGetSeconds(buf);
                      CMSampleBufferGetPresentationTimeStamp(buf, v28);
                      v39 = CMTimeGetSeconds(buf);
                      LODWORD(buf[0].value) = 136446978;
                      *(&buf[0].value + 4) = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]";
                      LOWORD(buf[0].flags) = 1024;
                      *(&buf[0].flags + 2) = 901;
                      WORD1(buf[0].epoch) = 2048;
                      *(&buf[0].epoch + 4) = v38;
                      WORD2(buf[1].value) = 2048;
                      *(&buf[1].value + 6) = v39;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d discarding video sample buffer due to timestamp earlier than previous %f, next %f", buf, 0x26u);
                    }

                    CFRelease(v28);
                    return 1;
                  }
                }

                else
                {
                  v30 = sub_100057EA8(a3);
                  if (dword_1000B6840 <= 1)
                  {
                    v31 = *&v30;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(buf[0].value) = v40;
                      *(&buf[0].value + 4) = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]";
                      LOWORD(buf[0].flags) = 1024;
                      *(&buf[0].flags + 2) = 907;
                      WORD1(buf[0].epoch) = 2048;
                      *(&buf[0].epoch + 4) = v31;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d video first sample received at time %.3f", buf, 0x1Cu);
                    }
                  }
                }

                CMSampleBufferGetPresentationTimeStamp(&v50, v28);
                buf[0] = v50;
                [(RPMovieWriter *)self setLastVideoPresentationTime:buf];
                if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  [(RPMovieWriter *)self lastVideoPresentationTime];
                  v32 = v49;
                  [(RPMovieWriter *)self lastVideoPresentationTime];
                  v33 = v48;
                  CMSampleBufferGetDuration(&v47, v28);
                  LODWORD(buf[0].value) = 136447234;
                  *(&buf[0].value + 4) = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]";
                  LOWORD(buf[0].flags) = 1024;
                  *(&buf[0].flags + 2) = 911;
                  WORD1(buf[0].epoch) = 2048;
                  *(&buf[0].epoch + 4) = v32;
                  WORD2(buf[1].value) = 1024;
                  *(&buf[1].value + 6) = v33;
                  HIWORD(buf[1].timescale) = 2048;
                  *&buf[1].flags = v47.value;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d appending video sample with timestamp:%lld scale:%d duration:%lld", buf, 0x2Cu);
                }

                v34 = sub_100057578(v28);
                v35 = [(RPMovieWriter *)self maxContentLightLevel];
                v36 = v34 * 100.0;
                if (v36 < v35)
                {
                  v36 = [(RPMovieWriter *)self maxContentLightLevel];
                }

                [(RPMovieWriter *)self setMaxContentLightLevel:v36, v40];
                v37 = [(RPMovieWriter *)self videoInput];
                [v37 appendSampleBuffer:v28];

                CFRelease(v28);
              }

              v25 = [(RPMovieWriter *)self videoInput];
              if (([v25 isReadyForMoreMediaData] & 1) == 0)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
          }
        }

        return 1;
      }
    }

    else
    {
    }

    time2.value = 0;
    *&time2.timescale = &time2;
    time2.epoch = 0x2020000000;
    v46 = 0;
    v13 = [(RPMovieWriter *)self assetWriter];
    v14 = [v13 status] == 3;

    if (v14)
    {
      if (dword_1000B6840 <= 2)
      {
        v15 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v16 = [(RPMovieWriter *)self assetWriter];
          v17 = [v16 error];
          sub_10005F75C(v17, buf, v16);
        }
      }

      if ([(RPMovieWriter *)self didProcessFirstSample])
      {
        v18 = +[NSFileManager defaultManager];
        v19 = [(RPMovieWriter *)self outputURL];
        [v18 _srRemoveFile:v19 completion:&stru_1000A1408];
      }

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v20 = *&a4->c;
      v42 = *&a4->a;
      v43 = v20;
      v41[2] = sub_10000C66C;
      v41[3] = &unk_1000A1430;
      v41[4] = self;
      v41[5] = &time2;
      v41[6] = a3;
      v44 = *&a4->tx;
      [(RPMovieWriter *)self setUpAssetWriterWithHandler:v41];
    }

    else
    {
      v21 = [(RPMovieWriter *)self videoInput];
      v22 = *&a4->c;
      *&buf[0].value = *&a4->a;
      *&buf[0].epoch = v22;
      *&buf[1].timescale = *&a4->tx;
      v23 = [(RPMovieWriter *)self appendInitialSampleBuffer:a3 withTransform:buf input:v21];
      *(*&time2.timescale + 24) = v23;
    }

    _Block_object_dispose(&time2, 8);
  }

  return 1;
}

- (BOOL)appendInitialSampleBuffer:(opaqueCMSampleBuffer *)a3 withTransform:(CGAffineTransform *)a4 input:(id)a5
{
  v8 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(RPMovieWriter *)self assetWriter];
    *buf = 136446722;
    *&buf[4] = "[RPMovieWriter appendInitialSampleBuffer:withTransform:input:]";
    *&buf[12] = 1024;
    *&buf[14] = 963;
    *&buf[18] = 1024;
    *&buf[20] = [v9 status];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer status %d", buf, 0x18u);
  }

  v10 = [(RPMovieWriter *)self assetWriter];
  if ([v10 status] == 1)
  {

    goto LABEL_7;
  }

  v11 = [(RPMovieWriter *)self assetWriter];
  v12 = [v11 status];

  if (v12 == 3)
  {
LABEL_7:
    v13 = [(RPMovieWriter *)self assetWriter];
    v14 = [v13 status];

    if (v14 == 1)
    {
      memset(buf, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(buf, a3);
      if ((buf[12] & 1) == 0)
      {
        if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005FBF4(&buf[12]);
        }

        goto LABEL_35;
      }

      v20 = [(RPMovieWriter *)self assetWriter];
      *v28 = *buf;
      *&v28[16] = *&buf[16];
      [v20 startSessionAtSourceTime:v28];

      if ([v8 isReadyForMoreMediaData])
      {
        v21 = [v8 appendSampleBuffer:a3];
        [(RPMovieWriter *)self setDidProcessFirstSample:1];
        if (!v21)
        {
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005FB6C();
          }

          goto LABEL_35;
        }

        if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_35:
          v23 = 1;
          goto LABEL_36;
        }

        *v28 = 136446466;
        *&v28[4] = "[RPMovieWriter appendInitialSampleBuffer:withTransform:input:]";
        *&v28[12] = 1024;
        *&v28[14] = 988;
        v22 = " [INFO] %{public}s:%d asset writer appended first sample";
      }

      else
      {
        if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        *v28 = 136446466;
        *&v28[4] = "[RPMovieWriter appendInitialSampleBuffer:withTransform:input:]";
        *&v28[12] = 1024;
        *&v28[14] = 993;
        v22 = " [INFO] %{public}s:%d asset writer started but video input not ready for data";
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v22, v28, 0x12u);
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v25 = *&a4->a;
  v26 = *&a4->c;
  v27 = *&a4->tx;
  v15 = [(RPMovieWriter *)self videoInput];
  *buf = v25;
  *&buf[16] = v26;
  v30 = v27;
  [v15 setTransform:buf];

  v16 = [(RPMovieWriter *)self assetWriter];
  v17 = [v16 startWriting];

  if (v17)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(RPMovieWriter *)self assetWriter];
      v19 = [v18 status];
      *buf = 136446722;
      *&buf[4] = "[RPMovieWriter appendInitialSampleBuffer:withTransform:input:]";
      *&buf[12] = 1024;
      *&buf[14] = 970;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer started with status %d", buf, 0x18u);
    }

    goto LABEL_7;
  }

  if (dword_1000B6840 <= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F98C(self);
    }

LABEL_24:
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FA7C(self);
    }
  }

  v23 = 0;
LABEL_36:

  return v23;
}

- (void)dispatchedAppendAudio1SampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(RPMovieWriter *)self assetWriter];
  if (!a3 || !v5)
  {
    goto LABEL_12;
  }

  v22 = v5;
  v6 = [(RPMovieWriter *)self isFinishingWriting];

  if (v6)
  {
    return;
  }

  v23 = [(RPMovieWriter *)self assetWriter];
  if ([v23 status] != 1)
  {
    v5 = v23;
LABEL_12:

    return;
  }

  v7 = [(RPMovieWriter *)self didProcessFirstSample];

  if (v7)
  {
    if (CMBufferQueueEnqueue(self->_audioBufferQueue1, a3))
    {
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005FC94();
      }
    }

    else
    {
      v8 = [(RPMovieWriter *)self audioInput1];
      if ([v8 isReadyForMoreMediaData])
      {
        *&v9 = 136446722;
        v21 = v9;
        v10 = &_mh_execute_header;
        while (1)
        {
          IsEmpty = CMBufferQueueIsEmpty(self->_audioBufferQueue1);

          if (IsEmpty)
          {
            break;
          }

          v12 = CMBufferQueueDequeueAndRetain(self->_audioBufferQueue1);
          if (v12)
          {
            v13 = v12;
            *time1 = *&self->_lastAudio1PresentationTime.value;
            *&time1[16] = self->_lastAudio1PresentationTime.epoch;
            time2 = kCMTimeInvalid;
            if (CMTimeCompare(time1, &time2))
            {
              value = self->_lastAudio1PresentationTime.value;
              CMSampleBufferGetPresentationTimeStamp(&v28, v13);
              if (value >= v28.value)
              {
                if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *time1 = 136446466;
                  *&time1[4] = "[RPMovieWriter dispatchedAppendAudio1SampleBuffer:]";
                  *&time1[12] = 1024;
                  *&time1[14] = 1025;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d discarding audio 1 sample buffer due to timestamp earlier than previous", time1, 0x12u);
                }

                CFRelease(v13);
                return;
              }
            }

            else
            {
              v15 = sub_100057EA8(a3);
              if (dword_1000B6840 <= 1)
              {
                v16 = *&v15;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *time1 = v21;
                  *&time1[4] = "[RPMovieWriter dispatchedAppendAudio1SampleBuffer:]";
                  *&time1[12] = 1024;
                  *&time1[14] = 1031;
                  *&time1[18] = 2048;
                  *&time1[20] = v16;
                  _os_log_impl(v10, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d audio first sample received at time %.3f", time1, 0x1Cu);
                }
              }
            }

            CMSampleBufferGetPresentationTimeStamp(&v27, v13);
            *time1 = v27;
            [(RPMovieWriter *)self setLastAudio1PresentationTime:time1];
            if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              [(RPMovieWriter *)self lastAudio1PresentationTime];
              v17 = v26;
              [(RPMovieWriter *)self lastAudio1PresentationTime];
              v18 = v10;
              v19 = v25;
              CMSampleBufferGetDuration(&v24, v13);
              *time1 = 136447234;
              *&time1[4] = "[RPMovieWriter dispatchedAppendAudio1SampleBuffer:]";
              *&time1[12] = 1024;
              *&time1[14] = 1035;
              *&time1[18] = 2048;
              *&time1[20] = v17;
              v31 = 1024;
              v32 = v19;
              v10 = v18;
              v33 = 2048;
              v34 = v24.value;
              _os_log_impl(v18, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d appending app audio sample with timestamp:%lld scale:%d duration:%lld", time1, 0x2Cu);
            }

            v20 = [(RPMovieWriter *)self audioInput1];
            [v20 appendSampleBuffer:v13];

            CFRelease(v13);
          }

          v8 = [(RPMovieWriter *)self audioInput1];
          if (([v8 isReadyForMoreMediaData] & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
      }
    }
  }
}

+ (BOOL)replaceFormatDescription:(opaqueCMFormatDescription *)a3 WithReplacementFormatDescription:(const opaqueCMFormatDescription *)a4 width:(int)a5 height:(int)a6 maxCLL:(unsigned __int16)a7
{
  formatDescriptionOut = 0;
  if (!a3)
  {
    sub_10005FF2C(buf);
    return buf[0];
  }

  if (!a4)
  {
    sub_10005FE68(buf);
    return buf[0];
  }

  v8 = a7;
  Extensions = CMFormatDescriptionGetExtensions(a3);
  if (Extensions)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Extensions);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v14 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_26;
  }

  v15 = a5 + 1;
  v16 = a6 + 1;
  [@"com.apple.replayd" UTF8String];
  if (os_variant_allows_internal_security_policies() && (v17 = CFPreferencesCopyAppValue(@"SCKClliCap", @"com.apple.replayd")) != 0)
  {
    v18 = v17;
    v19 = [v17 integerValue];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v29 = "+[RPMovieWriter replaceFormatDescription:WithReplacementFormatDescription:width:height:maxCLL:]";
      v30 = 1024;
      v31 = 1121;
      v32 = 1024;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d use default write clliCap=%u", buf, 0x18u);
    }

    CFRelease(v18);
    v20 = v19;
  }

  else
  {
    v20 = 1600;
  }

  v21 = v15 + (v15 >> 31);
  v22 = v16 + (v16 >> 31);
  if (v20 >= v8)
  {
    LOWORD(v20) = v8;
  }

  if (v8)
  {
    v23 = 0;
  }

  else
  {
    LOWORD(v20) = 1000;
    v23 = 400;
  }

  buf[0] = BYTE1(v20);
  buf[1] = v20;
  buf[2] = HIBYTE(v23);
  buf[3] = v23;
  v24 = CFDataCreate(kCFAllocatorDefault, buf, 4);
  CFDictionaryRemoveValue(v14, kCMFormatDescriptionExtension_ContentLightLevelInfo);
  CFDictionaryRemoveValue(v14, kCMFormatDescriptionExtension_VerbatimSampleDescription);
  CFDictionaryRemoveValue(v14, kCMFormatDescriptionExtension_VerbatimISOSampleEntry);
  CFDictionaryAddValue(v14, kCMFormatDescriptionExtension_ContentLightLevelInfo, v24);
  if (v24)
  {
    CFRelease(v24);
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  CMVideoFormatDescriptionCreate(kCFAllocatorDefault, MediaSubType, v21 & 0xFFFFFFFE, v22 & 0xFFFFFFFE, v14, &formatDescriptionOut);
  CFRelease(v14);
  if (!formatDescriptionOut)
  {
LABEL_26:
    sub_10005FDA4(buf);
    return buf[0];
  }

  *a4 = formatDescriptionOut;
  formatDescriptionOut = 0;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v29 = "+[RPMovieWriter replaceFormatDescription:WithReplacementFormatDescription:width:height:maxCLL:]";
    v30 = 1024;
    v31 = 1152;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d shouldReplaceFormatDescription with maxCLL=%d", buf, 0x18u);
  }

  return 1;
}

- (BOOL)assetWriterInput:(id)a3 shouldReplaceFormatDescription:(opaqueCMFormatDescription *)a4 replacementFormatDescription:(const opaqueCMFormatDescription *)a5
{
  v8 = [a3 mediaType];
  v9 = [v8 isEqual:AVMediaTypeVideo];

  if (!v9 || [(RPMovieWriter *)self assetWriterSetting]!= 1)
  {
    return 0;
  }

  [(RPMovieWriter *)self windowSize];
  v11 = v10;
  [(RPMovieWriter *)self windowSize];
  v13 = v12;
  v14 = [(RPMovieWriter *)self maxContentLightLevel];

  return [RPMovieWriter replaceFormatDescription:a4 WithReplacementFormatDescription:a5 width:v11 height:v13 maxCLL:v14];
}

- (void)saveVideoToCameraRoll:(id)a3 sessionID:(id)a4 mixAudioTracks:(BOOL)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  movieSaveQueue = self->_movieSaveQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DACC;
  block[3] = &unk_1000A1480;
  v21 = a5;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(movieSaveQueue, block);
}

- (id)createAssetURLFromPhotosIdentifier:(id)a3
{
  v3 = [PHObject uuidFromLocalIdentifier:a3];
  v4 = [NSString stringWithFormat:@"photos://asset?uuid=%@&albumname=camera-roll", v3];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (void)saveVideoToDownloads:(id)a3 sessionID:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  movieSaveQueue = self->_movieSaveQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E114;
  v15[3] = &unk_1000A1100;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(movieSaveQueue, v15);
}

- (id)createDownloadsURLFromDestURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"file://" withString:@"shareddocuments://"];

  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (id)createCustomDirectoryURLFromDestURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"file://" withString:@"shareddocuments://"];

  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (id)displayNameForFolderPath:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:v3];
  v14 = 0;
  v13 = 0;
  v5 = [v4 getResourceValue:&v14 forKey:NSURLLocalizedNameKey error:&v13];
  v6 = v14;
  v7 = v13;
  if (v5)
  {
    v8 = v6;
    v9 = v8;
  }

  else
  {
    v10 = +[NSFileManager defaultManager];
    v8 = [v10 displayNameAtPath:v3];

    if (v8 && ([v8 isEqualToString:&stru_1000A2FB8] & 1) == 0)
    {
      v9 = v8;
    }

    else
    {
      v11 = [NSURL fileURLWithPath:v3];
      v9 = [v11 lastPathComponent];
    }
  }

  return v9;
}

- (int64_t)consumeSandboxExtensionToken:(id)a3
{
  v3 = [a3 UTF8String];

  return _sandbox_extension_consume(v3);
}

- (void)displayScreenRecorderNotificationWithPhotoAsset:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPMovieWriter displayScreenRecorderNotificationWithPhotoAsset:]";
    v8 = 1024;
    v9 = 1339;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v6, 0x1Cu);
  }

  v5 = [(RPMovieWriter *)self createNotificationRequestWithAssetURL:v4];
  [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v5 withCompletionHandler:&stru_1000A14C0];
}

- (void)displayHQLRNotificationWithURL:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPMovieWriter displayHQLRNotificationWithURL:]";
    v8 = 1024;
    v9 = 1350;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v6, 0x1Cu);
  }

  v5 = [(RPMovieWriter *)self createNotificationRequestWithURL:v4 photoAsset:0];
  [(UNUserNotificationCenter *)self->_callRecordingUserNotificationCenter addNotificationRequest:v5 withCompletionHandler:&stru_1000A14E0];
}

- (id)createNotificationRequestWithAssetURL:(id)a3
{
  v4 = a3;
  v5 = [(RPMovieWriter *)self createAssetURLFromPhotosIdentifier:v4];
  v6 = [(RPMovieWriter *)self createNotificationRequestWithURL:v5 photoAsset:v4];

  return v6;
}

- (id)createNotificationRequestWithURL:(id)a3 photoAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [v8 isEqualToString:@"photos"];

  v10 = [v6 scheme];
  v11 = [v10 isEqualToString:@"shareddocuments"];

  if (v9)
  {
    v12 = @"photo.fill";
  }

  else
  {
    v12 = @"folder.fill";
  }

  if (v9)
  {
    v13 = @"RECORDING_BULLETIN_MESSAGE";
  }

  else
  {
    v13 = @"HQLR_RECORDING_BULLETIN_MESSAGE";
  }

  if (v9)
  {
    v14 = @"CONTROL_CENTER_TITLE";
  }

  else
  {
    v14 = @"CONTROL_CENTER_HQLR_TITLE";
  }

  if ((v9 & 1) == 0 && (v11 & 1) == 0)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060198();
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = objc_alloc_init(UNMutableNotificationContent);
  v16 = &_AXSVoiceOverTouchEnabled_ptr;
  v17 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v14];
  [v15 setTitle:v17];

  v37 = self;
  if (v11)
  {
    [v6 URLByDeletingLastPathComponent];
    v18 = v12;
    v20 = v19 = v7;
    v21 = [v20 path];

    v22 = [(RPMovieWriter *)self displayNameForFolderPath:v21];
    v23 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v13];
    v24 = [NSString stringWithFormat:@"%@ %@", v23, v22];
    [v15 setBody:v24];

    v7 = v19;
    v12 = v18;
    v16 = &_AXSVoiceOverTouchEnabled_ptr;
  }

  else
  {
    v21 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v13];
    [v15 setBody:v21];
  }

  [v15 setThreadIdentifier:@"orginalRecordID"];
  if (v7)
  {
    v39 = @"photoAssetIdKey";
    v40 = v7;
    v25 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v15 setUserInfo:v25];
  }

  [v15 setDefaultActionURL:v6];
  [v15 setShouldIgnoreDoNotDisturb:1];
  if (v9)
  {
    v26 = [UNNotificationActionIcon iconWithSystemImageName:v12];
    v27 = [v16[410] _rpLocalizedStringFromFrameworkBundleWithKey:@"SYSTEM_RECORDING_LONG_PRESS_VIEW"];
    v28 = [UNNotificationAction actionWithIdentifier:@"viewAction" title:v27 url:v6 options:0 icon:v26];

    v29 = [UNNotificationActionIcon iconWithSystemImageName:@"xmark.circle"];
    v30 = [v16[410] _rpLocalizedStringFromFrameworkBundleWithKey:@"SYSTEM_RECORDING_LONG_PRESS_DELETE"];
    v31 = [UNNotificationAction actionWithIdentifier:@"deleteAction" title:v30 options:3 icon:v29];

    v38[0] = v28;
    v38[1] = v31;
    v32 = [NSArray arrayWithObjects:v38 count:2];
    v33 = [UNNotificationCategory categoryWithIdentifier:@"orginalRecordID" actions:v32 intentIdentifiers:&__NSArray0__struct options:0];

    v34 = [NSSet setWithObject:v33];
    [(UNUserNotificationCenter *)v37->_userNotificationCenter setNotificationCategories:v34];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    v26 = [UNNotificationCategory categoryWithIdentifier:@"orginalRecordID" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
    v28 = [NSSet setWithObject:v26];
    [(UNUserNotificationCenter *)v37->_callRecordingUserNotificationCenter setNotificationCategories:v28];
  }

LABEL_26:
  [v15 setCategoryIdentifier:@"orginalRecordID"];
  v35 = [UNNotificationRequest requestWithIdentifier:@"orginalRecordID" content:v15 trigger:0];

  return v35;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v30 = "[RPMovieWriter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v31 = 1024;
    v32 = 1448;
    v33 = 2048;
    v34 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v11 = [v9 actionIdentifier];
  v12 = [v11 isEqualToString:@"deleteAction"];

  if (v12)
  {
    v13 = [v9 notification];
    v14 = [v13 request];
    v15 = [v14 content];
    v16 = [v15 userInfo];

    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = [v16 objectForKey:@"photoAssetIdKey"];
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v28 = v17;
    v19 = [NSArray arrayWithObjects:&v28 count:1];
    v20 = [PHAsset fetchAssetsWithLocalIdentifiers:v19 options:0];
    v21 = [v20 firstObject];

    if (v21)
    {
      v22 = +[PHPhotoLibrary sharedPhotoLibrary];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000F390;
      v26[3] = &unk_1000A1088;
      v23 = v21;
      v27 = v23;
      v25 = 0;
      [v22 performChangesAndWait:v26 error:&v25];
      v24 = v25;

      if (v24 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060224();
      }

      v10[2](v10);
    }

    else
    {
LABEL_20:
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000602B0();
      }
    }
  }
}

- (void)notifyRecordingMayBeStopped
{
  [(RPMovieWriter *)self lastVideoPresentationTime];
  v3 = v5;
  v4 = v6;
  [(RPMovieWriter *)self setTrimVideoPresentationTime:&v3];
}

- (void)notifyRecordingResumed
{
  v2 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  [(RPMovieWriter *)self setTrimVideoPresentationTime:&v2];
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setLastVideoPresentationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastVideoPresentationTime.epoch = a3->var3;
  *&self->_lastVideoPresentationTime.value = v3;
}

- (void)setLastAudio1PresentationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastAudio1PresentationTime.epoch = a3->var3;
  *&self->_lastAudio1PresentationTime.value = v3;
}

- (void)setLastAudio2PresentationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastAudio2PresentationTime.epoch = a3->var3;
  *&self->_lastAudio2PresentationTime.value = v3;
}

- (void)setTrimVideoPresentationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_trimVideoPresentationTime.epoch = a3->var3;
  *&self->_trimVideoPresentationTime.value = v3;
}

@end