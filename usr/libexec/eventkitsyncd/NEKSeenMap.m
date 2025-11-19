@interface NEKSeenMap
- (BOOL)_createDb;
- (BOOL)_executeSql:(id)a3;
- (BOOL)_prepareStatements;
- (BOOL)shouldShowInvite:(id)a3 withUUID:(id)a4;
- (NEKSeenMap)initWithDatabaseManager:(id)a3;
- (void)dealloc;
- (void)deleteInviteByUUID:(id)a3;
- (void)didShowInvite:(id)a3 withUUID:(id)a4;
- (void)sweep;
@end

@implementation NEKSeenMap

- (NEKSeenMap)initWithDatabaseManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEKSeenMap;
  v5 = [(NEKSeenMap *)&v11 init];
  if (v5)
  {
    v6 = [v4 syncStateDBPathFor:@"SeenMap.db"];
    dbFilename = v5->_dbFilename;
    v5->_dbFilename = v6;

    v8 = sub_100004B98("com.apple.eventkitsync.seenmap");
    dbQueue = v5->_dbQueue;
    v5->_dbQueue = v8;

    if (![(NEKSeenMap *)v5 _createDb]|| ![(NEKSeenMap *)v5 _prepareStatements])
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  objc_initWeak(&location, self);
  dbQueue = self->_dbQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C3A0;
  block[3] = &unk_1000B4B48;
  objc_copyWeak(&v6, &location);
  dispatch_sync(dbQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  v4.receiver = self;
  v4.super_class = NEKSeenMap;
  [(NEKSeenMap *)&v4 dealloc];
}

- (BOOL)_executeSql:(id)a3
{
  ppStmt = 0;
  dbConn = self->_dbConn;
  v5 = a3;
  if (sqlite3_prepare_v2(dbConn, [a3 UTF8String], -1, &ppStmt, 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = ppStmt == 0;
  }

  v7 = !v6;
  if (!v6)
  {
    sqlite3_step(ppStmt);
    sqlite3_finalize(ppStmt);
  }

  return v7;
}

- (BOOL)_createDb
{
  v3 = [(NEKSeenMap *)self dbFilename];
  v4 = [v3 UTF8String];

  v5 = sqlite3_open_v2(v4, &self->_dbConn, 6, 0);
  if (v5)
  {
    v6 = v5;
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000723F8(v4, v6, v7);
    }

    return 0;
  }

  else
  {
    [(NEKSeenMap *)self _executeSql:@"pragma journal_mode=wal"];
    [(NEKSeenMap *)self _executeSql:@"drop table if exists seen"];

    return [(NEKSeenMap *)self _executeSql:@"create table if not exists seendata (uuid TEXT, start_date REAL, end_date REAL, location TEXT, primary key (uuid))"];
  }
}

- (BOOL)_prepareStatements
{
  dbConn = self->_dbConn;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003C68C;
  v7[3] = &unk_1000B58A8;
  v7[4] = dbConn;
  v4 = objc_retainBlock(v7);
  if ((v4[2])(v4, &self->_update, "insert or replace into seendata values(?, ?, ?, ?);") && (v4[2])(v4, &self->_fetch, "select start_date, end_date, location from seendata where uuid = ?;") && (v4[2])(v4, &self->_delete, "delete from seendata where uuid = ?;"))
  {
    v5 = (v4[2])(v4, &self->_sweep, "delete from seendata where end_date < ?;");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowInvite:(id)a3 withUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10003C968;
  v31 = sub_10003C978;
  v32 = 0;
  fetch = self->_fetch;
  dbQueue = self->_dbQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C980;
  block[3] = &unk_1000B58D0;
  v10 = v7;
  v25 = &v27;
  v26 = fetch;
  v22 = v10;
  v23 = &v37;
  v24 = &v33;
  dispatch_sync(dbQueue, block);
  v11 = [v6 startDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [v6 endDate];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [v6 location];
  v18 = v13 != v38[3] || v16 != v34[3];
  v19 = v28[5];
  if (v17)
  {
    if (v19)
    {
      if ([v19 localizedStandardCompare:v17])
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 |= v19 != 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v18 & 1;
}

- (void)didShowInvite:(id)a3 withUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [v7 UTF8String];

  v10 = [v6 location];
  v11 = v10;
  if (v10)
  {
    v12 = strdup([v10 UTF8String]);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 startDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [v6 endDate];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  update = self->_update;
  dbQueue = self->_dbQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003CBC4;
  v22[3] = &unk_1000B58F8;
  v24 = update;
  v25 = v9;
  v26 = v15;
  v27 = v18;
  v28 = v12;
  v23 = v8;
  v21 = v8;
  dispatch_async(dbQueue, v22);
}

- (void)deleteInviteByUUID:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [v4 UTF8String];

  delete = self->_delete;
  dbQueue = self->_dbQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CD40;
  block[3] = &unk_1000B5920;
  v12 = delete;
  v13 = v6;
  v11 = v5;
  v9 = v5;
  dispatch_async(dbQueue, block);
}

- (void)sweep
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = os_transaction_create();
  sweep = self->_sweep;
  dbQueue = self->_dbQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CE54;
  block[3] = &unk_1000B5920;
  v11 = Current;
  v9 = v4;
  v10 = sweep;
  v7 = v4;
  dispatch_async(dbQueue, block);
}

@end