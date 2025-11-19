@interface KTSDBObjc
- (BOOL)executeSQL:(id)a3 arguments:(char *)a4;
- (id)initDatabaseWithURL:(id)a3;
- (id)prepareStatement:(id)a3 error:(id *)a4;
- (int)autoVacuumSetting;
- (void)close;
- (void)dealloc;
@end

@implementation KTSDBObjc

- (id)initDatabaseWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KTSDBObjc;
  v5 = [(KTSDBObjc *)&v11 init];
  if (v5 && ((v6 = [v4 fileSystemRepresentation]) != 0 ? (v7 = 6) : (v7 = 134), !sqlite3_open_v2(v6, &v5->_db, v7, 0) && (v8 = os_log_create("KTSDBObjc", "db"), -[KTSDBObjc setLog:](v5, "setLog:", v8), v8, -[KTSDBObjc executeSQL:](v5, "executeSQL:", @"pragma journal_mode = WAL")) && (-[KTSDBObjc autoVacuumSetting](v5, "autoVacuumSetting") == 2 || -[KTSDBObjc executeSQL:](v5, "executeSQL:", @"pragma auto_vacuum = incremental") && -[KTSDBObjc executeSQL:](v5, "executeSQL:", @"VACUUM"))))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)executeSQL:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  if ([(KTSDBObjc *)self db])
  {
    v8 = sqlite3_exec(-[KTSDBObjc db](self, "db"), [v7 UTF8String], 0, 0, 0);
    if (!v8)
    {
      v11 = 1;
      goto LABEL_8;
    }

    v9 = v8;
    v10 = [(KTSDBObjc *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = sqlite3_errmsg([(KTSDBObjc *)self db]);
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sqlite3_exec: %s[%d]", &v13, 0x12u);
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (int)autoVacuumSetting
{
  ppStmt = 0;
  v3 = sqlite3_prepare_v2([(KTSDBObjc *)self db], "PRAGMA auto_vacuum", -1, &ppStmt, 0);
  if (!v3)
  {
    v8 = sqlite3_step(ppStmt);
    if (v8 != 101)
    {
      v9 = v8;
      if (v8 == 100)
      {
        v7 = sqlite3_column_int(ppStmt, 0);
LABEL_12:
        sqlite3_finalize(ppStmt);
        return v7;
      }

      v10 = [(KTSDBObjc *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sqlite3_errmsg([(KTSDBObjc *)self db]);
        *buf = 136315394;
        v15 = v11;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sqlite3_step: %s[%d]", buf, 0x12u);
      }
    }

    v7 = -1;
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [(KTSDBObjc *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sqlite3_errmsg([(KTSDBObjc *)self db]);
    *buf = 136315394;
    v15 = v6;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sqlite3_prepare_v2: %s[%d]", buf, 0x12u);
  }

  return -1;
}

- (void)close
{
  if ([(KTSDBObjc *)self db])
  {
    sqlite3_close([(KTSDBObjc *)self db]);
  }

  [(KTSDBObjc *)self setDb:0];
}

- (void)dealloc
{
  if ([(KTSDBObjc *)self db])
  {
    sqlite3_close([(KTSDBObjc *)self db]);
  }

  v3.receiver = self;
  v3.super_class = KTSDBObjc;
  [(KTSDBObjc *)&v3 dealloc];
}

- (id)prepareStatement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[KTSDBStmt alloc] initWithStatement:v6 db:self error:a4];

  return v7;
}

@end