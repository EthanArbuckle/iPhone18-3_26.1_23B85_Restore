@interface MSDInstallableFileDownloadOperation
- (BOOL)_downloadInstallableFile;
- (BOOL)_downloadInstallableFile:(id)a3 ofHash:(id)a4 toPath:(id)a5;
- (id)methodSelectors;
@end

@implementation MSDInstallableFileDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadInstallableFile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadInstallableFile
{
  v3 = +[MSDContentCacheManager sharedInstance];
  v4 = [(MSDOperation *)self context];
  v5 = [v4 identifier];

  v6 = [(MSDOperation *)self context];
  v7 = [v6 fileHash];

  v8 = +[MSDOperationContext downloadOnly];
  v9 = [v3 findFileInCache:v7];

  if (v9)
  {
    v10 = sub_100063BEC();
    v11 = [(MSDOperation *)self signpostId];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v28 = 138412290;
        *&v28[4] = v7;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v12, "File Cache Hit", "File cache hit: %{xcode:string}@", v28, 0xCu);
      }
    }

LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  v13 = [v3 fileCachePathFromSourcePath:0 forBackgroundDownload:v8];
  v10 = [v13 stringByAppendingPathComponent:v7];

  v14 = sub_100063BEC();
  v15 = [(MSDOperation *)self signpostId];
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *v28 = 138412290;
      *&v28[4] = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Download File", "File download hash: %{xcode:string}@", v28, 0xCu);
    }
  }

  v17 = [(MSDInstallableFileDownloadOperation *)self _downloadInstallableFile:v5 ofHash:v7 toPath:v10];
  v18 = sub_100063BEC();
  v19 = [(MSDOperation *)self signpostId];
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *v28 = 67109120;
      *&v28[4] = v17;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "Download File", "File download result: %{xcode:BOOLean}d", v28, 8u);
    }
  }

  if (v17)
  {
    v21 = [v3 fileSizeInCache:v7];
    v22 = sub_100063BEC();
    v23 = [(MSDOperation *)self signpostId];
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        *v28 = 134217984;
        *&v28[4] = v21;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, v24, "File Downloaded", "File download size: %{xcode:size-in-bytes}llu", v28, 0xCu);
      }
    }

    goto LABEL_16;
  }

  v27 = sub_1000CEF08(v10, self, v28);
  v25 = 0;
  if (v27)
  {
    goto LABEL_18;
  }

  v10 = *v28;
LABEL_17:

LABEL_18:
  return v25;
}

- (BOOL)_downloadInstallableFile:(id)a3 ofHash:(id)a4 toPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MSDOperation *)self context];
  v12 = [v11 originServer];

  v13 = objc_alloc_init(MSDDownloadFileRequest);
  v14 = [(MSDDownloadFileRequest *)v13 fileInfo];
  [v14 setFile:v10];

  v15 = [(MSDDownloadFileRequest *)v13 fileInfo];
  [v15 setFileHash:v9];

  [(MSDServerRequest *)v13 setSavePath:v8];
  [(MSDCDNServerRequest *)v13 setOriginServer:v12];
  v16 = +[MSDServerRequestHandler sharedInstance];
  v17 = [v16 handleRequestSync:v13];

  v18 = [v17 error];
  if (v18)
  {
    [(MSDOperation *)self setError:v18];
  }

  return v18 == 0;
}

@end