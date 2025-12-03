@interface DMDSUManagerInstallTask_iOS
+ (id)_dmfDownloadErrorFromSUDownloadError:(id)error;
+ (id)_dmfInstallErrorFromSUInstallError:(id)error;
+ (id)_dmfStatusErrorFromSUStatusError:(id)error;
- (BOOL)removeUpdateWithError:(id *)error;
- (BOOL)startDownloadWithError:(id *)error;
- (BOOL)startInstallWithError:(id *)error;
- (DMDSUManagerInstallTask_iOS)init;
- (id)currentStatusWithError:(id *)error;
@end

@implementation DMDSUManagerInstallTask_iOS

+ (id)_dmfDownloadErrorFromSUDownloadError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:SUErrorDomain];

    if (v6)
    {
      switch([v4 code])
      {
        case 1uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0x1AuLL:
        case 0x1DuLL:
        case 0x1EuLL:
        case 0x21uLL:
        case 0x22uLL:
        case 0x23uLL:
        case 0x24uLL:
          v22 = NSUnderlyingErrorKey;
          v23 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          break;
        case 6uLL:
        case 0x2BuLL:
          v20 = NSUnderlyingErrorKey;
          v21 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          break;
        case 0xBuLL:
          v26 = NSUnderlyingErrorKey;
          v27 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          break;
        case 0xEuLL:
          v14 = NSUnderlyingErrorKey;
          v15 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
          break;
        case 0xFuLL:
        case 0x18uLL:
          v18 = NSUnderlyingErrorKey;
          v19 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          break;
        case 0x14uLL:
          v16 = NSUnderlyingErrorKey;
          v17 = v4;
          v10 = &v17;
          v11 = &v16;
          goto LABEL_16;
        case 0x29uLL:
          v24 = NSUnderlyingErrorKey;
          v25 = v4;
          v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          break;
        default:
          v12 = NSUnderlyingErrorKey;
          v13 = v4;
          v10 = &v13;
          v11 = &v12;
LABEL_16:
          v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
          break;
      }
    }

    else
    {
      v28 = NSUnderlyingErrorKey;
      v29 = v4;
      v7 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    v8 = DMFErrorWithCodeAndUserInfo();
  }

  else
  {
    v8 = DMFErrorWithCodeAndUserInfo();
  }

  return v8;
}

+ (id)_dmfInstallErrorFromSUInstallError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    goto LABEL_11;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:SUErrorDomain];

  if ((v6 & 1) == 0)
  {
    v23 = NSUnderlyingErrorKey;
    v24 = v4;
    v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    goto LABEL_10;
  }

  code = [v4 code];
  if (code > 13)
  {
    if (code > 23)
    {
      if (code != 24)
      {
        if (code != 43)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (code == 14)
      {
        v19 = NSUnderlyingErrorKey;
        v20 = v4;
        v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        goto LABEL_10;
      }

      if (code != 15)
      {
        goto LABEL_26;
      }
    }

    v15 = NSUnderlyingErrorKey;
    v16 = v4;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    goto LABEL_10;
  }

  if (code > 5)
  {
    if (code != 6)
    {
      if (code == 11)
      {
        v21 = NSUnderlyingErrorKey;
        v22 = v4;
        v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        goto LABEL_10;
      }

LABEL_26:
      v11 = NSUnderlyingErrorKey;
      v12 = v4;
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      goto LABEL_10;
    }

LABEL_23:
    v17 = NSUnderlyingErrorKey;
    v18 = v4;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    goto LABEL_10;
  }

  if (code != 3 && code != 5)
  {
    goto LABEL_26;
  }

  v13 = NSUnderlyingErrorKey;
  v14 = v4;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
LABEL_10:
  v9 = DMFErrorWithCodeAndUserInfo();

LABEL_11:

  return v9;
}

+ (id)_dmfStatusErrorFromSUStatusError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = errorCopy;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  return v6;
}

- (DMDSUManagerInstallTask_iOS)init
{
  v5.receiver = self;
  v5.super_class = DMDSUManagerInstallTask_iOS;
  v2 = [(DMDSUManagerInstallTask_iOS *)&v5 init];
  if (v2)
  {
    v3 = [[SUManagerClient alloc] initWithDelegate:0 clientType:0];
    [(DMDSUManagerInstallTask_iOS *)v2 setSoftwareUpdateServices:v3];
  }

  return v2;
}

- (BOOL)removeUpdateWithError:(id *)error
{
  v5 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x3032000000;
  v25[2] = sub_10007129C;
  v25[3] = sub_1000712AC;
  v26 = 0;
  softwareUpdateServices = [(DMDSUManagerInstallTask_iOS *)self softwareUpdateServices];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000712B4;
  v20 = &unk_1000CEED8;
  v22 = &v27;
  v23 = &v24;
  v7 = v5;
  v21 = v7;
  [softwareUpdateServices purgeDownload:&v17];

  v8 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    if (error)
    {
      DMFErrorWithCodeAndUserInfo();
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (*(v28 + 24) == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100087970();
      }
    }

    else
    {
      v10 = *(v25[0] + 40);
      v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v11)
        {
          sub_1000878A0(v25);
        }

        if (error)
        {
          v12 = *(v25[0] + 40);
          if (v12)
          {
            v31 = NSUnderlyingErrorKey;
            v32 = v12;
            v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1, v17, v18, v19, v20];
            v14 = DMFErrorWithCodeAndUserInfo();
            *error = v14;
          }

          else
          {
            v15 = DMFErrorWithCodeAndUserInfo();
            *error = v15;
          }
        }
      }

      else
      {
        if (v11)
        {
          sub_100087928();
        }

        if (error)
        {
          *error = DMFErrorWithCodeAndUserInfo();
        }
      }
    }

    v9 = *(v28 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v27, 8);

  return v9 & 1;
}

- (BOOL)startDownloadWithError:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10007129C;
  v26 = sub_1000712AC;
  v27 = 0;
  v5 = objc_opt_new();
  [v5 setAutoDownload:0];
  [v5 setDownloadOnly:1];
  v6 = dispatch_semaphore_create(0);
  v7 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    isAutoDownload = [v5 isAutoDownload];
    isDownloadOnly = [v5 isDownloadOnly];
    v10 = @"NO";
    if (isAutoDownload)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (isDownloadOnly)
    {
      v10 = @"YES";
    }

    *buf = 138543618;
    v33 = v11;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "calling startDownloadWithMetadata:withResult:, autodownload is %{public}@, downloadOnly is %{public}@", buf, 0x16u);
  }

  softwareUpdateServices = [(DMDSUManagerInstallTask_iOS *)self softwareUpdateServices];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100071BAC;
  v18[3] = &unk_1000CEED8;
  v20 = &v28;
  v21 = &v22;
  v13 = v6;
  v19 = v13;
  [softwareUpdateServices startDownloadWithMetadata:v5 withResult:v18];

  v14 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v13, v14))
  {
    if (error)
    {
      v15 = DMFErrorWithCodeAndUserInfo();
LABEL_15:
      v16 = 0;
      *error = v15;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v29[3] & 1) == 0)
  {
    if (error)
    {
      v15 = [objc_opt_class() _dmfDownloadErrorFromSUDownloadError:v23[5]];
      goto LABEL_15;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v16 = 1;
LABEL_17:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v16;
}

- (BOOL)startInstallWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10007129C;
  v22 = sub_1000712AC;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  v28 = kSUInstallOptionRequireUpdate;
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  softwareUpdateServices = [(DMDSUManagerInstallTask_iOS *)self softwareUpdateServices];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100071EAC;
  v14[3] = &unk_1000CEED8;
  v16 = &v24;
  v17 = &v18;
  v8 = v5;
  v15 = v8;
  [softwareUpdateServices installUpdateWithOptions:v6 withResult:v14];

  v9 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v8, v9))
  {
    if ([v19[5] code] == 20)
    {
      v12 = v19[5];
      v19[5] = 0;

      v11 = 1;
      *(v25 + 24) = 1;
      goto LABEL_12;
    }

    if (v25[3])
    {
      v11 = 1;
      goto LABEL_12;
    }

    if (error)
    {
      v10 = [objc_opt_class() _dmfInstallErrorFromSUInstallError:v19[5]];
      goto LABEL_4;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  v10 = DMFErrorWithCodeAndUserInfo();
LABEL_4:
  v11 = 0;
  *error = v10;
LABEL_12:

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v11;
}

- (id)currentStatusWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10007129C;
  v24 = sub_1000712AC;
  v25 = dispatch_semaphore_create(0);
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = sub_10007129C;
  v18[3] = sub_1000712AC;
  v19 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10007129C;
  v15 = sub_1000712AC;
  v16 = objc_opt_new();
  softwareUpdateServices = [(DMDSUManagerInstallTask_iOS *)self softwareUpdateServices];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000721D0;
  v10[3] = &unk_1000CFEE0;
  v10[4] = &v11;
  v10[5] = &v17;
  v10[6] = &v20;
  [softwareUpdateServices downloadAndInstallState:v10];

  v6 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v21[5], v6))
  {
    if (error)
    {
      v7 = DMFErrorWithCodeAndUserInfo();
LABEL_8:
      v8 = 0;
      *error = v7;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!*(v18[0] + 40))
  {
    v8 = v12[5];
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000879B8(v18);
    if (error)
    {
      goto LABEL_7;
    }
  }

  else if (error)
  {
LABEL_7:
    v7 = [objc_opt_class() _dmfStatusErrorFromSUStatusError:*(v18[0] + 40)];
    goto LABEL_8;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

@end