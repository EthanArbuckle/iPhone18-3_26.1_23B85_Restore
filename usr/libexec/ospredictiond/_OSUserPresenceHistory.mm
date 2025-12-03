@interface _OSUserPresenceHistory
+ (id)sharedInstance;
- (double)hoursUntilNextActivityAtDate:(id)date;
- (id)getHistoryStrata:(int64_t)strata endsBefore:(id)before;
- (id)getPastSliceTimewiseNearDate:(id)date whichStrata:(int64_t)strata earlyBoundaryInSeconds:(double)seconds laterBoundaryInSeconds:(double)inSeconds clipIntervals:(BOOL)intervals;
- (id)historicalSecondsSincePresentAtDate:(id)date whichStrata:(int64_t)strata;
- (void)clearUserPresenceHistory;
- (void)loadHistoryFromUnderlyingDataSource;
- (void)updateStratasWithQueryDate:(id)date;
@end

@implementation _OSUserPresenceHistory

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E770;
  block[3] = &unk_100094818;
  block[4] = self;
  if (qword_1000B6AD8 != -1)
  {
    dispatch_once(&qword_1000B6AD8, block);
  }

  v2 = qword_1000B6AD0;

  return v2;
}

- (void)loadHistoryFromUnderlyingDataSource
{
  v3 = os_transaction_create();
  v4 = BiomeLibrary();
  activity = [v4 Activity];
  level = [activity Level];

  v6 = [NSDate dateWithTimeIntervalSinceNow:-691200000.0];
  latestTimeZoneChange = [(_OSIntervalHistory *)self latestTimeZoneChange];

  if (latestTimeZoneChange)
  {
    latestTimeZoneChange2 = [(_OSIntervalHistory *)self latestTimeZoneChange];
    v9 = [v6 laterDate:latestTimeZoneChange2];

    v6 = v9;
  }

  v10 = [BMPublisherOptions alloc];
  v11 = +[NSDate now];
  v12 = [v10 initWithStartDate:v6 endDate:v11 maxEvents:8000 lastN:0 reversed:0];

  v31 = v12;
  v35 = [level publisherWithOptions:v12];
  v13 = BiomeLibrary();
  device = [v13 Device];
  timeZone = [device TimeZone];
  publisher = [timeZone publisher];

  v33 = [publisher orderedMergeWithOther:v35 comparator:&stru_1000955C0];
  v32 = [v33 filterWithIsIncluded:&stru_1000955E0];
  v16 = [[BPSTuple alloc] initWithFirst:0 second:0];
  v17 = [v32 scanWithInitial:v16 nextPartialResult:&stru_100095600];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10003EF18;
  v47[3] = &unk_100094B18;
  v47[4] = self;
  v18 = [v17 filterWithIsIncluded:v47];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10000329C;
  v45 = sub_100003590;
  v46 = objc_opt_new();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_10000329C;
  v39[4] = sub_100003590;
  v40 = 0;
  v19 = [v18 filterWithIsIncluded:&stru_100095620];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10003EFD8;
  v38[3] = &unk_100094B80;
  v38[4] = self;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003F03C;
  v37[3] = &unk_100094BA8;
  v37[4] = self;
  v37[5] = v39;
  v37[6] = &v41;
  v20 = [v19 sinkWithCompletion:v38 receiveInput:v37];

  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v42[5]];
  v21 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    allIntervalsSortByStartAsc = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    v23 = [allIntervalsSortByStartAsc count];
    *buf = 134217984;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Constructed %lu active interval(s) from Biome", buf, 0xCu);
  }

  v24 = +[NSDate now];
  [(_OSIntervalHistory *)self setLastRefreshDate:v24];

  v25 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    lastRefreshDate = [(_OSIntervalHistory *)self lastRefreshDate];
    oldestIntervalInHistory = [(_OSIntervalHistory *)self oldestIntervalInHistory];
    startDate = [oldestIntervalInHistory startDate];
    newestIntervalInHistory = [(_OSIntervalHistory *)self newestIntervalInHistory];
    endDate = [newestIntervalInHistory endDate];
    *buf = 138412802;
    v49 = lastRefreshDate;
    v50 = 2112;
    v51 = startDate;
    v52 = 2112;
    v53 = endDate;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Reloaded from Biome at %@ with activities ranging from %@ to %@", buf, 0x20u);
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)updateStratasWithQueryDate:(id)date
{
  dateCopy = date;
  lastQueryDate = [(_OSIntervalHistory *)self lastQueryDate];
  if (lastQueryDate)
  {
    v6 = lastQueryDate;
    lastQueryDate2 = [(_OSIntervalHistory *)self lastQueryDate];
    if (lastQueryDate2 == dateCopy)
    {
      intervalsSameDayOfWeekAsQuery = [(_OSUserPresenceHistory *)self intervalsSameDayOfWeekAsQuery];
      if (intervalsSameDayOfWeekAsQuery)
      {
        v16 = intervalsSameDayOfWeekAsQuery;
        intervalsSameWorkOrOffAsQuery = [(_OSUserPresenceHistory *)self intervalsSameWorkOrOffAsQuery];
        if (intervalsSameWorkOrOffAsQuery)
        {
          v18 = intervalsSameWorkOrOffAsQuery;
          intervalsRecentFromQuery = [(_OSUserPresenceHistory *)self intervalsRecentFromQuery];

          if (intervalsRecentFromQuery)
          {
            goto LABEL_7;
          }

          goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  allIntervalsSortByStartAsc = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v9 = [OSIntelligenceUtilities filterEvents:allIntervalsSortByStartAsc startOnSameWeekdayAs:dateCopy];
  [(_OSUserPresenceHistory *)self setIntervalsSameDayOfWeekAsQuery:v9];

  allIntervalsSortByStartAsc2 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v11 = [OSIntelligenceUtilities filterEvents:allIntervalsSortByStartAsc2 withSameWorkOrOffStatusAs:dateCopy];
  [(_OSUserPresenceHistory *)self setIntervalsSameWorkOrOffAsQuery:v11];

  allIntervalsSortByStartAsc3 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v13 = [OSIntelligenceUtilities filterEvents:allIntervalsSortByStartAsc3 isRecentForDate:dateCopy goingDaysBack:3 useEndDate:1];
  [(_OSUserPresenceHistory *)self setIntervalsRecentFromQuery:v13];

  v14 = [(_OSIntervalHistory *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AE28(dateCopy, self, v14);
  }

  [(_OSIntervalHistory *)self setLastQueryDate:dateCopy];
LABEL_7:
}

- (double)hoursUntilNextActivityAtDate:(id)date
{
  dateCopy = date;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allIntervalsSortByStartAsc = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
  v6 = [allIntervalsSortByStartAsc countByEnumeratingWithState:&v32 objects:v36 count:16];
  v7 = dateCopy;
  if (v6)
  {
    v8 = v6;
    v9 = *v33;
    v7 = dateCopy;
    while (2)
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(allIntervalsSortByStartAsc);
        }

        v12 = *(*(&v32 + 1) + 8 * v10);
        startDate = [v12 startDate];
        [startDate timeIntervalSinceDate:dateCopy];
        v15 = v14;

        if (v15 > 0.0)
        {
          startDate2 = [v12 startDate];
          [startDate2 timeIntervalSinceDate:v11];
          v18 = v17;

          if (v18 != 0.0)
          {
            v7 = v11;
            goto LABEL_12;
          }
        }

        endDate = [v12 endDate];
        v7 = [v11 laterDate:endDate];

        v10 = v10 + 1;
        v11 = v7;
      }

      while (v8 != v10);
      v8 = [allIntervalsSortByStartAsc countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [v7 timeIntervalSinceDate:dateCopy];
  v20 = 0.0;
  if (v21 <= 1800.0)
  {
    allIntervalsSortByStartAsc2 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003FA44;
    v30[3] = &unk_100095648;
    v31 = v7;
    v23 = [allIntervalsSortByStartAsc2 indexOfObjectPassingTest:v30];

    v20 = 24.0;
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      allIntervalsSortByStartAsc3 = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
      v25 = [allIntervalsSortByStartAsc3 objectAtIndexedSubscript:v23];
      startDate3 = [v25 startDate];
      [startDate3 timeIntervalSinceDate:dateCopy];
      v28 = v27 / 3600.0;

      v20 = fmin(v28, 24.0);
    }
  }

  return v20;
}

- (id)historicalSecondsSincePresentAtDate:(id)date whichStrata:(int64_t)strata
{
  dateCopy = date;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:dateCopy];
  v7 = objc_opt_new();
  oldestIntervalInHistory = [(_OSIntervalHistory *)self oldestIntervalInHistory];
  startDate = [oldestIntervalInHistory startDate];
  v10 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:dateCopy andDate:startDate];

  v23 = dateCopy;
  v11 = [OSIntelligenceUtilities getDailyAnchorsForDate:dateCopy whichStrata:strata withNrDaysHistory:v10];
  newestIntervalInHistory = [(_OSIntervalHistory *)self newestIntervalInHistory];
  endDate = [newestIntervalInHistory endDate];

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
        v20 = [v19 laterDate:endDate];

        if (v20 != v19)
        {
          [OSIntelligenceUtilities secondsSinceBecomingPresentAtDate:v19];
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

- (id)getHistoryStrata:(int64_t)strata endsBefore:(id)before
{
  beforeCopy = before;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:beforeCopy];
  if (strata > 1)
  {
    if (strata == 2)
    {
      v7 = 64;
      goto LABEL_13;
    }

    if (strata == 3)
    {
      v7 = 72;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!strata)
  {
LABEL_11:
    allIntervalsSortByStartAsc = [(_OSIntervalHistory *)self allIntervalsSortByStartAsc];
    goto LABEL_14;
  }

  if (strata != 1)
  {
LABEL_8:
    v8 = [(_OSIntervalHistory *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005AF68(strata, v8);
    }

    goto LABEL_11;
  }

  v7 = 56;
LABEL_13:
  allIntervalsSortByStartAsc = *(&self->super.super.isa + v7);
LABEL_14:
  v10 = allIntervalsSortByStartAsc;
  beforeCopy = [NSPredicate predicateWithFormat:@"endDate <= %@", beforeCopy];
  v12 = [v10 filteredArrayUsingPredicate:beforeCopy];

  return v12;
}

- (id)getPastSliceTimewiseNearDate:(id)date whichStrata:(int64_t)strata earlyBoundaryInSeconds:(double)seconds laterBoundaryInSeconds:(double)inSeconds clipIntervals:(BOOL)intervals
{
  intervalsCopy = intervals;
  dateCopy = date;
  [(_OSIntervalHistory *)self refreshCacheIfStaleWithQueryDate:dateCopy];
  v13 = objc_opt_new();
  if (seconds >= inSeconds)
  {
    v29 = [(_OSIntervalHistory *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10005AFE0(v29, seconds, inSeconds);
    }

    v18 = v13;
    v40 = v18;
  }

  else
  {
    v14 = [(_OSUserPresenceHistory *)self getHistoryStrata:strata endsBefore:dateCopy];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10004022C;
    v46[3] = &unk_100095670;
    v15 = dateCopy;
    v47 = v15;
    secondsCopy = seconds;
    inSecondsCopy = inSeconds;
    v16 = v14;
    v17 = [NSPredicate predicateWithBlock:v46];
    v18 = [v14 filteredArrayUsingPredicate:v17];

    if ([v18 count])
    {
      selfCopy = self;
      if (intervalsCopy)
      {
        strataCopy = strata;
        v35 = v17;
        v37 = v16;
        v38 = dateCopy;
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
              strataCopy = [OSIntelligenceUtilities clipInterval:v23 withTimewiseSliceDefineBy:v15 leftBoundary:seconds rightBoundary:inSeconds, strataCopy];
              v25 = [_OSUserPresenceInterval alloc];
              startDate = [strataCopy startDate];
              endDate = [strataCopy endDate];
              v28 = -[_OSUserPresenceInterval initWithStartDate:andEndDate:andPresenceStatus:](v25, "initWithStartDate:andEndDate:andPresenceStatus:", startDate, endDate, [v23 isPresentWithDisplay]);

              if ([(_OSIInterval *)v28 isValidInterval]&& [(_OSUserPresenceInterval *)v28 hasReasonableDuration])
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
          dateCopy = v38;
          v17 = v35;
          v18 = v36;
        }

        else
        {
          v32 = [(_OSIntervalHistory *)selfCopy log];
          dateCopy = v38;
          v17 = v35;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v52 = v15;
            v53 = 2048;
            strataCopy2 = strataCopy;
            v55 = 2048;
            secondsCopy3 = seconds;
            v57 = 2048;
            inSecondsCopy3 = inSeconds;
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
        strataCopy2 = strata;
        v55 = 2048;
        secondsCopy3 = seconds;
        v57 = 2048;
        inSecondsCopy3 = inSeconds;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "WARNING: vertical slice is empty for at %@ strata=%lu and bounds=(%.2f, %.2f)", buf, 0x2Au);
      }

      v40 = v18;
      v16 = v30;
    }
  }

  return v40;
}

- (void)clearUserPresenceHistory
{
  v3 = objc_opt_new();
  [(_OSIntervalHistory *)self setAllIntervalsSortByStartAsc:v3];

  v4 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  [(_OSIntervalHistory *)self setLatestTimeZoneChange:v4];
}

@end