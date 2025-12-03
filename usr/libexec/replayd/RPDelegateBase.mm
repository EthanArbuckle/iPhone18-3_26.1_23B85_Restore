@interface RPDelegateBase
- (BOOL)containsDelegate:(id)delegate;
- (BOOL)hasDelegate:(id)delegate;
- (BOOL)valid;
- (RPDelegateBase)init;
- (unint64_t)delegateCount;
- (void)addDelegate:(id)delegate;
- (void)callDelegate:(id)delegate forProtocol:(id)protocol;
- (void)dealloc;
- (void)invalidate;
- (void)removeAllDelegates;
- (void)removeDelegate:(id)delegate;
@end

@implementation RPDelegateBase

- (RPDelegateBase)init
{
  v11.receiver = self;
  v11.super_class = RPDelegateBase;
  v2 = [(RPDelegateBase *)&v11 init];
  if (v2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPDelegateBase init]";
      v14 = 1024;
      v15 = 25;
      v16 = 2048;
      v17 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v3 = objc_opt_class();
    v4 = v3 != objc_opt_class() || dword_1000B6840 > 2;
    if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006493C();
    }

    v5 = [[NSMutableArray alloc] initWithCapacity:0];
    delegateArray = v2->_delegateArray;
    v2->_delegateArray = v5;

    v7 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v7;

    v2->_isValid = 1;
    delegateQueue = v2->_delegateQueue;
    v2->_protocol = 0;
    v2->_delegateQueue = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPDelegateBase dealloc]";
    v6 = 1024;
    v7 = 39;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPDelegateBase;
  [(RPDelegateBase *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  if (self->_isValid)
  {
    [(NSMutableArray *)self->_delegateArray removeAllObjects];
    self->_isValid = 0;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)valid
{
  [(NSLock *)self->_lock lock];
  isValid = self->_isValid;
  [(NSLock *)self->_lock unlock];
  return isValid;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NSLock *)self->_lock lock];
  if (self->_isValid && ![(RPDelegateBase *)self containsDelegate:delegateCopy])
  {
    [(NSMutableArray *)self->_delegateArray addObject:delegateCopy];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NSLock *)self->_lock lock];
  if (self->_isValid)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_delegateArray;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (*(*(&v10 + 1) + 8 * v9) == delegateCopy)
          {
            [(NSMutableArray *)self->_delegateArray removeObject:delegateCopy, v10];
            [(NSLock *)self->_lock unlock];

            goto LABEL_13;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  [(NSLock *)self->_lock unlock];
LABEL_13:
}

- (void)removeAllDelegates
{
  [(NSLock *)self->_lock lock];
  if (self->_isValid)
  {
    [(NSMutableArray *)self->_delegateArray removeAllObjects];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (unint64_t)delegateCount
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_delegateArray count];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)hasDelegate:(id)delegate
{
  lock = self->_lock;
  delegateCopy = delegate;
  [(NSLock *)lock lock];
  LOBYTE(lock) = [(RPDelegateBase *)self containsDelegate:delegateCopy];

  [(NSLock *)self->_lock unlock];
  return lock;
}

- (void)callDelegate:(id)delegate forProtocol:(id)protocol
{
  delegateCopy = delegate;
  protocolCopy = protocol;
  [(NSLock *)self->_lock lock];
  if (self->_isValid)
  {
    v8 = [(NSMutableArray *)self->_delegateArray copy];
    [(NSLock *)self->_lock unlock];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v22;
      *&v11 = 136446466;
      v18 = v11;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if ([v15 conformsToProtocol:{protocolCopy, v18}])
          {
            delegateQueue = self->_delegateQueue;
            if (delegateQueue)
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10003FB64;
              block[3] = &unk_1000A2308;
              v17 = delegateCopy;
              block[4] = v15;
              v20 = v17;
              dispatch_async(delegateQueue, block);
            }

            else
            {
              (*(delegateCopy + 2))(delegateCopy, v15);
            }
          }

          else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = "[RPDelegateBase callDelegate:forProtocol:]";
            v27 = 1024;
            v28 = 145;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d calling delegate does not conform to protocol", buf, 0x12u);
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [(NSLock *)self->_lock unlock];
  }
}

- (BOOL)containsDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_delegateArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * i) == delegateCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end