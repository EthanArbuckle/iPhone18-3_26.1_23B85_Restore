@interface KTSDBStmt
- (BOOL)steps:(id)steps error:(id *)error;
- (KTSDBStmt)initWithStatement:(id)statement db:(id)db error:(id *)error;
- (double)doubleAtColumn:(unint64_t)column;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtColumn:(unint64_t)column;
- (id)columnNameAtColumn:(unint64_t)column;
- (id)dateAtColumn:(unint64_t)column;
- (id)objectAtColumn:(unint64_t)column;
- (id)stepWithError:(id *)error;
- (id)textAtColumn:(unint64_t)column;
- (int)columnTypeAtColumn:(unint64_t)column;
- (int)intAtColumn:(unint64_t)column;
- (int64_t)int64AtColumn:(unint64_t)column;
- (unint64_t)indexForColumnName:(id)name;
- (void)bindData:(id)data column:(unint64_t)column;
- (void)bindDate:(id)date column:(unint64_t)column;
- (void)bindDouble:(double)double column:(unint64_t)column;
- (void)bindInt64:(int64_t)int64 column:(unint64_t)column;
- (void)bindInt:(int)int column:(unint64_t)column;
- (void)bindNullAtColumn:(unint64_t)column;
- (void)bindString:(id)string column:(unint64_t)column;
- (void)clearBindings;
- (void)dealloc;
- (void)enumerateColumnsUsingBlock:(id)block;
- (void)reset;
@end

@implementation KTSDBStmt

- (KTSDBStmt)initWithStatement:(id)statement db:(id)db error:(id *)error
{
  statementCopy = statement;
  dbCopy = db;
  v18.receiver = self;
  v18.super_class = KTSDBStmt;
  v10 = [(KTSDBStmt *)&v18 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    [(KTSDBStmt *)v10 setDb:dbCopy];
    v12 = sqlite3_prepare_v3([dbCopy db], objc_msgSend(statementCopy, "UTF8String"), -1, 0, p_isa + 3, 0);
    if (!v12)
    {
      v16 = p_isa;
      goto LABEL_10;
    }

    v13 = [p_isa generateError:v12 method:@"init"];
    v14 = [dbCopy log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KTSDBStmt prepare: %@", buf, 0xCu);
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
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

- (void)bindString:(id)string column:(unint64_t)column
{
  stringCopy = string;
  if (stringCopy)
  {
    v7 = sqlite3_bind_text(-[KTSDBStmt stmt](self, "stmt"), column + 1, [stringCopy UTF8String], -1, 0);
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
    [(KTSDBStmt *)self bindNullAtColumn:column];
  }
}

- (void)bindInt:(int)int column:(unint64_t)column
{
  v5 = sqlite3_bind_int([(KTSDBStmt *)self stmt], column + 1, int);
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

- (void)bindInt64:(int64_t)int64 column:(unint64_t)column
{
  v5 = sqlite3_bind_int64([(KTSDBStmt *)self stmt], column + 1, int64);
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

- (void)bindDouble:(double)double column:(unint64_t)column
{
  v5 = sqlite3_bind_double([(KTSDBStmt *)self stmt], column + 1, double);
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

- (void)bindDate:(id)date column:(unint64_t)column
{
  [date timeIntervalSinceReferenceDate];

  [(KTSDBStmt *)self bindDouble:column column:?];
}

- (void)bindData:(id)data column:(unint64_t)column
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = sqlite3_bind_blob(-[KTSDBStmt stmt](self, "stmt"), column + 1, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0);
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
    [(KTSDBStmt *)self bindNullAtColumn:column];
  }
}

- (void)bindNullAtColumn:(unint64_t)column
{
  columnCopy = column;
  stmt = [(KTSDBStmt *)self stmt];

  sqlite3_bind_null(stmt, columnCopy + 1);
}

- (BOOL)steps:(id)steps error:(id *)error
{
  stepsCopy = steps;
  [(KTSDBStmt *)self setNeedReset:1];
  while (1)
  {
    v7 = sqlite3_step([(KTSDBStmt *)self stmt]);
    if (v7 != 100)
    {
      break;
    }

    if ((stepsCopy[2](stepsCopy, self) & 1) == 0)
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

  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  [(KTSDBStmt *)self setNeedReset:0];
  sqlite3_reset([(KTSDBStmt *)self stmt]);
  sqlite3_clear_bindings([(KTSDBStmt *)self stmt]);

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)stepWithError:(id *)error
{
  v5 = sqlite3_step([(KTSDBStmt *)self stmt]);
  if (v5 == 101)
  {
    [(KTSDBStmt *)self setNeedReset:0];
    sqlite3_reset([(KTSDBStmt *)self stmt]);
    generateDone = [(KTSDBStmt *)self generateDone];
    if (error)
    {
      generateDone = generateDone;
      *error = generateDone;
    }
  }

  else
  {
    if (v5 == 100)
    {
      [(KTSDBStmt *)self setNeedReset:1];
      selfCopy = self;
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

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (void)reset
{
  if ([(KTSDBStmt *)self needReset])
  {
    [(KTSDBStmt *)self setNeedReset:0];
    stmt = [(KTSDBStmt *)self stmt];

    sqlite3_reset(stmt);
  }
}

- (void)clearBindings
{
  [(KTSDBStmt *)self reset];
  stmt = [(KTSDBStmt *)self stmt];

  sqlite3_clear_bindings(stmt);
}

- (int)columnTypeAtColumn:(unint64_t)column
{
  columnCopy = column;
  stmt = [(KTSDBStmt *)self stmt];

  return sqlite3_column_type(stmt, columnCopy);
}

- (id)columnNameAtColumn:(unint64_t)column
{
  v3 = sqlite3_column_name([(KTSDBStmt *)self stmt], column);

  return [NSString stringWithUTF8String:v3];
}

- (unint64_t)indexForColumnName:(id)name
{
  nameCopy = name;
  indexesByColumnName = self->_indexesByColumnName;
  if (!indexesByColumnName)
  {
    [(KTSDBStmt *)self enumerateColumnsUsingBlock:0];
    indexesByColumnName = self->_indexesByColumnName;
  }

  v6 = [(NSDictionary *)indexesByColumnName objectForKeyedSubscript:nameCopy];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (int)intAtColumn:(unint64_t)column
{
  columnCopy = column;
  stmt = [(KTSDBStmt *)self stmt];

  return sqlite3_column_int(stmt, columnCopy);
}

- (int64_t)int64AtColumn:(unint64_t)column
{
  columnCopy = column;
  stmt = [(KTSDBStmt *)self stmt];

  return sqlite3_column_int64(stmt, columnCopy);
}

- (double)doubleAtColumn:(unint64_t)column
{
  columnCopy = column;
  stmt = [(KTSDBStmt *)self stmt];

  return sqlite3_column_double(stmt, columnCopy);
}

- (id)blobAtColumn:(unint64_t)column
{
  columnCopy = column;
  v5 = sqlite3_column_blob([(KTSDBStmt *)self stmt], column);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_column_bytes([(KTSDBStmt *)self stmt], columnCopy);
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

- (id)dateAtColumn:(unint64_t)column
{
  [(KTSDBStmt *)self doubleAtColumn:column];

  return [NSDate dateWithTimeIntervalSinceReferenceDate:?];
}

- (id)textAtColumn:(unint64_t)column
{
  v3 = sqlite3_column_text([(KTSDBStmt *)self stmt], column);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtColumn:(unint64_t)column
{
  v5 = [(KTSDBStmt *)self columnTypeAtColumn:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [NSNumber numberWithLongLong:[(KTSDBStmt *)self int64AtColumn:column]];
      goto LABEL_16;
    }

    if (v5 == 2)
    {
      [(KTSDBStmt *)self doubleAtColumn:column];
      v7 = [NSNumber numberWithDouble:?];
      goto LABEL_16;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v7 = [(KTSDBStmt *)self textAtColumn:column];
        goto LABEL_16;
      case 4:
        v7 = [(KTSDBStmt *)self blobAtColumn:column];
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
  selfCopy = self;
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

- (void)enumerateColumnsUsingBlock:(id)block
{
  blockCopy = block;
  columnCount = [(KTSDBStmt *)self columnCount];
  v5 = columnCount;
  if (self->_indexesByColumnName)
  {
    v6 = 0;
    if (!columnCount)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:columnCount];
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

    if (blockCopy)
    {
      blockCopy[2]();
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