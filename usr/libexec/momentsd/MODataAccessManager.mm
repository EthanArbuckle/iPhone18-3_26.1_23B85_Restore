@interface MODataAccessManager
- (BOOL)_needsActivityRegistrationAfterRegisteringClientsForDataAccess:(id)access;
- (BOOL)hasAnyApplicationsWithDataAccessWithinTimeInterval:(double)interval;
- (BOOL)hasAnyClientsWithDataAccessWithinTimeInterval:(double)interval;
- (MODataAccessManager)initWithUniverse:(id)universe;
- (void)_registerForOnboardingRefresh:(id)refresh;
- (void)getApplicationsWithDataAccess:(id)access;
- (void)getApplicationsWithDataAccess:(id)access withinTimeInterval:(double)interval;
- (void)getClientsWithDataAccess:(id)access;
- (void)getClientsWithDataAccess:(id)access withinTimeInterval:(double)interval;
- (void)registerClientsForDataAccess:(id)access;
@end

@implementation MODataAccessManager

- (MODataAccessManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  v15.receiver = self;
  v15.super_class = MODataAccessManager;
  v9 = [(MODataAccessManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_universe, universe);
    objc_storeStrong(&v10->_defaultsManager, v8);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MODataAccessManager.refreshSchedulingQueue", v11);
    refreshSchedulingQueue = v10->_refreshSchedulingQueue;
    v10->_refreshSchedulingQueue = v12;
  }

  return v10;
}

- (void)getApplicationsWithDataAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultsManager = [(MODataAccessManager *)selfCopy defaultsManager];
  v6 = [defaultsManager objectForKey:@"ApplicationsWithDataAccess"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  accessCopy[2](accessCopy, v7, 0);

  objc_sync_exit(selfCopy);
}

- (void)getClientsWithDataAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultsManager = [(MODataAccessManager *)selfCopy defaultsManager];
  v6 = [defaultsManager objectForKey:@"ClientsWithDataAccess"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  accessCopy[2](accessCopy, v7, 0);

  objc_sync_exit(selfCopy);
}

- (BOOL)_needsActivityRegistrationAfterRegisteringClientsForDataAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultsManager = [(MODataAccessManager *)selfCopy defaultsManager];
  v7 = [defaultsManager objectForKey:@"ClientsWithDataAccess"];

  if (v7)
  {
    v8 = [v7 mutableCopy];
    v9 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v8 setObject:v9 forKey:accessCopy];
  }

  else
  {
    v13 = accessCopy;
    v10 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    v14 = v10;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  defaultsManager2 = [(MODataAccessManager *)selfCopy defaultsManager];
  [defaultsManager2 setObject:v8 forKey:@"ClientsWithDataAccess"];

  objc_sync_exit(selfCopy);
  return v7 == 0;
}

- (void)_registerForOnboardingRefresh:(id)refresh
{
  refreshCopy = refresh;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = refreshCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posting onboarding refresh request after first data access client registered [%@]", &v10, 0xCu);
  }

  universe = self->_universe;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(MODaemonUniverse *)universe getService:v8];

  [v9 registerDefaultRefreshActivity];
  [v9 registerFirstRefreshActivityWithPreRegisteredTask:0];
  [v9 registerLightRefreshActivity];
  [v9 registerNotificationAvailabilityPredictionActivity];
}

- (void)registerClientsForDataAccess:(id)access
{
  accessCopy = access;
  if ([(MODataAccessManager *)self _needsActivityRegistrationAfterRegisteringClientsForDataAccess:accessCopy])
  {
    refreshSchedulingQueue = self->_refreshSchedulingQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __52__MODataAccessManager_registerClientsForDataAccess___block_invoke;
    v6[3] = &unk_100335B08;
    v6[4] = self;
    v7 = accessCopy;
    dispatch_async(refreshSchedulingQueue, v6);
  }
}

- (void)getApplicationsWithDataAccess:(id)access withinTimeInterval:(double)interval
{
  accessCopy = access;
  Current = CFAbsoluteTimeGetCurrent();
  if (interval <= 0.0)
  {
    [(MODataAccessManager *)self getApplicationsWithDataAccess:accessCopy, Current];
  }

  else
  {
    v8 = Current;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __72__MODataAccessManager_getApplicationsWithDataAccess_withinTimeInterval___block_invoke;
    v9[3] = &unk_100335B30;
    v10 = accessCopy;
    intervalCopy = interval;
    v12 = v8;
    [(MODataAccessManager *)self getApplicationsWithDataAccess:v9];
  }
}

void __72__MODataAccessManager_getApplicationsWithDataAccess_withinTimeInterval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v7 objectForKey:{v12, v16}];
          v14 = v13;
          if (v13)
          {
            [v13 doubleValue];
            if (v15 + *(a1 + 40) > *(a1 + 48))
            {
              [v6 setObject:v14 forKey:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getClientsWithDataAccess:(id)access withinTimeInterval:(double)interval
{
  accessCopy = access;
  Current = CFAbsoluteTimeGetCurrent();
  if (interval <= 0.0)
  {
    [(MODataAccessManager *)self getClientsWithDataAccess:accessCopy, Current];
  }

  else
  {
    v8 = Current;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __67__MODataAccessManager_getClientsWithDataAccess_withinTimeInterval___block_invoke;
    v9[3] = &unk_100335B30;
    v10 = accessCopy;
    intervalCopy = interval;
    v12 = v8;
    [(MODataAccessManager *)self getClientsWithDataAccess:v9];
  }
}

void __67__MODataAccessManager_getClientsWithDataAccess_withinTimeInterval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v7 objectForKey:{v12, v16}];
          v14 = v13;
          if (v13)
          {
            [v13 doubleValue];
            if (v15 + *(a1 + 40) > *(a1 + 48))
            {
              [v6 setObject:v14 forKey:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)hasAnyApplicationsWithDataAccessWithinTimeInterval:(double)interval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __74__MODataAccessManager_hasAnyApplicationsWithDataAccessWithinTimeInterval___block_invoke;
  v5[3] = &unk_100335B58;
  v5[4] = &v6;
  [(MODataAccessManager *)self getApplicationsWithDataAccess:v5 withinTimeInterval:interval];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__74__MODataAccessManager_hasAnyApplicationsWithDataAccessWithinTimeInterval___block_invoke(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    *(*(result[4] + 8) + 24) = 0;
  }

  else
  {
    result = [a2 count];
    *(*(v3[4] + 8) + 24) = result != 0;
  }

  return result;
}

- (BOOL)hasAnyClientsWithDataAccessWithinTimeInterval:(double)interval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __69__MODataAccessManager_hasAnyClientsWithDataAccessWithinTimeInterval___block_invoke;
  v5[3] = &unk_100335B58;
  v5[4] = &v6;
  [(MODataAccessManager *)self getClientsWithDataAccess:v5 withinTimeInterval:interval];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__69__MODataAccessManager_hasAnyClientsWithDataAccessWithinTimeInterval___block_invoke(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    *(*(result[4] + 8) + 24) = 0;
  }

  else
  {
    result = [a2 count];
    *(*(v3[4] + 8) + 24) = result != 0;
  }

  return result;
}

@end