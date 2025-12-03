@interface SafariFetcherServer
+ (id)sharedServer;
- (SafariFetcherServer)init;
- (void)_clearAllReadingListArchivesForConnection:(id)connection;
- (void)_clearReadingListFetcherStartTimer;
- (void)_connection:(id)_connection clearReadingListArchiveWithMessage:(id)message;
- (void)_registerConnectionForReadingListFetcherUpdates:(id)updates;
- (void)_startReadingListFetcher;
- (void)_startReadingListFetcherNow;
- (void)dealloc;
- (void)deliverReadingListDidFinishFetching;
- (void)deliverReadingListFetchingDidStartForItemWithUUID:(id)d;
- (void)deliverReadingListFetchingDidStopForItemWithUUID:(id)d;
- (void)deliverReadingListFetchingProgress:(double)progress;
@end

@implementation SafariFetcherServer

- (SafariFetcherServer)init
{
  v33.receiver = self;
  v33.super_class = SafariFetcherServer;
  v2 = [(SafariFetcherServer *)&v33 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc_init(NSMutableArray);
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = objc_alloc_init(NSMutableArray);
    readingListReplyConnections = v2->_readingListReplyConnections;
    v2->_readingListReplyConnections = v5;

    v7 = +[WebBookmarkCollection safariBookmarkCollection];
    collection = v2->_collection;
    v2->_collection = v7;

    [(SafariFetcherServer *)v2 _startReadingListFetcher];
    v9 = [WebBookmarksXPCListener alloc];
    v10 = [v9 initListenerForMachService:kSafariFetcherDServiceName];
    listener = v2->_listener;
    v2->_listener = v10;

    [(WebBookmarksXPCListener *)v2->_listener setDelegate:v2];
    v12 = v2->_listener;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000092E0;
    v30[3] = &unk_10001C9A8;
    objc_copyWeak(&v31, &location);
    [(WebBookmarksXPCListener *)v12 setHandler:v30 forMessageNamed:kSafariFetcherRegisterForReadingListFetcherUpdatesMessageName];
    v13 = v2->_listener;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000933C;
    v28[3] = &unk_10001C9A8;
    objc_copyWeak(&v29, &location);
    [(WebBookmarksXPCListener *)v13 setHandler:v28 forMessageNamed:kSafariFetcherStartReadingListFetcherMessageName];
    v14 = v2->_listener;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000937C;
    v26[3] = &unk_10001C9A8;
    objc_copyWeak(&v27, &location);
    [(WebBookmarksXPCListener *)v14 setHandler:v26 forMessageNamed:kSafariFetcherUnregisterForReadingListFetcherUpdatesMessageName];
    v15 = v2->_listener;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000093D8;
    v24[3] = &unk_10001C9A8;
    objc_copyWeak(&v25, &location);
    [(WebBookmarksXPCListener *)v15 setHandler:v24 forMessageNamed:kSafariFetcherClearAllReadingListArchivesMessageName];
    v16 = v2->_listener;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100009434;
    v22 = &unk_10001C9A8;
    objc_copyWeak(&v23, &location);
    [(WebBookmarksXPCListener *)v16 setHandler:&v19 forMessageNamed:kSafariFetcherClearReadingListArchiveMessageName];
    [_SFReaderCustomProtocols registerReaderCustomProtocols:v19];
    v17 = v2;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(SafariFetcherServer *)self _clearReadingListFetcherStartTimer];
  v3.receiver = self;
  v3.super_class = SafariFetcherServer;
  [(SafariFetcherServer *)&v3 dealloc];
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009594;
  block[3] = &unk_10001C6C8;
  block[4] = self;
  if (qword_100022D70 != -1)
  {
    dispatch_once(&qword_100022D70, block);
  }

  v2 = qword_100022D68;

  return v2;
}

- (void)_clearReadingListFetcherStartTimer
{
  readingListFetcherStartTimer = self->_readingListFetcherStartTimer;
  if (readingListFetcherStartTimer)
  {
    [(NSTimer *)readingListFetcherStartTimer invalidate];
    v4 = self->_readingListFetcherStartTimer;
    self->_readingListFetcherStartTimer = 0;
  }
}

- (void)_startReadingListFetcherNow
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B058(v3);
  }

  [(SafariFetcherServer *)self _clearReadingListFetcherStartTimer];
  v4 = +[ReadingListFetcher sharedReadingListFetcher];
  [v4 start];

  xpc_transaction_end();
}

- (void)_startReadingListFetcher
{
  if (!self->_readingListFetcherStartTimer)
  {
    xpc_transaction_begin();
  }

  [(SafariFetcherServer *)self _clearReadingListFetcherStartTimer];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_startReadingListFetcherNow" selector:0 userInfo:0 repeats:2.0];
  readingListFetcherStartTimer = self->_readingListFetcherStartTimer;
  self->_readingListFetcherStartTimer = v3;

  _objc_release_x1();
}

- (void)_registerConnectionForReadingListFetcherUpdates:(id)updates
{
  updatesCopy = updates;
  if ([updatesCopy hasBoolEntitlement:@"com.apple.private.safari.offlinereadinglist"])
  {
    [(NSMutableArray *)self->_readingListReplyConnections addObject:updatesCopy];
    v5 = +[ReadingListFetcher sharedReadingListFetcher];
    [v5 start];

    v6 = +[ReadingListFetcher sharedReadingListFetcher];
    currentItemUUID = [v6 currentItemUUID];

    if (currentItemUUID)
    {
      [(SafariFetcherServer *)self deliverReadingListFetchingDidStartForItemWithUUID:currentItemUUID];
      v8 = +[ReadingListFetcher sharedReadingListFetcher];
      [v8 currentProgress];
      [(SafariFetcherServer *)self deliverReadingListFetchingProgress:?];

      v9 = sub_100009E64();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B09C(v9);
      }
    }

    else
    {
      [(SafariFetcherServer *)self deliverReadingListDidFinishFetching];
    }
  }
}

- (void)deliverReadingListFetchingDidStartForItemWithUUID:(id)d
{
  dCopy = d;
  uTF8String = [d UTF8String];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_readingListReplyConnections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 messageWithName:{kSafariFetcherDidStartFetchingItemMessageName, v14}];
        xpc_dictionary_set_string(v13, kWebBookmarksUUIDKey, uTF8String);
        [v12 sendMessage:v13];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)deliverReadingListFetchingDidStopForItemWithUUID:(id)d
{
  dCopy = d;
  uTF8String = [d UTF8String];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_readingListReplyConnections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 messageWithName:{kSafariFetcherDidStopFetchingItemMessageName, v14}];
        xpc_dictionary_set_string(v13, kWebBookmarksUUIDKey, uTF8String);
        [v12 sendMessage:v13];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)deliverReadingListFetchingProgress:(double)progress
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_readingListReplyConnections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 messageWithName:{kSafariFetcherDidUpdateProgressMessageName, v11}];
        xpc_dictionary_set_double(v10, kWebBookmarksProgressKey, progress);
        [v9 sendMessage:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)deliverReadingListDidFinishFetching
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_readingListReplyConnections;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [v7 messageWithName:{kSafariFetcherDidFinishFetchingMessageName, v9}];
        [v7 sendMessage:v8];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_clearAllReadingListArchivesForConnection:(id)connection
{
  if ([connection hasBoolEntitlement:@"com.apple.private.safari.offlinereadinglist"])
  {
    collection = self->_collection;

    [(WebBookmarkCollection *)collection clearAllReadingListArchives];
  }
}

- (void)_connection:(id)_connection clearReadingListArchiveWithMessage:(id)message
{
  xdict = message;
  if ([_connection hasBoolEntitlement:@"com.apple.private.safari.offlinereadinglist"])
  {
    v6 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, kWebBookmarksUUIDKey)];
    if ([v6 length])
    {
      [(WebBookmarkCollection *)self->_collection clearReadingListArchiveWithUUID:v6];
    }
  }

  _objc_release_x2();
}

@end