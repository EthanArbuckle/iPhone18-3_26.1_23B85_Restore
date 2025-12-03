@interface MOTime
+ (id)buildSimpleMealTagIntervalsForDate:(id)date;
+ (id)buildSimpleTimeTagIntervalsForDate:(id)date;
+ (id)buildTimeTagIntervalsForDate:(id)date;
+ (id)dateFromDate:(id)date hour:(int64_t)hour;
+ (id)dayOfWeekFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager;
+ (id)localTimeOfDate:(id)date timeZone:(id)zone;
+ (id)timeFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager;
+ (id)timeOfDayPrefixFromStartDate:(id)date endDate:(id)endDate;
+ (id)timeStringFromTimeTag:(unint64_t)tag;
+ (id)timeStringSingularToPluralForm:(id)form;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate nowDate:(id)nowDate timeZone:(id)zone;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
+ (unint64_t)dayOfWeekTagFromDate:(id)date;
+ (unint64_t)dayOfWeekTagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)mealtagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)simpleTimetagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)timetagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)typeOfDayTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (MOTime)initWithCoder:(id)coder;
- (MOTime)initWithIdentifier:(id)identifier;
- (MOTime)initWithIdentifier:(id)identifier timestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag;
- (MOTime)initWithTimeMO:(id)o;
- (MOTime)initWithTimestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag;
- (id)date;
- (id)description;
- (id)localTime;
- (id)timeZoneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOTime

- (id)description
{
  identifier = [(MOTime *)self identifier];
  [(MOTime *)self timestamp];
  v5 = v4;
  timeString = [(MOTime *)self timeString];
  timeZone = [(MOTime *)self timeZone];
  localTime = [(MOTime *)self localTime];
  v9 = [NSString stringWithFormat:@"<MOTime identifier, %@, timestamp, %f, timeString, %@, timeZone, %@, localTime, %@, timeTag, %lu, dateReferenceTag, %lu>", identifier, v5, timeString, timeZone, localTime, [(MOTime *)self timeTag], [(MOTime *)self dateReferenceTag]];

  return v9;
}

- (id)localTime
{
  [(MOTime *)self timestamp];
  if (v3 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    [(MOTime *)self timestamp];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    timeZoneObject = [(MOTime *)self timeZoneObject];
    v6 = [MOTime localTimeOfDate:v4 timeZone:timeZoneObject];
  }

  return v6;
}

- (id)timeZoneObject
{
  timeZone = [(MOTime *)self timeZone];

  if (timeZone)
  {
    timeZone2 = [(MOTime *)self timeZone];
    v5 = [NSTimeZone timeZoneWithName:timeZone2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOTime)initWithTimeMO:(id)o
{
  if (o)
  {
    oCopy = o;
    identifier = [oCopy identifier];
    [oCopy timestamp];
    v7 = v6;
    timeString = [oCopy timeString];
    timeZone = [oCopy timeZone];
    timeTag = [oCopy timeTag];

    self = [(MOTime *)self initWithIdentifier:identifier timestamp:timeString timeString:timeZone timeZone:timeTag timeTag:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOTime)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOTime initWithIdentifier:v6];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOTime.m" lineNumber:102 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOTime initWithIdentifier:]", 102}];
  }

  v8 = +[NSDate date];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [(MOTime *)self initWithIdentifier:identifierCopy timestamp:@"today" timeString:@"Unknown" timeZone:0 timeTag:?];

  return v9;
}

- (MOTime)initWithTimestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag
{
  zoneCopy = zone;
  stringCopy = string;
  v12 = +[NSUUID UUID];
  v13 = [(MOTime *)self initWithIdentifier:v12 timestamp:stringCopy timeString:zoneCopy timeZone:tag timeTag:timestamp];

  return v13;
}

- (MOTime)initWithIdentifier:(id)identifier timestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag
{
  identifierCopy = identifier;
  stringCopy = string;
  zoneCopy = zone;
  v19.receiver = self;
  v19.super_class = MOTime;
  v16 = [(MOTime *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v17->_timestamp = timestamp;
    objc_storeStrong(&v17->_timeString, string);
    objc_storeStrong(&v17->_timeZone, zone);
    v17->_timeTag = tag;
    v17->_dateReferenceTag = 0;
  }

  return v17;
}

- (id)date
{
  [(MOTime *)self timestamp];
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(MOTime *)self timestamp];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v4;
}

+ (id)localTimeOfDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v7 = zoneCopy;
  if (dateCopy)
  {
    if (zoneCopy)
    {
      v8 = +[NSTimeZone systemTimeZone];
      if ([v8 isEqualToTimeZone:v7])
      {
        v9 = dateCopy;
      }

      else
      {
        v10 = [v7 secondsFromGMTForDate:dateCopy];
        v11 = v10 - [v8 secondsFromGMTForDate:dateCopy];
        v9 = [dateCopy dateByAddingTimeInterval:v11];
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = 138413314;
          v15 = dateCopy;
          v16 = 2112;
          v17 = v7;
          v18 = 2112;
          v19 = v8;
          v20 = 2048;
          v21 = v11;
          v22 = 2112;
          v23 = v9;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "localTime, object date, %@, object timezone, %@, system timezone, %@, timezone diff, %ld, adjusted date, %@", &v14, 0x34u);
        }
      }
    }

    else
    {
      v9 = dateCopy;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)timeFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager
{
  dateCopy = date;
  managerCopy = manager;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;
  if (managerCopy)
  {
    v10 = [managerCopy timeZoneAtDate:dateCopy];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412802;
      v17 = dateCopy;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = managerCopy;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "timeZone, date, %@, timeZone, %@, source, timeZoneManager, %@", &v16, 0x20u);
    }
  }

  else
  {
    v10 = +[NSTimeZone systemTimeZone];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime timeFromStartDate:endDate:timeZoneManager:];
    }
  }

  v12 = [MOTime alloc];
  name = [v10 name];
  v14 = [(MOTime *)v12 initWithTimestamp:0 timeString:name timeZone:0 timeTag:v9];

  return v14;
}

+ (id)dateFromDate:(id)date hour:(int64_t)hour
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:60 fromDate:dateCopy];

  [v7 setHour:hour];
  v8 = [v6 dateFromComponents:v7];

  return v8;
}

+ (id)buildTimeTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = [NSDateInterval alloc];
  v7 = [MOTime dateFromDate:dateCopy hour:0];
  v8 = [v6 initWithStartDate:v7 duration:10800.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:8 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = [NSDateInterval alloc];
  v12 = [MOTime dateFromDate:dateCopy hour:3];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:2 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = [NSDateInterval alloc];
  v17 = [MOTime dateFromDate:dateCopy hour:9];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:3 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [MOTimeTagInterval alloc];
  v21 = [NSDateInterval alloc];
  v22 = [MOTime dateFromDate:dateCopy hour:12];
  v23 = [v21 initWithStartDate:v22 duration:10800.0];
  v24 = [(MOTimeTagInterval *)v20 initWithTimeTag:4 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [MOTimeTagInterval alloc];
  v26 = [NSDateInterval alloc];
  v27 = [MOTime dateFromDate:dateCopy hour:15];
  v28 = [v26 initWithStartDate:v27 duration:10800.0];
  v29 = [(MOTimeTagInterval *)v25 initWithTimeTag:5 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [MOTimeTagInterval alloc];
  v31 = [NSDateInterval alloc];
  v32 = [MOTime dateFromDate:dateCopy hour:18];
  v33 = [v31 initWithStartDate:v32 duration:10800.0];
  v34 = [(MOTimeTagInterval *)v30 initWithTimeTag:6 dateInterval:v33];
  [v4 addObject:v34];

  v35 = [MOTimeTagInterval alloc];
  v36 = [NSDateInterval alloc];
  v37 = [MOTime dateFromDate:dateCopy hour:21];

  v38 = [v36 initWithStartDate:v37 duration:10800.0];
  v39 = [(MOTimeTagInterval *)v35 initWithTimeTag:7 dateInterval:v38];
  [v4 addObject:v39];

  v40 = [v4 copy];

  return v40;
}

+ (id)buildSimpleTimeTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = [NSDateInterval alloc];
  v7 = [MOTime dateFromDate:dateCopy hour:3];
  v8 = [v6 initWithStartDate:v7 duration:32400.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:2 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = [NSDateInterval alloc];
  v12 = [MOTime dateFromDate:dateCopy hour:12];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:4 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = [NSDateInterval alloc];
  v17 = [MOTime dateFromDate:dateCopy hour:18];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:6 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [MOTimeTagInterval alloc];
  v21 = [NSDateInterval alloc];
  v22 = [MOTime dateFromDate:dateCopy hour:21];
  v23 = [v21 initWithStartDate:v22 duration:21600.0];
  v24 = [(MOTimeTagInterval *)v20 initWithTimeTag:7 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [MOTimeTagInterval alloc];
  v26 = [NSDateInterval alloc];
  v27 = [MOTime dateFromDate:dateCopy hour:-3];

  v28 = [v26 initWithStartDate:v27 duration:21600.0];
  v29 = [(MOTimeTagInterval *)v25 initWithTimeTag:7 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [v4 copy];

  return v30;
}

+ (unint64_t)timetagFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [MOTime buildTimeTagIntervalsForDate:dateCopy];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v42 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v40;
      *&v11 = 138413058;
      v33 = v11;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v33}];
        v17 = v16;
        if (v16 > 0.0)
        {
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v45 = dateCopy;
            v46 = 2112;
            v47 = endDateCopy;
            v48 = 2112;
            v49 = v15;
            v50 = 2048;
            v51 = v17;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v17 > 0.7)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v8 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v12)
          {
            goto LABEL_9;
          }

          goto LABEL_19;
        }
      }

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      timetag = [v15 timetag];
      v30 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v33;
      v45 = dateCopy;
      v46 = 2112;
      v47 = endDateCopy;
      v48 = 2048;
      v49 = timetag;
      v50 = 2112;
      v51 = *&v30;
    }

    else
    {
LABEL_19:

      v19 = [MOTime buildSimpleTimeTagIntervalsForDate:dateCopy];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v19;
      v20 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (!v20)
      {
LABEL_31:
        timetag3 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v22 = v20;
      v23 = *v36;
      *&v21 = 138413058;
      v34 = v21;
LABEL_21:
      v24 = 0;
      while (1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v35 + 1) + 8 * v24);
        [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v34, v35}];
        v26 = v25;
        if (v25 > 0.0)
        {
          v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v45 = dateCopy;
            v46 = 2112;
            v47 = endDateCopy;
            v48 = 2112;
            v49 = v15;
            v50 = 2048;
            v51 = v26;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v26 > 0.7)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v22)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }
      }

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      timetag2 = [v15 timetag];
      v30 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v34;
      v45 = dateCopy;
      v46 = 2112;
      v47 = endDateCopy;
      v48 = 2048;
      v49 = timetag2;
      v50 = 2112;
      v51 = *&v30;
    }

    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);

LABEL_35:
    timetag3 = [v15 timetag];
    goto LABEL_36;
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime timetagFromStartDate:endDate:];
  }

  timetag3 = 0;
LABEL_37:

  return timetag3;
}

+ (unint64_t)simpleTimetagFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [MOTime buildSimpleTimeTagIntervalsForDate:dateCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v27 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v25;
      *&v11 = 138413058;
      v23 = v11;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v23, v24}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v23;
              v29 = dateCopy;
              v30 = 2112;
              v31 = endDateCopy;
              v32 = 2112;
              v33 = v15;
              v34 = 2048;
              v35 = v17;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              timetag = [v15 timetag];
              v22 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v23;
              v29 = dateCopy;
              v30 = 2112;
              v31 = endDateCopy;
              v32 = 2048;
              v33 = timetag;
              v34 = 2112;
              v35 = *&v22;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            timetag2 = [v15 timetag];
            goto LABEL_23;
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    timetag2 = 0;
LABEL_23:
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime timetagFromStartDate:endDate:];
    }

    timetag2 = 0;
  }

  return timetag2;
}

+ (id)buildSimpleMealTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = [NSDateInterval alloc];
  v7 = [MOTime dateFromDate:dateCopy hour:6];
  v8 = [v6 initWithStartDate:v7 duration:18000.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:2000 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = [NSDateInterval alloc];
  v12 = [MOTime dateFromDate:dateCopy hour:11];
  v13 = [v11 initWithStartDate:v12 duration:10800.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:2001 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = [NSDateInterval alloc];
  v17 = [MOTime dateFromDate:dateCopy hour:17];

  v18 = [v16 initWithStartDate:v17 duration:14400.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:2002 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [v4 copy];

  return v20;
}

+ (unint64_t)mealtagFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [MOTime buildSimpleMealTagIntervalsForDate:dateCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v25;
      *&v11 = 138413058;
      v23 = v11;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v23, v24}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v23;
              v29 = dateCopy;
              v30 = 2112;
              v31 = endDateCopy;
              v32 = 2112;
              v33 = v15;
              v34 = 2048;
              v35 = v17;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              timetag = [v15 timetag];
              v22 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v23;
              v29 = dateCopy;
              v30 = 2112;
              v31 = endDateCopy;
              v32 = 2048;
              v33 = timetag;
              v34 = 2112;
              v35 = *&v22;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            timetag2 = [v15 timetag];
            goto LABEL_21;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    timetag2 = 0;
LABEL_21:
  }

  else
  {
    timetag2 = 0;
  }

  return timetag2;
}

+ (id)timeOfDayPrefixFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v7 = [MOTime timetagFromStartDate:dateCopy endDate:endDateCopy];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = [MOTime timeStringFromTimeTag:v7];
    v19 = 138413058;
    v20 = dateCopy;
    v21 = 2112;
    v22 = endDateCopy;
    v23 = 2048;
    v24 = v7;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timeTag, %lu(%@)", &v19, 0x2Au);
  }

  v9 = [MOTime timeStringFromTimeTag:v7];
  if (v9)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = +[NSCalendar currentCalendar];
    v13 = [MOTime alloc];
    timeZone = [v12 timeZone];
    name = [timeZone name];
    v16 = [(MOTime *)v13 initWithTimestamp:v9 timeString:name timeZone:v7 timeTag:v11];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)dayOfWeekFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager
{
  dateCopy = date;
  endDateCopy = endDate;
  managerCopy = manager;
  v10 = managerCopy;
  if (!managerCopy)
  {
    v11 = +[NSTimeZone systemTimeZone];
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
    }

    v18 = endDateCopy != 0;
    goto LABEL_13;
  }

  v11 = [managerCopy timeZoneAtDate:dateCopy];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412802;
    v30 = dateCopy;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v10;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "timeZone, startDate, %@, timeZone, %@, source, timeZoneManager, %@", &v29, 0x20u);
  }

  if (!endDateCopy)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v13 = [v10 timeZoneAtDate:dateCopy];
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
  }

  name = [v11 name];
  name2 = [v13 name];
  v17 = [name isEqualToString:name2];

  if (v17)
  {

    v18 = 1;
LABEL_13:
    v13 = [MOTime localTimeOfDate:dateCopy timeZone:v11];
    if (v18)
    {
      v20 = [MOTime localTimeOfDate:endDateCopy timeZone:v11];
    }

    else
    {
      v20 = 0;
    }

    v21 = [MOTime dayOfWeekTagFromStartDate:v13 endDate:v20];
    v22 = [MOTime timeStringFromTimeTag:v21];
    if (v22)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [MOTime alloc];
      name3 = [v11 name];
      v27 = [(MOTime *)v25 initWithTimestamp:v22 timeString:name3 timeZone:v21 timeTag:v24];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_20;
  }

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
  }

  v27 = 0;
LABEL_20:

  return v27;
}

+ (id)timeStringFromTimeTag:(unint64_t)tag
{
  if (tag <= 99)
  {
    v4 = @"night";
    v5 = @"midnight";
    if (tag != 8)
    {
      v5 = 0;
    }

    if (tag != 7)
    {
      v4 = v5;
    }

    v6 = @"preevening";
    v7 = @"evening";
    if (tag != 6)
    {
      v7 = 0;
    }

    if (tag != 5)
    {
      v6 = v7;
    }

    if (tag <= 6)
    {
      v4 = v6;
    }

    v8 = @"morning";
    v9 = @"prenoon";
    v10 = @"afternoon";
    if (tag != 4)
    {
      v10 = 0;
    }

    if (tag != 3)
    {
      v9 = v10;
    }

    if (tag != 2)
    {
      v8 = v9;
    }

    v11 = tag <= 4;
  }

  else
  {
    if (tag <= 1999)
    {
      switch(tag)
      {
        case 'd':
          result = @"today";
          break;
        case 'e':
          result = @"yesterday";
          break;
        case 'f':
          result = @"Sunday";
          break;
        case 'g':
          result = @"Monday";
          break;
        case 'h':
          result = @"Tuesday";
          break;
        case 'i':
          result = @"Wednesday";
          break;
        case 'j':
          result = @"Thursday";
          break;
        case 'k':
          result = @"Friday";
          break;
        case 'l':
          result = @"Saturday";
          break;
        case 'm':
          result = @"this week";
          break;
        case 'n':
          result = @"last week";
          break;
        case 'o':
          result = @"this month";
          break;
        case 'p':
          result = @"last month";
          break;
        case 'q':
          result = @"this year";
          break;
        case 'r':
          result = @"last year";
          break;
        default:
          result = 0;
          break;
      }

      return result;
    }

    v4 = @"dinner";
    v12 = @"weekend";
    if (tag != 10001)
    {
      v12 = 0;
    }

    if (tag == 10000)
    {
      v13 = @"weekday";
    }

    else
    {
      v13 = v12;
    }

    if (tag != 2002)
    {
      v4 = v13;
    }

    v8 = @"breakfast";
    v14 = @"lunch";
    if (tag != 2001)
    {
      v14 = 0;
    }

    if (tag != 2000)
    {
      v8 = v14;
    }

    v11 = tag <= 2001;
  }

  if (v11)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

+ (id)timeStringSingularToPluralForm:(id)form
{
  formCopy = form;
  if ([formCopy isEqualToString:@"morning"])
  {
    v4 = @"mornings";
  }

  else if ([formCopy isEqualToString:@"afternoon"])
  {
    v4 = @"afternoons";
  }

  else if ([formCopy isEqualToString:@"evening"])
  {
    v4 = @"evenings";
  }

  else if ([formCopy isEqualToString:@"night"])
  {
    v4 = @"nights";
  }

  else if ([formCopy isEqualToString:@"midnight"])
  {
    v4 = @"midnights";
  }

  else if ([formCopy isEqualToString:@"Sunday"])
  {
    v4 = @"Sundays";
  }

  else if ([formCopy isEqualToString:@"Monday"])
  {
    v4 = @"Mondays";
  }

  else if ([formCopy isEqualToString:@"Tuesday"])
  {
    v4 = @"Tuesdays";
  }

  else if ([formCopy isEqualToString:@"Wednesday"])
  {
    v4 = @"Wednesdays";
  }

  else if ([formCopy isEqualToString:@"Thursday"])
  {
    v4 = @"Thursdays";
  }

  else if ([formCopy isEqualToString:@"Friday"])
  {
    v4 = @"Fridays";
  }

  else if ([formCopy isEqualToString:@"Saturday"])
  {
    v4 = @"Saturdays";
  }

  else if ([formCopy isEqualToString:@"weekday"])
  {
    v4 = @"weekdays";
  }

  else if ([formCopy isEqualToString:@"weekend"])
  {
    v4 = @"weekends";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)typeOfDayTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  if (dateCopy)
  {
    if (endDateCopy && [endDateCopy isBeforeDate:dateCopy])
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = dateCopy;
        v29 = 2112;
        v30 = endDateCopy;
        v31 = 2112;
        v32 = zoneCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted.", buf, 0x20u);
      }

      endDateCopy = 0;
    }

    if (zoneCopy)
    {
      v11 = [MOTime localTimeOfDate:dateCopy timeZone:zoneCopy];

      if (!endDateCopy)
      {
        goto LABEL_17;
      }

      v12 = [MOTime localTimeOfDate:endDateCopy timeZone:zoneCopy];

      endDateCopy = v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = dateCopy;
      if (!endDateCopy)
      {
        goto LABEL_17;
      }
    }

    if ([endDateCopy isBeforeDate:v11])
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = v11;
        v29 = 2112;
        v30 = endDateCopy;
        v31 = 2112;
        v32 = zoneCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted after time zone shifting.", buf, 0x20u);
      }

      endDateCopy = 0;
    }

LABEL_17:
    v15 = +[NSCalendar currentCalendar];
    v27 = 0;
    *buf = 0;
    v16 = [v15 rangeOfWeekendStartDate:&v27 interval:buf containingDate:v11];
    v17 = v27;
    v18 = v17;
    if (!endDateCopy)
    {
      if (v16)
      {
        v13 = 10001;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_34;
    }

    if (!v17)
    {
      v13 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v19 = [[NSDateInterval alloc] initWithStartDate:v11 endDate:endDateCopy];
    [v19 duration];
    if (v20 == 0.0)
    {
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v21 = [NSDateInterval alloc];
    v22 = [v21 initWithStartDate:v18 duration:*buf];
    if ([v19 intersectsDateInterval:v22])
    {
      startDate = [v19 startDate];
      if ([v22 containsDate:startDate])
      {
        endDate = [v19 endDate];
        v25 = [v22 containsDate:endDate];

        if (v25)
        {
          v13 = 10001;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_32;
      }
    }

    v13 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v13 = 0;
LABEL_35:

  return v13;
}

+ (unint64_t)dayOfWeekTagFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (endDateCopy && ![dateCopy isSameDayWithDate:endDateCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = [MOTime dayOfWeekTagFromDate:dateCopy];
  }

  return v7;
}

+ (unint64_t)dayOfWeekTagFromDate:(id)date
{
  dateCopy = date;
  v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  [v4 setFirstWeekday:1];
  v5 = [v4 components:512 fromDate:dateCopy];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MOTime *)dateCopy dayOfWeekTagFromDate:v5, v6];
  }

  if ([v5 weekday] == 1)
  {
    v7 = 102;
  }

  else if ([v5 weekday] == 2)
  {
    v7 = 103;
  }

  else if ([v5 weekday] == 3)
  {
    v7 = 104;
  }

  else if ([v5 weekday] == 4)
  {
    v7 = 105;
  }

  else if ([v5 weekday] == 5)
  {
    v7 = 106;
  }

  else if ([v5 weekday] == 6)
  {
    v7 = 107;
  }

  else if ([v5 weekday] == 7)
  {
    v7 = 108;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MOTime *)dateCopy dayOfWeekTagFromDate:v5, v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = +[NSDate date];
  v8 = [MOTime dateReferenceTagFromStartDate:dateCopy endDate:endDateCopy nowDate:v7 timeZone:0];

  return v8;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v10 = +[NSDate date];
  v11 = [MOTime dateReferenceTagFromStartDate:dateCopy endDate:endDateCopy nowDate:v10 timeZone:zoneCopy];

  return v11;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate nowDate:(id)nowDate timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  nowDateCopy = nowDate;
  zoneCopy = zone;
  v13 = zoneCopy;
  if (dateCopy && zoneCopy)
  {
    v14 = [MOTime localTimeOfDate:dateCopy timeZone:zoneCopy];

    dateCopy = v14;
  }

  if (endDateCopy && v13)
  {
    v15 = [MOTime localTimeOfDate:endDateCopy timeZone:v13];

    endDateCopy = v15;
  }

  if ([nowDateCopy isBeforeDate:dateCopy])
  {
    goto LABEL_10;
  }

  if (!endDateCopy)
  {
    if ([nowDateCopy isSameDayWithDate:dateCopy])
    {
LABEL_22:
      v16 = 100;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingDayAfterDate:dateCopy])
    {
LABEL_25:
      v16 = 101;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameWeekWithDate:dateCopy])
    {
LABEL_30:
      v16 = 109;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingWeekAfterDate:dateCopy])
    {
LABEL_33:
      v16 = 110;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameMonthWithDate:dateCopy])
    {
LABEL_38:
      v16 = 111;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingMonthAfterDate:dateCopy])
    {
LABEL_41:
      v16 = 112;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameYearWithDate:dateCopy])
    {
LABEL_46:
      v16 = 113;
      goto LABEL_11;
    }

    v18 = nowDateCopy;
    v19 = dateCopy;
LABEL_49:
    if ([v18 isFollowingYearAfterDate:v19])
    {
      v16 = 114;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (([nowDateCopy isBeforeDate:endDateCopy] & 1) == 0)
  {
    if ([nowDateCopy isSameDayWithDate:dateCopy] && (objc_msgSend(nowDateCopy, "isSameDayWithDate:", endDateCopy) & 1) != 0)
    {
      goto LABEL_22;
    }

    if ([nowDateCopy isFollowingDayAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingDayAfterDate:endDateCopy])
      {
        goto LABEL_25;
      }

      if (![nowDateCopy isSameWeekWithDate:dateCopy])
      {
        goto LABEL_31;
      }
    }

    else if (([nowDateCopy isSameWeekWithDate:dateCopy] & 1) == 0)
    {
      goto LABEL_31;
    }

    if ([nowDateCopy isSameWeekWithDate:endDateCopy])
    {
      goto LABEL_30;
    }

LABEL_31:
    if ([nowDateCopy isFollowingWeekAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingWeekAfterDate:endDateCopy])
      {
        goto LABEL_33;
      }

      if (![nowDateCopy isSameMonthWithDate:dateCopy])
      {
        goto LABEL_39;
      }
    }

    else if (([nowDateCopy isSameMonthWithDate:dateCopy] & 1) == 0)
    {
      goto LABEL_39;
    }

    if ([nowDateCopy isSameMonthWithDate:endDateCopy])
    {
      goto LABEL_38;
    }

LABEL_39:
    if ([nowDateCopy isFollowingMonthAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingMonthAfterDate:endDateCopy])
      {
        goto LABEL_41;
      }

      if ([nowDateCopy isSameYearWithDate:dateCopy])
      {
LABEL_45:
        if ([nowDateCopy isSameYearWithDate:endDateCopy])
        {
          goto LABEL_46;
        }
      }
    }

    else if ([nowDateCopy isSameYearWithDate:dateCopy])
    {
      goto LABEL_45;
    }

    if (([nowDateCopy isFollowingYearAfterDate:dateCopy] & 1) == 0)
    {
      goto LABEL_10;
    }

    v18 = nowDateCopy;
    v19 = endDateCopy;
    goto LABEL_49;
  }

LABEL_10:
  v16 = 1;
LABEL_11:

  return v16;
}

- (MOTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeString"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  v10 = [coderCopy decodeInt64ForKey:@"timeTag"];
  v11 = [coderCopy decodeInt64ForKey:@"dateReferenceTag"];

  v12 = [(MOTime *)self initWithIdentifier:v5 timestamp:v8 timeString:v9 timeZone:v10 timeTag:v7];
  v13 = v12;
  if (v12)
  {
    [(MOTime *)v12 setDateReferenceTag:v11];
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeObject:self->_timeString forKey:@"timeString"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeInt64:self->_timeTag forKey:@"timeTag"];
  [coderCopy encodeInt64:self->_dateReferenceTag forKey:@"dateReferenceTag"];
}

- (unint64_t)hash
{
  identifier = [(MOTime *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(MOTime *)self identifier];
        if (identifier || ([(MOTime *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOTime *)self identifier];
          identifier3 = [(MOTime *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOTime initWithIdentifier:]";
  v3 = 1024;
  v4 = 102;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v1, 0x12u);
}

+ (void)dayOfWeekTagFromDate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  [a2 weekday];
  OUTLINED_FUNCTION_1_12();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "dayOfWeekTagFromDate, date, %@, weekday, %lu", v4, 0x16u);
}

+ (void)dayOfWeekTagFromDate:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  [a2 weekday];
  OUTLINED_FUNCTION_1_12();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "dayOfWeekTagFromDate, cannot read weekday, date, %@, weekday, %lu", v4, 0x16u);
}

@end