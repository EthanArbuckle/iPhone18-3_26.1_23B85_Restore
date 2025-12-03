@interface MOTrendAnnotationManager
- (MOTrendAnnotationManager)initWithUniverse:(id)universe;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler;
@end

@implementation MOTrendAnnotationManager

- (MOTrendAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v27.receiver = self;
  v27.super_class = MOTrendAnnotationManager;
  v6 = [(MOTrendAnnotationManager *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MOTrendAnnotationManager", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_universe, universe);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [universeCopy getService:v11];
    configurationManager = v6->_configurationManager;
    v6->_configurationManager = v12;

    v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Constructing trend bundlers", buf, 2u);
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = objc_opt_new();
    [v16 setPredicate:v17];
    [v16 setAnnotator:v18];
    [v16 setTrendDetectorName:@"workoutTypeDurationTrendRoutine"];
    [v15 addObject:v16];
    v19 = objc_opt_new();
    v20 = objc_opt_new();
    [v19 setPredicate:v20];
    [v19 setAnnotator:v18];
    v30 = @"maximumFeatureCountForFrequencyTrend";
    LODWORD(v21) = 8.0;
    [(MOConfigurationManagerBase *)v6->_configurationManager getFloatSettingForKey:@"kMOTrendAnnotationManagerBundlingFilterMaximumFeatureCountForFrequencyTrend" withFallback:v21];
    v22 = [NSNumber numberWithFloat:?];
    v31 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v19 configure:v23];

    [v19 setTrendDetectorName:@"contactTypeDurationTrend"];
    [v15 addObject:v19];
    objc_storeStrong(&v6->_bundlers, v15);
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v15 count];
      *buf = 67109120;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Done constructing trend bundlers [%i constructed]", buf, 8u);
    }
  }

  return v6;
}

- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  handlerCopy = handler;
  if ([(NSArray *)self->_bundlers count])
  {
    v11 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_bundlers count]];
    if ([(NSArray *)self->_bundlers count])
    {
      v12 = 0;
      do
      {
        v13 = +[NSNull null];
        [v11 addObject:v13];

        ++v12;
      }

      while (v12 < [(NSArray *)self->_bundlers count]);
    }

    v14 = [(NSArray *)self->_bundlers count];
    queue = [(MOTrendAnnotationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __82__MOTrendAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
    block[3] = &unk_100335BE0;
    block[4] = self;
    block[5] = patternEventsCopy;
    block[6] = eventsCopy;
    v16 = v11;
    v29 = v16;
    dispatch_apply(v14, queue, block);

    v17 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (v23 && [*(*(&v24 + 1) + 8 * v22) count])
          {
            [v17 addObjectsFromArray:v23];
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v20);
    }

    handlerCopy[2](handlerCopy, v17, 0);
  }
}

void __82__MOTrendAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a2];
  v4 = [v5 processPatternEvents:*(a1 + 40) withEvents:*(a1 + 48)];
  if (v4)
  {
    [*(a1 + 56) setObject:v4 atIndexedSubscript:a2];
  }
}

@end