@interface MSDDownloadFileRequest
- (BOOL)isValid;
- (MSDDownloadFileRequest)init;
- (id)description;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
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

  fileInfo = [(MSDDownloadFileRequest *)self fileInfo];
  fileHash = [fileInfo fileHash];
  if (fileHash)
  {
    savePath = [(MSDServerRequest *)self savePath];
    if (savePath)
    {
      completion = [(MSDServerRequest *)self completion];
      v7 = completion != 0;
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
  getName = [(MSDServerRequest *)self getName];
  fileInfo = [(MSDDownloadFileRequest *)self fileInfo];
  fileHash = [fileInfo fileHash];
  savePath = [(MSDServerRequest *)self savePath];
  v7 = [NSString stringWithFormat:@"%@: hash=%@ toPath=%@", getName, fileHash, savePath];;

  return v7;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  payloadCopy = payload;
  errorCopy = error;
  v8 = +[NSFileManager defaultManager];
  v40.receiver = self;
  v40.super_class = MSDDownloadFileRequest;
  v9 = [(MSDServerRequest *)&v40 parseResponseForError:errorCopy andPayload:payloadCopy];

  error = [v9 error];

  if (error)
  {
    v20 = 0;
    v12 = 0;
  }

  else
  {
    v11 = [payloadCopy objectForKey:@"fileSize"];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [v9 setDownloadedSize:integerValue];
    fileInfo = [(MSDDownloadFileRequest *)self fileInfo];
    savePath = [(MSDServerRequest *)self savePath];
    v16 = [fileInfo hashCheckForFile:savePath];

    if (v16)
    {
      fileInfo2 = [(MSDDownloadFileRequest *)self fileInfo];
      savePath2 = [(MSDServerRequest *)self savePath];
      v19 = [fileInfo2 entitlementCheckForFile:savePath2];

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
  error2 = [v9 error];

  if (!error2)
  {
    [v9 setError:v20];
  }

  if (v20)
  {
    savePath3 = [(MSDServerRequest *)self savePath];
    v23 = [v8 fileExistsAtPath:savePath3];

    if (v23)
    {
      v24 = sub_100063A54();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        savePath4 = [(MSDServerRequest *)self savePath];
        *buf = 138543362;
        v42 = savePath4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Hash check or entitlement check for %{public}@ failed, deleting file", buf, 0xCu);
      }

      v26 = +[NSFileManager defaultManager];
      savePath5 = [(MSDServerRequest *)self savePath];
      v37 = 0;
      v28 = [v26 removeItemAtPath:savePath5 error:&v37];
      v29 = v37;

      if ((v28 & 1) == 0)
      {
        v30 = sub_100063A54();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          savePath6 = [(MSDServerRequest *)self savePath];
          *buf = 138543362;
          v42 = savePath6;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "File deletion for %{public}@ failed", buf, 0xCu);
        }
      }
    }
  }

  return v9;
}

@end