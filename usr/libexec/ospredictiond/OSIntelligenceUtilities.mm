@interface OSIntelligenceUtilities
+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)context;
+ (BOOL)deviceWasActiveWithinSeconds:(double)seconds withContext:(id)context;
+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)seconds withContext:(id)context;
+ (BOOL)extractLeftWatershed:(int *)watershed andRight:(int *)right fromFeatureName:(id)name;
+ (BOOL)hasEnoughInactivityHistory;
+ (BOOL)hasRecentTravelHistory;
+ (BOOL)isActiveBiomeActivityLevelEvent:(id)event;
+ (BOOL)isDeviceRarelyUsedRecently;
+ (BOOL)isInputDateInTimeRange:(id)range withEarlyTimeOfDay:(double)day andLateTimeOfDay:(double)ofDay;
+ (BOOL)isIntervalOnRestDay:(id)day;
+ (BOOL)isIntervalTouchingTimewiseSlice:(id)slice definedByReferenceDate:(id)date leftBoundary:(double)boundary rightBoundary:(double)rightBoundary;
+ (BOOL)isOBCSupported;
+ (BOOL)isPluggedInWithContext:(id)context;
+ (BOOL)isRestDay:(id)day;
+ (BOOL)isUserPresentWithDisplayBiomeActivityLevelEvent:(id)event;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)legacyPastEventInQuestion:(id)question containsTimeOfReferenceDate:(id)date;
+ (BOOL)pastEventInQuestion:(id)question containsTimeOfReferenceDate:(id)date;
+ (BOOL)pastEventInQuestion:(id)question startsAfterTimeOfReferenceDate:(id)date;
+ (MemoryFootprint)getMemoryUsage;
+ (double)areaOverEightyWithBatteryLevelDurations:(double *)durations;
+ (double)batteryLevelAtDate:(id)date;
+ (double)clockwiseAngleFromPoint:(id)point toPoint:(id)toPoint;
+ (double)countIntervalsWithDateDecay:(id)decay fromDate:(id)date withDecayDegree:(double)degree;
+ (double)cyclicalEncodingOfHoursInDay:(double)day useCos:(BOOL)cos;
+ (double)cyclicalEncodingOfWeekday:(id)weekday useCos:(BOOL)cos;
+ (double)dynamicDurationFromEvent:(id)event withAnchorDate:(id)date;
+ (double)exponentialDecayByDateDistance:(int)distance withDegree:(double)degree;
+ (double)getHourBinID:(id)d forHourBin:(unint64_t)bin;
+ (double)hourFromDate:(id)date;
+ (double)hoursUntilUseFromBucketedUsage:(id)usage withCurrentHour:(int)hour withComponentsMinutes:(int64_t)minutes;
+ (double)intersectedDurationOfPastEvent:(id)event withDateOfIntersection:(id)intersection;
+ (double)maxOf:(id)of;
+ (double)meanAbsoluteDeviationOf:(id)of;
+ (double)meanEventDuration:(id)duration;
+ (double)meanOf:(id)of;
+ (double)medianOf:(id)of;
+ (double)medianTimeBetweenDescendingEvents:(id)events;
+ (double)percentOfLongDurationsIn:(id)in withLongThreshold:(double)threshold;
+ (double)percentageOfBatteryDurations:(double *)durations aboveBatteryLevel:(double)level;
+ (double)qthPercentileOf:(id)of withQ:(double)q;
+ (double)secondsSinceBecomingInactiveAtDate:(id)date;
+ (double)secondsSinceBecomingPresentAtDate:(id)date;
+ (double)secondsUntilHour:(unint64_t)hour fromDate:(id)date;
+ (double)standardDeviationOf:(id)of;
+ (double)sumDurationsOfEvents:(id)events intersectingDateRangeFrom:(id)from to:(id)to;
+ (double)sumIntervalsWithDateDecay:(id)decay fromDate:(id)date withDecayDegree:(double)degree;
+ (double)timeInSeconds:(id)seconds;
+ (double)timeOfDayWithDate:(id)date;
+ (double)totalPluginDurationAfter:(id)after withMinimumDuration:(double)duration withPluginEvents:(id)events;
+ (id)accumulativelyBinKLongestIntervals:(int64_t)intervals endAfter:(id)after startBefore:(id)before longerThan:(double)than fromIntervals:(id)fromIntervals;
+ (id)batteryProperties;
+ (id)clipInterval:(id)interval withTimewiseSliceDefineBy:(id)by leftBoundary:(double)boundary rightBoundary:(double)rightBoundary;
+ (id)concatenateChargeSessions:(id)sessions withMaxDeltaSecondsBetweenEvents:(unint64_t)events;
+ (id)dailyAverageActiveDurationsInHours:(int)hours;
+ (id)dateForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)deviceUsageDiagnosis;
+ (id)dynamicDurationsFromEvents:(id)events withAnchorDate:(id)date withUnit:(double)unit cappedAt:(double)at;
+ (id)encodeTimeAsPointFromDate:(id)date;
+ (id)events:(id)events forHourBin:(unint64_t)bin date:(id)date withMaxDuration:(double)duration;
+ (id)extractPercentileOrQuantileNumberIfAnyFromFeatureName:(id)name;
+ (id)filterEvents:(id)events isRecentForDate:(id)date goingDaysBack:(int64_t)back useEndDate:(BOOL)endDate;
+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as;
+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as withHourBinWidth:(unint64_t)width;
+ (id)filterEvents:(id)events withDateDistance:(int)distance fromDate:(id)date;
+ (id)filterEvents:(id)events withMinimumDuration:(double)duration;
+ (id)filterEvents:(id)events withSameWorkOrOffStatusAs:(id)as;
+ (id)filterEventsSortedByStartDateAscending:(id)ascending startsBefore:(id)before dynamicallyAroundDate:(id)date withHourBinWidth:(unint64_t)width;
+ (id)generateRandomIntegersInRange:(_NSRange)range count:(int64_t)count seed:(unint64_t)seed;
+ (id)getAnchorOfDate:(id)date onTheDayOf:(id)of;
+ (id)getCurrentBootSessionUUID;
+ (id)getDailyAnchorsForDate:(id)date whichStrata:(int64_t)strata withNrDaysHistory:(int)history;
+ (id)getDurationsFromEvents:(id)events withUnit:(double)unit cappedAt:(double)at;
+ (id)getTestVector:(id)vector;
+ (id)getUsageBucketsForEvents:(id)events forDate:(id)date withLog:(id)log;
+ (id)lastLockDate;
+ (id)lastPluggedInDate;
+ (id)loadCompiledModelFromPath:(id)path;
+ (id)log;
+ (id)longestK:(int64_t)k intervalsInArray:(id)array;
+ (id)longestKIntervals:(int64_t)intervals endAfter:(id)after startBefore:(id)before fromIntervals:(id)fromIntervals;
+ (id)midnightDateFrom:(id)from;
+ (id)numberForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)percentageOfTimeForBatteryLevels:(double *)levels withLog:(id)log;
+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration ignoringDisconnectsShorterThan:(double)than;
+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration withMinimumPlugoutBatteryLevel:(double)level ignoringDisconnectsShorterThan:(double)than;
+ (id)predicateForEventsWithMaximumDuration:(double)duration;
+ (id)prefixStringFromFeatureName:(id)name;
+ (id)projectedDateOfHistorySufficiencyWithError:(id *)error;
+ (id)readDictForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)readStringForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)roundedDateFromDate:(id)date;
+ (id)timelineEventDate:(id)date withDefaultsDomain:(id)domain;
+ (id)ultraLongInactiveDurationsInHours:(int)hours withThreshold:(double)threshold;
+ (id)userHistoryDiagnosis;
+ (int)pandasWeekdayOf:(id)of;
+ (int)pandasWeekdayOf:(id)of forTimeZone:(id)zone;
+ (int64_t)currentBatteryLevelWithContext:(id)context;
+ (int64_t)parseStrataTypeFromFeatureName:(id)name;
+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)off withContext:(id)context;
+ (void)getBatteryLevelDurations:(double *)durations;
+ (void)logMemoryUsageInternalForEvent:(id)event;
+ (void)setDate:(id)date forPreferenceKey:(id)key inDomain:(id)domain;
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
  device = [v4 Device];
  screenLocked = [device ScreenLocked];
  v7 = [screenLocked publisherWithOptions:v3];
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
    v12 = [self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC40();
    }

    goto LABEL_8;
  }

  [v10 timeIntervalSinceNow];
  if (v11 > 0.0)
  {
    v12 = [self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC04();
    }

LABEL_8:

    v13 = 0;
    goto LABEL_12;
  }

  v14 = [self log];
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
    device = [v9 Device];
    power = [device Power];
    pluggedIn = [power PluggedIn];
    v13 = [pluggedIn publisherWithOptions:v8];
    v14 = [v13 filterWithIsIncluded:&stru_100095270];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002EACC;
    v29[3] = &unk_100095228;
    v29[4] = self;
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
        v25 = [self log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [*(v31[0] + 40) timeIntervalSinceNow];
          sub_10005D3A0(v31, v33, v26);
        }

        v24 = *(v31[0] + 40);
        goto LABEL_16;
      }

      v18 = [self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005D3E0();
      }
    }

    else
    {
      v18 = [self log];
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
  bOOLValue = [v20 BOOLValue];

  if (!bOOLValue)
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
  v5 = [self log];
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

+ (double)batteryLevelAtDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  if (v5 <= -10.0)
  {
    v24 = 0;
    v25[0] = &v24;
    v25[1] = 0x2020000000;
    v25[2] = 0;
    v12 = [[BMPublisherOptions alloc] initWithStartDate:dateCopy endDate:0 maxEvents:20 lastN:0 reversed:1];
    v13 = BiomeLibrary();
    device = [v13 Device];
    power = [device Power];
    batteryLevel = [power BatteryLevel];
    v17 = [batteryLevel publisherWithOptions:v12];
    v18 = [v17 filterWithIsIncluded:&stru_100095208];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002E170;
    v23[3] = &unk_100095228;
    v23[4] = self;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002E1D4;
    v22[3] = &unk_100095018;
    v22[4] = &v24;
    v19 = [v18 sinkWithCompletion:v23 shouldContinue:v22];

    v20 = [self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D0A4(dateCopy, v25);
    }

    integerValue = *(v25[0] + 24);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v6 = +[_CDClientContext userContext];
    v7 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = +[_CDContextQueries batteryPercentageKey];
    v10 = [v8 objectForKeyedSubscript:v9];
    integerValue = [v10 integerValue];
  }

  return integerValue;
}

+ (void)getBatteryLevelDurations:(double *)durations
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000327C;
  v27 = sub_100003580;
  v28 = 0;
  v5 = BiomeLibrary();
  device = [v5 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002E4CC;
  v22[3] = &unk_100095228;
  v22[4] = self;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002E530;
  v21[3] = &unk_100095250;
  v21[4] = &v23;
  v21[5] = self;
  v21[6] = durations;
  v10 = [publisher sinkWithCompletion:v22 receiveInput:v21];

  if (v24[5])
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
    [v24[5] timestamp];
    v15 = v14;

    eventBody = [v24[5] eventBody];
    [eventBody batteryPercentage];
    v18 = v17;

    if (v18 >= 0x65)
    {
      v19 = [self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [NSNumber numberWithInteger:v18];
        sub_10005D1C8(v20, buf, v19);
      }
    }

    else
    {
      durations[v18] = v13 - v15 + durations[v18];
    }
  }

  _Block_object_dispose(&v23, 8);
}

+ (double)areaOverEightyWithBatteryLevelDurations:(double *)durations
{
  bzero(durations, 0x328uLL);
  [OSIntelligenceUtilities getBatteryLevelDurations:durations];

  [OSIntelligenceUtilities percentageOfBatteryDurations:durations aboveBatteryLevel:75.0];
  return result;
}

+ (double)percentageOfBatteryDurations:(double *)durations aboveBatteryLevel:(double)level
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = durations[v4];
    v6 = v6 + v7;
    v8 = v5 + v7;
    if (v4 >= level)
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

  v9 = [self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10005D364();
  }

  return 0.0;
}

+ (id)percentageOfTimeForBatteryLevels:(double *)levels withLog:(id)log
{
  logCopy = log;
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

    v10 = levels[v7];
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

      v14 = logCopy;
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

  v17 = logCopy;
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

+ (int64_t)currentBatteryLevelWithContext:(id)context
{
  contextCopy = context;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [contextCopy objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryPercentageKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (BOOL)isPluggedInWithContext:(id)context
{
  contextCopy = context;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [contextCopy objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryExternalConnectedKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)deviceWasActiveWithinSeconds:(double)seconds withContext:(id)context
{
  contextCopy = context;
  v7 = +[_CDContextQueries keyPathForInUseStatus];
  v8 = [contextCopy objectForKeyedSubscript:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if ((unsignedIntegerValue & 5) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = +[_CDContextQueries keyPathForInUseStatus];
    v12 = [contextCopy lastModifiedDateForContextualKeyPath:v11];
    [v12 timeIntervalSinceNow];
    v14 = -v13;

    if (v14 <= seconds)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v15 = [BMPublisherOptions alloc];
      v16 = [NSDate dateWithTimeIntervalSinceNow:-seconds];
      v17 = +[NSDate distantFuture];
      v18 = [v15 initWithStartDate:v16 endDate:v17 maxEvents:1000 lastN:0 reversed:0];

      v19 = BiomeLibrary();
      activity = [v19 Activity];
      level = [activity Level];
      v22 = [level publisherWithOptions:v18];
      v23 = [v22 filterWithIsIncluded:&stru_100095290];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10002EE9C;
      v27[3] = &unk_100095228;
      v27[4] = self;
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

+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)seconds withContext:(id)context
{
  contextCopy = context;
  v6 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v7 = [contextCopy objectForKeyedSubscript:v6];

  v8 = +[_CDContextQueries batteryExternalConnectedKey];
  v9 = [v7 objectForKeyedSubscript:v8];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = +[_CDContextQueries batteryExternalConnectedChangeDateKey];
    v12 = [v7 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v13 = +[_CDContextQueries keyPathForPluginStatus];
      v12 = [contextCopy lastModifiedDateForContextualKeyPath:v13];
    }

    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;

    v17 = v16 < seconds && v16 > 0.0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)context
{
  contextCopy = context;
  v4 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v5 = [contextCopy objectForKeyedSubscript:v4];

  v6 = +[_CDContextQueries batteryAdapterIsWirelessKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration ignoringDisconnectsShorterThan:(double)than
{
  beforeCopy = before;
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
  v8 = [beforeCopy dateByAddingTimeInterval:-5184000.0];
  v9 = [v7 initWithStartDate:v8 endDate:beforeCopy maxEvents:0 lastN:0 reversed:0];

  v24 = BiomeLibrary();
  device = [v24 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];
  v13 = [pluggedIn publisherWithOptions:v9];
  v14 = BiomeLibrary();
  device2 = [v14 Device];
  timeZone = [device2 TimeZone];
  v17 = [timeZone publisherWithOptions:v9];
  v18 = [v13 orderedMergeWithOther:v17 comparator:&stru_1000952B0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002F5D4;
  v27[3] = &unk_100095228;
  v27[4] = self;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002F638;
  v26[3] = &unk_1000952D8;
  v26[4] = v28;
  v26[5] = v30;
  v26[6] = v32;
  v26[7] = &v34;
  *&v26[8] = than;
  *&v26[9] = duration;
  v19 = [v18 sinkWithCompletion:v27 receiveInput:v26];

  v20 = v35[5];
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);

  return v20;
}

+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration withMinimumPlugoutBatteryLevel:(double)level ignoringDisconnectsShorterThan:(double)than
{
  beforeCopy = before;
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
  v10 = [beforeCopy dateByAddingTimeInterval:-5184000.0];
  v11 = [v9 initWithStartDate:v10 endDate:beforeCopy maxEvents:0 lastN:0 reversed:0];

  v32 = BiomeLibrary();
  device = [v32 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];
  v26 = [pluggedIn publisherWithOptions:v11];
  v28 = BiomeLibrary();
  device2 = [v28 Device];
  timeZone = [device2 TimeZone];
  v13 = [timeZone publisherWithOptions:v11];
  v52[0] = v13;
  v14 = BiomeLibrary();
  device3 = [v14 Device];
  power2 = [device3 Power];
  batteryLevel = [power2 BatteryLevel];
  v18 = [batteryLevel publisherWithOptions:v11];
  v52[1] = v18;
  v19 = [NSArray arrayWithObjects:v52 count:2];
  v20 = [v26 orderedMergeWithOthers:v19 comparator:&stru_1000952F8];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002FF0C;
  v35[3] = &unk_100095228;
  v35[4] = self;
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
  *&v34[10] = than;
  *&v34[11] = duration;
  *&v34[12] = level;
  v34[13] = self;
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

+ (id)timelineEventDate:(id)date withDefaultsDomain:(id)domain
{
  dateCopy = date;
  v7 = CFPreferencesCopyAppValue(@"timeline", domain);
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
      selfCopy = self;
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
          v16 = [v15 isEqualToString:dateCopy];

          if (v16)
          {
            v18 = [v14 objectForKeyedSubscript:@"date"];
            [v18 doubleValue];
            v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

            v19 = [selfCopy log];
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

+ (double)totalPluginDurationAfter:(id)after withMinimumDuration:(double)duration withPluginEvents:(id)events
{
  afterCopy = after;
  eventsCopy = events;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [eventsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(eventsCopy);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        startDate = [v14 startDate];
        [afterCopy timeIntervalSinceDate:startDate];
        v17 = v16;

        if (v17 <= 0.0)
        {
          [v14 duration];
          if (v18 >= duration)
          {
            [v14 duration];
            v12 = v12 + v12 + v19;
          }
        }
      }

      v10 = [eventsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  hasEnoughHistoryForInactivityPrediction = [v2 hasEnoughHistoryForInactivityPrediction];

  return hasEnoughHistoryForInactivityPrediction;
}

+ (id)projectedDateOfHistorySufficiencyWithError:(id *)error
{
  v3 = +[_OSLockHistory sharedInstance];
  projectedDateOfHistorySufficiency = [v3 projectedDateOfHistorySufficiency];

  return projectedDateOfHistorySufficiency;
}

+ (id)userHistoryDiagnosis
{
  v2 = +[_OSLockHistory sharedInstance];
  userHistoryDiagnosis = [v2 userHistoryDiagnosis];

  return userHistoryDiagnosis;
}

+ (BOOL)hasRecentTravelHistory
{
  v2 = +[_OSLockHistory sharedInstance];
  v3 = +[NSDate now];
  [v2 refreshCacheIfStaleWithQueryDate:v3];

  latestTimeZoneChange = [v2 latestTimeZoneChange];
  if (latestTimeZoneChange)
  {
    v5 = +[NSDate now];
    [v5 timeIntervalSinceDate:latestTimeZoneChange];
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
  v3 = [self dailyAverageActiveDurationsInHours:7];
  [OSIntelligenceUtilities meanOf:v3];
  v5 = v4 * 3600.0 < 1800.0;
  v6 = [self ultraLongInactiveDurationsInHours:7 withThreshold:50400.0];
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
  isDeviceRarelyUsedRecently = [self isDeviceRarelyUsedRecently];
  v4 = &stru_100096C80;
  if (isDeviceRarelyUsedRecently)
  {
    v4 = @"NOT ";
  }

  v5 = [NSString stringWithFormat:@"This device is %@frequently used in the past %d days.", v4, 7];
  v6 = v5;
  if (isDeviceRarelyUsedRecently)
  {
    v7 = [self dailyAverageActiveDurationsInHours:7];
    [OSIntelligenceUtilities meanOf:v7];
    v9 = [NSString stringWithFormat:@"In the past %d days, the device is on average used for %.2f hours daily (we recommend >%.2f hours)\n  -> daily usages: %@", 7, v8, 0x3FE0000000000000, v7];
    v10 = [self ultraLongInactiveDurationsInHours:7 withThreshold:50400.0];
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

+ (id)ultraLongInactiveDurationsInHours:(int)hours withThreshold:(double)threshold
{
  v6 = +[NSMutableArray array];
  v7 = [NSDate dateWithTimeIntervalSinceNow:-hours * 86400.0];
  v8 = +[_OSLockHistory sharedInstance];
  v9 = [NSPredicate predicateWithFormat:@"startDate >= %@", v7];
  v10 = [NSNumber numberWithDouble:threshold];
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
        endDate = [v19 endDate];
        startDate = [v19 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v23 = [NSNumber numberWithDouble:v22 / 3600.0];
        [v6 addObject:v23];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  return v6;
}

+ (id)dailyAverageActiveDurationsInHours:(int)hours
{
  v24 = +[NSMutableArray array];
  if (hours >= 1)
  {
    v4 = 0;
    hoursCopy = hours;
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
            endDate = [v17 endDate];
            startDate = [v17 startDate];
            [endDate timeIntervalSinceDate:startDate];
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

    while (v6 != hoursCopy);
  }

  return v24;
}

+ (BOOL)isInputDateInTimeRange:(id)range withEarlyTimeOfDay:(double)day andLateTimeOfDay:(double)ofDay
{
  [self timeOfDayWithDate:range];
  v8 = v7 >= day;
  if (v7 <= ofDay)
  {
    v8 = 1;
  }

  v9 = v7 >= day;
  if (v7 > ofDay)
  {
    v9 = 0;
  }

  if (day <= ofDay)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

+ (double)secondsUntilHour:(unint64_t)hour fromDate:(id)date
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:252 fromDate:dateCopy];
  hour = [v7 hour];
  [v7 setHour:hour];
  [v7 setMinute:0];
  [v7 setSecond:0];
  v9 = [v6 dateFromComponents:v7];
  v10 = v9;
  if (hour > hour)
  {
    v11 = [v9 dateByAddingTimeInterval:86400.0];

    v10 = v11;
  }

  [v10 timeIntervalSinceDate:dateCopy];
  v13 = v12;

  return v13;
}

+ (BOOL)isRestDay:(id)day
{
  dayCopy = day;
  v4 = +[NSCalendar currentCalendar];
  v5 = [dayCopy dateByAddingTimeInterval:14400.0];

  LOBYTE(dayCopy) = [v4 isDateInWeekend:v5];
  return dayCopy;
}

+ (BOOL)isIntervalOnRestDay:(id)day
{
  dayCopy = day;
  v4 = +[NSCalendar currentCalendar];
  startDate = [dayCopy startDate];
  v6 = [v4 components:544 fromDate:startDate];

  endDate = [dayCopy endDate];

  v8 = [v4 components:544 fromDate:endDate];

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

+ (id)getAnchorOfDate:(id)date onTheDayOf:(id)of
{
  dateCopy = date;
  v7 = +[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", dateCopy, -[self datewiseDistanceBetweenDate:dateCopy andDate:of] * 86400.0);

  return v7;
}

+ (BOOL)isIntervalTouchingTimewiseSlice:(id)slice definedByReferenceDate:(id)date leftBoundary:(double)boundary rightBoundary:(double)rightBoundary
{
  sliceCopy = slice;
  dateCopy = date;
  if (!sliceCopy)
  {
    v12 = [self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005D7C0();
    }

    goto LABEL_7;
  }

  if (boundary > rightBoundary)
  {
    v12 = [self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005D74C();
    }

LABEL_7:

    v13 = 0;
    goto LABEL_12;
  }

  startDate = [sliceCopy startDate];
  v15 = [self getAnchorOfDate:dateCopy onTheDayOf:startDate];

  v16 = [NSDate dateWithTimeInterval:v15 sinceDate:boundary];
  v17 = [NSDate dateWithTimeInterval:v15 sinceDate:rightBoundary];
  endDate = [sliceCopy endDate];
  if ([endDate compare:v16] == 1)
  {
    startDate2 = [sliceCopy startDate];
    v13 = [startDate2 compare:v17] == -1;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  return v13;
}

+ (id)clipInterval:(id)interval withTimewiseSliceDefineBy:(id)by leftBoundary:(double)boundary rightBoundary:(double)rightBoundary
{
  intervalCopy = interval;
  byCopy = by;
  if (boundary <= rightBoundary)
  {
    startDate = [intervalCopy startDate];
    v15 = [self getAnchorOfDate:byCopy onTheDayOf:startDate];

    v16 = [NSDate dateWithTimeInterval:v15 sinceDate:boundary];
    v17 = [NSDate dateWithTimeInterval:v15 sinceDate:rightBoundary];
    endDate = [intervalCopy endDate];
    v19 = [v16 earlierDate:endDate];
    endDate2 = [intervalCopy endDate];
    v21 = endDate2;
    if (v19 == endDate2)
    {

      v13 = 0;
    }

    else
    {
      startDate2 = [intervalCopy startDate];
      v23 = [v17 earlierDate:startDate2];

      if (v23 == v17)
      {
        v13 = 0;
        goto LABEL_11;
      }

      startDate3 = [intervalCopy startDate];
      endDate = [v16 laterDate:startDate3];

      endDate3 = [intervalCopy endDate];
      v19 = [v17 earlierDate:endDate3];

      v13 = [intervalCopy copyWithZone:0];
      [v13 setStartDate:endDate];
      [v13 setEndDate:v19];
    }

LABEL_11:
    goto LABEL_12;
  }

  v12 = [self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10005D74C();
  }

  v13 = intervalCopy;
LABEL_12:

  return v13;
}

+ (double)clockwiseAngleFromPoint:(id)point toPoint:(id)toPoint
{
  pointCopy = point;
  toPointCopy = toPoint;
  if ([pointCopy count] == 2 && objc_msgSend(toPointCopy, "count") == 2)
  {
    v8 = [pointCopy objectAtIndexedSubscript:1];
    [v8 doubleValue];
    v10 = v9;
    v11 = [pointCopy objectAtIndexedSubscript:0];
    [v11 doubleValue];
    v13 = atan2(v10, v12);

    v14 = [toPointCopy objectAtIndexedSubscript:1];
    [v14 doubleValue];
    v16 = v15;
    v17 = [toPointCopy objectAtIndexedSubscript:0];
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
    v22 = [self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10005D7FC();
    }

    v21 = -1.0;
  }

  return v21;
}

+ (id)encodeTimeAsPointFromDate:(id)date
{
  [self timeOfDayWithDate:date];
  v4 = __sincos_stret(v3 * 6.28318531 / 24.0);
  v5 = [NSNumber numberWithDouble:v4.__cosval];
  v6 = [NSNumber numberWithDouble:v4.__sinval];
  v9[0] = v5;
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

+ (BOOL)legacyPastEventInQuestion:(id)question containsTimeOfReferenceDate:(id)date
{
  questionCopy = question;
  dateCopy = date;
  endDate = [questionCopy endDate];
  [dateCopy timeIntervalSinceDate:endDate];
  v10 = v9;

  if (v10 >= 0.0)
  {
    startDate = [questionCopy startDate];
    v13 = [self encodeTimeAsPointFromDate:startDate];

    endDate2 = [questionCopy endDate];
    v15 = [self encodeTimeAsPointFromDate:endDate2];

    v16 = [self encodeTimeAsPointFromDate:dateCopy];
    [self clockwiseAngleFromPoint:v16 toPoint:v13];
    v18 = v17 < 180.0;
    [self clockwiseAngleFromPoint:v16 toPoint:v15];
    v11 = v19 > 180.0 && v18;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)pastEventInQuestion:(id)question containsTimeOfReferenceDate:(id)date
{
  questionCopy = question;
  dateCopy = date;
  endDate = [questionCopy endDate];
  [dateCopy timeIntervalSinceDate:endDate];
  v10 = v9;

  if (v10 < 0.0)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  endDate2 = [questionCopy endDate];
  startDate = [questionCopy startDate];
  [endDate2 timeIntervalSinceDate:startDate];
  v16 = v15;

  if (v16 <= 0.0)
  {
    if (v16 < 0.0)
    {
      v23 = [self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005D86C(questionCopy);
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
    startDate2 = [questionCopy startDate];
    [self timeOfDayWithDate:startDate2];
    v19 = v18;

    endDate3 = [questionCopy endDate];
    [self timeOfDayWithDate:endDate3];
    v22 = v21;

    v11 = [self isInputDateInTimeRange:dateCopy withEarlyTimeOfDay:v19 andLateTimeOfDay:v22];
  }

LABEL_3:

  return v11;
}

+ (BOOL)pastEventInQuestion:(id)question startsAfterTimeOfReferenceDate:(id)date
{
  questionCopy = question;
  dateCopy = date;
  endDate = [questionCopy endDate];
  [dateCopy timeIntervalSinceDate:endDate];
  v10 = v9;

  if (v10 >= 0.0)
  {
    startDate = [questionCopy startDate];
    v13 = [self encodeTimeAsPointFromDate:startDate];

    v14 = [self encodeTimeAsPointFromDate:dateCopy];
    [self clockwiseAngleFromPoint:v13 toPoint:v14];
    v11 = v15 < 180.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (double)percentOfLongDurationsIn:(id)in withLongThreshold:(double)threshold
{
  inCopy = in;
  if ([inCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = inCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      v11 = threshold / 3600.0;
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

+ (double)cyclicalEncodingOfHoursInDay:(double)day useCos:(BOOL)cos
{
  v4 = day * 6.28318531 / 24.0;
  if (cos)
  {
    return cos(v4);
  }

  else
  {
    return sin(v4);
  }
}

+ (double)cyclicalEncodingOfWeekday:(id)weekday useCos:(BOOL)cos
{
  cosCopy = cos;
  v5 = [self pandasWeekdayOf:weekday] * 6.28318531 / 6.0;
  if (cosCopy)
  {

    return cos(v5);
  }

  else
  {

    return sin(v5);
  }
}

+ (id)dynamicDurationsFromEvents:(id)events withAnchorDate:(id)date withUnit:(double)unit cappedAt:(double)at
{
  eventsCopy = events;
  dateCopy = date;
  v12 = +[NSMutableArray array];
  if ([eventsCopy count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = eventsCopy;
    v13 = eventsCopy;
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
        [self dynamicDurationFromEvent:v18 withAnchorDate:dateCopy];
        if (v19 <= 0.0)
        {
          if (v19 >= 0.0)
          {
            continue;
          }

          unit = [self log];
          if (os_log_type_enabled(unit, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v18;
            _os_log_error_impl(&_mh_execute_header, unit, OS_LOG_TYPE_ERROR, "Error: extracted <0 duration from event %@. Abandoning event.", buf, 0xCu);
          }
        }

        else
        {
          if (v19 >= at)
          {
            atCopy = at;
          }

          else
          {
            atCopy = v19;
          }

          if (at > 0.0)
          {
            v19 = atCopy;
          }

          unit = [NSNumber numberWithDouble:v19 / unit];
          [v12 addObject:unit];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (!v15)
      {
LABEL_20:

        eventsCopy = v23;
        break;
      }
    }
  }

  return v12;
}

+ (double)dynamicDurationFromEvent:(id)event withAnchorDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  endDate = [eventCopy endDate];
  startDate = [eventCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v11 = v10;

  if ([OSIntelligenceUtilities pastEventInQuestion:eventCopy containsTimeOfReferenceDate:dateCopy])
  {
    [self intersectedDurationOfPastEvent:eventCopy withDateOfIntersection:dateCopy];
    v11 = v12;
  }

  return v11;
}

+ (double)intersectedDurationOfPastEvent:(id)event withDateOfIntersection:(id)intersection
{
  eventCopy = event;
  intersectionCopy = intersection;
  v8 = -1.0;
  if (eventCopy)
  {
    if ([OSIntelligenceUtilities pastEventInQuestion:eventCopy containsTimeOfReferenceDate:intersectionCopy])
    {
      endDate = [eventCopy endDate];
      v10 = [self encodeTimeAsPointFromDate:endDate];

      v11 = [self encodeTimeAsPointFromDate:intersectionCopy];
      [self clockwiseAngleFromPoint:v10 toPoint:v11];
      v8 = v12 * 86400.0 / 360.0;
    }

    else
    {
      v13 = [self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10005D93C(intersectionCopy, eventCopy);
      }
    }
  }

  return v8;
}

+ (double)exponentialDecayByDateDistance:(int)distance withDegree:(double)degree
{
  if (distance < 0)
  {
    distanceCopy = distance;
  }

  else
  {
    distanceCopy = -distance;
  }

  return exp(distanceCopy * degree);
}

+ (double)sumIntervalsWithDateDecay:(id)decay fromDate:(id)date withDecayDegree:(double)degree
{
  decayCopy = decay;
  dateCopy = date;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [decayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(decayCopy);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        startDate = [v15 startDate];
        v17 = [self datewiseDistanceBetweenDate:dateCopy andDate:startDate];

        [self exponentialDecayByDateDistance:v17 withDegree:degree];
        v19 = v18;
        endDate = [v15 endDate];
        startDate2 = [v15 startDate];
        [endDate timeIntervalSinceDate:startDate2];
        v23 = v22;

        v13 = v13 + v19 * v23;
      }

      v11 = [decayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (double)countIntervalsWithDateDecay:(id)decay fromDate:(id)date withDecayDegree:(double)degree
{
  decayCopy = decay;
  dateCopy = date;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [decayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(decayCopy);
        }

        startDate = [*(*(&v19 + 1) + 8 * i) startDate];
        v16 = [self datewiseDistanceBetweenDate:dateCopy andDate:startDate];

        [self exponentialDecayByDateDistance:v16 withDegree:degree];
        v13 = v13 + v17;
      }

      v11 = [decayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (id)longestK:(int64_t)k intervalsInArray:(id)array
{
  v5 = [array sortedArrayUsingComparator:&stru_100095360];
  if ([v5 count] < k)
  {
    k = [v5 count];
  }

  v6 = [v5 subarrayWithRange:{0, k}];

  return v6;
}

+ (id)longestKIntervals:(int64_t)intervals endAfter:(id)after startBefore:(id)before fromIntervals:(id)fromIntervals
{
  fromIntervalsCopy = fromIntervals;
  before = [NSPredicate predicateWithFormat:@"((endDate >= %@) AND (startDate <= %@))", after, before];
  v11 = [fromIntervalsCopy filteredArrayUsingPredicate:before];

  v12 = [OSIntelligenceUtilities longestK:intervals intervalsInArray:v11];

  return v12;
}

+ (id)accumulativelyBinKLongestIntervals:(int64_t)intervals endAfter:(id)after startBefore:(id)before longerThan:(double)than fromIntervals:(id)fromIntervals
{
  v8 = [self longestKIntervals:intervals endAfter:after startBefore:before fromIntervals:fromIntervals];
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
        endDate = [v16 endDate];
        startDate = [v16 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v20 = v19;

        if (v20 >= than)
        {
          startDate2 = [v16 startDate];
          endDate2 = [v16 endDate];
          [v34 components:32 fromDate:startDate2 toDate:endDate2 options:0];
          v23 = v14;
          v25 = v24 = v12;
          hour = [v25 hour];

          v12 = v24;
          v14 = v23;

          startDate3 = [v16 startDate];
          v13 = v33;
          v28 = [v34 component:32 fromDate:startDate3];

          if (hour >= 1)
          {
            do
            {
              v29 = v23[187];
              v30 = [v10 objectAtIndexedSubscript:v28];
              v31 = [v29 numberWithInteger:{objc_msgSend(v30, "integerValue") + 1}];
              [v10 setObject:v31 atIndexedSubscript:v28];

              v28 = (v28 + 1) % 24;
              --hour;
            }

            while (hour);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  return v10;
}

+ (int64_t)parseStrataTypeFromFeatureName:(id)name
{
  nameCopy = name;
  v5 = [self prefixStringFromFeatureName:nameCopy];
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

    v8 = [self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA04();
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)prefixStringFromFeatureName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"^([^_\\W]+)_" options:16 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = [self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA74();
    }

    goto LABEL_5;
  }

  v7 = [v5 firstMatchInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];
  if ([v7 numberOfRanges]< 2)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v10 = [v7 rangeAtIndex:1];
  v8 = [nameCopy substringWithRange:{v10, v11}];
LABEL_6:

  return v8;
}

+ (id)extractPercentileOrQuantileNumberIfAnyFromFeatureName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v19 = 0;
    v5 = [NSRegularExpression regularExpressionWithPattern:@"_q(\\d+)" options:1 error:&v19];
    v6 = v19;
    if (v6)
    {
      v7 = v6;
      v8 = [self log];
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
        v10 = [self log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10005DB54();
        }

        v9 = 0;
      }

      else
      {
        v10 = [v5 firstMatchInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];
        if ([v10 numberOfRanges]< 2)
        {
          v13 = -[NSObject firstMatchInString:options:range:](v8, "firstMatchInString:options:range:", nameCopy, 0, 0, [nameCopy length]);
          if ([v13 numberOfRanges] < 2)
          {
            v9 = 0;
          }

          else
          {
            v14 = [v13 rangeAtIndex:1];
            v16 = [nameCopy substringWithRange:{v14, v15}];
            v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue]);
          }
        }

        else
        {
          v11 = [v10 rangeAtIndex:1];
          v13 = [nameCopy substringWithRange:{v11, v12}];
          v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
        }
      }
    }
  }

  else
  {
    v7 = [self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC78();
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)extractLeftWatershed:(int *)watershed andRight:(int *)right fromFeatureName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v21 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:@"\\((-?\\d+) options:(-?\\d+)\\)" error:0, &v21];
    v10 = v21;
    if (v10)
    {
      v11 = [self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC08();
      }

      v12 = 0;
    }

    else
    {
      v11 = [v9 firstMatchInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];
      numberOfRanges = [v11 numberOfRanges];
      v12 = numberOfRanges > 2;
      if (numberOfRanges >= 3)
      {
        v12 = 1;
        v14 = [v11 rangeAtIndex:1];
        v16 = [nameCopy substringWithRange:{v14, v15}];
        v17 = [v11 rangeAtIndex:2];
        v19 = [nameCopy substringWithRange:{v17, v18}];
        *watershed = [v16 intValue];
        *right = [v19 intValue];
      }
    }
  }

  else
  {
    v10 = [self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC78();
    }

    v12 = 0;
  }

  return v12;
}

+ (id)getDailyAnchorsForDate:(id)date whichStrata:(int64_t)strata withNrDaysHistory:(int)history
{
  dateCopy = date;
  v8 = objc_opt_new();
  if ((history & 0x80000000) == 0)
  {
    v9 = history + 1;
    v10 = -history;
    do
    {
      v11 = [NSDate dateWithTimeInterval:dateCopy sinceDate:v10 * 86400.0];
      switch(strata)
      {
        case 1:
          v12 = [OSIntelligenceUtilities pandasWeekdayOf:dateCopy];
          v13 = [OSIntelligenceUtilities pandasWeekdayOf:v11];
          break;
        case 3:
          [dateCopy timeIntervalSinceDate:v11];
          if (v14 > 259200.0)
          {
            goto LABEL_12;
          }

LABEL_11:
          [v8 addObject:v11];
          goto LABEL_12;
        case 2:
          v12 = [OSIntelligenceUtilities isRestDay:dateCopy];
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

+ (double)secondsSinceBecomingInactiveAtDate:(id)date
{
  dateCopy = date;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000327C;
  v31 = sub_100003580;
  v32 = 0;
  v5 = [BMPublisherOptions alloc];
  v6 = +[NSDate distantPast];
  v7 = [v5 initWithStartDate:dateCopy endDate:v6 maxEvents:100 lastN:0 reversed:1];

  v8 = BiomeLibrary();
  activity = [v8 Activity];
  level = [activity Level];
  v11 = [level publisherWithOptions:v7];
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
    [v15 timeIntervalSinceDate:dateCopy];
    v17 = v16;
    if (v16 <= 0.0)
    {
      v20 = -v16;
      if ([self isActiveBiomeActivityLevelEvent:v28[5]])
      {
        v18 = [self log];
        v19 = 0.0;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          eventBody = [v28[5] eventBody];
          inUseStatus = [eventBody inUseStatus];
          *buf = 67109890;
          v34 = inUseStatus;
          v35 = 2112;
          v36 = v15;
          v37 = 2048;
          v38 = v20;
          v39 = 2112;
          v40 = dateCopy;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Last event is active (%d) at %@ (%.2f seconds ago from %@). Returning 0 second.", buf, 0x26u);
        }
      }

      else
      {
        v18 = [self log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          eventBody2 = [v28[5] eventBody];
          inUseStatus2 = [eventBody2 inUseStatus];
          *buf = 67110146;
          v34 = inUseStatus2;
          v35 = 2112;
          v36 = v15;
          v37 = 2048;
          v38 = -v17;
          v39 = 2112;
          v40 = dateCopy;
          v41 = 2048;
          v42 = -v17;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Last event is inactive (%d) at %@ (%.2f seconds ago from %@). Returning %.2f seconds.", buf, 0x30u);
        }

        v19 = -v17;
      }
    }

    else
    {
      v18 = [self log];
      v19 = 0.0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005DC7C();
      }
    }
  }

  else
  {
    v15 = [self log];
    v19 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005DCB8();
    }
  }

  _Block_object_dispose(&v27, 8);
  return v19;
}

+ (double)secondsSinceBecomingPresentAtDate:(id)date
{
  dateCopy = date;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000327C;
  v29 = sub_100003580;
  v30 = 0;
  v5 = [BMPublisherOptions alloc];
  v6 = +[NSDate distantPast];
  v7 = [v5 initWithStartDate:dateCopy endDate:v6 maxEvents:100 lastN:0 reversed:1];

  v8 = BiomeLibrary();
  activity = [v8 Activity];
  level = [activity Level];
  v11 = [level publisherWithOptions:v7];
  v12 = [v11 filterWithIsIncluded:&stru_100095400];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100033C5C;
  v24[3] = &unk_100095448;
  v24[4] = &v25;
  v24[5] = self;
  v13 = [v12 sinkWithCompletion:&stru_100095420 shouldContinue:v24];

  v14 = v26[5];
  if (v14)
  {
    [v14 timestamp];
    v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v15 timeIntervalSinceDate:dateCopy];
    if (v16 <= 0.0)
    {
      v18 = -v16;
      if ([self isUserPresentWithDisplayBiomeActivityLevelEvent:v26[5]])
      {
        v17 = [self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          eventBody = [v26[5] eventBody];
          inUseStatus = [eventBody inUseStatus];
          *buf = 67109890;
          v32 = inUseStatus;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = v18;
          v37 = 2112;
          v38 = dateCopy;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Last event is user present (%d) at %@ (%.2f seconds ago from %@).", buf, 0x26u);
        }
      }

      else
      {
        v17 = [self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          eventBody2 = [v26[5] eventBody];
          inUseStatus2 = [eventBody2 inUseStatus];
          *buf = 67110146;
          v32 = inUseStatus2;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = v18;
          v37 = 2112;
          v38 = dateCopy;
          v39 = 2048;
          v40 = v18;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Last event is user absent (%d) at %@ (%.2f seconds ago from %@). Returning %.2f seconds.", buf, 0x30u);
        }
      }
    }

    else
    {
      v17 = [self log];
      v18 = 0.0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005DD28();
      }
    }
  }

  else
  {
    v15 = [self log];
    v18 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10005DD64();
    }
  }

  _Block_object_dispose(&v25, 8);
  return v18;
}

+ (BOOL)isActiveBiomeActivityLevelEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_7;
  }

  eventBody = [eventCopy eventBody];
  if (!eventBody)
  {
    goto LABEL_7;
  }

  v6 = eventBody;
  eventBody2 = [v4 eventBody];
  hasInUseStatus = [eventBody2 hasInUseStatus];

  if (hasInUseStatus)
  {
    eventBody3 = [v4 eventBody];
    if ([eventBody3 inUseStatus])
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      eventBody4 = [v4 eventBody];
      if (([eventBody4 inUseStatus] & 2) != 0)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        eventBody5 = [v4 eventBody];
        v12 = ([eventBody5 inUseStatus] >> 4) & 1;
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

+ (BOOL)isUserPresentWithDisplayBiomeActivityLevelEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_5;
  }

  eventBody = [eventCopy eventBody];
  if (!eventBody)
  {
    goto LABEL_5;
  }

  v7 = eventBody;
  eventBody2 = [v5 eventBody];
  hasInUseStatus = [eventBody2 hasInUseStatus];

  if (hasInUseStatus)
  {
    eventBody3 = [v5 eventBody];
    [eventBody3 inUseStatus];

    eventBody4 = [v5 eventBody];
    v12 = [self isUserPresentWithDisplay:{objc_msgSend(eventBody4, "inUseStatus")}];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

+ (id)concatenateChargeSessions:(id)sessions withMaxDeltaSecondsBetweenEvents:(unint64_t)events
{
  sessionsCopy = sessions;
  if ([sessionsCopy count] > 1)
  {
    selfCopy = self;
    reverseObjectEnumerator = [sessionsCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v8 = +[NSMutableArray array];
    v9 = [allObjects count];
    LODWORD(reverseObjectEnumerator) = v9 - 1;
    if (v9 >= 2)
    {
      eventsCopy = events;
      v39 = v8;
      do
      {
        v12 = reverseObjectEnumerator;
        do
        {
          v13 = [allObjects objectAtIndexedSubscript:v12];
          v14 = +[NSNull null];
          if ([v13 isEqual:v14])
          {

            v15 = v12;
          }

          else
          {
            v16 = [allObjects objectAtIndexedSubscript:v12];

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
        LODWORD(reverseObjectEnumerator) = v12 - 1;
        if (v12 < 1)
        {
LABEL_19:
          if ((reverseObjectEnumerator & 0x80000000) == 0)
          {
            reverseObjectEnumerator = reverseObjectEnumerator;
            while (1)
            {
              v21 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator];
              startDate = [v21 startDate];
              v23 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator + 1];
              endDate = [v23 endDate];
              [startDate timeIntervalSinceDate:endDate];
              v26 = fabs(v25);

              if (v26 > eventsCopy)
              {
                break;
              }

              v20 = reverseObjectEnumerator-- <= 0;
              if (v20)
              {
                goto LABEL_24;
              }
            }
          }
        }

        else
        {
          reverseObjectEnumerator = (v12 - 1);
          do
          {
            v17 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator];
            v18 = +[NSNull null];
            if ([v17 isEqual:v18])
            {
            }

            else
            {
              v19 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator];

              if (v19)
              {
                goto LABEL_19;
              }
            }

            v20 = reverseObjectEnumerator-- <= 0;
          }

          while (!v20);
LABEL_24:
          LODWORD(reverseObjectEnumerator) = -1;
        }

        if (reverseObjectEnumerator >= v12 - 1)
        {
          v33 = [allObjects objectAtIndexedSubscript:v12];
          LODWORD(reverseObjectEnumerator) = v12 - 1;
        }

        else
        {
          v41 = [_OSIntelligenceChargeSession alloc];
          v42 = [allObjects objectAtIndexedSubscript:v12];
          startDate2 = [v42 startDate];
          v27 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator + 1];
          endDate2 = [v27 endDate];
          v29 = [allObjects objectAtIndexedSubscript:v12];
          startSoC = [v29 startSoC];
          v31 = [allObjects objectAtIndexedSubscript:reverseObjectEnumerator + 1];
          endSoC = [v31 endSoC];
          v33 = [(_OSIntelligenceChargeSession *)v41 initWithStartDate:startDate2 withEndDate:endDate2 withStartSoC:startSoC withEndSoC:endSoC];

          v8 = v39;
        }

        [v8 addObject:v33];
      }

      while (reverseObjectEnumerator > 0);
    }

    if (!reverseObjectEnumerator)
    {
      v34 = [allObjects objectAtIndexedSubscript:0];
      [v8 addObject:v34];
    }

    v35 = [selfCopy log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allObjects count] - objc_msgSend(v8, "count"));
      *buf = 138412290;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Concatenated %@ events", buf, 0xCu);
    }
  }

  else
  {
    allObjects = sessionsCopy;
    v8 = allObjects;
  }

  return v8;
}

+ (id)getUsageBucketsForEvents:(id)events forDate:(id)date withLog:(id)log
{
  eventsCopy = events;
  dateCopy = date;
  logCopy = log;
  memset(v56, 0, sizeof(v56));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = eventsCopy;
  v46 = [eventsCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
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
      startDate = [v11 startDate];
      v14 = [v12 components:112 fromDate:startDate];

      v15 = +[NSCalendar currentCalendar];
      endDate = [v11 endDate];
      v17 = [v15 components:96 fromDate:endDate];

      hour = [v14 hour];
      hour2 = [v17 hour];
      minute = [v14 minute];
      minute2 = [v17 minute];
      v20 = +[NSCalendar currentCalendar];
      startDate2 = [v11 startDate];
      if ([v20 isDate:startDate2 inSameDayAsDate:dateCopy])
      {

        goto LABEL_22;
      }

      v45 = hour2;
      startDate3 = [v11 startDate];
      [dateCopy earlierDate:startDate3];
      v23 = v9;
      v25 = v24 = dateCopy;

      v26 = v25 == v24;
      dateCopy = v24;
      v9 = v23;
      if (!v26)
      {
        if (hour < v45)
        {
          *(v56 + hour) = sqrt((60 - minute)) + *(v56 + hour);
          if (hour + 1 < v45)
          {
            v27 = ~hour + v45;
            v28 = v56 + hour + 1;
            do
            {
              *v28 = *v28 + 7.74596669;
              ++v28;
              --v27;
            }

            while (v27);
          }

LABEL_21:
          *(v56 + v45) = sqrt(minute2) + *(v56 + v45);
          goto LABEL_22;
        }

        if (hour > v45)
        {
          *(v56 + hour) = sqrt((60 - minute)) + *(v56 + hour);
          if (hour <= 22)
          {
            v29 = hour + 1;
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

        if (minute2 - minute >= 0)
        {
          *(v56 + hour) = sqrt((minute2 - minute)) + *(v56 + hour);
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
  v35 = logCopy;
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
    v38 = dateCopy;
    v39 = +[NSMutableArray array];
    for (i = 0; i != 192; i += 8)
    {
      v41 = [NSNumber numberWithDouble:*(v56 + i) / v34];
      [v39 addObject:v41];
    }

    v37 = [NSArray arrayWithArray:v39];

    dateCopy = v38;
  }

  return v37;
}

+ (double)hoursUntilUseFromBucketedUsage:(id)usage withCurrentHour:(int)hour withComponentsMinutes:(int64_t)minutes
{
  v8 = 0.0;
  v9 = 1;
  while (1)
  {
    v10 = hour + v9;
    if ((hour + v9) > 23)
    {
      v10 = hour + v9 - 24;
    }

    v11 = [usage objectAtIndexedSubscript:v10];
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

  return v9 + minutes / -60.0;
}

+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as withHourBinWidth:(unint64_t)width
{
  eventsCopy = events;
  asCopy = as;
  +[NSMutableArray array];
  v24 = v23 = asCopy;
  [asCopy timeIntervalSince1970];
  v10 = v9;
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = eventsCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = (width * 3600.0);
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
        startDate = [v17 startDate];
        [startDate timeIntervalSince1970];
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

+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as
{
  eventsCopy = events;
  asCopy = as;
  v24 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = eventsCopy;
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
        endDate = [v13 endDate];
        [asCopy timeIntervalSinceDate:endDate];
        v16 = v15;

        if (v16 > 0.0)
        {
          startDate = [v13 startDate];
          v18 = [self datewiseDistanceBetweenDate:asCopy andDate:startDate];

          endDate2 = [v13 endDate];
          v20 = [self datewiseDistanceBetweenDate:asCopy andDate:endDate2];

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

+ (id)filterEvents:(id)events withDateDistance:(int)distance fromDate:(id)date
{
  eventsCopy = events;
  dateCopy = date;
  v25 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = eventsCopy;
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
        endDate = [v14 endDate];
        [dateCopy timeIntervalSinceDate:endDate];
        v17 = v16;

        if (v17 > 0.0)
        {
          startDate = [v14 startDate];
          v19 = [self datewiseDistanceBetweenDate:dateCopy andDate:startDate];

          endDate2 = [v14 endDate];
          v21 = [self datewiseDistanceBetweenDate:dateCopy andDate:endDate2];

          if (v19 == distance || v21 == distance)
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

+ (id)filterEvents:(id)events isRecentForDate:(id)date goingDaysBack:(int64_t)back useEndDate:(BOOL)endDate
{
  eventsCopy = events;
  dateCopy = date;
  v11 = +[NSMutableArray array];
  v12 = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = eventsCopy;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = (back * 86400.0);
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (endDate)
        {
          [v19 endDate];
        }

        else
        {
          [v19 startDate];
        }
        v20 = ;
        [dateCopy timeIntervalSinceDate:{v20, v25}];
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

+ (id)filterEvents:(id)events withSameWorkOrOffStatusAs:(id)as
{
  eventsCopy = events;
  asCopy = as;
  v8 = [self isRestDay:asCopy];
  v9 = +[NSMutableArray array];
  v10 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = eventsCopy;
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
        if (v8 == [self isIntervalOnRestDay:{v16, v18}])
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

+ (id)filterEvents:(id)events withMinimumDuration:(double)duration
{
  eventsCopy = events;
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = eventsCopy;
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
        endDate = [v12 endDate];
        startDate = [v12 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v16 = v15;

        if (v16 >= duration)
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

+ (double)medianTimeBetweenDescendingEvents:(id)events
{
  eventsCopy = events;
  v4 = +[NSMutableArray array];
  if ([eventsCopy count] >= 2)
  {
    v5 = 0;
    do
    {
      v6 = [eventsCopy objectAtIndexedSubscript:v5];
      startDate = [v6 startDate];
      v8 = [eventsCopy objectAtIndexedSubscript:++v5];
      endDate = [v8 endDate];
      [startDate timeIntervalSinceDate:endDate];
      v11 = v10;

      if (v11 >= 0.0)
      {
        v12 = [NSNumber numberWithDouble:v11];
        [v4 addObject:v12];
      }
    }

    while (v5 < ([eventsCopy count] - 1));
  }

  [OSIntelligenceUtilities medianOf:v4];
  v14 = v13;

  return v14;
}

+ (double)meanEventDuration:(id)duration
{
  durationCopy = duration;
  if ([durationCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = durationCopy;
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

+ (id)getDurationsFromEvents:(id)events withUnit:(double)unit cappedAt:(double)at
{
  eventsCopy = events;
  v8 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = eventsCopy;
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
        endDate = [v14 endDate];
        startDate = [v14 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v18 = v17 / unit;

        if (v18 >= at)
        {
          atCopy = at;
        }

        else
        {
          atCopy = v18;
        }

        if (at <= 0.0)
        {
          atCopy = v18;
        }

        v20 = [NSNumber numberWithDouble:atCopy];
        [v8 addObject:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)predicateForEventsWithMaximumDuration:(double)duration
{
  v3 = [NSNumber numberWithDouble:duration];
  v4 = [NSPredicate predicateWithFormat:@"((endDate.timeIntervalSinceReferenceDate - startDate.timeIntervalSinceReferenceDate) <= %@)", v3];

  return v4;
}

+ (double)sumDurationsOfEvents:(id)events intersectingDateRangeFrom:(id)from to:(id)to
{
  eventsCopy = events;
  fromCopy = from;
  toCopy = to;
  v10 = [eventsCopy count];
  v33 = toCopy;
  if (toCopy && fromCopy && v10 && ([fromCopy laterDate:toCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == v33))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = eventsCopy;
    v15 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v32 = eventsCopy;
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
          startDate = [v19 startDate];
          endDate = [v19 endDate];
          v22 = [startDate laterDate:endDate];
          endDate2 = [v19 endDate];

          if (v22 == endDate2)
          {
            startDate2 = [v19 startDate];
            v24 = [fromCopy laterDate:startDate2];

            endDate3 = [v19 endDate];
            v29 = [v33 earlierDate:endDate3];

            [v29 timeIntervalSinceDate:v24];
            if (v30 >= 0.0)
            {
              v13 = v13 + v30;
            }

            else
            {
              v31 = [self log];
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
            v24 = [self log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              startDate3 = [v19 startDate];
              endDate4 = [v19 endDate];
              *buf = 138412802;
              v41 = startDate3;
              v42 = 2112;
              v43 = endDate4;
              v44 = 2112;
              v45 = v19;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Negative event duration with start date %@ and end date %@ from event %@", buf, 0x20u);
            }
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
      eventsCopy = v32;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v12 = [self log];
    v13 = 0.0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = eventsCopy;
      v42 = 2112;
      v43 = fromCopy;
      v44 = 2112;
      v45 = v33;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid argument(s): events = %@ | startDate = %@ | endDate = %@", buf, 0x20u);
    }
  }

  return v13;
}

+ (id)roundedDateFromDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:124 fromDate:dateCopy];

  v6 = (([v5 minute] / 30 + 1) * 30.0);
  [v5 setMinute:0];
  v7 = [v4 dateFromComponents:v5];
  v8 = [v7 dateByAddingTimeInterval:(60 * v6)];

  return v8;
}

+ (double)timeInSeconds:(id)seconds
{
  secondsCopy = seconds;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:224 fromDate:secondsCopy];

  hour = [v5 hour];
  v7 = (60 * [v5 minute]) + hour * 3600.0;
  v8 = v7 + [v5 second];

  return v8;
}

+ (int)pandasWeekdayOf:(id)of forTimeZone:(id)zone
{
  zoneCopy = zone;
  ofCopy = of;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 componentsInTimeZone:zoneCopy fromDate:ofCopy];

  LODWORD(ofCopy) = [v8 weekday] + 5;
  return ofCopy % 7;
}

+ (int)pandasWeekdayOf:(id)of
{
  ofCopy = of;
  v5 = +[NSTimeZone localTimeZone];
  LODWORD(self) = [self pandasWeekdayOf:ofCopy forTimeZone:v5];

  return self;
}

+ (double)timeOfDayWithDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:224 fromDate:dateCopy];

  hour = [v5 hour];
  minute = [v5 minute];
  v8 = minute / 60.0 + hour + [v5 second] / 3600.0;

  return v8;
}

+ (double)hourFromDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:32 fromDate:dateCopy];

  hour = [v5 hour];
  return hour;
}

+ (id)midnightDateFrom:(id)from
{
  fromCopy = from;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v5];

  v6 = [v4 components:540 fromDate:fromCopy];

  v7 = [v4 dateFromComponents:v6];

  return v7;
}

+ (double)maxOf:(id)of
{
  v3 = [of valueForKeyPath:@"@max.doubleValue"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

+ (double)meanOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = ofCopy;
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

+ (double)standardDeviationOf:(id)of
{
  ofCopy = of;
  v4 = 0.0;
  if ([ofCopy count] >= 2)
  {
    [OSIntelligenceUtilities meanOf:ofCopy];
    v6 = v5;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = ofCopy;
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

+ (double)medianOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    v4 = [ofCopy sortedArrayUsingSelector:"compare:"];
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

+ (double)meanAbsoluteDeviationOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    [self meanOf:ofCopy];
    v6 = v5;
    v7 = [ofCopy mutableCopy];
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

    [self meanOf:v7];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (double)qthPercentileOf:(id)of withQ:(double)q
{
  ofCopy = of;
  v6 = [ofCopy count];
  v7 = 0.0;
  if (q <= 100.0 && q >= 0.0 && v6 != 0)
  {
    v9 = [ofCopy sortedArrayUsingSelector:"compare:"];
    v10 = v9;
    if (q >= 2.22044605e-16)
    {
      v12 = 100.0 - q;
      if (100.0 - q >= 2.22044605e-16)
      {
        v13 = ([ofCopy count] - 1) * q / 100.0;
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

      lastObject = [v10 lastObject];
    }

    else
    {
      lastObject = [v9 firstObject];
    }

    v25 = lastObject;
    [lastObject doubleValue];
    v7 = v26;

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

+ (double)getHourBinID:(id)d forHourBin:(unint64_t)bin
{
  dCopy = d;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:dCopy];

  v8 = [v7 hour] / bin;
  return v8;
}

+ (id)events:(id)events forHourBin:(unint64_t)bin date:(id)date withMaxDuration:(double)duration
{
  eventsCopy = events;
  dateCopy = date;
  v12 = +[NSCalendar currentCalendar];
  timeZone = [v12 timeZone];
  v14 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMT")}];

  v33 = v14;
  v34 = v12;
  v32 = [v12 components:32 fromDate:v14];
  hour = [v32 hour];
  v16 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = eventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = hour / bin;
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
        startDate = [v23 startDate];
        [self getHourBinID:startDate forHourBin:bin];
        if (v20 == v25)
        {
          endDate = [v23 endDate];
          [endDate timeIntervalSinceDate:startDate];
          v28 = v27 / 3600.0;

          if (v28 >= duration)
          {
            durationCopy = duration;
          }

          else
          {
            durationCopy = v28;
          }

          if (duration <= 0.0)
          {
            durationCopy = v28;
          }

          v30 = [NSNumber numberWithDouble:durationCopy];
          [v16 addObject:v30];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  return v16;
}

+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)off withContext:(id)context
{
  bzero(v14, 0x328uLL);
  [self getBatteryLevelDurations:v14];
  v6 = [self log];
  v7 = [self percentageOfTimeForBatteryLevels:v14 withLog:v6];

  v8 = [v7 objectAtIndexedSubscript:3];
  [v8 floatValue];
  v10 = v9;

  v11 = 0;
  v12 = off + 1;
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

+ (id)filterEventsSortedByStartDateAscending:(id)ascending startsBefore:(id)before dynamicallyAroundDate:(id)date withHourBinWidth:(unint64_t)width
{
  ascendingCopy = ascending;
  dateCopy = date;
  beforeCopy = before;
  v39 = +[NSMutableArray array];
  v12 = +[NSCalendar currentCalendar];
  timeZone = [v12 timeZone];
  v14 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMT")}];

  timeZone2 = [v12 timeZone];
  v16 = [beforeCopy dateByAddingTimeInterval:{objc_msgSend(timeZone2, "secondsFromGMT")}];

  v37 = v14;
  [v12 components:96 fromDate:v14];
  v36 = v40 = v12;
  v17 = [v12 dateFromComponents:?];
  v38 = [v17 dateByAddingTimeInterval:86400.0];
  context = objc_autoreleasePoolPush();
  if ([ascendingCopy count])
  {
    v18 = 0;
    v19 = width * 1800.0;
    do
    {
      v20 = [ascendingCopy objectAtIndexedSubscript:v18];
      startDate = [v20 startDate];

      if (v18)
      {
        v22 = [ascendingCopy objectAtIndexedSubscript:v18 - 1];
        endDate = [v22 endDate];
      }

      else
      {
        endDate = +[NSDate distantPast];
      }

      [startDate timeIntervalSinceDate:endDate];
      if (v24 >= 0.0)
      {
        [startDate timeIntervalSinceDate:v16];
        if (v25 < 0.0)
        {
          v26 = [v40 components:96 fromDate:startDate];
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
            [ascendingCopy objectAtIndexedSubscript:v18];
            v33 = v32 = v16;
            [v39 addObject:v33];

            v16 = v32;
          }
        }
      }

      ++v18;
    }

    while ([ascendingCopy count] > v18);
  }

  objc_autoreleasePoolPop(context);

  return v39;
}

+ (id)readStringForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (void)setDate:(id)date forPreferenceKey:(id)key inDomain:(id)domain
{
  key = key;
  domainCopy = domain;
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  CFPreferencesSetAppValue(key, v8, domainCopy);
}

+ (id)dateForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);
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

+ (id)numberForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (id)readDictForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (id)getTestVector:(id)vector
{
  vectorCopy = vector;
  v46 = 0;
  v42 = [NSRegularExpression regularExpressionWithPattern:@"(.+?) options:(.+?)" error:1, &v46];
  v4 = v46;
  v45 = v4;
  v40 = vectorCopy;
  v5 = [NSString stringWithContentsOfURL:vectorCopy encoding:1 error:&v45];
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

+ (id)loadCompiledModelFromPath:(id)path
{
  pathCopy = path;
  v5 = os_transaction_create();
  v6 = [NSURL fileURLWithPath:pathCopy];

  v7 = [self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10005DDD4();
  }

  v13 = 0;
  v8 = [MLModel modelWithContentsOfURL:v6 error:&v13];
  v9 = v13;
  if (v9 || !v8)
  {
    v11 = [self log];
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

+ (id)generateRandomIntegersInRange:(_NSRange)range count:(int64_t)count seed:(unint64_t)seed
{
  if (count < 1)
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    countCopy = count;
    length = range.length;
    location = range.location;
    srandom(seed);
    v8 = [NSMutableArray arrayWithCapacity:countCopy];
    do
    {
      location = [NSNumber numberWithInt:(random() % length) + location];
      [v8 addObject:location];

      --countCopy;
    }

    while (countCopy);
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
    v3 = [self log];
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

+ (void)logMemoryUsageInternalForEvent:(id)event
{
  eventCopy = event;
  if (+[OSIntelligenceUtilities isInternalBuild])
  {
    v5 = +[OSIntelligenceUtilities getMemoryUsage];
    v7 = v6;
    v8 = [self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DEF4(v5, v7, eventCopy, v8);
    }
  }
}

@end