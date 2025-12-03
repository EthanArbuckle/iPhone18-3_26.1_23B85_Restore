@interface DMDActivationOneTimeObserver
- (BOOL)_extractComponentsFromPredicate:(id)predicate;
- (DMDActivationOneTimeObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier oneTimePredicate:(id)predicate;
- (id)evaluatePredicateWithError:(id *)error;
- (void)_registerPredicateObserver;
- (void)invalidate;
@end

@implementation DMDActivationOneTimeObserver

- (DMDActivationOneTimeObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier oneTimePredicate:(id)predicate
{
  predicateCopy = predicate;
  v13.receiver = self;
  v13.super_class = DMDActivationOneTimeObserver;
  v9 = [(DMDActivationPredicateObserver *)&v13 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicateCopy];
  v10 = v9;
  if (v9)
  {
    if (![(DMDActivationOneTimeObserver *)v9 _extractComponentsFromPredicate:predicateCopy])
    {
      v11 = 0;
      goto LABEL_6;
    }

    [(DMDActivationOneTimeObserver *)v10 _registerPredicateObserver];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (id)evaluatePredicateWithError:(id *)error
{
  v4 = objc_opt_new();
  endDate = [(DMDActivationOneTimeObserver *)self endDate];
  -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v4 compare:endDate] == -1);

  v6 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    lastPredicateEvaluationValue = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    endDate2 = [(DMDActivationOneTimeObserver *)self endDate];
    v13 = 138544386;
    v14 = predicateType;
    v15 = 2114;
    v16 = uniqueIdentifier;
    v17 = 1024;
    v18 = lastPredicateEvaluationValue;
    v19 = 2114;
    v20 = endDate2;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d, end date: %{public}@, now: %{public}@", &v13, 0x30u);
  }

  v11 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];

  return v11;
}

- (void)invalidate
{
  [@"com.apple.alarm" UTF8String];
  uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
  [uniqueIdentifier UTF8String];
  xpc_set_event();

  v4.receiver = self;
  v4.super_class = DMDActivationOneTimeObserver;
  [(DMDActivationPredicateObserver *)&v4 invalidate];
}

- (BOOL)_extractComponentsFromPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_new();
  payloadDateTime = [predicateCopy payloadDateTime];

  if (!payloadDateTime)
  {
    v7 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007C48C(self);
    }

    goto LABEL_10;
  }

  v7 = objc_opt_new();
  [v7 setFormatOptions:1907];
  v8 = [v7 dateFromString:payloadDateTime];
  [(DMDActivationOneTimeObserver *)self setEndDate:v8];

  endDate = [(DMDActivationOneTimeObserver *)self endDate];

  if (!endDate)
  {
    v14 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007C3D0(self);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v7 = DMFConfigurationEngineLog();
  v10 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    endDate2 = [(DMDActivationOneTimeObserver *)self endDate];
    v16 = 138544642;
    v17 = predicateType;
    v18 = 2114;
    v19 = uniqueIdentifier;
    v20 = 2048;
    v21 = 0;
    v22 = 2114;
    v23 = payloadDateTime;
    v24 = 2114;
    v25 = endDate2;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted seconds: %f, end time string: %{public}@, end date: %{public}@, now: %{public}@", &v16, 0x3Eu);
  }

LABEL_11:

  return v10;
}

- (void)_registerPredicateObserver
{
  v3 = objc_opt_new();
  uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.dmd.alarm", uniqueIdentifier];

  endDate = [(DMDActivationOneTimeObserver *)self endDate];
  [endDate timeIntervalSinceDate:v3];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v16 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10007C548(self);
    }
  }

  else
  {
    endDate2 = [(DMDActivationOneTimeObserver *)self endDate];
    [endDate2 timeIntervalSince1970];
    v11 = (v10 * 1000000000.0);

    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      predicateType = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier2 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      endDate3 = [(DMDActivationOneTimeObserver *)self endDate];
      *buf = 138544642;
      v18 = predicateType;
      v19 = 2114;
      v20 = uniqueIdentifier2;
      v21 = 2114;
      v22 = v5;
      v23 = 2114;
      v24 = endDate3;
      v25 = 2048;
      v26 = v11;
      v27 = 2114;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ will schedule alarm with identifier: %{public}@ to fire at date: %{public}@, epoch time in nano seconds: %lld, now: %{public}@", buf, 0x3Eu);
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v16, [@"ShouldWake" UTF8String], 0);
    xpc_dictionary_set_date(v16, [@"Date" UTF8String], v11);
    [@"com.apple.alarm" UTF8String];
    [v5 UTF8String];
    xpc_set_event();
  }
}

@end