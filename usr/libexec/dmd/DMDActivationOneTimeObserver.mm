@interface DMDActivationOneTimeObserver
- (BOOL)_extractComponentsFromPredicate:(id)a3;
- (DMDActivationOneTimeObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 oneTimePredicate:(id)a5;
- (id)evaluatePredicateWithError:(id *)a3;
- (void)_registerPredicateObserver;
- (void)invalidate;
@end

@implementation DMDActivationOneTimeObserver

- (DMDActivationOneTimeObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 oneTimePredicate:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = DMDActivationOneTimeObserver;
  v9 = [(DMDActivationPredicateObserver *)&v13 initWithDelegate:a3 uniqueIdentifier:a4 predicate:v8];
  v10 = v9;
  if (v9)
  {
    if (![(DMDActivationOneTimeObserver *)v9 _extractComponentsFromPredicate:v8])
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

- (id)evaluatePredicateWithError:(id *)a3
{
  v4 = objc_opt_new();
  v5 = [(DMDActivationOneTimeObserver *)self endDate];
  -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v4 compare:v5] == -1);

  v6 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(DMDActivationPredicateObserver *)self predicateType];
    v8 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v9 = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    v10 = [(DMDActivationOneTimeObserver *)self endDate];
    v13 = 138544386;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
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
  v3 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
  [v3 UTF8String];
  xpc_set_event();

  v4.receiver = self;
  v4.super_class = DMDActivationOneTimeObserver;
  [(DMDActivationPredicateObserver *)&v4 invalidate];
}

- (BOOL)_extractComponentsFromPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 payloadDateTime];

  if (!v6)
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
  v8 = [v7 dateFromString:v6];
  [(DMDActivationOneTimeObserver *)self setEndDate:v8];

  v9 = [(DMDActivationOneTimeObserver *)self endDate];

  if (!v9)
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
    v11 = [(DMDActivationPredicateObserver *)self predicateType];
    v12 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v13 = [(DMDActivationOneTimeObserver *)self endDate];
    v16 = 138544642;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2048;
    v21 = 0;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v13;
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
  v4 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.dmd.alarm", v4];

  v6 = [(DMDActivationOneTimeObserver *)self endDate];
  [v6 timeIntervalSinceDate:v3];
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
    v9 = [(DMDActivationOneTimeObserver *)self endDate];
    [v9 timeIntervalSince1970];
    v11 = (v10 * 1000000000.0);

    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(DMDActivationPredicateObserver *)self predicateType];
      v14 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v15 = [(DMDActivationOneTimeObserver *)self endDate];
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v5;
      v23 = 2114;
      v24 = v15;
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