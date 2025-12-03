@interface NDTSQFile
- (NDTSQFile)initWithPath:(id)path queue:(id)queue readOnly:(BOOL)only;
- (NDTSQFile)initWithURL:(id)l;
- (NDTSQFileDelegate)delegate;
- (id)_loadCache:(id)cache sqlErr:(int *)err;
- (id)_makeSqlErrorReasonString:(id)string;
- (int64_t)changes;
- (void)_addSchema:(id)schema;
- (void)_bootstrap;
- (void)_createParentDirectory;
- (void)_databaseChangedExternally;
- (void)_executeSql:(id)sql;
- (void)_newPath;
- (void)_openDatabase;
- (void)_parseSql:(id)sql andRun:(id)run;
- (void)_prepDatabase;
- (void)_recreatePath;
- (void)_watchWalFile;
- (void)addSchema:(id)schema;
- (void)begin;
- (void)commit;
- (void)executeSql:(id)sql;
- (void)parseSql:(id)sql andRun:(id)run;
- (void)rollback;
@end

@implementation NDTSQFile

- (NDTSQFile)initWithURL:(id)l
{
  path = [l path];
  v5 = [(NDTSQFile *)self initWithPath:path];

  return v5;
}

- (NDTSQFile)initWithPath:(id)path queue:(id)queue readOnly:(BOOL)only
{
  pathCopy = path;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = NDTSQFile;
  v11 = [(NDTSQFile *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pathTemplate, path);
    v13 = [[NSHashTable alloc] initWithOptions:5 capacity:4];
    memberSchemas = v12->_memberSchemas;
    v12->_memberSchemas = v13;

    v12->_memberSchemasLock._os_unfair_lock_opaque = 0;
    v12->_readOnly = only;
    if (!queueCopy)
    {
      v15 = [NSString stringWithFormat:@"NDTSQFile.%@.%p", pathCopy, v12];
      uTF8String = [v15 UTF8String];
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create(uTF8String, v17);
    }

    objc_storeStrong(&v12->_q, queueCopy);
    [(NDTSQFile *)v12 _bootstrap];
  }

  return v12;
}

- (void)_newPath
{
  v8 = +[NSDate date];
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = [v3 components:252 fromDate:v8];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04d%02d%02d-%02d%02d%02d", [v4 year], objc_msgSend(v4, "month"), objc_msgSend(v4, "day"), objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second"));
  v6 = [(NSString *)self->_pathTemplate stringByReplacingOccurrencesOfString:@"%t" withString:v5];
  path = self->_path;
  self->_path = v6;
}

- (void)_bootstrap
{
  v3 = [[NSMutableOrderedSet alloc] initWithCapacity:50];
  statementCache = self->_statementCache;
  self->_statementCache = v3;

  [(NDTSQFile *)self _recreatePath];
  [(NDTSQFile *)self _createParentDirectory];
  [(NDTSQFile *)self _openDatabase];
  [(NDTSQFile *)self _prepDatabase];

  [(NDTSQFile *)self _watchWalFile];
}

- (void)_recreatePath
{
  delegate = [(NDTSQFile *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [delegate newFileName:self];
    if (v3)
    {
      objc_storeStrong(&self->_pathTemplate, v3);
    }
  }

  [(NDTSQFile *)self _newPath];
}

- (void)_createParentDirectory
{
  path = [(NDTSQFile *)self path];
  v4 = [path isEqual:@":memory:"];

  if ((v4 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    path2 = [(NDTSQFile *)self path];
    stringByDeletingLastPathComponent = [path2 stringByDeletingLastPathComponent];

    if (stringByDeletingLastPathComponent && [stringByDeletingLastPathComponent length])
    {
      v15[0] = NSFileOwnerAccountName;
      v15[1] = NSFileGroupOwnerAccountName;
      v16[0] = @"mobile";
      v16[1] = @"mobile";
      v15[2] = NSFilePosixPermissions;
      v16[2] = &off_1000BB730;
      v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
      v9 = 0;
      do
      {

        v14 = 0;
        v10 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v8 error:&v14];
        v11 = v14;
        v9 = v11;
        if (v10)
        {
          break;
        }

        domain = [v11 domain];
        if (![domain isEqualToString:NSCocoaErrorDomain])
        {

          break;
        }

        code = [v9 code];
      }

      while (code == 516);
    }
  }
}

- (void)_openDatabase
{
  if ([(NDTSQFile *)self readOnly])
  {
    v3 = 4194305;
  }

  else
  {
    v3 = 4194310;
  }

  path = [(NDTSQFile *)self path];
  v5 = sqlite3_open_v2([path UTF8String], &self->_db, v3, 0);

  if (v5)
  {
    [(NDTSQFile *)self _makeSqlErrorReasonString:@"_openDatabase(1)"];
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }
}

- (void)_prepDatabase
{
  [(NDTSQFile *)self _executeSql:@"pragma journal_mode=wal"];
  if (![(NDTSQFile *)self readOnly])
  {
    v3 = [[NDTSQKeyValueStore alloc] initWithName:@"_SQ_Versions"];
    instanceVersions = self->_instanceVersions;
    self->_instanceVersions = v3;

    v5 = self->_instanceVersions;

    [(NDTSQFile *)self addSchema:v5];
  }
}

- (void)_watchWalFile
{
  objc_initWeak(&location, self);
  path = [(NDTSQFile *)self path];
  v4 = [NSString stringWithFormat:@"%@-wal", path];
  v5 = open([v4 UTF8String], 0x8000);

  if (v5 != -1)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_vnode, v5, 2uLL, self->_q);
    readSource = self->_readSource;
    self->_readSource = v6;

    v8 = self->_readSource;
    if (v8)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000077A8;
      handler[3] = &unk_1000B4B48;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v8, handler);
      v9 = self->_readSource;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100007894;
      v10[3] = &unk_1000B4B68;
      v11 = v5;
      dispatch_source_set_cancel_handler(v9, v10);
      dispatch_resume(self->_readSource);
      objc_destroyWeak(&v13);
    }

    else
    {
      close(v5);
    }
  }

  objc_destroyWeak(&location);
}

- (void)_databaseChangedExternally
{
  os_unfair_lock_lock(&self->_memberSchemasLock);
  v3 = [(NSHashTable *)self->_memberSchemas copy];
  os_unfair_lock_unlock(&self->_memberSchemasLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        q = self->_q;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100007A10;
        block[3] = &unk_1000B4B90;
        block[4] = v9;
        dispatch_async(q, block);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_addSchema:(id)schema
{
  schemaCopy = schema;
  [schemaCopy setDb:self];
  [schemaCopy createTables];
  instanceName = [schemaCopy instanceName];
  currentVersion = [schemaCopy currentVersion];
  v6 = [(NDTSQFile *)self _instanceVersion:instanceName];
  if (v6 != currentVersion)
  {
    [schemaCopy migrateFrom:v6];
    [(NDTSQFile *)self _setInstance:instanceName version:currentVersion];
  }

  v7 = [(NSHashTable *)self->_memberSchemas member:schemaCopy];

  if (!v7)
  {
    [(NSHashTable *)self->_memberSchemas addObject:schemaCopy];
  }
}

- (void)addSchema:(id)schema
{
  schemaCopy = schema;
  os_unfair_lock_lock(&self->_memberSchemasLock);
  [(NDTSQFile *)self _addSchema:schemaCopy];

  os_unfair_lock_unlock(&self->_memberSchemasLock);
}

- (id)_makeSqlErrorReasonString:(id)string
{
  db = self->_db;
  stringCopy = string;
  v5 = sqlite3_errcode(db);
  v6 = [NSString stringWithFormat:@"%@: [%d] %s", stringCopy, v5, sqlite3_errstr(v5)];

  return v6;
}

- (void)executeSql:(id)sql
{
  sqlCopy = sql;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007C60;
  v7[3] = &unk_1000B4BB8;
  v7[4] = self;
  v8 = sqlCopy;
  v6 = sqlCopy;
  dispatch_sync(q, v7);
}

- (void)_executeSql:(id)sql
{
  sqlCopy = sql;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NDTSQFile db](self, "db"), [sqlCopy UTF8String], -1, &ppStmt, 0) || ((v5 = sqlite3_step(ppStmt), (v5 - 100) >= 2) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    [(NDTSQFile *)self _makeSqlErrorReasonString:@"_executeSql(1)"];
    v7 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v7);
  }

  sqlite3_finalize(ppStmt);
}

- (void)parseSql:(id)sql andRun:(id)run
{
  sqlCopy = sql;
  runCopy = run;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E00;
  block[3] = &unk_1000B4BE0;
  block[4] = self;
  v12 = sqlCopy;
  v13 = runCopy;
  v9 = runCopy;
  v10 = sqlCopy;
  dispatch_sync(q, block);
}

- (id)_loadCache:(id)cache sqlErr:(int *)err
{
  cacheCopy = cache;
  *err = 0;
  v7 = [[NDTSQStatement alloc] initWithQueue:self->_q text:cacheCopy];
  v8 = [(NSMutableOrderedSet *)self->_statementCache indexOfObject:v7];
  statementCache = self->_statementCache;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableOrderedSet *)statementCache count]>= 0x32)
    {
      do
      {
        v10 = self->_statementCache;
        lastObject = [(NSMutableOrderedSet *)v10 lastObject];
        [(NSMutableOrderedSet *)v10 removeObject:lastObject];
      }

      while ([(NSMutableOrderedSet *)self->_statementCache count]> 0x31);
    }

    ppStmt = 0;
    v12 = sqlite3_prepare_v2(-[NDTSQFile db](self, "db"), [cacheCopy UTF8String], -1, &ppStmt, 0);
    if (v12)
    {
      v13 = 0;
      *err = v12;
      goto LABEL_9;
    }

    [(NDTSQStatement *)v7 setParsed:ppStmt];
    [(NDTSQStatement *)v7 setRawDb:[(NDTSQFile *)self db]];
  }

  else
  {
    v14 = [(NSMutableOrderedSet *)statementCache objectAtIndex:v8];

    [(NSMutableOrderedSet *)self->_statementCache removeObjectAtIndex:v8];
    v7 = v14;
  }

  [(NSMutableOrderedSet *)self->_statementCache insertObject:v7 atIndex:0];
  [(NDTSQStatement *)v7 resetBindCursor];
  v7 = v7;
  v13 = v7;
LABEL_9:

  return v13;
}

- (void)_parseSql:(id)sql andRun:(id)run
{
  sqlCopy = sql;
  runCopy = run;
  v15 = 0;
  v8 = [(NDTSQFile *)self _loadCache:sqlCopy sqlErr:&v15];
  if (v15)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v13 = @"_parseSql:(1)";
LABEL_12:
    [(NDTSQFile *)self _makeSqlErrorReasonString:v13];
    v14 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = v8;
  v11 = runCopy[2](runCopy, v8);
  v15 = v11;
  if ((v11 - 100) >= 2 && v11 != 0)
  {
    v13 = @"_parseSql:(2)";
    goto LABEL_12;
  }

  sqlite3_reset([v10 parsed]);
  sqlite3_clear_bindings([v10 parsed]);
}

- (void)begin
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008138;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)commit
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000822C;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)rollback
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008320;
  block[3] = &unk_1000B4B90;
  block[4] = self;
  dispatch_sync(q, block);
}

- (int64_t)changes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008500;
  v5[3] = &unk_1000B4C08;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(q, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NDTSQFileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end