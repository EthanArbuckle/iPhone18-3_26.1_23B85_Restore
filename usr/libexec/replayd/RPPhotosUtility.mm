@interface RPPhotosUtility
+ (BOOL)showAlertFailedSaveToPhotosWithError:(id)a3;
+ (id)fetchLastSavedVideoAssetInPhotos;
+ (void)exportVideoToPhotosAsynchronously:(id)a3 mixAudioTracks:(BOOL)a4 completionHandler:(id)a5;
+ (void)exportVideoToPhotosLibrary:(id)a3 completionHandler:(id)a4;
@end

@implementation RPPhotosUtility

+ (void)exportVideoToPhotosLibrary:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "+[RPPhotosUtility exportVideoToPhotosLibrary:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 31;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0;
  v7 = [[AVURLAsset alloc] initWithURL:v5 options:0];
  v8 = v7;
  if (v7)
  {
    [v7 duration];
    Seconds = CMTimeGetSeconds(&time);
    *(*&buf[8] + 24) = Seconds;
  }

  v10 = dispatch_get_global_queue(25, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100052A64;
  v13[3] = &unk_1000A26E0;
  v15 = v6;
  v16 = buf;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, v13);

  _Block_object_dispose(buf, 8);
}

+ (void)exportVideoToPhotosAsynchronously:(id)a3 mixAudioTracks:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100053000;
    v9[3] = &unk_1000A1868;
    v10 = v7;
    v11 = v8;
    [RPAudioMixUtility mixAudioForMovie:v10 withCompletionHandler:v9];
  }

  else
  {
    [RPPhotosUtility exportVideoToPhotosLibrary:v7 completionHandler:v8];
  }
}

+ (BOOL)showAlertFailedSaveToPhotosWithError:(id)a3
{
  v3 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "+[RPPhotosUtility showAlertFailedSaveToPhotosWithError:]";
    v18 = 1024;
    v19 = 115;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_FAILED_TO_SAVE_ALERT_MESSAGE_FORMAT"];
  v5 = [v3 localizedDescription];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_STATUSBAR_TAPPED_ALERT_TITLE"];
  v8 = v6;
  v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
  v14[0] = kCFUserNotificationAlertHeaderKey;
  v14[1] = kCFUserNotificationAlertMessageKey;
  v15[0] = v7;
  v15[1] = v8;
  v14[2] = kCFUserNotificationDefaultButtonTitleKey;
  v15[2] = v9;
  v10 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3]);
  if (v10)
  {
    v11 = v10;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags);
    if (!responseFlags && dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "+[RPPhotosUtility showAlertFailedSaveToPhotosWithError:]";
      v18 = 1024;
      v19 = 145;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user has hit okay, alert will be dismissed", buf, 0x12u);
    }

    CFRelease(v11);
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000668A0();
  }

  return 0;
}

+ (id)fetchLastSavedVideoAssetInPhotos
{
  v2 = objc_alloc_init(PHFetchOptions);
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 setSortDescriptors:v4];

  v5 = [PHAsset fetchAssetsWithMediaType:2 options:v2];
  v6 = [v5 lastObject];

  return v6;
}

@end