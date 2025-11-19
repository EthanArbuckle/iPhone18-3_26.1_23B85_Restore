@interface _OSLockHistory
+ (BOOL)isLockedBiomeScreenLockedEvent:(id)a3;
+ (id)sharedInstance;
- (BOOL)didDateTakePlaceDuringRecentLongLocks:(id)a3;
- (BOOL)hasEnoughHistoryForInactivityPrediction;
- (id)getAllLockIntervalsEndingBefore:(id)a3;
- (id)lockedIntervalsQueryWithPredicate:(id)a3;
- (id)projectedDateOfHistorySufficiency;
- (id)unlockEventsIntersectingDateRangeFrom:(id)a3 to:(id)a4;
- (id)unlockedIntervalsQueryWithPredicate:(id)a3;
- (id)userHistoryDiagnosis;
- (id)visualizationFromLongLockHourBinsAtDate:(id)a3;
- (void)addLockIntervalAndSortAscendingByStartDate:(id)a3;
- (void)addLockIntervalsAndSortAscendingByStartDate:(id)a3;
- (void)clearLockAndUnlockHistory;
- (void)loadHistoryFromUnderlyingDataSource;
- (void)updateStratasWithQueryDate:(id)a3;
@end

@implementation _OSLockHistory

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C340;
  block[3] = &unk_100094818;
  block[4] = a1;
  if (qword_1000B6A98 != -1)
  {
    dispatch_once(&qword_1000B6A98, block);
  }

  v2 = qword_1000B6A90;

  return v2;
}

- (void)loadHistoryFromUnderlyingDataSource
{
  v33 = os_transaction_create();
  v3 = BiomeLibrary();
  v4 = [v3 Device];
  v38 = [v4 ScreenLocked];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  v6 = [(_OSIntervalHistory *)self latestTimeZoneChange];

  if (v6)
  {
    v7 = [(_OSIntervalHistory *)self latestTimeZoneChange];
    v8 = [v5 laterDate:v7];

    v5 = v8;
  }

  v9 = [BMPublisherOptions alloc];
  v10 = +[NSDate now];
  v11 = [v9 initWithStartDate:v5 endDate:v10 maxEvents:15000 lastN:0 reversed:0];

  v32 = v11;
  v37 = [v38 publisherWithOptions:v11];
  v12 = BiomeLibrary();
  v13 = [v12 Device];
  v14 = [v13 TimeZone];
  v36 = [v14 publisher];

  v35 = [v36 orderedMergeWithOther:v37 comparator:&stru_1000954B0];
  v34 = [v35 filterWithIsIncluded:&stru_1000954D0];
  v15 = [[BPSTuple alloc] initWithFirst:0 second:0];
  v16 = [v34 scanWithInitial:v15 nextPartialResult:&stru_1000954F0];

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10003CB8C;
  v55[3] = &unk_100094B18;
  v55[4] = self;
  v17 = [v16 filterWithIsIncluded:v55];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10000328C;
  v53 = sub_100003588;
  v54 = objc_opt_new();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000328C;
  v47 = sub_100003588;
  v48 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10000328C;
  v41[4] = sub_100003588;
  v42 = 0;
  v18 = [v17 filterWithIsIncluded:&stru_100095510];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10003CC4C;
  v40[3] = &unk_100094B80;
  v40[4] = self;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003CCB0;
  v39[3] = &unk_100095538;
  v39[4] = self;
  v39[5] = v41;
  v39[6] = &v49;
  v39[7] = &v43;
  v19 = [v18 sinkWithCompletion:v40 receiveInput:v39];

  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v50[5]];
  [(_OSLockHistory *)self setAllUnlocks:v44[5]];
  v20 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    v22 = [v21 count];
    v23 = [(_OSLockHistory *)self allUnlocks];
    v24 = [v23 count];
    *buf = 134218240;
    v57 = v22;
    v58 = 2048;
    v59 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Constructed %lu lock interval(s) and %lu unlock intervals from Biome", buf, 0x16u);
  }

  v25 = +[NSDate now];
  [(_OSIntervalHistory *)self setLastRefreshDate:v25];

  v26 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(_OSIntervalHistory *)self lastRefreshDate];
    v28 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
    v29 = [v28 startDate];
    v30 = [(_OSIntervalHistory *)self newestIntervalInHistory];
    v31 = [v30 endDate];
    *buf = 138412802;
    v57 = v27;
    v58 = 2112;
    v59 = v29;
    v60 = 2112;
    v61 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Reloaded from Biome at %@ with lock events ranging from %@ to %@", buf, 0x20u);
  }

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
}

- (void)updateStratasWithQueryDate:(id)a3
{
  v4 = a3;
  v5 = [(_OSIntervalHistory *)self lastQueryDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(_OSIntervalHistory *)self lastQueryDate];
    v8 = v7;
    if (v7 == v4)
    {
      v18 = [(_OSLockHistory *)self hourBinsOfLongestLocks];

      if (v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = [NSDate dateWithTimeInterval:v4 sinceDate:-864000.0];
  v10 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  v11 = [v10 startDate];
  v12 = [v9 laterDate:v11];

  [v4 timeIntervalSinceDate:v12];
  v14 = vcvtpd_s64_f64(v13 / 86400.0);
  v15 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v16 = [OSIntelligenceUtilities accumulativelyBinKLongestIntervals:v14 endAfter:v12 startBefore:v4 longerThan:v15 fromIntervals:7200.0];
  [(_OSLockHistory *)self setHourBinsOfLongestLocks:v16];

  v17 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218498;
    v20 = v14;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v4;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Updated hour bins of %ld longest locks ending after %@ & starting before date %@", &v19, 0x20u);
  }

  [(_OSIntervalHistory *)self setLastQueryDate:v4];
LABEL_7:
}

- (id)getAllLockIntervalsEndingBefore:(id)a3
{
  v4 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v4];
  v5 = [NSPredicate predicateWithFormat:@"endDate <= %@", v4];

  v6 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v7 = [v6 filteredArrayUsingPredicate:v5];

  return v7;
}

- (id)unlockEventsIntersectingDateRangeFrom:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v6];
  v8 = [NSPredicate predicateWithFormat:@"((startDate <= %@) AND (endDate >= %@))", v7, v6];

  v9 = [(_OSLockHistory *)self allUnlocks];
  v10 = [v9 filteredArrayUsingPredicate:v8];

  return v10;
}

- (BOOL)didDateTakePlaceDuringRecentLongLocks:(id)a3
{
  v4 = a3;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v4];
  [OSIntelligenceUtilities hourFromDate:v4];
  v6 = v5;

  v7 = [(_OSLockHistory *)self hourBinsOfLongestLocks];
  v8 = [v7 objectAtIndexedSubscript:v6];
  v9 = [v8 intValue] > 0;

  return v9;
}

- (id)visualizationFromLongLockHourBinsAtDate:(id)a3
{
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:a3];
  v4 = +[NSMutableString string];
  v5 = [(_OSLockHistory *)self hourBinsOfLongestLocks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      [v4 appendFormat:@"%02ld: ", v7];
      v8 = [(_OSLockHistory *)self hourBinsOfLongestLocks];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = [v9 integerValue];

      if (v10 >= 1)
      {
        do
        {
          [v4 appendString:@"*"];
          --v10;
        }

        while (v10);
      }

      [v4 appendString:@"\n"];
      ++v7;
      v11 = [(_OSLockHistory *)self hourBinsOfLongestLocks];
      v12 = [v11 count];
    }

    while (v12 > v7);
  }

  return v4;
}

- (BOOL)hasEnoughHistoryForInactivityPrediction
{
  v3 = +[NSDate now];
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v3];
  v4 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v5 = [v4 count];

  if (v5 < 0x40)
  {
    v10 = 0;
  }

  else
  {
    v6 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
    v7 = [v6 startDate];
    [v3 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = v9 >= 691200.0;
  }

  return v10;
}

- (id)userHistoryDiagnosis
{
  v3 = +[NSDate now];
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v3];

  v4 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v5 = [v4 count];

  v6 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  v21 = [(_OSIntervalHistory *)self newestIntervalInHistory];
  v7 = +[NSDate date];
  v8 = [v6 startDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [NSString stringWithFormat:@"[Amount of History] min required: %d days | actual: %f days", 8, v10 / 86400.0];
  v12 = [NSString stringWithFormat:@"[Number of Inactive Events] required: %d | actual: %lu", 64, v5];
  v13 = [(_OSLockHistory *)self projectedDateOfHistorySufficiency];
  v14 = +[NSLocale currentLocale];
  v15 = [v13 descriptionWithLocale:v14];
  v16 = [NSString stringWithFormat:@"<Projection> user should reach history sufficiency by %@", v15];

  v17 = +[NSDate now];
  v18 = [(_OSLockHistory *)self visualizationFromLongLockHourBinsAtDate:v17];

  v19 = [NSString stringWithFormat:@"%@\n%@\n\n%@\n\n<Oldest lock>\n%@\n<Newest lock>\n%@\nLock count: %lu (need at least %d)\n<Recent Longest Locks>\n%@", v11, v12, v16, v6, v21, v5, 64, v18];

  return v19;
}

- (id)projectedDateOfHistorySufficiency
{
  v3 = +[NSDate now];
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:v3];

  v4 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v5 = [v4 count];

  v6 = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  v7 = [(_OSIntervalHistory *)self newestIntervalInHistory];
  v8 = [v6 startDate];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:691200.0];

  if (v5 >= 2 && v6 && v7)
  {
    v10 = 64 - v5;
    v11 = [v7 endDate];
    v12 = [v6 startDate];
    [v11 timeIntervalSinceDate:v12];
    v14 = [NSNumber numberWithDouble:v5 / v13];

    [v14 doubleValue];
    v16 = v10 / v15;
    v17 = [v7 endDate];
    v18 = [NSDate dateWithTimeInterval:v17 sinceDate:v16];

    v19 = [v9 laterDate:v18];
    v20 = +[NSDate now];
    v21 = [(_OSIntervalHistory *)self latestTimeZoneChange];
    [v20 timeIntervalSinceDate:v21];
    v23 = v22;

    if (v23 <= 604800.0)
    {
      v25 = [(_OSIntervalHistory *)self latestTimeZoneChange];
      v26 = [NSDate dateWithTimeInterval:v25 sinceDate:604800.0];
      v24 = [v19 laterDate:v26];
    }

    else
    {
      v24 = v19;
    }
  }

  else
  {
    v24 = v9;
  }

  return v24;
}

- (id)lockedIntervalsQueryWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  return v6;
}

- (id)unlockedIntervalsQueryWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(_OSLockHistory *)self allUnlocks];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  return v6;
}

- (void)addLockIntervalAndSortAscendingByStartDate:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(_OSLockHistory *)self addLockIntervalsAndSortAscendingByStartDate:v5, v6];
}

- (void)addLockIntervalsAndSortAscendingByStartDate:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          if (v12 && [*(*(&v23 + 1) + 8 * v11) isValidInterval] && objc_msgSend(v12, "hasReasonableDuration"))
          {
            if ([v12 isLocked])
            {
              v13 = v5;
            }

            else
            {
              v13 = v6;
            }

            [v13 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v9);
    }

    v14 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    if ([v5 count])
    {
      v15 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
      v16 = [v15 mutableCopy];

      [v16 addObjectsFromArray:v5];
      v28 = v14;
      v17 = [NSArray arrayWithObjects:&v28 count:1];
      [v16 sortUsingDescriptors:v17];

      v18 = [v16 copy];
      [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v18];
    }

    else
    {
      v16 = 0;
    }

    if ([v6 count])
    {
      v19 = [(_OSLockHistory *)self allUnlocks];
      v20 = [v19 mutableCopy];

      [v20 addObjectsFromArray:v6];
      v27 = v14;
      v21 = [NSArray arrayWithObjects:&v27 count:1];
      [v20 sortUsingDescriptors:v21];

      v22 = [v20 copy];
      [(_OSLockHistory *)self setAllUnlocks:v22];

      v16 = v20;
    }
  }
}

- (void)clearLockAndUnlockHistory
{
  v3 = objc_opt_new();
  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v3];

  v4 = objc_opt_new();
  [(_OSLockHistory *)self setAllUnlocks:v4];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  [(_OSIntervalHistory *)self setLatestTimeZoneChange:v5];
}

+ (BOOL)isLockedBiomeScreenLockedEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 eventBody];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v4 eventBody];
  v8 = [v7 hasStarting];

  if (v8)
  {
    v9 = [v4 eventBody];
    v10 = [v9 starting];
  }

  else
  {
LABEL_5:
    v10 = 1;
  }

  return v10;
}

@end