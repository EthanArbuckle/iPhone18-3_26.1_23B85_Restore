@interface _OSActivityHistory
+ (BOOL)isValidBMStoreEventForInactivity:(id)a3;
+ (id)sharedInstance;
- (double)hoursUntilNextActivityAtDate:(id)a3;
- (id)getHistoryStrata:(int64_t)a3 endsBefore:(id)a4;
- (id)getPastSliceTimewiseNearDate:(id)a3 whichStrata:(int64_t)a4 earlyBoundaryInSeconds:(double)a5 laterBoundaryInSeconds:(double)a6 clipIntervals:(BOOL)a7;
- (id)historicalSecondsSinceInactiveAtDate:(id)a3 whichStrata:(int64_t)a4;
- (id)historicalTimesUntilNextActivityAtDate:(id)a3 whichStrata:(int64_t)a4 useDecay:(BOOL)a5;
- (void)clearActivityHistory;
- (void)loadHistoryFromUnderlyingDataSource;
- (void)updateStratasWithQueryDate:(id)a3;
@end

@implementation _OSActivityHistory

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C984;
  block[3] = &unk_100094818;
  block[4] = a1;
  if (qword_1000B69B0 != -1)
  {
    dispatch_once(&qword_1000B69B0, block);
  }

  v2 = qword_1000B69A8;

  return v2;
}

- (void)loadHistoryFromUnderlyingDataSource
{
  v3 = os_transaction_create();
  v4 = BiomeLibrary();
  v5 = [v4 Activity];
  v36 = [v5 Level];

  v6 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  v7 = [(_OSIntervalHistory *)self latestTimeZoneChange];

  if (v7)
  {
    v8 = [(_OSIntervalHistory *)self latestTimeZoneChange];
    v9 = [v6 laterDate:v8];

    v6 = v9;
  }

  v10 = [BMPublisherOptions alloc];
  v11 = +[NSDate now];
  v12 = [v10 initWithStartDate:v6 endDate:v11 maxEvents:8000 lastN:0 reversed:0];

  v31 = v12;
  v35 = [v36 publisherWithOptions:v12];
  v13 = BiomeLibrary();
  v14 = [v13 Device];
  v15 = [v14 TimeZone];
  v34 = [v15 publisher];

  v33 = [v34 orderedMergeWithOther:v35 comparator:&stru_100094A70];
  v32 = [v33 filterWithIsIncluded:&stru_100094AB0];
  v16 = [[BPSTuple alloc] initWithFirst:0 second:0];
  v17 = [v32 scanWithInitial:v16 nextPartialResult:&stru_100094AF0];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000D12C;
  v47[3] = &unk_100094B18;
  v47[4] = self;
  v18 = [v17 filterWithIsIncluded:v47];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10000320C;
  v45 = sub_100003548;
  v46 = objc_opt_new();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_10000320C;
  v39[4] = sub_100003548;
  v40 = 0;
  v19 = [v18 filterWithIsIncluded:&stru_100094B58];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000D1EC;
  v38[3] = &unk_100094B80;
  v38[4] = self;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000D250;
  v37[3] = &unk_100094BA8;
  v37[4] = self;
  v37[5] = v39;
  v37[6] = &v41;
  v20 = [v19 sinkWithCompletion:v38 receiveInput:v37];

  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v42[5]];
  v21 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    v23 = [v22 count];
    *buf = 134217984;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Constructed %lu active interval(s) from Biome", buf, 0xCu);
  }

  v24 = +[NSDate now];
  [(_OSIntervalHistory *)self setLastRefreshDate:v24];

  v25 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(_OSIntervalHistory *)self lastRefreshDate];
    v27 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
    v28 = [v27 startDate];
    v29 = [(_OSIntervalHistory *)self newestIntervalInHistory];
    v30 = [v29 endDate];
    *buf = 138412802;
    v49 = v26;
    v50 = 2112;
    v51 = v28;
    v52 = 2112;
    v53 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Reloaded from Biome at %@ with activities ranging from %@ to %@", buf, 0x20u);
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)updateStratasWithQueryDate:(id)a3
{
  v4 = a3;
  v5 = [(_OSIntervalHistory *)self lastQueryDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(_OSIntervalHistory *)self lastQueryDate];
    if (v7 == v4)
    {
      v15 = [(_OSActivityHistory *)self intervalsSameDayOfWeekAsQuery];
      if (v15)
      {
        v16 = v15;
        v17 = [(_OSActivityHistory *)self intervalsSameWorkOrOffAsQuery];
        if (v17)
        {
          v18 = v17;
          v19 = [(_OSActivityHistory *)self intervalsRecentFromQuery];

          if (v19)
          {
            goto LABEL_7;
          }

          goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  v8 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v9 = [OSIntelligenceUtilities filterEvents:v8 withDateDistance:7 fromDate:v4];
  [(_OSActivityHistory *)self setIntervalsSameDayOfWeekAsQuery:v9];

  v10 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v11 = [OSIntelligenceUtilities filterEvents:v10 withSameWorkOrOffStatusAs:v4];
  [(_OSActivityHistory *)self setIntervalsSameWorkOrOffAsQuery:v11];

  v12 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v13 = [OSIntelligenceUtilities filterEvents:v12 isRecentForDate:v4 goingDaysBack:3 useEndDate:1];
  [(_OSActivityHistory *)self setIntervalsRecentFromQuery:v13];

  v14 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AE28(v4, self, v14);
  }

  [(_OSIntervalHistory *)self setLastQueryDate:v4];
LABEL_7:
}

- (double)hoursUntilNextActivityAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000DAD4;
  v15[3] = &unk_100094BD0;
  v6 = v4;
  v16 = v6;
  v7 = [v5 indexOfObjectPassingTest:v15];

  v8 = 24.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    v10 = [v9 objectAtIndexedSubscript:v7];
    v11 = [v10 startDate];
    [v11 timeIntervalSinceDate:v6];
    v13 = v12 / 3600.0;

    v8 = fmin(v13, 24.0);
  }

  return v8;
}

- (id)historicalTimesUntilNextActivityAtDate:(id)a3 whichStrata:(int64_t)a4 useDecay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v8];
  v9 = objc_opt_new();
  v10 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  v11 = [v10 startDate];
  v12 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:v8 andDate:v11];

  [OSIntelligenceUtilities getDailyAnchorsForDate:v8 whichStrata:a4 withNrDaysHistory:v12];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:v8 andDate:v17];
        v19 = 1.0;
        if (v5)
        {
          [OSIntelligenceUtilities exponentialDecayByDateDistance:v18 withDegree:0.04];
          v19 = v20;
        }

        [(_OSActivityHistory *)self hoursUntilNextActivityAtDate:v17];
        v22 = [NSNumber numberWithDouble:v19 * v21];
        [v9 addObject:v22];
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return v9;
}

- (id)historicalSecondsSinceInactiveAtDate:(id)a3 whichStrata:(int64_t)a4
{
  v6 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v6];
  v7 = objc_opt_new();
  v8 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  v9 = [v8 startDate];
  v10 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:v6 andDate:v9];

  v23 = v6;
  v11 = [OSIntelligenceUtilities getDailyAnchorsForDate:v6 whichStrata:a4 withNrDaysHistory:v10];
  v12 = [(_OSIntervalHistory *)self newestIntervalInHistory];
  v13 = [v12 endDate];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v19 laterDate:v13];

        if (v20 != v19)
        {
          [OSIntelligenceUtilities secondsSinceBecomingInactiveAtDate:v19];
          v21 = [NSNumber numberWithDouble:?];
          [v7 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  return v7;
}

+ (BOOL)isValidBMStoreEventForInactivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 eventBody];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v4 eventBody];
  v9 = v8;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v9 = [v4 eventBody];
      v10 = [v9 hasStarting];
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v10 = [v8 hasInUseStatus];
LABEL_7:
  v12 = v10;

LABEL_9:
  return v12;
}

- (id)getHistoryStrata:(int64_t)a3 endsBefore:(id)a4
{
  v6 = a4;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v6];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = 64;
      goto LABEL_13;
    }

    if (a3 == 3)
    {
      v7 = 72;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_11:
    v9 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    goto LABEL_14;
  }

  if (a3 != 1)
  {
LABEL_8:
    v8 = [(_OSIntervalHistory *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005AF68(a3, v8);
    }

    goto LABEL_11;
  }

  v7 = 56;
LABEL_13:
  v9 = *(&self->super.super.isa + v7);
LABEL_14:
  v10 = v9;
  v11 = [NSPredicate predicateWithFormat:@"endDate <= %@", v6];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  return v12;
}

- (id)getPastSliceTimewiseNearDate:(id)a3 whichStrata:(int64_t)a4 earlyBoundaryInSeconds:(double)a5 laterBoundaryInSeconds:(double)a6 clipIntervals:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v12];
  v13 = objc_opt_new();
  if (a5 >= a6)
  {
    v29 = [(_OSIntervalHistory *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10005AFE0(v29, a5, a6);
    }

    v18 = v13;
    v40 = v18;
  }

  else
  {
    v14 = [(_OSActivityHistory *)self getHistoryStrata:a4 endsBefore:v12];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000E5A8;
    v46[3] = &unk_100094BF8;
    v15 = v12;
    v47 = v15;
    v48 = a5;
    v49 = a6;
    v16 = v14;
    v17 = [NSPredicate predicateWithBlock:v46];
    v18 = [v14 filteredArrayUsingPredicate:v17];

    if ([v18 count])
    {
      v39 = self;
      if (v7)
      {
        v34 = a4;
        v35 = v17;
        v37 = v16;
        v38 = v12;
        v40 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v36 = v18;
        obj = v18;
        v19 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v42 + 1) + 8 * i);
              v24 = [OSIntelligenceUtilities clipInterval:v23 withTimewiseSliceDefineBy:v15 leftBoundary:a5 rightBoundary:a6, v34];
              v25 = [_OSActivityInterval alloc];
              v26 = [v24 startDate];
              v27 = [v24 endDate];
              v28 = -[_OSActivityInterval initWithStartDate:andEndDate:andActiveStatus:](v25, "initWithStartDate:andEndDate:andActiveStatus:", v26, v27, [v23 isActive]);

              if ([(_OSIInterval *)v28 isValidInterval]&& [(_OSActivityInterval *)v28 hasReasonableDuration])
              {
                [v40 addObject:v28];
              }
            }

            v20 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v20);
        }

        if ([v40 count])
        {
          v16 = v37;
          v12 = v38;
          v17 = v35;
          v18 = v36;
        }

        else
        {
          v32 = [(_OSIntervalHistory *)v39 log];
          v12 = v38;
          v17 = v35;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v52 = v15;
            v53 = 2048;
            v54 = v34;
            v55 = 2048;
            v56 = a5;
            v57 = 2048;
            v58 = a6;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "WARNING: no interval left after clipping at %@ for strata=%lu and bounds=(%.2f, %.2f)", buf, 0x2Au);
          }

          v18 = v36;
          v16 = v37;
        }
      }

      else
      {
        v40 = v18;
      }
    }

    else
    {
      v30 = v16;
      v31 = [(_OSIntervalHistory *)self log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v52 = v15;
        v53 = 2048;
        v54 = a4;
        v55 = 2048;
        v56 = a5;
        v57 = 2048;
        v58 = a6;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "WARNING: vertical slice is empty for at %@ strata=%lu and bounds=(%.2f, %.2f)", buf, 0x2Au);
      }

      v40 = v18;
      v16 = v30;
    }
  }

  return v40;
}

- (void)clearActivityHistory
{
  v3 = objc_opt_new();
  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v3];

  v4 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  [(_OSIntervalHistory *)self setLatestTimeZoneChange:v4];
}

@end