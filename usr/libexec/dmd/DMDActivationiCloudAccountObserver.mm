@interface DMDActivationiCloudAccountObserver
- (DMDActivationiCloudAccountObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier iCloudAccountPredicate:(id)predicate;
- (id)evaluatePredicateWithError:(id *)error;
- (void)_extractComponentsFromPredicate:(id)predicate;
@end

@implementation DMDActivationiCloudAccountObserver

- (DMDActivationiCloudAccountObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier iCloudAccountPredicate:(id)predicate
{
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = DMDActivationiCloudAccountObserver;
  v9 = [(DMDActivationPredicateObserver *)&v12 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicateCopy];
  v10 = v9;
  if (v9)
  {
    [(DMDActivationiCloudAccountObserver *)v9 _extractComponentsFromPredicate:predicateCopy];
  }

  return v10;
}

- (id)evaluatePredicateWithError:(id *)error
{
  v4 = objc_opt_new();
  aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
  aa_personID = [aa_primaryAppleAccount aa_personID];
  dSID = [(DMDActivationiCloudAccountObserver *)self DSID];
  if (dSID)
  {
    dSID2 = [(DMDActivationiCloudAccountObserver *)self DSID];
    -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [aa_personID isEqualToString:dSID2]);
  }

  else
  {
    [(DMDActivationPredicateObserver *)self setLastPredicateEvaluationValue:1];
  }

  v9 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    lastPredicateEvaluationValue = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    dSID3 = [(DMDActivationiCloudAccountObserver *)self DSID];
    v16 = 138544386;
    v17 = predicateType;
    v18 = 2114;
    v19 = uniqueIdentifier;
    v20 = 1024;
    v21 = lastPredicateEvaluationValue;
    v22 = 2114;
    v23 = dSID3;
    v24 = 2114;
    v25 = aa_personID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d, DSID %{public}@, primary account DSID %{public}@", &v16, 0x30u);
  }

  v14 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];

  return v14;
}

- (void)_extractComponentsFromPredicate:(id)predicate
{
  payloadDSID = [predicate payloadDSID];
  [(DMDActivationiCloudAccountObserver *)self setDSID:payloadDSID];

  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    dSID = [(DMDActivationiCloudAccountObserver *)self DSID];
    v9 = 138543874;
    v10 = predicateType;
    v11 = 2114;
    v12 = uniqueIdentifier;
    v13 = 2114;
    v14 = dSID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted DSID: %{public}@", &v9, 0x20u);
  }
}

@end