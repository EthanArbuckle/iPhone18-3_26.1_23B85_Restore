@interface APDBAdCandidate
- (BOOL)impressAd:(id)ad impressionType:(int64_t)type;
- (BOOL)updateAdState:(int64_t)state forAd:(id)ad;
- (id)insertAdCandidate:(id)candidate contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement;
@end

@implementation APDBAdCandidate

- (id)insertAdCandidate:(id)candidate contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement
{
  candidateCopy = candidate;
  idCopy = id;
  unitIdCopy = unitId;
  manager = [(APDBAdCandidate *)self manager];

  if (manager)
  {
    manager2 = [(APDBAdCandidate *)self manager];
    v17 = [manager2 getTableForClass:objc_opt_class()];

    if (!v17)
    {
      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v27 = 138477827;
        v28 = objc_opt_class();
        v22 = v28;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{private}@]: Error creating AdOpportunity table.", &v27, 0xCu);
      }

      v20 = 0;
      goto LABEL_19;
    }

    v18 = [v17 insertAdOpportunity:idCopy placement:placement];
    if (v18)
    {
      v19 = [[APDBAdCandidateRow alloc] initWithID:candidateCopy opportunity_id:idCopy unit_id:unitIdCopy rank:rank table:self];
      if (([(APDBAdCandidateRow *)v19 save]& 1) != 0)
      {
        v19 = v19;
        v20 = v19;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v24 = APLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = 138477827;
        v28 = objc_opt_class();
        v25 = v28;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing Ad Candidate row.", &v27, 0xCu);
      }
    }

    else
    {
      v19 = APLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = 138477827;
        v28 = objc_opt_class();
        v23 = v28;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing AdOpportunity row.", &v27, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_18;
  }

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v27 = 138477827;
    v28 = objc_opt_class();
    v21 = v28;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", &v27, 0xCu);
  }

  v20 = 0;
LABEL_20:

  return v20;
}

- (BOOL)updateAdState:(int64_t)state forAd:(id)ad
{
  adCopy = ad;
  manager = [(APDBAdCandidate *)self manager];

  if (manager)
  {
    v8 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:adCopy];
    v9 = [APDatabaseColumn alloc];
    v10 = [NSNumber numberWithInteger:state];
    v11 = [v9 initWithName:@"state" forColumnType:0 withValue:v10];

    manager2 = [(APDBAdCandidate *)self manager];
    v16[0] = v11;
    v16[1] = v8;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    v14 = [manager2 executeQuery:@"UPDATE APDBAdCandidate SET state = ? WHERE identifier = ?" withParameters:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)impressAd:(id)ad impressionType:(int64_t)type
{
  adCopy = ad;
  manager = [(APDBAdCandidate *)self manager];

  if (manager)
  {
    v8 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:adCopy];
    v9 = [APDatabaseColumn alloc];
    v10 = [NSNumber numberWithInteger:type];
    v11 = [v9 initWithName:@"impression_type" forColumnType:0 withValue:v10];

    v12 = [APDatabaseColumn alloc];
    v13 = +[NSDate now];
    v14 = [v12 initWithName:@"impression_time" forColumnType:4 withValue:v13];

    manager2 = [(APDBAdCandidate *)self manager];
    v19[0] = v11;
    v19[1] = v14;
    v19[2] = v8;
    v16 = [NSArray arrayWithObjects:v19 count:3];
    v17 = [manager2 executeQuery:@"UPDATE APDBAdCandidate SET impression_type = ? withParameters:{impression_time = ? WHERE identifier = ?", v16}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end