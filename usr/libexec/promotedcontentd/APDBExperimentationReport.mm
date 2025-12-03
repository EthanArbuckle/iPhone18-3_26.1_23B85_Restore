@interface APDBExperimentationReport
- (BOOL)removeReportsThatAreNotInDays:(id)days;
- (id)_getColumnNameForType:(int64_t)type;
- (id)_getReportForTriggerRowId:(id)id day:(int64_t)day source:(id)source adFormatType:(id)type slot:(id)slot;
- (id)getOrInsertReportForTriggerRowId:(id)id day:(int64_t)day source:(id)source adFormatType:(id)type slot:(id)slot;
- (id)sumAggregatesForType:(int64_t)type triggerRowId:(id)id days:(id)days source:(id)source adFormatType:(id)formatType slot:(id)slot;
- (id)sumAllMetricsForTriggerRowId:(id)id days:(id)days source:(id)source adFormatType:(id)type slot:(id)slot;
@end

@implementation APDBExperimentationReport

- (id)getOrInsertReportForTriggerRowId:(id)id day:(int64_t)day source:(id)source adFormatType:(id)type slot:(id)slot
{
  idCopy = id;
  sourceCopy = source;
  typeCopy = type;
  slotCopy = slot;
  manager = [(APDBExperimentationReport *)self manager];

  if (!manager)
  {
    v19 = APLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v28 = 138477827;
    v29 = objc_opt_class();
    v20 = v29;
    v21 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v21, &v28, 0xCu);

    goto LABEL_12;
  }

  if (!sourceCopy || !idCopy || !typeCopy)
  {
    v19 = APLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v28 = 138477827;
    v29 = objc_opt_class();
    v20 = v29;
    v21 = "[%{private}@]: Error storing Trigger, NONNULL params are NULL";
    goto LABEL_11;
  }

  v17 = [(APDBExperimentationReport *)self _getReportForTriggerRowId:idCopy day:day source:sourceCopy adFormatType:typeCopy slot:slotCopy];
  if (!v17)
  {
    v23 = [APDBExperimentationReportRow alloc];
    v24 = [NSNumber numberWithInteger:day];
    v19 = [(APDBExperimentationReportRow *)v23 initWithTriggerRowId:idCopy day:v24 source:sourceCopy adFormatType:typeCopy slot:slotCopy table:self];

    if ([v19 save])
    {
      v18 = v19;
      goto LABEL_15;
    }

    v26 = APLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = 138477827;
      v29 = objc_opt_class();
      v27 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing Trigger report, couldn't insert new column.", &v28, 0xCu);
    }

LABEL_12:
    v22 = 0;
    goto LABEL_16;
  }

  v18 = v17;
LABEL_15:
  v19 = v18;
  v22 = v18;
LABEL_16:

  return v22;
}

- (id)sumAggregatesForType:(int64_t)type triggerRowId:(id)id days:(id)days source:(id)source adFormatType:(id)formatType slot:(id)slot
{
  idCopy = id;
  daysCopy = days;
  sourceCopy = source;
  formatTypeCopy = formatType;
  slotCopy = slot;
  manager = [(APDBExperimentationReport *)self manager];

  if (manager)
  {
    if (sourceCopy && idCopy && daysCopy && formatTypeCopy)
    {
      v20 = [(APDBExperimentationReport *)self _getColumnNameForType:type];
      v39 = idCopy;
      v21 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:idCopy];
      v22 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:sourceCopy];
      v23 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:formatTypeCopy];
      v36 = daysCopy;
      v24 = [daysCopy jsonStringWithOptions:0];
      v37 = v22;
      v38 = v21;
      v40[0] = v21;
      v40[1] = v22;
      v40[2] = v23;
      [NSArray arrayWithObjects:v40 count:3];
      v26 = v25 = slotCopy;
      v27 = [NSMutableArray arrayWithArray:v26];

      if (v25)
      {
        v28 = [[APDatabaseColumn alloc] initWithName:@"slot" forColumnType:0 withValue:v25];
        [v27 addObject:v28];

        v29 = @" AND slot = ?";
      }

      else
      {
        v29 = &stru_1004810B8;
      }

      v33 = [NSString stringWithFormat:@"SELECT SUM(%@) FROM (SELECT %@ FROM APDBExperimentationReport WHERE triggerRowId = ? AND source = ? AND adFormatType = ? AND day IN (SELECT e.value FROM json_each('%@') e)%@)", v20, v20, v24, v29];
      manager2 = [(APDBExperimentationReport *)self manager];
      v32 = [manager2 executeSelectNumberQuery:v33 withParameters:v27];

      slotCopy = v25;
      idCopy = v39;
      daysCopy = v36;
      goto LABEL_16;
    }

    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v42 = objc_opt_class();
      v30 = v42;
      v31 = "[%{private}@]: Error Sum Metrics, NONNULL params are NULL";
      goto LABEL_12;
    }
  }

  else
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v42 = objc_opt_class();
      v30 = v42;
      v31 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
    }
  }

  v32 = 0;
LABEL_16:

  return v32;
}

- (id)sumAllMetricsForTriggerRowId:(id)id days:(id)days source:(id)source adFormatType:(id)type slot:(id)slot
{
  idCopy = id;
  daysCopy = days;
  sourceCopy = source;
  typeCopy = type;
  slotCopy = slot;
  manager = [(APDBExperimentationReport *)self manager];

  if (manager)
  {
    if (sourceCopy && idCopy && daysCopy && typeCopy)
    {
      v34 = idCopy;
      v18 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:idCopy];
      v19 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:sourceCopy];
      v20 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:typeCopy];
      v21 = [daysCopy jsonStringWithOptions:0];
      v35[0] = v18;
      v35[1] = v19;
      v32 = v20;
      v33 = v19;
      v35[2] = v20;
      v22 = [NSArray arrayWithObjects:v35 count:3];
      v23 = [NSMutableArray arrayWithArray:v22];

      if (slotCopy)
      {
        v24 = [[APDatabaseColumn alloc] initWithName:@"slot" forColumnType:0 withValue:slotCopy];
        [v23 addObject:v24];

        v25 = @" AND slot = ?";
      }

      else
      {
        v25 = &stru_1004810B8;
      }

      v29 = [NSString stringWithFormat:@"SELECT SUM(val) FROM (SELECT (slotVisibleAdCount + impressionCount + clickCount + downloadCount + redownloadCount + preOrderPlacedCount + viewDownloadCount + viewRedownloadCount + viewPreorderPlacedCount) AS val FROM APDBExperimentationReport WHERE triggerRowId = ? AND source = ? AND adFormatType = ? AND day IN (SELECT e.value FROM json_each('%@') e)%@)", v21, v25];
      manager2 = [(APDBExperimentationReport *)self manager];
      v28 = [manager2 executeSelectNumberQuery:v29 withParameters:v23];

      idCopy = v34;
      goto LABEL_16;
    }

    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v37 = objc_opt_class();
      v26 = v37;
      v27 = "[%{private}@]: Error Sum ALL metrics, NONNULL params are NULL";
      goto LABEL_12;
    }
  }

  else
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v37 = objc_opt_class();
      v26 = v37;
      v27 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    }
  }

  v28 = 0;
LABEL_16:

  return v28;
}

- (BOOL)removeReportsThatAreNotInDays:(id)days
{
  daysCopy = days;
  manager = [(APDBExperimentationReport *)self manager];

  if (!manager)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v11 = v15;
      v12 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  if (!daysCopy)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v11 = v15;
      v12 = "[%{private}@]: Error removing reports, NONNULL params are NULL";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [daysCopy jsonStringWithOptions:0];
  v7 = [NSString stringWithFormat:@"DELETE FROM APDBExperimentationReport WHERE day NOT IN (SELECT e.value FROM json_each('%@') e)", v6];
  manager2 = [(APDBExperimentationReport *)self manager];
  v9 = [manager2 executeQuery:v7 withParameters:&__NSArray0__struct];

LABEL_10:
  return v9;
}

- (id)_getReportForTriggerRowId:(id)id day:(int64_t)day source:(id)source adFormatType:(id)type slot:(id)slot
{
  slotCopy = slot;
  typeCopy = type;
  sourceCopy = source;
  idCopy = id;
  v16 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:idCopy];

  v17 = [APDatabaseColumn alloc];
  v18 = [NSNumber numberWithInteger:day];
  v19 = [v17 initWithName:@"day" forColumnType:0 withValue:v18];

  v20 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:sourceCopy];
  v21 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:typeCopy];

  v32 = v16;
  v33[0] = v16;
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v19;
  v22 = [NSArray arrayWithObjects:v33 count:4];
  v23 = [NSMutableArray arrayWithArray:v22];

  if (slotCopy)
  {
    v24 = [[APDatabaseColumn alloc] initWithName:@"slot" forColumnType:0 withValue:slotCopy];
    [v23 addObject:v24];

    v25 = @" AND slot = ?";
  }

  else
  {
    v25 = &stru_1004810B8;
  }

  v26 = [NSString stringWithFormat:@"SELECT rowid, * FROM APDBExperimentationReport WHERE triggerRowId = ? AND source = ? AND adFormatType = ? AND day = ?%@", v25];
  manager = [(APDBExperimentationReport *)self manager];
  v28 = [NSArray arrayWithArray:v23];
  v29 = [manager executeSelectQuery:v26 forTable:self withParameters:v28];

  if (v29)
  {
    firstObject = [v29 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_getColumnNameForType:(int64_t)type
{
  if ((type - 250) < 0xA)
  {
    return off_100478AD0[type - 250];
  }

  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138477827;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{private}@]: Undefined aggregate type.", &v6, 0xCu);
  }

  return &stru_1004810B8;
}

@end