@interface MSDInstallableFileDownloadOperation
- (BOOL)_downloadInstallableFile;
- (BOOL)_downloadInstallableFile:(id)file ofHash:(id)hash toPath:(id)path;
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
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  fileHash = [context2 fileHash];

  v8 = +[MSDOperationContext downloadOnly];
  v9 = [v3 findFileInCache:fileHash];

  if (v9)
  {
    v10 = sub_100063BEC();
    signpostId = [(MSDOperation *)self signpostId];
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostId;
      if (os_signpost_enabled(v10))
      {
        *v28 = 138412290;
        *&v28[4] = fileHash;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v12, "File Cache Hit", "File cache hit: %{xcode:string}@", v28, 0xCu);
      }
    }

LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  v13 = [v3 fileCachePathFromSourcePath:0 forBackgroundDownload:v8];
  v10 = [v13 stringByAppendingPathComponent:fileHash];

  v14 = sub_100063BEC();
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = signpostId2;
    if (os_signpost_enabled(v14))
    {
      *v28 = 138412290;
      *&v28[4] = fileHash;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Download File", "File download hash: %{xcode:string}@", v28, 0xCu);
    }
  }

  v17 = [(MSDInstallableFileDownloadOperation *)self _downloadInstallableFile:identifier ofHash:fileHash toPath:v10];
  v18 = sub_100063BEC();
  signpostId3 = [(MSDOperation *)self signpostId];
  if (signpostId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = signpostId3;
    if (os_signpost_enabled(v18))
    {
      *v28 = 67109120;
      *&v28[4] = v17;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "Download File", "File download result: %{xcode:BOOLean}d", v28, 8u);
    }
  }

  if (v17)
  {
    v21 = [v3 fileSizeInCache:fileHash];
    v22 = sub_100063BEC();
    signpostId4 = [(MSDOperation *)self signpostId];
    if (signpostId4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = signpostId4;
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

- (BOOL)_downloadInstallableFile:(id)file ofHash:(id)hash toPath:(id)path
{
  pathCopy = path;
  hashCopy = hash;
  fileCopy = file;
  context = [(MSDOperation *)self context];
  originServer = [context originServer];

  v13 = objc_alloc_init(MSDDownloadFileRequest);
  fileInfo = [(MSDDownloadFileRequest *)v13 fileInfo];
  [fileInfo setFile:fileCopy];

  fileInfo2 = [(MSDDownloadFileRequest *)v13 fileInfo];
  [fileInfo2 setFileHash:hashCopy];

  [(MSDServerRequest *)v13 setSavePath:pathCopy];
  [(MSDCDNServerRequest *)v13 setOriginServer:originServer];
  v16 = +[MSDServerRequestHandler sharedInstance];
  v17 = [v16 handleRequestSync:v13];

  error = [v17 error];
  if (error)
  {
    [(MSDOperation *)self setError:error];
  }

  return error == 0;
}

@end