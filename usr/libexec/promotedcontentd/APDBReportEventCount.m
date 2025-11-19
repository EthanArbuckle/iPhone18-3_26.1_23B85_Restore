@interface APDBReportEventCount
- (BOOL)addCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5 value:(id)a6 environment:(id)a7 branch:(id)a8;
- (BOOL)deleteCountsBetweenStartDay:(id)a3 endDay:(id)a4;
- (BOOL)deleteCountsOlderThan:(id)a3;
- (id)environments;
- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4;
- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5;
- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5 value:(id)a6;
- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5;
- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5 event:(id)a6;
- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5 event:(id)a6 value:(id)a7;
@end

@implementation APDBReportEventCount

- (BOOL)addCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5 value:(id)a6 environment:(id)a7 branch:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(APDBReportEventCount *)self manager];
  if (v20)
  {
    if (!v14 || !v15 || !v16 || !v18)
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

    if ([v14 integerValue] > 1231 || objc_msgSend(v14, "integerValue") <= 100)
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

    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = @"valueNullPlaceholder";
    }

    v54 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v14];
    v55 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v15];
    v53 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:v16];
    v52 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v21];
    v50 = [[APDatabaseColumn alloc] initWithName:@"count" forColumnType:0 withValue:&off_100491E60];
    v51 = [[APDatabaseColumn alloc] initWithName:@"environment" forColumnType:3 withValue:v18];
    v26 = [APDatabaseColumn alloc];
    v27 = +[NSDate date];
    v28 = [v26 initWithName:@"lastCountDate" forColumnType:4 withValue:v27];

    v49 = v28;
    if ([v20 executeTransactionQueryWithType:1])
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
      v30 = [v20 executeInsertQuery:@"INSERT INTO APDBReportEventCount (dayOfYear withParameters:{purpose, event, value, count, environment, lastCountDate) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT (dayOfYear, purpose, event, value, environment) DO UPDATE SET count = count + 1, lastCountDate = ?", v29}];

      if (v30 > 0)
      {
        if ([v19 count])
        {
          v42 = v21;
          v43 = v20;
          v44 = v18;
          v45 = v17;
          v46 = v16;
          v47 = v15;
          v48 = v14;
          v31 = objc_alloc_init(NSMutableArray);
          v32 = objc_alloc_init(NSMutableArray);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v33 = v19;
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
          v20 = v43;
          v14 = v48;
          if ([v43 executeInsertQuery:v41 withParameters:v31] <= 0)
          {
            [v43 executeTransactionQueryWithType:3];

            v24 = 0;
            v16 = v46;
            v15 = v47;
            v18 = v44;
            v17 = v45;
            v21 = v42;
            goto LABEL_35;
          }

          v16 = v46;
          v15 = v47;
          v18 = v44;
          v17 = v45;
          v21 = v42;
        }

        v24 = [v20 executeTransactionQueryWithType:2];
LABEL_35:

        goto LABEL_16;
      }

      [v20 executeTransactionQueryWithType:3];
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

- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBReportEventCount *)self manager];
  if (!v8)
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

  if (!v6 || !v7)
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

  if ([v6 integerValue] > 1231 || objc_msgSend(v6, "integerValue") <= 100)
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

  v9 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v6];
  v14 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v7];
  v16[0] = v9;
  v16[1] = v14;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  v12 = [v8 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ?" withParameters:self groupedByColumn:{v15, @"environment"}];

LABEL_14:

  return v12;
}

- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APDBReportEventCount *)self manager];
  if (!v11)
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

  if (!v8 || !v9 || !v10)
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

  if ([v8 integerValue] <= 366 && objc_msgSend(v9, "integerValue") <= 366 && objc_msgSend(v8, "integerValue") >= 1 && objc_msgSend(v9, "integerValue") > 0)
  {
    v12 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v8];
    v13 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v9];
    v14 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v10];
    v15 = [v9 integerValue];
    if (v15 >= [v8 integerValue])
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

    v23 = [v11 executeSelectQuery:v20 forTable:self withParameters:v19 groupedByColumn:@"environment"];

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

- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APDBReportEventCount *)self manager];
  if (!v11)
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

  if (!v8 || !v9 || !v10)
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

  if ([v8 integerValue] > 1231 || objc_msgSend(v8, "integerValue") <= 100)
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

  v12 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v8];
  v17 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v9];
  v18 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:v10];
  v20[0] = v12;
  v20[1] = v17;
  v20[2] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:3];
  v15 = [v11 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ? AND event = ?" withParameters:self groupedByColumn:{v19, @"environment"}];

LABEL_15:

  return v15;
}

- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5 event:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(APDBReportEventCount *)self manager];
  if (v14)
  {
    if (v10 && v11 && v12 && v13)
    {
      if ([v10 integerValue] <= 1231 && objc_msgSend(v11, "integerValue") <= 1231 && objc_msgSend(v10, "integerValue") >= 101 && objc_msgSend(v11, "integerValue") > 100)
      {
        v15 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v10];
        v20 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v11];
        v28 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v12];
        v29 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:v13];
        v21 = [v11 integerValue];
        if (v21 >= [v10 integerValue])
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

        v18 = [v14 executeSelectQuery:v25 forTable:self withParameters:v24 groupedByColumn:{@"environment", v26}];

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

- (id)groupedEventCountForDayOfYear:(id)a3 purpose:(id)a4 event:(id)a5 value:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(APDBReportEventCount *)self manager];
  if (v14)
  {
    if (v10 && v11 && v12)
    {
      if ([v10 integerValue] <= 1231 && objc_msgSend(v10, "integerValue") > 100)
      {
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = @"valueNullPlaceholder";
        }

        v25 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v10];
        v24 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v11];
        v20 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:v12];
        v21 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v15];
        v26[0] = v25;
        v26[1] = v24;
        v26[2] = v20;
        v26[3] = v21;
        v22 = v20;
        v23 = [NSArray arrayWithObjects:v26 count:4];
        v18 = [v14 executeSelectQuery:@"SELECT rowid forTable:* FROM APDBReportEventCount WHERE dayOfYear = ? AND purpose = ? AND event = ? AND value = ?" withParameters:self groupedByColumn:{v23, @"environment"}];

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

- (id)groupedEventCountForStartDay:(id)a3 endDay:(id)a4 purpose:(id)a5 event:(id)a6 value:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(APDBReportEventCount *)self manager];
  if (v17)
  {
    if (v12 && v13 && v14 && v15)
    {
      if ([v12 integerValue] <= 1231 && objc_msgSend(v13, "integerValue") <= 1231 && objc_msgSend(v12, "integerValue") >= 101 && objc_msgSend(v13, "integerValue") > 100)
      {
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"valueNullPlaceholder";
        }

        v29 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v12];
        v33 = [[APDatabaseColumn alloc] initWithName:@"dayOfYear" forColumnType:0 withValue:v13];
        v32 = [[APDatabaseColumn alloc] initWithName:@"purpose" forColumnType:0 withValue:v14];
        v31 = [[APDatabaseColumn alloc] initWithName:@"event" forColumnType:0 withValue:v15];
        v30 = [[APDatabaseColumn alloc] initWithName:@"value" forColumnType:3 withValue:v18];
        v23 = [v13 integerValue];
        if (v23 >= [v12 integerValue])
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

        v21 = [v17 executeSelectQuery:v27 forTable:self withParameters:v25 groupedByColumn:{@"environment", v28}];

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

- (BOOL)deleteCountsBetweenStartDay:(id)a3 endDay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBReportEventCount *)self manager];
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
      v11 = "[%{private}@]: Error on delete counts between dates, days are null.";
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
      v11 = "[%{private}@]: Error on delete counts between dates, days are out of range.";
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

  v12 = [v8 executeQuery:v19 withParameters:v18];

LABEL_16:
  return v12;
}

- (BOOL)deleteCountsOlderThan:(id)a3
{
  v4 = a3;
  v5 = [(APDBReportEventCount *)self manager];
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
      v10 = "[%{private}@]: Error on Delete event counts older than, date is nil.";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [[APDatabaseColumn alloc] initWithName:@"lastCountDate" forColumnType:4 withValue:v4];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v5 executeQuery:@"DELETE FROM APDBReportEventCount WHERE lastCountDate < ?" withParameters:v7];

LABEL_10:
  return v8;
}

- (id)environments
{
  v2 = [(APDBReportEventCount *)self manager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeSelectStringsQuery:@"SELECT environment FROM APDBReportEventCount GROUP BY environment" withParameters:&__NSArray0__struct];
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