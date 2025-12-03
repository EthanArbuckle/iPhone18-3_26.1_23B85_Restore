@interface APStatusConditionDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (void)_run:(id)_run;
@end

@implementation APStatusConditionDataAdaptor

- (BOOL)_validateParameters:(id *)parameters
{
  v21.receiver = self;
  v21.super_class = APStatusConditionDataAdaptor;
  if (![(APDataAdaptor *)&v21 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"bundleID"];
  v7 = [(APDataAdaptor *)self _requireClassType:v6 name:@"bundleID" expectedClass:objc_opt_class() error:parameters];

  if (!v7)
  {
    return 0;
  }

  parameters2 = [(APDataAdaptor *)self parameters];
  v9 = [parameters2 objectForKeyedSubscript:@"conditionID"];
  v10 = [(APDataAdaptor *)self _requireClassType:v9 name:@"conditionID" expectedClass:objc_opt_class() error:parameters];

  if (!v10)
  {
    return 0;
  }

  v11 = [NSUUID alloc];
  parameters3 = [(APDataAdaptor *)self parameters];
  v13 = [parameters3 objectForKeyedSubscript:@"conditionID"];
  v14 = [v11 initWithUUIDString:v13];

  v15 = v14 != 0;
  if (parameters && !v14)
  {
    parameters4 = [(APDataAdaptor *)self parameters];
    v17 = [parameters4 objectForKeyedSubscript:@"conditionID"];
    v18 = [NSString stringWithFormat:@"Condition ID '%@' is not in UUID format", v17];

    v22 = NSLocalizedDescriptionKey;
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *parameters = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v19];
  }

  return v15;
}

- (void)_run:(id)_run
{
  _runCopy = _run;
  v5 = [PCBooleanCondition alloc];
  parameters = [(APDataAdaptor *)self parameters];
  v7 = [parameters objectForKeyedSubscript:@"conditionID"];
  parameters2 = [(APDataAdaptor *)self parameters];
  v9 = [parameters2 objectForKeyedSubscript:@"bundleID"];
  v10 = [(PCBooleanCondition *)v5 initWithType:@"sc" value:v7 identifier:v9];

  v14 = 0;
  v11 = [PCStatusConditionStorage isStatusConditionRegistered:v10 error:&v14];
  v12 = v14;
  if (v12)
  {
    (*(_runCopy + 2))(_runCopy, 0, 0, v12);
  }

  else
  {
    v13 = [NSNumber numberWithBool:v11];
    (*(_runCopy + 2))(_runCopy, v13, 0, 0);
  }
}

@end