@interface NDApplication
+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)a3;
+ (NDApplication)applicationWithIdentifier:(id)a3;
+ (id)chronoKitExtensionWithIdentifier:(id)a3;
+ (id)cloudContainerWithIdentifier:(id)a3;
+ (id)fileProviderWithIdentifer:(id)a3 applicationIdentifier:(id)a4;
+ (id)springboardApplicationWithBundleIdentifier:(id)a3;
+ (void)initialize;
- (BOOL)supportsWakes;
- (BOOL)wakeForSessionIdentifier:(id)a3 withSessionUUID:(id)a4 wakeRequirement:(int64_t)a5;
- (NDApplication)initWithIdentifier:(id)a3;
- (void)_onqueue_resetRequestDelay;
- (void)addObserver:(id)a3;
- (void)invokeSelectorForAllObservers:(SEL)a3;
- (void)invokeSelectorForAllObservers:(SEL)a3 pid:(int)a4;
- (void)removeObserver:(id)a3;
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

- (void)invokeSelectorForAllObservers:(SEL)a3 pid:(int)a4
{
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000596C4;
  block[3] = &unk_1000D59E0;
  block[4] = self;
  block[5] = a3;
  v9 = a4;
  dispatch_async(v7, block);
}

- (void)invokeSelectorForAllObservers:(SEL)a3
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000598C4;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)v4->_observers indexOfObject:v6];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v4->_observers removeObjectAtIndex:v5];
  }

  objc_sync_exit(v4);
}

- (void)addObserver:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_observers addObject:v4];

  objc_sync_exit(obj);
}

- (BOOL)wakeForSessionIdentifier:(id)a3 withSessionUUID:(id)a4 wakeRequirement:(int64_t)a5
{
  v6 = a3;
  v7 = self->_bundleIdentifier;
  v8 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100059CD8;
  v16 = &unk_1000D6420;
  v9 = v7;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  [v8 performWake:&v13 uponNotification:self->_bundleIdentifier sessionIdentifier:v10];

  v11 = [NDUserEventAgentConnection sharedUserEventAgentConnection:v13];
  [v11 launchProcessWithIdentifier:v9 sessionIdentifier:v10];

  return 1;
}

- (NDApplication)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NDApplication;
  v6 = [(NDApplication *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = +[NSMutableArray array];
    observers = v7->_observers;
    v7->_observers = v8;

    v7->isInTransitionalDiscretionaryPeriod = 0;
  }

  return v7;
}

+ (id)fileProviderWithIdentifer:(id)a3 applicationIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [qword_1000EB180 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = [[NDFPProvider alloc] initWithIdentifier:v5 applicationIdentifier:v6];
    [qword_1000EB180 setObject:v9 forKeyedSubscript:v5];
  }

  v10 = [qword_1000EB180 objectForKeyedSubscript:v5];
  objc_sync_exit(v7);

  return v10;
}

+ (id)cloudContainerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB180 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [[NDCloudContainer alloc] initWithIdentifier:v3];
    [qword_1000EB180 setObject:v6 forKeyedSubscript:v3];
  }

  v7 = [qword_1000EB180 objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  return v7;
}

+ (id)chronoKitExtensionWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB190 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [(NDApplication *)[NDChronoKitExtension alloc] initWithIdentifier:v3];
    [qword_1000EB190 setObject:v6 forKeyedSubscript:v3];
  }

  v7 = [qword_1000EB190 objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  return v7;
}

+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NDSpringBoard sharedSpringBoard];
  v5 = [v4 identifierIsForSpringBoardApplication:v3];

  return v5;
}

+ (id)springboardApplicationWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB188 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [[NDSpringBoardApplication alloc] initWithIdentifier:v3];
    [qword_1000EB188 setObject:v6 forKeyedSubscript:v3];
  }

  v7 = [qword_1000EB188 objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  return v7;
}

+ (NDApplication)applicationWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000EB180 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:v3];
    [qword_1000EB180 setObject:v6 forKeyedSubscript:v3];
  }

  v7 = [qword_1000EB180 objectForKeyedSubscript:v3];
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