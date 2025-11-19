@interface _DASSharedMemoryBudgetPersistence
+ (id)log;
+ (id)persistence;
+ (void)initialize;
- (_DASSharedMemoryBudgetPersistence)init;
- (id)lastModulationDate;
- (id)loadBudgetsWithExpectedNames:(id)a3;
- (id)validatedStringFromStoredValue:(char *)a3 withAllowedNames:(id)a4;
- (void)saveBudgets:(id)a3;
- (void)saveModulationDate:(id)a3;
- (void)updateBudget:(id)a3;
@end

@implementation _DASSharedMemoryBudgetPersistence

+ (id)log
{
  if (qword_10020AE98 != -1)
  {
    sub_10011CE68();
  }

  v3 = qword_10020AEA0;

  return v3;
}

+ (void)initialize
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v2 = +[_DASSharedMemoryBudgetPersistence log];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.dasd.shmemQueue", v3);
  v5 = qword_10020AE90;
  qword_10020AE90 = v4;

  v6 = qword_10020AE90;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023154;
  v8[3] = &unk_1001B5A68;
  v9 = v2;
  v10 = v11;
  v7 = v2;
  dispatch_sync(v6, v8);

  _Block_object_dispose(v11, 8);
}

- (_DASSharedMemoryBudgetPersistence)init
{
  v9.receiver = self;
  v9.super_class = _DASSharedMemoryBudgetPersistence;
  v2 = [(_DASSharedMemoryBudgetPersistence *)&v9 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  if (qword_10020AEA8)
  {
    v3 = +[NSMutableDictionary dictionary];
    budgetToIndex = v2->_budgetToIndex;
    v2->_budgetToIndex = v3;

LABEL_4:
    v5 = v2;
    goto LABEL_8;
  }

  v6 = +[_DASSharedMemoryBudgetPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to obtain Shared Memory! Return nil as we won't be able to persist anything.", v8, 2u);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)persistence
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000234A8;
  v9 = sub_1000234B8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000234C0;
  v4[3] = &unk_1001B5A90;
  v4[4] = &v5;
  v4[5] = a1;
  if (qword_10020AEB0 != -1)
  {
    dispatch_once(&qword_10020AEB0, v4);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)updateBudget:(id)a3
{
  v4 = a3;
  v5 = +[_DASSharedMemoryBudgetPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating budget: %@", buf, 0xCu);
  }

  v6 = qword_10020AE90;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023634;
  v8[3] = &unk_1001B56E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)saveBudgets:(id)a3
{
  v4 = a3;
  v5 = qword_10020AE90;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000237F4;
  v7[3] = &unk_1001B56E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)validatedStringFromStoredValue:(char *)a3 withAllowedNames:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = v10;
        if (!strncmp(a3, [v11 UTF8String], objc_msgSend(v10, "length") + 1))
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)loadBudgetsWithExpectedNames:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000234A8;
  v16 = sub_1000234B8;
  v17 = &__NSArray0__struct;
  v5 = qword_10020AE90;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023D98;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)saveModulationDate:(id)a3
{
  v3 = a3;
  v4 = qword_10020AE90;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024174;
  block[3] = &unk_1001B5668;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

- (id)lastModulationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000243E0;
  block[3] = &unk_1001B5798;
  block[4] = &v6;
  dispatch_sync(qword_10020AE90, block);
  v2 = 0;
  if (v7[3] >= 0.0001)
  {
    v2 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v3 = +[_DASSharedMemoryBudgetPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loaded modulation date: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v6, 8);

  return v2;
}

@end