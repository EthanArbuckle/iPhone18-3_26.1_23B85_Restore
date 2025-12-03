@interface APDBTrigger
- (BOOL)removeTriggersThatHaveNoData;
- (id)_triggerForExperimentId:(id)id treatmentId:(id)treatmentId;
- (id)getOrInsertTriggerWithExperimentId:(id)id treatmentId:(id)treatmentId;
- (id)getTriggersWithReportsForDay:(int64_t)day supplySource:(id)source limit:(unint64_t)limit offset:(unint64_t)offset;
@end

@implementation APDBTrigger

- (id)getOrInsertTriggerWithExperimentId:(id)id treatmentId:(id)treatmentId
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  manager = [(APDBTrigger *)self manager];

  if (!manager)
  {
    v11 = APLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = 138477827;
    v19 = objc_opt_class();
    v12 = v19;
    v13 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v13, &v18, 0xCu);

    goto LABEL_11;
  }

  if (!idCopy || !treatmentIdCopy)
  {
    v11 = APLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = 138477827;
    v19 = objc_opt_class();
    v12 = v19;
    v13 = "[%{private}@]: Error storing Trigger, NONNULL params are NULL";
    goto LABEL_10;
  }

  v9 = [(APDBTrigger *)self _triggerForExperimentId:idCopy treatmentId:treatmentIdCopy];
  if (!v9)
  {
    v11 = [[APDBTriggerRow alloc] initWithExperimentId:idCopy treatmentId:treatmentIdCopy table:self];
    if ([v11 save])
    {
      v10 = v11;
      goto LABEL_14;
    }

    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138477827;
      v19 = objc_opt_class();
      v17 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing Trigger, couldn't insert new column.", &v18, 0xCu);
    }

LABEL_11:
    v14 = 0;
    goto LABEL_15;
  }

  v10 = v9;
LABEL_14:
  v11 = v10;
  v14 = v10;
LABEL_15:

  return v14;
}

- (id)_triggerForExperimentId:(id)id treatmentId:(id)treatmentId
{
  treatmentIdCopy = treatmentId;
  idCopy = id;
  v8 = [[APDatabaseColumn alloc] initWithName:@"experimentId" forColumnType:3 withValue:idCopy];

  v9 = [[APDatabaseColumn alloc] initWithName:@"treatmentId" forColumnType:3 withValue:treatmentIdCopy];
  manager = [(APDBTrigger *)self manager];
  v15[0] = v8;
  v15[1] = v9;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [manager executeSelectQuery:@"SELECT rowid forTable:* FROM APDBTrigger WHERE experimentId = ? AND treatmentId = ?" withParameters:{self, v11}];

  if (v12)
  {
    firstObject = [v12 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)getTriggersWithReportsForDay:(int64_t)day supplySource:(id)source limit:(unint64_t)limit offset:(unint64_t)offset
{
  sourceCopy = source;
  manager = [(APDBTrigger *)self manager];

  if (manager)
  {
    if (sourceCopy)
    {
      v12 = [APDatabaseColumn alloc];
      v13 = [NSNumber numberWithInteger:day];
      v14 = [v12 initWithName:@"day" forColumnType:0 withValue:v13];

      v15 = [[APDatabaseColumn alloc] initWithName:@"source" forColumnType:0 withValue:sourceCopy];
      offset = [NSString stringWithFormat:@"SELECT t.rowid, t.experimentId, t.treatmentId FROM APDBTrigger AS t INNER JOIN APDBExperimentationReport AS er ON er.triggerRowId = t.rowid WHERE er.day = ? AND er.source = ? AND (er.slotVisibleAdCount + er.slotVisibleNoAdCount + er.impressionCount + er.clickCount + er.downloadCount + er.redownloadCount + er.preOrderPlacedCount + er.viewDownloadCount + er.viewRedownloadCount + er.viewPreorderPlacedCount) > 0 GROUP BY t.rowid LIMIT %ld OFFSET %ld", limit, offset];
      manager2 = [(APDBTrigger *)self manager];
      v23[0] = v14;
      v23[1] = v15;
      v18 = [NSArray arrayWithObjects:v23 count:2];
      v19 = [manager2 executeSelectQuery:offset forTable:self withParameters:v18];

      goto LABEL_10;
    }

    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v25 = objc_opt_class();
      v20 = v25;
      v21 = "[%{private}@]: Error getting Opportunities, NONNULL params are NULL";
      goto LABEL_8;
    }
  }

  else
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v25 = objc_opt_class();
      v20 = v25;
      v21 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)removeTriggersThatHaveNoData
{
  manager = [(APDBTrigger *)self manager];

  if (manager)
  {
    manager2 = [(APDBTrigger *)self manager];
    v5 = [manager2 executeQuery:@"DELETE FROM APDBTrigger WHERE rowid NOT IN (SELECT triggerRowId FROM APDBExperimentationReport GROUP BY triggerRowId) AND rowid NOT IN (SELECT triggerRowId FROM APDBAdSignalTrack GROUP BY triggerRowId)" withParameters:&__NSArray0__struct];

    return v5;
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138477827;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", &v9, 0xCu);
    }

    return 0;
  }
}

@end