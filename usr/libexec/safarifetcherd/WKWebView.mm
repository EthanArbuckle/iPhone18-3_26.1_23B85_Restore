@interface WKWebView
- (BOOL)_createSymlinkInDirectory:(id)a3 pointingToPath:(id)a4;
- (id)_fileNameForSuggestedName:(id)a3;
- (void)_writeDataAtPath:(id)a3 asArchive:(BOOL)a4 completion:(id)a5;
@end

@implementation WKWebView

- (void)_writeDataAtPath:(id)a3 asArchive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000062EC;
  v11[3] = &unk_10001C860;
  v12 = a3;
  v13 = a5;
  v11[4] = self;
  v8 = v12;
  v9 = v13;
  v10 = objc_retainBlock(v11);
  if (v6)
  {
    [(WKWebView *)self createWebArchiveDataWithCompletionHandler:v10];
  }

  else
  {
    [(WKWebView *)self _getMainResourceDataWithCompletionHandler:v10];
  }
}

- (BOOL)_createSymlinkInDirectory:(id)a3 pointingToPath:(id)a4
{
  v5 = a4;
  v6 = [a3 stringByAppendingPathComponent:@"/file"];
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
    v11 = [v7 createSymbolicLinkAtPath:v6 withDestinationPath:v5 error:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v13 = sub_100009E64();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v13;
        v16 = [v12 safari_privacyPreservingDescription];
        *buf = 138543874;
        v20 = v6;
        v21 = 2114;
        v22 = v5;
        v23 = 2114;
        v24 = v16;
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

- (id)_fileNameForSuggestedName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(WKWebView *)self _mainFrameURL];
    v8 = [v7 pathExtension];

    if (!v8)
    {
      v9 = [(WKWebView *)self _MIMEType];
      v8 = [WebMIMETypeRegistry preferredExtensionForMIMEType:v9];
    }

    v6 = [@"Page" stringByAppendingPathExtension:v8];
  }

  return v6;
}

@end