@interface MSDDownloadRequestManager
- (BOOL)_coalesceDownloadRequestForFileWithSameHash:(id)a3;
- (void)_dispatchRequest:(id)a3;
- (void)_finishDownloadRequest:(id)a3 withReponse:(id)a4;
- (void)_handleCompletionForDownloadRequest:(id)a3 withResponse:(id)a4;
- (void)_updateFDCforRequest:(id)a3;
- (void)downloadFileForRequest:(id)a3;
@end

@implementation MSDDownloadRequestManager

- (void)downloadFileForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSDDownloadFileResponse);
  if ([v4 isValid])
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v4 savePath];
    v8 = [v6 fileExistsAtPath:v7];

    if (!v8)
    {
      if (![(MSDDownloadRequestManager *)self _coalesceDownloadRequestForFileWithSameHash:v4])
      {
        [(MSDDownloadRequestManager *)self _dispatchRequest:v4];
        goto LABEL_13;
      }

      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Coalesce current download file request with existing one.", &v13, 0xCu);
      }

      goto LABEL_11;
    }

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 savePath];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "File already exists at save path: %{public}@", &v13, 0xCu);
    }

    [(MSDServerResponse *)v5 setError:0];
  }

  else
  {
    sub_1000D6350(v4, v5);
  }

  v11 = [v4 completion];

  if (v11)
  {
    v12 = [v4 completion];
    (*(v12 + 16))(v12, v5);
LABEL_11:
  }

LABEL_13:
}

- (void)_dispatchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 savePath];
  v6 = [v5 stringByAppendingPathExtension:@"IN_PROGRESS"];
  [v4 setSavePath:v6];

  v7 = [v4 downloadCredentials];
  v8 = [v4 originServer];
  v9 = [v7 isValidForOriginServer:v8];

  if (v9)
  {
    v10 = [(MSDDownloadRequestManager *)self server];
    [v10 downloadFile:v4];
  }

  else
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000D644C(v4, v11);
    }

    v12 = [(MSDDownloadRequestManager *)self updateQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000608D8;
    v13[3] = &unk_10016A258;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

- (BOOL)_coalesceDownloadRequestForFileWithSameHash:(id)a3
{
  v4 = a3;
  v5 = [v4 savePath];
  os_unfair_lock_lock(&self->_downloadRequestsLock);
  v6 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  v7 = [v6 objectForKey:v5];

  [v4 completion];
  if (v7)
    v8 = {;

    v9 = objc_retainBlock(v8);
    [v7 addObject:v9];

    v10 = v7;
  }

  else
    v11 = {;

    v12 = objc_retainBlock(v11);
    v10 = [NSMutableArray arrayWithObject:v12];

    v8 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
    [v8 setObject:v10 forKey:v5];
  }

  os_unfair_lock_unlock(&self->_downloadRequestsLock);
  return v7 != 0;
}

- (void)_handleCompletionForDownloadRequest:(id)a3 withResponse:(id)a4
{
  v6 = a4;
  v7 = [a3 savePath];
  os_unfair_lock_lock(&self->_downloadRequestsLock);
  v8 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v16 + 1) + 8 * v14) + 16))(*(*(&v16 + 1) + 8 * v14));
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [v10 removeAllObjects];
  }

  v15 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  [v15 removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_downloadRequestsLock);
}

- (void)_updateFDCforRequest:(id)a3
{
  v18 = a3;
  v4 = objc_alloc_init(MSDDownloadFileResponse);
  v5 = [v18 downloadCredentials];
  v6 = [v18 originServer];
  v7 = [v5 isValidForOriginServer:v6];

  if (v7)
  {
    v8 = [(MSDDownloadRequestManager *)self server];
    [v8 downloadFile:v18];
  }

  else
  {
    v9 = [(MSDDownloadRequestManager *)self fdcDelegate];

    if (v9)
    {
      v10 = [v18 downloadCredentials];
      v11 = [v10 manifestInfo];

      v12 = [(MSDDownloadRequestManager *)self fdcDelegate];
      v13 = [v12 updateFileDownloadCredentialFromManifestInfo:v11];

      v14 = [v13 error];

      if (v14)
      {
        v15 = [v13 error];
        [(MSDServerResponse *)v4 setError:v15];

        [(MSDDownloadRequestManager *)self _finishDownloadRequest:v18 withReponse:v4];
      }

      else
      {
        v17 = [(MSDDownloadRequestManager *)self server];
        [v17 downloadFile:v18];
      }
    }

    else
    {
      v16 = [NSError errorDomainMSDWithCode:3727744513 message:@"Download Credential Expired"];
      [(MSDServerResponse *)v4 setError:v16];

      [(MSDDownloadRequestManager *)self _finishDownloadRequest:v18 withReponse:v4];
    }
  }
}

- (void)_finishDownloadRequest:(id)a3 withReponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDownloadRequestManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061148;
  block[3] = &unk_100169B70;
  v9 = v7;
  v35 = v9;
  dispatch_async(v8, block);

  v10 = [v6 savePath];
  v11 = [v10 pathExtension];

  v12 = [v6 savePath];
  v13 = [v12 stringByDeletingPathExtension];

  if (v11 && [v11 isEqualToString:@"IN_PROGRESS"])
  {
    v14 = [v9 error];

    if (!v14)
    {
      v15 = [v6 savePath];
      v16 = [v15 UTF8String];
      v17 = [v13 UTF8String];
      rename(v16, v17, v18);
      LODWORD(v16) = v19;

      if (v16)
      {
        v20 = __error();
        v21 = [NSString stringWithUTF8String:strerror(*v20)];
        v22 = sub_100063A54();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6510(v13, v21, v22);
        }

        v23 = [NSError errorDomainMSDWithCode:3727740944 message:v21];
        [v9 setError:v23];
      }
    }

    [v6 setSavePath:v13];
  }

  v24 = [v9 error];

  if (!v24)
  {
    goto LABEL_15;
  }

  if ([v6 retryCount] < 1)
  {
    v27 = sub_100063A54();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v6 savePath];
      v29 = [v9 error];
      *location = 138543618;
      *&location[4] = v28;
      v37 = 2114;
      v38 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Download Failed for file: %{public}@ with error: %{public}@", location, 0x16u);
    }

LABEL_15:
    [(MSDDownloadRequestManager *)self _handleCompletionForDownloadRequest:v6 withResponse:v9];
    goto LABEL_16;
  }

  objc_initWeak(location, self);
  v25 = dispatch_time(0, 3000000000);
  v26 = dispatch_get_global_queue(25, 0);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100061248;
  v30[3] = &unk_10016B0F8;
  v31 = v6;
  objc_copyWeak(&v33, location);
  v32 = self;
  dispatch_after(v25, v26, v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
LABEL_16:
}

@end