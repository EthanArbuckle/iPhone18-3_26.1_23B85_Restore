@interface APStatusConditionDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (void)_run:(id)a3;
@end

@implementation APStatusConditionDataAdaptor

- (BOOL)_validateParameters:(id *)a3
{
  v21.receiver = self;
  v21.super_class = APStatusConditionDataAdaptor;
  if (![(APDataAdaptor *)&v21 _validateParameters:?])
  {
    return 0;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(APDataAdaptor *)self _requireClassType:v6 name:@"bundleID" expectedClass:objc_opt_class() error:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = [(APDataAdaptor *)self parameters];
  v9 = [v8 objectForKeyedSubscript:@"conditionID"];
  v10 = [(APDataAdaptor *)self _requireClassType:v9 name:@"conditionID" expectedClass:objc_opt_class() error:a3];

  if (!v10)
  {
    return 0;
  }

  v11 = [NSUUID alloc];
  v12 = [(APDataAdaptor *)self parameters];
  v13 = [v12 objectForKeyedSubscript:@"conditionID"];
  v14 = [v11 initWithUUIDString:v13];

  v15 = v14 != 0;
  if (a3 && !v14)
  {
    v16 = [(APDataAdaptor *)self parameters];
    v17 = [v16 objectForKeyedSubscript:@"conditionID"];
    v18 = [NSString stringWithFormat:@"Condition ID '%@' is not in UUID format", v17];

    v22 = NSLocalizedDescriptionKey;
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *a3 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v19];
  }

  return v15;
}

- (void)_run:(id)a3
{
  v4 = a3;
  v5 = [PCBooleanCondition alloc];
  v6 = [(APDataAdaptor *)self parameters];
  v7 = [v6 objectForKeyedSubscript:@"conditionID"];
  v8 = [(APDataAdaptor *)self parameters];
  v9 = [v8 objectForKeyedSubscript:@"bundleID"];
  v10 = [(PCBooleanCondition *)v5 initWithType:@"sc" value:v7 identifier:v9];

  v14 = 0;
  v11 = [PCStatusConditionStorage isStatusConditionRegistered:v10 error:&v14];
  v12 = v14;
  if (v12)
  {
    (*(v4 + 2))(v4, 0, 0, v12);
  }

  else
  {
    v13 = [NSNumber numberWithBool:v11];
    (*(v4 + 2))(v4, v13, 0, 0);
  }
}

@end