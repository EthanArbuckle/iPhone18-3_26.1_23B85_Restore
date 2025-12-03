@interface SDShareSheetProxyLoaderManager
- (SDShareSheetProxyLoaderManager)initWithSessionIdentifier:(id)identifier;
- (SDShareSheetProxyLoaderManagerDelegate)delegate;
- (id)_existingLoaderForSectionType:(int64_t)type;
- (void)_scheduleLoadingBlock:(id)block synchronously:(BOOL)synchronously;
- (void)loadProxySection:(id)section;
- (void)proxyLoader:(id)loader didLoadProxiesWithResult:(id)result;
@end

@implementation SDShareSheetProxyLoaderManager

- (SDShareSheetProxyLoaderManager)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = SDShareSheetProxyLoaderManager;
  v5 = [(SDShareSheetProxyLoaderManager *)&v17 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = +[NSMutableArray array];
    loaders = v5->_loaders;
    v5->_loaders = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.sharingd.sharesheet.proxyLoaderManager.loadingQueue", v10);
    loadingQueue = v5->_loadingQueue;
    v5->_loadingQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.sharingd.sharesheet.proxyLoaderManager.publishingQueue", v13);
    publishingQueue = v5->_publishingQueue;
    v5->_publishingQueue = v14;
  }

  return v5;
}

- (void)loadProxySection:(id)section
{
  sectionCopy = section;
  v5 = -[SDShareSheetProxyLoaderManager _existingLoaderForSectionType:](self, "_existingLoaderForSectionType:", [sectionCopy type]);
  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cancelling existing loader with same type:%@", buf, 0xCu);
    }

    [v5 cancel];
  }

  v7 = [[SDShareSheetProxyLoader alloc] initWithProxySection:sectionCopy];
  [(SDShareSheetProxyLoader *)v7 setDelegate:self];
  loaders = [(SDShareSheetProxyLoaderManager *)self loaders];
  [loaders addObject:v7];

  initialBatchSize = [sectionCopy initialBatchSize];
  v10 = +[SDStatusMonitor sharedMonitor];
  asynchronousProxyLoadingEnabled = [v10 asynchronousProxyLoadingEnabled];

  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = initialBatchSize;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "new proxy loader with initial batch size:%ld %@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001BD280;
  v14[3] = &unk_1008CFD30;
  v15 = v7;
  v16 = initialBatchSize;
  v13 = v7;
  [(SDShareSheetProxyLoaderManager *)self _scheduleLoadingBlock:v14 synchronously:(initialBatchSize != 0) & ~asynchronousProxyLoadingEnabled];
}

- (id)_existingLoaderForSectionType:(int64_t)type
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  loaders = [(SDShareSheetProxyLoaderManager *)self loaders];
  v5 = [loaders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(loaders);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        proxySection = [v9 proxySection];
        type = [proxySection type];

        if (type == type)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [loaders countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_scheduleLoadingBlock:(id)block synchronously:(BOOL)synchronously
{
  loadingQueue = self->_loadingQueue;
  if (synchronously)
  {
    dispatch_sync(loadingQueue, block);
  }

  else
  {
    dispatch_async(loadingQueue, block);
  }
}

- (void)proxyLoader:(id)loader didLoadProxiesWithResult:(id)result
{
  loaderCopy = loader;
  resultCopy = result;
  publishingQueue = self->_publishingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD680;
  block[3] = &unk_1008CE900;
  v12 = loaderCopy;
  v13 = resultCopy;
  selfCopy = self;
  v9 = resultCopy;
  v10 = loaderCopy;
  dispatch_async(publishingQueue, block);
}

- (SDShareSheetProxyLoaderManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end