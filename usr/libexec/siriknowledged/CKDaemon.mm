@interface CKDaemon
+ (id)sharedDaemon;
- (CKDaemon)init;
- (void)decreaseWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler;
- (void)dropLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dropLinksBetweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dropLinksWithLabel:(id)label fromSubject:(id)subject inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)increaseWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)keysAndValuesForKeysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)keysAndValuesInStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)keysInStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)keysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)recordEventWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate metadata:(id)metadata toStoreWithIdentifier:(id)withIdentifier completionHandler:(id)handler;
- (void)removeAllValuesFromStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllValuesFromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValueForKey:(id)key fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValueForKey:(id)key fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValuesForKeys:(id)keys fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValuesForKeys:(id)keys fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValuesMatchingCondition:(id)condition fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeValuesMatchingCondition:(id)condition fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveKeysAndValues:(id)values toStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveKeysAndValues:(id)values toSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object toValue:(int64_t)value inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)triplesComponentsMatching:(id)matching inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)valueForKey:(id)key inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)valuesForKeys:(id)keys inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)valuesForKeysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)valuesInStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation CKDaemon

- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[CKNCloudKitManager sharedManager];
  [v4 disableSyncAndDeleteCloudDataWithCompletionHandler:handlerCopy];
}

- (void)dropLinksBetweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  subjectCopy = subject;
  objectCopy = object;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A344;
  block[3] = &unk_100018CF8;
  block[4] = self;
  v20 = identifierCopy;
  v21 = subjectCopy;
  v22 = objectCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = objectCopy;
  v17 = subjectCopy;
  v18 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (void)dropLinksWithLabel:(id)label fromSubject:(id)subject inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  labelCopy = label;
  subjectCopy = subject;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A7FC;
  block[3] = &unk_100018CF8;
  block[4] = self;
  v20 = identifierCopy;
  v21 = labelCopy;
  v22 = subjectCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = subjectCopy;
  v17 = labelCopy;
  v18 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (void)dropLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  labelCopy = label;
  subjectCopy = subject;
  objectCopy = object;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000A9CC;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = labelCopy;
  v26 = subjectCopy;
  v27 = objectCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = objectCopy;
  v20 = subjectCopy;
  v21 = labelCopy;
  v22 = identifierCopy;
  dispatch_async(serialQueue, v23);
}

- (void)decreaseWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  labelCopy = label;
  subjectCopy = subject;
  objectCopy = object;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000ABA0;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = labelCopy;
  v26 = subjectCopy;
  v27 = objectCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = objectCopy;
  v20 = subjectCopy;
  v21 = labelCopy;
  v22 = identifierCopy;
  dispatch_async(serialQueue, v23);
}

- (void)increaseWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  labelCopy = label;
  subjectCopy = subject;
  objectCopy = object;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AE44;
  v23[3] = &unk_100018CD0;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = labelCopy;
  v26 = subjectCopy;
  v27 = objectCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = objectCopy;
  v20 = subjectCopy;
  v21 = labelCopy;
  v22 = identifierCopy;
  dispatch_async(serialQueue, v23);
}

- (void)setWeightForLinkWithLabel:(id)label betweenSubject:(id)subject andObject:(id)object toValue:(int64_t)value inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  labelCopy = label;
  subjectCopy = subject;
  objectCopy = object;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B0F0;
  block[3] = &unk_100018CA8;
  block[4] = self;
  v26 = identifierCopy;
  v27 = labelCopy;
  v28 = subjectCopy;
  v30 = handlerCopy;
  valueCopy = value;
  v29 = objectCopy;
  v20 = handlerCopy;
  v21 = objectCopy;
  v22 = subjectCopy;
  v23 = labelCopy;
  v24 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (void)removeAllValuesFromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[CKDaemon removeAllValuesFromSynchedStoreWithIdentifier:completionHandler:]";
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Removing ALL values in synched store %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B2EC;
  v11[3] = &unk_100018C80;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = handlerCopy;
  [(CKDaemon *)self keysInStoreWithIdentifier:v9 completionHandler:v11];
}

- (void)removeAllValuesFromStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B584;
  block[3] = &unk_100018B18;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(serialQueue, block);
}

- (void)removeValuesMatchingCondition:(id)condition fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  conditionCopy = condition;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    v16 = [conditionCopy description];
    *buf = 136315650;
    v22 = "[CKDaemon removeValuesMatchingCondition:fromSynchedStoreWithIdentifier:completionHandler:]";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Removing values matching condition %@ in synched store %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B8D0;
  v17[3] = &unk_100018C08;
  v17[4] = self;
  v18 = conditionCopy;
  v19 = identifierCopy;
  v20 = handlerCopy;
  v12 = identifierCopy;
  v13 = conditionCopy;
  v14 = handlerCopy;
  [(CKDaemon *)self keysInStoreWithIdentifier:v12 completionHandler:v17];
}

- (void)removeValuesMatchingCondition:(id)condition fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  conditionCopy = condition;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BEB4;
  v15[3] = &unk_100018B40;
  v16 = conditionCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = conditionCopy;
  dispatch_async(serialQueue, v15);
}

- (void)removeValuesForKeys:(id)keys fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "[CKDaemon removeValuesForKeys:fromSynchedStoreWithIdentifier:completionHandler:]";
    v21 = 2112;
    v22 = keysCopy;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Removing values for keys %@ in synched store %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C230;
  v15[3] = &unk_100018B90;
  v16 = keysCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keysCopy;
  [(CKDaemon *)self removeValuesForKeys:v14 fromStoreWithIdentifier:v13 completionHandler:v15];
}

- (void)removeValuesForKeys:(id)keys fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C42C;
  v15[3] = &unk_100018B40;
  v16 = keysCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keysCopy;
  dispatch_async(serialQueue, v15);
}

- (void)removeValueForKey:(id)key fromSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "[CKDaemon removeValueForKey:fromSynchedStoreWithIdentifier:completionHandler:]";
    v21 = 2112;
    v22 = keyCopy;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Removing value for key %@ in synched store %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C75C;
  v15[3] = &unk_100018B90;
  v16 = keyCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keyCopy;
  [(CKDaemon *)self removeValueForKey:v14 fromStoreWithIdentifier:v13 completionHandler:v15];
}

- (void)removeValueForKey:(id)key fromStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C984;
  v15[3] = &unk_100018B40;
  v16 = keyCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keyCopy;
  dispatch_async(serialQueue, v15);
}

- (void)recordEventWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate metadata:(id)metadata toStoreWithIdentifier:(id)withIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  metadataCopy = metadata;
  withIdentifierCopy = withIdentifier;
  handlerCopy = handler;
  if ([dateCopy compare:endDateCopy] == 1)
  {
    v20 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[CKDaemon recordEventWithIdentifier:startDate:endDate:metadata:toStoreWithIdentifier:completionHandler:]";
      v35 = 2112;
      v36 = dateCopy;
      v37 = 2112;
      v38 = endDateCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s event startDate should NOT be greater than endDate. (startDate = %@, endDate = %@).", buf, 0x20u);
    }

    v31[0] = @"localizedDescription";
    v31[1] = @"storeIdentifier";
    v32[0] = @"Event startDate is greater than endDate";
    v32[1] = identifierCopy;
    v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v22 = [NSError errorWithDomain:@"com.apple.siriknowledged" code:101 userInfo:v21];

    handlerCopy[2](handlerCopy, v22);
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000CDE0;
    v23[3] = &unk_100018BB8;
    v24 = identifierCopy;
    v30 = handlerCopy;
    v25 = withIdentifierCopy;
    v26 = dateCopy;
    v27 = endDateCopy;
    v28 = metadataCopy;
    selfCopy = self;
    [(CKDaemon *)self valueForKey:v24 inStoreWithIdentifier:v25 completionHandler:v23];

    v22 = v24;
  }
}

- (void)saveKeysAndValues:(id)values toSynchedStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  valuesCopy = values;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    allKeys = [valuesCopy allKeys];
    *buf = 136315650;
    v22 = "[CKDaemon saveKeysAndValues:toSynchedStoreWithIdentifier:completionHandler:]";
    v23 = 2112;
    v24 = allKeys;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Setting all values for keys=[%@] in synched store %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D1BC;
  v17[3] = &unk_100018B90;
  v18 = valuesCopy;
  v19 = identifierCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = valuesCopy;
  [(CKDaemon *)self saveKeysAndValues:v14 toStoreWithIdentifier:v13 completionHandler:v17];
}

- (void)saveKeysAndValues:(id)values toStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  valuesCopy = values;
  identifierCopy = identifier;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D3B0;
  v15[3] = &unk_100018B40;
  v16 = valuesCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = valuesCopy;
  dispatch_async(serialQueue, v15);
}

- (void)triplesComponentsMatching:(id)matching inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  matchingCopy = matching;
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D6D4;
  v15[3] = &unk_100018B40;
  v16 = matchingCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = matchingCopy;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysAndValuesForKeysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  conditionCopy = condition;
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D9AC;
  v15[3] = &unk_100018B40;
  v16 = conditionCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = conditionCopy;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysAndValuesInStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC64;
  block[3] = &unk_100018B18;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(concurrentQueue, block);
}

- (void)valuesForKeysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  conditionCopy = condition;
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000DEF8;
  v15[3] = &unk_100018B40;
  v16 = conditionCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = conditionCopy;
  dispatch_async(concurrentQueue, v15);
}

- (void)valuesForKeys:(id)keys inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v16 = keysCopy;
  selfCopy = self;
  v20 = v22;
  v21 = v24;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keysCopy;
  dispatch_async(concurrentQueue, v15);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

- (void)valuesInStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E528;
  block[3] = &unk_100018B18;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(concurrentQueue, block);
}

- (void)valueForKey:(id)key inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E7BC;
  v15[3] = &unk_100018B40;
  v16 = keyCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = keyCopy;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysMatchingCondition:(id)condition inStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  conditionCopy = condition;
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EAC4;
  v15[3] = &unk_100018B40;
  v16 = conditionCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = conditionCopy;
  dispatch_async(concurrentQueue, v15);
}

- (void)keysInStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  concurrentQueue = self->_concurrentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ED7C;
  block[3] = &unk_100018B18;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
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