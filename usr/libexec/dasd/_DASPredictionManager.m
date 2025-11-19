@interface _DASPredictionManager
+ (id)getValuesForPrediction:(id)a3 tillEndDate:(id)a4 withIntervals:(double)a5;
+ (id)predictionGenerationQueue;
+ (id)sharedManager;
+ (id)sharedTimelinePredictor;
- (BOOL)isPredictionTimeline:(id)a3 validAtDate:(id)a4 lastUpdatedAt:(id)a5;
- (_DASPredictionManager)init;
- (id)currentPredictions;
- (id)lowLikelihoodPeriodForPredictionWithKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)asyncDo:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
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

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_timelinePredictionsCache objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_timelinePredictionsCache setObject:v8 forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

- (BOOL)isPredictionTimeline:(id)a3 validAtDate:(id)a4 lastUpdatedAt:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    [v8 timeIntervalSinceDate:v9];
    v11 = v10 <= 86400.0 && v7 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)lowLikelihoodPeriodForPredictionWithKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_predictionLikelihoodPeriodsCache objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  if (!v6)
  {
    v7 = [(_DASPredictionManager *)v5 objectForKeyedSubscript:v4];
    v6 = [v7 lowLikelihoodPeriod];

    v8 = v5;
    objc_sync_enter(v8);
    [(NSMutableDictionary *)v5->_predictionLikelihoodPeriodsCache setObject:v6 forKeyedSubscript:v4];
    objc_sync_exit(v8);
  }

  v9 = v6;

  return v9;
}

- (void)asyncDo:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  predictionGenerationQueue = self->_predictionGenerationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000874E0;
  v10[3] = &unk_1001B7198;
  v8 = v5;
  v11 = v8;
  v9 = v4;
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

+ (id)getValuesForPrediction:(id)a3 tillEndDate:(id)a4 withIntervals:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:v8];
  if (v10 >= 0.0)
  {
    goto LABEL_3;
  }

  [v8 timeIntervalSinceDate:v9];
  if (v11 > 86400.0)
  {
    goto LABEL_3;
  }

  v14 = [v7 startDate];
  [v8 timeIntervalSinceDate:v14];
  if (v15 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v16 = [v7 endDate];
    [v16 timeIntervalSinceDate:v9];
    v18 = v17;

    if (v18 <= 0.0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_4;
    }

    v12 = +[NSMutableArray array];
    v19 = v9;
    v20 = v8;
    v21 = [v7 startDate];
    [v21 timeIntervalSinceDate:v19];
    v23 = v22;

    if (v23 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v23 / a5);
      if (v24)
      {
        for (i = 0; i != v24; ++i)
        {
          [v12 setObject:&off_1001CA078 atIndexedSubscript:i];
        }
      }

      v26 = [v7 startDate];

      v19 = v26;
    }

    v27 = [v7 endDate];
    [v20 timeIntervalSinceDate:v27];
    v29 = v28;

    v30 = v20;
    if (v29 > 0.0)
    {
      v30 = [v7 endDate];
    }

    v44 = v30;
    [v30 timeIntervalSinceDate:v19];
    v32 = v31;
    v14 = v19;
    v33 = (v32 / a5);
    v34 = v14;
    if (v24 < v33)
    {
      do
      {
        v35 = v34;
        v36 = [v7 valueAtDate:v34];
        [v12 setObject:v36 atIndexedSubscript:v24];

        v34 = [v35 dateByAddingTimeInterval:a5];

        ++v24;
      }

      while (v33 != v24);
      v24 = (v32 / a5);
    }

    v37 = [v7 endDate];
    [v20 timeIntervalSinceDate:v37];
    v39 = v38;

    if (v39 > 0.0)
    {
      v40 = [v7 endDate];
      [v20 timeIntervalSinceDate:v40];
      v42 = v41;

      v43 = (v42 / a5);
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