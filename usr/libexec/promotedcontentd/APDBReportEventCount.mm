@interface APDBReportEventCount
- (BOOL)addCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event value:(id)value environment:(id)environment branch:(id)branch;
- (BOOL)deleteCountsBetweenStartDay:(id)day endDay:(id)endDay;
- (BOOL)deleteCountsOlderThan:(id)than;
- (id)environments;
- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose;
- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event;
- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event value:(id)value;
- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose;
- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose event:(id)event;
- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose event:(id)event value:(id)value;
@end

@implementation APDBReportEventCount

- (BOOL)addCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event value:(id)value environment:(id)environment branch:(id)branch
{
  yearCopy = year;
  purposeCopy = purpose;
  eventCopy = event;
  valueCopy = value;
  environmentCopy = environment;
  branchCopy = branch;
  manager = [(APDBReportEventCount *)self manager];
  if (manager)
  {
    if (!yearCopy || !purposeCopy || !eventCopy || !environmentCopy)
    {
      v21 = APLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v64 = objc_opt_class();
        v22 = v64;
        v23 = "[%{private}@]: Error on Adding event count, NONNULL params are NULL";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if ([yearCopy integerValue] > 1231 || objc_msgSend(yearCopy, "integerValue") <= 100)
    {
      v21 = APLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v64 = objc_opt_class();
        v22 = v64;
        v23 = "[%{private}@]: Error on Adding event count, day of year is out of range.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (valueCopy)
    {
      v21 = valueCopy;
    }

    else
    {
      v21 = @"valueNullPlaceholder";
    }

    v54 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:yearCopy];
    v55 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
    v53 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:eventCopy];
    v52 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v21];
    v50 = [[APDatabaseColumn alloc] initWithName:@"count" forColumnType:0 withValue:&off_100491E60];
    v51 = [[APDatabaseColumn alloc] initWithName:@"environment" forColumnType:3 withValue:environmentCopy];
    v26 = [APDatabaseColumn alloc];
    v27 = +[NSDate date];
    v28 = [v26 initWithName:@"lastCountDate" forColumnType:4 withValue:v27];

    v49 = v28;
    if ([manager executeTransactionQueryWithType:1])
    {
      v62[0] = v54;
      v62[1] = v55;
      v62[2] = v53;
      v62[3] = v52;
      v62[4] = v50;
      v62[5] = v51;
      v62[6] = v28;
      v62[7] = v28;
      v29 = [NSArray arrayWithObjects:v62 count:8];
      v30 = [manager executeInsertQuery:@"INSERT INTO APDBReportEventCount (dayOfYear withParameters:{purpose, event, value, count, environment, lastCountDate) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT (dayOfYear, purpose, event, value, environment) DO UPDATE SET count = count + 1, lastCountDate = ?", v29}];

      if (v30 > 0)
      {
        if ([branchCopy count])
        {
          v42 = v21;
          v43 = manager;
          v44 = environmentCopy;
          v45 = valueCopy;
          v46 = eventCopy;
          v47 = purposeCopy;
          v48 = yearCopy;
          v31 = objc_alloc_init(NSMutableArray);
          v32 = objc_alloc_init(NSMutableArray);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v33 = branchCopy;
          v34 = [v33 countByEnumeratingWithState:&v56 objects:v61 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v57;
            do
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v57 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = [[APDatabaseColumn alloc] initWithName:@"branch" forColumnType:3 withValue:*(*(&v56 + 1) + 8 * i)];
                v60[0] = v54;
                v60[1] = v55;
                v60[2] = v53;
                v60[3] = v52;
                v60[4] = v51;
                v60[5] = v38;
                v39 = [NSArray arrayWithObjects:v60 count:6];
                [v31 addObjectsFromArray:v39];

                [v32 addObject:{@"((SELECT rowid FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ? AND event = ? AND value = ? AND environment = ?), ?)"}];
              }

              v35 = [v33 countByEnumeratingWithState:&v56 objects:v61 count:16];
            }

            while (v35);
          }

          v40 = [v32 componentsJoinedByString:{@", "}];
          v41 = [NSString stringWithFormat:@"INSERT INTO APDBEventBranch (eventId, branch) VALUES %@ ON CONFLICT (eventId, branch) DO NOTHING", v40];
          manager = v43;
          yearCopy = v48;
          if ([v43 executeInsertQuery:v41 withParameters:v31] <= 0)
          {
            [v43 executeTransactionQueryWithType:3];

            v24 = 0;
            eventCopy = v46;
            purposeCopy = v47;
            environmentCopy = v44;
            valueCopy = v45;
            v21 = v42;
            goto LABEL_35;
          }

          eventCopy = v46;
          purposeCopy = v47;
          environmentCopy = v44;
          valueCopy = v45;
          v21 = v42;
        }

        v24 = [manager executeTransactionQueryWithType:2];
LABEL_35:

        goto LABEL_16;
      }

      [manager executeTransactionQueryWithType:3];
    }

    v24 = 0;
    goto LABEL_35;
  }

  v21 = APLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v64 = objc_opt_class();
    v22 = v64;
    v23 = "[%{private}@]: Error APDatabaseManager is nil.";
    goto LABEL_14;
  }

LABEL_15:
  v24 = 0;
LABEL_16:

  return v24;
}

- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose
{
  yearCopy = year;
  purposeCopy = purpose;
  manager = [(APDBReportEventCount *)self manager];
  if (!manager)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (!yearCopy || !purposeCopy)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([yearCopy integerValue] > 1231 || objc_msgSend(yearCopy, "integerValue") <= 100)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "[%{private}@]: Error on getting event count, days are out of range.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v9 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:yearCopy];
  v14 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
  v16[0] = v9;
  v16[1] = v14;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  v12 = [manager executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ?" withParameters:self groupedByColumn:{v15, @"environment"}];

LABEL_14:

  return v12;
}

- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose
{
  dayCopy = day;
  endDayCopy = endDay;
  purposeCopy = purpose;
  manager = [(APDBReportEventCount *)self manager];
  if (!manager)
  {
    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138477827;
    v29 = objc_opt_class();
    v21 = v29;
    v22 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);

    goto LABEL_18;
  }

  if (!dayCopy || !endDayCopy || !purposeCopy)
  {
    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138477827;
    v29 = objc_opt_class();
    v21 = v29;
    v22 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
    goto LABEL_17;
  }

  if ([dayCopy integerValue] <= 366 && objc_msgSend(endDayCopy, "integerValue") <= 366 && objc_msgSend(dayCopy, "integerValue") >= 1 && objc_msgSend(endDayCopy, "integerValue") > 0)
  {
    v12 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:dayCopy];
    v13 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:endDayCopy];
    v14 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
    integerValue = [endDayCopy integerValue];
    if (integerValue >= [dayCopy integerValue])
    {
      v26[0] = v12;
      v26[1] = v13;
      v26[2] = v14;
      v19 = [NSArray arrayWithObjects:v26 count:3];
      v20 = @"SELECT rowid, * FROM APDBReportEventCount WHERE dayOfYear >= ? AND dayOfYear <= ? AND purpose = ?";
    }

    else
    {
      v25 = v14;
      v16 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E78];
      v17 = v13;
      v18 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E60];
      v27[0] = v12;
      v27[1] = v16;
      v27[2] = v18;
      v27[3] = v17;
      v27[4] = v25;
      v19 = [NSArray arrayWithObjects:v27 count:5];

      v13 = v17;
      v14 = v25;
      v20 = @"SELECT rowid, * FROM APDBReportEventCount WHERE ((dayOfYear >= ? AND dayOfYear <= ?) OR (dayOfYear >= ? AND dayOfYear <= ?)) AND purpose = ?";
    }

    v23 = [manager executeSelectQuery:v20 forTable:self withParameters:v19 groupedByColumn:@"environment"];

    goto LABEL_19;
  }

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v29 = objc_opt_class();
    v21 = v29;
    v22 = "[%{private}@]: Error on getting event count, days are out of range.";
    goto LABEL_17;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event
{
  yearCopy = year;
  purposeCopy = purpose;
  eventCopy = event;
  manager = [(APDBReportEventCount *)self manager];
  if (!manager)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v22 = objc_opt_class();
      v13 = v22;
      v14 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_13;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (!yearCopy || !purposeCopy || !eventCopy)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v22 = objc_opt_class();
      v13 = v22;
      v14 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([yearCopy integerValue] > 1231 || objc_msgSend(yearCopy, "integerValue") <= 100)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v22 = objc_opt_class();
      v13 = v22;
      v14 = "[%{private}@]: Error on getting event count, days are out of range.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v12 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:yearCopy];
  v17 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
  v18 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:eventCopy];
  v20[0] = v12;
  v20[1] = v17;
  v20[2] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:3];
  v15 = [manager executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ? AND event = ?" withParameters:self groupedByColumn:{v19, @"environment"}];

LABEL_15:

  return v15;
}

- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose event:(id)event
{
  dayCopy = day;
  endDayCopy = endDay;
  purposeCopy = purpose;
  eventCopy = event;
  manager = [(APDBReportEventCount *)self manager];
  if (manager)
  {
    if (dayCopy && endDayCopy && purposeCopy && eventCopy)
    {
      if ([dayCopy integerValue] <= 1231 && objc_msgSend(endDayCopy, "integerValue") <= 1231 && objc_msgSend(dayCopy, "integerValue") >= 101 && objc_msgSend(endDayCopy, "integerValue") > 100)
      {
        v15 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:dayCopy];
        v20 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:endDayCopy];
        v28 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
        v29 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:eventCopy];
        integerValue = [endDayCopy integerValue];
        if (integerValue >= [dayCopy integerValue])
        {
          v30[0] = v15;
          v30[1] = v20;
          v23 = v28;
          v30[2] = v28;
          v30[3] = v29;
          v24 = [NSArray arrayWithObjects:v30 count:4];
          v25 = @"SELECT rowid, * FROM APDBReportEventCount WHERE dayOfYear >= ? AND dayOfYear <= ? AND purpose = ? AND event = ?";
        }

        else
        {
          v26 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E90];
          v27 = v20;
          v22 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491EA8];
          v31[0] = v15;
          v31[1] = v26;
          v23 = v28;
          v31[2] = v22;
          v31[3] = v27;
          v31[4] = v28;
          v31[5] = v29;
          v24 = [NSArray arrayWithObjects:v31 count:6];

          v20 = v27;
          v25 = @"SELECT rowid, * FROM APDBReportEventCount WHERE ((dayOfYear >= ? AND dayOfYear <= ?) OR (dayOfYear >= ? AND dayOfYear <= ?)) AND purpose = ? AND event = ?";
        }

        v18 = [manager executeSelectQuery:v25 forTable:self withParameters:v24 groupedByColumn:{@"environment", v26}];

        goto LABEL_18;
      }

      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v33 = objc_opt_class();
        v16 = v33;
        v17 = "[%{private}@]: Error on getting event count, days are out of range.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      }
    }

    else
    {
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v33 = objc_opt_class();
        v16 = v33;
        v17 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v33 = objc_opt_class();
      v16 = v33;
      v17 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_16;
    }
  }

  v18 = 0;
LABEL_18:

  return v18;
}

- (id)groupedEventCountForDayOfYear:(id)year purpose:(id)purpose event:(id)event value:(id)value
{
  yearCopy = year;
  purposeCopy = purpose;
  eventCopy = event;
  valueCopy = value;
  manager = [(APDBReportEventCount *)self manager];
  if (manager)
  {
    if (yearCopy && purposeCopy && eventCopy)
    {
      if ([yearCopy integerValue] <= 1231 && objc_msgSend(yearCopy, "integerValue") > 100)
      {
        if (valueCopy)
        {
          v15 = valueCopy;
        }

        else
        {
          v15 = @"valueNullPlaceholder";
        }

        v25 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:yearCopy];
        v24 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
        v20 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:eventCopy];
        v21 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v15];
        v26[0] = v25;
        v26[1] = v24;
        v26[2] = v20;
        v26[3] = v21;
        v22 = v20;
        v23 = [NSArray arrayWithObjects:v26 count:4];
        v18 = [manager executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ? AND event = ? AND value = ?" withParameters:self groupedByColumn:{v23, @"environment"}];

        goto LABEL_15;
      }

      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v28 = objc_opt_class();
        v16 = v28;
        v17 = "[%{private}@]: Error on getting event count, days are out of range.";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      }
    }

    else
    {
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v28 = objc_opt_class();
        v16 = v28;
        v17 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v28 = objc_opt_class();
      v16 = v28;
      v17 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (id)groupedEventCountForStartDay:(id)day endDay:(id)endDay purpose:(id)purpose event:(id)event value:(id)value
{
  dayCopy = day;
  endDayCopy = endDay;
  purposeCopy = purpose;
  eventCopy = event;
  valueCopy = value;
  manager = [(APDBReportEventCount *)self manager];
  if (manager)
  {
    if (dayCopy && endDayCopy && purposeCopy && eventCopy)
    {
      if ([dayCopy integerValue] <= 1231 && objc_msgSend(endDayCopy, "integerValue") <= 1231 && objc_msgSend(dayCopy, "integerValue") >= 101 && objc_msgSend(endDayCopy, "integerValue") > 100)
      {
        if (valueCopy)
        {
          v18 = valueCopy;
        }

        else
        {
          v18 = @"valueNullPlaceholder";
        }

        v29 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:dayCopy];
        v33 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:endDayCopy];
        v32 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:purposeCopy];
        v31 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:eventCopy];
        v30 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v18];
        integerValue = [endDayCopy integerValue];
        if (integerValue >= [dayCopy integerValue])
        {
          v26 = v29;
          v34[0] = v29;
          v34[1] = v33;
          v34[2] = v32;
          v34[3] = v31;
          v34[4] = v30;
          v25 = [NSArray arrayWithObjects:v34 count:5];
          v27 = @"SELECT rowid, * FROM APDBReportEventCount WHERE dayOfYear >= ? AND dayOfYear <= ? AND purpose = ? AND event = ? AND value = ?";
        }

        else
        {
          v28 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E90];
          v24 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491EA8];
          v35[0] = v29;
          v35[1] = v28;
          v35[2] = v24;
          v35[3] = v33;
          v35[4] = v32;
          v35[5] = v31;
          v35[6] = v30;
          v25 = [NSArray arrayWithObjects:v35 count:7];

          v26 = v29;
          v27 = @"SELECT rowid, * FROM APDBReportEventCount WHERE ((dayOfYear >= ? AND dayOfYear <= ?) OR (dayOfYear >= ? AND dayOfYear <= ?)) AND purpose = ? AND event = ? AND value = ?";
        }

        v21 = [manager executeSelectQuery:v27 forTable:self withParameters:v25 groupedByColumn:{@"environment", v28}];

        goto LABEL_18;
      }

      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v37 = objc_opt_class();
        v19 = v37;
        v20 = "[%{private}@]: Error on getting event count, days are out of range.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

    else
    {
      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v37 = objc_opt_class();
        v19 = v37;
        v20 = "[%{private}@]: Error on getting event count, NONNULL params are NULL";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v37 = objc_opt_class();
      v19 = v37;
      v20 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (BOOL)deleteCountsBetweenStartDay:(id)day endDay:(id)endDay
{
  dayCopy = day;
  endDayCopy = endDay;
  manager = [(APDBReportEventCount *)self manager];
  if (!manager)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v10 = v23;
      v11 = "[%{private}@]: Error APDatabaseManager is nil.";
      goto LABEL_14;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  if (!dayCopy || !endDayCopy)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v10 = v23;
      v11 = "[%{private}@]: Error on delete counts between dates, days are null.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([dayCopy integerValue] > 1231 || objc_msgSend(endDayCopy, "integerValue") > 1231 || objc_msgSend(dayCopy, "integerValue") < 101 || objc_msgSend(endDayCopy, "integerValue") <= 100)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v10 = v23;
      v11 = "[%{private}@]: Error on delete counts between dates, days are out of range.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v9 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:dayCopy];
  v14 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:endDayCopy];
  integerValue = [endDayCopy integerValue];
  if (integerValue >= [dayCopy integerValue])
  {
    v20[0] = v9;
    v20[1] = v14;
    v18 = [NSArray arrayWithObjects:v20 count:2];
    v19 = @"DELETE FROM APDBReportEventCount WHERE dayOfYear >= ? AND dayOfYear <= ?";
  }

  else
  {
    v16 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E90];
    v17 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491EA8];
    v21[0] = v9;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v14;
    v18 = [NSArray arrayWithObjects:v21 count:4];

    v19 = @"DELETE FROM APDBReportEventCount WHERE ((dayOfYear >= ? AND dayOfYear <= ?) OR (dayOfYear >= ? AND dayOfYear <= ?))";
  }

  v12 = [manager executeQuery:v19 withParameters:v18];

LABEL_16:
  return v12;
}

- (BOOL)deleteCountsOlderThan:(id)than
{
  thanCopy = than;
  manager = [(APDBReportEventCount *)self manager];
  if (!manager)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v14 = objc_opt_class();
      v9 = v14;
      v10 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!thanCopy)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v14 = objc_opt_class();
      v9 = v14;
      v10 = "[%{private}@]: Error on Delete event counts older than, date is nil.";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [[APDatabaseColumn alloc] initWithName:@"lastCountDate" forColumnType:4 withValue:thanCopy];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [manager executeQuery:@"DELETE FROM APDBReportEventCount WHERE lastCountDate < ?" withParameters:v7];

LABEL_10:
  return v8;
}

- (id)environments
{
  manager = [(APDBReportEventCount *)self manager];
  v3 = manager;
  if (manager)
  {
    v4 = [manager executeSelectStringsQuery:@"SELECT environment FROM APDBReportEventCount GROUP BY environment" withParameters:&__NSArray0__struct];
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138477827;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", &v8, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end