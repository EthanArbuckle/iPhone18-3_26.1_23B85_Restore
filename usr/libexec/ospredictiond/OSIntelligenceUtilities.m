@interface OSIntelligenceUtilities
+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)a3;
+ (BOOL)deviceWasActiveWithinSeconds:(double)a3 withContext:(id)a4;
+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)a3 withContext:(id)a4;
+ (BOOL)extractLeftWatershed:(int *)a3 andRight:(int *)a4 fromFeatureName:(id)a5;
+ (BOOL)hasEnoughInactivityHistory;
+ (BOOL)hasRecentTravelHistory;
+ (BOOL)isActiveBiomeActivityLevelEvent:(id)a3;
+ (BOOL)isDeviceRarelyUsedRecently;
+ (BOOL)isInputDateInTimeRange:(id)a3 withEarlyTimeOfDay:(double)a4 andLateTimeOfDay:(double)a5;
+ (BOOL)isIntervalOnRestDay:(id)a3;
+ (BOOL)isIntervalTouchingTimewiseSlice:(id)a3 definedByReferenceDate:(id)a4 leftBoundary:(double)a5 rightBoundary:(double)a6;
+ (BOOL)isOBCSupported;
+ (BOOL)isPluggedInWithContext:(id)a3;
+ (BOOL)isRestDay:(id)a3;
+ (BOOL)isUserPresentWithDisplayBiomeActivityLevelEvent:(id)a3;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)legacyPastEventInQuestion:(id)a3 containsTimeOfReferenceDate:(id)a4;
+ (BOOL)pastEventInQuestion:(id)a3 containsTimeOfReferenceDate:(id)a4;
+ (BOOL)pastEventInQuestion:(id)a3 startsAfterTimeOfReferenceDate:(id)a4;
+ (MemoryFootprint)getMemoryUsage;
+ (double)areaOverEightyWithBatteryLevelDurations:(double *)a3;
+ (double)batteryLevelAtDate:(id)a3;
+ (double)clockwiseAngleFromPoint:(id)a3 toPoint:(id)a4;
+ (double)countIntervalsWithDateDecay:(id)a3 fromDate:(id)a4 withDecayDegree:(double)a5;
+ (double)cyclicalEncodingOfHoursInDay:(double)a3 useCos:(BOOL)a4;
+ (double)cyclicalEncodingOfWeekday:(id)a3 useCos:(BOOL)a4;
+ (double)dynamicDurationFromEvent:(id)a3 withAnchorDate:(id)a4;
+ (double)exponentialDecayByDateDistance:(int)a3 withDegree:(double)a4;
+ (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4;
+ (double)hourFromDate:(id)a3;
+ (double)hoursUntilUseFromBucketedUsage:(id)a3 withCurrentHour:(int)a4 withComponentsMinutes:(int64_t)a5;
+ (double)intersectedDurationOfPastEvent:(id)a3 withDateOfIntersection:(id)a4;
+ (double)maxOf:(id)a3;
+ (double)meanAbsoluteDeviationOf:(id)a3;
+ (double)meanEventDuration:(id)a3;
+ (double)meanOf:(id)a3;
+ (double)medianOf:(id)a3;
+ (double)medianTimeBetweenDescendingEvents:(id)a3;
+ (double)percentOfLongDurationsIn:(id)a3 withLongThreshold:(double)a4;
+ (double)percentageOfBatteryDurations:(double *)a3 aboveBatteryLevel:(double)a4;
+ (double)qthPercentileOf:(id)a3 withQ:(double)a4;
+ (double)secondsSinceBecomingInactiveAtDate:(id)a3;
+ (double)secondsSinceBecomingPresentAtDate:(id)a3;
+ (double)secondsUntilHour:(unint64_t)a3 fromDate:(id)a4;
+ (double)standardDeviationOf:(id)a3;
+ (double)sumDurationsOfEvents:(id)a3 intersectingDateRangeFrom:(id)a4 to:(id)a5;
+ (double)sumIntervalsWithDateDecay:(id)a3 fromDate:(id)a4 withDecayDegree:(double)a5;
+ (double)timeInSeconds:(id)a3;
+ (double)timeOfDayWithDate:(id)a3;
+ (double)totalPluginDurationAfter:(id)a3 withMinimumDuration:(double)a4 withPluginEvents:(id)a5;
+ (id)accumulativelyBinKLongestIntervals:(int64_t)a3 endAfter:(id)a4 startBefore:(id)a5 longerThan:(double)a6 fromIntervals:(id)a7;
+ (id)batteryProperties;
+ (id)clipInterval:(id)a3 withTimewiseSliceDefineBy:(id)a4 leftBoundary:(double)a5 rightBoundary:(double)a6;
+ (id)concatenateChargeSessions:(id)a3 withMaxDeltaSecondsBetweenEvents:(unint64_t)a4;
+ (id)dailyAverageActiveDurationsInHours:(int)a3;
+ (id)dateForPreferenceKey:(id)a3 inDomain:(id)a4;
+ (id)deviceUsageDiagnosis;
+ (id)dynamicDurationsFromEvents:(id)a3 withAnchorDate:(id)a4 withUnit:(double)a5 cappedAt:(double)a6;
+ (id)encodeTimeAsPointFromDate:(id)a3;
+ (id)events:(id)a3 forHourBin:(unint64_t)a4 date:(id)a5 withMaxDuration:(double)a6;
+ (id)extractPercentileOrQuantileNumberIfAnyFromFeatureName:(id)a3;
+ (id)filterEvents:(id)a3 isRecentForDate:(id)a4 goingDaysBack:(int64_t)a5 useEndDate:(BOOL)a6;
+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4;
+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4 withHourBinWidth:(unint64_t)a5;
+ (id)filterEvents:(id)a3 withDateDistance:(int)a4 fromDate:(id)a5;
+ (id)filterEvents:(id)a3 withMinimumDuration:(double)a4;
+ (id)filterEvents:(id)a3 withSameWorkOrOffStatusAs:(id)a4;
+ (id)filterEventsSortedByStartDateAscending:(id)a3 startsBefore:(id)a4 dynamicallyAroundDate:(id)a5 withHourBinWidth:(unint64_t)a6;
+ (id)generateRandomIntegersInRange:(_NSRange)a3 count:(int64_t)a4 seed:(unint64_t)a5;
+ (id)getAnchorOfDate:(id)a3 onTheDayOf:(id)a4;
+ (id)getCurrentBootSessionUUID;
+ (id)getDailyAnchorsForDate:(id)a3 whichStrata:(int64_t)a4 withNrDaysHistory:(int)a5;
+ (id)getDurationsFromEvents:(id)a3 withUnit:(double)a4 cappedAt:(double)a5;
+ (id)getTestVector:(id)a3;
+ (id)getUsageBucketsForEvents:(id)a3 forDate:(id)a4 withLog:(id)a5;
+ (id)lastLockDate;
+ (id)lastPluggedInDate;
+ (id)loadCompiledModelFromPath:(id)a3;
+ (id)log;
+ (id)longestK:(int64_t)a3 intervalsInArray:(id)a4;
+ (id)longestKIntervals:(int64_t)a3 endAfter:(id)a4 startBefore:(id)a5 fromIntervals:(id)a6;
+ (id)midnightDateFrom:(id)a3;
+ (id)numberForPreferenceKey:(id)a3 inDomain:(id)a4;
+ (id)percentageOfTimeForBatteryLevels:(double *)a3 withLog:(id)a4;
+ (id)pluginEventsBefore:(id)a3 withMinimumDuration:(double)a4 ignoringDisconnectsShorterThan:(double)a5;
+ (id)pluginEventsBefore:(id)a3 withMinimumDuration:(double)a4 withMinimumPlugoutBatteryLevel:(double)a5 ignoringDisconnectsShorterThan:(double)a6;
+ (id)predicateForEventsWithMaximumDuration:(double)a3;
+ (id)prefixStringFromFeatureName:(id)a3;
+ (id)projectedDateOfHistorySufficiencyWithError:(id *)a3;
+ (id)readDictForPreferenceKey:(id)a3 inDomain:(id)a4;
+ (id)readStringForPreferenceKey:(id)a3 inDomain:(id)a4;
+ (id)roundedDateFromDate:(id)a3;
+ (id)timelineEventDate:(id)a3 withDefaultsDomain:(id)a4;
+ (id)ultraLongInactiveDurationsInHours:(int)a3 withThreshold:(double)a4;
+ (id)userHistoryDiagnosis;
+ (int)pandasWeekdayOf:(id)a3;
+ (int)pandasWeekdayOf:(id)a3 forTimeZone:(id)a4;
+ (int64_t)currentBatteryLevelWithContext:(id)a3;
+ (int64_t)parseStrataTypeFromFeatureName:(id)a3;
+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)a3 withContext:(id)a4;
+ (void)getBatteryLevelDurations:(double *)a3;
+ (void)logMemoryUsageInternalForEvent:(id)a3;
+ (void)setDate:(id)a3 forPreferenceKey:(id)a4 inDomain:(id)a5;
@end

@implementation OSIntelligenceUtilities

+ (id)lastLockDate
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = sub_10000327C;
  v19[3] = sub_100003580;
  v20 = 0;
  v3 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:4 lastN:0 reversed:1];
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 ScreenLocked];
  v7 = [v6 publisherWithOptions:v3];
  v8 = [v7 filterWithIsIncluded:&stru_100095380];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100033350;
  v17[3] = &unk_100095018;
  v17[4] = &v18;
  v9 = [v8 sinkWithCompletion:&stru_1000953A0 shouldContinue:v17];

  v10 = *(v19[0] + 40);
  if (!v10)
  {
    v12 = [a1 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC40();
    }

    goto LABEL_8;
  }

  [v10 timeIntervalSinceNow];
  if (v11 > 0.0)
  {
    v12 = [a1 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC04();
    }

LABEL_8:

    v13 = 0;
    goto LABEL_12;
  }

  v14 = [a1 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [*(v19[0] + 40) timeIntervalSinceNow];
    sub_10005DBC4(v19, v21, v15);
  }

  v13 = *(v19[0] + 40);
LABEL_12:

  _Block_object_dispose(&v18, 8);

  return v13;
}

+ (id)lastPluggedInDate
{
  v3 = +[_CDClientContext userContext];
  if (![OSIntelligenceUtilities isPluggedInWithContext:v3])
  {
    v30 = 0;
    v31[0] = &v30;
    v31[1] = 0x3032000000;
    v31[2] = sub_10000327C;
    v31[3] = sub_100003580;
    v32 = 0;
    v8 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:8 lastN:0 reversed:1];
    v9 = BiomeLibrary();
    v10 = [v9 Device];
    v11 = [v10 Power];
    v12 = [v11 PluggedIn];
    v13 = [v12 publisherWithOptions:v8];
    v14 = [v13 filterWithIsIncluded:&stru_100095270];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002EACC;
    v29[3] = &unk_100095228;
    v29[4] = a1;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002EB30;
    v28[3] = &unk_100095018;
    v28[4] = &v30;
    v15 = [v14 sinkWithCompletion:v29 shouldContinue:v28];

    v16 = *(v31[0] + 40);
    if (v16)
    {
      [v16 timeIntervalSinceNow];
      if (v17 <= 0.0)
      {
        v25 = [a1 log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [*(v31[0] + 40) timeIntervalSinceNow];
          sub_10005D3A0(v31, v33, v26);
        }

        v24 = *(v31[0] + 40);
        goto LABEL_16;
      }

      v18 = [a1 log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005D3E0();
      }
    }

    else
    {
      v18 = [a1 log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005D41C();
      }
    }

    v24 = +[NSDate date];
LABEL_16:
    v23 = v24;

    _Block_object_dispose(&v30, 8);
    goto LABEL_20;
  }

  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 objectForKeyedSubscript:@"externalConnectedChangeDate"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"externalConnectedChangeDate"];
LABEL_18:
    v23 = v7;
    goto LABEL_19;
  }

  v19 = +[_CDContextQueries keyPathForPluginStatus];
  v20 = [v3 objectForKeyedSubscript:v19];
  v21 = [v20 BOOLValue];

  if (!v21)
  {
    v7 = +[NSDate date];
    goto LABEL_18;
  }

  v22 = +[_CDContextQueries keyPathForPluginStatus];
  v23 = [v3 lastModifiedDateForContextualKeyPath:v22];

LABEL_19:
LABEL_20:

  return v23;
}

+ (id)log
{
  v2 = qword_1000B6A78;
  if (!qword_1000B6A78)
  {
    v3 = os_log_create("com.apple.osintelligence", "utilities");
    v4 = qword_1000B6A78;
    qword_1000B6A78 = v3;

    v2 = qword_1000B6A78;
  }

  return v2;
}

+ (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

+ (BOOL)isiPod
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPod"];

  return v3;
}

+ (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

+ (id)getCurrentBootSessionUUID
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v3, &size, 0, 0);
  v4 = [NSString stringWithUTF8String:v3];
  free(v3);
  v5 = [a1 log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current boot session UUID: %@", buf, 0xCu);
  }

  return v4;
}

+ (BOOL)isOBCSupported
{
  v2 = objc_opt_class();

  return [v2 isiPhone];
}

+ (id)batteryProperties
{
  v2 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    properties = 0;
    IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
    v5 = properties;
    v6 = [(__CFDictionary *)properties copy];

    IOObjectRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)batteryLevelAtDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceNow];
  if (v5 <= -10.0)
  {
    v24 = 0;
    v25[0] = &v24;
    v25[1] = 0x2020000000;
    v25[2] = 0;
    v12 = [[BMPublisherOptions alloc] initWithStartDate:v4 endDate:0 maxEvents:20 lastN:0 reversed:1];
    v13 = BiomeLibrary();
    v14 = [v13 Device];
    v15 = [v14 Power];
    v16 = [v15 BatteryLevel];
    v17 = [v16 publisherWithOptions:v12];
    v18 = [v17 filterWithIsIncluded:&stru_100095208];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002E170;
    v23[3] = &unk_100095228;
    v23[4] = a1;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002E1D4;
    v22[3] = &unk_100095018;
    v22[4] = &v24;
    v19 = [v18 sinkWithCompletion:v23 shouldContinue:v22];

    v20 = [a1 log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D0A4(v4, v25);
    }

    v11 = *(v25[0] + 24);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v6 = +[_CDClientContext userContext];
    v7 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = +[_CDContextQueries batteryPercentageKey];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 integerValue];
  }

  return v11;
}

+ (void)getBatteryLevelDurations:(double *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000327C;
  v27 = sub_100003580;
  v28 = 0;
  v5 = BiomeLibrary();
  v6 = [v5 Device];
  v7 = [v6 Power];
  v8 = [v7 BatteryLevel];
  v9 = [v8 publisher];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002E4CC;
  v22[3] = &unk_100095228;
  v22[4] = a1;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002E530;
  v21[3] = &unk_100095250;
  v21[4] = &v23;
  v21[5] = a1;
  v21[6] = a3;
  v10 = [v9 sinkWithCompletion:v22 receiveInput:v21];

  if (v24[5])
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
    [v24[5] timestamp];
    v15 = v14;

    v16 = [v24[5] eventBody];
    [v16 batteryPercentage];
    v18 = v17;

    if (v18 >= 0x65)
    {
      v19 = [a1 log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [NSNumber numberWithInteger:v18];
        sub_10005D1C8(v20, buf, v19);
      }
    }

    else
    {
      a3[v18] = v13 - v15 + a3[v18];
    }
  }

  _Block_object_dispose(&v23, 8);
}

+ (double)areaOverEightyWithBatteryLevelDurations:(double *)a3
{
  bzero(a3, 0x328uLL);
  [OSIntelligenceUtilities getBatteryLevelDurations:a3];

  [OSIntelligenceUtilities percentageOfBatteryDurations:a3 aboveBatteryLevel:75.0];
  return result;
}

+ (double)percentageOfBatteryDurations:(double *)a3 aboveBatteryLevel:(double)a4
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = a3[v4];
    v6 = v6 + v7;
    v8 = v5 + v7;
    if (v4 >= a4)
    {
      v5 = v8;
    }

    ++v4;
  }

  while (v4 != 101);
  if (v6 != 0.0)
  {
    return v5 / v6;
  }

  v9 = [a1 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10005D364();
  }

  return 0.0;
}

+ (id)percentageOfTimeForBatteryLevels:(double *)a3 withLog:(id)a4
{
  v5 = a4;
  v6 = [NSMutableArray arrayWithCapacity:4];
  v7 = 0;
  memset(v24, 0, sizeof(v24));
  v8 = 0.0;
  do
  {
    v9 = v7 / 0x19u;
    if (v9 >= 3)
    {
      v9 = 3;
    }

    v10 = a3[v7];
    *(v24 + v9) = v10 + *(v24 + v9);
    v8 = v8 + v10;
    ++v7;
  }

  while (v7 != 101);
  for (i = 0; i != 4; ++i)
  {
    v12 = *(v24 + i);
    if (v12 <= 0.0)
    {
      [v6 setObject:&off_10009B6D0 atIndexedSubscript:i];
    }

    else
    {
      v13 = [NSNumber numberWithDouble:v12 / v8];
      [v6 setObject:v13 atIndexedSubscript:i];

      v14 = v5;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [NSNumber numberWithInt:i];
        v16 = [NSNumber numberWithDouble:v12];
        *buf = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Quartile %@: %@", buf, 0x16u);
      }
    }
  }

  v17 = v5;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [NSNumber numberWithDouble:v8];
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Desktop Quartile Bins %@ with totalDuration %@", buf, 0x16u);
  }

  return v6;
}

+ (int64_t)currentBatteryLevelWithContext:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryPercentageKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

+ (BOOL)isPluggedInWithContext:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryExternalConnectedKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)deviceWasActiveWithinSeconds:(double)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = +[_CDContextQueries keyPathForInUseStatus];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  if ((v9 & 5) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = +[_CDContextQueries keyPathForInUseStatus];
    v12 = [v6 lastModifiedDateForContextualKeyPath:v11];
    [v12 timeIntervalSinceNow];
    v14 = -v13;

    if (v14 <= a3)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v15 = [BMPublisherOptions alloc];
      v16 = [NSDate dateWithTimeIntervalSinceNow:-a3];
      v17 = +[NSDate distantFuture];
      v18 = [v15 initWithStartDate:v16 endDate:v17 maxEvents:1000 lastN:0 reversed:0];

      v19 = BiomeLibrary();
      v20 = [v19 Activity];
      v21 = [v20 Level];
      v22 = [v21 publisherWithOptions:v18];
      v23 = [v22 filterWithIsIncluded:&stru_100095290];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10002EE9C;
      v27[3] = &unk_100095228;
      v27[4] = a1;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10002EF00;
      v26[3] = &unk_100095018;
      v26[4] = &v28;
      v24 = [v23 sinkWithCompletion:v27 shouldContinue:v26];

      v10 = *(v29 + 24);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = +[_CDContextQueries batteryExternalConnectedKey];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = +[_CDContextQueries batteryExternalConnectedChangeDateKey];
    v12 = [v7 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v13 = +[_CDContextQueries keyPathForPluginStatus];
      v12 = [v5 lastModifiedDateForContextualKeyPath:v13];
    }

    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;

    v17 = v16 < a3 && v16 > 0.0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryAdapterIsWirelessKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (id)pluginEventsBefore:(id)a3 withMinimumDuration:(double)a4 ignoringDisconnectsShorterThan:(double)a5
{
  v25 = a3;
  v22 = os_transaction_create();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000327C;
  v38 = sub_100003580;
  v39 = +[NSMutableArray array];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10000327C;
  v32[4] = sub_100003580;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10000327C;
  v30[4] = sub_100003580;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10000327C;
  v28[4] = sub_100003580;
  v29 = 0;
  v7 = [BMPublisherOptions alloc];
  v8 = [v25 dateByAddingTimeInterval:-5184000.0];
  v9 = [v7 initWithStartDate:v8 endDate:v25 maxEvents:0 lastN:0 reversed:0];

  v24 = BiomeLibrary();
  v10 = [v24 Device];
  v11 = [v10 Power];
  v12 = [v11 PluggedIn];
  v13 = [v12 publisherWithOptions:v9];
  v14 = BiomeLibrary();
  v15 = [v14 Device];
  v16 = [v15 TimeZone];
  v17 = [v16 publisherWithOptions:v9];
  v18 = [v13 orderedMergeWithOther:v17 comparator:&stru_1000952B0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002F5D4;
  v27[3] = &unk_100095228;
  v27[4] = a1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002F638;
  v26[3] = &unk_1000952D8;
  v26[4] = v28;
  v26[5] = v30;
  v26[6] = v32;
  v26[7] = &v34;
  *&v26[8] = a5;
  *&v26[9] = a4;
  v19 = [v18 sinkWithCompletion:v27 receiveInput:v26];

  v20 = v35[5];
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);

  return v20;
}

+ (id)pluginEventsBefore:(id)a3 withMinimumDuration:(double)a4 withMinimumPlugoutBatteryLevel:(double)a5 ignoringDisconnectsShorterThan:(double)a6
{
  v33 = a3;
  v24 = os_transaction_create();
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10000327C;
  v50 = sub_100003580;
  v51 = +[NSMutableArray array];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_10000327C;
  v44[4] = sub_100003580;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_10000327C;
  v42[4] = sub_100003580;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_10000327C;
  v40[4] = sub_100003580;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_10000327C;
  v38[4] = sub_100003580;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = -1;
  v9 = [BMPublisherOptions alloc];
  v10 = [v33 dateByAddingTimeInterval:-5184000.0];
  v11 = [v9 initWithStartDate:v10 endDate:v33 maxEvents:0 lastN:0 reversed:0];

  v32 = BiomeLibrary();
  v31 = [v32 Device];
  v30 = [v31 Power];
  v29 = [v30 PluggedIn];
  v26 = [v29 publisherWithOptions:v11];
  v28 = BiomeLibrary();
  v27 = [v28 Device];
  v12 = [v27 TimeZone];
  v13 = [v12 publisherWithOptions:v11];
  v52[0] = v13;
  v14 = BiomeLibrary();
  v15 = [v14 Device];
  v16 = [v15 Power];
  v17 = [v16 BatteryLevel];
  v18 = [v17 publisherWithOptions:v11];
  v52[1] = v18;
  v19 = [NSArray arrayWithObjects:v52 count:2];
  v20 = [v26 orderedMergeWithOthers:v19 comparator:&stru_1000952F8];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002FF0C;
  v35[3] = &unk_100095228;
  v35[4] = a1;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10002FF70;
  v34[3] = &unk_100095320;
  v34[4] = v38;
  v34[5] = v40;
  v34[6] = v42;
  v34[7] = v36;
  v34[8] = v44;
  v34[9] = &v46;
  *&v34[10] = a6;
  *&v34[11] = a4;
  *&v34[12] = a5;
  v34[13] = a1;
  v21 = [v20 sinkWithCompletion:v35 receiveInput:v34];

  v22 = v47[5];
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  return v22;
}

+ (id)timelineEventDate:(id)a3 withDefaultsDomain:(id)a4
{
  v6 = a3;
  v7 = CFPreferencesCopyAppValue(@"timeline", a4);
  v8 = [v7 mutableCopy];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = a1;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"event"];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            v18 = [v14 objectForKeyedSubscript:@"date"];
            [v18 doubleValue];
            v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

            v19 = [v21 log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              sub_10005D6D8();
            }

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_14:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (double)totalPluginDurationAfter:(id)a3 withMinimumDuration:(double)a4 withPluginEvents:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 startDate];
        [v7 timeIntervalSinceDate:v15];
        v17 = v16;

        if (v17 <= 0.0)
        {
          [v14 duration];
          if (v18 >= a4)
          {
            [v14 duration];
            v12 = v12 + v12 + v19;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

+ (BOOL)hasEnoughInactivityHistory
{
  v2 = +[_OSLockHistory sharedInstance];
  v3 = [v2 hasEnoughHistoryForInactivityPrediction];

  return v3;
}

+ (id)projectedDateOfHistorySufficiencyWithError:(id *)a3
{
  v3 = +[_OSLockHistory sharedInstance];
  v4 = [v3 projectedDateOfHistorySufficiency];

  return v4;
}

+ (id)userHistoryDiagnosis
{
  v2 = +[_OSLockHistory sharedInstance];
  v3 = [v2 userHistoryDiagnosis];

  return v3;
}

+ (BOOL)hasRecentTravelHistory
{
  v2 = +[_OSLockHistory sharedInstance];
  v3 = +[NSDate now];
  [v2 refreshCacheIfStaleWithQueryDate:v3];

  v4 = [v2 latestTimeZoneChange];
  if (v4)
  {
    v5 = +[NSDate now];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6 <= 604800.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isDeviceRarelyUsedRecently
{
  v3 = [a1 dailyAverageActiveDurationsInHours:7];
  [OSIntelligenceUtilities meanOf:v3];
  v5 = v4 * 3600.0 < 1800.0;
  v6 = [a1 ultraLongInactiveDurationsInHours:7 withThreshold:50400.0];
  v7 = [v6 valueForKeyPath:@"@sum.self"];
  [v7 doubleValue];
  if (v8 * 3600.0 > 144000.0)
  {
    v5 = 1;
  }

  return v5;
}

+ (id)deviceUsageDiagnosis
{
  v3 = [a1 isDeviceRarelyUsedRecently];
  v4 = &stru_100096C80;
  if (v3)
  {
    v4 = @"NOT ";
  }

  v5 = [NSString stringWithFormat:@"This device is %@frequently used in the past %d days.", v4, 7];
  v6 = v5;
  if (v3)
  {
    v7 = [a1 dailyAverageActiveDurationsInHours:7];
    [OSIntelligenceUtilities meanOf:v7];
    v9 = [NSString stringWithFormat:@"In the past %d days, the device is on average used for %.2f hours daily (we recommend >%.2f hours)\n  -> daily usages: %@", 7, v8, 0x3FE0000000000000, v7];
    v10 = [a1 ultraLongInactiveDurationsInHours:7 withThreshold:50400.0];
    v11 = [v10 valueForKeyPath:@"@sum.self"];
    [v11 doubleValue];
    v13 = [NSString stringWithFormat:@"In the past %d days, the device has in total %.2f hours of ultra long inactivity (we recommend <%.2f hours)\n  -> ultra long durations: %@", 7, v12, 0x4044000000000000, v10];
    v14 = [NSString stringWithFormat:@"%@\n%@\n%@\nInactivity prediction accuracy is NOT guaranteed on low-usage devices! Please use your device more.", v6, v9, v13];
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

+ (id)ultraLongInactiveDurationsInHours:(int)a3 withThreshold:(double)a4
{
  v6 = +[NSMutableArray array];
  v7 = [NSDate dateWithTimeIntervalSinceNow:-a3 * 86400.0];
  v8 = +[_OSLockHistory sharedInstance];
  v9 = [NSPredicate predicateWithFormat:@"startDate >= %@", v7];
  v10 = [NSNumber numberWithDouble:a4];
  v11 = [NSPredicate predicateWithFormat:@"duration >= %@", v10];

  v25 = v11;
  v26 = v9;
  v33[0] = v9;
  v33[1] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:2];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  v27 = v8;
  v14 = [v8 lockedIntervalsQueryWithPredicate:v13];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v19 endDate];
        v21 = [v19 startDate];
        [v20 timeIntervalSinceDate:v21];
        v23 = [NSNumber numberWithDouble:v22 / 3600.0];
        [v6 addObject:v23];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  return v6;
}

+ (id)dailyAverageActiveDurationsInHours:(int)a3
{
  v24 = +[NSMutableArray array];
  if (a3 >= 1)
  {
    v4 = 0;
    v23 = a3;
    do
    {
      v5 = [NSDate dateWithTimeIntervalSinceNow:v4 * -86400.0];
      v6 = v4 + 1;
      v7 = [NSDate dateWithTimeIntervalSinceNow:(v4 + 1) * -86400.0];
      v8 = +[_OSLockHistory sharedInstance];
      v25 = v7;
      v26 = v5;
      v32[0] = v7;
      v32[1] = v5;
      v9 = [NSArray arrayWithObjects:v32 count:2];
      v10 = [NSPredicate predicateWithFormat:@"startDate BETWEEN %@", v9];

      v11 = [v8 unlockedIntervalsQueryWithPredicate:v10];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        v15 = 0.0;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            v18 = [v17 endDate];
            v19 = [v17 startDate];
            [v18 timeIntervalSinceDate:v19];
            v15 = v15 + v20;
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 0.0;
      }

      v21 = [NSNumber numberWithDouble:v15 / 3600.0];
      [v24 setObject:v21 atIndexedSubscript:v4];

      ++v4;
    }

    while (v6 != v23);
  }

  return v24;
}

+ (BOOL)isInputDateInTimeRange:(id)a3 withEarlyTimeOfDay:(double)a4 andLateTimeOfDay:(double)a5
{
  [a1 timeOfDayWithDate:a3];
  v8 = v7 >= a4;
  if (v7 <= a5)
  {
    v8 = 1;
  }

  v9 = v7 >= a4;
  if (v7 > a5)
  {
    v9 = 0;
  }

  if (a4 <= a5)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

+ (double)secondsUntilHour:(unint64_t)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:252 fromDate:v5];
  v8 = [v7 hour];
  [v7 setHour:a3];
  [v7 setMinute:0];
  [v7 setSecond:0];
  v9 = [v6 dateFromComponents:v7];
  v10 = v9;
  if (v8 > a3)
  {
    v11 = [v9 dateByAddingTimeInterval:86400.0];

    v10 = v11;
  }

  [v10 timeIntervalSinceDate:v5];
  v13 = v12;

  return v13;
}

+ (BOOL)isRestDay:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v3 dateByAddingTimeInterval:14400.0];

  LOBYTE(v3) = [v4 isDateInWeekend:v5];
  return v3;
}

+ (BOOL)isIntervalOnRestDay:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v3 startDate];
  v6 = [v4 components:544 fromDate:v5];

  v7 = [v3 endDate];

  v8 = [v4 components:544 fromDate:v7];

  v9 = [v6 weekday] == 6 && objc_msgSend(v6, "hour") > 19;
  v10 = [v6 weekday] == 7 || objc_msgSend(v8, "weekday") == 7;
  if ([v8 weekday] != 1)
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v11 = [v8 hour] < 20;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = v10 || v11;
LABEL_12:

  return v12 & 1;
}

+ (id)getAnchorOfDate:(id)a3 onTheDayOf:(id)a4
{
  v6 = a3;
  v7 = +[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", v6, -[a1 datewiseDistanceBetweenDate:v6 andDate:a4] * 86400.0);

  return v7;
}

+ (BOOL)isIntervalTouchingTimewiseSlice:(id)a3 definedByReferenceDate:(id)a4 leftBoundary:(double)a5 rightBoundary:(double)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v12 = [a1 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005D7C0();
    }

    goto LABEL_7;
  }

  if (a5 > a6)
  {
    v12 = [a1 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005D74C();
    }

LABEL_7:

    v13 = 0;
    goto LABEL_12;
  }

  v14 = [v10 startDate];
  v15 = [a1 getAnchorOfDate:v11 onTheDayOf:v14];

  v16 = [NSDate dateWithTimeInterval:v15 sinceDate:a5];
  v17 = [NSDate dateWithTimeInterval:v15 sinceDate:a6];
  v18 = [v10 endDate];
  if ([v18 compare:v16] == 1)
  {
    v19 = [v10 startDate];
    v13 = [v19 compare:v17] == -1;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  return v13;
}

+ (id)clipInterval:(id)a3 withTimewiseSliceDefineBy:(id)a4 leftBoundary:(double)a5 rightBoundary:(double)a6
{
  v10 = a3;
  v11 = a4;
  if (a5 <= a6)
  {
    v14 = [v10 startDate];
    v15 = [a1 getAnchorOfDate:v11 onTheDayOf:v14];

    v16 = [NSDate dateWithTimeInterval:v15 sinceDate:a5];
    v17 = [NSDate dateWithTimeInterval:v15 sinceDate:a6];
    v18 = [v10 endDate];
    v19 = [v16 earlierDate:v18];
    v20 = [v10 endDate];
    v21 = v20;
    if (v19 == v20)
    {

      v13 = 0;
    }

    else
    {
      v22 = [v10 startDate];
      v23 = [v17 earlierDate:v22];

      if (v23 == v17)
      {
        v13 = 0;
        goto LABEL_11;
      }

      v24 = [v10 startDate];
      v18 = [v16 laterDate:v24];

      v25 = [v10 endDate];
      v19 = [v17 earlierDate:v25];

      v13 = [v10 copyWithZone:0];
      [v13 setStartDate:v18];
      [v13 setEndDate:v19];
    }

LABEL_11:
    goto LABEL_12;
  }

  v12 = [a1 log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10005D74C();
  }

  v13 = v10;
LABEL_12:

  return v13;
}

+ (double)clockwiseAngleFromPoint:(id)a3 toPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] == 2 && objc_msgSend(v7, "count") == 2)
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v6 objectAtIndexedSubscript:0];
    [v11 doubleValue];
    v13 = atan2(v10, v12);

    v14 = [v7 objectAtIndexedSubscript:1];
    [v14 doubleValue];
    v16 = v15;
    v17 = [v7 objectAtIndexedSubscript:0];
    [v17 doubleValue];
    v19 = atan2(v16, v18);

    v20 = fmod(v13 - v19, 6.28318531);
    if (v20 < 0.0)
    {
      v20 = v20 + 6.28318531;
    }

    v21 = v20 * 57.2957795;
  }

  else
  {
    v22 = [a1 log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10005D7FC();
    }

    v21 = -1.0;
  }

  return v21;
}

+ (id)encodeTimeAsPointFromDate:(id)a3
{
  [a1 timeOfDayWithDate:a3];
  v4 = __sincos_stret(v3 * 6.28318531 / 24.0);
  v5 = [NSNumber numberWithDouble:v4.__cosval];
  v6 = [NSNumber numberWithDouble:v4.__sinval];
  v9[0] = v5;
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

+ (BOOL)legacyPastEventInQuestion:(id)a3 containsTimeOfReferenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 >= 0.0)
  {
    v12 = [v6 startDate];
    v13 = [a1 encodeTimeAsPointFromDate:v12];

    v14 = [v6 endDate];
    v15 = [a1 encodeTimeAsPointFromDate:v14];

    v16 = [a1 encodeTimeAsPointFromDate:v7];
    [a1 clockwiseAngleFromPoint:v16 toPoint:v13];
    v18 = v17 < 180.0;
    [a1 clockwiseAngleFromPoint:v16 toPoint:v15];
    v11 = v19 > 180.0 && v18;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)pastEventInQuestion:(id)a3 containsTimeOfReferenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 < 0.0)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  v13 = [v6 endDate];
  v14 = [v6 startDate];
  [v13 timeIntervalSinceDate:v14];
  v16 = v15;

  if (v16 <= 0.0)
  {
    if (v16 < 0.0)
    {
      v23 = [a1 log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005D86C(v6);
      }
    }

    goto LABEL_2;
  }

  if (v16 >= 86400.0)
  {
    v11 = 1;
  }

  else
  {
    v17 = [v6 startDate];
    [a1 timeOfDayWithDate:v17];
    v19 = v18;

    v20 = [v6 endDate];
    [a1 timeOfDayWithDate:v20];
    v22 = v21;

    v11 = [a1 isInputDateInTimeRange:v7 withEarlyTimeOfDay:v19 andLateTimeOfDay:v22];
  }

LABEL_3:

  return v11;
}

+ (BOOL)pastEventInQuestion:(id)a3 startsAfterTimeOfReferenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 >= 0.0)
  {
    v12 = [v6 startDate];
    v13 = [a1 encodeTimeAsPointFromDate:v12];

    v14 = [a1 encodeTimeAsPointFromDate:v7];
    [a1 clockwiseAngleFromPoint:v13 toPoint:v14];
    v11 = v15 < 180.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (double)percentOfLongDurationsIn:(id)a3 withLongThreshold:(double)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      v11 = a4 / 3600.0;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v17 + 1) + 8 * i) doubleValue];
          if (v13 >= v11)
          {
            ++v9;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
      v14 = v9;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v14 / [v6 count];
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

+ (double)cyclicalEncodingOfHoursInDay:(double)a3 useCos:(BOOL)a4
{
  v4 = a3 * 6.28318531 / 24.0;
  if (a4)
  {
    return cos(v4);
  }

  else
  {
    return sin(v4);
  }
}

+ (double)cyclicalEncodingOfWeekday:(id)a3 useCos:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 pandasWeekdayOf:a3] * 6.28318531 / 6.0;
  if (v4)
  {

    return cos(v5);
  }

  else
  {

    return sin(v5);
  }
}

+ (id)dynamicDurationsFromEvents:(id)a3 withAnchorDate:(id)a4 withUnit:(double)a5 cappedAt:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = +[NSMutableArray array];
  if ([v10 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v16 = *v25;
    while (1)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        [a1 dynamicDurationFromEvent:v18 withAnchorDate:v11];
        if (v19 <= 0.0)
        {
          if (v19 >= 0.0)
          {
            continue;
          }

          v21 = [a1 log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v18;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error: extracted <0 duration from event %@. Abandoning event.", buf, 0xCu);
          }
        }

        else
        {
          if (v19 >= a6)
          {
            v20 = a6;
          }

          else
          {
            v20 = v19;
          }

          if (a6 > 0.0)
          {
            v19 = v20;
          }

          v21 = [NSNumber numberWithDouble:v19 / a5];
          [v12 addObject:v21];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (!v15)
      {
LABEL_20:

        v10 = v23;
        break;
      }
    }
  }

  return v12;
}

+ (double)dynamicDurationFromEvent:(id)a3 withAnchorDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  v9 = [v6 startDate];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  if ([OSIntelligenceUtilities pastEventInQuestion:v6 containsTimeOfReferenceDate:v7])
  {
    [a1 intersectedDurationOfPastEvent:v6 withDateOfIntersection:v7];
    v11 = v12;
  }

  return v11;
}

+ (double)intersectedDurationOfPastEvent:(id)a3 withDateOfIntersection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -1.0;
  if (v6)
  {
    if ([OSIntelligenceUtilities pastEventInQuestion:v6 containsTimeOfReferenceDate:v7])
    {
      v9 = [v6 endDate];
      v10 = [a1 encodeTimeAsPointFromDate:v9];

      v11 = [a1 encodeTimeAsPointFromDate:v7];
      [a1 clockwiseAngleFromPoint:v10 toPoint:v11];
      v8 = v12 * 86400.0 / 360.0;
    }

    else
    {
      v13 = [a1 log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10005D93C(v7, v6);
      }
    }
  }

  return v8;
}

+ (double)exponentialDecayByDateDistance:(int)a3 withDegree:(double)a4
{
  if (a3 < 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  return exp(v4 * a4);
}

+ (double)sumIntervalsWithDateDecay:(id)a3 fromDate:(id)a4 withDecayDegree:(double)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 startDate];
        v17 = [a1 datewiseDistanceBetweenDate:v9 andDate:v16];

        [a1 exponentialDecayByDateDistance:v17 withDegree:a5];
        v19 = v18;
        v20 = [v15 endDate];
        v21 = [v15 startDate];
        [v20 timeIntervalSinceDate:v21];
        v23 = v22;

        v13 = v13 + v19 * v23;
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (double)countIntervalsWithDateDecay:(id)a3 fromDate:(id)a4 withDecayDegree:(double)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) startDate];
        v16 = [a1 datewiseDistanceBetweenDate:v9 andDate:v15];

        [a1 exponentialDecayByDateDistance:v16 withDegree:a5];
        v13 = v13 + v17;
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (id)longestK:(int64_t)a3 intervalsInArray:(id)a4
{
  v5 = [a4 sortedArrayUsingComparator:&stru_100095360];
  if ([v5 count] < a3)
  {
    a3 = [v5 count];
  }

  v6 = [v5 subarrayWithRange:{0, a3}];

  return v6;
}

+ (id)longestKIntervals:(int64_t)a3 endAfter:(id)a4 startBefore:(id)a5 fromIntervals:(id)a6
{
  v9 = a6;
  v10 = [NSPredicate predicateWithFormat:@"((endDate >= %@) AND (startDate <= %@))", a4, a5];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v12 = [OSIntelligenceUtilities longestK:a3 intervalsInArray:v11];

  return v12;
}

+ (id)accumulativelyBinKLongestIntervals:(int64_t)a3 endAfter:(id)a4 startBefore:(id)a5 longerThan:(double)a6 fromIntervals:(id)a7
{
  v8 = [a1 longestKIntervals:a3 endAfter:a4 startBefore:a5 fromIntervals:a7];
  v9 = 24;
  v10 = [NSMutableArray arrayWithCapacity:24];
  do
  {
    [v10 addObject:&off_10009B6D0];
    --v9;
  }

  while (v9);
  v34 = +[NSCalendar currentCalendar];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    v14 = &MGGetBoolAnswer_ptr;
    v33 = *v37;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = [v16 endDate];
        v18 = [v16 startDate];
        [v17 timeIntervalSinceDate:v18];
        v20 = v19;

        if (v20 >= a6)
        {
          v21 = [v16 startDate];
          v22 = [v16 endDate];
          [v34 components:32 fromDate:v21 toDate:v22 options:0];
          v23 = v14;
          v25 = v24 = v12;
          v26 = [v25 hour];

          v12 = v24;
          v14 = v23;

          v27 = [v16 startDate];
          v13 = v33;
          v28 = [v34 component:32 fromDate:v27];

          if (v26 >= 1)
          {
            do
            {
              v29 = v23[187];
              v30 = [v10 objectAtIndexedSubscript:v28];
              v31 = [v29 numberWithInteger:{objc_msgSend(v30, "integerValue") + 1}];
              [v10 setObject:v31 atIndexedSubscript:v28];

              v28 = (v28 + 1) % 24;
              --v26;
            }

            while (v26);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  return v10;
}

+ (int64_t)parseStrataTypeFromFeatureName:(id)a3
{
  v4 = a3;
  v5 = [a1 prefixStringFromFeatureName:v4];
  if (([v5 isEqualToString:@"all"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"woo"])
    {
      v6 = 2;
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"dow"])
    {
      v6 = 1;
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"l3d"])
    {
      v6 = 3;
      goto LABEL_9;
    }

    v8 = [a1 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA04();
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)prefixStringFromFeatureName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"^([^_\\W]+)_" options:16 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = [a1 log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA74();
    }

    goto LABEL_5;
  }

  v7 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  if ([v7 numberOfRanges]< 2)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v10 = [v7 rangeAtIndex:1];
  v8 = [v4 substringWithRange:{v10, v11}];
LABEL_6:

  return v8;
}

+ (id)extractPercentileOrQuantileNumberIfAnyFromFeatureName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = 0;
    v5 = [NSRegularExpression regularExpressionWithPattern:@"_q(\\d+)" options:1 error:&v19];
    v6 = v19;
    if (v6)
    {
      v7 = v6;
      v8 = [a1 log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005DAE4();
      }

      v9 = 0;
    }

    else
    {
      v18 = 0;
      v8 = [NSRegularExpression regularExpressionWithPattern:@"_p(\\d+)" options:1 error:&v18];
      v7 = v18;
      if (v7)
      {
        v10 = [a1 log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10005DB54();
        }

        v9 = 0;
      }

      else
      {
        v10 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
        if ([v10 numberOfRanges]< 2)
        {
          v13 = -[NSObject firstMatchInString:options:range:](v8, "firstMatchInString:options:range:", v4, 0, 0, [v4 length]);
          if ([v13 numberOfRanges] < 2)
          {
            v9 = 0;
          }

          else
          {
            v14 = [v13 rangeAtIndex:1];
            v16 = [v4 substringWithRange:{v14, v15}];
            v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue]);
          }
        }

        else
        {
          v11 = [v10 rangeAtIndex:1];
          v13 = [v4 substringWithRange:{v11, v12}];
          v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
        }
      }
    }
  }

  else
  {
    v7 = [a1 log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC78();
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)extractLeftWatershed:(int *)a3 andRight:(int *)a4 fromFeatureName:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v21 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:@"\\((-?\\d+) options:(-?\\d+)\\)" error:0, &v21];
    v10 = v21;
    if (v10)
    {
      v11 = [a1 log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC08();
      }

      v12 = 0;
    }

    else
    {
      v11 = [v9 firstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
      v13 = [v11 numberOfRanges];
      v12 = v13 > 2;
      if (v13 >= 3)
      {
        v12 = 1;
        v14 = [v11 rangeAtIndex:1];
        v16 = [v8 substringWithRange:{v14, v15}];
        v17 = [v11 rangeAtIndex:2];
        v19 = [v8 substringWithRange:{v17, v18}];
        *a3 = [v16 intValue];
        *a4 = [v19 intValue];
      }
    }
  }

  else
  {
    v10 = [a1 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC78();
    }

    v12 = 0;
  }

  return v12;
}

+ (id)getDailyAnchorsForDate:(id)a3 whichStrata:(int64_t)a4 withNrDaysHistory:(int)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  if ((a5 & 0x80000000) == 0)
  {
    v9 = a5 + 1;
    v10 = -a5;
    do
    {
      v11 = [NSDate dateWithTimeInterval:v7 sinceDate:v10 * 86400.0];
      switch(a4)
      {
        case 1:
          v12 = [OSIntelligenceUtilities pandasWeekdayOf:v7];
          v13 = [OSIntelligenceUtilities pandasWeekdayOf:v11];
          break;
        case 3:
          [v7 timeIntervalSinceDate:v11];
          if (v14 > 259200.0)
          {
            goto LABEL_12;
          }

LABEL_11:
          [v8 addObject:v11];
          goto LABEL_12;
        case 2:
          v12 = [OSIntelligenceUtilities isRestDay:v7];
          v13 = [OSIntelligenceUtilities isRestDay:v11];
          break;
        default:
          goto LABEL_11;
      }

      if (v12 == v13)
      {
        goto LABEL_11;
      }

LABEL_12:

      --v9;
      ++v10;
    }

    while (v9 > 0);
  }

  return v8;
}

+ (double)secondsSinceBecomingInactiveAtDate:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000327C;
  v31 = sub_100003580;
  v32 = 0;
  v5 = [BMPublisherOptions alloc];
  v6 = +[NSDate distantPast];
  v7 = [v5 initWithStartDate:v4 endDate:v6 maxEvents:100 lastN:0 reversed:1];

  v8 = BiomeLibrary();
  v9 = [v8 Activity];
  v10 = [v9 Level];
  v11 = [v10 publisherWithOptions:v7];
  v12 = [v11 filterWithIsIncluded:&stru_1000953C0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000337F0;
  v26[3] = &unk_100095018;
  v26[4] = &v27;
  v13 = [v12 sinkWithCompletion:&stru_1000953E0 shouldContinue:v26];

  v14 = v28[5];
  if (v14)
  {
    [v14 timestamp];
    v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v15 timeIntervalSinceDate:v4];
    v17 = v16;
    if (v16 <= 0.0)
    {
      v20 = -v16;
      if ([a1 isActiveBiomeActivityLevelEvent:v28[5]])
      {
        v18 = [a1 log];
        v19 = 0.0;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v28[5] eventBody];
          v22 = [v21 inUseStatus];
          *buf = 67109890;
          v34 = v22;
          v35 = 2112;
          v36 = v15;
          v37 = 2048;
          v38 = v20;
          v39 = 2112;
          v40 = v4;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Last event is active (%d) at %@ (%.2f seconds ago from %@). Returning 0 second.", buf, 0x26u);
        }
      }

      else
      {
        v18 = [a1 log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v28[5] eventBody];
          v25 = [v24 inUseStatus];
          *buf = 67110146;
          v34 = v25;
          v35 = 2112;
          v36 = v15;
          v37 = 2048;
          v38 = -v17;
          v39 = 2112;
          v40 = v4;
          v41 = 2048;
          v42 = -v17;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Last event is inactive (%d) at %@ (%.2f seconds ago from %@). Returning %.2f seconds.", buf, 0x30u);
        }

        v19 = -v17;
      }
    }

    else
    {
      v18 = [a1 log];
      v19 = 0.0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005DC7C();
      }
    }
  }

  else
  {
    v15 = [a1 log];
    v19 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005DCB8();
    }
  }

  _Block_object_dispose(&v27, 8);
  return v19;
}

+ (double)secondsSinceBecomingPresentAtDate:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000327C;
  v29 = sub_100003580;
  v30 = 0;
  v5 = [BMPublisherOptions alloc];
  v6 = +[NSDate distantPast];
  v7 = [v5 initWithStartDate:v4 endDate:v6 maxEvents:100 lastN:0 reversed:1];

  v8 = BiomeLibrary();
  v9 = [v8 Activity];
  v10 = [v9 Level];
  v11 = [v10 publisherWithOptions:v7];
  v12 = [v11 filterWithIsIncluded:&stru_100095400];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100033C5C;
  v24[3] = &unk_100095448;
  v24[4] = &v25;
  v24[5] = a1;
  v13 = [v12 sinkWithCompletion:&stru_100095420 shouldContinue:v24];

  v14 = v26[5];
  if (v14)
  {
    [v14 timestamp];
    v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v15 timeIntervalSinceDate:v4];
    if (v16 <= 0.0)
    {
      v18 = -v16;
      if ([a1 isUserPresentWithDisplayBiomeActivityLevelEvent:v26[5]])
      {
        v17 = [a1 log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v26[5] eventBody];
          v20 = [v19 inUseStatus];
          *buf = 67109890;
          v32 = v20;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = v18;
          v37 = 2112;
          v38 = v4;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Last event is user present (%d) at %@ (%.2f seconds ago from %@).", buf, 0x26u);
        }
      }

      else
      {
        v17 = [a1 log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v26[5] eventBody];
          v23 = [v22 inUseStatus];
          *buf = 67110146;
          v32 = v23;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = v18;
          v37 = 2112;
          v38 = v4;
          v39 = 2048;
          v40 = v18;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Last event is user absent (%d) at %@ (%.2f seconds ago from %@). Returning %.2f seconds.", buf, 0x30u);
        }
      }
    }

    else
    {
      v17 = [a1 log];
      v18 = 0.0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005DD28();
      }
    }
  }

  else
  {
    v15 = [a1 log];
    v18 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005DD64();
    }
  }

  _Block_object_dispose(&v25, 8);
  return v18;
}

+ (BOOL)isActiveBiomeActivityLevelEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = [v3 eventBody];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v4 eventBody];
  v8 = [v7 hasInUseStatus];

  if (v8)
  {
    v9 = [v4 eventBody];
    if ([v9 inUseStatus])
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v10 = [v4 eventBody];
      if (([v10 inUseStatus] & 2) != 0)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        v11 = [v4 eventBody];
        v12 = ([v11 inUseStatus] >> 4) & 1;
      }
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v12) = 1;
  }

  return v12;
}

+ (BOOL)isUserPresentWithDisplayBiomeActivityLevelEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 eventBody];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [v5 eventBody];
  v9 = [v8 hasInUseStatus];

  if (v9)
  {
    v10 = [v5 eventBody];
    [v10 inUseStatus];

    v11 = [v5 eventBody];
    v12 = [a1 isUserPresentWithDisplay:{objc_msgSend(v11, "inUseStatus")}];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

+ (id)concatenateChargeSessions:(id)a3 withMaxDeltaSecondsBetweenEvents:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count] > 1)
  {
    v38 = a1;
    v10 = [v6 reverseObjectEnumerator];
    v7 = [v10 allObjects];

    v8 = +[NSMutableArray array];
    v9 = [v7 count];
    LODWORD(v10) = v9 - 1;
    if (v9 >= 2)
    {
      v11 = a4;
      v39 = v8;
      do
      {
        v12 = v10;
        do
        {
          v13 = [v7 objectAtIndexedSubscript:v12];
          v14 = +[NSNull null];
          if ([v13 isEqual:v14])
          {

            v15 = v12;
          }

          else
          {
            v16 = [v7 objectAtIndexedSubscript:v12];

            v15 = v12;
            if (v16)
            {
              goto LABEL_11;
            }
          }

          --v12;
        }

        while (v15 > 0);
        LODWORD(v12) = -1;
LABEL_11:
        LODWORD(v10) = v12 - 1;
        if (v12 < 1)
        {
LABEL_19:
          if ((v10 & 0x80000000) == 0)
          {
            v10 = v10;
            while (1)
            {
              v21 = [v7 objectAtIndexedSubscript:v10];
              v22 = [v21 startDate];
              v23 = [v7 objectAtIndexedSubscript:v10 + 1];
              v24 = [v23 endDate];
              [v22 timeIntervalSinceDate:v24];
              v26 = fabs(v25);

              if (v26 > v11)
              {
                break;
              }

              v20 = v10-- <= 0;
              if (v20)
              {
                goto LABEL_24;
              }
            }
          }
        }

        else
        {
          v10 = (v12 - 1);
          do
          {
            v17 = [v7 objectAtIndexedSubscript:v10];
            v18 = +[NSNull null];
            if ([v17 isEqual:v18])
            {
            }

            else
            {
              v19 = [v7 objectAtIndexedSubscript:v10];

              if (v19)
              {
                goto LABEL_19;
              }
            }

            v20 = v10-- <= 0;
          }

          while (!v20);
LABEL_24:
          LODWORD(v10) = -1;
        }

        if (v10 >= v12 - 1)
        {
          v33 = [v7 objectAtIndexedSubscript:v12];
          LODWORD(v10) = v12 - 1;
        }

        else
        {
          v41 = [_OSIntelligenceChargeSession alloc];
          v42 = [v7 objectAtIndexedSubscript:v12];
          v40 = [v42 startDate];
          v27 = [v7 objectAtIndexedSubscript:v10 + 1];
          v28 = [v27 endDate];
          v29 = [v7 objectAtIndexedSubscript:v12];
          v30 = [v29 startSoC];
          v31 = [v7 objectAtIndexedSubscript:v10 + 1];
          v32 = [v31 endSoC];
          v33 = [(_OSIntelligenceChargeSession *)v41 initWithStartDate:v40 withEndDate:v28 withStartSoC:v30 withEndSoC:v32];

          v8 = v39;
        }

        [v8 addObject:v33];
      }

      while (v10 > 0);
    }

    if (!v10)
    {
      v34 = [v7 objectAtIndexedSubscript:0];
      [v8 addObject:v34];
    }

    v35 = [v38 log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count] - objc_msgSend(v8, "count"));
      *buf = 138412290;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Concatenated %@ events", buf, 0xCu);
    }
  }

  else
  {
    v7 = v6;
    v8 = v7;
  }

  return v8;
}

+ (id)getUsageBucketsForEvents:(id)a3 forDate:(id)a4 withLog:(id)a5
{
  v7 = a3;
  v8 = a4;
  v43 = a5;
  memset(v56, 0, sizeof(v56));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v46 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (!v46)
  {
    goto LABEL_27;
  }

  v9 = *v50;
  do
  {
    v10 = 0;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v49 + 1) + 8 * v10);
      v12 = +[NSCalendar currentCalendar];
      v13 = [v11 startDate];
      v14 = [v12 components:112 fromDate:v13];

      v15 = +[NSCalendar currentCalendar];
      v16 = [v11 endDate];
      v17 = [v15 components:96 fromDate:v16];

      v18 = [v14 hour];
      v19 = [v17 hour];
      v47 = [v14 minute];
      v48 = [v17 minute];
      v20 = +[NSCalendar currentCalendar];
      v21 = [v11 startDate];
      if ([v20 isDate:v21 inSameDayAsDate:v8])
      {

        goto LABEL_22;
      }

      v45 = v19;
      v22 = [v11 startDate];
      [v8 earlierDate:v22];
      v23 = v9;
      v25 = v24 = v8;

      v26 = v25 == v24;
      v8 = v24;
      v9 = v23;
      if (!v26)
      {
        if (v18 < v45)
        {
          *(v56 + v18) = sqrt((60 - v47)) + *(v56 + v18);
          if (v18 + 1 < v45)
          {
            v27 = ~v18 + v45;
            v28 = v56 + v18 + 1;
            do
            {
              *v28 = *v28 + 7.74596669;
              ++v28;
              --v27;
            }

            while (v27);
          }

LABEL_21:
          *(v56 + v45) = sqrt(v48) + *(v56 + v45);
          goto LABEL_22;
        }

        if (v18 > v45)
        {
          *(v56 + v18) = sqrt((60 - v47)) + *(v56 + v18);
          if (v18 <= 22)
          {
            v29 = v18 + 1;
            do
            {
              *(v56 + v29) = *(v56 + v29) + 7.74596669;
              ++v29;
            }

            while (v29 != 24);
          }

          if (v45 >= 1)
          {
            v30 = v56;
            v31 = v45;
            do
            {
              *v30 = *v30 + 7.74596669;
              ++v30;
              --v31;
            }

            while (v31);
          }

          goto LABEL_21;
        }

        if (v48 - v47 >= 0)
        {
          *(v56 + v18) = sqrt((v48 - v47)) + *(v56 + v18);
        }
      }

LABEL_22:

      v10 = v10 + 1;
    }

    while (v10 != v46);
    v32 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    v46 = v32;
  }

  while (v32);
LABEL_27:
  v33 = 0;
  v34 = 0.0;
  do
  {
    if (*(v56 + v33) > v34)
    {
      v34 = *(v56 + v33);
    }

    v33 += 8;
  }

  while (v33 != 192);
  v35 = v43;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [NSNumber numberWithDouble:v34];
    *buf = 138412290;
    v54 = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "maxValue in buckets = %@", buf, 0xCu);
  }

  if (v34 == 0.0)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Something went wront, maxValue is 0", buf, 2u);
    }

    v37 = &off_10009CCC0;
  }

  else
  {
    v38 = v8;
    v39 = +[NSMutableArray array];
    for (i = 0; i != 192; i += 8)
    {
      v41 = [NSNumber numberWithDouble:*(v56 + i) / v34];
      [v39 addObject:v41];
    }

    v37 = [NSArray arrayWithArray:v39];

    v8 = v38;
  }

  return v37;
}

+ (double)hoursUntilUseFromBucketedUsage:(id)a3 withCurrentHour:(int)a4 withComponentsMinutes:(int64_t)a5
{
  v8 = 0.0;
  v9 = 1;
  while (1)
  {
    v10 = a4 + v9;
    if ((a4 + v9) > 23)
    {
      v10 = a4 + v9 - 24;
    }

    v11 = [a3 objectAtIndexedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;

    if (v13 > 0.2)
    {
      break;
    }

    if (v9 == 11)
    {
      v8 = 12.0;
    }

    if (++v9 == 12)
    {
      return v8;
    }
  }

  return v9 + a5 / -60.0;
}

+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4 withHourBinWidth:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  +[NSMutableArray array];
  v24 = v23 = v8;
  [v8 timeIntervalSince1970];
  v10 = v9;
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = (a5 * 3600.0);
    v15 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 startDate];
        [v18 timeIntervalSince1970];
        v20 = v19;

        if (v10 > v20 && (v10 + v14 / 2 - v20) % 604800 <= v14)
        {
          [v24 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(context);

  return v24;
}

+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 endDate];
        [v7 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v16 > 0.0)
        {
          v17 = [v13 startDate];
          v18 = [a1 datewiseDistanceBetweenDate:v7 andDate:v17];

          v19 = [v13 endDate];
          v20 = [a1 datewiseDistanceBetweenDate:v7 andDate:v19];

          if (-1227133513 * v18 + 306783378 < 0x24924925 || v20 % 7 == 0)
          {
            [v24 addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);

  return v24;
}

+ (id)filterEvents:(id)a3 withDateDistance:(int)a4 fromDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v25 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 endDate];
        [v9 timeIntervalSinceDate:v15];
        v17 = v16;

        if (v17 > 0.0)
        {
          v18 = [v14 startDate];
          v19 = [a1 datewiseDistanceBetweenDate:v9 andDate:v18];

          v20 = [v14 endDate];
          v21 = [a1 datewiseDistanceBetweenDate:v9 andDate:v20];

          if (v19 == a4 || v21 == a4)
          {
            [v25 addObject:v14];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);

  return v25;
}

+ (id)filterEvents:(id)a3 isRecentForDate:(id)a4 goingDaysBack:(int64_t)a5 useEndDate:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[NSMutableArray array];
  v12 = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = (a5 * 86400.0);
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (a6)
        {
          [v19 endDate];
        }

        else
        {
          [v19 startDate];
        }
        v20 = ;
        [v10 timeIntervalSinceDate:{v20, v25}];
        v22 = v21;

        if (v22 >= 0.0 && v22 <= v17)
        {
          [v11 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v12);

  return v11;
}

+ (id)filterEvents:(id)a3 withSameWorkOrOffStatusAs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 isRestDay:v7];
  v9 = +[NSMutableArray array];
  v10 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (v8 == [a1 isIntervalOnRestDay:{v16, v18}])
        {
          [v9 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v10);

  return v9;
}

+ (id)filterEvents:(id)a3 withMinimumDuration:(double)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 endDate];
        v14 = [v12 startDate];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v16 >= a4)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (double)medianTimeBetweenDescendingEvents:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  if ([v3 count] >= 2)
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [v6 startDate];
      v8 = [v3 objectAtIndexedSubscript:++v5];
      v9 = [v8 endDate];
      [v7 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 >= 0.0)
      {
        v12 = [NSNumber numberWithDouble:v11];
        [v4 addObject:v12];
      }
    }

    while (v5 < ([v3 count] - 1));
  }

  [OSIntelligenceUtilities medianOf:v4];
  v14 = v13;

  return v14;
}

+ (double)meanEventDuration:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) duration];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (id)getDurationsFromEvents:(id)a3 withUnit:(double)a4 cappedAt:(double)a5
{
  v7 = a3;
  v8 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 endDate];
        v16 = [v14 startDate];
        [v15 timeIntervalSinceDate:v16];
        v18 = v17 / a4;

        if (v18 >= a5)
        {
          v19 = a5;
        }

        else
        {
          v19 = v18;
        }

        if (a5 <= 0.0)
        {
          v19 = v18;
        }

        v20 = [NSNumber numberWithDouble:v19];
        [v8 addObject:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)predicateForEventsWithMaximumDuration:(double)a3
{
  v3 = [NSNumber numberWithDouble:a3];
  v4 = [NSPredicate predicateWithFormat:@"((endDate.timeIntervalSinceReferenceDate - startDate.timeIntervalSinceReferenceDate) <= %@)", v3];

  return v4;
}

+ (double)sumDurationsOfEvents:(id)a3 intersectingDateRangeFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v34 = a4;
  v9 = a5;
  v10 = [v8 count];
  v33 = v9;
  if (v9 && v34 && v10 && ([v34 laterDate:v9], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == v33))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v8;
    v15 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v32 = v8;
      v17 = *v36;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [v19 startDate];
          v21 = [v19 endDate];
          v22 = [v20 laterDate:v21];
          v23 = [v19 endDate];

          if (v22 == v23)
          {
            v27 = [v19 startDate];
            v24 = [v34 laterDate:v27];

            v28 = [v19 endDate];
            v29 = [v33 earlierDate:v28];

            [v29 timeIntervalSinceDate:v24];
            if (v30 >= 0.0)
            {
              v13 = v13 + v30;
            }

            else
            {
              v31 = [a1 log];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v41 = v24;
                v42 = 2112;
                v43 = v29;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Negative intersected duration with start date %@ and end date %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v24 = [a1 log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v19 startDate];
              v26 = [v19 endDate];
              *buf = 138412802;
              v41 = v25;
              v42 = 2112;
              v43 = v26;
              v44 = 2112;
              v45 = v19;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Negative event duration with start date %@ and end date %@ from event %@", buf, 0x20u);
            }
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
      v8 = v32;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v12 = [a1 log];
    v13 = 0.0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = v8;
      v42 = 2112;
      v43 = v34;
      v44 = 2112;
      v45 = v33;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid argument(s): events = %@ | startDate = %@ | endDate = %@", buf, 0x20u);
    }
  }

  return v13;
}

+ (id)roundedDateFromDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:124 fromDate:v3];

  v6 = (([v5 minute] / 30 + 1) * 30.0);
  [v5 setMinute:0];
  v7 = [v4 dateFromComponents:v5];
  v8 = [v7 dateByAddingTimeInterval:(60 * v6)];

  return v8;
}

+ (double)timeInSeconds:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:224 fromDate:v3];

  v6 = [v5 hour];
  v7 = (60 * [v5 minute]) + v6 * 3600.0;
  v8 = v7 + [v5 second];

  return v8;
}

+ (int)pandasWeekdayOf:(id)a3 forTimeZone:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 componentsInTimeZone:v5 fromDate:v6];

  LODWORD(v6) = [v8 weekday] + 5;
  return v6 % 7;
}

+ (int)pandasWeekdayOf:(id)a3
{
  v4 = a3;
  v5 = +[NSTimeZone localTimeZone];
  LODWORD(a1) = [a1 pandasWeekdayOf:v4 forTimeZone:v5];

  return a1;
}

+ (double)timeOfDayWithDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:224 fromDate:v3];

  v6 = [v5 hour];
  v7 = [v5 minute];
  v8 = v7 / 60.0 + v6 + [v5 second] / 3600.0;

  return v8;
}

+ (double)hourFromDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:32 fromDate:v3];

  v6 = [v5 hour];
  return v6;
}

+ (id)midnightDateFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v5];

  v6 = [v4 components:540 fromDate:v3];

  v7 = [v4 dateFromComponents:v6];

  return v7;
}

+ (double)maxOf:(id)a3
{
  v3 = [a3 valueForKeyPath:@"@max.doubleValue"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

+ (double)meanOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (double)standardDeviationOf:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if ([v3 count] >= 2)
  {
    [OSIntelligenceUtilities meanOf:v3];
    v6 = v5;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * i) doubleValue];
          v11 = v11 + (v13 - v6) * (v13 - v6);
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v4 = sqrt(v11 / ([v7 count] - 1));
  }

  return v4;
}

+ (double)medianOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 sortedArrayUsingSelector:"compare:"];
    v5 = [v4 count];
    v6 = [v4 count] >> 1;
    if (v5)
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      v12 = v13;
    }

    else
    {
      v7 = [v4 objectAtIndexedSubscript:v6 - 1];
      [v7 doubleValue];
      v9 = v8;
      v10 = [v4 objectAtIndexedSubscript:v6];
      [v10 doubleValue];
      v12 = (v9 + v11) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

+ (double)meanAbsoluteDeviationOf:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [a1 meanOf:v4];
    v6 = v5;
    v7 = [v4 mutableCopy];
    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        [v9 doubleValue];
        v11 = [NSNumber numberWithDouble:vabdd_f64(v10, v6)];
        [v7 setObject:v11 atIndexedSubscript:v8];

        ++v8;
      }

      while ([v7 count] > v8);
    }

    [a1 meanOf:v7];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (double)qthPercentileOf:(id)a3 withQ:(double)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = 0.0;
  if (a4 <= 100.0 && a4 >= 0.0 && v6 != 0)
  {
    v9 = [v5 sortedArrayUsingSelector:"compare:"];
    v10 = v9;
    if (a4 >= 2.22044605e-16)
    {
      v12 = 100.0 - a4;
      if (100.0 - a4 >= 2.22044605e-16)
      {
        v13 = ([v5 count] - 1) * a4 / 100.0;
        v14 = vcvtmd_s64_f64(v13);
        if ([v10 count] - 1 > v14)
        {
          v15 = [v10 objectAtIndexedSubscript:v14];
          [v15 doubleValue];
          v17 = v16;

          v18 = v13 - v14;
          v19 = [v10 objectAtIndexedSubscript:v14 + 1];
          [v19 doubleValue];
          v21 = v20;
          v22 = [v10 objectAtIndexedSubscript:v14];
          [v22 doubleValue];
          v24 = v21 - v23;

          v7 = v17 + v18 * v24;
LABEL_13:

          goto LABEL_14;
        }
      }

      v11 = [v10 lastObject];
    }

    else
    {
      v11 = [v9 firstObject];
    }

    v25 = v11;
    [v11 doubleValue];
    v7 = v26;

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

+ (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:v5];

  v8 = [v7 hour] / a4;
  return v8;
}

+ (id)events:(id)a3 forHourBin:(unint64_t)a4 date:(id)a5 withMaxDuration:(double)a6
{
  v10 = a3;
  v11 = a5;
  v12 = +[NSCalendar currentCalendar];
  v13 = [v12 timeZone];
  v14 = [v11 dateByAddingTimeInterval:{objc_msgSend(v13, "secondsFromGMT")}];

  v33 = v14;
  v34 = v12;
  v32 = [v12 components:32 fromDate:v14];
  v15 = [v32 hour];
  v16 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = v15 / a4;
    v21 = *v36;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        v24 = [v23 startDate];
        [a1 getHourBinID:v24 forHourBin:a4];
        if (v20 == v25)
        {
          v26 = [v23 endDate];
          [v26 timeIntervalSinceDate:v24];
          v28 = v27 / 3600.0;

          if (v28 >= a6)
          {
            v29 = a6;
          }

          else
          {
            v29 = v28;
          }

          if (a6 <= 0.0)
          {
            v29 = v28;
          }

          v30 = [NSNumber numberWithDouble:v29];
          [v16 addObject:v30];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  return v16;
}

+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)a3 withContext:(id)a4
{
  bzero(v14, 0x328uLL);
  [a1 getBatteryLevelDurations:v14];
  v6 = [a1 log];
  v7 = [a1 percentageOfTimeForBatteryLevels:v14 withLog:v6];

  v8 = [v7 objectAtIndexedSubscript:3];
  [v8 floatValue];
  v10 = v9;

  v11 = 0;
  v12 = a3 + 1;
  while (v10 <= *(v12 - 1) || v10 > *v12)
  {
    ++v11;
    ++v12;
    if (v11 == 11)
    {
      v11 = 0;
      break;
    }
  }

  return v11;
}

+ (id)filterEventsSortedByStartDateAscending:(id)a3 startsBefore:(id)a4 dynamicallyAroundDate:(id)a5 withHourBinWidth:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v39 = +[NSMutableArray array];
  v12 = +[NSCalendar currentCalendar];
  v13 = [v12 timeZone];
  v14 = [v10 dateByAddingTimeInterval:{objc_msgSend(v13, "secondsFromGMT")}];

  v15 = [v12 timeZone];
  v16 = [v11 dateByAddingTimeInterval:{objc_msgSend(v15, "secondsFromGMT")}];

  v37 = v14;
  [v12 components:96 fromDate:v14];
  v36 = v40 = v12;
  v17 = [v12 dateFromComponents:?];
  v38 = [v17 dateByAddingTimeInterval:86400.0];
  context = objc_autoreleasePoolPush();
  if ([v9 count])
  {
    v18 = 0;
    v19 = a6 * 1800.0;
    do
    {
      v20 = [v9 objectAtIndexedSubscript:v18];
      v21 = [v20 startDate];

      if (v18)
      {
        v22 = [v9 objectAtIndexedSubscript:v18 - 1];
        v23 = [v22 endDate];
      }

      else
      {
        v23 = +[NSDate distantPast];
      }

      [v21 timeIntervalSinceDate:v23];
      if (v24 >= 0.0)
      {
        [v21 timeIntervalSinceDate:v16];
        if (v25 < 0.0)
        {
          v26 = [v40 components:96 fromDate:v21];
          v27 = [v40 dateFromComponents:v26];
          v28 = [v27 dateByAddingTimeInterval:86400.0];
          [v27 timeIntervalSinceDate:v17];
          if (v29 < 0.0)
          {
            v29 = -v29;
          }

          if (v29 < v19)
          {
            goto LABEL_17;
          }

          [v28 timeIntervalSinceDate:v17];
          if (v30 < 0.0)
          {
            v30 = -v30;
          }

          if (v30 < v19)
          {
            goto LABEL_17;
          }

          [v27 timeIntervalSinceDate:v38];
          if (v31 < 0.0)
          {
            v31 = -v31;
          }

          if (v31 < v19)
          {
LABEL_17:
            [v9 objectAtIndexedSubscript:v18];
            v33 = v32 = v16;
            [v39 addObject:v33];

            v16 = v32;
          }
        }
      }

      ++v18;
    }

    while ([v9 count] > v18);
  }

  objc_autoreleasePoolPop(context);

  return v39;
}

+ (id)readStringForPreferenceKey:(id)a3 inDomain:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);

  return v4;
}

+ (void)setDate:(id)a3 forPreferenceKey:(id)a4 inDomain:(id)a5
{
  key = a4;
  v7 = a5;
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  CFPreferencesSetAppValue(key, v8, v7);
}

+ (id)dateForPreferenceKey:(id)a3 inDomain:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)numberForPreferenceKey:(id)a3 inDomain:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);

  return v4;
}

+ (id)readDictForPreferenceKey:(id)a3 inDomain:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);

  return v4;
}

+ (id)getTestVector:(id)a3
{
  v3 = a3;
  v46 = 0;
  v42 = [NSRegularExpression regularExpressionWithPattern:@"(.+?) options:(.+?)" error:1, &v46];
  v4 = v46;
  v45 = v4;
  v40 = v3;
  v5 = [NSString stringWithContentsOfURL:v3 encoding:1 error:&v45];
  v39 = v45;

  v6 = objc_alloc_init(NSNumberFormatter);
  [v6 setNumberStyle:1];
  v38 = v5;
  v7 = [v5 componentsSeparatedByString:@"\n"];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 componentsSeparatedByString:{@", "}];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count] - 1);
      [v10 setObject:v12 atIndexedSubscript:v11];

      ++v11;
    }

    while ([v9 count] > v11);
  }

  if ([v7 count] - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = 1;
    v41 = v7;
    while (1)
    {
      v14 = [v7 objectAtIndexedSubscript:v13];
      v44 = v13;
      v15 = [v7 objectAtIndexedSubscript:v13];
      v16 = [v42 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{objc_msgSend(v15, "length"), @"$1.$2"}];

      v43 = v16;
      v17 = [v16 componentsSeparatedByString:{@", "}];
      if ([v9 count])
      {
        break;
      }

LABEL_17:

      v13 = v44 + 1;
      v7 = v41;
      if ([v41 count] - 1 <= (v44 + 1))
      {
        goto LABEL_18;
      }
    }

    v18 = 0;
    v19 = v44 - 1;
    while (1)
    {
      v20 = [v17 objectAtIndexedSubscript:v18];
      v21 = [v6 numberFromString:v20];

      v22 = [v17 objectAtIndexedSubscript:v18];
      v23 = v22;
      if (v21)
      {
        break;
      }

      v26 = [v22 isEqualToString:@"True"];

      if (v26)
      {
        v27 = [v10 objectAtIndexedSubscript:v18];
        v23 = v27;
        v28 = &off_10009B6E8;
        goto LABEL_14;
      }

      v29 = [v17 objectAtIndexedSubscript:v18];
      v30 = [v29 isEqualToString:@"False"];

      if (v30)
      {
        v27 = [v10 objectAtIndexedSubscript:v18];
        v23 = v27;
        v28 = &off_10009B6D0;
LABEL_14:
        [v27 setObject:v28 atIndexedSubscript:v19];
LABEL_15:
      }

      if ([v9 count] <= ++v18)
      {
        goto LABEL_17;
      }
    }

    v24 = [v6 numberFromString:v22];
    v25 = [v10 objectAtIndexedSubscript:v18];
    [v25 setObject:v24 atIndexedSubscript:v19];

    goto LABEL_15;
  }

LABEL_18:
  v31 = +[NSMutableDictionary dictionary];
  if ([v9 count])
  {
    v32 = 0;
    do
    {
      v33 = [v10 objectAtIndexedSubscript:v32];
      v34 = [NSArray arrayWithArray:v33];
      v35 = [v9 objectAtIndexedSubscript:v32];
      [v31 setObject:v34 forKeyedSubscript:v35];

      ++v32;
    }

    while ([v9 count] > v32);
  }

  v36 = [NSDictionary dictionaryWithDictionary:v31];

  return v36;
}

+ (id)loadCompiledModelFromPath:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [NSURL fileURLWithPath:v4];

  v7 = [a1 log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10005DDD4();
  }

  v13 = 0;
  v8 = [MLModel modelWithContentsOfURL:v6 error:&v13];
  v9 = v13;
  if (v9 || !v8)
  {
    v11 = [a1 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10005DE48();
    }

    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

+ (id)generateRandomIntegersInRange:(_NSRange)a3 count:(int64_t)a4 seed:(unint64_t)a5
{
  if (a4 < 1)
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    v5 = a4;
    length = a3.length;
    location = a3.location;
    srandom(a5);
    v8 = [NSMutableArray arrayWithCapacity:v5];
    do
    {
      v9 = [NSNumber numberWithInt:(random() % length) + location];
      [v8 addObject:v9];

      --v5;
    }

    while (v5);
    v10 = [v8 copy];
  }

  return v10;
}

+ (MemoryFootprint)getMemoryUsage
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *task_info_out = 0u;
  v8 = 0u;
  task_info_outCnt = 93;
  if (task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt))
  {
    v3 = [a1 log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10005DEB8();
    }

    v4 = -1;
    v5 = -1;
  }

  else
  {
    v5 = v16 >> 10;
    v4 = *(&v17 + 1) / 1024;
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

+ (void)logMemoryUsageInternalForEvent:(id)a3
{
  v4 = a3;
  if (+[OSIntelligenceUtilities isInternalBuild])
  {
    v5 = +[OSIntelligenceUtilities getMemoryUsage];
    v7 = v6;
    v8 = [a1 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DEF4(v5, v7, v4, v8);
    }
  }
}

@end