@interface RPAudioMixUtility
+ (id)exportPresetForAVAsset:(id)a3;
+ (id)tempFileURL;
+ (id)videoCodecTypeForAVAsset:(id)a3;
+ (void)mixAudioForMovie:(id)a3 finalMovieURL:(id)a4 outputFileType:(id)a5 withCompletionHandler:(id)a6;
+ (void)mixAudioForMovie:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation RPAudioMixUtility

+ (void)mixAudioForMovie:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[RPAudioMixUtility tempFileURL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000267D4;
  v10 = v9[3] = &unk_1000A1C08;
  v11 = v5;
  v7 = v10;
  v8 = v5;
  [RPAudioMixUtility mixAudioForMovie:v6 finalMovieURL:v7 outputFileType:AVFileTypeMPEG4 withCompletionHandler:v9];
}

+ (void)mixAudioForMovie:(id)a3 finalMovieURL:(id)a4 outputFileType:(id)a5 withCompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 33;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL  %@", buf, 0x1Cu);
      }

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 34;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finalMovieURL %@", buf, 0x1Cu);
      }
    }

    v29 = v9;
    v13 = [AVAsset assetWithURL:v9];
    v26 = [RPAudioMixUtility exportPresetForAVAsset:v13];
    v14 = [[AVAssetExportSession alloc] initWithAsset:v13 presetName:v26];
    v28 = v10;
    [v14 setOutputURL:v10];
    v27 = v11;
    [v14 setOutputFileType:v11];
    v15 = [v13 tracksWithMediaType:AVMediaTypeAudio];
    v16 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = +[AVMutableAudioMixInputParameters audioMixInputParameters];
          [v23 setTrackID:{objc_msgSend(v22, "trackID")}];
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    v24 = +[AVMutableAudioMix audioMix];
    [v24 setInputParameters:v16];
    [v14 setAudioMix:v24];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
      v40 = 1024;
      v41 = 63;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting export session", buf, 0x12u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100026CA8;
    v30[3] = &unk_1000A11E0;
    v31 = v14;
    v32 = v12;
    v25 = v14;
    [v25 exportAsynchronouslyWithCompletionHandler:v30];

    v10 = v28;
    v9 = v29;
    v11 = v27;
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061C44();
    }

    v13 = [NSError _rpUserErrorForCode:-5818 userInfo:0];
    (*(v12 + 2))(v12, v13);
  }
}

+ (id)tempFileURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 _srTempPath];
  v4 = [NSString stringWithFormat:@"%@/RPReplay_Final", v3];

  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  v7 = [NSString stringWithFormat:@"%ld", v6];

  v8 = [NSString stringWithFormat:@"%@%@%@", v4, v7, @".mp4"];
  v9 = [NSURL fileURLWithPath:v8];

  return v9;
}

+ (id)videoCodecTypeForAVAsset:(id)a3
{
  v3 = [a3 tracksWithMediaType:AVMediaTypeVideo];
  if ([v3 count] != 1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061CC4();
    }

    v5 = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 formatDescriptions];
  if ([v5 count] != 1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061D44();
    }

LABEL_14:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  MediaSubType = CMFormatDescriptionGetMediaSubType(v6);

  v8 = [NSString stringWithUTF8String:sub_10004A308(MediaSubType)];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "+[RPAudioMixUtility videoCodecTypeForAVAsset:]";
    v13 = 1024;
    v14 = 111;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d videoCodecType=%@", &v11, 0x1Cu);
  }

LABEL_6:
  v9 = v8;

  return v8;
}

+ (id)exportPresetForAVAsset:(id)a3
{
  v4 = AVAssetExportPresetHighestQuality;
  v5 = [RPAudioMixUtility videoCodecTypeForAVAsset:a3];
  v6 = v5;
  if (!v5)
  {
    sub_100061DC4(v4, v11);
    v4 = *v11;
    goto LABEL_7;
  }

  if (![v5 isEqualToString:AVVideoCodecTypeHEVC])
  {
    if ([v6 isEqualToString:AVVideoCodecTypeH264])
    {
      if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v11 = 136446466;
      *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v12 = 1024;
      v13 = 124;
      v9 = " [INFO] %{public}s:%d AVAssetExportPresetHighestQuality for H264";
      v10 = 18;
    }

    else
    {
      if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v11 = 136446722;
      *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v12 = 1024;
      v13 = 127;
      v14 = 2112;
      v15 = v6;
      v9 = " [INFO] %{public}s:%d videoCodecType=%@, use default preset";
      v10 = 28;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v11, v10);
    goto LABEL_7;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136446466;
    *&v11[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
    v12 = 1024;
    v13 = 121;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportPresetHEVCHighestQuality for HEVC", v11, 0x12u);
  }

  v7 = AVAssetExportPresetHEVCHighestQuality;

  v4 = v7;
LABEL_7:

  return v4;
}

@end