@interface ICCloudContextSyncMetrics
- (ICCloudContextSyncMetrics)initWithSyncReason:(id)reason;
- (id)dictionaryRepresentation;
@end

@implementation ICCloudContextSyncMetrics

- (ICCloudContextSyncMetrics)initWithSyncReason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = ICCloudContextSyncMetrics;
  v6 = [(ICCloudContextSyncMetrics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncReason, reason);
    v8 = +[NSDate date];
    startDate = v7->_startDate;
    v7->_startDate = v8;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  endDate = [(ICCloudContextSyncMetrics *)self endDate];
  v4 = endDate;
  if (endDate)
  {
    v5 = endDate;
  }

  else
  {
    v5 = +[NSDate date];
  }

  v6 = v5;

  startDate = [(ICCloudContextSyncMetrics *)self startDate];
  v40 = v6;
  [v6 timeIntervalSinceDate:startDate];
  v9 = v8;

  v10 = ([(ICCloudContextSyncMetrics *)self processedRecordCount]/ v9);
  v41[0] = @"reason";
  syncReason = [(ICCloudContextSyncMetrics *)self syncReason];
  v42[0] = syncReason;
  v41[1] = @"fetchedRecordCount";
  v38 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self fetchedRecordCount]];
  stringValue = [v38 stringValue];
  v42[1] = stringValue;
  v41[2] = @"deletedRecordsCount";
  v36 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self deletedRecordsCount]];
  stringValue2 = [v36 stringValue];
  v42[2] = stringValue2;
  v41[3] = @"modifiedRecordCount";
  v34 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self modifiedRecordCount]];
  stringValue3 = [v34 stringValue];
  v42[3] = stringValue3;
  v41[4] = @"processedRecordCount";
  v32 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self processedRecordCount]];
  stringValue4 = [v32 stringValue];
  v42[4] = stringValue4;
  v41[5] = @"success";
  v30 = [NSNumber numberWithBool:[(ICCloudContextSyncMetrics *)self success]];
  stringValue5 = [v30 stringValue];
  v42[5] = stringValue5;
  v41[6] = @"pid";
  v28 = +[NSProcessInfo processInfo];
  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 processIdentifier]);
  stringValue6 = [v27 stringValue];
  v42[6] = stringValue6;
  v41[7] = @"startDate";
  startDate2 = [(ICCloudContextSyncMetrics *)self startDate];
  v24 = [startDate2 description];
  v42[7] = v24;
  v41[8] = @"operationCount";
  v11 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self operationCount]];
  stringValue7 = [v11 stringValue];
  v42[8] = stringValue7;
  v41[9] = @"averageRecordsPerSecond";
  v13 = [NSNumber numberWithInteger:v10];
  stringValue8 = [v13 stringValue];
  v42[9] = stringValue8;
  v41[10] = @"saveCount";
  v15 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self saveCount]];
  stringValue9 = [v15 stringValue];
  v42[10] = stringValue9;
  v41[11] = @"duration";
  v17 = [NSString stringWithFormat:@"%.4f", *&v9];
  v42[11] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:12];
  v19 = [v18 mutableCopy];

  endDate2 = [(ICCloudContextSyncMetrics *)self endDate];

  if (endDate2)
  {
    endDate3 = [(ICCloudContextSyncMetrics *)self endDate];
    v22 = [endDate3 description];
    [v19 setObject:v22 forKeyedSubscript:@"endDate"];
  }

  return v19;
}

@end