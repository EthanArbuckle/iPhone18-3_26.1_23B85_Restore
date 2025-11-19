@interface MSDAppIcon
+ (id)getIconImageForApp:(id)a3 withSize:(CGSize)a4 andScale:(float)a5;
+ (id)getIconImagesOfVisibleAppsWithSize:(CGSize)a3 andScale:(float)a4;
@end

@implementation MSDAppIcon

+ (id)getIconImageForApp:(id)a3 withSize:(CGSize)a4 andScale:(float)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (!v8)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4E64(v9);
    }

    goto LABEL_25;
  }

  v9 = [[ISIcon alloc] initWithBundleIdentifier:v8];
  if (!v9)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4DEC();
    }

    goto LABEL_25;
  }

  v10 = [[ISImageDescriptor alloc] initWithSize:width scale:{height, a5}];
  if (!v10)
  {
    v17 = sub_100063A54();
    sub_1000C4D3C(v17, v8);
LABEL_25:
    v15 = 0;
    goto LABEL_10;
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100005368;
  v23 = &unk_100169BC0;
  v25 = &v26;
  v11 = dispatch_semaphore_create(0);
  v24 = v11;
  [v9 getCGImageForImageDescriptor:v10 completion:&v20];

  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4B8C();
    }

    goto LABEL_24;
  }

  if (!v27[3])
  {
    v19 = sub_100063A54();
    sub_1000C4C7C(v19, v11, v10);
    goto LABEL_25;
  }

  v13 = [UIImage imageWithCGImage:v20, v21, v22, v23];
  if (!v13)
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4C04();
    }

LABEL_24:

    goto LABEL_25;
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "+[MSDAppIcon getIconImageForApp:withSize:andScale:]";
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s - Found icon image for app:  %{public}@", buf, 0x16u);
  }

  v15 = v13;
LABEL_10:

  _Block_object_dispose(&v26, 8);

  return v15;
}

+ (id)getIconImagesOfVisibleAppsWithSize:(CGSize)a3 andScale:(float)a4
{
  height = a3.height;
  width = a3.width;
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[MSDAppHelper sharedInstance];
  v9 = [v8 visibleApps];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v14 = v11;
    v15 = *v27;
    *&v12 = 136315394;
    v25 = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v26 + 1) + 8 * v16);
        *&v13 = a4;
        v18 = [MSDAppIcon getIconImageForApp:v17 withSize:width andScale:height, v13, v25, v26];
        v19 = v18;
        if (v18)
        {
          v20 = UIImageJPEGRepresentation(v18, 1.0);
          if (v20 || (UIImagePNGRepresentation(v19), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v21 = v20;
            [v7 setObject:v20 forKey:v17];
          }

          else
          {
            v21 = sub_100063A54();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v31 = "+[MSDAppIcon getIconImagesOfVisibleAppsWithSize:andScale:]";
              v32 = 2114;
              v33 = v17;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s - Icon has neither JPEG nor PNG representation:  %{public}@", buf, 0x16u);
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v22 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v14 = v22;
    }

    while (v22);
  }

  v23 = [NSDictionary dictionaryWithDictionary:v7];

  return v23;
}

@end