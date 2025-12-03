@interface NDApplication
+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)identifier;
+ (NDApplication)applicationWithIdentifier:(id)identifier;
+ (id)chronoKitExtensionWithIdentifier:(id)identifier;
+ (id)cloudContainerWithIdentifier:(id)identifier;
+ (id)fileProviderWithIdentifer:(id)identifer applicationIdentifier:(id)identifier;
+ (id)springboardApplicationWithBundleIdentifier:(id)identifier;
+ (void)initialize;
- (BOOL)supportsWakes;
- (BOOL)wakeForSessionIdentifier:(id)identifier withSessionUUID:(id)d wakeRequirement:(int64_t)requirement;
- (NDApplication)initWithIdentifier:(id)identifier;
- (void)_onqueue_resetRequestDelay;
- (void)addObserver:(id)observer;
- (void)invokeSelectorForAllObservers:(SEL)observers;
- (void)invokeSelectorForAllObservers:(SEL)observers pid:(int)pid;
- (void)removeObserver:(id)observer;
@end

@implementation NDApplication

- (BOOL)supportsWakes
{
  v3 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  LOBYTE(self) = [v3 canLaunchProcessWithIdentifier:self->_bundleIdentifier];

  return self;
}

- (void)_onqueue_resetRequestDelay
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v5 = 138412290;
    v6 = bundleIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Resetting request delay for %@", &v5, 0xCu);
  }

  [(NDApplication *)self setCurrentRequestDelay:0.0];
}

- (void)invokeSelectorForAllObservers:(SEL)observers pid:(int)pid
{
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000596C4;
  block[3] = &unk_1000D59E0;
  block[4] = self;
  block[5] = observers;
  pidCopy = pid;
  dispatch_async(v7, block);
}

- (void)invokeSelectorForAllObservers:(SEL)observers
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000598C4;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = observers;
  dispatch_async(v5, v6);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_observers indexOfObject:observerCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)selfCopy->_observers removeObjectAtIndex:v5];
  }

  objc_sync_exit(selfCopy);
}

- (void)addObserver:(id)observer
{
  obj = self;
  observerCopy = observer;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_observers addObject:observerCopy];

  objc_sync_exit(obj);
}

- (BOOL)wakeForSessionIdentifier:(id)identifier withSessionUUID:(id)d wakeRequirement:(int64_t)requirement
{
  identifierCopy = identifier;
  v7 = self->_bundleIdentifier;
  v8 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100059CD8;
  v16 = &unk_1000D6420;
  v9 = v7;
  v17 = v9;
  v10 = identifierCopy;
  v18 = v10;
  [v8 performWake:&v13 uponNotification:self->_bundleIdentifier sessionIdentifier:v10];

  v11 = [NDUserEventAgentConnection sharedUserEventAgentConnection:v13];
  [v11 launchProcessWithIdentifier:v9 sessionIdentifier:v10];

  return 1;
}

- (NDApplication)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = NDApplication;
  v6 = [(NDApplication *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = +[NSMutableArray array];
    observers = v7->_observers;
    v7->_observers = v8;

    v7->isInTransitionalDiscretionaryPeriod = 0;
  }

  return v7;
}

+ (id)fileProviderWithIdentifer:(id)identifer applicationIdentifier:(id)identifier
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [qword_1000EB180 objectForKeyedSubscript:identiferCopy];

  if (!v8)
  {
    v9 = [[NDFPProvider alloc] initWithIdentifier:identiferCopy applicationIdentifier:identifierCopy];
    [qword_1000EB180 setObject:v9 forKeyedSubscript:identiferCopy];
  }

  v10 = [qword_1000EB180 objectForKeyedSubscript:identiferCopy];
  objc_sync_exit(v7);

  return v10;
}

+ (id)cloudContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB180 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [[NDCloudContainer alloc] initWithIdentifier:identifierCopy];
    [qword_1000EB180 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000EB180 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (id)chronoKitExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB190 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [(NDApplication *)[NDChronoKitExtension alloc] initWithIdentifier:identifierCopy];
    [qword_1000EB190 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000EB190 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NDSpringBoard sharedSpringBoard];
  v5 = [v4 identifierIsForSpringBoardApplication:identifierCopy];

  return v5;
}

+ (id)springboardApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB188 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [[NDSpringBoardApplication alloc] initWithIdentifier:identifierCopy];
    [qword_1000EB188 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000EB188 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (NDApplication)applicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB180 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy];
    [qword_1000EB180 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000EB180 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (void)initialize
{
  if (qword_1000EB198 != -1)
  {
    dispatch_once(&qword_1000EB198, &stru_1000D59B8);
  }
}

@end