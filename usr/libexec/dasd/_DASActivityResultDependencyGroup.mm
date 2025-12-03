@interface _DASActivityResultDependencyGroup
+ (id)groupFromDefaultsWithoutCreation:(id)creation;
+ (id)groupFromPersistence:(id)persistence;
+ (void)resetDependenciesContainingSubstring:(id)substring;
- (BOOL)deregisterProducer:(id)producer error:(id *)error;
- (BOOL)isDependencySatisfiedForActivity:(id)activity;
- (BOOL)isPersistenceAvailableWithFileProtection:(id)protection;
- (BOOL)queue_isProducerActivity:(id)activity;
- (BOOL)registerProducer:(id)producer error:(id *)error;
- (BOOL)reportActivity:(id)activity consumedResult:(id)result error:(id *)error;
- (BOOL)reportActivity:(id)activity producedResult:(id)result error:(id *)error;
- (NSString)debugDescription;
- (NSString)description;
- (_DASActivityResultDependencyGroup)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)queue_aggregateResultConsumptionForActivity:(id)activity;
- (int64_t)computeNumberOfAvailableResultsForActivity:(id)activity;
- (void)deregisterDependent:(id)dependent;
- (void)handleActivitySubmission:(id)submission;
- (void)persistUpdatedResultConsumptionBy:(id)by result:(id)result;
- (void)persistUpdatedResultProductionBy:(id)by;
- (void)pruneConsumptionEventsForActivityIdentifier:(id)identifier;
- (void)resetAccumulation;
- (void)updateDependenciesPreClearedOnActivity:(id)activity withValue:(BOOL)value;
@end

@implementation _DASActivityResultDependencyGroup

+ (id)groupFromPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:persistenceCopy];
  v5 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v6 = BiomeLibrary();
  activityScheduler = [v6 ActivityScheduler];
  dependency = [activityScheduler Dependency];
  result = [dependency Result];
  publisher = [result publisher];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000B82E0;
  v26[3] = &unk_1001B7298;
  v11 = persistenceCopy;
  v27 = v11;
  v12 = [publisher filterWithIsIncluded:v26];
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

- (_DASActivityResultDependencyGroup)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = _DASActivityResultDependencyGroup;
  v6 = [(_DASActivityResultDependencyGroup *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultIdentifier, identifier);
    v8 = [[_DASActivityResult alloc] initWithIdentifier:identifierCopy];
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
    activityScheduler = [v15 ActivityScheduler];
    dependency = [activityScheduler Dependency];
    result = [dependency Result];
    resultStream = v7->_resultStream;
    v7->_resultStream = result;

    v20 = [NSString stringWithFormat:@"com.apple.dasd.DependencyGroup.%@", v7->_resultIdentifier];
    uTF8String = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(uTF8String, v22);
    queue = v7->_queue;
    v7->_queue = v23;

    v25 = os_log_create("com.apple.duetactivityscheduler", "ResultDependencyGroup");
    log = v7->_log;
    v7->_log = v25;
  }

  return v7;
}

- (BOOL)isPersistenceAvailableWithFileProtection:(id)protection
{
  resultStream = self->_resultStream;
  protectionCopy = protection;
  configuration = [(BMStream *)resultStream configuration];
  storeConfig = [configuration storeConfig];
  protectionClass = [storeConfig protectionClass];

  asBiomeProtectionClass = [protectionCopy asBiomeProtectionClass];
  return asBiomeProtectionClass <= protectionClass;
}

- (void)handleActivitySubmission:(id)submission
{
  submissionCopy = submission;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B87AC;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = submissionCopy;
  v6 = submissionCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)registerProducer:(id)producer error:(id *)error
{
  producerCopy = producer;
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
  v8 = producerCopy;
  v12 = v8;
  dispatch_sync(queue, v11);
  if (*(v19 + 24) != 1 || *(v16[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100128F98(self, v16);
      if (!error)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (error)
    {
LABEL_5:
      *error = *(v16[0] + 40);
    }
  }

LABEL_6:
  v9 = *(v19 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)deregisterDependent:(id)dependent
{
  dependentCopy = dependent;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B8BE8;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = dependentCopy;
  v6 = dependentCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)deregisterProducer:(id)producer error:(id *)error
{
  producerCopy = producer;
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
  v8 = producerCopy;
  v12 = v8;
  v13 = &v18;
  v14 = &v15;
  dispatch_sync(queue, v11);
  if (*(v19 + 24) != 1 || *(v16[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10012900C(self, v16);
      if (!error)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (error)
    {
LABEL_5:
      *error = *(v16[0] + 40);
    }
  }

LABEL_6:
  v9 = *(v19 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (BOOL)isDependencySatisfiedForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [activityCopy dependencyForIdentifier:self->_resultIdentifier];
  if (v5)
  {
    v6 = [v5 isSatisfiedByAvailableResultCount:{-[_DASActivityResultDependencyGroup computeNumberOfAvailableResultsForActivity:](self, "computeNumberOfAvailableResultsForActivity:", activityCopy)}];
    [(_DASActivityResultDependencyGroup *)self updateDependenciesPreClearedOnActivity:activityCopy withValue:v6];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)reportActivity:(id)activity consumedResult:(id)result error:(id *)error
{
  activityCopy = activity;
  resultCopy = result;
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
  v11 = activityCopy;
  v16 = v11;
  v18 = &v20;
  v19 = &v23;
  v12 = resultCopy;
  v17 = v12;
  dispatch_sync(queue, block);
  if ((v24[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100129080(v11, v21);
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      *error = *(v21[0] + 40);
    }
  }

LABEL_5:
  v13 = *(v24 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

- (BOOL)reportActivity:(id)activity producedResult:(id)result error:(id *)error
{
  activityCopy = activity;
  resultCopy = result;
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
  v11 = activityCopy;
  v16 = v11;
  v18 = &v20;
  v12 = resultCopy;
  v17 = v12;
  v19 = &v23;
  dispatch_sync(queue, block);
  if ((v24[3] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1001290FC(v11, v21);
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      *error = *(v21[0] + 40);
    }
  }

LABEL_5:
  v13 = *(v24 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

+ (void)resetDependenciesContainingSubstring:(id)substring
{
  substringCopy = substring;
  v4 = BiomeLibrary();
  activityScheduler = [v4 ActivityScheduler];
  dependency = [activityScheduler Dependency];
  result = [dependency Result];

  pruner = [result pruner];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B9910;
  v10[3] = &unk_1001B7F68;
  v11 = substringCopy;
  v9 = substringCopy;
  [pruner deleteEventsPassingTest:v10];
}

- (void)persistUpdatedResultProductionBy:(id)by
{
  resultStream = self->_resultStream;
  byCopy = by;
  pruner = [(BMStream *)resultStream pruner];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B9AEC;
  v13[3] = &unk_1001B7F68;
  v13[4] = self;
  [pruner deleteEventsPassingTest:v13];

  v7 = [BMActivitySchedulerDependencyResult alloc];
  resultIdentifier = self->_resultIdentifier;
  identifier = [byCopy identifier];

  v10 = [NSNumber numberWithInteger:[(_DASActivityResult *)self->_cumulativelyProducedResult count]];
  v11 = [v7 initWithResultIdentifier:resultIdentifier activityIdentifier:identifier resultCount:v10 type:1];

  source = [(BMStream *)self->_resultStream source];
  [source sendEvent:v11];
}

- (void)persistUpdatedResultConsumptionBy:(id)by result:(id)result
{
  resultCopy = result;
  byCopy = by;
  identifier = [byCopy identifier];
  [(_DASActivityResultDependencyGroup *)self pruneConsumptionEventsForActivityIdentifier:identifier];

  v9 = [BMActivitySchedulerDependencyResult alloc];
  resultIdentifier = self->_resultIdentifier;
  identifier2 = [byCopy identifier];

  v12 = [resultCopy count];
  v13 = [NSNumber numberWithInteger:v12];
  v15 = [v9 initWithResultIdentifier:resultIdentifier activityIdentifier:identifier2 resultCount:v13 type:2];

  source = [(BMStream *)self->_resultStream source];
  [source sendEvent:v15];
}

- (void)pruneConsumptionEventsForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pruner = [(BMStream *)self->_resultStream pruner];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B9D50;
  v7[3] = &unk_1001B7F90;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  [pruner deleteEventsPassingTest:v7];
}

- (BOOL)queue_isProducerActivity:(id)activity
{
  producer = self->_producer;
  activityCopy = activity;
  identifier = [(_DASActivity *)producer identifier];
  identifier2 = [activityCopy identifier];

  LOBYTE(activityCopy) = [identifier isEqualToString:identifier2];
  return activityCopy;
}

- (id)queue_aggregateResultConsumptionForActivity:(id)activity
{
  activityCopy = activity;
  cumulativeResultConsumption = self->_cumulativeResultConsumption;
  identifier = [activityCopy identifier];
  v7 = [(NSMutableDictionary *)cumulativeResultConsumption objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v7 = [[_DASActivityResult alloc] initWithIdentifier:self->_resultIdentifier];
    v8 = self->_cumulativeResultConsumption;
    identifier2 = [activityCopy identifier];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:identifier2];
  }

  return v7;
}

- (int64_t)computeNumberOfAvailableResultsForActivity:(id)activity
{
  activityCopy = activity;
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
  v10 = activityCopy;
  v11 = &v12;
  v6 = activityCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)updateDependenciesPreClearedOnActivity:(id)activity withValue:(BOOL)value
{
  valueCopy = value;
  activityCopy = activity;
  if (([activityCopy dependenciesPreCleared] & 1) == 0 && valueCopy)
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
      v15 = activityCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ dependency has been satisfied on %@, marking as pre-cleared", &v10, 0x20u);
    }
  }

  [activityCopy setDependenciesPreCleared:{objc_msgSend(activityCopy, "dependenciesPreCleared") | valueCopy}];
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
  selfCopy = self;
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
  name = [(_DASActivity *)self->_producer name];
  v11 = name;
  if (!name)
  {
    v11 = +[NSNull null];
  }

  v22[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  if (!name)
  {
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIdentifier:", self->_resultIdentifier}];
  v6 = [(_DASActivityResult *)self->_cumulativelyProducedResult copyWithZone:zone];
  [v5 setCumulativelyProducedResult:v6];

  v7 = [(NSMutableDictionary *)self->_cumulativeResultConsumption copyWithZone:zone];
  [v5 setCumulativeResultConsumption:v7];

  v8 = [(NSMutableSet *)self->_consumers copyWithZone:zone];
  [v5 setConsumers:v8];

  v9 = [(_DASActivity *)self->_producer copyWithZone:zone];
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
  selfCopy = self;
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
  selfCopy = self;
  dispatch_sync(queue, block);
  v6 = v5;

  return v5;
}

+ (id)groupFromDefaultsWithoutCreation:(id)creation
{
  creationCopy = creation;
  v4 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = BiomeLibrary();
  activityScheduler = [v5 ActivityScheduler];
  dependency = [activityScheduler Dependency];
  result = [dependency Result];
  publisher = [result publisher];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BAE48;
  v19[3] = &unk_1001B7298;
  v10 = creationCopy;
  v20 = v10;
  v11 = [publisher filterWithIsIncluded:v19];
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