@interface NROSTransactionLogger
+ (id)sharedInstance;
+ (void)createKeepAliveFile;
+ (void)deleteKeepAliveFile;
- (NROSTransactionLogger)init;
- (id)addTransaction:(id)transaction;
- (void)dumpTransactions:(id)transactions isAdded:(BOOL)added;
- (void)removeTransaction:(id)transaction;
@end

@implementation NROSTransactionLogger

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000103EC;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B3730 != -1)
  {
    dispatch_once(&qword_1001B3730, block);
  }

  v2 = qword_1001B3728;

  return v2;
}

- (NROSTransactionLogger)init
{
  v9.receiver = self;
  v9.super_class = NROSTransactionLogger;
  v2 = [(NROSTransactionLogger *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    outstandingTransactions = v2->_outstandingTransactions;
    v2->_outstandingTransactions = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.nanoregistryd.NROSTransaction", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (void)dumpTransactions:(id)transactions isAdded:(BOOL)added
{
  addedCopy = added;
  transactionsCopy = transactions;
  v7 = [@"NROSTransaction transactions: " mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_outstandingTransactions;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    if (addedCopy)
    {
      v12 = @"+";
    }

    else
    {
      v12 = @"-";
    }

    v20 = v12;
    v13 = 1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_outstandingTransactions objectForKeyedSubscript:v15];
        if ((v13 & 1) == 0)
        {
          [v7 appendString:{@", "}];
        }

        if (transactionsCopy && [v15 isEqual:transactionsCopy])
        {
          [v7 appendString:v20];
        }

        if (v16)
        {
          [v7 appendString:v16];
        }

        v13 = 0;
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      v13 = 0;
    }

    while (v10);
  }

  v17 = nr_daemon_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = nr_daemon_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (id)addTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [NSValue valueWithNonretainedObject:transactionCopy];
  name = [transactionCopy name];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000107C4;
  block[3] = &unk_1001758F8;
  block[4] = self;
  v12 = v5;
  v13 = name;
  v8 = name;
  v9 = v5;
  dispatch_sync(queue, block);

  return 0;
}

- (void)removeTransaction:(id)transaction
{
  v5 = [NSValue valueWithNonretainedObject:?];
  v6 = v5;
  if (transaction)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010964;
    v8[3] = &unk_100175598;
    v8[4] = self;
    v9 = v5;
    dispatch_async(queue, v8);
  }
}

+ (void)createKeepAliveFile
{
  v2 = [@"/var/mobile/Library/DeviceRegistry.state" stringByAppendingPathComponent:@"KeepAlive"];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  if ((v4 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    v19 = 0;
    v6 = [v5 createDirectoryAtPath:@"/var/mobile/Library/DeviceRegistry.state" withIntermediateDirectories:1 attributes:0 error:&v19];
    v7 = v19;

    if (v6)
    {
      v8 = +[NSData data];
      v18 = v7;
      v9 = [v8 writeToFile:v2 options:268435457 error:&v18];
      v10 = v18;

      if (v9)
      {
        goto LABEL_16;
      }

      domain = [v10 domain];
      if ([domain isEqualToString:NSCocoaErrorDomain])
      {
        code = [v10 code];

        if (code == 516)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      v16 = nr_daemon_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
LABEL_16:
        v7 = v10;
        goto LABEL_17;
      }

      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD344(v10);
      }

      v7 = v10;
    }

    else
    {
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD2A0(v7);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

+ (void)deleteKeepAliveFile
{
  v2 = [@"/var/mobile/Library/DeviceRegistry.state" stringByAppendingPathComponent:@"KeepAlive"];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v13 = 0;
    v6 = [v5 removeItemAtPath:v2 error:&v13];
    v7 = v13;

    if ((v6 & 1) == 0)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:NSCocoaErrorDomain])
      {
        code = [v7 code];

        if (code == 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v10 = nr_daemon_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = nr_daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD3D4(v7);
        }
      }
    }

LABEL_11:
  }
}

@end