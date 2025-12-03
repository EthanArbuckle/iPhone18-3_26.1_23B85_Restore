@interface CKKSSecDbAdapter
- (BOOL)dispatchSyncWithConnection:(__OpaqueSecDbConnection *)connection readWriteTxion:(BOOL)txion block:(id)block;
- (CKKSSecDbAdapter)initWithQueue:(id)queue;
- (void)dispatchSyncWithReadOnlySQLTransaction:(id)transaction;
- (void)dispatchSyncWithSQLTransaction:(id)transaction;
@end

@implementation CKKSSecDbAdapter

- (void)dispatchSyncWithReadOnlySQLTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = os_transaction_create();
  cf = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001114E0;
  v9[3] = &unk_100337360;
  v9[4] = self;
  v6 = transactionCopy;
  v10 = v6;
  sub_100008A70(0, 1, 0, &cf, v9);
  if (cf)
  {
    v7 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "error getting database connection, major problems ahead: %@", buf, 0xCu);
    }

    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }
}

- (void)dispatchSyncWithSQLTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = os_transaction_create();
  cf = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100111710;
  v9[3] = &unk_100337360;
  v9[4] = self;
  v6 = transactionCopy;
  v10 = v6;
  sub_100008A70(1, 1, 0, &cf, v9);
  if (cf)
  {
    v7 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "error getting database connection, major problems ahead: %@", buf, 0xCu);
    }

    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }
}

- (BOOL)dispatchSyncWithConnection:(__OpaqueSecDbConnection *)connection readWriteTxion:(BOOL)txion block:(id)block
{
  txionCopy = txion;
  blockCopy = block;
  cf = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100111898;
  v15[3] = &unk_100337338;
  if (txionCopy)
  {
    v9 = 5;
  }

  else
  {
    v9 = 3;
  }

  v17 = txionCopy;
  v15[4] = self;
  v10 = blockCopy;
  v16 = v10;
  v11 = sub_1000141DC(connection, v9, &cf, v15);
  if (cf)
  {
    v12 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = cf;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "error doing database transaction, major problems ahead: %@", buf, 0xCu);
    }

    v13 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v13);
    }
  }

  return v11;
}

- (CKKSSecDbAdapter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CKKSSecDbAdapter;
  v6 = [(CKKSSecDbAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end