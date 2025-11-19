@interface WebBookmarksLockCoordinator
- (WebBookmarksLockCoordinator)init;
- (void)_tryLock;
- (void)accessBookmarkForWritingWithBlock:(id)a3;
@end

@implementation WebBookmarksLockCoordinator

- (WebBookmarksLockCoordinator)init
{
  v10.receiver = self;
  v10.super_class = WebBookmarksLockCoordinator;
  v2 = [(WebBookmarksLockCoordinator *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.webbookmarksd.BookmarksLockCoordinator", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    blocks = v2->_blocks;
    v2->_blocks = v6;

    v8 = v2;
  }

  return v2;
}

- (void)_tryLock
{
  if ((+[WebBookmarkCollection lockSync]& 1) != 0)
  {
    v3 = [(NSMutableArray *)self->_blocks copy];
    [(NSMutableArray *)self->_blocks removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }

    +[WebBookmarkCollection unlockSync];
  }

  else
  {
    v8 = sub_10001485C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to acquire lock, retrying after delay", buf, 2u);
    }

    v9 = dispatch_time(0, 50000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000018D4;
    block[3] = &unk_100028BB0;
    block[4] = self;
    dispatch_after(v9, queue, block);
  }
}

- (void)accessBookmarkForWritingWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001974;
  v7[3] = &unk_100028BD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end