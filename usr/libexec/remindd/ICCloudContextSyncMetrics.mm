@interface ICCloudContextSyncMetrics
- (ICCloudContextSyncMetrics)initWithSyncReason:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation ICCloudContextSyncMetrics

- (ICCloudContextSyncMetrics)initWithSyncReason:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICCloudContextSyncMetrics;
  v6 = [(ICCloudContextSyncMetrics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncReason, a3);
    v8 = +[NSDate date];
    startDate = v7->_startDate;
    v7->_startDate = v8;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = [(ICCloudContextSyncMetrics *)self endDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSDate date];
  }

  v6 = v5;

  v7 = [(ICCloudContextSyncMetrics *)self startDate];
  v40 = v6;
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = ([(ICCloudContextSyncMetrics *)self processedRecordCount]/ v9);
  v41[0] = @"reason";
  v39 = [(ICCloudContextSyncMetrics *)self syncReason];
  v42[0] = v39;
  v41[1] = @"fetchedRecordCount";
  v38 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self fetchedRecordCount]];
  v37 = [v38 stringValue];
  v42[1] = v37;
  v41[2] = @"deletedRecordsCount";
  v36 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self deletedRecordsCount]];
  v35 = [v36 stringValue];
  v42[2] = v35;
  v41[3] = @"modifiedRecordCount";
  v34 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self modifiedRecordCount]];
  v33 = [v34 stringValue];
  v42[3] = v33;
  v41[4] = @"processedRecordCount";
  v32 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self processedRecordCount]];
  v31 = [v32 stringValue];
  v42[4] = v31;
  v41[5] = @"success";
  v30 = [NSNumber numberWithBool:[(ICCloudContextSyncMetrics *)self success]];
  v29 = [v30 stringValue];
  v42[5] = v29;
  v41[6] = @"pid";
  v28 = +[NSProcessInfo processInfo];
  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 processIdentifier]);
  v26 = [v27 stringValue];
  v42[6] = v26;
  v41[7] = @"startDate";
  v25 = [(ICCloudContextSyncMetrics *)self startDate];
  v24 = [v25 description];
  v42[7] = v24;
  v41[8] = @"operationCount";
  v11 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self operationCount]];
  v12 = [v11 stringValue];
  v42[8] = v12;
  v41[9] = @"averageRecordsPerSecond";
  v13 = [NSNumber numberWithInteger:v10];
  v14 = [v13 stringValue];
  v42[9] = v14;
  v41[10] = @"saveCount";
  v15 = [NSNumber numberWithInteger:[(ICCloudContextSyncMetrics *)self saveCount]];
  v16 = [v15 stringValue];
  v42[10] = v16;
  v41[11] = @"duration";
  v17 = [NSString stringWithFormat:@"%.4f", *&v9];
  v42[11] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:12];
  v19 = [v18 mutableCopy];

  v20 = [(ICCloudContextSyncMetrics *)self endDate];

  if (v20)
  {
    v21 = [(ICCloudContextSyncMetrics *)self endDate];
    v22 = [v21 description];
    [v19 setObject:v22 forKeyedSubscript:@"endDate"];
  }

  return v19;
}

@end