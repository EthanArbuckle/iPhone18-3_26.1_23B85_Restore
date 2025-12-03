@interface MSDDownloadRequestManager
- (BOOL)_coalesceDownloadRequestForFileWithSameHash:(id)hash;
- (void)_dispatchRequest:(id)request;
- (void)_finishDownloadRequest:(id)request withReponse:(id)reponse;
- (void)_handleCompletionForDownloadRequest:(id)request withResponse:(id)response;
- (void)_updateFDCforRequest:(id)request;
- (void)downloadFileForRequest:(id)request;
@end

@implementation MSDDownloadRequestManager

- (void)downloadFileForRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MSDDownloadFileResponse);
  if ([requestCopy isValid])
  {
    v6 = +[NSFileManager defaultManager];
    savePath = [requestCopy savePath];
    v8 = [v6 fileExistsAtPath:savePath];

    if (!v8)
    {
      if (![(MSDDownloadRequestManager *)self _coalesceDownloadRequestForFileWithSameHash:requestCopy])
      {
        [(MSDDownloadRequestManager *)self _dispatchRequest:requestCopy];
        goto LABEL_13;
      }

      completion2 = sub_100063A54();
      if (os_log_type_enabled(completion2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = requestCopy;
        _os_log_impl(&_mh_execute_header, completion2, OS_LOG_TYPE_DEFAULT, "%{public}@: Coalesce current download file request with existing one.", &v13, 0xCu);
      }

      goto LABEL_11;
    }

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      savePath2 = [requestCopy savePath];
      v13 = 138543362;
      v14 = savePath2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "File already exists at save path: %{public}@", &v13, 0xCu);
    }

    [(MSDServerResponse *)v5 setError:0];
  }

  else
  {
    sub_1000D6350(requestCopy, v5);
  }

  completion = [requestCopy completion];

  if (completion)
  {
    completion2 = [requestCopy completion];
    (*(completion2 + 16))(completion2, v5);
LABEL_11:
  }

LABEL_13:
}

- (void)_dispatchRequest:(id)request
{
  requestCopy = request;
  savePath = [requestCopy savePath];
  v6 = [savePath stringByAppendingPathExtension:@"IN_PROGRESS"];
  [requestCopy setSavePath:v6];

  downloadCredentials = [requestCopy downloadCredentials];
  originServer = [requestCopy originServer];
  v9 = [downloadCredentials isValidForOriginServer:originServer];

  if (v9)
  {
    server = [(MSDDownloadRequestManager *)self server];
    [server downloadFile:requestCopy];
  }

  else
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000D644C(requestCopy, v11);
    }

    updateQueue = [(MSDDownloadRequestManager *)self updateQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000608D8;
    v13[3] = &unk_10016A258;
    v13[4] = self;
    v14 = requestCopy;
    dispatch_async(updateQueue, v13);
  }
}

- (BOOL)_coalesceDownloadRequestForFileWithSameHash:(id)hash
{
  hashCopy = hash;
  savePath = [hashCopy savePath];
  os_unfair_lock_lock(&self->_downloadRequestsLock);
  downloadRequestCompletions = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  v7 = [downloadRequestCompletions objectForKey:savePath];

  [hashCopy completion];
  if (v7)
    downloadRequestCompletions2 = {;

    v9 = objc_retainBlock(downloadRequestCompletions2);
    [v7 addObject:v9];

    v10 = v7;
  }

  else
    v11 = {;

    v12 = objc_retainBlock(v11);
    v10 = [NSMutableArray arrayWithObject:v12];

    downloadRequestCompletions2 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
    [downloadRequestCompletions2 setObject:v10 forKey:savePath];
  }

  os_unfair_lock_unlock(&self->_downloadRequestsLock);
  return v7 != 0;
}

- (void)_handleCompletionForDownloadRequest:(id)request withResponse:(id)response
{
  responseCopy = response;
  savePath = [request savePath];
  os_unfair_lock_lock(&self->_downloadRequestsLock);
  downloadRequestCompletions = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  v9 = [downloadRequestCompletions objectForKey:savePath];

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

  downloadRequestCompletions2 = [(MSDDownloadRequestManager *)self downloadRequestCompletions];
  [downloadRequestCompletions2 removeObjectForKey:savePath];

  os_unfair_lock_unlock(&self->_downloadRequestsLock);
}

- (void)_updateFDCforRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MSDDownloadFileResponse);
  downloadCredentials = [requestCopy downloadCredentials];
  originServer = [requestCopy originServer];
  v7 = [downloadCredentials isValidForOriginServer:originServer];

  if (v7)
  {
    server = [(MSDDownloadRequestManager *)self server];
    [server downloadFile:requestCopy];
  }

  else
  {
    fdcDelegate = [(MSDDownloadRequestManager *)self fdcDelegate];

    if (fdcDelegate)
    {
      downloadCredentials2 = [requestCopy downloadCredentials];
      manifestInfo = [downloadCredentials2 manifestInfo];

      fdcDelegate2 = [(MSDDownloadRequestManager *)self fdcDelegate];
      v13 = [fdcDelegate2 updateFileDownloadCredentialFromManifestInfo:manifestInfo];

      error = [v13 error];

      if (error)
      {
        error2 = [v13 error];
        [(MSDServerResponse *)v4 setError:error2];

        [(MSDDownloadRequestManager *)self _finishDownloadRequest:requestCopy withReponse:v4];
      }

      else
      {
        server2 = [(MSDDownloadRequestManager *)self server];
        [server2 downloadFile:requestCopy];
      }
    }

    else
    {
      v16 = [NSError errorDomainMSDWithCode:3727744513 message:@"Download Credential Expired"];
      [(MSDServerResponse *)v4 setError:v16];

      [(MSDDownloadRequestManager *)self _finishDownloadRequest:requestCopy withReponse:v4];
    }
  }
}

- (void)_finishDownloadRequest:(id)request withReponse:(id)reponse
{
  requestCopy = request;
  reponseCopy = reponse;
  updateQueue = [(MSDDownloadRequestManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061148;
  block[3] = &unk_100169B70;
  v9 = reponseCopy;
  v35 = v9;
  dispatch_async(updateQueue, block);

  savePath = [requestCopy savePath];
  pathExtension = [savePath pathExtension];

  savePath2 = [requestCopy savePath];
  stringByDeletingPathExtension = [savePath2 stringByDeletingPathExtension];

  if (pathExtension && [pathExtension isEqualToString:@"IN_PROGRESS"])
  {
    error = [v9 error];

    if (!error)
    {
      savePath3 = [requestCopy savePath];
      uTF8String = [savePath3 UTF8String];
      uTF8String2 = [stringByDeletingPathExtension UTF8String];
      rename(uTF8String, uTF8String2, v18);
      LODWORD(uTF8String) = v19;

      if (uTF8String)
      {
        v20 = __error();
        v21 = [NSString stringWithUTF8String:strerror(*v20)];
        v22 = sub_100063A54();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6510(stringByDeletingPathExtension, v21, v22);
        }

        v23 = [NSError errorDomainMSDWithCode:3727740944 message:v21];
        [v9 setError:v23];
      }
    }

    [requestCopy setSavePath:stringByDeletingPathExtension];
  }

  error2 = [v9 error];

  if (!error2)
  {
    goto LABEL_15;
  }

  if ([requestCopy retryCount] < 1)
  {
    v27 = sub_100063A54();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      savePath4 = [requestCopy savePath];
      error3 = [v9 error];
      *location = 138543618;
      *&location[4] = savePath4;
      v37 = 2114;
      v38 = error3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Download Failed for file: %{public}@ with error: %{public}@", location, 0x16u);
    }

LABEL_15:
    [(MSDDownloadRequestManager *)self _handleCompletionForDownloadRequest:requestCopy withResponse:v9];
    goto LABEL_16;
  }

  objc_initWeak(location, self);
  v25 = dispatch_time(0, 3000000000);
  v26 = dispatch_get_global_queue(25, 0);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100061248;
  v30[3] = &unk_10016B0F8;
  v31 = requestCopy;
  objc_copyWeak(&v33, location);
  selfCopy = self;
  dispatch_after(v25, v26, v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
LABEL_16:
}

@end