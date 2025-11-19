@interface NMSPersistentDictionary
- (NMSPersistentDictionary)initWithPath:(id)a3 objectClass:(Class)a4;
- (id)_dataFromObj:(id)a3;
- (id)_objectFromData:(id)a3;
- (id)objectForKey:(id)a3;
- (void)_GENERIC_ERROR:(id)a3;
- (void)_SQLITE_ABORT:(id)a3;
- (void)_SQLITE_AUTH:(id)a3;
- (void)_SQLITE_BUSY:(id)a3;
- (void)_SQLITE_CANTOPEN:(id)a3;
- (void)_SQLITE_CONSTRAINT:(id)a3;
- (void)_SQLITE_CORRUPT:(id)a3;
- (void)_SQLITE_DONE:(id)a3;
- (void)_SQLITE_EMPTY:(id)a3;
- (void)_SQLITE_ERROR:(id)a3;
- (void)_SQLITE_FORMAT:(id)a3;
- (void)_SQLITE_FULL:(id)a3;
- (void)_SQLITE_INTERNAL:(id)a3;
- (void)_SQLITE_INTERRUPT:(id)a3;
- (void)_SQLITE_IOERR:(id)a3;
- (void)_SQLITE_LOCKED:(id)a3;
- (void)_SQLITE_MISMATCH:(id)a3;
- (void)_SQLITE_MISUSE:(id)a3;
- (void)_SQLITE_NOLFS:(id)a3;
- (void)_SQLITE_NOMEM:(id)a3;
- (void)_SQLITE_NOTADB:(id)a3;
- (void)_SQLITE_NOTFOUND:(id)a3;
- (void)_SQLITE_NOTICE:(id)a3;
- (void)_SQLITE_PERM:(id)a3;
- (void)_SQLITE_PROTOCOL:(id)a3;
- (void)_SQLITE_RANGE:(id)a3;
- (void)_SQLITE_READONLY:(id)a3;
- (void)_SQLITE_ROW:(id)a3;
- (void)_SQLITE_SCHEMA:(id)a3;
- (void)_SQLITE_TOOBIG:(id)a3;
- (void)_SQLITE_WARNING:(id)a3;
- (void)_openDBForceRecreate:(BOOL)a3;
- (void)_raiseExceptionWithError:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsSortedByExpirationDate:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4 expires:(id)a5;
@end

@implementation NMSPersistentDictionary

- (NMSPersistentDictionary)initWithPath:(id)a3 objectClass:(Class)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NMSPersistentDictionary;
  v8 = [(NMSPersistentDictionary *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, a3);
    v9->_objectClass = a4;
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

- (void)_openDBForceRecreate:(BOOL)a3
{
  v5 = self->_path;
  v6 = +[NSFileManager defaultManager];
  v7 = [(NSString *)v5 stringByDeletingLastPathComponent];
  v8 = [v6 fileExistsAtPath:v5];
  if ((v8 & 1) == 0)
  {
    v49 = 0;
    v9 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v49];
    v10 = v49;
    if ((v9 & 1) == 0)
    {
      v11 = sub_10000268C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v53 = v7;
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
    v47 = a3;
    v14 = v6;
    v15 = v7;
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
      v7 = v15;
      if (v37)
      {
        sqlite3_close(v37);
      }

      self->_db = 0;
      v6 = v14;
      if (v47)
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
    v47 = a3;
    v14 = v6;
    v15 = v7;
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

- (void)setObject:(id)a3 forKey:(id)a4 expires:(id)a5
{
  insert = self->_insert;
  v9 = a5;
  v10 = a3;
  sub_10005B708(insert, a4);
  v11 = self->_insert;
  [v9 timeIntervalSinceReferenceDate];
  v13 = v12;

  sqlite3_bind_double(v11, 2, v13);
  v14 = [(NMSPersistentDictionary *)self _dataFromObj:v10];

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

- (id)_objectFromData:(id)a3
{
  if (a3)
  {
    objectClass = self->_objectClass;
    v9 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objectClass fromData:a3 error:&v9];
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

- (id)_dataFromObj:(id)a3
{
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
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

- (id)objectForKey:(id)a3
{
  sub_10005B708(self->_fetch, a3);
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

- (void)removeObjectForKey:(id)a3
{
  sub_10005B708(self->_remove, a3);
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

- (void)enumerateObjectsSortedByExpirationDate:(id)a3
{
  v4 = a3;
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
      v4[2](v4, v7, v10, v8, buf);
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

- (void)_SQLITE_ERROR:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_INTERNAL:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_PERM:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_ABORT:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_BUSY:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_LOCKED:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOMEM:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_READONLY:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_INTERRUPT:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_IOERR:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CORRUPT:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTFOUND:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_FULL:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CANTOPEN:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_PROTOCOL:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_EMPTY:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_SCHEMA:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_TOOBIG:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_CONSTRAINT:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_MISMATCH:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_MISUSE:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOLFS:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_AUTH:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_FORMAT:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_RANGE:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTADB:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_NOTICE:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_WARNING:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_ROW:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_SQLITE_DONE:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_GENERIC_ERROR:(id)a3
{
  v4 = [a3 localizedDescription];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  [v3 raise];
}

- (void)_raiseExceptionWithError:(id)a3
{
  v6 = a3;
  +[NPTOTransaction _deleteKeepAliveFile];
  v4 = [v6 domain];
  v5 = [v4 isEqualToString:@"SQLITE"];

  if (!v5)
  {
    goto LABEL_62;
  }

  if ([v6 code] == 1)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ERROR:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 2)
  {
    [(NMSPersistentDictionary *)self _SQLITE_INTERNAL:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 3)
  {
    [(NMSPersistentDictionary *)self _SQLITE_PERM:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 4)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ABORT:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 5)
  {
    [(NMSPersistentDictionary *)self _SQLITE_BUSY:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 6)
  {
    [(NMSPersistentDictionary *)self _SQLITE_LOCKED:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 7)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOMEM:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 8)
  {
    [(NMSPersistentDictionary *)self _SQLITE_READONLY:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 9)
  {
    [(NMSPersistentDictionary *)self _SQLITE_INTERRUPT:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 10)
  {
    [(NMSPersistentDictionary *)self _SQLITE_IOERR:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 11)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CORRUPT:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 12)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTFOUND:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 13)
  {
    [(NMSPersistentDictionary *)self _SQLITE_FULL:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 14)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CANTOPEN:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 15)
  {
    [(NMSPersistentDictionary *)self _SQLITE_PROTOCOL:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 16)
  {
    [(NMSPersistentDictionary *)self _SQLITE_EMPTY:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 17)
  {
    [(NMSPersistentDictionary *)self _SQLITE_SCHEMA:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 18)
  {
    [(NMSPersistentDictionary *)self _SQLITE_TOOBIG:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 19)
  {
    [(NMSPersistentDictionary *)self _SQLITE_CONSTRAINT:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 20)
  {
    [(NMSPersistentDictionary *)self _SQLITE_MISMATCH:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 21)
  {
    [(NMSPersistentDictionary *)self _SQLITE_MISUSE:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 22)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOLFS:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 23)
  {
    [(NMSPersistentDictionary *)self _SQLITE_AUTH:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 24)
  {
    [(NMSPersistentDictionary *)self _SQLITE_FORMAT:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 25)
  {
    [(NMSPersistentDictionary *)self _SQLITE_RANGE:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 26)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTADB:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 27)
  {
    [(NMSPersistentDictionary *)self _SQLITE_NOTICE:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 28)
  {
    [(NMSPersistentDictionary *)self _SQLITE_WARNING:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 100)
  {
    [(NMSPersistentDictionary *)self _SQLITE_ROW:v6];
    goto LABEL_63;
  }

  if ([v6 code] == 101)
  {
    [(NMSPersistentDictionary *)self _SQLITE_DONE:v6];
  }

  else
  {
LABEL_62:
    [(NMSPersistentDictionary *)self _GENERIC_ERROR:v6];
  }

LABEL_63:
}

@end