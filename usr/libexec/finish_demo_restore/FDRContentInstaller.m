@interface FDRContentInstaller
+ (id)sharedInstance;
- (BOOL)finishInstallContent;
- (BOOL)updateContent:(id)a3;
- (FDRContentInstaller)init;
@end

@implementation FDRContentInstaller

+ (id)sharedInstance
{
  if (qword_10000C758 != -1)
  {
    sub_100003D28();
  }

  v3 = qword_10000C750;

  return v3;
}

- (FDRContentInstaller)init
{
  v6.receiver = self;
  v6.super_class = FDRContentInstaller;
  v2 = [(FDRContentInstaller *)&v6 init];
  if (v2)
  {
    v3 = +[MSDLogModel sharedInstance];
    [v3 enableLogToFilesUnder:@"/private/var/logs/MobileDemo" prefix:@"finish-demo-retore" expireDays:10];

    v4 = v2;
  }

  return v2;
}

- (BOOL)updateContent:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v38 = 0;
  v5 = [NSURL fileURLWithPath:v3];
  v35 = v4;
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v7 = [v6 nextObject];
  if (!v7)
  {
    v29 = 1;
    goto LABEL_17;
  }

  v8 = v7;
  v34 = 0;
  v9 = 0;
  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = [v8 path];
      [v11 rangeOfString:v3];
      v13 = v12;

      v14 = [v8 path];
      v9 = [v14 substringFromIndex:v13];

      if ([v9 hasPrefix:@"/var/"])
      {
        break;
      }

LABEL_7:
      v20 = [v6 nextObject];

      v8 = v20;
      if (!v20)
      {
        v29 = 1;
LABEL_14:
        v8 = v9;
        v30 = v34;
        goto LABEL_15;
      }
    }

    v15 = +[MSDLogModel sharedInstance];
    v16 = [v8 path];
    [v15 logMessage:1 prefix:@"[INF]" message:{@"Copying %@ to %@", v16, v9}];

    if (![v4 fileExistsAtPath:v9 isDirectory:&v38])
    {
      v21 = v34;
      goto LABEL_12;
    }

    v17 = v38;
    v18 = +[MSDLogModel sharedInstance];
    v19 = v18;
    if (v17 == 1)
    {
      [v18 logMessage:1 prefix:@"[INF]" message:{@"%@ exists and it's folder, skip", v9}];

      goto LABEL_7;
    }

    [v18 logMessage:1 prefix:@"[INF]" message:{@"%@ exist and it's not folder, remove it first", v9}];

    v37 = v34;
    v22 = [v4 removeItemAtPath:v9 error:&v37];
    v23 = v37;

    if ((v22 & 1) == 0)
    {
      break;
    }

    v21 = v23;
LABEL_12:
    v24 = [NSURL fileURLWithPath:v9];
    v36 = v21;
    v25 = [v4 moveItemAtURL:v8 toURL:v24 error:&v36];
    v34 = v36;

    v26 = +[MSDLogModel sharedInstance];
    if ((v25 & 1) == 0)
    {
      v32 = [NSString stringWithFormat:@"[ERR] %s", "[FDRContentInstaller updateContent:]"];
      v30 = v34;
      v33 = [v34 localizedDescription];
      [v26 logMessage:2 prefix:v32 message:{@"Failed to copy %@ - %@", v9, v33}];
      goto LABEL_20;
    }

    v27 = [v8 path];
    v29 = 1;
    [v26 logMessage:1 prefix:@"[INF]" message:{@"Done copying %@ to %@", v27, v9}];

    v28 = [v6 nextObject];

    v8 = v28;
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  v26 = +[MSDLogModel sharedInstance];
  v32 = [NSString stringWithFormat:@"[ERR] %s", "[FDRContentInstaller updateContent:]"];
  v33 = [v23 localizedDescription];
  [v26 logMessage:2 prefix:v32 message:{@"Failed to remove %@ - %@", v9, v33}];
  v30 = v23;
LABEL_20:

  v29 = 0;
LABEL_15:

LABEL_17:
  return v29;
}

- (BOOL)finishInstallContent
{
  v3 = +[NSFileManager defaultManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [&off_100008FF0 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(&off_100008FF0);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v3 fileExistsAtPath:v9])
        {
          if (![(FDRContentInstaller *)self updateContent:v9])
          {
            v13 = 0;
            goto LABEL_16;
          }

          v18 = v6;
          v10 = [v3 removeItemAtPath:v9 error:&v18];
          v11 = v18;

          if ((v10 & 1) == 0)
          {
            v15 = +[MSDLogModel sharedInstance];
            v16 = [NSString stringWithFormat:@"[ERR] %s", "[FDRContentInstaller finishInstallContent]"];
            v17 = [v11 localizedDescription];
            [v15 logMessage:2 prefix:v16 message:{@"Cannot remove %@ - %@", v9, v17}];

            v13 = 0;
            v6 = v11;
            goto LABEL_16;
          }

          v6 = v11;
        }

        else
        {
          v12 = +[MSDLogModel sharedInstance];
          [v12 logMessage:1 prefix:@"[INF]" message:{@"No content need to install from %@.", v9}];
        }
      }

      v5 = [&off_100008FF0 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = 1;
LABEL_16:

  return v13;
}

@end