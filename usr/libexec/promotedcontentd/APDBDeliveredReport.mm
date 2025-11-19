@interface APDBDeliveredReport
- (BOOL)deleteReportsBetweenStartDay:(id)a3 endDay:(id)a4;
- (BOOL)deleteReportsOlderThan:(id)a3;
- (id)deliveryReportWithType:(id)a3 dayOfYear:(id)a4;
- (id)deliveryReportsWithType:(id)a3;
- (id)lastDeliveryReportWithType:(id)a3;
- (id)storeDeliveryReportType:(id)a3 dayOfYear:(id)a4 frequency:(id)a5 reportDate:(id)a6;
@end

@implementation APDBDeliveredReport

- (id)storeDeliveryReportType:(id)a3 dayOfYear:(id)a4 frequency:(id)a5 reportDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(APDBDeliveredReport *)self manager];

  if (v14)
  {
    if (v10 && v11 && v12 && v13)
    {
      v15 = [[APDBDeliveredReportRow alloc] initType:v10 dayOfYear:v11 frequency:v12 reportDate:v13 table:self];
      if ([v15 save])
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_16;
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138477827;
      v22 = objc_opt_class();
      v18 = v22;
      v19 = "[%{private}@]: Error storing delivery report, NONNULL params are NULL";
      goto LABEL_12;
    }
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138477827;
      v22 = objc_opt_class();
      v18 = v22;
      v19 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, &v21, 0xCu);
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)lastDeliveryReportWithType:(id)a3
{
  v4 = a3;
  v5 = [(APDBDeliveredReport *)self manager];
  if (!v5)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = "[%{private}@]: Error getting last delivery report, NONNULL params are NULL";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = [[APDatabaseColumn alloc] initWithName:@"type" forColumnType:3 withValue:v4];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [v5 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBDeliveredReport WHERE type = ? ORDER BY reportDate DESC LIMIT 1" withParameters:{self, v7}];

  if (v8 && [v8 count])
  {
    v9 = [v8 lastObject];
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)deliveryReportsWithType:(id)a3
{
  v4 = a3;
  v5 = [(APDBDeliveredReport *)self manager];
  if (v5)
  {
    if (v4)
    {
      v6 = [[APDatabaseColumn alloc] initWithName:@"type" forColumnType:3 withValue:v4];
      v12 = v6;
      v7 = [NSArray arrayWithObjects:&v12 count:1];
      v8 = [v5 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBDeliveredReport WHERE type = ? ORDER BY reportDate" withParameters:{self, v7}];

      goto LABEL_10;
    }

    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v14 = objc_opt_class();
      v9 = v14;
      v10 = "[%{private}@]: Error getting delivery report with type, NONNULL params are NULL";
      goto LABEL_8;
    }
  }

  else
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
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)deliveryReportWithType:(id)a3 dayOfYear:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBDeliveredReport *)self manager];
  if (!v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = objc_opt_class();
      v14 = v19;
      v15 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    }

LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  if (!v6 || !v7)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = objc_opt_class();
      v14 = v19;
      v15 = "[%{private}@]: Error getting delivery report with type and day of year, NONNULL params are NULL";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v9 = [[APDatabaseColumn alloc] initWithName:@"type" forColumnType:3 withValue:v6];
  v10 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v7];
  v17[0] = v9;
  v17[1] = v10;
  v11 = [NSArray arrayWithObjects:v17 count:2];
  v12 = [v8 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBDeliveredReport WHERE type = ? AND dayOfYear = ? ORDER BY reportDate" withParameters:{self, v11}];

  if (v12 && [v12 count])
  {
    v13 = [v12 lastObject];
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (BOOL)deleteReportsBetweenStartDay:(id)a3 endDay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBDeliveredReport *)self manager];
  if (!v8)
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

  if (!v6 || !v7)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v10 = v23;
      v11 = "[%{private}@]: Error deleting delivery report between days, NONNULL params are NULL";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v6 integerValue] > 1231 || objc_msgSend(v7, "integerValue") > 1231 || objc_msgSend(v6, "integerValue") < 101 || objc_msgSend(v7, "integerValue") <= 100)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v10 = v23;
      v11 = "[%{private}@]: Error deleting delivery report between days, days out of range.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v9 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v6];
  v14 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v7];
  v15 = [v7 integerValue];
  if (v15 >= [v6 integerValue])
  {
    v20[0] = v9;
    v20[1] = v14;
    v18 = [NSArray arrayWithObjects:v20 count:2];
    v19 = @"DELETE FROM APDBDeliveredReport WHERE dayOfYear >= ? AND dayOfYear <= ?";
  }

  else
  {
    v16 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E30];
    v17 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:&off_100491E48];
    v21[0] = v9;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v14;
    v18 = [NSArray arrayWithObjects:v21 count:4];

    v19 = @"DELETE FROM APDBDeliveredReport WHERE ((dayOfYear >= ? AND dayOfYear <= ?) OR (dayOfYear >= ? AND dayOfYear <= ?))";
  }

  v12 = [v8 executeQuery:v19 withParameters:v18];

LABEL_16:
  return v12;
}

- (BOOL)deleteReportsOlderThan:(id)a3
{
  v4 = a3;
  v5 = [(APDBDeliveredReport *)self manager];
  if (!v5)
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

  if (!v4)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v14 = objc_opt_class();
      v9 = v14;
      v10 = "[%{private}@]: Error deleting delivery report older than, NONNULL params are NULL";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [[APDatabaseColumn alloc] initWithName:@"reportDate" forColumnType:4 withValue:v4];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v5 executeQuery:@"DELETE FROM APDBDeliveredReport WHERE reportDate < ?" withParameters:v7];

LABEL_10:
  return v8;
}

@end