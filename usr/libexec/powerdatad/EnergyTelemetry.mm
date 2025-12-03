@interface EnergyTelemetry
+ (id)sharedInstance;
- (BOOL)isBAInfoAvailable;
- (BOOL)recordLastAccumulatedEnergyTelemetry:(id)telemetry;
- (EnergyTelemetry)init;
- (id)appendIncrementalData:(id)data toRecords:(id)records;
- (id)copyAccumulatedEnergyTelemetry;
- (id)fetchEmissionHistoriesForDays:(id)days fromRecords:(id)records;
- (id)findDayStarts:(id)starts returnMidnights:(id *)midnights;
- (id)getBalancingAuthority;
- (id)getDateFrom:(id)from alignedToMinutes:(unint64_t)minutes;
- (id)getIncrementalEnergyRecord;
- (id)getLastAccumulatedEnergyTelemetry;
- (id)getUTCMidnightFor:(id)for;
- (unint64_t)iterateDaysCovering:(id)covering toEnd:(id)end;
- (unsigned)getSlotWithDate:(id)date;
- (void)calculateEnergyAndPublishTelemetry;
- (void)getEnergyTelemetry;
- (void)sendDailySummaryToCoreAnalyticsForDate:(id)date withLocation:(id)location withCarbon:(double)carbon withEnergy:(double)energy withSystem:(double)system missingIntensity:(BOOL)intensity;
- (void)sendDayToCoreAnalytics:(_NSRange)analytics ofRecord:(id)record;
- (void)sendDayToPowerlog:(_NSRange)powerlog ofRecord:(id)record;
- (void)sendSlotEventToCoreAnalytics:(id)analytics;
- (void)sendTypedEventToCoreAnalyticsWithDate:(id)date withEnergy:(double)energy andIntensity:(id)intensity forSlot:(id)slot atLocation:(id)location;
- (void)setIncrementalEnergyRecord:(id)record;
@end

@implementation EnergyTelemetry

- (EnergyTelemetry)init
{
  v28.receiver = self;
  v28.super_class = EnergyTelemetry;
  v2 = [(EnergyTelemetry *)&v28 init];
  v3 = os_log_create("com.apple.powerdatad", "energyTelemetry");
  v4 = *(v2 + 5);
  *(v2 + 5) = v3;

  if (!*(v2 + 5))
  {
    v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      sub_1000077B4(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_16;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = *(v2 + 4);
  *(v2 + 4) = v5;

  if (!*(v2 + 4))
  {
    if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
    {
      sub_100007780();
    }

    goto LABEL_16;
  }

  v7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v8 = *(v2 + 1);
  *(v2 + 1) = v7;

  if (!*(v2 + 1))
  {
    if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10000774C();
    }

    goto LABEL_16;
  }

  v9 = objc_alloc_init(NSISO8601DateFormatter);
  v10 = *(v2 + 2);
  *(v2 + 2) = v9;

  v11 = *(v2 + 1);
  v12 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v11 setTimeZone:v12];

  v13 = +[NSDate date];
  v14 = [v2 getUTCMidnightFor:v13];
  v15 = *(v2 + 3);
  *(v2 + 3) = v14;

  if (!*(v2 + 3))
  {
    if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
    {
      sub_100007718();
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (sub_1000056EC())
  {
    v16 = [sub_100001E00() managerWithID:@"com.apple.powerdatad.gridManager" locationBundlePath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle"];
    v17 = *(v2 + 6);
    *(v2 + 6) = v16;
  }

  v18 = v2;
LABEL_17:

  return v18;
}

+ (id)sharedInstance
{
  if (qword_100014B18 != -1)
  {
    sub_1000077F0();
  }

  v3 = qword_100014B10;

  return v3;
}

- (id)getUTCMidnightFor:(id)for
{
  forCopy = for;
  if (forCopy)
  {
    p_utcMidnight = &self->_utcMidnight;
    if (!self->_utcMidnight || ![(NSCalendar *)self->_utcCal isDate:forCopy inSameDayAsDate:?])
    {
      v6 = [(NSCalendar *)self->_utcCal dateBySettingHour:0 minute:0 second:0 ofDate:forCopy options:0];
      utcMidnight = self->_utcMidnight;
      self->_utcMidnight = v6;

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100007804(p_utcMidnight);
      }
    }

    v8 = *p_utcMidnight;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000787C();
    }

    v8 = 0;
  }

  return v8;
}

- (unsigned)getSlotWithDate:(id)date
{
  dateCopy = date;
  v5 = [(EnergyTelemetry *)self getUTCMidnightFor:dateCopy];
  if (v5)
  {
    [dateCopy timeIntervalSinceDate:v5];
    v7 = (v6 / 60.0) / 0xF;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000078B0();
    }

    v7 = -1;
  }

  return v7;
}

- (BOOL)recordLastAccumulatedEnergyTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v5 = self->_defaults;
  objc_sync_enter(v5);
  [(NSUserDefaults *)self->_defaults setObject:telemetryCopy forKey:@"last_telemetry_baseline"];
  objc_sync_exit(v5);

  return 1;
}

- (id)getLastAccumulatedEnergyTelemetry
{
  v3 = self->_defaults;
  objc_sync_enter(v3);
  v4 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"last_telemetry_baseline"];
  objc_sync_exit(v3);

  return v4;
}

- (id)getIncrementalEnergyRecord
{
  v3 = self->_defaults;
  objc_sync_enter(v3);
  v4 = [(NSUserDefaults *)self->_defaults arrayForKey:@"incremental_telemetry_array"];
  objc_sync_exit(v3);

  return v4;
}

- (void)setIncrementalEnergyRecord:(id)record
{
  recordCopy = record;
  v4 = self->_defaults;
  objc_sync_enter(v4);
  [(NSUserDefaults *)self->_defaults setObject:recordCopy forKey:@"incremental_telemetry_array"];
  objc_sync_exit(v4);
}

- (id)getDateFrom:(id)from alignedToMinutes:(unint64_t)minutes
{
  if (from)
  {
    if (minutes)
    {
      minutesCopy = minutes;
    }

    else
    {
      minutesCopy = 60;
    }

    utcCal = self->_utcCal;
    fromCopy = from;
    v8 = [(NSCalendar *)utcCal components:96 fromDate:fromCopy];
    v9 = -[NSCalendar dateBySettingHour:minute:second:ofDate:options:](self->_utcCal, "dateBySettingHour:minute:second:ofDate:options:", [v8 hour], objc_msgSend(v8, "minute") / minutesCopy * minutesCopy, 0, fromCopy, 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isBAInfoAvailable
{
  v2 = sub_1000056EC();
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = qword_100014B30;
    v10 = qword_100014B30;
    if (!qword_100014B30)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000058D8;
      v6[3] = &unk_1000106B8;
      v6[4] = &v7;
      sub_1000058D8(v6);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    LOBYTE(v2) = objc_opt_class() != 0;
  }

  return v2;
}

- (id)findDayStarts:(id)starts returnMidnights:(id *)midnights
{
  startsCopy = starts;
  v18 = [NSSortDescriptor sortDescriptorWithKey:@"slot_date" ascending:1];
  v21 = v18;
  v6 = [NSArray arrayWithObjects:&v21 count:1];
  [startsCopy sortUsingDescriptors:v6];

  v20 = +[NSMutableIndexSet indexSet];
  v7 = [NSMutableArray arrayWithCapacity:7];
  v8 = [startsCopy count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      v12 = [startsCopy objectAtIndexedSubscript:i];
      v13 = [v12 objectForKeyedSubscript:@"slot_date"];
      v14 = [(EnergyTelemetry *)self getUTCMidnightFor:v13];

      if (v14 && ([v10 isEqualToDate:v14] & 1) == 0)
      {
        [v20 addIndex:i];
        [v7 addObject:v14];
        v15 = v14;

        v10 = v15;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (midnights)
  {
    v16 = v7;
    *midnights = v7;
  }

  return v20;
}

- (id)appendIncrementalData:(id)data toRecords:(id)records
{
  dataCopy = data;
  recordsCopy = records;
  if ([recordsCopy count] < 0x2A0)
  {
    if ([recordsCopy count])
    {
      lastObject = [recordsCopy lastObject];
      v10 = [lastObject objectForKeyedSubscript:@"slot_date"];
      if (!v10)
      {
        v11 = [lastObject objectForKeyedSubscript:@"telemetry_date"];
        v10 = [(EnergyTelemetry *)self getDateFrom:v11 alignedToMinutes:15];
      }

      v12 = [dataCopy objectForKeyedSubscript:@"slot_date"];
      if ([v12 isEqualToDate:v10])
      {
        v13 = [lastObject objectForKeyedSubscript:@"wall_energy_consumed"];
        [v13 doubleValue];
        v15 = v14;
        v16 = [dataCopy objectForKeyedSubscript:@"wall_energy_consumed"];
        [v16 doubleValue];
        v18 = [NSNumber numberWithDouble:v15 + v17];
        [dataCopy setObject:v18 forKeyedSubscript:@"wall_energy_consumed"];

        v19 = [lastObject objectForKeyedSubscript:@"system_energy_consumed"];
        [v19 doubleValue];
        v21 = v20;
        v22 = [dataCopy objectForKeyedSubscript:@"system_energy_consumed"];
        [v22 doubleValue];
        v24 = [NSNumber numberWithDouble:v21 + v23];
        [dataCopy setObject:v24 forKeyedSubscript:@"system_energy_consumed"];

        [recordsCopy removeLastObject];
      }

      [recordsCopy addObject:dataCopy];
      v8 = dataCopy;
    }

    else
    {
      [recordsCopy addObject:dataCopy];
      v8 = dataCopy;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100007924();
    }

    v8 = 0;
  }

  return v8;
}

- (void)getEnergyTelemetry
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getIncrementalEnergyRecord = [(EnergyTelemetry *)selfCopy getIncrementalEnergyRecord];
  v4 = [getIncrementalEnergyRecord mutableCopy];

  if (!v4)
  {
    v4 = +[NSMutableArray array];
  }

  v90 = v4;
  v5 = selfCopy->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100007998([v4 count], v95, v5);
  }

  copyAccumulatedEnergyTelemetry = [(EnergyTelemetry *)selfCopy copyAccumulatedEnergyTelemetry];
  if (copyAccumulatedEnergyTelemetry)
  {
    if ([v90 count])
    {
      lastObject = [v90 lastObject];
      v8 = [lastObject objectForKeyedSubscript:@"slot_date"];
      v9 = v8 == 0;

      if (v9)
      {
        if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_1000079E0();
        }

        v10 = +[NSMutableArray array];

        [(EnergyTelemetry *)selfCopy setIncrementalEnergyRecord:v10];
        v90 = v10;
      }
    }

    getLastAccumulatedEnergyTelemetry = [(EnergyTelemetry *)selfCopy getLastAccumulatedEnergyTelemetry];
    if (getLastAccumulatedEnergyTelemetry)
    {
      v11 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"system_energy_consumed"];
      [v11 doubleValue];
      v13 = v12;
      v14 = [getLastAccumulatedEnergyTelemetry objectForKeyedSubscript:@"system_energy_consumed"];
      [v14 doubleValue];
      if (v13 < v15)
      {
        v21 = 1;
      }

      else
      {
        v16 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"wall_energy_consumed"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [getLastAccumulatedEnergyTelemetry objectForKeyedSubscript:@"wall_energy_consumed"];
        [v19 doubleValue];
        v21 = v18 < v20;
      }

      v23 = [getLastAccumulatedEnergyTelemetry objectForKeyedSubscript:@"telemetry_date"];
      v24 = +[NSDate date];
      v25 = [v23 laterDate:v24];
      v87 = v23;
      v22 = v25 == v23;

      if (v22)
      {
        log = selfCopy->_log;
        v22 = 1;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v92 = v87;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Last accumulated-energy date %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v87 = 0;
      v22 = 0;
      v21 = 0;
    }

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100007A1C();
    }

    if (getLastAccumulatedEnergyTelemetry)
    {
      v27 = v87 == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27;
    if (((v22 || v21) | v28))
    {
      v29 = selfCopy->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v92 = getLastAccumulatedEnergyTelemetry;
        v93 = 1024;
        LODWORD(v94[0]) = v21;
        WORD2(v94[0]) = 1024;
        *(v94 + 6) = v22;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Recreating baseline. lastData %@ negativeDelta %u, lastDateInFuture %u", buf, 0x18u);
      }
    }

    else
    {
      v31 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"telemetry_date"];
      [v31 timeIntervalSinceDate:v87];
      v33 = v32;

      if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100007A8C();
      }

      if (v33 <= 14400.0)
      {
        v34 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"system_energy_consumed"];
        [v34 doubleValue];
        v36 = v35;
        v37 = [getLastAccumulatedEnergyTelemetry objectForKeyedSubscript:@"system_energy_consumed"];
        [v37 doubleValue];
        v39 = v38;

        v40 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"wall_energy_consumed"];
        [v40 doubleValue];
        v42 = v41;
        v43 = [getLastAccumulatedEnergyTelemetry objectForKeyedSubscript:@"wall_energy_consumed"];
        [v43 doubleValue];
        v45 = v44;

        v46 = [(EnergyTelemetry *)selfCopy getDateFrom:v87 alignedToMinutes:15];
        v47 = v87;
        v89 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"telemetry_date"];
        v48 = v47;
        v49 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"telemetry_date"];
        [v49 timeIntervalSinceDate:v46];
        v51 = v50;

        v52 = [v90 count];
        v53 = v52;
        if (v52 == 672 || 672 - v52 >= vcvtpd_s64_f64(v51 / 900.0))
        {
          v56 = v48;
        }

        else
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100007B0C();
          }

          v54 = [(EnergyTelemetry *)selfCopy getDateFrom:v89 alignedToMinutes:15];
          v55 = [v54 dateByAddingTimeInterval:-(900 * (671 - v53))];

          v46 = v55;
          v56 = v46;
        }

        v85 = v46;
        v57 = [v85 dateByAddingTimeInterval:900.0];
        v58 = [(EnergyTelemetry *)selfCopy getDateFrom:v89 alignedToMinutes:15];
        [v57 timeIntervalSinceDate:v56];
        v60 = v59;
        v84 = v56;
        [v89 timeIntervalSinceDate:v56];
        v62 = v61;
        v86 = 0;
        v63 = v36 - v39;
        v64 = v42 - v45;
        for (i = v85; ; i = v80)
        {
          v66 = [v58 laterDate:i];
          v67 = v60 > 0.001 && v66 == v58;
          v68 = v67;

          if (!v68)
          {
            break;
          }

          if (v60 <= v62)
          {
            v69 = v60;
          }

          else
          {
            v69 = v62;
          }

          v70 = +[NSMutableDictionary dictionary];
          v71 = [NSNumber numberWithUnsignedInt:[(EnergyTelemetry *)selfCopy getSlotWithDate:i]];
          [v70 setObject:v71 forKeyedSubscript:@"slot_id"];

          [v70 setObject:i forKeyedSubscript:@"slot_date"];
          v72 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"adapter_family"];
          [v70 setObject:v72 forKeyedSubscript:@"adapter_family"];

          v73 = v69 / v62;
          v74 = [NSNumber numberWithDouble:v64 * v73];
          [v70 setObject:v74 forKeyedSubscript:@"wall_energy_consumed"];

          v75 = [NSNumber numberWithDouble:v63 * v73];
          [v70 setObject:v75 forKeyedSubscript:@"system_energy_consumed"];

          v76 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"balancing_authority_id"];
          [v70 setObject:v76 forKeyedSubscript:@"balancing_authority_id"];

          v77 = [copyAccumulatedEnergyTelemetry objectForKeyedSubscript:@"telemetry_date"];
          [v70 setObject:v77 forKeyedSubscript:@"telemetry_date"];

          v78 = selfCopy->_log;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v83 = [v70 description];
            *buf = 134218242;
            v92 = v86;
            v93 = 2112;
            v94[0] = v83;
            _os_log_debug_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "Segment %lu telemetry %@", buf, 0x16u);

            ++v86;
          }

          v79 = [(EnergyTelemetry *)selfCopy appendIncrementalData:v70 toRecords:v90];
          v80 = [i dateByAddingTimeInterval:900.0];

          [v89 timeIntervalSinceDate:v80];
          v82 = v81;

          v60 = fmin(fabs(v82), 900.0);
        }

        [(EnergyTelemetry *)selfCopy setIncrementalEnergyRecord:v90];
        [(EnergyTelemetry *)selfCopy recordLastAccumulatedEnergyTelemetry:copyAccumulatedEnergyTelemetry];

        v30 = v87;
        goto LABEL_60;
      }

      if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100007B90();
      }
    }

    [(EnergyTelemetry *)selfCopy recordLastAccumulatedEnergyTelemetry:copyAccumulatedEnergyTelemetry];
    v30 = v87;
LABEL_60:

    goto LABEL_61;
  }

  if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100007BC4();
  }

LABEL_61:

  objc_sync_exit(selfCopy);
}

- (id)copyAccumulatedEnergyTelemetry
{
  v26 = 0;
  valuePtr = 0;
  v25 = 0;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[NSDate date];
  [v3 setObject:v4 forKeyedSubscript:@"telemetry_date"];

  v5 = IOServiceMatching("AppleSmartBattery");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100007C68();
    }

    goto LABEL_9;
  }

  v7 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PowerTelemetryData", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    IOObjectRelease(v7);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100007C34();
    }

LABEL_9:
    v12 = 0;
    goto LABEL_28;
  }

  v9 = CFProperty;
  Value = CFDictionaryGetValue(CFProperty, @"AccumulatedWallEnergyEstimate");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    v11 = valuePtr;
  }

  else
  {
    v11 = 0;
  }

  v13 = [NSNumber numberWithUnsignedLongLong:v11];
  [v3 setObject:v13 forKeyedSubscript:@"wall_energy_consumed"];

  v14 = CFDictionaryGetValue(v9, @"AccumulatedSystemEnergyConsumed");
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberSInt64Type, &v26);
    v15 = v26;
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSNumber numberWithUnsignedLongLong:v15];
  [v3 setObject:v16 forKeyedSubscript:@"system_energy_consumed"];

  v17 = IORegistryEntryCreateCFProperty(v7, @"AdapterDetails", kCFAllocatorDefault, 0);
  v18 = CFDictionaryGetValue(v17, @"FamilyCode");
  if (v18)
  {
    CFNumberGetValue(v18, kCFNumberSInt64Type, &v25);
    v19 = v25;
  }

  else
  {
    v19 = 0;
  }

  v20 = [NSNumber numberWithUnsignedLongLong:v19];
  [v3 setObject:v20 forKeyedSubscript:@"adapter_family"];

  CFRelease(v17);
  CFRelease(v9);
  IOObjectRelease(v7);
  if (!sub_1000056EC() || !sub_1000019E8() || ![(EnergyTelemetry *)self isBAInfoAvailable])
  {
LABEL_23:
    identifier = 0;
    goto LABEL_24;
  }

  getBalancingAuthority = [(EnergyTelemetry *)self getBalancingAuthority];
  identifier = [getBalancingAuthority identifier];

  if (!identifier)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100007C00();
    }

    goto LABEL_23;
  }

LABEL_24:
  if (identifier)
  {
    v23 = identifier;
  }

  else
  {
    v23 = &stru_100010C50;
  }

  [v3 setObject:v23 forKeyedSubscript:@"balancing_authority_id"];
  v12 = v3;

LABEL_28:
  return v12;
}

- (void)calculateEnergyAndPublishTelemetry
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  v70 = +[NSMutableIndexSet indexSet];
  getIncrementalEnergyRecord = [(EnergyTelemetry *)selfCopy getIncrementalEnergyRecord];
  v71 = [getIncrementalEnergyRecord mutableCopy];

  if (v71 && [v71 count])
  {
    if ([v71 count] && (objc_msgSend(v71, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"slot_date"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
    {
      if (os_log_type_enabled(obj[5], OS_LOG_TYPE_ERROR))
      {
        sub_100007C9C();
      }
    }

    else
    {
      v68 = [(os_log_t *)obj findDayStarts:v71 returnMidnights:0];
      if (sub_1000056EC())
      {
        if (sub_1000019E8() && [(os_log_t *)obj isBAInfoAvailable])
        {
          v6 = [(os_log_t *)obj fetchEmissionHistoriesForDays:v68 fromRecords:v71];
          v7 = obj[5];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            sub_100007CD0(v79, [v6 count], v7);
          }

          v8 = [v71 count];
          v66 = v8;
          if (v8)
          {
            v10 = 0;
            *&v9 = 138412290;
            v65 = v9;
            do
            {
              v11 = [v71 objectAtIndexedSubscript:{v10, v65}];
              v12 = [v11 mutableCopy];

              v13 = [v12 objectForKeyedSubscript:@"telemetry_date"];
              v14 = [v12 objectForKeyedSubscript:@"slot_date"];
              v15 = [v6 objectForKeyedSubscript:v14];
              v16 = v15;
              if (v14)
              {
                if (v15)
                {
                  v17 = [v15 objectForKeyedSubscript:@"average"];
                  if (!v17 || (+[NSNull null], v18 = objc_claimAutoreleasedReturnValue(), v19 = v17 == v18, v18, v19))
                  {
                    v25 = obj[5];
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = v65;
                      v78 = v12;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "systemwide emissions data wasn't found for record: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v20 = [v16 objectForKeyedSubscript:@"marginal"];
                    if (!v20 || (+[NSNull null], v21 = objc_claimAutoreleasedReturnValue(), v22 = v20 == v21, v21, v22))
                    {

                      v27 = obj[5];
                      v23 = &off_100011348;
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                      {
                        *buf = v65;
                        v78 = v12;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "marginal emissions data wasn't found for record: %@", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v23 = v20;
                    }

                    v28 = [v12 objectForKeyedSubscript:@"wall_energy_consumed"];
                    [v28 doubleValue];
                    v30 = v29;
                    [v17 doubleValue];
                    v32 = [(os_log_t *)obj calcSlotValueFromEnergy:v30 withIntensity:v31];
                    [v12 setObject:v32 forKeyedSubscript:@"carbon_footprint"];

                    [v12 setObject:v17 forKeyedSubscript:@"avg_intensity"];
                    [v12 setObject:v23 forKeyedSubscript:@"marginal_intensity"];
                    [v71 setObject:v12 atIndexedSubscript:v10];
                    [v70 addIndex:{objc_msgSend(v71, "indexOfObject:", v12)}];
                    v33 = obj[5];
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v65;
                      v78 = v12;
                      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Calculated carbon %@", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v26 = obj[5];
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = v65;
                    v78 = v12;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "emissions data wasn't found for record: %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v24 = obj[5];
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = v65;
                  v78 = v12;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "calculateEnergy tried to process a record in the old format: %@", buf, 0xCu);
                }
              }

              ++v10;
            }

            while (v66 != v10);
          }

          v67 = 0;
        }

        else
        {
          v6 = &__NSDictionary0__struct;
          v67 = 1;
        }

        if (sub_1000019E8() && ([(os_log_t *)obj isBAInfoAvailable]& 1) == 0)
        {
          v34 = obj[5];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "GridDataServices framework unavailable", buf, 2u);
          }
        }
      }

      else
      {
        v67 = 1;
      }

      v35 = [v68 count];
      for (i = [v68 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v68, "indexGreaterThanIndex:", i))
      {
        v37 = [v68 indexGreaterThanIndex:i];
        v38 = v37;
        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v35 > 4)
        {
          v39 = 1;
        }

        else
        {
          v39 = v67;
        }

        if (v39 == 1 && v37 > i)
        {
          v40 = i;
          do
          {
            v41 = [v71 objectAtIndexedSubscript:v40];
            v42 = [v41 objectForKeyedSubscript:@"carbon_footprint"];

            if (!v42)
            {
              v43 = [v71 objectAtIndexedSubscript:v40];
              v44 = [v43 mutableCopy];

              [v44 setObject:&stru_100010C50 forKeyedSubscript:@"balancing_authority_id"];
              [v44 setObject:&off_100011358 forKeyedSubscript:@"avg_intensity"];
              v45 = [v44 objectForKeyedSubscript:@"wall_energy_consumed"];
              [v45 doubleValue];
              v46 = [os_log_t calcSlotValueFromEnergy:"calcSlotValueFromEnergy:withIntensity:" withIntensity:?];
              [v44 setObject:v46 forKeyedSubscript:@"carbon_footprint"];

              [v71 setObject:v44 atIndexedSubscript:v40];
            }

            ++v40;
          }

          while (v38 != v40);
        }

        if (v38 <= i)
        {
          goto LABEL_61;
        }

        v47 = 1;
        v48 = i;
        do
        {
          v49 = [v71 objectAtIndexedSubscript:v48];
          v50 = [v49 objectForKeyedSubscript:@"carbon_footprint"];
          v51 = v50 != 0;

          v47 &= v51;
          ++v48;
        }

        while (v38 != v48);
        if (v47)
        {
LABEL_61:
          [(os_log_t *)obj sendDayToCoreAnalytics:i ofRecord:v38 - i, v71];
          [(os_log_t *)obj sendDayToPowerlog:i ofRecord:v38 - i, v71];
          [v70 addIndexesInRange:{i, v38 - i}];
        }

        --v35;
      }

      if ([v70 count])
      {
        v52 = obj[5];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v70;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Pruning processed records %@", buf, 0xCu);
        }

        [v71 removeObjectsAtIndexes:v70];
        [v70 removeAllIndexes];
      }

      v53 = +[NSDate date];
      v54 = [v53 dateByAddingTimeInterval:-345600.0];

      if (os_log_type_enabled(obj[5], OS_LOG_TYPE_DEBUG))
      {
        sub_100007D18();
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v55 = v71;
      v56 = [v55 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v56)
      {
        v57 = *v73;
        do
        {
          for (j = 0; j != v56; j = j + 1)
          {
            if (*v73 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v72 + 1) + 8 * j);
            v60 = [v59 objectForKeyedSubscript:@"telemetry_date"];
            v61 = [v60 earlierDate:v54];
            v62 = [v59 objectForKeyedSubscript:@"telemetry_date"];
            v63 = v61 == v62;

            if (v63)
            {
              [v70 addIndex:{objc_msgSend(v55, "indexOfObject:", v59)}];
            }
          }

          v56 = [v55 countByEnumeratingWithState:&v72 objects:v76 count:16];
        }

        while (v56);
      }

      v64 = obj[5];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = v70;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Pruning expired records %@", buf, 0xCu);
      }

      [v55 removeObjectsAtIndexes:v70];
      [(os_log_t *)obj setIncrementalEnergyRecord:v55];
    }
  }

  else if (os_log_type_enabled(obj[5], OS_LOG_TYPE_ERROR))
  {
    sub_100007D88();
  }

  objc_sync_exit(obj);
}

- (id)getBalancingAuthority
{
  sub_100001E00();
  if (objc_opt_class() && [(EnergyTelemetry *)self isBAInfoAvailable]&& sub_1000056EC())
  {
    latestBalancingAuthority = [(_GDSManager *)self->gridManager latestBalancingAuthority];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100007DBC(log, latestBalancingAuthority);
    }
  }

  else
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GridDataServices framework unavailable", v7, 2u);
    }

    latestBalancingAuthority = 0;
  }

  return latestBalancingAuthority;
}

- (void)sendDayToPowerlog:(_NSRange)powerlog ofRecord:(id)record
{
  length = powerlog.length;
  location = powerlog.location;
  recordCopy = record;
  if (length)
  {
    v55[0] = @"telemetry_date";
    v55[1] = @"slot_id";
    v55[2] = @"wall_energy_consumed";
    v55[3] = @"system_energy_consumed";
    v55[4] = @"adapter_family";
    v55[5] = @"balancing_authority_id";
    v55[6] = @"avg_intensity";
    v55[7] = @"marginal_intensity";
    v55[8] = @"carbon_footprint";
    v8 = [NSArray arrayWithObjects:v55 count:9];
    +[NSMutableDictionary dictionary];
    v41 = v40 = v8;
    [v41 setObject:v8 forKeyedSubscript:@"Keys"];
    v9 = 0;
    v10 = 0;
    *&v11 = 138412290;
    v35 = v11;
    selfCopy = self;
    v39 = recordCopy;
    v36 = location;
    v37 = length;
    do
    {
      context = objc_autoreleasePoolPush();
      location = [recordCopy objectAtIndexedSubscript:v10 + location];
      v13 = [location mutableCopy];

      v14 = [v13 objectForKeyedSubscript:@"sent_to_powerlog"];

      if (v14)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v49 = v13;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Skipping %@ as it was already sent to powerlog.", buf, 0xCu);
        }
      }

      else
      {
        v42 = v9;
        v16 = +[NSMutableArray array];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = v40;
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [v13 objectForKeyedSubscript:{*(*(&v44 + 1) + 8 * i), v35}];
              if (v22)
              {
                [v16 addObject:v22];
              }

              else
              {
                v23 = +[NSNull null];
                [v16 addObject:v23];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v19);
        }

        v24 = [NSNumber numberWithUnsignedInteger:v42];
        [v41 setObject:v16 forKeyedSubscript:v24];

        v9 = v42 + 1;
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"sent_to_powerlog"];
        location = v36;
        recordCopy = v39;
        [v39 setObject:v13 atIndexedSubscript:v10 + v36];

        length = v37;
        self = selfCopy;
      }

      objc_autoreleasePoolPop(context);
      ++v10;
    }

    while (v10 != length);
    v25 = [NSNumber numberWithUnsignedInteger:v9];
    [v41 setObject:v25 forKeyedSubscript:@"NumRows"];

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100007EA8();
      if (v9)
      {
        goto LABEL_20;
      }
    }

    else if (v9)
    {
LABEL_20:
      v26 = self->_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [v41 count];
        v29 = [v41 objectForKeyedSubscript:&off_100011368];
        v30 = [v29 objectAtIndexedSubscript:0];
        v31 = [NSNumber numberWithUnsignedInteger:v9 - 1];
        v32 = [v41 objectForKeyedSubscript:v31];
        v33 = [v32 objectAtIndexedSubscript:0];
        *buf = 134218498;
        v49 = v28;
        v50 = 2112;
        v51 = v30;
        v52 = 2112;
        v53 = v33;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending %lu entries to powerlog. Start %@ End %@", buf, 0x20u);
      }

      PLLogRegisteredEvent();
    }

    goto LABEL_26;
  }

  v34 = self->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Nothing to send to powerlog.", buf, 2u);
  }

LABEL_26:
}

- (void)sendDayToCoreAnalytics:(_NSRange)analytics ofRecord:(id)record
{
  length = analytics.length;
  location = analytics.location;
  recordCopy = record;
  if (length)
  {
    v33 = location;
    if (location >= location + length)
    {
      v9 = 1;
      v11 = 0.0;
      v10 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v8 = 0.0;
      v9 = 1;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [recordCopy objectAtIndexedSubscript:location];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKeyedSubscript:@"avg_intensity"];
        if (v15)
        {
          v16 = [v14 objectForKeyedSubscript:@"balancing_authority_id"];
          v17 = [&stru_100010C50 isEqualToString:v16];

          v9 &= v17;
        }

        v18 = [v14 objectForKeyedSubscript:@"sent_to_coreanalytics"];

        if (v18)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v14;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Skipping %@ as it was already sent to Core Analytics.", buf, 0xCu);
          }
        }

        else
        {
          v20 = [v14 objectForKeyedSubscript:@"carbon_footprint"];
          [v20 doubleValue];
          v8 = v8 + v21;

          v22 = [v14 objectForKeyedSubscript:@"wall_energy_consumed"];
          [v22 doubleValue];
          v10 = v10 + v23;

          v24 = [v14 objectForKeyedSubscript:@"system_energy_consumed"];
          [v24 doubleValue];
          v11 = v11 + v25;

          [(EnergyTelemetry *)self sendSlotEventToCoreAnalytics:v14];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"sent_to_coreanalytics"];
          [recordCopy setObject:v14 atIndexedSubscript:location];
        }

        objc_autoreleasePoolPop(v12);
        ++location;
        --length;
      }

      while (length);
    }

    v27 = [recordCopy objectAtIndexedSubscript:v33];
    v28 = [v27 objectForKeyedSubscript:@"slot_date"];
    v29 = [(EnergyTelemetry *)self getUTCMidnightFor:v28];

    v30 = [recordCopy objectAtIndexedSubscript:v33];
    v31 = [v30 objectForKeyedSubscript:@"balancing_authority_id"];

    v32 = self->_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413826;
      v35 = v29;
      v36 = 2112;
      v37 = v31;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v10;
      v42 = 2048;
      v43 = v11;
      v44 = 1024;
      v45 = v9 & 1;
      v46 = 2048;
      v47 = v31;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "sending daily summary: %@ %@ %.20e %.20e %.20e %d %p", buf, 0x44u);
    }

    [(EnergyTelemetry *)self sendDailySummaryToCoreAnalyticsForDate:v29 withLocation:v31 withCarbon:v9 & 1 withEnergy:v8 withSystem:v10 missingIntensity:v11];
  }

  else
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Nothing to send to Core Analytics.", buf, 2u);
    }
  }
}

- (void)sendDailySummaryToCoreAnalyticsForDate:(id)date withLocation:(id)location withCarbon:(double)carbon withEnergy:(double)energy withSystem:(double)system missingIntensity:(BOOL)intensity
{
  intensityCopy = intensity;
  locationCopy = location;
  v24[0] = locationCopy;
  v23[0] = @"domain";
  v23[1] = @"date";
  v15 = [(NSISO8601DateFormatter *)self->_utcFormatter stringFromDate:date];
  v24[1] = v15;
  v23[2] = @"summary_value";
  v16 = [NSNumber numberWithDouble:carbon];
  v24[2] = v16;
  v23[3] = @"wall_value";
  v17 = [NSNumber numberWithDouble:energy];
  v24[3] = v17;
  v23[4] = @"system_energy_value";
  v18 = [NSNumber numberWithDouble:system];
  v19 = v18;
  v20 = &__kCFBooleanTrue;
  if (!intensityCopy)
  {
    v20 = &__kCFBooleanFalse;
  }

  v24[4] = v18;
  v24[5] = v20;
  v23[5] = @"is_intensity_static";
  v23[6] = @"algorithm_enabled";
  v24[6] = &__kCFBooleanFalse;
  v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100007F18();
  }

  v22 = v21;
  AnalyticsSendEventLazy();
}

- (void)sendSlotEventToCoreAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v11 = [analyticsCopy objectForKeyedSubscript:@"balancing_authority_id"];
  v5 = [analyticsCopy objectForKeyedSubscript:@"slot_date"];
  v6 = [analyticsCopy objectForKeyedSubscript:@"wall_energy_consumed"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [analyticsCopy objectForKeyedSubscript:@"avg_intensity"];
  v10 = [analyticsCopy objectForKeyedSubscript:@"slot_id"];

  [(EnergyTelemetry *)self sendTypedEventToCoreAnalyticsWithDate:v5 withEnergy:v9 andIntensity:v10 forSlot:v11 atLocation:v8];
}

- (void)sendTypedEventToCoreAnalyticsWithDate:(id)date withEnergy:(double)energy andIntensity:(id)intensity forSlot:(id)slot atLocation:(id)location
{
  dateCopy = date;
  intensityCopy = intensity;
  slotCopy = slot;
  locationCopy = location;
  v14 = locationCopy;
  if (!intensityCopy)
  {
    intensityCopy = &off_100011358;
  }

  v19 = intensityCopy;
  v20 = locationCopy;
  v21 = dateCopy;
  v22 = slotCopy;
  v15 = slotCopy;
  v16 = dateCopy;
  v17 = v14;
  v18 = intensityCopy;
  AnalyticsSendEventLazy();
}

- (unint64_t)iterateDaysCovering:(id)covering toEnd:(id)end
{
  endCopy = end;
  v7 = [(EnergyTelemetry *)self getUTCMidnightFor:covering];
  v8 = [(EnergyTelemetry *)self getUTCMidnightFor:endCopy];
  v9 = v7;
  v10 = [v8 earlierDate:v9];

  if (v10 == v8)
  {
    v11 = 0;
    v13 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9;
    do
    {
      ++v11;
      v13 = [v12 dateByAddingTimeInterval:86400.0];

      v14 = [v8 earlierDate:v13];

      v12 = v13;
    }

    while (v14 != v8);
  }

  return v11;
}

- (id)fetchEmissionHistoriesForDays:(id)days fromRecords:(id)records
{
  daysCopy = days;
  recordsCopy = records;
  firstIndex = [daysCopy firstIndex];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", 96 * [daysCopy count]);
  v47 = daysCopy;
  v9 = [daysCopy indexGreaterThanIndex:firstIndex];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *&v10 = 138412803;
    v44 = v10;
    v45 = v8;
    while (1)
    {
      v12 = v9;
      v13 = [NSMutableDictionary dictionaryWithCapacity:v9 - firstIndex, v44];
      v14 = firstIndex;
      v51 = v13;
      if (v12 > firstIndex)
      {
        do
        {
          v15 = [recordsCopy objectAtIndexedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:@"balancing_authority_id"];
          v17 = [v13 objectForKeyedSubscript:v16];
          [v17 doubleValue];
          v19 = v18;
          v20 = [v15 objectForKeyedSubscript:@"wall_energy_consumed"];
          [v20 doubleValue];
          v22 = v19 + v21;

          v13 = v51;
          v23 = [NSNumber numberWithDouble:v22];
          [v51 setObject:v23 forKeyedSubscript:v16];

          ++v14;
        }

        while (v12 != v14);
      }

      v24 = [v13 keysSortedByValueUsingComparator:&stru_100010658];
      if ([v24 count])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v41 = log;
          v42 = [recordsCopy objectAtIndexedSubscript:firstIndex];
          v43 = [v42 objectForKeyedSubscript:@"slot_date"];
          *buf = 138412546;
          v53 = v43;
          v54 = 2112;
          v55 = v24;
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "sorted BA IDs for day %@: %@", buf, 0x16u);
        }
      }

      if ([v24 count])
      {
        v26 = [v24 objectAtIndexedSubscript:0];
      }

      else
      {
        v26 = &stru_100010C50;
      }

      v50 = v24;
      if ([v24 count] >= 2 && -[__CFString isEqualToString:](v26, "isEqualToString:", &stru_100010C50))
      {
        v27 = [v24 objectAtIndexedSubscript:1];

        v26 = v27;
      }

      v28 = firstIndex;
      if (v12 > firstIndex)
      {
        do
        {
          v29 = [recordsCopy objectAtIndexedSubscript:v28];
          v30 = [v29 mutableCopy];

          [v30 setObject:v26 forKeyedSubscript:@"balancing_authority_id"];
          [recordsCopy setObject:v30 atIndexedSubscript:v28];

          ++v28;
        }

        while (v12 != v28);
      }

      v31 = [recordsCopy objectAtIndexedSubscript:firstIndex];
      v32 = [v31 objectForKeyedSubscript:@"slot_date"];
      v33 = [(EnergyTelemetry *)self getUTCMidnightFor:v32];

      v49 = v33;
      v34 = [v33 dateByAddingTimeInterval:86400.0];
      if (!v26 || [(__CFString *)v26 isEqualToString:&stru_100010C50])
      {
        break;
      }

      v8 = v45;
      v38 = v49;
      if (sub_1000056EC())
      {
        v48 = v34;
        v39 = self->_log;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = v44;
          v53 = v49;
          v54 = 2112;
          v55 = v48;
          v56 = 2113;
          v57 = v26;
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Fetching emissions for %@ to %@ for %{private}@", buf, 0x20u);
        }

        v35 = [(_GDSManager *)self->gridManager carbonIntensityHistoryForBA:v26 from:v49 to:v48];
        historicalMap = [v35 historicalMap];
        if (historicalMap)
        {
          [v45 addEntriesFromDictionary:historicalMap];
        }

        goto LABEL_33;
      }

LABEL_34:

      v9 = [v47 indexGreaterThanIndex:v12];
      firstIndex = v12;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }
    }

    v48 = v34;
    v58[0] = @"average";
    v58[1] = @"marginal";
    v59[0] = &off_100011358;
    v59[1] = &off_100011358;
    v35 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
    if (v12 <= firstIndex)
    {
      v8 = v45;
    }

    else
    {
      v8 = v45;
      do
      {
        v36 = [recordsCopy objectAtIndexedSubscript:firstIndex];
        v37 = [v36 objectForKeyedSubscript:@"slot_date"];
        [v45 setObject:v35 forKeyedSubscript:v37];

        ++firstIndex;
      }

      while (v12 != firstIndex);
    }

    v38 = v49;
LABEL_33:

    v34 = v48;
    goto LABEL_34;
  }

LABEL_2:

  return v8;
}

@end