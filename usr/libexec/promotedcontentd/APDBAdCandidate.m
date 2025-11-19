@interface APDBAdCandidate
- (BOOL)impressAd:(id)a3 impressionType:(int64_t)a4;
- (BOOL)updateAdState:(int64_t)a3 forAd:(id)a4;
- (id)insertAdCandidate:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7;
@end

@implementation APDBAdCandidate

- (id)insertAdCandidate:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(APDBAdCandidate *)self manager];

  if (v15)
  {
    v16 = [(APDBAdCandidate *)self manager];
    v17 = [v16 getTableForClass:objc_opt_class()];

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

    v18 = [v17 insertAdOpportunity:v13 placement:a7];
    if (v18)
    {
      v19 = [[APDBAdCandidateRow alloc] initWithID:v12 opportunity_id:v13 unit_id:v14 rank:a6 table:self];
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

- (BOOL)updateAdState:(int64_t)a3 forAd:(id)a4
{
  v6 = a4;
  v7 = [(APDBAdCandidate *)self manager];

  if (v7)
  {
    v8 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:v6];
    v9 = [APDatabaseColumn alloc];
    v10 = [NSNumber numberWithInteger:a3];
    v11 = [v9 initWithName:@"state" forColumnType:0 withValue:v10];

    v12 = [(APDBAdCandidate *)self manager];
    v16[0] = v11;
    v16[1] = v8;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    v14 = [v12 executeQuery:@"UPDATE APDBAdCandidate SET state = ? WHERE identifier = ?" withParameters:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)impressAd:(id)a3 impressionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(APDBAdCandidate *)self manager];

  if (v7)
  {
    v8 = [[APDatabaseColumn alloc] initWithName:@"identifier" forColumnType:3 withValue:v6];
    v9 = [APDatabaseColumn alloc];
    v10 = [NSNumber numberWithInteger:a4];
    v11 = [v9 initWithName:@"impression_type" forColumnType:0 withValue:v10];

    v12 = [APDatabaseColumn alloc];
    v13 = +[NSDate now];
    v14 = [v12 initWithName:@"impression_time" forColumnType:4 withValue:v13];

    v15 = [(APDBAdCandidate *)self manager];
    v19[0] = v11;
    v19[1] = v14;
    v19[2] = v8;
    v16 = [NSArray arrayWithObjects:v19 count:3];
    v17 = [v15 executeQuery:@"UPDATE APDBAdCandidate SET impression_type = ? withParameters:{impression_time = ? WHERE identifier = ?", v16}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end