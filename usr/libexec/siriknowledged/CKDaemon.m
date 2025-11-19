@interface CKDaemon
+ (id)sharedDaemon;
- (CKDaemon)init;
- (void)decreaseWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7;
- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)a3;
- (void)dropLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7;
- (void)dropLinksBetweenSubject:(id)a3 andObject:(id)a4 inStoreWithIdentifier:(id)a5 completionHandler:(id)a6;
- (void)dropLinksWithLabel:(id)a3 fromSubject:(id)a4 inStoreWithIdentifier:(id)a5 completionHandler:(id)a6;
- (void)increaseWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7;
- (void)keysAndValuesForKeysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)keysAndValuesInStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)keysInStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)keysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)recordEventWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 metadata:(id)a6 toStoreWithIdentifier:(id)a7 completionHandler:(id)a8;
- (void)removeAllValuesFromStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllValuesFromSynchedStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeValueForKey:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeValueForKey:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeValuesForKeys:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeValuesForKeys:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeValuesMatchingCondition:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeValuesMatchingCondition:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)saveKeysAndValues:(id)a3 toStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)saveKeysAndValues:(id)a3 toSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 toValue:(int64_t)a6 inStoreWithIdentifier:(id)a7 completionHandler:(id)a8;
- (void)triplesComponentsMatching:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)valueForKey:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)valuesForKeys:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)valuesForKeysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)valuesInStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation CKDaemon

- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[CKNCloudKitManager sharedManager];
  [v4 disableSyncAndDeleteCloudDataWithCompletionHandler:v3];
}

- (void)dropLinksBetweenSubject:(id)a3 andObject:(id)a4 inStoreWithIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A344;
  block[3] = &unk_100018CF8;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(serialQueue, block);
}

- (void)dropLinksWithLabel:(id)a3 fromSubject:(id)a4 inStoreWithIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A7FC;
  block[3] = &unk_100018CF8;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(serialQueue, block);
}

- (void)dropLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000A9CC;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = v15;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  dispatch_async(serialQueue, v23);
}

- (void)decreaseWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000ABA0;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = v15;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  dispatch_async(serialQueue, v23);
}

- (void)increaseWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 inStoreWithIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AE44;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = v15;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  dispatch_async(serialQueue, v23);
}

- (void)setWeightForLinkWithLabel:(id)a3 betweenSubject:(id)a4 andObject:(id)a5 toValue:(int64_t)a6 inStoreWithIdentifier:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B0F0;
  block[3] = &unk_100018CA8;
  block[4] = self;
  v26 = v17;
  v27 = v14;
  v28 = v15;
  v30 = v18;
  v31 = a6;
  v29 = v16;
  v20 = v18;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v17;
  dispatch_async(serialQueue, block);
}

- (void)removeAllValuesFromSynchedStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[CKDaemon removeAllValuesFromSynchedStoreWithIdentifier:completionHandler:]";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Removing ALL values in synched store %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B2EC;
  v11[3] = &unk_100018C80;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(CKDaemon *)self keysInStoreWithIdentifier:v9 completionHandler:v11];
}

- (void)removeAllValuesFromStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B584;
  block[3] = &unk_100018B18;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)removeValuesMatchingCondition:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    v16 = [v8 description];
    *buf = 136315650;
    v22 = "[CKDaemon removeValuesMatchingCondition:fromSynchedStoreWithIdentifier:completionHandler:]";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Removing values matching condition %@ in synched store %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B8D0;
  v17[3] = &unk_100018C08;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(CKDaemon *)self keysInStoreWithIdentifier:v12 completionHandler:v17];
}

- (void)removeValuesMatchingCondition:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BEB4;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)removeValuesForKeys:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "[CKDaemon removeValuesForKeys:fromSynchedStoreWithIdentifier:completionHandler:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Removing values for keys %@ in synched store %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C230;
  v15[3] = &unk_100018B90;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(CKDaemon *)self removeValuesForKeys:v14 fromStoreWithIdentifier:v13 completionHandler:v15];
}

- (void)removeValuesForKeys:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C42C;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)removeValueForKey:(id)a3 fromSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "[CKDaemon removeValueForKey:fromSynchedStoreWithIdentifier:completionHandler:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Removing value for key %@ in synched store %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C75C;
  v15[3] = &unk_100018B90;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(CKDaemon *)self removeValueForKey:v14 fromStoreWithIdentifier:v13 completionHandler:v15];
}

- (void)removeValueForKey:(id)a3 fromStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C984;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)recordEventWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 metadata:(id)a6 toStoreWithIdentifier:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v15 compare:v16] == 1)
  {
    v20 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[CKDaemon recordEventWithIdentifier:startDate:endDate:metadata:toStoreWithIdentifier:completionHandler:]";
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s event startDate should NOT be greater than endDate. (startDate = %@, endDate = %@).", buf, 0x20u);
    }

    v31[0] = @"localizedDescription";
    v31[1] = @"storeIdentifier";
    v32[0] = @"Event startDate is greater than endDate";
    v32[1] = v14;
    v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v22 = [NSError errorWithDomain:@"com.apple.siriknowledged" code:101 userInfo:v21];

    v19[2](v19, v22);
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000CDE0;
    v23[3] = &unk_100018BB8;
    v24 = v14;
    v30 = v19;
    v25 = v18;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = self;
    [(CKDaemon *)self valueForKey:v24 inStoreWithIdentifier:v25 completionHandler:v23];

    v22 = v24;
  }
}

- (void)saveKeysAndValues:(id)a3 toSynchedStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    v16 = [v8 allKeys];
    *buf = 136315650;
    v22 = "[CKDaemon saveKeysAndValues:toSynchedStoreWithIdentifier:completionHandler:]";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Setting all values for keys=[%@] in synched store %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D1BC;
  v17[3] = &unk_100018B90;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(CKDaemon *)self saveKeysAndValues:v14 toStoreWithIdentifier:v13 completionHandler:v17];
}

- (void)saveKeysAndValues:(id)a3 toStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D3B0;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)triplesComponentsMatching:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D6D4;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysAndValuesForKeysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D9AC;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysAndValuesInStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC64;
  block[3] = &unk_100018B18;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(concurrentQueue, block);
}

- (void)valuesForKeysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000DEF8;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);
}

- (void)valuesForKeys:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_10000E274;
  v24[4] = sub_10000E284;
  v25 = &__NSArray0__struct;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10000E274;
  v22[4] = sub_10000E284;
  v23 = 0;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E28C;
  v15[3] = &unk_100018B68;
  v16 = v8;
  v17 = self;
  v20 = v22;
  v21 = v24;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

- (void)valuesInStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E528;
  block[3] = &unk_100018B18;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(concurrentQueue, block);
}

- (void)valueForKey:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E7BC;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysMatchingCondition:(id)a3 inStoreWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EAC4;
  v15[3] = &unk_100018B40;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysInStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ED7C;
  block[3] = &unk_100018B18;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(concurrentQueue, block);
}

- (CKDaemon)init
{
  v13.receiver = self;
  v13.super_class = CKDaemon;
  v2 = [(CKDaemon *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CKDaemon._serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);

    v8 = dispatch_queue_create("CKDaemon._concurrentQueue", v7);
    concurrentQueue = v2->_concurrentQueue;
    v2->_concurrentQueue = v8;

    v10 = [NSMutableDictionary dictionaryWithCapacity:0];
    cachedHandlers = v2->_cachedHandlers;
    v2->_cachedHandlers = v10;
  }

  return v2;
}

+ (id)sharedDaemon
{
  if (qword_10001D988 != -1)
  {
    dispatch_once(&qword_10001D988, &stru_100018AF0);
  }

  v3 = qword_10001D990;

  return v3;
}

@end