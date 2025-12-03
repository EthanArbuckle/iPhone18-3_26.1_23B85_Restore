@interface DMDActivationPredicateNot
- (DMDActivationPredicateNot)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier subPredicateObserver:(id)observer predicate:(id)predicate;
- (id)evaluatePredicateWithError:(id *)error;
- (id)metadata;
@end

@implementation DMDActivationPredicateNot

- (DMDActivationPredicateNot)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier subPredicateObserver:(id)observer predicate:(id)predicate
{
  observerCopy = observer;
  v15.receiver = self;
  v15.super_class = DMDActivationPredicateNot;
  v12 = [(DMDActivationPredicateObserver *)&v15 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subPredicateObserver, observer);
  }

  return v13;
}

- (id)evaluatePredicateWithError:(id *)error
{
  subPredicateObserver = [(DMDActivationPredicateNot *)self subPredicateObserver];
  v6 = [subPredicateObserver evaluatePredicateWithError:error];

  if (v6)
  {
    -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v6 BOOLValue] ^ 1);
    v7 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      predicateType = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v12 = 138543874;
      v13 = predicateType;
      v14 = 2114;
      v15 = uniqueIdentifier;
      v16 = 1024;
      lastPredicateEvaluationValue = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d", &v12, 0x1Cu);
    }

    v10 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)metadata
{
  v8.receiver = self;
  v8.super_class = DMDActivationPredicateNot;
  metadata = [(DMDActivationPredicateObserver *)&v8 metadata];
  subPredicateObserver = [(DMDActivationPredicateNot *)self subPredicateObserver];
  metadata2 = [subPredicateObserver metadata];

  if (metadata2)
  {
    v9 = metadata2;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [metadata setObject:v6 forKeyedSubscript:DMFDeclarationStatePredicateSubPredicatesKey];
  }

  return metadata;
}

@end