@interface DMDActivationPredicateObserverManager
- (DMDActivationPredicateObserverManager)init;
- (DMDActivationPredicateObserverManagerDelegate)delegate;
- (NSArray)notifyMatchingNotifications;
- (id)_predicateObserverForPredicate:(id)predicate withUniqueIdentifier:(id)identifier;
- (id)_subPredicateObserversForCompoundSubPredicates:(id)predicates withUniqueIdentifier:(id)identifier;
- (id)activationPredicateObserverForIdentifier:(id)identifier;
- (id)addActivationPredicateObserverForPredicate:(id)predicate withUniqueIdentifier:(id)identifier;
- (void)_reportChangeToObserver:(id)observer;
- (void)_updateAllActivationPredicateObserverRegistrations;
- (void)handleAlarmWithIdentifier:(id)identifier;
- (void)handleNotifyMatchingNotificationWithName:(id)name;
- (void)removeActivationPredicateObserverWithUniqueIdentifier:(id)identifier;
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

- (id)addActivationPredicateObserverForPredicate:(id)predicate withUniqueIdentifier:(id)identifier
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  activationPredicateObserversByIdentifier = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(activationPredicateObserversByIdentifier);
  activationPredicateObserversByIdentifier2 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v10 = [activationPredicateObserversByIdentifier2 objectForKeyedSubscript:identifierCopy];

  if (!v10)
  {
    v10 = [(DMDActivationPredicateObserverManager *)self _predicateObserverForPredicate:predicateCopy withUniqueIdentifier:identifierCopy];
    if (v10)
    {
      activationPredicateObserversByIdentifier3 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
      [activationPredicateObserversByIdentifier3 setObject:v10 forKeyedSubscript:identifierCopy];
    }
  }

  objc_sync_exit(activationPredicateObserversByIdentifier);

  return v10;
}

- (void)removeActivationPredicateObserverWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activationPredicateObserversByIdentifier = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(activationPredicateObserversByIdentifier);
  activationPredicateObserversByIdentifier2 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v6 = [activationPredicateObserversByIdentifier2 objectForKeyedSubscript:identifierCopy];

  [v6 invalidate];
  activationPredicateObserversByIdentifier3 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  [activationPredicateObserversByIdentifier3 setObject:0 forKeyedSubscript:identifierCopy];

  objc_sync_exit(activationPredicateObserversByIdentifier);
}

- (id)activationPredicateObserverForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activationPredicateObserversByIdentifier = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(activationPredicateObserversByIdentifier);
  activationPredicateObserversByIdentifier2 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  v7 = [activationPredicateObserversByIdentifier2 objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(activationPredicateObserversByIdentifier);

  return v7;
}

- (void)_reportChangeToObserver:(id)observer
{
  observerCopy = observer;
  delegate = [(DMDActivationPredicateObserverManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DE10;
    block[3] = &unk_1000CDC60;
    v7 = delegate;
    selfCopy = self;
    v9 = observerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateAllActivationPredicateObserverRegistrations
{
  obj = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  objc_sync_enter(obj);
  activationPredicateObserversByIdentifier = [(DMDActivationPredicateObserverManager *)self activationPredicateObserversByIdentifier];
  [activationPredicateObserversByIdentifier enumerateKeysAndObjectsUsingBlock:&stru_1000CDCA0];

  objc_sync_exit(obj);
}

- (id)_predicateObserverForPredicate:(id)predicate withUniqueIdentifier:(id)identifier
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationBudgetObserver alloc] initWithDelegate:self uniqueIdentifier:identifierCopy budgetPredicate:predicateCopy];
LABEL_16:
    v10 = v8;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationBudgetObserver alloc] initWithDelegate:self uniqueIdentifier:identifierCopy compositeBudgetPredicate:predicateCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationCurfewObserver alloc] initWithDelegate:self uniqueIdentifier:identifierCopy curfewPredicate:predicateCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationOneTimeObserver alloc] initWithDelegate:self uniqueIdentifier:identifierCopy oneTimePredicate:predicateCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[DMDActivationiCloudAccountObserver alloc] initWithDelegate:self uniqueIdentifier:identifierCopy iCloudAccountPredicate:predicateCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = DMDActivationPredicateTrue;
LABEL_15:
    v8 = [[v9 alloc] initWithDelegate:self uniqueIdentifier:identifierCopy predicate:predicateCopy];
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
    v12 = predicateCopy;
    payloadPredicate = [v12 payloadPredicate];
    v14 = [(DMDActivationPredicateObserverManager *)self _predicateObserverForPredicate:payloadPredicate withUniqueIdentifier:identifierCopy];

    if (v14)
    {
      v15 = [[DMDActivationPredicateNot alloc] initWithDelegate:self uniqueIdentifier:identifierCopy subPredicateObserver:v14 predicate:v12];
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
    v12 = predicateCopy;
    payloadPredicates = [v12 payloadPredicates];
    v14 = [(DMDActivationPredicateObserverManager *)self _subPredicateObserversForCompoundSubPredicates:payloadPredicates withUniqueIdentifier:identifierCopy];

    v17 = [v14 count];
    payloadPredicates2 = [v12 payloadPredicates];
    v19 = [payloadPredicates2 count];

    if (v17 != v19)
    {
      goto LABEL_31;
    }

    v20 = DMDActivationPredicateAll;
LABEL_29:
    v15 = [[v20 alloc] initWithDelegate:self uniqueIdentifier:identifierCopy subPredicateObservers:v14 predicate:v12];
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = predicateCopy;
    payloadPredicates3 = [v12 payloadPredicates];
    v14 = [(DMDActivationPredicateObserverManager *)self _subPredicateObserversForCompoundSubPredicates:payloadPredicates3 withUniqueIdentifier:identifierCopy];

    v22 = [v14 count];
    payloadPredicates4 = [v12 payloadPredicates];
    v24 = [payloadPredicates4 count];

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

- (id)_subPredicateObserversForCompoundSubPredicates:(id)predicates withUniqueIdentifier:(id)identifier
{
  predicatesCopy = predicates;
  identifierCopy = identifier;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = predicatesCopy;
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
        v14 = [NSString stringWithFormat:@"%@-%ld", identifierCopy, v11];
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

- (void)handleAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling alarm with identifier: %{public}@", &v10, 0xCu);
  }

  v6 = [(DMDActivationPredicateObserverManager *)self activationPredicateObserverForIdentifier:identifierCopy];
  v7 = v6;
  if (v6)
  {
    [v6 updateObserverRegistration];
    selfCopy2 = self;
    v9 = v7;
  }

  else
  {
    [(DMDActivationPredicateObserverManager *)self _updateAllActivationPredicateObserverRegistrations];
    selfCopy2 = self;
    v9 = 0;
  }

  [(DMDActivationPredicateObserverManager *)selfCopy2 _reportChangeToObserver:v9];
}

- (void)handleNotifyMatchingNotificationWithName:(id)name
{
  nameCopy = name;
  v5 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling notify matching notification with name: %{public}@", &v6, 0xCu);
  }

  if (([nameCopy isEqualToString:@"com.apple.dmd.budget.didChange"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"SignificantTimeChangeNotification") & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", DMFiCloudAccountDidChangeDarwinNotification))
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