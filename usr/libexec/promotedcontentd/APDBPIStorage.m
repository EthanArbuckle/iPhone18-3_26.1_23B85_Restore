@interface APDBPIStorage
- (APDBPIStorage)initWithDatabaseManager:(id)a3;
- (BOOL)_checkImpressed:(id)a3;
- (BOOL)_ensureState:(int64_t)a3 forAdId:(id)a4;
- (BOOL)adFiltered:(id)a3 policyIdentifier:(int64_t)a4 policyReason:(int64_t)a5 secondaryReason:(id)a6;
- (BOOL)adImpressed:(id)a3 impressionType:(int64_t)a4;
- (BOOL)adInteracted:(id)a3;
- (BOOL)adPlaced:(id)a3;
- (BOOL)adReceived:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7;
@end

@implementation APDBPIStorage

- (APDBPIStorage)initWithDatabaseManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APDBPIStorage;
  v5 = [(APDBPIStorage *)&v11 init];
  if (v5)
  {
    v6 = [v4 getTableForClass:objc_opt_class()];
    adCandidateTable = v5->_adCandidateTable;
    v5->_adCandidateTable = v6;

    v8 = [v4 getTableForClass:objc_opt_class()];
    filterReasonsTable = v5->_filterReasonsTable;
    v5->_filterReasonsTable = v8;
  }

  return v5;
}

- (BOOL)adReceived:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(APDBPIStorage *)self adCandidateTable];
  v16 = [v15 insertAdCandidate:v14 contextId:v13 adUnitId:v12 rank:a6 placement:a7];

  return v16 != 0;
}

- (BOOL)adFiltered:(id)a3 policyIdentifier:(int64_t)a4 policyReason:(int64_t)a5 secondaryReason:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (![(APDBPIStorage *)self _ensureState:1 forAdId:v10])
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138478083;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v10;
      v18 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ is already either placed or filtered.", &v20, 0x16u);
    }

    goto LABEL_7;
  }

  v12 = [(APDBPIStorage *)self adCandidateTable];
  v13 = [v12 updateAdState:3 forAd:v10];

  if (!v13)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v14 = [(APDBPIStorage *)self filterReasonsTable];
  v15 = [v14 insertFilterReason:v10 policyId:a4 filterReason:a5 filterDetails:v11];
  v16 = v15 != 0;

LABEL_8:
  return v16;
}

- (BOOL)adPlaced:(id)a3
{
  v4 = a3;
  if (![(APDBPIStorage *)self _ensureState:1 forAdId:v4])
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138478083;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v4;
      v9 = v14;
      v10 = "[%{private}@ error: ad %@ has already been placed.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, &v13, 0x16u);
    }

LABEL_9:

    v7 = 0;
    goto LABEL_10;
  }

  v5 = [(APDBPIStorage *)self adCandidateTable];
  v6 = [v5 updateAdState:2 forAd:v4];

  if ((v6 & 1) == 0)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v9 = NSStringFromClass(v11);
      v13 = 138478083;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      v10 = "[%{private}@ error: Unable to update ad %@ state to APDBAdPolicyState_Selected";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)adInteracted:(id)a3
{
  v4 = a3;
  if ([(APDBPIStorage *)self _ensureState:2 forAdId:v4])
  {
    if ([(APDBPIStorage *)self _checkImpressed:v4])
    {
      v5 = APLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 138478083;
        v10 = objc_opt_class();
        v11 = 2112;
        v12 = v4;
        v6 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ has already impressed.", &v9, 0x16u);
      }

      v7 = 1;
    }

    else
    {
      v7 = [(APDBPIStorage *)self adImpressed:v4 impressionType:3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)adImpressed:(id)a3 impressionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(APDBPIStorage *)self _ensureState:2 forAdId:v6];
  if (v7)
  {
    v8 = [(APDBPIStorage *)self adCandidateTable];
    [v8 impressAd:v6 impressionType:a4];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138478083;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v6;
      v10 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ has not been placed, cannot impress", &v12, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_ensureState:(int64_t)a3 forAdId:(id)a4
{
  v6 = a4;
  v7 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:v6];
  v8 = [(APDBPIStorage *)self adCandidateTable];
  v9 = [v8 manager];
  v10 = [(APDBPIStorage *)self adCandidateTable];
  v29 = v7;
  v11 = [NSArray arrayWithObjects:&v29 count:1];
  v12 = [v9 executeSelectQuery:@"SELECT state FROM APDBAdCandidate WHERE identifier = ?" forTable:v10 withParameters:v11];

  if ([v12 count] != 1)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 138478083;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v6;
      v21 = v24;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Duplicate or missing row(s) found for AdId %@.", &v23, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 state];
  v15 = v14 == a3;
  if (v14 != a3)
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = policyStateToString(a3);
      v20 = policyStateToString([v13 state]);
      v23 = 138478339;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Expected state %@, received state %@.", &v23, 0x20u);
    }

LABEL_8:
    v15 = 0;
  }

  return v15;
}

- (BOOL)_checkImpressed:(id)a3
{
  v4 = a3;
  v5 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:v4];
  v6 = [(APDBPIStorage *)self adCandidateTable];
  v7 = [v6 manager];
  v8 = [(APDBPIStorage *)self adCandidateTable];
  v19 = v5;
  v9 = [NSArray arrayWithObjects:&v19 count:1];
  v10 = [v7 executeSelectQuery:@"SELECT impression_type FROM APDBAdCandidate WHERE identifier = ?" forTable:v8 withParameters:v9];

  if ([v10 count] != 1)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138478083;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v4;
      v13 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{private}@]: Duplicate or missing row(s) found for AdId %@.", &v15, 0x16u);
    }

    goto LABEL_6;
  }

  v11 = [v10 objectAtIndexedSubscript:0];
  if (![v11 impression_type])
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = [v11 impression_type]!= 1;
LABEL_7:

  return v12;
}

@end