@interface SQLDB
+ (id)databaseWithURL:(id)l;
- (BOOL)setupSchema;
- (NSURL)shmURL;
- (NSURL)walURL;
- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (id)lastInsertRowID;
- (id)readSetting:(id)setting;
- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results;
- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results;
- (int)transaction:(id)transaction immediate:(BOOL)immediate;
- (unint64_t)tableRowCount:(id)count;
- (void)dealloc;
- (void)deleteSetting:(id)setting;
- (void)setSetting:(id)setting toValue:(id)value;
- (void)setupPermissions;
@end

@implementation SQLDB

- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SQLDB;
  v8 = [(SQLDB *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v10 = dispatch_semaphore_create(1);
    transactionSemaphore = v9->_transactionSemaphore;
    v9->_transactionSemaphore = v10;

    if (!v9->_transactionSemaphore)
    {
      goto LABEL_9;
    }

    db = sub_10000FD58(v9->_url, onlyCopy);
    v9->_db = db;
    if (!db)
    {
      goto LABEL_9;
    }

    if (onlyCopy)
    {
      v13 = 1;
    }

    else
    {
      [(SQLDB *)v9 setupPermissions];
      v13 = sub_10000FDF0(v9->_db, 0);
      db = v9->_db;
    }

    v9->_readonly = v13;
    sqlite3_busy_timeout(db, 300000);
    if (!v9->_readonly)
    {
      [(SQLDB *)v9 executeQuery:@"PRAGMA journal_mode = WAL" withBind:0 withResults:0];
      [(SQLDB *)v9 executeQuery:@"PRAGMA foreign_keys = ON" withBind:0 withResults:0];
      if (![(SQLDB *)v9 setupSchema])
      {
LABEL_9:

        v9 = 0;
      }
    }
  }

  return v9;
}

+ (id)databaseWithURL:(id)l
{
  lCopy = l;
  v5 = sub_1000027A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DB being loaded from %{public}@", &v8, 0xCu);
  }

  v6 = [[self alloc] initWithDatabaseURL:lCopy];

  return v6;
}

- (NSURL)walURL
{
  path = [(NSURL *)self->_url path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  path2 = [(NSURL *)self->_url path];
  lastPathComponent = [path2 lastPathComponent];

  v7 = [NSString stringWithFormat:@"%@-wal", lastPathComponent];
  v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

  return v9;
}

- (NSURL)shmURL
{
  path = [(NSURL *)self->_url path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  path2 = [(NSURL *)self->_url path];
  lastPathComponent = [path2 lastPathComponent];

  v7 = [NSString stringWithFormat:@"%@-shm", lastPathComponent];
  v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

  return v9;
}

- (BOOL)setupSchema
{
  v2 = [(SQLDB *)self executeQuery:@"CREATE TABLE IF NOT EXISTS settings(name TEXT withBind:value TEXT withResults:PRIMARY KEY (name))", 0, 0];
  if (v2)
  {
    v3 = sub_1000027A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001A058(v3);
    }
  }

  return v2 == 0;
}

- (void)setupPermissions
{
  dbURL = [(SQLDB *)self dbURL];
  path = [dbURL path];
  sub_10000FF4C([path UTF8String]);

  shmURL = [(SQLDB *)self shmURL];
  path2 = [shmURL path];
  sub_10000FF4C([path2 UTF8String]);

  walURL = [(SQLDB *)self walURL];
  path3 = [walURL path];
  sub_10000FF4C([path3 UTF8String]);
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
  }

  v4.receiver = self;
  v4.super_class = SQLDB;
  [(SQLDB *)&v4 dealloc];
}

- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B254;
  v10[3] = &unk_100028FD0;
  resultsCopy = results;
  v8 = resultsCopy;
  LODWORD(bind) = [(SQLDB *)self executeQuery:query withBind:bind withCancellableResults:v10];

  return bind;
}

- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results
{
  queryCopy = query;
  bindCopy = bind;
  resultsCopy = results;
  ppStmt = 0;
  db = self->_db;
  p_db = &self->_db;
  v13 = sqlite3_prepare_v2(db, [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000027A4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001A09C(p_db);
    }

    v16 = sub_1000027A4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001A130();
    }

    v17 = &__NSDictionary0__struct;
LABEL_40:
  }

  else
  {
    if (bindCopy)
    {
      bindCopy[2](bindCopy, ppStmt);
    }

    if (resultsCopy && (v18 = ppStmt, (v19 = sqlite3_column_count(ppStmt)) != 0))
    {
      v20 = v19;
      v17 = [NSMutableDictionary dictionaryWithCapacity:2 * v19];
      if (v20 >= 1)
      {
        v42 = bindCopy;
        v43 = queryCopy;
        v21 = 0;
        do
        {
          v22 = sqlite3_column_origin_name(v18, v21);
          v23 = sqlite3_column_name(v18, v21);
          v24 = sqlite3_column_table_name(v18, v21);
          if (v22 && v24)
          {
            v25 = [NSString stringWithUTF8String:v24];
            if ([v25 hasSuffix:@"s"])
            {
              v26 = [v25 substringToIndex:{objc_msgSend(v25, "length") - 1}];

              v25 = v26;
            }

            v27 = [NSNumber numberWithInt:v21];
            v28 = [NSString stringWithFormat:@"%@_%s", v25, v22];
            [v17 setObject:v27 forKeyedSubscript:v28];
          }

          if (v23)
          {
            v29 = [NSNumber numberWithInt:v21];
            v30 = [NSString stringWithUTF8String:v23];
            [v17 setObject:v29 forKeyedSubscript:v30];
          }

          v21 = (v21 + 1);
        }

        while (v20 != v21);
        bindCopy = v42;
        queryCopy = v43;
      }
    }

    else
    {
      v17 = &__NSDictionary0__struct;
    }

    do
    {
      v31 = sqlite3_step(ppStmt);
      v14 = v31;
      if ((v31 - 102) <= 0xFFFFFFFD)
      {
        v34 = sub_1000027A4();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v40 = sqlite3_errmsg(*p_db);
          v41 = sqlite3_errcode(*p_db);
          *buf = 136446466;
          *v46 = v40;
          *&v46[8] = 1024;
          *&v46[10] = v41;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "SQL error '%{public}s' (%1d)", buf, 0x12u);
        }

        v16 = sub_1000027A4();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v46 = v14;
          *&v46[4] = 2114;
          *&v46[6] = queryCopy;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Step error (%d) on query: %{public}@", buf, 0x12u);
        }

        goto LABEL_40;
      }

      v32 = v31 == 100;
      v33 = 1;
      if (resultsCopy && v14 == 100)
      {
        v33 = resultsCopy[2](resultsCopy, ppStmt, v17);
        v32 = 1;
      }
    }

    while (v32 && (v33 & 1) != 0);
    if (v32)
    {
      v14 = 100;
    }

    if (!(v33 & 1 | !v32))
    {
      v16 = sub_1000027A4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001A198(v16);
      }

      v14 = 4;
      goto LABEL_40;
    }
  }

  v35 = v14;
  if (ppStmt)
  {
    v35 = sqlite3_finalize(ppStmt);
    if (v35)
    {
      v36 = sub_1000027A4();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10001A09C(p_db);
      }

      v37 = sub_1000027A4();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10001A1DC();
      }
    }
  }

  if (v14 == 101)
  {
    v38 = v35;
  }

  else
  {
    v38 = v14;
  }

  if (v14)
  {
    v35 = v38;
  }

  return v35;
}

- (int)transaction:(id)transaction immediate:(BOOL)immediate
{
  immediateCopy = immediate;
  transactionCopy = transaction;
  dispatch_semaphore_wait(self->_transactionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (immediateCopy)
  {
    v7 = @"begin immediate transaction";
  }

  else
  {
    v7 = @"begin transaction";
  }

  v8 = [(SQLDB *)self executeQuery:v7 withBind:0 withResults:0];
  if (!v8)
  {
    if (transactionCopy[2](transactionCopy) && ![(SQLDB *)self executeQuery:@"end transaction" withBind:0 withResults:0])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(SQLDB *)self executeQuery:@"rollback transaction" withBind:0 withResults:0];
    }
  }

  dispatch_semaphore_signal(self->_transactionSemaphore);

  return v8;
}

- (id)readSetting:(id)setting
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000B9C0;
  v14 = sub_10000B9D0;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B9D8;
  v8[3] = &unk_100028C48;
  settingCopy = setting;
  v9 = settingCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BA28;
  v7[3] = &unk_100028F50;
  v7[4] = &v10;
  [(SQLDB *)self executeQuery:@"SELECT value FROM settings WHERE name = ?1" withBind:v8 withResults:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)setSetting:(id)setting toValue:(id)value
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BB40;
  v8[3] = &unk_100028C98;
  settingCopy = setting;
  valueCopy = value;
  v6 = valueCopy;
  v7 = settingCopy;
  [(SQLDB *)self executeQuery:@"INSERT OR REPLACE INTO settings (name withBind:value) VALUES (?1 withResults:?2)", v8, 0];
}

- (void)deleteSetting:(id)setting
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BC58;
  v5[3] = &unk_100028C48;
  settingCopy = setting;
  v4 = settingCopy;
  [(SQLDB *)self executeQuery:@"DELETE FROM settings WHERE name = ?1" withBind:v5 withResults:0];
}

- (unint64_t)tableRowCount:(id)count
{
  countCopy = count;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000B9C0;
  v16 = sub_10000B9D0;
  v17 = 0;
  countCopy = [NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", countCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BE28;
  v11[3] = &unk_100028F50;
  v11[4] = &v12;
  v6 = [(SQLDB *)self executeQuery:countCopy withBind:0 withResults:v11];
  if (v6)
  {
    v7 = sub_1000027A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001A244(countCopy, v6, v7);
    }
  }

  v8 = v13[5];
  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  _Block_object_dispose(&v12, 8);
  return unsignedIntegerValue;
}

- (id)lastInsertRowID
{
  insert_rowid = sqlite3_last_insert_rowid(self->_db);

  return [NSNumber numberWithLongLong:insert_rowid];
}

@end