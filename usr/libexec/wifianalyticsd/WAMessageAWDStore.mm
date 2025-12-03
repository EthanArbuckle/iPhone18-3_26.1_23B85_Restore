@interface WAMessageAWDStore
- (BOOL)_removeMessageWithUUID:(id)d;
- (WAMessageAWDStore)init;
- (WAMessageAWDStore)initWithCoder:(id)coder;
- (id)messageForUUID:(id)d;
- (void)_insertInOrder:(id)order;
- (void)_purgeIfNecessary;
- (void)clearMessageStore;
- (void)encodeWithCoder:(id)coder;
- (void)messsageWasSubmittedWithUUID:(id)d;
- (void)updateMessage:(id)message;
@end

@implementation WAMessageAWDStore

- (WAMessageAWDStore)init
{
  v11.receiver = self;
  v11.super_class = WAMessageAWDStore;
  v2 = [(WAMessageAWDStore *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    uuidToMessageMap = v2->_uuidToMessageMap;
    v2->_uuidToMessageMap = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.wifi.analytic.messagestoreQ", v5);
    storeQueue = v2->_storeQueue;
    v2->_storeQueue = v6;

    v8 = +[NSMutableArray array];
    p_super = &v2->_sortedByLastAccess->super.super;
    v2->_sortedByLastAccess = v8;
  }

  else
  {
    p_super = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[WAMessageAWDStore init]";
      v14 = 1024;
      v15 = 49;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%{public}s::%d:FAILED to initialize!", buf, 0x12u);
    }
  }

  return v2;
}

- (void)updateMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  storeQueue = [(WAMessageAWDStore *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001127C;
  block[3] = &unk_1000ED678;
  objc_copyWeak(&v9, &location);
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(storeQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)messageForUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000118B0;
  v22 = sub_1000118C0;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  storeQueue = [(WAMessageAWDStore *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000118C8;
  block[3] = &unk_1000ED6A0;
  objc_copyWeak(&v17, &location);
  v7 = dCopy;
  v14 = v7;
  v16 = &v18;
  v8 = v5;
  v15 = v8;
  dispatch_async(storeQueue, block);

  objc_destroyWeak(&v17);
  v9 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WAMessageAWDStore messageForUUID:]";
      v27 = 1024;
      v28 = 91;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: gave up waiting to retrieve message. Bailing to avoid a hang", buf, 0x12u);
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&location);

  return v11;
}

- (void)_insertInOrder:(id)order
{
  orderCopy = order;
  sortedByLastAccess = [(WAMessageAWDStore *)self sortedByLastAccess];
  [sortedByLastAccess removeObject:orderCopy];
  [sortedByLastAccess insertObject:orderCopy atIndex:{objc_msgSend(sortedByLastAccess, "indexOfObject:inSortedRange:options:usingComparator:", orderCopy, 0, objc_msgSend(sortedByLastAccess, "count"), 1024, &stru_1000ED6E0)}];
}

- (void)_purgeIfNecessary
{
  if ([(WAMessageAWDStore *)self storeSize]< 0x7A121)
  {
    lastObject = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v21 = "[WAMessageAWDStore _purgeIfNecessary]";
      v22 = 1024;
      v23 = 117;
      v24 = 2048;
      storeSize = [(WAMessageAWDStore *)self storeSize];
      v26 = 1024;
      LODWORD(v27) = 500000;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Won't purge message store, store total size (%lu) <= limit: %d", buf, 0x22u);
    }

LABEL_13:

    return;
  }

  if ([(WAMessageAWDStore *)self storeSize]> 0x7A120)
  {
    *&v3 = 136447746;
    v19 = v3;
    while (1)
    {
      sortedByLastAccess = [(WAMessageAWDStore *)self sortedByLastAccess];
      lastObject = [sortedByLastAccess lastObject];

      v6 = WALogCategoryDefaultHandle();
      v7 = v6;
      if (!lastObject)
      {
        break;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        message = [lastObject message];
        uuid = [message uuid];
        message2 = [lastObject message];
        v11 = [message2 key];
        message3 = [lastObject message];
        originalClassName = [message3 originalClassName];
        v14 = [NSDate dateWithTimeIntervalSince1970:([lastObject lastModifiedTimeInMillisecondEpoch]/ 0x3E8)];
        storeSize2 = [(WAMessageAWDStore *)self storeSize];
        *buf = v19;
        v21 = "[WAMessageAWDStore _purgeIfNecessary]";
        v22 = 1024;
        v23 = 122;
        v24 = 2112;
        storeSize = uuid;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = originalClassName;
        v30 = 2112;
        v31 = v14;
        v32 = 2048;
        v33 = storeSize2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Removing message with UUID:%@ key: %@ and original class name: %@ (that was last modified at %@) as the message store is too big (%lu). If this message was intended for submission, data loss has occurred.", buf, 0x44u);
      }

      message4 = [lastObject message];
      uuid2 = [message4 uuid];
      v18 = [(WAMessageAWDStore *)self _removeMessageWithUUID:uuid2];

      if (!v18)
      {
        goto LABEL_13;
      }

      if ([(WAMessageAWDStore *)self storeSize]<= 0x7A120)
      {
        return;
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WAMessageAWDStore _purgeIfNecessary]";
      v22 = 1024;
      v23 = 121;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Trying to purge with an empty store! This is a serious issue.", buf, 0x12u);
    }

    lastObject = 0;
    goto LABEL_13;
  }
}

- (void)clearMessageStore
{
  objc_initWeak(&location, self);
  v3 = dispatch_semaphore_create(0);
  storeQueue = [(WAMessageAWDStore *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011FB8;
  block[3] = &unk_1000ED678;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  dispatch_async(storeQueue, block);

  objc_destroyWeak(&v10);
  v6 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[WAMessageAWDStore clearMessageStore]";
      v14 = 1024;
      v15 = 146;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: gave up waiting to clear message store. Bailing to avoid a hang", buf, 0x12u);
    }
  }

  objc_destroyWeak(&location);
}

- (void)encodeWithCoder:(id)coder
{
  uuidToMessageMap = self->_uuidToMessageMap;
  coderCopy = coder;
  [coderCopy encodeObject:uuidToMessageMap forKey:@"_uuidToMessageMap"];
  [coderCopy encodeInteger:self->_storeSize forKey:@"_storeSize"];
  [coderCopy encodeObject:self->_sortedByLastAccess forKey:@"_sortedByLastAccess"];
}

- (WAMessageAWDStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = WAMessageAWDStore;
  v5 = [(WAMessageAWDStore *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_uuidToMessageMap"];
    uuidToMessageMap = v5->_uuidToMessageMap;
    v5->_uuidToMessageMap = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.wifi.analytic.messagestoreQ", v12);
    storeQueue = v5->_storeQueue;
    v5->_storeQueue = v13;

    v5->_storeSize = [coderCopy decodeIntegerForKey:@"_storeSize"];
    v15 = [coderCopy decodeObjectForKey:@"_sortedByLastAccess"];
    sortedByLastAccess = v5->_sortedByLastAccess;
    v5->_sortedByLastAccess = v15;
  }

  return v5;
}

- (BOOL)_removeMessageWithUUID:(id)d
{
  dCopy = d;
  uuidToMessageMap = [(WAMessageAWDStore *)self uuidToMessageMap];
  v6 = [uuidToMessageMap objectForKeyedSubscript:dCopy];

  if (v6)
  {
    uuidToMessageMap2 = [(WAMessageAWDStore *)self uuidToMessageMap];
    [uuidToMessageMap2 removeObjectForKey:dCopy];

    sortedByLastAccess = [(WAMessageAWDStore *)self sortedByLastAccess];
    [sortedByLastAccess removeObject:v6];

    -[WAMessageAWDStore setStoreSize:](self, "setStoreSize:", -[WAMessageAWDStore storeSize](self, "storeSize") - [v6 size]);
  }

  return v6 != 0;
}

- (void)messsageWasSubmittedWithUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  storeQueue = [(WAMessageAWDStore *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000123E4;
  block[3] = &unk_1000ED678;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(storeQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end