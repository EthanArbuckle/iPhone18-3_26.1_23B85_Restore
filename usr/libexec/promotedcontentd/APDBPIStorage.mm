@interface APDBPIStorage
- (APDBPIStorage)initWithDatabaseManager:(id)manager;
- (BOOL)_checkImpressed:(id)impressed;
- (BOOL)_ensureState:(int64_t)state forAdId:(id)id;
- (BOOL)adFiltered:(id)filtered policyIdentifier:(int64_t)identifier policyReason:(int64_t)reason secondaryReason:(id)secondaryReason;
- (BOOL)adImpressed:(id)impressed impressionType:(int64_t)type;
- (BOOL)adInteracted:(id)interacted;
- (BOOL)adPlaced:(id)placed;
- (BOOL)adReceived:(id)received contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement;
@end

@implementation APDBPIStorage

- (APDBPIStorage)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = APDBPIStorage;
  v5 = [(APDBPIStorage *)&v11 init];
  if (v5)
  {
    v6 = [managerCopy getTableForClass:objc_opt_class()];
    adCandidateTable = v5->_adCandidateTable;
    v5->_adCandidateTable = v6;

    v8 = [managerCopy getTableForClass:objc_opt_class()];
    filterReasonsTable = v5->_filterReasonsTable;
    v5->_filterReasonsTable = v8;
  }

  return v5;
}

- (BOOL)adReceived:(id)received contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement
{
  unitIdCopy = unitId;
  idCopy = id;
  receivedCopy = received;
  adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
  v16 = [adCandidateTable insertAdCandidate:receivedCopy contextId:idCopy adUnitId:unitIdCopy rank:rank placement:placement];

  return v16 != 0;
}

- (BOOL)adFiltered:(id)filtered policyIdentifier:(int64_t)identifier policyReason:(int64_t)reason secondaryReason:(id)secondaryReason
{
  filteredCopy = filtered;
  secondaryReasonCopy = secondaryReason;
  if (![(APDBPIStorage *)self _ensureState:1 forAdId:filteredCopy])
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138478083;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = filteredCopy;
      v18 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ is already either placed or filtered.", &v20, 0x16u);
    }

    goto LABEL_7;
  }

  adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
  v13 = [adCandidateTable updateAdState:3 forAd:filteredCopy];

  if (!v13)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  filterReasonsTable = [(APDBPIStorage *)self filterReasonsTable];
  v15 = [filterReasonsTable insertFilterReason:filteredCopy policyId:identifier filterReason:reason filterDetails:secondaryReasonCopy];
  v16 = v15 != 0;

LABEL_8:
  return v16;
}

- (BOOL)adPlaced:(id)placed
{
  placedCopy = placed;
  if (![(APDBPIStorage *)self _ensureState:1 forAdId:placedCopy])
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138478083;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = placedCopy;
      v9 = v14;
      v10 = "[%{private}@ error: ad %@ has already been placed.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, &v13, 0x16u);
    }

LABEL_9:

    v7 = 0;
    goto LABEL_10;
  }

  adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
  v6 = [adCandidateTable updateAdState:2 forAd:placedCopy];

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
      v16 = placedCopy;
      v10 = "[%{private}@ error: Unable to update ad %@ state to APDBAdPolicyState_Selected";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)adInteracted:(id)interacted
{
  interactedCopy = interacted;
  if ([(APDBPIStorage *)self _ensureState:2 forAdId:interactedCopy])
  {
    if ([(APDBPIStorage *)self _checkImpressed:interactedCopy])
    {
      v5 = APLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 138478083;
        v10 = objc_opt_class();
        v11 = 2112;
        v12 = interactedCopy;
        v6 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ has already impressed.", &v9, 0x16u);
      }

      v7 = 1;
    }

    else
    {
      v7 = [(APDBPIStorage *)self adImpressed:interactedCopy impressionType:3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)adImpressed:(id)impressed impressionType:(int64_t)type
{
  impressedCopy = impressed;
  v7 = [(APDBPIStorage *)self _ensureState:2 forAdId:impressedCopy];
  if (v7)
  {
    adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
    [adCandidateTable impressAd:impressedCopy impressionType:type];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138478083;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = impressedCopy;
      v10 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{private}@ error: ad %@ has not been placed, cannot impress", &v12, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_ensureState:(int64_t)state forAdId:(id)id
{
  idCopy = id;
  v7 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:idCopy];
  adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
  manager = [adCandidateTable manager];
  adCandidateTable2 = [(APDBPIStorage *)self adCandidateTable];
  v29 = v7;
  v11 = [NSArray arrayWithObjects:&v29 count:1];
  v12 = [manager executeSelectQuery:@"SELECT state FROM APDBAdCandidate WHERE identifier = ?" forTable:adCandidateTable2 withParameters:v11];

  if ([v12 count] != 1)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 138478083;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = idCopy;
      v21 = v24;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Duplicate or missing row(s) found for AdId %@.", &v23, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = [v12 objectAtIndexedSubscript:0];
  state = [v13 state];
  v15 = state == state;
  if (state != state)
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = policyStateToString(state);
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

- (BOOL)_checkImpressed:(id)impressed
{
  impressedCopy = impressed;
  v5 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:impressedCopy];
  adCandidateTable = [(APDBPIStorage *)self adCandidateTable];
  manager = [adCandidateTable manager];
  adCandidateTable2 = [(APDBPIStorage *)self adCandidateTable];
  v19 = v5;
  v9 = [NSArray arrayWithObjects:&v19 count:1];
  v10 = [manager executeSelectQuery:@"SELECT impression_type FROM APDBAdCandidate WHERE identifier = ?" forTable:adCandidateTable2 withParameters:v9];

  if ([v10 count] != 1)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138478083;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = impressedCopy;
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