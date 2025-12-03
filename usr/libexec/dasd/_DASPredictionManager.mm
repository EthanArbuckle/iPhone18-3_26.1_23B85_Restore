@interface _DASPredictionManager
+ (id)getValuesForPrediction:(id)prediction tillEndDate:(id)date withIntervals:(double)intervals;
+ (id)predictionGenerationQueue;
+ (id)sharedManager;
+ (id)sharedTimelinePredictor;
- (BOOL)isPredictionTimeline:(id)timeline validAtDate:(id)date lastUpdatedAt:(id)at;
- (_DASPredictionManager)init;
- (id)currentPredictions;
- (id)lowLikelihoodPeriodForPredictionWithKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)asyncDo:(id)do;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation _DASPredictionManager

+ (id)sharedTimelinePredictor
{
  if (qword_10020B590 != -1)
  {
    sub_100122FE8();
  }

  v3 = qword_10020B588;

  return v3;
}

+ (id)sharedManager
{
  if (qword_10020B578 != -1)
  {
    sub_100122FD4();
  }

  v3 = qword_10020B580;

  return v3;
}

- (_DASPredictionManager)init
{
  v12.receiver = self;
  v12.super_class = _DASPredictionManager;
  v2 = [(_DASPredictionManager *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    timelinePredictionsCache = v2->_timelinePredictionsCache;
    v2->_timelinePredictionsCache = v3;

    v5 = +[NSMutableDictionary dictionary];
    predictionLikelihoodPeriodsCache = v2->_predictionLikelihoodPeriodsCache;
    v2->_predictionLikelihoodPeriodsCache = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, v7);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.predictionGenerationQueue", v8);
    predictionGenerationQueue = v2->_predictionGenerationQueue;
    v2->_predictionGenerationQueue = v9;
  }

  return v2;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_timelinePredictionsCache objectForKeyedSubscript:subscriptCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_timelinePredictionsCache setObject:objectCopy forKeyedSubscript:subscriptCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)isPredictionTimeline:(id)timeline validAtDate:(id)date lastUpdatedAt:(id)at
{
  timelineCopy = timeline;
  dateCopy = date;
  atCopy = at;
  if (atCopy)
  {
    [dateCopy timeIntervalSinceDate:atCopy];
    v11 = v10 <= 86400.0 && timelineCopy != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)lowLikelihoodPeriodForPredictionWithKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lowLikelihoodPeriod = [(NSMutableDictionary *)selfCopy->_predictionLikelihoodPeriodsCache objectForKeyedSubscript:keyCopy];
  objc_sync_exit(selfCopy);

  if (!lowLikelihoodPeriod)
  {
    v7 = [(_DASPredictionManager *)selfCopy objectForKeyedSubscript:keyCopy];
    lowLikelihoodPeriod = [v7 lowLikelihoodPeriod];

    v8 = selfCopy;
    objc_sync_enter(v8);
    [(NSMutableDictionary *)selfCopy->_predictionLikelihoodPeriodsCache setObject:lowLikelihoodPeriod forKeyedSubscript:keyCopy];
    objc_sync_exit(v8);
  }

  v9 = lowLikelihoodPeriod;

  return v9;
}

- (void)asyncDo:(id)do
{
  doCopy = do;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  predictionGenerationQueue = self->_predictionGenerationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000874E0;
  v10[3] = &unk_1001B7198;
  v8 = v5;
  v11 = v8;
  v9 = doCopy;
  v12 = v9;
  dispatch_async(predictionGenerationQueue, v10);

  objc_autoreleasePoolPop(v6);
}

+ (id)predictionGenerationQueue
{
  if (qword_10020B598 != -1)
  {
    sub_100122FFC();
  }

  v3 = qword_10020B5A0;

  return v3;
}

- (id)currentPredictions
{
  v3 = self->_timelinePredictionsCache;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_timelinePredictionsCache copy];
  objc_sync_exit(v3);

  return v4;
}

+ (id)getValuesForPrediction:(id)prediction tillEndDate:(id)date withIntervals:(double)intervals
{
  predictionCopy = prediction;
  dateCopy = date;
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:dateCopy];
  if (v10 >= 0.0)
  {
    goto LABEL_3;
  }

  [dateCopy timeIntervalSinceDate:v9];
  if (v11 > 86400.0)
  {
    goto LABEL_3;
  }

  startDate = [predictionCopy startDate];
  [dateCopy timeIntervalSinceDate:startDate];
  if (v15 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    endDate = [predictionCopy endDate];
    [endDate timeIntervalSinceDate:v9];
    v18 = v17;

    if (v18 <= 0.0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_4;
    }

    v12 = +[NSMutableArray array];
    v19 = v9;
    v20 = dateCopy;
    startDate2 = [predictionCopy startDate];
    [startDate2 timeIntervalSinceDate:v19];
    v23 = v22;

    if (v23 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v23 / intervals);
      if (v24)
      {
        for (i = 0; i != v24; ++i)
        {
          [v12 setObject:&off_1001CA078 atIndexedSubscript:i];
        }
      }

      startDate3 = [predictionCopy startDate];

      v19 = startDate3;
    }

    endDate2 = [predictionCopy endDate];
    [v20 timeIntervalSinceDate:endDate2];
    v29 = v28;

    endDate3 = v20;
    if (v29 > 0.0)
    {
      endDate3 = [predictionCopy endDate];
    }

    v44 = endDate3;
    [endDate3 timeIntervalSinceDate:v19];
    v32 = v31;
    startDate = v19;
    v33 = (v32 / intervals);
    v34 = startDate;
    if (v24 < v33)
    {
      do
      {
        v35 = v34;
        v36 = [predictionCopy valueAtDate:v34];
        [v12 setObject:v36 atIndexedSubscript:v24];

        v34 = [v35 dateByAddingTimeInterval:intervals];

        ++v24;
      }

      while (v33 != v24);
      v24 = (v32 / intervals);
    }

    endDate4 = [predictionCopy endDate];
    [v20 timeIntervalSinceDate:endDate4];
    v39 = v38;

    if (v39 > 0.0)
    {
      endDate5 = [predictionCopy endDate];
      [v20 timeIntervalSinceDate:endDate5];
      v42 = v41;

      v43 = (v42 / intervals);
      if (v24 < v43)
      {
        do
        {
          [v12 setObject:&off_1001CA078 atIndexedSubscript:v24++];
        }

        while (v43 != v24);
      }
    }
  }

LABEL_4:

  return v12;
}

@end