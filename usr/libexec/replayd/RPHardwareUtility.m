@interface RPHardwareUtility
+ (BOOL)isIPad;
+ (BOOL)isMacMini;
+ (BOOL)isNativeScreenOrientationPortrait;
+ (BOOL)supportsShutterSound;
+ (CGSize)limitRecordingSizeForH264:(CGSize)a3;
+ (CGSize)limitRecordingWindowSizeFromSize:(CGSize)a3;
+ (id)modelIdentifier;
@end

@implementation RPHardwareUtility

+ (BOOL)isNativeScreenOrientationPortrait
{
  v2 = MGCopyAnswer();
  valuePtr = 0.0;
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  CFNumberGetValue(v2, kCFNumberFloat32Type, &valuePtr);
  CFRelease(v3);
  return valuePtr == 0.0;
}

+ (BOOL)isIPad
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    Value = CFBooleanGetValue(v2);
    CFRelease(v3);
    LOBYTE(v2) = Value == 1;
  }

  return v2;
}

+ (BOOL)supportsShutterSound
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBooleanGetValue(v2) != 0;
  CFRelease(v3);
  return v4;
}

+ (CGSize)limitRecordingWindowSizeFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446978;
    v14 = "+[RPHardwareUtility limitRecordingWindowSizeFromSize:]";
    v15 = 1024;
    v16 = 90;
    v17 = 2048;
    v18 = width;
    v19 = 2048;
    v20 = height;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Requested window size width:%lf x height:%lf", &v13, 0x26u);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"RPFullResCapture"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446978;
      v14 = "+[RPHardwareUtility limitRecordingWindowSizeFromSize:]";
      v15 = 1024;
      v16 = 97;
      v17 = 2048;
      v18 = width;
      v19 = 2048;
      v20 = height;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d full window size enabled with width %.1f x height:%.1f", &v13, 0x26u);
    }
  }

  else
  {
    v9 = 1920;
    if (+[RPHardwareUtility isIPad])
    {
      if ([a1 chipId] == 35168)
      {
        v9 = 1600;
      }

      else
      {
        v9 = 1920;
      }
    }

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136447234;
      v14 = "+[RPHardwareUtility limitRecordingWindowSizeFromSize:]";
      v15 = 1024;
      v16 = 108;
      v17 = 2048;
      v18 = width;
      v19 = 2048;
      v20 = height;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d checking window size width %.1f x height:%.1f against max size %d", &v13, 0x2Cu);
    }

    v10 = v9;
    if (height > v9)
    {
      width = width * (v10 / height);
      height = v9;
    }

    if (width <= v10)
    {
      v10 = width;
    }

    else
    {
      height = height * (v10 / width);
    }

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446978;
      v14 = "+[RPHardwareUtility limitRecordingWindowSizeFromSize:]";
      v15 = 1024;
      v16 = 117;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = height;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d limit window size to width %.1f x height:%.1f", &v13, 0x26u);
    }

    width = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (CGSize)limitRecordingSizeForH264:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width > 4096.0 || a3.height > 4096.0)
  {
    if (a3.height > 4096.0)
    {
      width = a3.width * (4096.0 / a3.height);
      height = 4096.0;
    }

    if (width > 4096.0)
    {
      height = height * (4096.0 / width);
      width = 4096.0;
    }

    width = ((width + 1 + ((width + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
    height = ((height + 1 + ((height + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446978;
      v9 = "+[RPHardwareUtility limitRecordingSizeForH264:]";
      v10 = 1024;
      v11 = 140;
      v12 = 2048;
      v13 = width;
      v14 = 2048;
      v15 = height;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d limit recording size to width %.1f x height:%.1f", &v8, 0x26u);
    }
  }

  v6 = width;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)modelIdentifier
{
  v5 = 0;
  sysctlbyname("hw.model", 0, &v5, 0, 0);
  if (v5)
  {
    v2 = [NSMutableData dataWithLength:?];
    sysctlbyname("hw.model", [v2 mutableBytes], &v5, 0, 0);
    v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v2 bytes]);
  }

  else
  {
    v3 = @"Unknown Mac";
  }

  return v3;
}

+ (BOOL)isMacMini
{
  v2 = [a1 modelIdentifier];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "+[RPHardwareUtility isMacMini]";
    v7 = 1024;
    v8 = 170;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d modelID=%@", &v5, 0x1Cu);
  }

  v3 = [v2 hasPrefix:@"Macmini"];

  return v3;
}

@end