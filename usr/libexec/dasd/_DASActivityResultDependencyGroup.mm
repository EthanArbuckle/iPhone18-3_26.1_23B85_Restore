@interface _DASActivityResultDependencyGroup
+ (id)groupFromDefaultsWithoutCreation:(id)a3;
+ (id)groupFromPersistence:(id)a3;
+ (void)resetDependenciesContainingSubstring:(id)a3;
- (BOOL)deregisterProducer:(id)a3 error:(id *)a4;
- (BOOL)isDependencySatisfiedForActivity:(id)a3;
- (BOOL)isPersistenceAvailableWithFileProtection:(id)a3;
- (BOOL)queue_isProducerActivity:(id)a3;
- (BOOL)registerProducer:(id)a3 error:(id *)a4;
- (BOOL)reportActivity:(id)a3 consumedResult:(id)a4 error:(id *)a5;
- (BOOL)reportActivity:(id)a3 producedResult:(id)a4 error:(id *)a5;
- (NSString)debugDescription;
- (NSString)description;
- (_DASActivityResultDependencyGroup)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)queue_aggregateResultConsumptionForActivity:(id)a3;
- (int64_t)computeNumberOfAvailableResultsForActivity:(id)a3;
- (void)deregisterDependent:(id)a3;
- (void)handleActivitySubmission:(id)a3;
- (void)persistUpdatedResultConsumptionBy:(id)a3 result:(id)a4;
- (void)persistUpdatedResultProductionBy:(id)a3;
- (void)pruneConsumptionEventsForActivityIdentifier:(id)a3;
- (void)resetAccumulation;
- (void)updateDependenciesPreClearedOnActivity:(id)a3 withValue:(BOOL)a4;
@end

@implementation _DASActivityResultDependencyGroup

+ (id)groupFromPersistence:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:v3];
  v5 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v6 = BiomeLibrary();
  v7 = [v6 ActivityScheduler];
  v8 = [v7 Dependency];
  v9 = [v8 Result];
  v10 = [v9 publisher];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000B82E0;
  v26[3] = &unk_1001B7298;
  v11 = v3;
  v27 = v11;
  v12 = [v10 filterWithIsIncluded:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B833C;
  v24[3] = &unk_1001B5570;
  v25 = v5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B8398;
  v20[3] = &unk_1001B7EA0;
  v21 = v25;
  v13 = v4;
  v22 = v13;
  v23 = v11;
  v14 = v11;
  v15 = v25;
  v16 = [v12 sinkWithCompletion:v24 receiveInput:v20];

  v17 = v23;
  v18 = v13;

  return v13;
}

- (_DASActivityResultDependencyGroup)initWithIdentifier:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = _DASActivityResultDependencyGroup;
  v6 = [(_DASActivityResultDependencyGroup *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultIdentifier, a3);
    v8 = [[_DASActivityResult alloc] initWithIdentifier:v5];
    cumulativelyProducedResult = v7->_cumulativelyProducedResult;
    v7->_cumulativelyProducedResult = v8;

    v10 = +[NSMutableDictionary dictionary];
    cumulativeResultConsumption = v7->_cumulativeResultConsumption;
    v7->_cumulativeResultConsumption = v10;

    v12 = +[NSMutableSet set];
    consumers = v7->_consumers;
    v7->_consumers = v12;

    producer = v7->_producer;
    v7->_producer = 0;

    v15 = BiomeLibrary();
    v16 = [v15 ActivityScheduler];
    v17 = [v16 Dependency];
    v18 = [v17 Result];
    resultStream = v7->_resultStream;
    v7->_resultStream = v18;

    v20 = [NSString stringWithFormat:@"com.apple.dasd.DependencyGroup.%@", v7->_resultIdentifier];
    v21 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    queue = v7->_queue;
    v7->_queue = v23;

    v25 = os_log_create("com.apple.duetactivityscheduler", "ResultDependencyGroup");
    log = v7->_log;
    v7->_log = v25;
  }

  return v7;
}

- (BOOL)isPersistenceAvailableWithFileProtection:(id)a3
{
  resultStream = self->_resultStream;
  v4 = a3;
  v5 = [(BMStream *)resultStream configuration];
  v6 = [v5 storeConfig];
  v7 = [v6 protectionClass];

  v8 = [v4 asBiomeProtectionClass];
  return v8 <= v7;
}

- (void)handleActivitySubmission:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B87AC;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)registerProducer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = sub_1000B894C;
  v16[3] = sub_1000B895C;
  v17 = 0;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B8964;
  v11[3] = &unk_1001B7EC8;
  v11[4] = self;
  v13 = &v18;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  dispatch_sync(queue, v11);
  if (*(v19 + 24) != 1 || *(v16[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100128F98(self, v16);
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (a4)
    {
LABEL_5:
      *a4 = *(v16[0] + 40);
    }
  }

LABEL_6:
  v9 = *(v19 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)deregisterDependent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B8BE8;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)deregisterProducer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = sub_1000B894C;
  v16[3] = sub_1000B895C;
  v17 = 0;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B8D88;
  v11[3] = &unk_1001B7EF0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v18;
  v14 = &v15;
  dispatch_sync(queue, v11);
  if (*(v19 + 24) != 1 || *(v16[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10012900C(self, v16);
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (a4)
    {
LABEL_5:
      *a4 = *(v16[0] + 40);
    }
  }

LABEL_6:
  v9 = *(v19 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (BOOL)isDependencySatisfiedForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 dependencyForIdentifier:self->_resultIdentifier];
  if (v5)
  {
    v6 = [v5 isSatisfiedByAvailableResultCount:{-[_DASActivityResultDependencyGroup computeNumberOfAvailableResultsForActivity:](self, "computeNumberOfAvailableResultsForActivity:", v4)}];
    [(_DASActivityResultDependencyGroup *)self updateDependenciesPreClearedOnActivity:v4 withValue:v6];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)reportActivity:(id)a3 consumedResult:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = sub_1000B894C;
  v21[3] = sub_1000B895C;
  v22 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9154;
  block[3] = &unk_1001B7F18;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v18 = &v20;
  v19 = &v23;
  v12 = v9;
  v17 = v12;
  dispatch_sync(queue, block);
  if ((v24[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100129080(v11, v21);
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (a5)
    {
LABEL_4:
      *a5 = *(v21[0] + 40);
    }
  }

LABEL_5:
  v13 = *(v24 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

- (BOOL)reportActivity:(id)a3 producedResult:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = sub_1000B894C;
  v21[3] = sub_1000B895C;
  v22 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B95D4;
  block[3] = &unk_1001B7F40;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v18 = &v20;
  v12 = v9;
  v17 = v12;
  v19 = &v23;
  dispatch_sync(queue, block);
  if ((v24[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1001290FC(v11, v21);
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (a5)
    {
LABEL_4:
      *a5 = *(v21[0] + 40);
    }
  }

LABEL_5:
  v13 = *(v24 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

+ (void)resetDependenciesContainingSubstring:(id)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 ActivityScheduler];
  v6 = [v5 Dependency];
  v7 = [v6 Result];

  v8 = [v7 pruner];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B9910;
  v10[3] = &unk_1001B7F68;
  v11 = v3;
  v9 = v3;
  [v8 deleteEventsPassingTest:v10];
}

- (void)persistUpdatedResultProductionBy:(id)a3
{
  resultStream = self->_resultStream;
  v5 = a3;
  v6 = [(BMStream *)resultStream pruner];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B9AEC;
  v13[3] = &unk_1001B7F68;
  v13[4] = self;
  [v6 deleteEventsPassingTest:v13];

  v7 = [BMActivitySchedulerDependencyResult alloc];
  resultIdentifier = self->_resultIdentifier;
  v9 = [v5 identifier];

  v10 = [NSNumber numberWithInteger:[(_DASActivityResult *)self->_cumulativelyProducedResult count]];
  v11 = [v7 initWithResultIdentifier:resultIdentifier activityIdentifier:v9 resultCount:v10 type:1];

  v12 = [(BMStream *)self->_resultStream source];
  [v12 sendEvent:v11];
}

- (void)persistUpdatedResultConsumptionBy:(id)a3 result:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  [(_DASActivityResultDependencyGroup *)self pruneConsumptionEventsForActivityIdentifier:v8];

  v9 = [BMActivitySchedulerDependencyResult alloc];
  resultIdentifier = self->_resultIdentifier;
  v11 = [v7 identifier];

  v12 = [v6 count];
  v13 = [NSNumber numberWithInteger:v12];
  v15 = [v9 initWithResultIdentifier:resultIdentifier activityIdentifier:v11 resultCount:v13 type:2];

  v14 = [(BMStream *)self->_resultStream source];
  [v14 sendEvent:v15];
}

- (void)pruneConsumptionEventsForActivityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BMStream *)self->_resultStream pruner];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B9D50;
  v7[3] = &unk_1001B7F90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 deleteEventsPassingTest:v7];
}

- (BOOL)queue_isProducerActivity:(id)a3
{
  producer = self->_producer;
  v4 = a3;
  v5 = [(_DASActivity *)producer identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)queue_aggregateResultConsumptionForActivity:(id)a3
{
  v4 = a3;
  cumulativeResultConsumption = self->_cumulativeResultConsumption;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)cumulativeResultConsumption objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [[_DASActivityResult alloc] initWithIdentifier:self->_resultIdentifier];
    v8 = self->_cumulativeResultConsumption;
    v9 = [v4 identifier];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (int64_t)computeNumberOfAvailableResultsForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA020;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)updateDependenciesPreClearedOnActivity:(id)a3 withValue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 dependenciesPreCleared] & 1) == 0 && v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = log;
      v9 = [(_DASActivityResultDependencyGroup *)self description];
      v10 = 136315650;
      v11 = "[_DASActivityResultDependencyGroup updateDependenciesPreClearedOnActivity:withValue:]";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ dependency has been satisfied on %@, marking as pre-cleared", &v10, 0x20u);
    }
  }

  [v6 setDependenciesPreCleared:{objc_msgSend(v6, "dependenciesPreCleared") | v4}];
}

- (void)resetAccumulation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA21C;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)dictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableArray array];
  queue = self->_queue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000BA56C;
  v17 = &unk_1001B56B8;
  v18 = self;
  v6 = v3;
  v19 = v6;
  v7 = v4;
  v20 = v7;
  dispatch_sync(queue, &v14);
  cumulativelyProducedResult = self->_cumulativelyProducedResult;
  v22[0] = self->_resultIdentifier;
  v21[0] = @"resultIdentifier";
  v21[1] = @"producedResults";
  v9 = [NSNumber numberWithInteger:[(_DASActivityResult *)cumulativelyProducedResult count:v14]];
  v22[1] = v9;
  v22[2] = v6;
  v21[2] = @"consumedResults";
  v21[3] = @"registeredConsumers";
  v22[3] = v7;
  v21[4] = @"registeredProducer";
  v10 = [(_DASActivity *)self->_producer name];
  v11 = v10;
  if (!v10)
  {
    v11 = +[NSNull null];
  }

  v22[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  if (!v10)
  {
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIdentifier:", self->_resultIdentifier}];
  v6 = [(_DASActivityResult *)self->_cumulativelyProducedResult copyWithZone:a3];
  [v5 setCumulativelyProducedResult:v6];

  v7 = [(NSMutableDictionary *)self->_cumulativeResultConsumption copyWithZone:a3];
  [v5 setCumulativeResultConsumption:v7];

  v8 = [(NSMutableSet *)self->_consumers copyWithZone:a3];
  [v5 setConsumers:v8];

  v9 = [(_DASActivity *)self->_producer copyWithZone:a3];
  [v5 setProducer:v9];

  return v5;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> Identifier: %@, ", objc_opt_class(), self, self->_resultIdentifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA908;
  block[3] = &unk_1001B56E0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(queue, block);
  v6 = v5;

  return v5;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> Identifier: %@, ", objc_opt_class(), self, self->_resultIdentifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAA38;
  block[3] = &unk_1001B56E0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(queue, block);
  v6 = v5;

  return v5;
}

+ (id)groupFromDefaultsWithoutCreation:(id)a3
{
  v3 = a3;
  v4 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = BiomeLibrary();
  v6 = [v5 ActivityScheduler];
  v7 = [v6 Dependency];
  v8 = [v7 Result];
  v9 = [v8 publisher];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BAE48;
  v19[3] = &unk_1001B7298;
  v10 = v3;
  v20 = v10;
  v11 = [v9 filterWithIsIncluded:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BAEA4;
  v17[3] = &unk_1001B5570;
  v12 = v4;
  v18 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000BAF00;
  v16[3] = &unk_1001B7FB8;
  v16[4] = &v21;
  v13 = [v11 sinkWithCompletion:v17 shouldContinue:v16];

  if (v22[3])
  {
    v14 = [objc_opt_class() groupFromPersistence:v10];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v14;
}

@end