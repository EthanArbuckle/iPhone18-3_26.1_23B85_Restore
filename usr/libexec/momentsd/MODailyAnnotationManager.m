@interface MODailyAnnotationManager
- (MODailyAnnotationManager)initWithUniverse:(id)a3;
- (id)annotateBaseEvents:(id)a3 dateInterval:(id)a4;
- (id)getBaseEvents:(id)a3;
- (id)groupedEvents:(id)a3 keyFunc:(id)a4;
- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
@end

@implementation MODailyAnnotationManager

- (MODailyAnnotationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->fUniverse, a3);
  v14.receiver = self;
  v14.super_class = MODailyAnnotationManager;
  v6 = [(MOAnnotationManager *)&v14 initWithUniverse:v5];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    queue = v6->_queue;
    v6->_queue = v11;
  }

  return v6;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MODailyAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __82__MODailyAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
  v15[3] = &unk_1003361C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = [(MODailyAnnotationManager *)self getBaseEvents:a3];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v20 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "DailyAnnotation: Base Events, %lu", buf, 0xCu);
  }

  if ([v8 count])
  {
    v10 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v18 = v10;
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [v8 sortedArrayUsingDescriptors:v11];

    v13 = [(MODailyAnnotationManager *)self groupedEvents:v12 keyFunc:&__block_literal_global_41];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __83__MODailyAnnotationManager__performAnnotationWithEvents_withPatternEvents_handler___block_invoke_2;
    v16[3] = &unk_10033D7C8;
    v16[4] = self;
    v17 = objc_opt_new();
    v14 = v17;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
    v15 = [v14 copy];
    v7[2](v7, v15, 0);

    v8 = v12;
  }

  else
  {
    v7[2](v7, &__NSArray0__struct, 0);
  }
}

id __83__MODailyAnnotationManager__performAnnotationWithEvents_withPatternEvents_handler___block_invoke(id a1, MOEvent *a2)
{
  v2 = [(MOEvent *)a2 endDate];
  v3 = [v2 startOfDayWithBoundaryOfADay:10800.0];

  return v3;
}

void __83__MODailyAnnotationManager__performAnnotationWithEvents_withPatternEvents_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[NSDateInterval alloc] initWithStartDate:v5 duration:86400.0];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 startDate];
    v10 = [v7 endDate];
    *buf = 138412802;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2048;
    v32 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "DailyAnnotation: Date, %@ - %@, Events, %lu", buf, 0x20u);
  }

  v11 = [*(a1 + 32) annotateBaseEvents:v6 dateInterval:v7];
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "DailyAnnotation: Bundle, %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __83__MODailyAnnotationManager__performAnnotationWithEvents_withPatternEvents_handler___block_invoke_2_cold_1(v13);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v6;
    v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v20 = v6;
      v21 = v5;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v18;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "DailyAnnotation: Event, %@", buf, 0xCu);
          }
        }

        v15 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
      v6 = v20;
      v5 = v21;
      v11 = 0;
    }
  }
}

- (id)groupedEvents:(id)a3 keyFunc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        v15 = [v7 objectForKey:{v14, v18}];
        if (!v15)
        {
          v15 = objc_opt_new();
        }

        [v15 addObject:v13];
        [v7 setObject:v15 forKey:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

- (id)getBaseEvents:(id)a3
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MODailyAnnotationManager getBaseEvents:];
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MODailyAnnotationManager.m" lineNumber:126 description:{@"Use the derived class (in %s:%d)", "-[MODailyAnnotationManager getBaseEvents:]", 126}];

  return 0;
}

- (id)annotateBaseEvents:(id)a3 dateInterval:(id)a4
{
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MODailyAnnotationManager annotateBaseEvents:dateInterval:];
  }

  v7 = +[NSAssertionHandler currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"MODailyAnnotationManager.m" lineNumber:132 description:{@"Use the derived class (in %s:%d)", "-[MODailyAnnotationManager annotateBaseEvents:dateInterval:]", 132}];

  return 0;
}

- (void)getBaseEvents:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 126;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Use the derived class (in %s:%d)", v1, 0x12u);
}

- (void)annotateBaseEvents:dateInterval:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 132;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Use the derived class (in %s:%d)", v1, 0x12u);
}

@end