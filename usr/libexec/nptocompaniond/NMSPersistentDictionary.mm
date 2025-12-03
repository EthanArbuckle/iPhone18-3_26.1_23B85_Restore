@interface NMSPersistentDictionary
- (NMSPersistentDictionary)initWithPath:(id)path objectClass:(Class)class;
- (id)_dataFromObj:(id)obj;
- (id)_objectFromData:(id)data;
- (id)objectForKey:(id)key;
- (void)_GENERIC_ERROR:(id)r;
- (void)_SQLITE_ABORT:(id)t;
- (void)_SQLITE_AUTH:(id)h;
- (void)_SQLITE_BUSY:(id)y;
- (void)_SQLITE_CANTOPEN:(id)n;
- (void)_SQLITE_CONSTRAINT:(id)t;
- (void)_SQLITE_CORRUPT:(id)t;
- (void)_SQLITE_DONE:(id)e;
- (void)_SQLITE_EMPTY:(id)y;
- (void)_SQLITE_ERROR:(id)r;
- (void)_SQLITE_FORMAT:(id)t;
- (void)_SQLITE_FULL:(id)l;
- (void)_SQLITE_INTERNAL:(id)l;
- (void)_SQLITE_INTERRUPT:(id)t;
- (void)_SQLITE_IOERR:(id)r;
- (void)_SQLITE_LOCKED:(id)d;
- (void)_SQLITE_MISMATCH:(id)h;
- (void)_SQLITE_MISUSE:(id)e;
- (void)_SQLITE_NOLFS:(id)s;
- (void)_SQLITE_NOMEM:(id)m;
- (void)_SQLITE_NOTADB:(id)b;
- (void)_SQLITE_NOTFOUND:(id)d;
- (void)_SQLITE_NOTICE:(id)e;
- (void)_SQLITE_PERM:(id)m;
- (void)_SQLITE_PROTOCOL:(id)l;
- (void)_SQLITE_RANGE:(id)e;
- (void)_SQLITE_READONLY:(id)y;
- (void)_SQLITE_ROW:(id)w;
- (void)_SQLITE_SCHEMA:(id)a;
- (void)_SQLITE_TOOBIG:(id)g;
- (void)_SQLITE_WARNING:(id)g;
- (void)_openDBForceRecreate:(BOOL)recreate;
- (void)_raiseExceptionWithError:(id)error;
- (void)dealloc;
- (void)enumerateObjectsSortedByExpirationDate:(id)date;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key expires:(id)expires;
@end

@implementation NMSPersistentDictionary

- (NMSPersistentDictionary)initWithPath:(id)path objectClass:(Class)class
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = NMSPersistentDictionary;
  v8 = [(NMSPersistentDictionary *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    v9->_objectClass = class;
    [(NMSPersistentDictionary *)v9 _openDBForceRecreate:0];
  }

  return v9;
}

- (void)dealloc
{
  if (self->_db)
  {
    sqlite3_finalize(self->_fetch);
    sqlite3_finalize(self->_insert);
    sqlite3_finalize(self->_remove);
    sqlite3_finalize(self->_removeAll);
    sqlite3_finalize(self->_byDate);
    sqlite3_close(self->_db);
  }

  v3.receiver = self;
  v3.super_class = NMSPersistentDictionary;
  [(NMSPersistentDictionary *)&v3 dealloc];
}

- (void)_openDBForceRecreate:(BOOL)recreate
{
  v5 = self->_path;
  v6 = +[NSFileManager defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)v5 stringByDeletingLastPathComponent];
  v8 = [v6 fileExistsAtPath:v5];
  if ((v8 & 1) == 0)
  {
    v49 = 0;
    v9 = [v6 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v49];
    v10 = v49;
    if ((v9 & 1) == 0)
    {
      v11 = sub_10000268C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v53 = stringByDeletingLastPathComponent;
        *&v53[8] = 2112;
        *&v53[10] = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not create directory %@: %@", buf, 0x16u);
      }

      [(NMSPersistentDictionary *)self _raiseExceptionWithError:v10];
    }
  }

  v12 = sqlite3_open_v2([(NSString *)v5 UTF8String], &self->_db, 6, 0);
  db = self->_db;
  if (v12)
  {
    recreateCopy2 = recreate;
    v14 = v6;
    v15 = stringByDeletingLastPathComponent;
    v16 = v12;
    v50 = NSLocalizedDescriptionKey;
    if (db)
    {
      v17 = [NSString stringWithUTF8String:sqlite3_errmsg(db)];
      v18 = 0;
LABEL_34:
      v51 = v17;
      v35 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v33 = [NSError errorWithDomain:@"SQLITE" code:v16 userInfo:v35];

      if ((v18 & 1) == 0)
      {
      }

      v36 = sub_10000268C();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v53 = v5;
        *&v53[8] = 2112;
        *&v53[10] = v33;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not open database (%@): %@", buf, 0x16u);
      }

      v37 = self->_db;
      stringByDeletingLastPathComponent = v15;
      if (v37)
      {
        sqlite3_close(v37);
      }

      self->_db = 0;
      v6 = v14;
      if (recreateCopy2)
      {
        v38 = sub_10000268C();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v53 = v5;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Database %@ open has failed after second try", buf, 0xCu);
        }

        [(NMSPersistentDictionary *)self _raiseExceptionWithError:v33];
      }

      else
      {
        if (v12 == 11)
        {
          v39 = sub_10000268C();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Database is corrupted, attempting to delete..", buf, 2u);
          }

          v48 = v33;
          v40 = [v6 removeItemAtPath:v5 error:&v48];
          v41 = v48;

          if ((v40 & 1) == 0)
          {
            v42 = sub_10000268C();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v53 = v5;
              *&v53[8] = 2112;
              *&v53[10] = v41;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Could not delete database (%@): %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v41 = v33;
        }

        [(NMSPersistentDictionary *)self _openDBForceRecreate:1];
        v33 = v41;
      }

LABEL_53:

      goto LABEL_54;
    }

LABEL_33:
    v17 = &stru_10008C6E8;
    v18 = 1;
    goto LABEL_34;
  }

  if (!db)
  {
    recreateCopy2 = recreate;
    v14 = v6;
    v15 = stringByDeletingLastPathComponent;
    v16 = 0;
    v50 = NSLocalizedDescriptionKey;
    goto LABEL_33;
  }

  sqlite3_busy_timeout(db, 60000);
  if ((v8 & 1) == 0)
  {
    sub_10005B4D4(self->_db, "CREATE TABLE kvs (k0 text, d0 real, v0 blob)");
    sub_10005B4D4(self->_db, "CREATE UNIQUE INDEX k0 on kvs (k0)");
    sub_10005B4D4(self->_db, "CREATE INDEX d0 on kvs (d0)");
  }

  v19 = sqlite3_prepare_v2(self->_db, "INSERT OR REPLACE INTO kvs (k0, d0, v0) VALUES (?, ?, ?)", 56, &self->_insert, 0);
  if (v19)
  {
    v20 = v19;
    v21 = sub_10000268C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v43 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      *v53 = v20;
      *&v53[4] = 2080;
      *&v53[6] = v43;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", buf, 0x12u);
    }
  }

  v22 = sqlite3_prepare_v2(self->_db, "SELECT v0 FROM kvs WHERE k0 = ?", 31, &self->_fetch, 0);
  if (v22)
  {
    v23 = v22;
    v24 = sub_10000268C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v44 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      *v53 = v23;
      *&v53[4] = 2080;
      *&v53[6] = v44;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", buf, 0x12u);
    }
  }

  v25 = sqlite3_prepare_v2(self->_db, "DELETE FROM kvs WHERE k0 = ?", 28, &self->_remove, 0);
  if (v25)
  {
    v26 = v25;
    v27 = sub_10000268C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v45 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      *v53 = v26;
      *&v53[4] = 2080;
      *&v53[6] = v45;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", buf, 0x12u);
    }
  }

  v28 = sqlite3_prepare_v2(self->_db, "DELETE FROM kvs", 15, &self->_removeAll, 0);
  if (v28)
  {
    v29 = v28;
    v30 = sub_10000268C();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v46 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      *v53 = v29;
      *&v53[4] = 2080;
      *&v53[6] = v46;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", buf, 0x12u);
    }
  }

  v31 = sqlite3_prepare_v2(self->_db, "SELECT k0, d0, v0 FROM kvs ORDER BY d0 ASC", 42, &self->_byDate, 0);
  if (v31)
  {
    v32 = v31;
    v33 = sub_10000268C();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      *v53 = v32;
      *&v53[4] = 2080;
      *&v53[6] = v34;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", buf, 0x12u);
    }

    goto LABEL_53;
  }

LABEL_54:
}

- (void)setObject:(id)object forKey:(id)key expires:(id)expires
{
  insert = self->_insert;
  expiresCopy = expires;
  objectCopy = object;
  sub_10005B708(insert, key);
  v11 = self->_insert;
  [expiresCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  sqlite3_bind_double(v11, 2, v13);
  v14 = [(NMSPersistentDictionary *)self _dataFromObj:objectCopy];

  sqlite3_bind_blob(self->_insert, 3, [v14 bytes], objc_msgSend(v14, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v15 = sqlite3_step(self->_insert);
  if (v15)
  {
    v16 = v15;
    if (v15 != 101)
    {
      v17 = sub_10000268C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sqlite3_errmsg(self->_db);
        v19[0] = 67109378;
        v19[1] = v16;
        v20 = 2080;
        v21 = v18;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", v19, 0x12u);
      }
    }
  }

  sqlite3_reset(self->_insert);
  sqlite3_clear_bindings(self->_insert);
}

- (id)_objectFromData:(id)data
{
  if (data)
  {
    objectClass = self->_objectClass;
    v9 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objectClass fromData:data error:&v9];
    v6 = v9;
    if (v6)
    {
      v7 = sub_10000268C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to unarchive persistent dictionary object: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_dataFromObj:(id)obj
{
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:obj requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = sub_10000268C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to archive persistent dictionary object: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (id)objectForKey:(id)key
{
  sub_10005B708(self->_fetch, key);
  v4 = sqlite3_step(self->_fetch);
  if (v4 != 101)
  {
    v5 = v4;
    if (v4 == 100)
    {
      v6 = sub_10005BAA8(self->_fetch, 0);
      goto LABEL_8;
    }

    v7 = sub_10000268C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(self->_db);
      v11[0] = 67109378;
      v11[1] = v5;
      v12 = 2080;
      v13 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", v11, 0x12u);
    }
  }

  v6 = 0;
LABEL_8:
  sqlite3_reset(self->_fetch);
  sqlite3_clear_bindings(self->_fetch);
  v8 = [(NMSPersistentDictionary *)self _objectFromData:v6];

  return v8;
}

- (void)removeObjectForKey:(id)key
{
  sub_10005B708(self->_remove, key);
  v4 = sqlite3_step(self->_remove);
  if (v4 != 101)
  {
    v5 = v4;
    v6 = sub_10000268C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(self->_db);
      v8[0] = 67109378;
      v8[1] = v5;
      v9 = 2080;
      v10 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", v8, 0x12u);
    }
  }

  sqlite3_reset(self->_remove);
  sqlite3_clear_bindings(self->_remove);
}

- (void)removeAllObjects
{
  v3 = sqlite3_step(self->_removeAll);
  if (v3 != 101)
  {
    v4 = v3;
    v5 = sub_10000268C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg(self->_db);
      v7[0] = 67109378;
      v7[1] = v4;
      v8 = 2080;
      v9 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "SQL error: (%d) %s", v7, 0x12u);
    }
  }

  sqlite3_reset(self->_removeAll);
}

- (void)enumerateObjectsSortedByExpirationDate:(id)date
{
  dateCopy = date;
  v5 = +[NSMutableSet set];
  while (1)
  {
    v6 = sqlite3_step(self->_byDate);
    if (v6 != 100)
    {
      break;
    }

    v7 = [NSString stringWithUTF8String:sqlite3_column_text(self->_byDate, 0)];
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(self->_byDate, 1)];
    v9 = sub_10005BAA8(self->_byDate, 2);
    v10 = [(NMSPersistentDictionary *)self _objectFromData:v9];
    if (v10)
    {
      buf[0] = 0;
      dateCopy[2](dateCopy, v7, v10, v8, buf);
      if (buf[0])
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      [v5 addObject:v7];
    }
  }

  v11 = v6;
  if (v6 && v6 != 101)
  {
    v7 = sub_10000268C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(self->_db);
      *buf = 67109378;
      v24 = v11;
      v25 = 2080;
      v26 = v12;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SQL Error %d: %s", buf, 0x12u);
    }

    goto LABEL_12;
  }

LABEL_13:
  sqlite3_reset(self->_byDate);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NMSPersistentDictionary *)self removeObjectForKey:*(*(&v18 + 1) + 8 * i), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)_SQLITE_ERROR:(id)r
{
  localizedDescription = [r localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_INTERNAL:(id)l
{
  localizedDescription = [l localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_PERM:(id)m
{
  localizedDescription = [m localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_ABORT:(id)t
{
  localizedDescription = [t localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_BUSY:(id)y
{
  localizedDescription = [y localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_LOCKED:(id)d
{
  localizedDescription = [d localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOMEM:(id)m
{
  localizedDescription = [m localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_READONLY:(id)y
{
  localizedDescription = [y localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_INTERRUPT:(id)t
{
  localizedDescription = [t localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_IOERR:(id)r
{
  localizedDescription = [r localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CORRUPT:(id)t
{
  localizedDescription = [t localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTFOUND:(id)d
{
  localizedDescription = [d localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_FULL:(id)l
{
  localizedDescription = [l localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CANTOPEN:(id)n
{
  localizedDescription = [n localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_PROTOCOL:(id)l
{
  localizedDescription = [l localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_EMPTY:(id)y
{
  localizedDescription = [y localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_SCHEMA:(id)a
{
  localizedDescription = [a localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_TOOBIG:(id)g
{
  localizedDescription = [g localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CONSTRAINT:(id)t
{
  localizedDescription = [t localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_MISMATCH:(id)h
{
  localizedDescription = [h localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_MISUSE:(id)e
{
  localizedDescription = [e localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOLFS:(id)s
{
  localizedDescription = [s localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_AUTH:(id)h
{
  localizedDescription = [h localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_FORMAT:(id)t
{
  localizedDescription = [t localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_RANGE:(id)e
{
  localizedDescription = [e localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTADB:(id)b
{
  localizedDescription = [b localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTICE:(id)e
{
  localizedDescription = [e localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_WARNING:(id)g
{
  localizedDescription = [g localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_ROW:(id)w
{
  localizedDescription = [w localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_DONE:(id)e
{
  localizedDescription = [e localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_GENERIC_ERROR:(id)r
{
  localizedDescription = [r localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:localizedDescription userInfo:0];
  [v3 raise];
}

- (void)_raiseExceptionWithError:(id)error
{
  errorCopy = error;
  +[NPTOTransaction _deleteKeepAliveFile];
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"SQLITE"];

  if (!v5)
  {
    goto LABEL_62;
  }

  if ([errorCopy code] == 1)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ERROR:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 2)
  {
    [(NMSPersistentDictionary *)self _SQLITE_INTERNAL:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 3)
  {
    [(NMSPersistentDictionary *)self _SQLITE_PERM:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 4)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ABORT:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 5)
  {
    [(NMSPersistentDictionary *)self _SQLITE_BUSY:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 6)
  {
    [(NMSPersistentDictionary *)self _SQLITE_LOCKED:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 7)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOMEM:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 8)
  {
    [(NMSPersistentDictionary *)self _SQLITE_READONLY:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 9)
  {
    [(NMSPersistentDictionary *)self _SQLITE_INTERRUPT:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 10)
  {
    [(NMSPersistentDictionary *)self _SQLITE_IOERR:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 11)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CORRUPT:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 12)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTFOUND:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 13)
  {
    [(NMSPersistentDictionary *)self _SQLITE_FULL:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 14)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CANTOPEN:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 15)
  {
    [(NMSPersistentDictionary *)self _SQLITE_PROTOCOL:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 16)
  {
    [(NMSPersistentDictionary *)self _SQLITE_EMPTY:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 17)
  {
    [(NMSPersistentDictionary *)self _SQLITE_SCHEMA:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 18)
  {
    [(NMSPersistentDictionary *)self _SQLITE_TOOBIG:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 19)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CONSTRAINT:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 20)
  {
    [(NMSPersistentDictionary *)self _SQLITE_MISMATCH:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 21)
  {
    [(NMSPersistentDictionary *)self _SQLITE_MISUSE:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 22)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOLFS:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 23)
  {
    [(NMSPersistentDictionary *)self _SQLITE_AUTH:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 24)
  {
    [(NMSPersistentDictionary *)self _SQLITE_FORMAT:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 25)
  {
    [(NMSPersistentDictionary *)self _SQLITE_RANGE:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 26)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTADB:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 27)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTICE:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 28)
  {
    [(NMSPersistentDictionary *)self _SQLITE_WARNING:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 100)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ROW:errorCopy];
    goto LABEL_63;
  }

  if ([errorCopy code] == 101)
  {
    [(NMSPersistentDictionary *)self _SQLITE_DONE:errorCopy];
  }

  else
  {
LABEL_62:
    [(NMSPersistentDictionary *)self _GENERIC_ERROR:errorCopy];
  }

LABEL_63:
}

@end