@interface SDShareSheetProxyLoaderManager
- (SDShareSheetProxyLoaderManager)initWithSessionIdentifier:(id)a3;
- (SDShareSheetProxyLoaderManagerDelegate)delegate;
- (id)_existingLoaderForSectionType:(int64_t)a3;
- (void)_scheduleLoadingBlock:(id)a3 synchronously:(BOOL)a4;
- (void)loadProxySection:(id)a3;
- (void)proxyLoader:(id)a3 didLoadProxiesWithResult:(id)a4;
@end

@implementation SDShareSheetProxyLoaderManager

- (SDShareSheetProxyLoaderManager)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SDShareSheetProxyLoaderManager;
  v5 = [(SDShareSheetProxyLoaderManager *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)loadProxySection:(id)a3
{
  v4 = a3;
  v5 = -[SDShareSheetProxyLoaderManager _existingLoaderForSectionType:](self, "_existingLoaderForSectionType:", [v4 type]);
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

  v7 = [[SDShareSheetProxyLoader alloc] initWithProxySection:v4];
  [(SDShareSheetProxyLoader *)v7 setDelegate:self];
  v8 = [(SDShareSheetProxyLoaderManager *)self loaders];
  [v8 addObject:v7];

  v9 = [v4 initialBatchSize];
  v10 = +[SDStatusMonitor sharedMonitor];
  v11 = [v10 asynchronousProxyLoadingEnabled];

  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "new proxy loader with initial batch size:%ld %@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001BD280;
  v14[3] = &unk_1008CFD30;
  v15 = v7;
  v16 = v9;
  v13 = v7;
  [(SDShareSheetProxyLoaderManager *)self _scheduleLoadingBlock:v14 synchronously:(v9 != 0) & ~v11];
}

- (id)_existingLoaderForSectionType:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SDShareSheetProxyLoaderManager *)self loaders];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 proxySection];
        v11 = [v10 type];

        if (v11 == a3)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_scheduleLoadingBlock:(id)a3 synchronously:(BOOL)a4
{
  loadingQueue = self->_loadingQueue;
  if (a4)
  {
    dispatch_sync(loadingQueue, a3);
  }

  else
  {
    dispatch_async(loadingQueue, a3);
  }
}

- (void)proxyLoader:(id)a3 didLoadProxiesWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  publishingQueue = self->_publishingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD680;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(publishingQueue, block);
}

- (SDShareSheetProxyLoaderManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end