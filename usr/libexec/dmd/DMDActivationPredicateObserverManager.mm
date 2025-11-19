@interface DMDActivationPredicateObserverManager
- (DMDActivationPredicateObserverManager)init;
- (DMDActivationPredicateObserverManagerDelegate)delegate;
- (NSArray)notifyMatchingNotifications;
- (id)_predicateObserverForPredicate:(id)a3 withUniqueIdentifier:(id)a4;
- (id)_subPredicateObserversForCompoundSubPredicates:(id)a3 withUniqueIdentifier:(id)a4;
- (id)activationPredicateObserverForIdentifier:(id)a3;
- (id)addActivationPredicateObserverForPredicate:(id)a3 withUniqueIdentifier:(id)a4;
- (void)_reportChangeToObserver:(id)a3;
- (void)_updateAllActivationPredicateObserverRegistrations;
- (void)handleAlarmWithIdentifier:(id)a3;
- (void)handleNotifyMatchingNotificationWithName:(id)a3;
- (void)removeActivationPredicateObserverWithUniqueIdentifier:(id)a3;
@end

@implementation DMDActivationPredicateObserverManager

- (DMDActivationPredicateObserverManager)init
{
  v6.receiver = self;
  v6.super_class = DMDActivationPredicateObserverManager;
  v2 = [(DMDActivationPredicateObserverManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activationPredicateObserversByIdentifier = v2->_activationPredicateObserversByIdentifier;
    v2->_activationPredicateObserversByIdentifier = v3;
  }

  return v2;
}

- (id)addActivationPredicateObserverForPredicate:(id)a3 withUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(v8);
  v9 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v10 = [(DMDActivationPredicateObserverManager *)self _predicateObserverForPredicate:v6 withUniqueIdentifier:v7];
    if (v10)
    {
      v11 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
      [v11 setObject:v10 forKeyedSubscript:v7];
    }
  }

  objc_sync_exit(v8);

  return v10;
}

- (void)removeActivationPredicateObserverWithUniqueIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(v4);
  v5 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v8];

  [v6 invalidate];
  v7 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  [v7 setObject:0 forKeyedSubscript:v8];

  objc_sync_exit(v4);
}

- (id)activationPredicateObserverForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(v5);
  v6 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)_reportChangeToObserver:(id)a3
{
  v4 = a3;
  v5 = [(DMDActivationPredicateObserverManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DE10;
    block[3] = &unk_1000CDC60;
    v7 = v5;
    v8 = self;
    v9 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateAllActivationPredicateObserverRegistrations
{
  obj = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(obj);
  v3 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_1000CDCA0];

  objc_sync_exit(obj);
}

- (id)_predicateObserverForPredicate:(id)a3 withUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationBudgetObserver alloc] initWithDelegate:self uniqueIdentifier:v7 budgetPredicate:v6];
LABEL_16:
    v10 = v8;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationBudgetObserver alloc] initWithDelegate:self uniqueIdentifier:v7 compositeBudgetPredicate:v6];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationCurfewObserver alloc] initWithDelegate:self uniqueIdentifier:v7 curfewPredicate:v6];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationOneTimeObserver alloc] initWithDelegate:self uniqueIdentifier:v7 oneTimePredicate:v6];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationiCloudAccountObserver alloc] initWithDelegate:self uniqueIdentifier:v7 iCloudAccountPredicate:v6];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = DMDActivationPredicateTrue;
LABEL_15:
    v8 = [[v9 alloc] initWithDelegate:self uniqueIdentifier:v7 predicate:v6];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = DMDActivationPredicateFalse;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v13 = [v12 payloadPredicate];
    v14 = [(DMDActivationPredicateObserverManager *)self _predicateObserverForPredicate:v13 withUniqueIdentifier:v7];

    if (v14)
    {
      v15 = [[DMDActivationPredicateNot alloc] initWithDelegate:self uniqueIdentifier:v7 subPredicateObserver:v14 predicate:v12];
LABEL_30:
      v10 = v15;
LABEL_32:

      goto LABEL_17;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v16 = [v12 payloadPredicates];
    v14 = [(DMDActivationPredicateObserverManager *)self _subPredicateObserversForCompoundSubPredicates:v16 withUniqueIdentifier:v7];

    v17 = [v14 count];
    v18 = [v12 payloadPredicates];
    v19 = [v18 count];

    if (v17 != v19)
    {
      goto LABEL_31;
    }

    v20 = DMDActivationPredicateAll;
LABEL_29:
    v15 = [[v20 alloc] initWithDelegate:self uniqueIdentifier:v7 subPredicateObservers:v14 predicate:v12];
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v21 = [v12 payloadPredicates];
    v14 = [(DMDActivationPredicateObserverManager *)self _subPredicateObserversForCompoundSubPredicates:v21 withUniqueIdentifier:v7];

    v22 = [v14 count];
    v23 = [v12 payloadPredicates];
    v24 = [v23 count];

    if (v22 != v24)
    {
      goto LABEL_31;
    }

    v20 = DMDActivationPredicateAny;
    goto LABEL_29;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)_subPredicateObserversForCompoundSubPredicates:(id)a3 withUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [NSString stringWithFormat:@"%@-%ld", v7, v11];
        v15 = [(DMDActivationPredicateObserverManager *)self _predicateObserverForPredicate:v13 withUniqueIdentifier:v14];
        if (v15)
        {
          [v19 addObject:v15];
        }

        ++v11;
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [v19 copy];

  return v16;
}

- (NSArray)notifyMatchingNotifications
{
  v4[0] = @"com.apple.dmd.budget.didChange";
  v4[1] = @"SignificantTimeChangeNotification";
  v4[2] = DMFiCloudAccountDidChangeDarwinNotification;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)handleAlarmWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling alarm with identifier: %{public}@", &v10, 0xCu);
  }

  v6 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserverForIdentifier:v4];
  v7 = v6;
  if (v6)
  {
    [v6 updateObserverRegistration];
    v8 = self;
    v9 = v7;
  }

  else
  {
    [(DMDActivationPredicateObserverManager *)self _updateAllActivationPredicateObserverRegistrations];
    v8 = self;
    v9 = 0;
  }

  [(DMDActivationPredicateObserverManager *)v8 _reportChangeToObserver:v9];
}

- (void)handleNotifyMatchingNotificationWithName:(id)a3
{
  v4 = a3;
  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling notify matching notification with name: %{public}@", &v6, 0xCu);
  }

  if (([v4 isEqualToString:@"com.apple.dmd.budget.didChange"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SignificantTimeChangeNotification") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", DMFiCloudAccountDidChangeDarwinNotification))
  {
    [(DMDActivationPredicateObserverManager *)self _updateAllActivationPredicateObserverRegistrations];
    [(DMDActivationPredicateObserverManager *)self _reportChangeToObserver:0];
  }
}

- (DMDActivationPredicateObserverManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end