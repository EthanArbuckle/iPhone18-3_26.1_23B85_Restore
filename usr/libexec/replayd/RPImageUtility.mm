@interface RPImageUtility
+ (id)getImageDataFromExtensionContainingAppBundleUrl:(id)a3;
@end

@implementation RPImageUtility

+ (id)getImageDataFromExtensionContainingAppBundleUrl:(id)a3
{
  v3 = a3;
  v4 = [[ISIcon alloc] initWithURL:v3];

  v5 = objc_opt_new();
  v6 = [v4 imageForImageDescriptor:v5];
  v7 = [v6 CGImage];
  if (v7)
  {
    v12 = 0;
    v8 = sub_10004F710(v7, 0, @"public.png", &v12);
    v9 = v8;
    if (v12)
    {
      v10 = v8;
    }

    else
    {
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100066200();
      }

      v10 = 0;
    }
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100066280();
    }

    v10 = 0;
  }

  return v10;
}

@end