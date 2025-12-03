@interface DMDAppLifeCycle
+ (id)_lifeCycleByBundleIdentifier;
+ (id)lifeCycleForBundleIdentifier:(id)identifier;
+ (void)_removeLifeCycleForBundleIdentifier:(id)identifier;
- (BOOL)_isStale;
- (BOOL)_isUnchangedForInterval:(double)interval;
- (DMDAppLifeCycle)initWithBundleIdentifier:(id)identifier;
- (DMDAppLifeCycle)initWithBundleIdentifier:(id)identifier currentState:(unint64_t)state;
- (NSString)currentStateName;
- (unint64_t)currentState;
- (void)_updateLastModified;
- (void)addObserver:(id)observer;
- (void)cancelAndWaitUntilAllOperationsAreFinished;
- (void)didCancelInstalling;
- (void)didCancelUpdating;
- (void)didChangeInstallingProgress;
- (void)didChangeUpdatingProgress;
- (void)didFailInstalling;
- (void)didFailUninstalling;
- (void)didFailUpdating;
- (void)didFinishInstalling;
- (void)didFinishUninstalling;
- (void)didFinishUpdating;
- (void)didPauseInstalling;
- (void)didPauseUpdating;
- (void)didResetState;
- (void)didResumeInstalling;
- (void)didResumeUpdating;
- (void)didStartInstalling;
- (void)didStartUpdating;
- (void)removeObserver:(id)observer;
- (void)willStartInstalling;
- (void)willStartUninstalling;
- (void)willStartUpdating;
@end

@implementation DMDAppLifeCycle

+ (id)lifeCycleForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _lifeCycleByBundleIdentifier = [selfCopy _lifeCycleByBundleIdentifier];
  v7 = [_lifeCycleByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  if ([v7 _isStale])
  {
    observers = [v7 observers];
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = [observers count];
      v16 = 2114;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preserving %lu observers for bundle ID: %{public}@", &v14, 0x16u);
    }

    v10 = DMFAppLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discard stale app lifecycle for bundle ID: %{public}@", &v14, 0xCu);
    }

LABEL_10:
    v12 = [objc_alloc(objc_opt_class()) initWithBundleIdentifier:identifierCopy];
    v7 = v12;
    if (observers)
    {
      [v12 setObservers:observers];
    }

    [_lifeCycleByBundleIdentifier setObject:v7 forKeyedSubscript:identifierCopy];
    [v7 didResetState];
    goto LABEL_13;
  }

  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Lifecycle is not stale for bundle ID: %{public}@", &v14, 0xCu);
  }

  observers = 0;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_13:

  objc_sync_exit(selfCopy);

  return v7;
}

+ (void)_removeLifeCycleForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _lifeCycleByBundleIdentifier = [selfCopy _lifeCycleByBundleIdentifier];
  [_lifeCycleByBundleIdentifier setObject:0 forKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);
}

+ (id)_lifeCycleByBundleIdentifier
{
  if (qword_1000FEFA8 != -1)
  {
    sub_10007DBE8();
  }

  v3 = qword_1000FEFA0;

  return v3;
}

- (DMDAppLifeCycle)initWithBundleIdentifier:(id)identifier
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DMDAppLifeCycle.m" lineNumber:88 description:{@"%@ must implement %@", self, v6}];

  return 0;
}

- (DMDAppLifeCycle)initWithBundleIdentifier:(id)identifier currentState:(unint64_t)state
{
  identifierCopy = identifier;
  v52.receiver = self;
  v52.super_class = DMDAppLifeCycle;
  v7 = [(DMDAppLifeCycle *)&v52 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = +[NSDate now];
    lastModified = v7->_lastModified;
    v7->_lastModified = v10;

    v12 = +[NSPointerArray weakObjectsPointerArray];
    observers = v7->_observers;
    v7->_observers = v12;

    v14 = objc_opt_new();
    queue = v7->_queue;
    v7->_queue = v14;

    identifierCopy = [NSString stringWithFormat:@"com.apple.dmd.%@.%p(%@).queue", objc_opt_class(), v7, identifierCopy];
    [(NSOperationQueue *)v7->_queue setName:identifierCopy];

    [(NSOperationQueue *)v7->_queue setMaxConcurrentOperationCount:1];
    v17 = [[CATStateMachine alloc] initWithTarget:v7];
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v17;

    v19 = v7->_stateMachine;
    [DMFApp stringForInstallationState:0];
    v20 = v50 = identifierCopy;
    [(CATStateMachine *)v19 addStateWithName:v20];
    v21 = v49 = state;

    v22 = v7->_stateMachine;
    v23 = [DMFApp stringForInstallationState:1];
    v51 = [(CATStateMachine *)v22 addStateWithName:v23];

    v24 = v7->_stateMachine;
    v25 = [DMFApp stringForInstallationState:2];
    v26 = [(CATStateMachine *)v24 addStateWithName:v25];

    v27 = v7->_stateMachine;
    v28 = [DMFApp stringForInstallationState:3];
    v29 = [(CATStateMachine *)v27 addStateWithName:v28];

    v30 = v7->_stateMachine;
    v31 = [DMFApp stringForInstallationState:4];
    v32 = [(CATStateMachine *)v30 addStateWithName:v31];

    v33 = v7->_stateMachine;
    v34 = [DMFApp stringForInstallationState:5];
    v35 = [(CATStateMachine *)v33 addStateWithName:v34];

    v36 = v7->_stateMachine;
    v37 = [DMFApp stringForInstallationState:6];
    v38 = [(CATStateMachine *)v36 addStateWithName:v37];

    v39 = v7->_stateMachine;
    v40 = [DMFApp stringForInstallationState:7];
    v48 = [(CATStateMachine *)v39 addStateWithName:v40];

    v41 = v7->_stateMachine;
    v42 = [DMFApp stringForInstallationState:8];
    v43 = [(CATStateMachine *)v41 addStateWithName:v42];

    [v21 addTransitionToState:v51 triggeringEvent:@"willStartInstalling"];
    [v51 addTransitionToState:v26 triggeringEvent:@"didStartInstalling"];
    [v51 addTransitionToState:v21 triggeringEvent:@"didCancelInstalling"];
    [v26 addTransitionToState:v29 triggeringEvent:@"didPauseInstalling"];
    [v26 addTransitionToState:v21 triggeringEvent:@"didCancelInstalling"];
    [v26 addTransitionToState:v21 triggeringEvent:@"didFailInstalling"];
    [v26 addTransitionToState:v32 triggeringEvent:@"didFinishInstalling"];
    [v29 addTransitionToState:v26 triggeringEvent:@"didResumeInstalling"];
    [v29 addTransitionToState:v21 triggeringEvent:@"didCancelInstalling"];
    [v32 addTransitionToState:v35 triggeringEvent:@"willStartUpdating"];
    [v32 addTransitionToState:v43 triggeringEvent:@"willStartUninstalling"];
    [v35 addTransitionToState:v38 triggeringEvent:@"didStartUpdating"];
    [v35 addTransitionToState:v32 triggeringEvent:@"didCancelUpdating"];
    [v38 addTransitionToState:v48 triggeringEvent:@"didPauseUpdating"];
    [v38 addTransitionToState:v32 triggeringEvent:@"didCancelUpdating"];
    [v38 addTransitionToState:v32 triggeringEvent:@"didFailUpdating"];
    [v38 addTransitionToState:v32 triggeringEvent:@"didFinishUpdating"];
    [v43 addTransitionToState:v32 triggeringEvent:@"didFailUninstalling"];
    [v43 addTransitionToState:v21 triggeringEvent:@"didFinishUninstalling"];
    v44 = v7->_stateMachine;
    v45 = [DMFApp stringForInstallationState:v49];
    v46 = [(CATStateMachine *)v44 stateWithName:v45];
    [(CATStateMachine *)v7->_stateMachine setInitialState:v46];

    identifierCopy = v50;
    [(CATStateMachine *)v7->_stateMachine setLogLevel:2];
    [(CATStateMachine *)v7->_stateMachine start];
  }

  return v7;
}

- (BOOL)_isStale
{
  _isInTransitoryState = [(DMDAppLifeCycle *)self _isInTransitoryState];
  v4 = 60.0;
  if (_isInTransitoryState)
  {
    v4 = 10.0;
  }

  return [(DMDAppLifeCycle *)self _isUnchangedForInterval:v4];
}

- (BOOL)_isUnchangedForInterval:(double)interval
{
  lastModified = [(DMDAppLifeCycle *)self lastModified];
  [lastModified timeIntervalSinceNow];
  v6 = -v5;

  return v6 >= interval;
}

- (void)_updateLastModified
{
  v3 = +[NSDate now];
  [(DMDAppLifeCycle *)self setLastModified:v3];
}

- (unint64_t)currentState
{
  if (qword_1000FEFB8 != -1)
  {
    sub_10007DBFC();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D37C;
  v8[3] = &unk_1000CE550;
  v8[4] = self;
  v8[5] = &v9;
  v3 = [NSBlockOperation blockOperationWithBlock:v8];
  queue = [(DMDAppLifeCycle *)self queue];
  v13 = v3;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  [queue addOperations:v5 waitUntilFinished:1];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (NSString)currentStateName
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10001D5BC;
  v13 = sub_10001D5CC;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D5D4;
  v8[3] = &unk_1000CE550;
  v8[4] = self;
  v8[5] = &v9;
  v3 = [NSBlockOperation blockOperationWithBlock:v8];
  queue = [(DMDAppLifeCycle *)self queue];
  v15 = v3;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  [queue addOperations:v5 waitUntilFinished:1];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)willStartInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D6E0;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didStartInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D914;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didPauseInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DB48;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didResumeInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DD7C;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didCancelInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DFB0;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFailInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E1E4;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFinishInstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E418;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)willStartUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E64C;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didStartUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E880;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didPauseUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EAB4;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didResumeUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001ECE8;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didCancelUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EF1C;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFailUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F150;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFinishUpdating
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F384;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)willStartUninstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F5B8;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFailUninstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F7EC;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)didFinishUninstalling
{
  queue = [(DMDAppLifeCycle *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001FA20;
  v5[3] = &unk_1000CE578;
  v5[4] = self;
  v5[5] = a2;
  [queue addOperationWithBlock:v5];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(DMDAppLifeCycle *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FC74;
  v7[3] = &unk_1000CDC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [queue addOperationWithBlock:v7];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(DMDAppLifeCycle *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FD7C;
  v7[3] = &unk_1000CDC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [queue addOperationWithBlock:v7];
}

- (void)didChangeInstallingProgress
{
  queue = [(DMDAppLifeCycle *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FED4;
  v4[3] = &unk_1000CE5A0;
  v4[4] = self;
  [queue addOperationWithBlock:v4];
}

- (void)didChangeUpdatingProgress
{
  queue = [(DMDAppLifeCycle *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020080;
  v4[3] = &unk_1000CE5A0;
  v4[4] = self;
  [queue addOperationWithBlock:v4];
}

- (void)didResetState
{
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(DMDAppLifeCycle *)self bundleIdentifier];
    observers = [(DMDAppLifeCycle *)self observers];
    *buf = 138543618;
    v10 = bundleIdentifier;
    v11 = 2048;
    v12 = [observers count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did reset state for lifecycle for bundle ID: %{public}@, observer count = %lu", buf, 0x16u);
  }

  currentState = [(DMDAppLifeCycle *)self currentState];
  queue = [(DMDAppLifeCycle *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000202F8;
  v8[3] = &unk_1000CE578;
  v8[4] = self;
  v8[5] = currentState;
  [queue addOperationWithBlock:v8];
}

- (void)cancelAndWaitUntilAllOperationsAreFinished
{
  queue = [(DMDAppLifeCycle *)self queue];
  [queue cancelAllOperations];
  [queue waitUntilAllOperationsAreFinished];
}

@end