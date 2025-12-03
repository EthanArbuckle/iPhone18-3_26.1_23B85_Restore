@interface MSDApplicationFileDownloadOperation
- (BOOL)_downloadAppArchiveFile;
- (id)_downloadAppArchiveFile:(id)file ofHash:(id)hash ofAppUID:(id)d currenntAppUID:(id)iD toFolder:(id)folder;
- (id)methodSelectors;
@end

@implementation MSDApplicationFileDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadAppArchiveFile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadAppArchiveFile
{
  v3 = +[MSDContentCacheManager sharedInstance];
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  uniqueIdentifier = [context2 uniqueIdentifier];

  context3 = [(MSDOperation *)self context];
  currentUniqueIdentifier = [context3 currentUniqueIdentifier];

  context4 = [(MSDOperation *)self context];
  fileHash = [context4 fileHash];

  v12 = +[MSDOperationContext downloadOnly];
  if (currentUniqueIdentifier)
  {
    v13 = [v3 appDiffPatchFileForSourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
    if (v13)
    {
      v14 = v13;
      context5 = [(MSDOperation *)self context];
      [context5 setUseDiffPatch:1];

LABEL_5:
      v16 = sub_100063BEC();
      signpostId = [(MSDOperation *)self signpostId];
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostId;
        if (os_signpost_enabled(v16))
        {
          *v35 = 138412290;
          *&v35[4] = v14;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v18, "File Cache Hit", "File cache hit: %{xcode:string}@", v35, 0xCu);
        }
      }

LABEL_23:

      v32 = 1;
      goto LABEL_24;
    }
  }

  v14 = [v3 findFileInCache:fileHash];
  if (v14)
  {
    goto LABEL_5;
  }

  v14 = [v3 fileCachePathFromSourcePath:0 forBackgroundDownload:v12];
  v19 = sub_100063BEC();
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = signpostId2;
    if (os_signpost_enabled(v19))
    {
      *v35 = 138412290;
      *&v35[4] = identifier;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Download App", "App identifier: %{xcode:string}@", v35, 0xCu);
    }
  }

  v16 = [(MSDApplicationFileDownloadOperation *)self _downloadAppArchiveFile:identifier ofHash:fileHash ofAppUID:uniqueIdentifier currenntAppUID:currentUniqueIdentifier toFolder:v14];
  v22 = sub_100063BEC();
  signpostId3 = [(MSDOperation *)self signpostId];
  if (signpostId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = signpostId3;
    if (os_signpost_enabled(v22))
    {
      *v35 = 67109120;
      *&v35[4] = v16 != 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v24, "Download App", "App download result: %{xcode:BOOLean}d", v35, 8u);
    }
  }

  if (v16)
  {
    context6 = [(MSDOperation *)self context];
    useDiffPatch = [context6 useDiffPatch];

    if (useDiffPatch)
    {
      [v3 addAppDiffPatchFile:v16 sourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
    }

    else if (([fileHash isEqualToString:v16] & 1) == 0)
    {
      context7 = [(MSDOperation *)self context];
      [context7 setFileHash:v16];
    }

    v28 = [v3 fileSizeInCache:v16];
    v29 = sub_100063BEC();
    signpostId4 = [(MSDOperation *)self signpostId];
    if (signpostId4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v31 = signpostId4;
      if (os_signpost_enabled(v29))
      {
        *v35 = 134217984;
        *&v35[4] = v28;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, v31, "File Downloaded", "File download size: %{xcode:size-in-bytes}llu", v35, 0xCu);
      }
    }

    goto LABEL_23;
  }

  v34 = sub_1000CEF08(v14, self, v35);
  v32 = 0;
  if (v34)
  {
    goto LABEL_25;
  }

  v14 = *v35;
LABEL_24:

LABEL_25:
  return v32;
}

- (id)_downloadAppArchiveFile:(id)file ofHash:(id)hash ofAppUID:(id)d currenntAppUID:(id)iD toFolder:(id)folder
{
  folderCopy = folder;
  iDCopy = iD;
  dCopy = d;
  hashCopy = hash;
  fileCopy = file;
  v17 = objc_alloc_init(MSDDownloadIPARequest);
  [(MSDDownloadIPARequest *)v17 setAppID:fileCopy];

  [(MSDDownloadIPARequest *)v17 setFileHash:hashCopy];
  [(MSDDownloadIPARequest *)v17 setUid:dCopy];

  [(MSDDownloadIPARequest *)v17 setCurrentUID:iDCopy];
  [(MSDServerRequest *)v17 setSavePath:folderCopy];

  context = [(MSDOperation *)self context];
  originServer = [context originServer];
  [(MSDDownloadIPARequest *)v17 setOriginServer:originServer];

  v20 = +[MSDServerRequestHandler sharedInstance];
  v21 = [v20 handleRequestSync:v17];

  error = [v21 error];
  if (error)
  {
    [(MSDOperation *)self setError:error];
    fileName = 0;
  }

  else
  {
    isDiffPatch = [v21 isDiffPatch];
    context2 = [(MSDOperation *)self context];
    [context2 setUseDiffPatch:isDiffPatch];

    fileName = [v21 fileName];
  }

  return fileName;
}

@end