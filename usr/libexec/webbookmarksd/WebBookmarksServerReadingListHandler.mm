@interface WebBookmarksServerReadingListHandler
- (WebBookmarksServerReadingListHandler)init;
- (id)_collection;
- (id)_readingListQueueBackupPath;
- (void)_addItemsToReadingList:(id)a3;
- (void)_addReadingListItemWithAddress:(id)a3 title:(id)a4 previewText:(id)a5 clientBundle:(id)a6 bookmarksCollection:(id)a7;
- (void)_clearReadingListQueueTimer;
- (void)_commitReadingListQueue;
- (void)_finishRestoreReadingListQueueActivityIfNeeded;
- (void)_queueReadingListItems:(id)a3;
- (void)_readingListQueueTimerDidFire:(id)a3;
- (void)_restoreReadingListQueueIfNeeded;
- (void)_scheduleRestoreReadingListQueueActivity;
- (void)dealloc;
- (void)handleAddToReadingListWithMessage:(id)a3 forConnection:(id)a4;
@end

@implementation WebBookmarksServerReadingListHandler

- (WebBookmarksServerReadingListHandler)init
{
  v7.receiver = self;
  v7.super_class = WebBookmarksServerReadingListHandler;
  v2 = [(WebBookmarksServerReadingListHandler *)&v7 init];
  if (v2)
  {
    v3 = xpc_array_create(0, 0);
    readingListQueue = v2->_readingListQueue;
    v2->_readingListQueue = v3;

    [(WebBookmarksServerReadingListHandler *)v2 _scheduleRestoreReadingListQueueActivity];
    v5 = v2;
  }

  return v2;
}

- (id)_collection
{
  collection = self->_collection;
  if (!collection)
  {
    if ((+[WebBookmarkCollection isLockedSync]& 1) != 0)
    {
      v4 = [WebBookmarkCollection alloc];
      v5 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
      v6 = [v4 initWithConfiguration:v5 checkIntegrity:0];
      v7 = self->_collection;
      self->_collection = v6;
    }

    else
    {
      +[WebBookmarkCollection lockSync];
      v8 = [WebBookmarkCollection alloc];
      v9 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
      v10 = [v8 initWithConfiguration:v9 checkIntegrity:0];
      v11 = self->_collection;
      self->_collection = v10;

      +[WebBookmarkCollection unlockSync];
    }

    collection = self->_collection;
  }

  v12 = collection;

  return v12;
}

- (void)_scheduleRestoreReadingListQueueActivity
{
  v3 = sub_100014B48();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014C38;
  handler[3] = &unk_100029D98;
  handler[4] = self;
  xpc_activity_register("com.apple.webbookmarksd.restoreReadingListQueueActivityIdentifier", v3, handler);
}

- (void)_addReadingListItemWithAddress:(id)a3 title:(id)a4 previewText:(id)a5 clientBundle:(id)a6 bookmarksCollection:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 safari_bestURLStringForUserTypedString];
  if (qword_10002E9D8 != -1)
  {
    sub_100017BD0();
  }

  v17 = qword_10002E9D0;
  if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#Server: Adding item to Reading List from client '%{public}@'", buf, 0xCu);
  }

  if (qword_10002E9D8 != -1)
  {
    sub_100017C34();
  }

  v18 = qword_10002E9D0;
  if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100017C90(v12, v16, v18);
  }

  v19 = [NSURL URLWithString:v16];
  v20 = [SSReadingList supportsURL:v19];

  if (v20)
  {
    v21 = [v15 firstReadingListBookmarkWithURLMatchingString:v16 prefixMatch:0];
    if (v21)
    {
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      v22 = qword_10002E9D0;
      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "URL is already in Reading List; updating date instead of duplicating", buf, 2u);
      }

      v23 = +[NSDate date];
      [v21 setDateAdded:v23];

      [v21 setReadingListDateLastViewed:0];
      [v15 saveBookmark:v21 startReadingListFetcher:0];
      v24 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:0];
      [v15 reorderBookmark:v21 toIndex:{objc_msgSend(v24, "bookmarkCount") - 1}];
    }

    else
    {
      v35 = self;
      v25 = [WebBookmark _trimmedTitle:v12];

      v26 = [WebBookmark _trimmedPreviewText:v13];

      v24 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:v25 address:v16 previewText:v26];
      v27 = +[NSDate date];
      [v24 setDateAdded:v27];

      [v24 setAddedLocally:1];
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      v28 = qword_10002E9D0;
      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        [v24 UUID];
        v34 = v26;
        v30 = v25;
        v32 = v31 = v14;
        *buf = 138543362;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Saving Reading List item as WebBookmark with UUID %{public}@", buf, 0xCu);

        v14 = v31;
        v25 = v30;
        v26 = v34;
      }

      [v15 moveBookmark:v24 toFolderWithID:{-[WebBookmarkCollection readingListFolderBookmarkID](v35->_collection, "readingListFolderBookmarkID", v34)}];
      if (([v15 saveBookmark:v24 startReadingListFetcher:0] & 1) == 0)
      {
        if (qword_10002E9D8 != -1)
        {
          sub_100017C34();
        }

        v33 = qword_10002E9D0;
        if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
        {
          sub_100017D4C(v33, v24);
        }
      }

      v13 = v26;
      v12 = v25;
    }
  }

  else
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017C34();
    }

    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
    {
      sub_100017D18();
    }
  }
}

- (void)_addItemsToReadingList:(id)a3
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000153D8;
  applier[3] = &unk_100029DC0;
  applier[4] = self;
  xpc_array_apply(a3, applier);
  v4 = [(WebBookmarksServerReadingListHandler *)self _collection];
  [v4 postBookmarksDidReloadNotification];
}

- (id)_readingListQueueBackupPath
{
  v2 = qword_10002EA20;
  if (!qword_10002EA20)
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v4 = [v3 objectAtIndex:0];

    v5 = [v4 stringByAppendingPathComponent:@"Safari"];

    v6 = +[NSFileManager defaultManager];
    [v6 _web_createDirectoryAtPathWithIntermediateDirectories:v5 attributes:0];

    v7 = [v5 stringByAppendingPathComponent:@"AddToReadingListQueue.plist"];
    v8 = qword_10002EA20;
    qword_10002EA20 = v7;

    v2 = qword_10002EA20;
  }

  return v2;
}

- (void)_restoreReadingListQueueIfNeeded
{
  if (self->_didRestoreReadingListQueue)
  {

    [(WebBookmarksServerReadingListHandler *)self _finishRestoreReadingListQueueActivityIfNeeded];
  }

  else
  {
    self->_didRestoreReadingListQueue = 1;
    v3 = [(WebBookmarksServerReadingListHandler *)self _readingListQueueBackupPath];
    v6 = [NSData dataWithContentsOfFile:v3];

    if ([v6 length])
    {
      v4 = v6;
      [v6 bytes];
      [v6 length];
      v5 = xpc_create_from_plist();
      [(WebBookmarksServerReadingListHandler *)self _queueReadingListItems:v5];
    }

    else
    {
      [(WebBookmarksServerReadingListHandler *)self _finishRestoreReadingListQueueActivityIfNeeded];
    }
  }
}

- (void)_queueReadingListItems:(id)a3
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10001585C;
  applier[3] = &unk_100029DC0;
  applier[4] = self;
  xpc_array_apply(a3, applier);
  readingListQueue = self->_readingListQueue;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [(WebBookmarksServerReadingListHandler *)self _readingListQueueBackupPath];
  if (([v5 writeToFile:v6 atomically:1] & 1) == 0)
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017C34();
    }

    v7 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
    {
      sub_100017DF4(v6, v7);
    }
  }

  CFRelease(v5);
  if (!self->_readingListQueueTimer)
  {
    xpc_transaction_begin();
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_readingListQueueTimerDidFire:" selector:0 userInfo:1 repeats:5.0];
    readingListQueueTimer = self->_readingListQueueTimer;
    self->_readingListQueueTimer = v8;
  }
}

- (void)_readingListQueueTimerDidFire:(id)a3
{
  ++self->_readingListQueueRetryCount;
  if ((+[WebBookmarkCollection lockSync]& 1) != 0)
  {
    [(WebBookmarksServerReadingListHandler *)self _commitReadingListQueue];

    +[WebBookmarkCollection unlockSync];
  }

  else if (self->_readingListQueueRetryCount >= 0x15)
  {

    [(WebBookmarksServerReadingListHandler *)self _clearReadingListQueueTimer];
  }
}

- (void)_finishRestoreReadingListQueueActivityIfNeeded
{
  if (self->_restoreReadingListQueueActivity)
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017BD0();
    }

    v3 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished restore reading list queue activity", v5, 2u);
    }

    xpc_activity_set_state(self->_restoreReadingListQueueActivity, 5);
    restoreReadingListQueueActivity = self->_restoreReadingListQueueActivity;
    self->_restoreReadingListQueueActivity = 0;
  }
}

- (void)_clearReadingListQueueTimer
{
  self->_readingListQueueRetryCount = 0;
  [(WebBookmarksServerReadingListHandler *)self _finishRestoreReadingListQueueActivityIfNeeded];
  readingListQueueTimer = self->_readingListQueueTimer;
  if (readingListQueueTimer)
  {
    [(NSTimer *)readingListQueueTimer invalidate];
    v4 = self->_readingListQueueTimer;
    self->_readingListQueueTimer = 0;

    xpc_transaction_end();
  }
}

- (void)_commitReadingListQueue
{
  if (xpc_array_get_count(self->_readingListQueue))
  {
    [(WebBookmarksServerReadingListHandler *)self _addItemsToReadingList:self->_readingListQueue];
    v3 = xpc_array_create(0, 0);
    readingListQueue = self->_readingListQueue;
    self->_readingListQueue = v3;

    v5 = +[NSFileManager defaultManager];
    v6 = [(WebBookmarksServerReadingListHandler *)self _readingListQueueBackupPath];
    [v5 _web_removeFileOnlyAtPath:v6];
  }

  [(WebBookmarksServerReadingListHandler *)self _clearReadingListQueueTimer];
}

- (void)handleAddToReadingListWithMessage:(id)a3 forConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WebBookmarksServerReadingListHandler *)self _restoreReadingListQueueIfNeeded];
  if (qword_10002E9D8 != -1)
  {
    sub_100017BD0();
  }

  v8 = qword_10002E9D0;
  if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling AddToReadingList request", buf, 2u);
  }

  v9 = xpc_dictionary_get_value(v7, kWebBookmarksItemKey);

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = xpc_dictionary_get_value(v9, kWebBookmarksAddressKey);
    v11 = xpc_dictionary_get_value(v9, kWebBookmarksTitleKey);
    v12 = xpc_dictionary_get_value(v9, kWebBookmarksPreviewTextKey);
    string = xpc_dictionary_get_string(v9, kWebBookmarksAddressKey);
    v13 = 1;
    if (v10 && v11 && v12)
    {
      v13 = xpc_get_type(v10) != &_xpc_type_string || xpc_get_type(v11) != &_xpc_type_string || xpc_get_type(v12) != &_xpc_type_string;
    }

    v25 = v12;
    v14 = [v6 connection];
    xpc_connection_get_pid(v14);

    v15 = SBSCopyBundleInfoValueForKeyAndProcessID();
    if ([v15 length])
    {
      xpc_dictionary_set_string(v9, kWebBookmarksClientBundleIDKey, [v15 UTF8String]);
    }

    if (v13)
    {
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
      {
        sub_100017EA0();
      }
    }

    else
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100015F40;
      v28[3] = &unk_100029150;
      v29 = v9;
      v30 = self;
      v16 = objc_retainBlock(v28);
      if (([v6 hasBoolEntitlement:@"platform-application"] & 1) != 0 || objc_msgSend(v6, "hasBoolEntitlement:", @"com.apple.private.safari.add-to-reading-list-without-prompt"))
      {
        if (qword_10002E9D8 != -1)
        {
          sub_100017C34();
        }

        v17 = qword_10002E9D0;
        if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Adding an item to the Reading List without prompting the user", buf, 2u);
        }

        (v16[2])(v16);
      }

      else
      {
        if (qword_10002E9D8 != -1)
        {
          sub_100017C34();
        }

        v18 = qword_10002E9D0;
        if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Prompting the user to add an item to the Reading List", buf, 2u);
        }

        v19 = [NSString stringWithUTF8String:v24];
        v20 = [SFSystemAlert readingListAlertForDomain:v19 appBundleID:v15];
        alertToAddReadingListItem = self->_alertToAddReadingListItem;
        self->_alertToAddReadingListItem = v20;

        v22 = self->_alertToAddReadingListItem;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100015FD0;
        v26[3] = &unk_100029DE8;
        v26[4] = self;
        v27 = v16;
        [(SFSystemAlert *)v22 scheduleWithCompletionBlock:v26];
      }
    }
  }

  else
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017C34();
    }

    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
    {
      sub_100017E6C();
    }
  }
}

- (void)dealloc
{
  [(SFSystemAlert *)self->_alertToAddReadingListItem cancel];
  [(WebBookmarksServerReadingListHandler *)self _clearReadingListQueueTimer];
  v3.receiver = self;
  v3.super_class = WebBookmarksServerReadingListHandler;
  [(WebBookmarksServerReadingListHandler *)&v3 dealloc];
}

@end