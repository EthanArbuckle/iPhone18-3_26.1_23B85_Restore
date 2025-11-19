@interface NDTSQKeyValueStore
- (BOOL)compareAndSwapIntegerValue:(int64_t)a3 expectedExistingValue:(int64_t)a4 forKey:(id)a5;
- (NDTSQKeyValueStore)initWithName:(id)a3;
- (double)getDoubleForKey:(id)a3 default:(double)a4;
- (id)getDataForKey:(id)a3 default:(id)a4;
- (id)getStringForKey:(id)a3 default:(id)a4;
- (int64_t)getIntegerForKey:(id)a3 default:(int64_t)a4;
- (void)createTables;
- (void)deleteValueForKey:(id)a3;
- (void)setData:(id)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setString:(id)a3 forKey:(id)a4;
@end

@implementation NDTSQKeyValueStore

- (NDTSQKeyValueStore)initWithName:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = NDTSQKeyValueStore;
  v6 = [(NDTSQKeyValueStore *)&v16 init];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"select value from %@ where key = ?", v5];
    select = v6->_select;
    v6->_select = v7;

    v9 = [NSString stringWithFormat:@"update %@ set value = ? where value = ? and key = ?", v5];
    exchange = v6->_exchange;
    v6->_exchange = v9;

    v11 = [NSString stringWithFormat:@"insert or replace into %@ (key, value) values (?, ?)", v5];
    insert = v6->_insert;
    v6->_insert = v11;

    v13 = [NSString stringWithFormat:@"delete from %@ where key = ?", v5];
    delete = v6->_delete;
    v6->_delete = v13;

    objc_storeStrong(&v6->_baseName, a3);
  }

  return v6;
}

- (void)createTables
{
  v3 = [NSString stringWithFormat:@"create table if not exists %@ (key text unique, value text)", self->_baseName];
  [(NDTSQSchema *)self executeSql:v3];
}

- (int64_t)getIntegerForKey:(id)a3 default:(int64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = a4;
  select = self->_select;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100014B80;
  v11[3] = &unk_1000B4EE0;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [(NDTSQSchema *)self parseSql:select andRun:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  insert = self->_insert;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014C8C;
  v9[3] = &unk_1000B4F08;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(NDTSQSchema *)self parseSql:insert andRun:v9];
}

- (BOOL)compareAndSwapIntegerValue:(int64_t)a3 expectedExistingValue:(int64_t)a4 forKey:(id)a5
{
  v8 = a5;
  exchange = self->_exchange;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014DB4;
  v12[3] = &unk_1000B4F30;
  v14 = a3;
  v15 = a4;
  v13 = v8;
  v10 = v8;
  [(NDTSQSchema *)self parseSql:exchange andRun:v12];
  LOBYTE(a3) = [(NDTSQSchema *)self changes]== 1;

  return a3;
}

- (double)getDoubleForKey:(id)a3 default:(double)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = a4;
  select = self->_select;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100014F18;
  v11[3] = &unk_1000B4EE0;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [(NDTSQSchema *)self parseSql:select andRun:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  insert = self->_insert;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015030;
  v9[3] = &unk_1000B4F08;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(NDTSQSchema *)self parseSql:insert andRun:v9];
}

- (id)getStringForKey:(id)a3 default:(id)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000151E8;
  v19 = sub_1000151F8;
  v7 = a4;
  v20 = v7;
  select = self->_select;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100015200;
  v12[3] = &unk_1000B4EE0;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [(NDTSQSchema *)self parseSql:select andRun:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  insert = self->_insert;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015338;
  v11[3] = &unk_1000B4F58;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(NDTSQSchema *)self parseSql:insert andRun:v11];
}

- (id)getDataForKey:(id)a3 default:(id)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000151E8;
  v19 = sub_1000151F8;
  v7 = a4;
  v20 = v7;
  select = self->_select;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000154F0;
  v12[3] = &unk_1000B4EE0;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [(NDTSQSchema *)self parseSql:select andRun:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  insert = self->_insert;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015628;
  v11[3] = &unk_1000B4F58;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(NDTSQSchema *)self parseSql:insert andRun:v11];
}

- (void)deleteValueForKey:(id)a3
{
  v4 = a3;
  delete = self->_delete;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015730;
  v7[3] = &unk_1000B4F80;
  v8 = v4;
  v6 = v4;
  [(NDTSQSchema *)self parseSql:delete andRun:v7];
}

@end