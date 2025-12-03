@interface NSFileManager
- (void)fm_migrateFileFromURL:(id)l toURL:(id)rL;
@end

@implementation NSFileManager

- (void)fm_migrateFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  if (!lCopy || !rLCopy)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = lCopy;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping file migration due to nil url, from %@ to %@.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = lCopy;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating file from %@ to %@", buf, 0x16u);
    }

    v12 = +[NSFileManager defaultManager];
    v18 = 0;
    [v12 copyItemAtURL:lCopy toURL:v7 error:&v18];
    v13 = v18;

    if (v13)
    {
      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100227204(v13, v14);
      }
    }

    else
    {
      v15 = +[NSFileManager defaultManager];
      v17 = 0;
      [v15 removeItemAtURL:lCopy error:&v17];
      v16 = v17;

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10022727C(v14);
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

@end