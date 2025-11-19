@interface DMDActivationiCloudAccountObserver
- (DMDActivationiCloudAccountObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 iCloudAccountPredicate:(id)a5;
- (id)evaluatePredicateWithError:(id *)a3;
- (void)_extractComponentsFromPredicate:(id)a3;
@end

@implementation DMDActivationiCloudAccountObserver

- (DMDActivationiCloudAccountObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 iCloudAccountPredicate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = DMDActivationiCloudAccountObserver;
  v9 = [(DMDActivationPredicateObserver *)&v12 initWithDelegate:a3 uniqueIdentifier:a4 predicate:v8];
  v10 = v9;
  if (v9)
  {
    [(DMDActivationiCloudAccountObserver *)v9 _extractComponentsFromPredicate:v8];
  }

  return v10;
}

- (id)evaluatePredicateWithError:(id *)a3
{
  v4 = objc_opt_new();
  v5 = [v4 aa_primaryAppleAccount];
  v6 = [v5 aa_personID];
  v7 = [(DMDActivationiCloudAccountObserver *)self DSID];
  if (v7)
  {
    v8 = [(DMDActivationiCloudAccountObserver *)self DSID];
    -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v6 isEqualToString:v8]);
  }

  else
  {
    [(DMDActivationPredicateObserver *)self setLastPredicateEvaluationValue:1];
  }

  v9 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(DMDActivationPredicateObserver *)self predicateType];
    v11 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v12 = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    v13 = [(DMDActivationiCloudAccountObserver *)self DSID];
    v16 = 138544386;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d, DSID %{public}@, primary account DSID %{public}@", &v16, 0x30u);
  }

  v14 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];

  return v14;
}

- (void)_extractComponentsFromPredicate:(id)a3
{
  v4 = [a3 payloadDSID];
  [(DMDActivationiCloudAccountObserver *)self setDSID:v4];

  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(DMDActivationPredicateObserver *)self predicateType];
    v7 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v8 = [(DMDActivationiCloudAccountObserver *)self DSID];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted DSID: %{public}@", &v9, 0x20u);
  }
}

@end