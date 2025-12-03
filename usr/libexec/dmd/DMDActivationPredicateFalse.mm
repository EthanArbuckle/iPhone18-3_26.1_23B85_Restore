@interface DMDActivationPredicateFalse
- (id)evaluatePredicateWithError:(id *)error;
@end

@implementation DMDActivationPredicateFalse

- (id)evaluatePredicateWithError:(id *)error
{
  [(DMDActivationPredicateObserver *)self setLastPredicateEvaluationValue:0];
  v4 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v9 = 138543874;
    v10 = predicateType;
    v11 = 2114;
    v12 = uniqueIdentifier;
    v13 = 1024;
    lastPredicateEvaluationValue = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d", &v9, 0x1Cu);
  }

  v7 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];

  return v7;
}

@end