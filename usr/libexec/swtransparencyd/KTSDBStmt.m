@interface KTSDBStmt
- (BOOL)steps:(id)a3 error:(id *)a4;
- (KTSDBStmt)initWithStatement:(id)a3 db:(id)a4 error:(id *)a5;
- (double)doubleAtColumn:(unint64_t)a3;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtColumn:(unint64_t)a3;
- (id)columnNameAtColumn:(unint64_t)a3;
- (id)dateAtColumn:(unint64_t)a3;
- (id)objectAtColumn:(unint64_t)a3;
- (id)stepWithError:(id *)a3;
- (id)textAtColumn:(unint64_t)a3;
- (int)columnTypeAtColumn:(unint64_t)a3;
- (int)intAtColumn:(unint64_t)a3;
- (int64_t)int64AtColumn:(unint64_t)a3;
- (unint64_t)indexForColumnName:(id)a3;
- (void)bindData:(id)a3 column:(unint64_t)a4;
- (void)bindDate:(id)a3 column:(unint64_t)a4;
- (void)bindDouble:(double)a3 column:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 column:(unint64_t)a4;
- (void)bindInt:(int)a3 column:(unint64_t)a4;
- (void)bindNullAtColumn:(unint64_t)a3;
- (void)bindString:(id)a3 column:(unint64_t)a4;
- (void)clearBindings;
- (void)dealloc;
- (void)enumerateColumnsUsingBlock:(id)a3;
- (void)reset;
@end

@implementation KTSDBStmt

- (KTSDBStmt)initWithStatement:(id)a3 db:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = KTSDBStmt;
  v10 = [(KTSDBStmt *)&v18 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    [(KTSDBStmt *)v10 setDb:v9];
    v12 = sqlite3_prepare_v3([v9 db], objc_msgSend(v8, "UTF8String"), -1, 0, p_isa + 3, 0);
    if (!v12)
    {
      v16 = p_isa;
      goto LABEL_10;
    }

    v13 = [p_isa generateError:v12 method:@"init"];
    v14 = [v9 log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KTSDBStmt prepare: %@", buf, 0xCu);
    }

    if (a5)
    {
      v15 = v13;
      *a5 = v13;
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (void)dealloc
{
  if ([(KTSDBStmt *)self needReset])
  {
    sqlite3_reset([(KTSDBStmt *)self stmt]);
  }

  sqlite3_finalize([(KTSDBStmt *)self stmt]);
  v3.receiver = self;
  v3.super_class = KTSDBStmt;
  [(KTSDBStmt *)&v3 dealloc];
}

- (void)bindString:(id)a3 column:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = sqlite3_bind_text(-[KTSDBStmt stmt](self, "stmt"), a4 + 1, [v6 UTF8String], -1, 0);
    if (v7)
    {
      v8 = v7;
      v9 = [(KTSDBStmt *)self db];
      v10 = [v9 log];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sqlite3_bind_text: %d", v11, 8u);
      }
    }
  }

  else
  {
    [(KTSDBStmt *)self bindNullAtColumn:a4];
  }
}

- (void)bindInt:(int)a3 column:(unint64_t)a4
{
  v5 = sqlite3_bind_int([(KTSDBStmt *)self stmt], a4 + 1, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [(KTSDBStmt *)self db];
    v8 = [v7 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sqlite3_bind_int: %d", v9, 8u);
    }
  }
}

- (void)bindInt64:(int64_t)a3 column:(unint64_t)a4
{
  v5 = sqlite3_bind_int64([(KTSDBStmt *)self stmt], a4 + 1, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [(KTSDBStmt *)self db];
    v8 = [v7 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sqlite3_bind_int64: %d", v9, 8u);
    }
  }
}

- (void)bindDouble:(double)a3 column:(unint64_t)a4
{
  v5 = sqlite3_bind_double([(KTSDBStmt *)self stmt], a4 + 1, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [(KTSDBStmt *)self db];
    v8 = [v7 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sqlite3_bind_double: %d", v9, 8u);
    }
  }
}

- (void)bindDate:(id)a3 column:(unint64_t)a4
{
  [a3 timeIntervalSinceReferenceDate];

  [(KTSDBStmt *)self bindDouble:a4 column:?];
}

- (void)bindData:(id)a3 column:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = sqlite3_bind_blob(-[KTSDBStmt stmt](self, "stmt"), a4 + 1, [v6 bytes], objc_msgSend(v6, "length"), 0);
    if (v7)
    {
      v8 = v7;
      v9 = [(KTSDBStmt *)self db];
      v10 = [v9 log];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sqlite3_bind_blob: %d", v11, 8u);
      }
    }
  }

  else
  {
    [(KTSDBStmt *)self bindNullAtColumn:a4];
  }
}

- (void)bindNullAtColumn:(unint64_t)a3
{
  v3 = a3;
  v4 = [(KTSDBStmt *)self stmt];

  sqlite3_bind_null(v4, v3 + 1);
}

- (BOOL)steps:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(KTSDBStmt *)self setNeedReset:1];
  while (1)
  {
    v7 = sqlite3_step([(KTSDBStmt *)self stmt]);
    if (v7 != 100)
    {
      break;
    }

    if ((v6[2](v6, self) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v7 == 101)
  {
    [(KTSDBStmt *)self setNeedReset:0];
    sqlite3_reset([(KTSDBStmt *)self stmt]);
LABEL_7:
    v8 = 1;
    goto LABEL_13;
  }

  v9 = [(KTSDBStmt *)self generateError:v7 method:@"steps"];
  v10 = [(KTSDBStmt *)self db];
  v11 = [v10 log];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "steps: %@", &v14, 0xCu);
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  [(KTSDBStmt *)self setNeedReset:0];
  sqlite3_reset([(KTSDBStmt *)self stmt]);
  sqlite3_clear_bindings([(KTSDBStmt *)self stmt]);

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)stepWithError:(id *)a3
{
  v5 = sqlite3_step([(KTSDBStmt *)self stmt]);
  if (v5 == 101)
  {
    [(KTSDBStmt *)self setNeedReset:0];
    sqlite3_reset([(KTSDBStmt *)self stmt]);
    v7 = [(KTSDBStmt *)self generateDone];
    if (a3)
    {
      v7 = v7;
      *a3 = v7;
    }
  }

  else
  {
    if (v5 == 100)
    {
      [(KTSDBStmt *)self setNeedReset:1];
      v6 = self;
      goto LABEL_13;
    }

    v8 = v5;
    v9 = [(KTSDBStmt *)self generateError:v5 method:@"step"];
    v10 = [(KTSDBStmt *)self db];
    v11 = [v10 log];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109378;
      v14[1] = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "stepWithError %d error: %@", v14, 0x12u);
    }

    if (a3)
    {
      v12 = v9;
      *a3 = v9;
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)reset
{
  if ([(KTSDBStmt *)self needReset])
  {
    [(KTSDBStmt *)self setNeedReset:0];
    v3 = [(KTSDBStmt *)self stmt];

    sqlite3_reset(v3);
  }
}

- (void)clearBindings
{
  [(KTSDBStmt *)self reset];
  v3 = [(KTSDBStmt *)self stmt];

  sqlite3_clear_bindings(v3);
}

- (int)columnTypeAtColumn:(unint64_t)a3
{
  v3 = a3;
  v4 = [(KTSDBStmt *)self stmt];

  return sqlite3_column_type(v4, v3);
}

- (id)columnNameAtColumn:(unint64_t)a3
{
  v3 = sqlite3_column_name([(KTSDBStmt *)self stmt], a3);

  return [NSString stringWithUTF8String:v3];
}

- (unint64_t)indexForColumnName:(id)a3
{
  v4 = a3;
  indexesByColumnName = self->_indexesByColumnName;
  if (!indexesByColumnName)
  {
    [(KTSDBStmt *)self enumerateColumnsUsingBlock:0];
    indexesByColumnName = self->_indexesByColumnName;
  }

  v6 = [(NSDictionary *)indexesByColumnName objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (int)intAtColumn:(unint64_t)a3
{
  v3 = a3;
  v4 = [(KTSDBStmt *)self stmt];

  return sqlite3_column_int(v4, v3);
}

- (int64_t)int64AtColumn:(unint64_t)a3
{
  v3 = a3;
  v4 = [(KTSDBStmt *)self stmt];

  return sqlite3_column_int64(v4, v3);
}

- (double)doubleAtColumn:(unint64_t)a3
{
  v3 = a3;
  v4 = [(KTSDBStmt *)self stmt];

  return sqlite3_column_double(v4, v3);
}

- (id)blobAtColumn:(unint64_t)a3
{
  v3 = a3;
  v5 = sqlite3_column_blob([(KTSDBStmt *)self stmt], a3);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_column_bytes([(KTSDBStmt *)self stmt], v3);
    if ((v7 & 0x80000000) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [NSData dataWithBytes:v6 length:v7];
    }
  }

  return v5;
}

- (id)dateAtColumn:(unint64_t)a3
{
  [(KTSDBStmt *)self doubleAtColumn:a3];

  return [NSDate dateWithTimeIntervalSinceReferenceDate:?];
}

- (id)textAtColumn:(unint64_t)a3
{
  v3 = sqlite3_column_text([(KTSDBStmt *)self stmt], a3);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtColumn:(unint64_t)a3
{
  v5 = [(KTSDBStmt *)self columnTypeAtColumn:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [NSNumber numberWithLongLong:[(KTSDBStmt *)self int64AtColumn:a3]];
      goto LABEL_16;
    }

    if (v5 == 2)
    {
      [(KTSDBStmt *)self doubleAtColumn:a3];
      v7 = [NSNumber numberWithDouble:?];
      goto LABEL_16;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v7 = [(KTSDBStmt *)self textAtColumn:a3];
        goto LABEL_16;
      case 4:
        v7 = [(KTSDBStmt *)self blobAtColumn:a3];
        goto LABEL_16;
      case 5:
        goto LABEL_15;
    }
  }

  v8 = [(KTSDBStmt *)self db];
  v9 = [v8 log];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unexpected column type: %d", v11, 8u);
  }

LABEL_15:
  v7 = 0;
LABEL_16:

  return v7;
}

- (id)allObjects
{
  [NSMutableArray arrayWithCapacity:[(KTSDBStmt *)self columnCount]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AA38;
  v3 = v6[3] = &unk_1001331F0;
  v7 = v3;
  v8 = self;
  [(KTSDBStmt *)self enumerateColumnsUsingBlock:v6];
  v4 = v3;

  return v3;
}

- (id)allObjectsByColumnName
{
  [NSMutableDictionary dictionaryWithCapacity:[(KTSDBStmt *)self columnCount]];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AB90;
  v7[3] = &unk_1001331F0;
  v3 = v7[4] = self;
  v8 = v3;
  [(KTSDBStmt *)self enumerateColumnsUsingBlock:v7];
  v4 = v8;
  v5 = v3;

  return v3;
}

- (void)enumerateColumnsUsingBlock:(id)a3
{
  v12 = a3;
  v4 = [(KTSDBStmt *)self columnCount];
  v5 = v4;
  if (self->_indexesByColumnName)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:v4];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  do
  {
    v8 = [(KTSDBStmt *)self columnNameAtColumn:v7];
    if (v6)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v7];
      [v6 setObject:v9 forKeyedSubscript:v8];
    }

    if (v12)
    {
      v12[2]();
    }

    ++v7;
  }

  while (v5 != v7);
LABEL_11:
  if (v6)
  {
    v10 = [v6 copy];
    indexesByColumnName = self->_indexesByColumnName;
    self->_indexesByColumnName = v10;
  }
}

@end