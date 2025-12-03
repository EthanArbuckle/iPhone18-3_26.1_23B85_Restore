@interface WKWebView
- (BOOL)_createSymlinkInDirectory:(id)directory pointingToPath:(id)path;
- (id)_fileNameForSuggestedName:(id)name;
- (void)_writeDataAtPath:(id)path asArchive:(BOOL)archive completion:(id)completion;
@end

@implementation WKWebView

- (void)_writeDataAtPath:(id)path asArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000062EC;
  v11[3] = &unk_10001C860;
  pathCopy = path;
  completionCopy = completion;
  v11[4] = self;
  v8 = pathCopy;
  v9 = completionCopy;
  v10 = objc_retainBlock(v11);
  if (archiveCopy)
  {
    [(WKWebView *)self createWebArchiveDataWithCompletionHandler:v10];
  }

  else
  {
    [(WKWebView *)self _getMainResourceDataWithCompletionHandler:v10];
  }
}

- (BOOL)_createSymlinkInDirectory:(id)directory pointingToPath:(id)path
{
  pathCopy = path;
  v6 = [directory stringByAppendingPathComponent:@"/file"];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v18 = 0;
    v8 = [v7 removeItemAtPath:v6 error:&v18];
    v9 = v18;
    if ((v8 & 1) == 0)
    {
      v10 = sub_100009E64();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10000A964(v6, v10, v9);
      }
    }

    v17 = v9;
    v11 = [v7 createSymbolicLinkAtPath:v6 withDestinationPath:pathCopy error:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v13 = sub_100009E64();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v13;
        safari_privacyPreservingDescription = [v12 safari_privacyPreservingDescription];
        *buf = 138543874;
        v20 = v6;
        v21 = 2114;
        v22 = pathCopy;
        v23 = 2114;
        v24 = safari_privacyPreservingDescription;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not create sym link from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_fileNameForSuggestedName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v6 = nameCopy;
  }

  else
  {
    _mainFrameURL = [(WKWebView *)self _mainFrameURL];
    pathExtension = [_mainFrameURL pathExtension];

    if (!pathExtension)
    {
      _MIMEType = [(WKWebView *)self _MIMEType];
      pathExtension = [WebMIMETypeRegistry preferredExtensionForMIMEType:_MIMEType];
    }

    v6 = [@"Page" stringByAppendingPathExtension:pathExtension];
  }

  return v6;
}

@end