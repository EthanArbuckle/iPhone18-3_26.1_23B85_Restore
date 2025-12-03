@interface NEKTinyStore
- (BOOL)compareAndSwapIntegerValue:(int64_t)value expectedExistingValue:(int64_t)existingValue forKey:(id)key;
- (NEKTinyStore)initWithDatabaseManager:(id)manager;
- (double)getDoubleValueForKey:(id)key default:(double)default;
- (id)_formattedDateForKey:(id)key;
- (id)_loadPlistFrom:(id)from;
- (id)asDictionary;
- (id)getDataValueForKey:(id)key;
- (id)getStringValueForKey:(id)key default:(id)default;
- (int64_t)getIntegerValueForKey:(id)key default:(int64_t)default;
- (void)_convertIfNeeded:(id)needed;
- (void)_migrateDoubleFrom:(id)from key:(id)key;
- (void)_migrateIntegerFrom:(id)from key:(id)key;
- (void)_migrateStringFrom:(id)from key:(id)key;
- (void)deleteValueForKey:(id)key;
- (void)setDataValue:(id)value forKey:(id)key;
- (void)setDoubleValue:(double)value forKey:(id)key;
- (void)setIntegerValue:(int64_t)value forKey:(id)key;
- (void)setStringValue:(id)value forKey:(id)key;
@end

@implementation NEKTinyStore

- (NEKTinyStore)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = NEKTinyStore;
  v5 = [(NEKTinyStore *)&v19 init];
  if (v5)
  {
    v6 = sub_100004B98("TinyStore");
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [managerCopy syncStateDBPathFor:@"tinyStore.sqlitedb"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [[NDTSQFile alloc] initWithPath:v5->_path];
    file = v5->_file;
    v5->_file = v10;

    v12 = [[NDTSQKeyValueStore alloc] initWithName:@"tinyStore"];
    store = v5->_store;
    v5->_store = v12;

    [(NDTSQFile *)v5->_file addSchema:v5->_store];
    [(NEKTinyStore *)v5 _convertIfNeeded:managerCopy];
    v14 = objc_alloc_init(NSISO8601DateFormatter);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v14;

    v16 = +[NSCalendar currentCalendar];
    timeZone = [v16 timeZone];
    [(NSISO8601DateFormatter *)v5->_dateFormatter setTimeZone:timeZone];
  }

  return v5;
}

- (void)_convertIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = +[NSFileManager defaultManager];
  v6 = [neededCopy syncStateDBPathFor:@"tinyStore.plist"];

  if ([v5 fileExistsAtPath:v6])
  {
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Converting old plist state", buf, 2u);
    }

    v8 = [(NEKTinyStore *)self _loadPlistFrom:v6];
    if (v8)
    {
      [(NEKTinyStore *)self _migrateIntegerFrom:v8 key:@"com.apple.eventkitsync.changeobserver.sequencenumber"];
      [(NEKTinyStore *)self _migrateIntegerFrom:v8 key:@"FaultCount"];
      [(NEKTinyStore *)self _migrateIntegerFrom:v8 key:@"RetryMustBeReset"];
      [(NEKTinyStore *)self _migrateIntegerFrom:v8 key:@"heardFromPhone"];
      [(NEKTinyStore *)self _migrateIntegerFrom:v8 key:@"MigrationSyncCount"];
      [(NEKTinyStore *)self _migrateStringFrom:v8 key:@"eventCalendarId"];
      [(NEKTinyStore *)self _migrateStringFrom:v8 key:@"taskCalendarId"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"windowEnd"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"windowStart"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"deltaSync.failureTimeout"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"deltaSync.mean"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"deltaSync.variance"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"resetSync.failureTimeout"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"resetSync.mean"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"resetSync.variance"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"nightlySync.failureTimeout"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"nightlySync.mean"];
      [(NEKTinyStore *)self _migrateDoubleFrom:v8 key:@"nightlySync.variance"];
      v9 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Done converting old plist state", v10, 2u);
      }
    }

    [v5 removeItemAtPath:v6 error:0];
  }
}

- (void)_migrateIntegerFrom:(id)from key:(id)key
{
  keyCopy = key;
  v6 = [from objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    -[NEKTinyStore setIntegerValue:forKey:](self, "setIntegerValue:forKey:", [v6 integerValue], keyCopy);
  }
}

- (void)_migrateStringFrom:(id)from key:(id)key
{
  keyCopy = key;
  v6 = [from objectForKeyedSubscript:?];
  if (v6)
  {
    [(NEKTinyStore *)self setStringValue:v6 forKey:keyCopy];
  }
}

- (void)_migrateDoubleFrom:(id)from key:(id)key
{
  keyCopy = key;
  v6 = [from objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    [(NEKTinyStore *)self setDoubleValue:keyCopy forKey:?];
  }
}

- (void)setStringValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011358;
  block[3] = &unk_1000B4D58;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_sync(queue, block);
}

- (id)getStringValueForKey:(id)key default:(id)default
{
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000114AC;
  v20 = sub_1000114BC;
  defaultCopy = default;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000114C4;
  v12[3] = &unk_1000B4D80;
  v12[4] = self;
  v13 = keyCopy;
  v14 = defaultCopy;
  v15 = &v16;
  v8 = defaultCopy;
  v9 = keyCopy;
  dispatch_sync(queue, v12);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)setIntegerValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000115C0;
  block[3] = &unk_1000B4DA8;
  v10 = keyCopy;
  valueCopy = value;
  block[4] = self;
  v8 = keyCopy;
  dispatch_sync(queue, block);
}

- (int64_t)getIntegerValueForKey:(id)key default:(int64_t)default
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  defaultCopy = default;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000116AC;
  v11[3] = &unk_1000B4DD0;
  v11[4] = self;
  v12 = keyCopy;
  v13 = &v15;
  defaultCopy2 = default;
  v8 = keyCopy;
  dispatch_sync(queue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (BOOL)compareAndSwapIntegerValue:(int64_t)value expectedExistingValue:(int64_t)existingValue forKey:(id)key
{
  keyCopy = key;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000117C8;
  block[3] = &unk_1000B4DF8;
  v14 = &v17;
  valueCopy = value;
  existingValueCopy = existingValue;
  block[4] = self;
  v13 = keyCopy;
  v10 = keyCopy;
  dispatch_sync(queue, block);
  LOBYTE(value) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return value;
}

- (void)setDoubleValue:(double)value forKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000118AC;
  block[3] = &unk_1000B4DA8;
  valueCopy = value;
  block[4] = self;
  v10 = keyCopy;
  v8 = keyCopy;
  dispatch_sync(queue, block);
}

- (double)getDoubleValueForKey:(id)key default:(double)default
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  defaultCopy = default;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011998;
  v11[3] = &unk_1000B4DD0;
  v12 = keyCopy;
  v13 = &v15;
  v11[4] = self;
  defaultCopy2 = default;
  v8 = keyCopy;
  dispatch_sync(queue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (id)getDataValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000114AC;
  v16 = sub_1000114BC;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011AE4;
  block[3] = &unk_1000B4E20;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setDataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011BFC;
  block[3] = &unk_1000B4D58;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_sync(queue, block);
}

- (void)deleteValueForKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011CA8;
  v7[3] = &unk_1000B4BB8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(queue, v7);
}

- (id)_loadPlistFrom:(id)from
{
  v3 = [NSData dataWithContentsOfFile:from];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v10 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v10];
    v6 = v10;
    if (v6 || !v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "propertyListWithData gave us nothing. Error: %{public}@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v8 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "dataWithContentsOfFile gave us nothing", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  if ([(NEKTinyStore *)self getIntegerValueForKey:@"RetryMustBeReset" default:0])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 setObject:v5 forKeyedSubscript:@"isReset"];
  v6 = [(NEKTinyStore *)self _formattedDateForKey:@"RetryDueDate"];
  [v4 setObject:v6 forKeyedSubscript:@"due"];

  v7 = [(NEKTinyStore *)self _formattedDateForKey:@"deferUntil"];
  [v4 setObject:v7 forKeyedSubscript:@"deferralCliff"];

  [v3 setObject:v4 forKeyedSubscript:@"Retry"];
  v8 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  v10 = [(NEKTinyStore *)self _formattedDateForKey:@"lastDeltaSyncReceived"];
  [v9 setObject:v10 forKeyedSubscript:@"Delta"];

  v11 = [(NEKTinyStore *)self _formattedDateForKey:@"lastResetSyncReceived"];
  [v9 setObject:v11 forKeyedSubscript:@"Reset"];

  v12 = [(NEKTinyStore *)self _formattedDateForKey:@"lastNightlySyncReceived"];
  [v9 setObject:v12 forKeyedSubscript:@"Nightly"];

  [v8 setObject:v9 forKeyedSubscript:@"Received"];
  v13 = +[NSMutableDictionary dictionary];
  v14 = [(NEKTinyStore *)self _formattedDateForKey:@"lastDeltaSyncSent"];
  [v13 setObject:v14 forKeyedSubscript:@"Delta"];

  v15 = [(NEKTinyStore *)self _formattedDateForKey:@"lastResetSyncSent"];
  [v13 setObject:v15 forKeyedSubscript:@"Reset"];

  v16 = [(NEKTinyStore *)self _formattedDateForKey:@"lastNightlySyncSent"];
  [v13 setObject:v16 forKeyedSubscript:@"Nightly"];

  [v8 setObject:v13 forKeyedSubscript:@"Sent"];
  [v3 setObject:v8 forKeyedSubscript:@"Successful Syncs"];
  v17 = +[NSMutableDictionary dictionary];
  v18 = [NSString stringWithFormat:@"%li", [(NEKTinyStore *)self getIntegerValueForKey:@"FaultCount" default:0]];
  [v17 setObject:v18 forKeyedSubscript:@"Fault"];

  v19 = [NSString stringWithFormat:@"%li", [(NEKTinyStore *)self getIntegerValueForKey:@"MigrationSyncCount" default:0]];
  [v17 setObject:v19 forKeyedSubscript:@"Migration"];

  [v3 setObject:v17 forKeyedSubscript:@"Misc"];
  v24[0] = @"Notification";
  v20 = [(NEKTinyStore *)self _formattedDateForKey:@"diagnosticNotificationRequested"];
  v24[1] = @"Reset Sync";
  v25[0] = v20;
  v21 = [(NEKTinyStore *)self _formattedDateForKey:@"resetSyncRequested"];
  v25[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 setObject:v22 forKeyedSubscript:@"Diagnostic Last Requested"];

  return v3;
}

- (id)_formattedDateForKey:(id)key
{
  [(NEKTinyStore *)self getDoubleValueForKey:key default:*&qword_1000D1130];
  if (v4 == *&qword_1000D1130)
  {
    v5 = @"NULL";
  }

  else
  {
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v5 = [(NSISO8601DateFormatter *)self->_dateFormatter stringFromDate:v6];
  }

  return v5;
}

@end