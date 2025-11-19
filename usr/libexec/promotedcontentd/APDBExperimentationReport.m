@interface APDBExperimentationReport
- (BOOL)removeReportsThatAreNotInDays:(id)a3;
- (id)_getColumnNameForType:(int64_t)a3;
- (id)_getReportForTriggerRowId:(id)a3 day:(int64_t)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7;
- (id)getOrInsertReportForTriggerRowId:(id)a3 day:(int64_t)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7;
- (id)sumAggregatesForType:(int64_t)a3 triggerRowId:(id)a4 days:(id)a5 source:(id)a6 adFormatType:(id)a7 slot:(id)a8;
- (id)sumAllMetricsForTriggerRowId:(id)a3 days:(id)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7;
@end

@implementation APDBExperimentationReport

- (id)getOrInsertReportForTriggerRowId:(id)a3 day:(int64_t)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(APDBExperimentationReport *)self manager];

  if (!v16)
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

  if (!v13 || !v12 || !v14)
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

  v17 = [(APDBExperimentationReport *)self _getReportForTriggerRowId:v12 day:a4 source:v13 adFormatType:v14 slot:v15];
  if (!v17)
  {
    v23 = [APDBExperimentationReportRow alloc];
    v24 = [NSNumber numberWithInteger:a4];
    v19 = [(APDBExperimentationReportRow *)v23 initWithTriggerRowId:v12 day:v24 source:v13 adFormatType:v14 slot:v15 table:self];

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

- (id)sumAggregatesForType:(int64_t)a3 triggerRowId:(id)a4 days:(id)a5 source:(id)a6 adFormatType:(id)a7 slot:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(APDBExperimentationReport *)self manager];

  if (v19)
  {
    if (v16 && v14 && v15 && v17)
    {
      v20 = [(APDBExperimentationReport *)self _getColumnNameForType:a3];
      v39 = v14;
      v21 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:v14];
      v22 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:v16];
      v23 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:v17];
      v36 = v15;
      v24 = [v15 jsonStringWithOptions:0];
      v37 = v22;
      v38 = v21;
      v40[0] = v21;
      v40[1] = v22;
      v40[2] = v23;
      [NSArray arrayWithObjects:v40 count:3];
      v26 = v25 = v18;
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
      v34 = [(APDBExperimentationReport *)self manager];
      v32 = [v34 executeSelectNumberQuery:v33 withParameters:v27];

      v18 = v25;
      v14 = v39;
      v15 = v36;
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

- (id)sumAllMetricsForTriggerRowId:(id)a3 days:(id)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(APDBExperimentationReport *)self manager];

  if (v17)
  {
    if (v14 && v12 && v13 && v15)
    {
      v34 = v12;
      v18 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:v12];
      v19 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:v14];
      v20 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:v15];
      v21 = [v13 jsonStringWithOptions:0];
      v35[0] = v18;
      v35[1] = v19;
      v32 = v20;
      v33 = v19;
      v35[2] = v20;
      v22 = [NSArray arrayWithObjects:v35 count:3];
      v23 = [NSMutableArray arrayWithArray:v22];

      if (v16)
      {
        v24 = [[APDatabaseColumn alloc] initWithName:@"slot" forColumnType:0 withValue:v16];
        [v23 addObject:v24];

        v25 = @" AND slot = ?";
      }

      else
      {
        v25 = &stru_1004810B8;
      }

      v29 = [NSString stringWithFormat:@"SELECT SUM(val) FROM (SELECT (slotVisibleAdCount + impressionCount + clickCount + downloadCount + redownloadCount + preOrderPlacedCount + viewDownloadCount + viewRedownloadCount + viewPreorderPlacedCount) AS val FROM APDBExperimentationReport WHERE triggerRowId = ? AND source = ? AND adFormatType = ? AND day IN (SELECT e.value FROM json_each('%@') e)%@)", v21, v25];
      v30 = [(APDBExperimentationReport *)self manager];
      v28 = [v30 executeSelectNumberQuery:v29 withParameters:v23];

      v12 = v34;
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

- (BOOL)removeReportsThatAreNotInDays:(id)a3
{
  v4 = a3;
  v5 = [(APDBExperimentationReport *)self manager];

  if (!v5)
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

  if (!v4)
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

  v6 = [v4 jsonStringWithOptions:0];
  v7 = [NSString stringWithFormat:@"DELETE FROM APDBExperimentationReport WHERE day NOT IN (SELECT e.value FROM json_each('%@') e)", v6];
  v8 = [(APDBExperimentationReport *)self manager];
  v9 = [v8 executeQuery:v7 withParameters:&__NSArray0__struct];

LABEL_10:
  return v9;
}

- (id)_getReportForTriggerRowId:(id)a3 day:(int64_t)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[APDatabaseColumn alloc] initWithName:@"triggerRowId" forColumnType:0 withValue:v15];

  v17 = [APDatabaseColumn alloc];
  v18 = [NSNumber numberWithInteger:a4];
  v19 = [v17 initWithName:@"day" forColumnType:0 withValue:v18];

  v20 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:v14];
  v21 = [[APDatabaseColumn alloc] initWithName:@"adFormatType" forColumnType:0 withValue:v13];

  v32 = v16;
  v33[0] = v16;
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v19;
  v22 = [NSArray arrayWithObjects:v33 count:4];
  v23 = [NSMutableArray arrayWithArray:v22];

  if (v12)
  {
    v24 = [[APDatabaseColumn alloc] initWithName:@"slot" forColumnType:0 withValue:v12];
    [v23 addObject:v24];

    v25 = @" AND slot = ?";
  }

  else
  {
    v25 = &stru_1004810B8;
  }

  v26 = [NSString stringWithFormat:@"SELECT rowid, * FROM APDBExperimentationReport WHERE triggerRowId = ? AND source = ? AND adFormatType = ? AND day = ?%@", v25];
  v27 = [(APDBExperimentationReport *)self manager];
  v28 = [NSArray arrayWithArray:v23];
  v29 = [v27 executeSelectQuery:v26 forTable:self withParameters:v28];

  if (v29)
  {
    v30 = [v29 firstObject];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)_getColumnNameForType:(int64_t)a3
{
  if ((a3 - 250) < 0xA)
  {
    return off_100478AD0[a3 - 250];
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