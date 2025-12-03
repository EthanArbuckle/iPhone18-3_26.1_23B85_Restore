@interface _DASSwapPredictionManager
+ (id)sharedInstance;
- (_DASSwapPredictionManager)initWithAlgorithms:(id)algorithms;
- (void)start;
- (void)updateScores;
- (void)updateSwapScoresWithDictionary:(id)dictionary;
@end

@implementation _DASSwapPredictionManager

- (_DASSwapPredictionManager)initWithAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  v24.receiver = self;
  v24.super_class = _DASSwapPredictionManager;
  v5 = [(_DASSwapPredictionManager *)&v24 init];
  if (v5)
  {
    v6 = [[_DASSwapModelCustomAggregator alloc] initWithAlgorithms:algorithmsCopy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = +[_DASAppResumePLLogger sharedInstance];
    v9 = *(v5 + 3);
    *(v5 + 3) = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.dasd.smartswapqueue", v10);
    v12 = *(v5 + 4);
    *(v5 + 4) = v11;

    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 4));
    v14 = *(v5 + 5);
    *(v5 + 5) = v13;

    v15 = *(v5 + 5);
    dispatch_set_qos_class_fallback();
    v16 = *(v5 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B78AC;
    handler[3] = &unk_1001B5668;
    v17 = v5;
    v23 = v17;
    dispatch_source_set_event_handler(v16, handler);
    v17[2] = -1;
    v18 = *(v5 + 4);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B78F4;
    v20[3] = &unk_1001B5B78;
    v21 = v17;
    notify_register_dispatch("com.apple.dasd.updateswapscores", v17 + 2, v18, v20);
  }

  return v5;
}

- (void)updateScores
{
  v6 = os_transaction_create();
  [(_DASSwapModelAggregating *)self->_aggregator updateScores];
  aggregator = self->_aggregator;
  v4 = +[NSDate date];
  v5 = [(_DASSwapModelAggregating *)aggregator scoresForAllApplicationsAtDate:v4];
  [(_DASSwapPredictionManager *)self updateSwapScoresWithDictionary:v5];
}

- (void)updateSwapScoresWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [_DASDaemonLogger logForCategory:@"swap"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating scores to %@", buf, 0xCu);
  }

  if ([dictionaryCopy count])
  {
    selfCopy = self;
    v6 = [dictionaryCopy mutableCopy];
    [v6 setObject:&off_1001CA390 forKeyedSubscript:@"MobileSafari"];
    v26 = v6;
    v7 = [v6 copy];

    v25[1] = v25;
    v25[0] = [v7 count];
    v28 = v25 - ((56 * v25[0] + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    dictionaryCopy = v7;
    v8 = [dictionaryCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      v12 = *v33;
      v29 = v28 + 32;
      *&v9 = 138412546;
      v30 = v9;
      do
      {
        v13 = 0;
        v14 = &v29[56 * v11];
        v31 = &v10[v11];
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(dictionaryCopy);
          }

          v15 = *(*(&v32 + 1) + 8 * v13);
          *(v14 - 8) = 1;
          snprintf(v14, 0x11uLL, "%s", [v15 UTF8String]);
          v16 = [dictionaryCopy objectForKeyedSubscript:v15];
          [v16 doubleValue];
          v18 = v17 > 0.0;

          *(v14 - 5) = v18;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = v30;
            v37 = v15;
            v38 = 1024;
            v39 = v18;
            _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ => %d", buf, 0x12u);
          }

          ++v13;
          v14 += 56;
        }

        while (v10 != v13);
        v10 = [dictionaryCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
        v11 = v31;
      }

      while (v10);
    }

    v19 = memorystatus_control();
    v20 = selfCopy;
    if (v19)
    {
      v21 = v19;
      v22 = [_DASDaemonLogger logForCategory:@"swap"];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100128D68(v21, v22);
      }
    }

    v23 = [_DASAppResumePLLogger topPredictionsFromScores:dictionaryCopy];
    currentPredictions = v20->_currentPredictions;
    v20->_currentPredictions = v23;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No scores to update!", buf, 2u);
  }
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7E78;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B740 != -1)
  {
    dispatch_once(&qword_10020B740, block);
  }

  v2 = qword_10020B738;

  return v2;
}

- (void)start
{
  timer = self->_timer;
  v4 = dispatch_walltime(0, 10000000000);
  dispatch_source_set_timer(timer, v4, 0x1A3185C5000uLL, 0x45D964B800uLL);
  v5 = self->_timer;

  dispatch_resume(v5);
}

@end