@interface DMDActivationPredicateAll
- (id)evaluatePredicateWithError:(id *)a3;
@end

@implementation DMDActivationPredicateAll

- (id)evaluatePredicateWithError:(id *)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v20 + 1) + 8 * v9) evaluatePredicateWithError:a3];
        if (!v10)
        {

          v14 = 0;
          goto LABEL_16;
        }

        v11 = v10;
        v12 = [v10 BOOLValue];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_13;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  [(DMDActivationPredicateObserver *)self setLastPredicateEvaluationValue:v13];
  v15 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(DMDActivationPredicateObserver *)self predicateType];
    v17 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v18 = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    *buf = 138543874;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 1024;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d", buf, 0x1Cu);
  }

  v14 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];
LABEL_16:

  return v14;
}

@end