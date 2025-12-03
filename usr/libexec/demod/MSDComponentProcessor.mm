@interface MSDComponentProcessor
- (MSDComponentProcessor)initWithQoS:(int64_t)s;
- (id)_queueForOperation:(id)operation;
- (void)_dispatchOperationForExecution:(id)execution;
- (void)cancel;
- (void)process:(id)process;
- (void)resume;
- (void)suspend;
@end

@implementation MSDComponentProcessor

- (MSDComponentProcessor)initWithQoS:(int64_t)s
{
  v39.receiver = self;
  v39.super_class = MSDComponentProcessor;
  v4 = [(MSDComponentProcessor *)&v39 init];
  if (v4)
  {
    if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 concurrentDownloadOperation], v5, v6 >= 1))
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Override default number of concurrent download operation: %ld", buf, 0xCu);
      }
    }

    else
    {
      v6 = 2;
    }

    v8 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setDefaultQueue:v8];

    defaultQueue = [(MSDComponentProcessor *)v4 defaultQueue];
    [defaultQueue setMaxConcurrentOperationCount:1];

    defaultQueue2 = [(MSDComponentProcessor *)v4 defaultQueue];
    [defaultQueue2 setQualityOfService:s];

    defaultQueue3 = [(MSDComponentProcessor *)v4 defaultQueue];
    [defaultQueue3 setSuspended:1];

    defaultQueue4 = [(MSDComponentProcessor *)v4 defaultQueue];
    [defaultQueue4 setName:@"com.apple.msd.default_queue"];

    v13 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setPrepareQueue:v13];

    prepareQueue = [(MSDComponentProcessor *)v4 prepareQueue];
    [prepareQueue setMaxConcurrentOperationCount:1];

    prepareQueue2 = [(MSDComponentProcessor *)v4 prepareQueue];
    [prepareQueue2 setQualityOfService:s];

    prepareQueue3 = [(MSDComponentProcessor *)v4 prepareQueue];
    [prepareQueue3 setSuspended:1];

    prepareQueue4 = [(MSDComponentProcessor *)v4 prepareQueue];
    [prepareQueue4 setName:@"com.apple.msd.prepare_queue"];

    v18 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setDownloadQueue:v18];

    downloadQueue = [(MSDComponentProcessor *)v4 downloadQueue];
    [downloadQueue setMaxConcurrentOperationCount:v6];

    downloadQueue2 = [(MSDComponentProcessor *)v4 downloadQueue];
    [downloadQueue2 setQualityOfService:s];

    downloadQueue3 = [(MSDComponentProcessor *)v4 downloadQueue];
    [downloadQueue3 setSuspended:1];

    downloadQueue4 = [(MSDComponentProcessor *)v4 downloadQueue];
    [downloadQueue4 setName:@"com.apple.msd.download_queue"];

    v23 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setInstallQueue:v23];

    installQueue = [(MSDComponentProcessor *)v4 installQueue];
    [installQueue setMaxConcurrentOperationCount:1];

    installQueue2 = [(MSDComponentProcessor *)v4 installQueue];
    [installQueue2 setQualityOfService:s];

    installQueue3 = [(MSDComponentProcessor *)v4 installQueue];
    [installQueue3 setSuspended:1];

    installQueue4 = [(MSDComponentProcessor *)v4 installQueue];
    [installQueue4 setName:@"com.apple.msd.install_queue"];

    v28 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setParallelInstallQueue:v28];

    parallelInstallQueue = [(MSDComponentProcessor *)v4 parallelInstallQueue];
    [parallelInstallQueue setMaxConcurrentOperationCount:5];

    parallelInstallQueue2 = [(MSDComponentProcessor *)v4 parallelInstallQueue];
    [parallelInstallQueue2 setQualityOfService:s];

    parallelInstallQueue3 = [(MSDComponentProcessor *)v4 parallelInstallQueue];
    [parallelInstallQueue3 setSuspended:1];

    parallelInstallQueue4 = [(MSDComponentProcessor *)v4 parallelInstallQueue];
    [parallelInstallQueue4 setName:@"com.apple.msd.parallel_install_queue"];

    v33 = objc_alloc_init(MSDOperationQueue);
    [(MSDComponentProcessor *)v4 setUninstallQueue:v33];

    uninstallQueue = [(MSDComponentProcessor *)v4 uninstallQueue];
    [uninstallQueue setMaxConcurrentOperationCount:1];

    uninstallQueue2 = [(MSDComponentProcessor *)v4 uninstallQueue];
    [uninstallQueue2 setQualityOfService:s];

    uninstallQueue3 = [(MSDComponentProcessor *)v4 uninstallQueue];
    [uninstallQueue3 setSuspended:1];

    uninstallQueue4 = [(MSDComponentProcessor *)v4 uninstallQueue];
    [uninstallQueue4 setName:@"com.apple.msd.uninstall_queue"];
  }

  return v4;
}

- (void)process:(id)process
{
  processCopy = process;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [processCopy activateStagedOperations];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v6 = v11 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(MSDComponentProcessor *)selfCopy _dispatchOperationForExecution:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  defaultQueue = [(MSDComponentProcessor *)obj defaultQueue];
  [defaultQueue setSuspended:0];

  prepareQueue = [(MSDComponentProcessor *)obj prepareQueue];
  [prepareQueue setSuspended:0];

  downloadQueue = [(MSDComponentProcessor *)obj downloadQueue];
  [downloadQueue setSuspended:0];

  installQueue = [(MSDComponentProcessor *)obj installQueue];
  [installQueue setSuspended:0];

  parallelInstallQueue = [(MSDComponentProcessor *)obj parallelInstallQueue];
  [parallelInstallQueue setSuspended:0];

  uninstallQueue = [(MSDComponentProcessor *)obj uninstallQueue];
  [uninstallQueue setSuspended:0];

  objc_sync_exit(obj);
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  defaultQueue = [(MSDComponentProcessor *)obj defaultQueue];
  [defaultQueue setSuspended:1];

  prepareQueue = [(MSDComponentProcessor *)obj prepareQueue];
  [prepareQueue setSuspended:1];

  downloadQueue = [(MSDComponentProcessor *)obj downloadQueue];
  [downloadQueue setSuspended:1];

  installQueue = [(MSDComponentProcessor *)obj installQueue];
  [installQueue setSuspended:1];

  parallelInstallQueue = [(MSDComponentProcessor *)obj parallelInstallQueue];
  [parallelInstallQueue setSuspended:1];

  uninstallQueue = [(MSDComponentProcessor *)obj uninstallQueue];
  [uninstallQueue setSuspended:1];

  objc_sync_exit(obj);
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  defaultQueue = [(MSDComponentProcessor *)obj defaultQueue];
  [defaultQueue cancelAllOperations];

  prepareQueue = [(MSDComponentProcessor *)obj prepareQueue];
  [prepareQueue cancelAllOperations];

  downloadQueue = [(MSDComponentProcessor *)obj downloadQueue];
  [downloadQueue cancelAllOperations];

  installQueue = [(MSDComponentProcessor *)obj installQueue];
  [installQueue cancelAllOperations];

  parallelInstallQueue = [(MSDComponentProcessor *)obj parallelInstallQueue];
  [parallelInstallQueue cancelAllOperations];

  uninstallQueue = [(MSDComponentProcessor *)obj uninstallQueue];
  [uninstallQueue cancelAllOperations];

  objc_sync_exit(obj);
}

- (void)_dispatchOperationForExecution:(id)execution
{
  executionCopy = execution;
  v5 = [(MSDComponentProcessor *)self _queueForOperation:executionCopy];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DB424(executionCopy, v5, v6);
  }

  [v5 addOperation:executionCopy];
}

- (id)_queueForOperation:(id)operation
{
  operationCopy = operation;
  type = [operationCopy type];
  if (type > 2)
  {
    if (type == 3)
    {
      if ([operationCopy runInstallInParallel])
      {
        [(MSDComponentProcessor *)self parallelInstallQueue];
      }

      else
      {
        [(MSDComponentProcessor *)self installQueue];
      }
      uninstallQueue = ;
      goto LABEL_14;
    }

    if (type == 4)
    {
      uninstallQueue = [(MSDComponentProcessor *)self uninstallQueue];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      uninstallQueue = [(MSDComponentProcessor *)self downloadQueue];
      goto LABEL_14;
    }

LABEL_8:
    uninstallQueue = [(MSDComponentProcessor *)self defaultQueue];
    goto LABEL_14;
  }

  uninstallQueue = [(MSDComponentProcessor *)self prepareQueue];
LABEL_14:
  v7 = uninstallQueue;

  return v7;
}

@end