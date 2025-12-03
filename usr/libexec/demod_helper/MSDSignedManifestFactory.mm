@interface MSDSignedManifestFactory
+ (id)createSignedManifestFromManifestFile:(id)file;
+ (id)readManifestFromFile:(id)file;
@end

@implementation MSDSignedManifestFactory

+ (id)readManifestFromFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:fileCopy];

  if (v5)
  {
    v6 = [NSInputStream inputStreamWithFileAtPath:fileCopy];
    if (v6)
    {
      v7 = v6;
      v8 = +[NSRunLoop currentRunLoop];
      [v7 scheduleInRunLoop:v8 forMode:NSDefaultRunLoopMode];

      [v7 open];
      v16 = 0;
      v9 = [NSPropertyListSerialization propertyListWithStream:v7 options:2 format:0 error:&v16];
      v10 = v16;
      [v7 close];
      v11 = +[NSRunLoop currentRunLoop];
      [v7 removeFromRunLoop:v11 forMode:NSDefaultRunLoopMode];

      if (!v9)
      {
        sub_1000266B8(v10);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v9 objectForKey:@"Version"];
        if (v12)
        {
          v13 = v12;
          if (+[MSDPlatform iOSHub])
          {
            v14 = 6;
          }

          else
          {
            v14 = 7;
          }

          if ([v13 intValue] >= v14 && objc_msgSend(v13, "intValue") < 8)
          {

            goto LABEL_12;
          }

          sub_100026524(v13, v9);
        }

        else
        {
          sub_1000265FC(fileCopy, v9);
        }
      }

      else
      {
        sub_100026468(fileCopy, v9);
      }
    }

    else
    {
      v10 = sub_100021268();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100026778();
      }
    }
  }

  else
  {
    v10 = sub_100021268();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000263EC();
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)createSignedManifestFromManifestFile:(id)file
{
  fileCopy = file;
  v4 = objc_autoreleasePoolPush();
  v5 = [MSDSignedManifestFactory readManifestFromFile:fileCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"Version"];
    intValue = [v7 intValue];
    v9 = &off_1000508F0;
    if (intValue != 7)
    {
      v9 = off_1000508E8;
    }

    v10 = [(__objc2_class *)*v9 signedManifestFromManifestData:v6];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v10;
}

@end