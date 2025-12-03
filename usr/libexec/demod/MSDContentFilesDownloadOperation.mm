@interface MSDContentFilesDownloadOperation
- (BOOL)_downloadCreationList;
- (id)methodSelectors;
- (void)_downloadContentFile:(id)file ofHash:(id)hash toPath:(id)path completionHandler:(id)handler;
@end

@implementation MSDContentFilesDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadCreationList"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadCreationList
{
  v52 = +[MSDContentCacheManager sharedInstance];
  v57 = objc_alloc_init(NSCondition);
  context = [(MSDOperation *)self context];
  creationList = [context creationList];
  v4 = [creationList mutableCopy];

  v51 = objc_alloc_init(NSMutableSet);
  v50 = +[MSDOperationContext downloadOnly];
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 1;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_1000B60B4;
  v77 = sub_1000B60C4;
  v78 = +[NSMutableDictionary dictionary];
  if (!os_variant_has_internal_content())
  {
    goto LABEL_6;
  }

  v5 = +[MSDTestPreferences sharedInstance];
  concurrentSession = [v5 concurrentSession];

  v7 = +[MSDTestPreferences sharedInstance];
  concurrentDownloadRequest = [v7 concurrentDownloadRequest];

  v55 = concurrentDownloadRequest * concurrentSession;
  if ((concurrentDownloadRequest * concurrentSession) >= 1)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v55;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Override default value for concurrent download request: %ld", buf, 0xCu);
    }
  }

  else
  {
LABEL_6:
    v55 = 3;
  }

  context2 = [(MSDOperation *)self context];
  cloneFailedList = [context2 cloneFailedList];
  [v4 addObjectsFromArray:cloneFailedList];

  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v69 = 0u;
  obj = v4;
  v12 = [obj countByEnumeratingWithState:&v69 objects:v91 count:16];
  if (v12)
  {
    v54 = *v70;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v70 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v69 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      canPassCheckpoint = [(MSDOperation *)self canPassCheckpoint];
      if ((canPassCheckpoint & 1) == 0)
      {
        goto LABEL_40;
      }

      context3 = [(MSDOperation *)self context];
      masterManifest = [context3 masterManifest];
      v19 = [masterManifest metadataForFile:v14];

      if (!v19)
      {
        break;
      }

      getFileType = [v19 getFileType];
      v21 = [getFileType isEqualToString:NSFileTypeRegular];

      if (v21 && [v19 getFileSize])
      {
        getHash = [v19 getHash];
        hexStringRepresentation = [getHash hexStringRepresentation];

        v24 = [v52 findFileInCache:hexStringRepresentation];

        if (v24)
        {
          v25 = sub_100063BEC();
          signpostId = [(MSDOperation *)self signpostId];
          if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            *buf = 138412290;
            v88 = hexStringRepresentation;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, signpostId, "File Cache Hit", "File cache hit: %{xcode:string}@", buf, 0xCu);
          }
        }

        else if (([v51 containsObject:hexStringRepresentation] & 1) == 0)
        {
          [v51 addObject:hexStringRepresentation];
          context4 = [(MSDOperation *)self context];
          contentRootPath = [context4 contentRootPath];
          v28 = [contentRootPath stringByAppendingPathComponent:v14];

          v32 = [v52 fileCachePathFromSourcePath:v28 forBackgroundDownload:v50];
          v27 = [v32 stringByAppendingPathComponent:hexStringRepresentation];

          [v57 lock];
          while (1)
          {
            v33 = v84[3];
            if (v33 < v55)
            {
              break;
            }

            [v57 wait];
          }

          if (v80[3])
          {
            v84[3] = v33 + 1;
            [v57 unlock];
            v34 = sub_100063BEC();
            signpostId2 = [(MSDOperation *)self signpostId];
            if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              spid = signpostId2;
              if (os_signpost_enabled(v34))
              {
                *buf = 138412290;
                v88 = hexStringRepresentation;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Download File", "File download hash: %{xcode:string}@", buf, 0xCu);
              }
            }

            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000B60CC;
            v59[3] = &unk_10016C490;
            v59[4] = self;
            v68 = canPassCheckpoint;
            v60 = v52;
            hexStringRepresentation = hexStringRepresentation;
            v65 = &v73;
            v61 = hexStringRepresentation;
            v62 = v14;
            v27 = v27;
            v63 = v27;
            v66 = &v79;
            v64 = v57;
            v67 = &v83;
            [(MSDContentFilesDownloadOperation *)self _downloadContentFile:v14 ofHash:hexStringRepresentation toPath:v27 completionHandler:v59];

            v29 = 0;
          }

          else
          {
            v36 = sub_100063A54();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Aborting file download due to previous error.", buf, 2u);
            }

            [v57 unlock];
            v29 = 2;
          }

          goto LABEL_23;
        }
      }

      else
      {
        hexStringRepresentation = 0;
      }

      v27 = 0;
      v28 = 0;
      v29 = 3;
LABEL_23:

      objc_autoreleasePoolPop(v15);
      if (v29 != 3 && v29)
      {

        if (v29 == 6)
        {
          goto LABEL_55;
        }

        goto LABEL_44;
      }

      if (++v13 == v12)
      {
        v38 = [obj countByEnumeratingWithState:&v69 objects:v91 count:16];
        v12 = v38;
        if (v38)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }
    }

    v37 = sub_100063A54();
    sub_1000E9CAC(v37, v89, &v90);
LABEL_40:
    hexStringRepresentation = 0;
    v27 = 0;
    v28 = 0;
    v19 = 0;
    v29 = 6;
    goto LABEL_23;
  }

LABEL_42:

LABEL_44:
  [v57 lock];
  while (v84[3] >= 1)
  {
    [v57 wait];
  }

  [v57 unlock];
  if (*(v80 + 24) == 1)
  {
    if (os_variant_has_internal_content())
    {
      if ([NSPropertyListSerialization propertyList:v74[5] isValidForFormat:100])
      {
        v39 = v74[5];
        v40 = [NSURL fileURLWithPath:@"/tmp/DownloadedFileList.plist"];
        v58 = 0;
        v41 = [v39 writeToURL:v40 error:&v58];
        v42 = v58;

        if ((v41 & 1) == 0)
        {
          v43 = sub_100063A54();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v42 localizedDescription];
            sub_1000E9D68(localizedDescription, buf, v43);
          }
        }
      }

      else
      {
        v42 = sub_100063A54();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000E9D24(v42);
        }
      }

      v45 = 1;
      goto LABEL_60;
    }

    v45 = 1;
  }

  else
  {
LABEL_55:
    [(MSDOperation *)self setRetryable:1];
    error = [(MSDOperation *)self error];
    v47 = error == 0;

    if (v47)
    {
      v42 = [NSError errorDomainMSDWithCode:3727744736 message:@"An error has occurred."];
      [(MSDOperation *)self setError:v42];
      v45 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v45 = 0;
  }

LABEL_61:
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  return v45 & 1;
}

- (void)_downloadContentFile:(id)file ofHash:(id)hash toPath:(id)path completionHandler:(id)handler
{
  fileCopy = file;
  hashCopy = hash;
  pathCopy = path;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v14 = objc_alloc_init(MSDDownloadFileRequest);
  fileInfo = [(MSDDownloadFileRequest *)v14 fileInfo];
  [fileInfo setFile:fileCopy];

  fileInfo2 = [(MSDDownloadFileRequest *)v14 fileInfo];
  [fileInfo2 setFileHash:hashCopy];

  [(MSDServerRequest *)v14 setSavePath:pathCopy];
  context = [(MSDOperation *)self context];
  originServer = [context originServer];
  [(MSDCDNServerRequest *)v14 setOriginServer:originServer];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B64C0;
  v21[3] = &unk_10016C4B8;
  v19 = handlerCopy;
  v22 = v19;
  objc_copyWeak(&v23, &location);
  [(MSDServerRequest *)v14 setCompletion:v21];
  v20 = +[MSDServerRequestHandler sharedInstance];
  [v20 handleRequestAsync:v14];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

@end