@interface MSDDownloadFileRequest
- (BOOL)isValid;
- (MSDDownloadFileRequest)init;
- (id)description;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDDownloadFileRequest

- (MSDDownloadFileRequest)init
{
  v6.receiver = self;
  v6.super_class = MSDDownloadFileRequest;
  v2 = [(MSDDownloadFileRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MSDFileDownloadInfo);
    [(MSDDownloadFileRequest *)v2 setFileInfo:v3];

    [(MSDDownloadFileRequest *)v2 setRetryCount:2];
    [(MSDDownloadFileRequest *)v2 setDispatchTime:0.0];
    v4 = v2;
  }

  return v2;
}

- (BOOL)isValid
{
  v9.receiver = self;
  v9.super_class = MSDDownloadFileRequest;
  if (![(MSDCDNServerRequest *)&v9 isValid])
  {
    return 0;
  }

  v3 = [(MSDDownloadFileRequest *)self fileInfo];
  v4 = [v3 fileHash];
  if (v4)
  {
    v5 = [(MSDServerRequest *)self savePath];
    if (v5)
    {
      v6 = [(MSDServerRequest *)self completion];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [(MSDServerRequest *)self getName];
  v4 = [(MSDDownloadFileRequest *)self fileInfo];
  v5 = [v4 fileHash];
  v6 = [(MSDServerRequest *)self savePath];
  v7 = [NSString stringWithFormat:@"%@: hash=%@ toPath=%@", v3, v5, v6];;

  return v7;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSFileManager defaultManager];
  v40.receiver = self;
  v40.super_class = MSDDownloadFileRequest;
  v9 = [(MSDServerRequest *)&v40 parseResponseForError:v7 andPayload:v6];

  v10 = [v9 error];

  if (v10)
  {
    v20 = 0;
    v12 = 0;
  }

  else
  {
    v11 = [v6 objectForKey:@"fileSize"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 integerValue];
    }

    else
    {
      v13 = 0;
    }

    [v9 setDownloadedSize:v13];
    v14 = [(MSDDownloadFileRequest *)self fileInfo];
    v15 = [(MSDServerRequest *)self savePath];
    v16 = [v14 hashCheckForFile:v15];

    if (v16)
    {
      v17 = [(MSDDownloadFileRequest *)self fileInfo];
      v18 = [(MSDServerRequest *)self savePath];
      v19 = [v17 entitlementCheckForFile:v18];

      if (v19)
      {
        v20 = 0;
        goto LABEL_8;
      }

      v38 = 0;
      v33 = @"Some file(s) are not allowed to install.";
      v34 = &v38;
      v35 = &v38;
      v36 = 3727740932;
    }

    else
    {
      v39 = 0;
      v33 = @"Some file(s) are corrupted.";
      v34 = &v39;
      v35 = &v39;
      v36 = 3727740946;
    }

    sub_1000C1390(v35, v36, v33);
    v20 = *v34;
  }

LABEL_8:
  v21 = [v9 error];

  if (!v21)
  {
    [v9 setError:v20];
  }

  if (v20)
  {
    v22 = [(MSDServerRequest *)self savePath];
    v23 = [v8 fileExistsAtPath:v22];

    if (v23)
    {
      v24 = sub_100063A54();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(MSDServerRequest *)self savePath];
        *buf = 138543362;
        v42 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Hash check or entitlement check for %{public}@ failed, deleting file", buf, 0xCu);
      }

      v26 = +[NSFileManager defaultManager];
      v27 = [(MSDServerRequest *)self savePath];
      v37 = 0;
      v28 = [v26 removeItemAtPath:v27 error:&v37];
      v29 = v37;

      if ((v28 & 1) == 0)
      {
        v30 = sub_100063A54();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v32 = [(MSDServerRequest *)self savePath];
          *buf = 138543362;
          v42 = v32;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "File deletion for %{public}@ failed", buf, 0xCu);
        }
      }
    }
  }

  return v9;
}

@end