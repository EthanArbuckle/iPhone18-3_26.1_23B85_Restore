@interface GKDatabaseConnection
+ (GKDatabaseConnection)connectionWithDatabasePath:(id)path;
- (GKDatabaseConnection)initWithDatabasePath:(id)path;
- (int)getStatement:(sqlite3_stmt *)statement forSQL:(id)l;
- (void)checkAndOpenDatabase;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)performAsync:(id)async;
- (void)performAsyncTransaction:(id)transaction handler:(id)handler;
- (void)performSync:(id)sync;
@end

@implementation GKDatabaseConnection

+ (GKDatabaseConnection)connectionWithDatabasePath:(id)path
{
  pathCopy = path;
  v4 = [[GKDatabaseConnection alloc] initWithDatabasePath:pathCopy];

  return v4;
}

- (GKDatabaseConnection)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = GKDatabaseConnection;
  v5 = [(GKDatabaseConnection *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.gamecenter.GKDatabaseConnection", 0);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v6;

    v5->_stmtCache = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    [(GKDatabaseConnection *)v5 setPath:pathCopy];
    [(GKDatabaseConnection *)v5 open];
    if (!v5->_database)
    {
      v8 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
        v8 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10028E2C0();
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)checkAndOpenDatabase
{
  if (!self->_database)
  {
    [(GKDatabaseConnection *)self open];
    if (!self->_database)
    {
      v3 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
        v3 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_10028E2C0();
      }
    }
  }
}

- (void)dealloc
{
  if (self->_database)
  {
    [(GKDatabaseConnection *)self close];
  }

  stmtCache = self->_stmtCache;
  if (stmtCache)
  {
    CFRelease(stmtCache);
  }

  v4.receiver = self;
  v4.super_class = GKDatabaseConnection;
  [(GKDatabaseConnection *)&v4 dealloc];
}

- (int)getStatement:(sqlite3_stmt *)statement forSQL:(id)l
{
  lCopy = l;
  Value = CFDictionaryGetValue(self->_stmtCache, lCopy);
  ppStmt = Value;
  if (Value)
  {
LABEL_2:
    v8 = sqlite3_reset(Value);
    if (v8)
    {
      v9 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
        v9 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10028E3A8(lCopy, v9, v8);
      }

      ppStmt = 0;
    }

    goto LABEL_13;
  }

  v11 = sqlite3_prepare_v2(self->_database, [lCopy UTF8String], objc_msgSend(lCopy, "lengthOfBytesUsingEncoding:", 4), &ppStmt, 0);
  if (!v11)
  {
    CFDictionarySetValue(self->_stmtCache, lCopy, ppStmt);
    Value = ppStmt;
    goto LABEL_2;
  }

  v8 = v11;
  v12 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
    v12 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E2F4(lCopy, v12, v8);
  }

LABEL_13:
  *statement = ppStmt;

  return v8;
}

- (void)open
{
  v3 = sqlite3_open_v2([(NSString *)self->_path cStringUsingEncoding:4], &self->_database, 6, 0);
  if (v3)
  {
    v4 = v3;
    if (v3 != 23 && v3 != 14)
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      v15 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKDatabaseConnection can't open database due to rc=%d, throwing exception", buf, 8u);
      }

      sqlite3_close(self->_database);
      v16 = [NSString stringWithFormat:@"failed to open database (%d)", v4];
      v17 = [NSException exceptionWithName:@"GKDatabaseInaccessibleException" reason:v16 userInfo:0];
      v18 = v17;

      objc_exception_throw(v17);
    }

    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKDatabaseConnection can't open database due to rc=%d", buf, 8u);
    }

    sqlite3_close(self->_database);
    self->_database = 0;
  }

  else if (![(NSString *)self->_path isEqualToString:@":memory:"])
  {
    *buf = 0;
    v41 = buf;
    v42 = 0x2020000000;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x2020000000;
    v29[2] = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100119368;
    v26[3] = &unk_1003673D0;
    v26[4] = self;
    v26[5] = buf;
    v26[6] = &v32;
    v26[7] = &v28;
    v26[8] = v30;
    v27 = 0;
    [(GKDatabaseConnection *)self performSync:v26];
    v8 = *(v33 + 6);
    if (v8 == 5)
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        v11 = *(v33 + 6);
        *v36 = 67109120;
        v37 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKDatabaseConnection couldn't exec on the database due to rc2=%d - closing and returning", v36, 8u);
      }

      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028E45C(v29, v13);
      }

      sqlite3_close(self->_database);
      self->_database = 0;
    }

    else if (*(v41 + 6) | v8)
    {
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
      }

      v20 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        v21 = *(v41 + 6);
        v22 = *(v33 + 6);
        *v36 = 67109376;
        v37 = v21;
        v38 = 1024;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "GKDatabaseConnection couldn't exec on the database due to rc1=%d or rc2=%d - closing and throwing an exception", v36, 0xEu);
      }

      sqlite3_close(self->_database);
      v23 = [NSString stringWithFormat:@"failed to set pragmas for database connection.(%d %d)", *(v41 + 6), *(v33 + 6)];
      v24 = [NSException exceptionWithName:@"GKDatabaseInaccessibleException" reason:v23 userInfo:0];
      v25 = v24;

      objc_exception_throw(v24);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)close
{
  if (GKAtomicCompareAndSwap32Barrier())
  {
    databaseQueue = self->_databaseQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011974C;
    block[3] = &unk_100361770;
    block[4] = self;
    dispatch_sync(databaseQueue, block);
  }
}

- (void)performSync:(id)sync
{
  syncCopy = sync;
  if (!self->_database)
  {
    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10028E5A4();
    }

    [(GKDatabaseConnection *)self open];
    if (!self->_database)
    {
      v9 = [NSException exceptionWithName:@"GKDatabaseInaccessibleException" reason:@"cannot perform operation on unopened database. Tried to re-open and failed. Restarting gamed" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  databaseQueue = self->_databaseQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001199A4;
  v10[3] = &unk_100360EB0;
  v10[4] = self;
  v11 = syncCopy;
  v8 = syncCopy;
  dispatch_sync(databaseQueue, v10);
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  if (!self->_database)
  {
    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10028E5D8();
    }

    [(GKDatabaseConnection *)self open];
    if (!self->_database)
    {
      v9 = [NSException exceptionWithName:@"GKDatabaseInaccessibleException" reason:@"cannot perform operation on unopened database. Tried to re-open and failed. Restarting gamed" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  databaseQueue = self->_databaseQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100119AE0;
  v10[3] = &unk_100360EB0;
  v10[4] = self;
  v11 = asyncCopy;
  v8 = asyncCopy;
  dispatch_async(databaseQueue, v10);
}

- (void)performAsyncTransaction:(id)transaction handler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  if (self->_database)
  {
    goto LABEL_7;
  }

  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E60C();
  }

  [(GKDatabaseConnection *)self open];
  if (self->_database)
  {
LABEL_7:
    databaseQueue = self->_databaseQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119C54;
    block[3] = &unk_1003673F8;
    block[4] = self;
    v13 = transactionCopy;
    v14 = handlerCopy;
    dispatch_async(databaseQueue, block);
  }

  else
  {
    v11 = [NSError userErrorForServerCode:1 reason:@"Database not available at this time"];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

@end