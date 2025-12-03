@interface MOTimeContextAnnotationManager
- (MOTimeContextAnnotationManager)initWithUniverse:(id)universe;
- (double)overlapsIndexOfBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)buildPromptDescriptionForEventBundle:(id)bundle;
- (id)getBaseEvents:(id)events;
- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents;
- (id)groupBaseEvents:(id)events;
- (id)intervalsFromEvents:(id)events boundaryInterval:(id)interval;
- (id)timespanFromEvents:(id)events boundaryInterval:(id)interval;
- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler;
- (void)addPeopleDensityContextForEventBundle:(id)bundle sortedBaseEvents:(id)events contextEvents:(id)contextEvents;
- (void)addSocialContextForEventBundle:(id)bundle sortedBaseEvents:(id)events contextEvents:(id)contextEvents;
- (void)addTimeOverlapsScoreForEventBundle:(id)bundle baseEvents:(id)events contextEvents:(id)contextEvents;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler;
@end

@implementation MOTimeContextAnnotationManager

- (MOTimeContextAnnotationManager)initWithUniverse:(id)universe
{
  v11.receiver = self;
  v11.super_class = MOTimeContextAnnotationManager;
  v3 = [(MOAnnotationManager *)&v11 initWithUniverse:universe];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  handlerCopy = handler;
  queue = [(MOTimeContextAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __88__MOTimeContextAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
  v15[3] = &unk_1003361C0;
  v15[4] = self;
  v16 = eventsCopy;
  v17 = patternEventsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = patternEventsCopy;
  v14 = eventsCopy;
  dispatch_async(queue, v15);
}

void __88__MOTimeContextAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __88__MOTimeContextAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke_2;
  v4[3] = &unk_1003369E0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _performAnnotationWithEvents:v2 withPatternEvents:v3 handler:v4];
}

uint64_t __88__MOTimeContextAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler
{
  patternEventsCopy = patternEvents;
  handlerCopy = handler;
  eventsCopy = events;
  v11 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v89 = v11;
  v12 = [NSArray arrayWithObjects:&v89 count:1];
  v13 = [eventsCopy sortedArrayUsingDescriptors:v12];

  v71 = v13;
  v14 = [(MOTimeContextAnnotationManager *)self getBaseEvents:v13];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v66 = v11;
  selfCopy = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v14 count];
    [v14 firstObject];
    v20 = v19 = handlerCopy;
    startDate = [v20 startDate];
    [v14 lastObject];
    v23 = v22 = v14;
    endDate = [v23 endDate];
    *buf = 138413058;
    v82 = v17;
    v83 = 2048;
    v84 = v18;
    v85 = 2112;
    v86 = startDate;
    v87 = 2112;
    v88 = endDate;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TimeContext(%@): Base Events, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    v14 = v22;
    self = selfCopy;

    handlerCopy = v19;
    v11 = v66;
  }

  if ([v14 count])
  {
    v65 = handlerCopy;
    v25 = [(MOTimeContextAnnotationManager *)self groupBaseEvents:v14];
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v14 count];
      v30 = [v25 count];
      *buf = 138412802;
      v82 = v28;
      v83 = 2048;
      v84 = v29;
      v85 = 2048;
      v86 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "TimeContext(%@): Grouping the base events, events, %lu, groups, %lu", buf, 0x20u);
    }

    v64 = v14;

    v68 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v25;
    v72 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v72)
    {
      v69 = *v76;
      do
      {
        for (i = 0; i != v72; i = i + 1)
        {
          if (*v76 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v75 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v79 = v11;
          v33 = [NSArray arrayWithObjects:&v79 count:1];
          v73 = v32;
          v34 = [v32 sortedArrayUsingDescriptors:v33];

          v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = [v34 count];
            firstObject = [v34 firstObject];
            startDate2 = [firstObject startDate];
            [v34 lastObject];
            v42 = v41 = patternEventsCopy;
            endDate2 = [v42 endDate];
            *buf = 138413058;
            v82 = v37;
            v83 = 2048;
            v84 = v38;
            v85 = 2112;
            v86 = startDate2;
            v87 = 2112;
            v88 = endDate2;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "TimeContext(%@): Base Events, %lu, first.date, %@, last.date, %@", buf, 0x2Au);

            self = selfCopy;
            patternEventsCopy = v41;
            v11 = v66;
          }

          v44 = [(MOTimeContextAnnotationManager *)self getContextEventsForBaseEvents:v34 events:v71 withPatternEvents:patternEventsCopy];
          v45 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = [v44 count];
            *buf = 138412546;
            v82 = v47;
            v83 = 2048;
            v84 = v48;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "TimeContext(%@): Context Events, %lu", buf, 0x16u);
          }

          v49 = [(MOTimeContextAnnotationManager *)self annotateBaseEvents:v34 contextEvents:v44];
          v50 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            *buf = 138412546;
            v82 = v52;
            v83 = 2112;
            v84 = v49;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "TimeContext(%@): EventBundle, %@", buf, 0x16u);
          }

          v53 = [(MOTimeContextAnnotationManager *)self buildPromptDescriptionForEventBundle:v49];
          [v49 setPromptLanguage:v53];

          v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            promptLanguage = [v49 promptLanguage];
            mask = [promptLanguage mask];
            *buf = 138412546;
            v82 = v56;
            v83 = 2112;
            v84 = mask;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "TimeContext(%@): Prompt Lang., %@", buf, 0x16u);

            self = selfCopy;
          }

          [(MOTimeContextAnnotationManager *)self addTimeOverlapsScoreForEventBundle:v49 baseEvents:v73 contextEvents:v44];
          [(MOTimeContextAnnotationManager *)self addSocialContextForEventBundle:v49 sortedBaseEvents:v34 contextEvents:v44];
          [(MOTimeContextAnnotationManager *)self addPeopleDensityContextForEventBundle:v49 sortedBaseEvents:v34 contextEvents:v44];
          if (v49)
          {
            [v68 addObject:v49];
          }

          objc_autoreleasePoolPop(context);
        }

        v72 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v72);
    }

    v59 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = [v68 count];
      *buf = 138412546;
      v82 = v61;
      v83 = 2048;
      v84 = v62;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "TimeContext(%@): Event Bundles, %lu", buf, 0x16u);
    }

    v63 = [v68 copy];
    handlerCopy = v65;
    v65[2](v65, v63, 0);

    v14 = v64;
  }

  else
  {
    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

- (id)groupBaseEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = eventsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v15 + 1) + 8 * i);
          v10 = [NSArray arrayWithObjects:&v19 count:1, v15];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      v22 = v13;
      v23 = 2048;
      v24 = [eventsCopy count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TimeContext(%@): No grouping is applied, %lu", buf, 0x16u);
    }

    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)getBaseEvents:(id)events
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MOTimeContextAnnotationManager getBaseEvents:];
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:124 description:{@"Use the derived class (in %s:%d)", "-[MOTimeContextAnnotationManager getBaseEvents:]", 124}];

  return 0;
}

- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents
{
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MOTimeContextAnnotationManager getContextEventsForBaseEvents:events:withPatternEvents:];
  }

  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:130 description:{@"Use the derived class (in %s:%d)", "-[MOTimeContextAnnotationManager getContextEventsForBaseEvents:events:withPatternEvents:]", 130}];

  return 0;
}

- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents
{
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MOTimeContextAnnotationManager annotateBaseEvents:contextEvents:];
  }

  v7 = +[NSAssertionHandler currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:136 description:{@"Use the derived class (in %s:%d)", "-[MOTimeContextAnnotationManager annotateBaseEvents:contextEvents:]", 136}];

  return 0;
}

- (id)buildPromptDescriptionForEventBundle:(id)bundle
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MOTimeContextAnnotationManager buildPromptDescriptionForEventBundle:];
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:142 description:{@"Use the derived class (in %s:%d)", "-[MOTimeContextAnnotationManager buildPromptDescriptionForEventBundle:]", 142}];

  return 0;
}

- (void)addTimeOverlapsScoreForEventBundle:(id)bundle baseEvents:(id)events contextEvents:(id)contextEvents
{
  bundleCopy = bundle;
  [(MOTimeContextAnnotationManager *)self overlapsIndexOfBaseEvents:events contextEvents:contextEvents];
  v10 = v9;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138412802;
    v16 = v13;
    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = bundleCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TimeContext(%@): overlaps score, %f, bundle, %@", &v15, 0x20u);
  }

  v14 = [NSNumber numberWithDouble:v10];
  [bundleCopy addMetaDataForRankForKey:@"TimeCorrelationScore" value:v14];
}

- (double)overlapsIndexOfBaseEvents:(id)events contextEvents:(id)contextEvents
{
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  if ([eventsCopy count])
  {
    if ([contextEventsCopy count])
    {
      v8 = [NSDateInterval alloc];
      firstObject = [eventsCopy firstObject];
      startDate = [firstObject startDate];
      lastObject = [eventsCopy lastObject];
      endDate = [lastObject endDate];
      v13 = [v8 initWithStartDate:startDate endDate:endDate];

      v14 = [(MOTimeContextAnnotationManager *)self timespanFromEvents:eventsCopy boundaryInterval:0];
      v53 = v13;
      v15 = [(MOTimeContextAnnotationManager *)self timespanFromEvents:contextEventsCopy boundaryInterval:v13];
      v52 = [eventsCopy arrayByAddingObjectsFromArray:contextEventsCopy];
      v50 = [MOTimeContextAnnotationManager timespanFromEvents:"timespanFromEvents:boundaryInterval:" boundaryInterval:?];
      v55 = v14;
      objectEnumerator = [v14 objectEnumerator];
      v54 = v15;
      objectEnumerator2 = [v15 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      nextObject2 = [objectEnumerator2 nextObject];
      v20 = nextObject2;
      v21 = 0.0;
      if (nextObject && nextObject2)
      {
        v22 = 0.0;
        do
        {
          v23 = [nextObject intersectionWithDateInterval:v20];
          v24 = v23;
          if (v23)
          {
            [v23 duration];
            v22 = v22 + v25;
          }

          endDate2 = [nextObject endDate];
          endDate3 = [v20 endDate];
          v28 = [endDate2 isBeforeDate:endDate3];

          if (v28)
          {
            nextObject3 = [objectEnumerator nextObject];
            v30 = nextObject;
            nextObject = nextObject3;
          }

          else
          {
            nextObject4 = [objectEnumerator2 nextObject];
            v30 = v20;
            v20 = nextObject4;
          }
        }

        while (nextObject && v20);
      }

      else
      {
        v22 = 0.0;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v33 = v50;
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        v21 = 0.0;
        do
        {
          v37 = 0;
          do
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v56 + 1) + 8 * v37) duration];
            v21 = v21 + v38;
            v37 = v37 + 1;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
        }

        while (v35);
      }

      if (v21 <= 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v22 / v21;
      }

      v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v41 = objc_opt_class();
        v51 = NSStringFromClass(v41);
        v47 = [eventsCopy count];
        firstObject2 = [eventsCopy firstObject];
        startDate2 = [firstObject2 startDate];
        lastObject2 = [eventsCopy lastObject];
        endDate4 = [lastObject2 endDate];
        v46 = [contextEventsCopy count];
        v45 = [v55 count];
        v44 = [v54 count];
        *buf = 138414594;
        v61 = v51;
        v62 = 2048;
        v63 = v47;
        v64 = 2112;
        v65 = startDate2;
        v66 = 2112;
        v67 = endDate4;
        v68 = 2048;
        v69 = v46;
        v70 = 2048;
        v71 = v45;
        v72 = 2048;
        v73 = v44;
        v74 = 2048;
        v75 = v22;
        v76 = 2048;
        v77 = v21;
        v78 = 2048;
        v79 = v32;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "TimeContext(%@): base events, %lu, startDate, %@, endDate, %@, context events, %lu, base events intervals, %lu, context events intervals, %lu, intersection, %f, total duration, %f, overlaps score, %f", buf, 0x66u);
      }
    }

    else
    {
      v32 = 1.0;
    }
  }

  else
  {
    v32 = -1.0;
  }

  return v32;
}

- (id)timespanFromEvents:(id)events boundaryInterval:(id)interval
{
  eventsCopy = events;
  intervalCopy = interval;
  if (eventsCopy && [eventsCopy count])
  {
    v36 = intervalCopy;
    v37 = eventsCopy;
    v8 = [(MOTimeContextAnnotationManager *)self intervalsFromEvents:eventsCopy boundaryInterval:intervalCopy];
    v34 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
    v44 = v34;
    v9 = [NSArray arrayWithObjects:&v44 count:1];
    v35 = v8;
    v10 = [v8 sortedArrayUsingDescriptors:v9];

    v38 = objc_opt_new();
    firstObject = [v10 firstObject];
    startDate = [firstObject startDate];

    firstObject2 = [v10 firstObject];
    endDate = [firstObject2 endDate];

    v15 = [startDate dateByAddingTimeInterval:300.0];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          startDate2 = [v21 startDate];
          v23 = [startDate2 isAfterDate:v15];

          if (v23)
          {
            if ([startDate isBeforeDate:endDate])
            {
              v24 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];
              [v38 addObject:v24];
            }

            startDate3 = [v21 startDate];

            startDate = startDate3;
          }

          else
          {
            endDate2 = [v21 endDate];
            v27 = [endDate2 isAfterDate:v15];

            if (!v27)
            {
              continue;
            }
          }

          endDate3 = [v21 endDate];

          endDate4 = [v21 endDate];
          v30 = [endDate4 dateByAddingTimeInterval:300.0];

          endDate = endDate3;
          v15 = v30;
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    if (startDate && endDate && [startDate isBeforeDate:endDate])
    {
      v31 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];
      [v38 addObject:v31];
    }

    v32 = [v38 copy];

    intervalCopy = v36;
    eventsCopy = v37;
  }

  else
  {
    v32 = &__NSArray0__struct;
  }

  return v32;
}

- (id)intervalsFromEvents:(id)events boundaryInterval:(id)interval
{
  eventsCopy = events;
  intervalCopy = interval;
  v55 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    v51 = *v62;
    v52 = v8;
    do
    {
      v12 = 0;
      v53 = v10;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v54 = v12;
        v13 = *(*(&v61 + 1) + 8 * v12);
        startDate = [v13 startDate];

        if (!startDate)
        {
          v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v67 = v13;
            v68 = 2080;
            v69 = "[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]";
            v70 = 1024;
            v71 = 245;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Event.startDate is nil, event, %@ (in %s:%d)", buf, 0x1Cu);
          }

          v16 = +[NSAssertionHandler currentHandler];
          [v16 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:245 description:{@"Event.startDate is nil, event, %@ (in %s:%d)", v13, "-[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]", 245}];
        }

        endDate = [v13 endDate];

        if (!endDate)
        {
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v67 = v13;
            v68 = 2080;
            v69 = "[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]";
            v70 = 1024;
            v71 = 246;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Event.endDate is nil, event, %@ (in %s:%d)", buf, 0x1Cu);
          }

          v19 = +[NSAssertionHandler currentHandler];
          [v19 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:246 description:{@"Event.endDate is nil, event, %@ (in %s:%d)", v13, "-[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]", 246}];
        }

        startDate2 = [v13 startDate];
        if (startDate2)
        {
          v21 = startDate2;
          endDate2 = [v13 endDate];

          if (endDate2)
          {
            if ([v13 category] == 6)
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              mediaPlaySessions = [v13 mediaPlaySessions];
              v24 = [mediaPlaySessions countByEnumeratingWithState:&v57 objects:v65 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v58;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v58 != v26)
                    {
                      objc_enumerationMutation(mediaPlaySessions);
                    }

                    v28 = *(*(&v57 + 1) + 8 * i);
                    startDate3 = [v28 startDate];

                    if (!startDate3)
                    {
                      v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        v67 = v28;
                        v68 = 2080;
                        v69 = "[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]";
                        v70 = 1024;
                        v71 = 252;
                        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "mediaPlaySession.startDate is nil, mediaPlaySession, %@ (in %s:%d)", buf, 0x1Cu);
                      }

                      v31 = +[NSAssertionHandler currentHandler];
                      [v31 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:252 description:{@"mediaPlaySession.startDate is nil, mediaPlaySession, %@ (in %s:%d)", v28, "-[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]", 252}];
                    }

                    endDate3 = [v28 endDate];

                    if (!endDate3)
                    {
                      v33 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        v67 = v28;
                        v68 = 2080;
                        v69 = "[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]";
                        v70 = 1024;
                        v71 = 253;
                        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "mediaPlaySession.endDate is nil, mediaPlaySession, %@ (in %s:%d)", buf, 0x1Cu);
                      }

                      v34 = +[NSAssertionHandler currentHandler];
                      [v34 handleFailureInMethod:a2 object:self file:@"MOTimeContextAnnotationManager.m" lineNumber:253 description:{@"mediaPlaySession.endDate is nil, mediaPlaySession, %@ (in %s:%d)", v28, "-[MOTimeContextAnnotationManager intervalsFromEvents:boundaryInterval:]", 253}];
                    }

                    startDate4 = [v28 startDate];
                    if (startDate4)
                    {
                      v36 = startDate4;
                      endDate4 = [v28 endDate];

                      if (endDate4)
                      {
                        v38 = [NSDateInterval alloc];
                        startDate5 = [v28 startDate];
                        endDate5 = [v28 endDate];
                        v41 = [v38 initWithStartDate:startDate5 endDate:endDate5];

                        if (!intervalCopy || [intervalCopy intersectsDateInterval:v41])
                        {
                          [v55 addObject:v41];
                        }
                      }
                    }
                  }

                  v25 = [mediaPlaySessions countByEnumeratingWithState:&v57 objects:v65 count:16];
                }

                while (v25);
                v8 = v52;
                v10 = v53;
                v11 = v51;
              }
            }

            else
            {
              startDate6 = [v13 startDate];
              endDate6 = [v13 endDate];
              v44 = [startDate6 isBeforeDate:endDate6];

              if (v44)
              {
                v45 = [NSDateInterval alloc];
                startDate7 = [v13 startDate];
                endDate7 = [v13 endDate];
                mediaPlaySessions = [v45 initWithStartDate:startDate7 endDate:endDate7];

                [v55 addObject:mediaPlaySessions];
              }

              else
              {
                mediaPlaySessions = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(mediaPlaySessions, OS_LOG_TYPE_ERROR))
                {
                  v48 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v67 = v48;
                  v68 = 2112;
                  v69 = v13;
                  _os_log_error_impl(&_mh_execute_header, mediaPlaySessions, OS_LOG_TYPE_ERROR, "%@, discard event with wrong start/end date, event, %@ ", buf, 0x16u);
                }
              }
            }
          }
        }

        v12 = v54 + 1;
      }

      while ((v54 + 1) != v10);
      v10 = [v8 countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v10);
  }

  v49 = [v55 copy];

  return v49;
}

- (void)addSocialContextForEventBundle:(id)bundle sortedBaseEvents:(id)events contextEvents:(id)contextEvents
{
  bundleCopy = bundle;
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];

  v51 = eventsCopy;
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412802;
    v64 = v15;
    v65 = 2112;
    v66 = *&startDate;
    v67 = 2112;
    v68 = *&endDate;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "TimeContext(%@): bundle startDate, %@, endDate, %@", buf, 0x20u);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = contextEventsCopy;
  v17 = [v16 countByEnumeratingWithState:&v59 objects:v79 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v60;
    v21 = 0.0;
    v22 = 0.0;
    v54 = v16;
    v55 = startDate;
    v53 = *v60;
    do
    {
      v23 = 0;
      v57 = v18;
      do
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v59 + 1) + 8 * v23);
        if ([v24 category] == 15)
        {
          startDate2 = [v24 startDate];
          if ([startDate2 isAfterDate:startDate])
          {
            startDate3 = [v24 startDate];
          }

          else
          {
            startDate3 = startDate;
          }

          v27 = startDate3;

          endDate2 = [v24 endDate];
          if ([endDate2 isBeforeDate:endDate])
          {
            endDate3 = [v24 endDate];
          }

          else
          {
            endDate3 = endDate;
          }

          v30 = endDate3;

          [v30 timeIntervalSinceDate:v27];
          v32 = v31;
          v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          v58 = v27;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            eventIdentifier = [v24 eventIdentifier];
            startDate4 = [v24 startDate];
            endDate4 = [v24 endDate];
            [v24 pCount];
            v56 = v19;
            v40 = v39 = endDate;
            *buf = 138414082;
            v64 = v35;
            v65 = 2112;
            v66 = *&eventIdentifier;
            v67 = 2112;
            v68 = *&startDate4;
            v69 = 2112;
            v70 = endDate4;
            v71 = 2112;
            v72 = v40;
            v73 = 2112;
            v74 = v58;
            v75 = 2112;
            v76 = v30;
            v77 = 2048;
            v78 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "TimeContext(%@): social context event identifier, %@, startDate, %@, endDate, %@, p count, %@, overlap startDate, %@, endDate %@, overlap interval, %.1f", buf, 0x52u);

            endDate = v39;
            v19 = v56;

            v20 = v53;
            startDate = v55;

            v16 = v54;
          }

          pCount = [v24 pCount];
          v22 = v22 + [pCount unsignedIntValue] * v32;

          pCount2 = [v24 pCount];
          unsignedIntValue = [pCount2 unsignedIntValue];

          if (v19 <= unsignedIntValue)
          {
            v19 = unsignedIntValue;
          }

          v21 = v21 + v32;

          v18 = v57;
        }

        v23 = v23 + 1;
      }

      while (v18 != v23);
      v18 = [v16 countByEnumeratingWithState:&v59 objects:v79 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v21 = 0.0;
    v22 = 0.0;
  }

  if (v21 <= 0.0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = v22 / v21;
  }

  v45 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    *buf = 138413058;
    v64 = v47;
    v65 = 2048;
    v66 = v22;
    v67 = 2048;
    v68 = v44;
    v69 = 2048;
    v70 = v19;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "TimeContext(%@): pCountWeightedSum, %.1f, pCountWeightedAverage, %.1f, pCountMax, %lu", buf, 0x2Au);
  }

  v48 = [NSNumber numberWithDouble:v22];
  [bundleCopy addMetaDataForRankForKey:@"PeopleCountWeightedSum" value:v48];

  v49 = [NSNumber numberWithDouble:v44];
  [bundleCopy addMetaDataForRankForKey:@"PeopleCountWeightedAverage" value:v49];

  v50 = [NSNumber numberWithUnsignedInteger:v19];
  [bundleCopy addMetaDataForRankForKey:@"PeopleCountMax" value:v50];
}

- (void)addPeopleDensityContextForEventBundle:(id)bundle sortedBaseEvents:(id)events contextEvents:(id)contextEvents
{
  bundleCopy = bundle;
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];

  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v69 = endDate;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138412802;
    v78 = v16;
    v79 = 2112;
    v80 = *&startDate;
    v81 = 2112;
    v82 = *&v69;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TimeContext(%@): bundle startDate, %@, endDate, %@", buf, 0x20u);

    endDate = v69;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v17 = contextEventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v66 = eventsCopy;
    v67 = bundleCopy;
    v20 = *v74;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v68 = startDate;
    v70 = *v74;
    v71 = v17;
    do
    {
      v25 = 0;
      v72 = v19;
      do
      {
        if (*v74 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v73 + 1) + 8 * v25);
        if ([v26 category] == 23)
        {
          startDate2 = [v26 startDate];
          if ([startDate2 isAfterDate:startDate])
          {
            startDate3 = [v26 startDate];
          }

          else
          {
            startDate3 = startDate;
          }

          v29 = startDate3;

          endDate2 = [v26 endDate];
          if ([endDate2 isBeforeDate:endDate])
          {
            endDate3 = [v26 endDate];
          }

          else
          {
            endDate3 = endDate;
          }

          v32 = endDate3;

          [v32 timeIntervalSinceDate:v29];
          v34 = v33;
          v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            eventIdentifier = [v26 eventIdentifier];
            startDate4 = [v26 startDate];
            endDate4 = [v26 endDate];
            densityScore = [v26 densityScore];
            *buf = 138414082;
            v78 = v37;
            v79 = 2112;
            v80 = *&eventIdentifier;
            v81 = 2112;
            v82 = *&startDate4;
            v83 = 2112;
            v84 = *&endDate4;
            v85 = 2112;
            v86 = *&densityScore;
            v87 = 2112;
            v88 = *&v29;
            v89 = 2112;
            v90 = v32;
            v91 = 2048;
            v92 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "TimeContext(%@): people density event identifier, %@, startDate, %@, endDate, %@, p count, %@, overlap startDate, %@, endDate %@, overlap interval, %.1f", buf, 0x52u);

            endDate = v69;
            startDate = v68;
          }

          densityScore2 = [v26 densityScore];
          [densityScore2 doubleValue];
          v24 = v24 + v43 * v34;

          endDate5 = [v26 endDate];
          startDate5 = [v26 startDate];
          [endDate5 timeIntervalSinceDate:startDate5];
          v47 = v46;

          densityScanDuration = [v26 densityScanDuration];
          [densityScanDuration doubleValue];
          v50 = v49 / v47;

          densityScore3 = [v26 densityScore];
          [densityScore3 doubleValue];
          v23 = v23 + v50 * v52 * v34;

          densityScore4 = [v26 densityScore];
          [densityScore4 doubleValue];
          v55 = v54;

          if (v21 < v55)
          {
            v21 = v55;
          }

          v22 = v22 + v34;

          v20 = v70;
          v17 = v71;
          v19 = v72;
        }

        v25 = v25 + 1;
      }

      while (v19 != v25);
      v19 = [v17 countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v19);

    if (v22 > 0.0)
    {
      v56 = v24 / v22;
    }

    else
    {
      v56 = 0.0;
    }

    if (v22 > 0.0)
    {
      v57 = v23 / v22;
    }

    else
    {
      v57 = 0.0;
    }

    eventsCopy = v66;
    bundleCopy = v67;
  }

  else
  {

    v24 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
  }

  v58 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    *buf = 138413570;
    v78 = v60;
    v79 = 2048;
    v80 = v24;
    v81 = 2048;
    v82 = v56;
    v83 = 2048;
    v84 = v21;
    v85 = 2048;
    v86 = v23;
    v87 = 2048;
    v88 = v57;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "TimeContext(%@): peopleDensityWeightedSum, %.1f, peopleDensityWeightedAverage, %.1f, peopleDensityMax, %.1f, peopleDensityWeightedConfidenceSum, %.1f, peopleDensityWeightedConfidenceAverage, %.3f", buf, 0x3Eu);
  }

  v61 = [NSNumber numberWithDouble:v24];
  [bundleCopy addMetaDataForRankForKey:@"PeopleDensityWeightedSum" value:v61];

  v62 = [NSNumber numberWithDouble:v56];
  [bundleCopy addMetaDataForRankForKey:@"PeopleDensityWeightedAverage" value:v62];

  v63 = [NSNumber numberWithDouble:v21];
  [bundleCopy addMetaDataForRankForKey:@"PeopleDensityMax" value:v63];

  v64 = [NSNumber numberWithDouble:v23];
  [bundleCopy addMetaDataForRankForKey:@"PeopleDensityWeightedConfidenceSum" value:v64];

  v65 = [NSNumber numberWithDouble:v57];
  [bundleCopy addMetaDataForRankForKey:@"PeopleDensityWeightedConfidenceAverage" value:v65];
}

@end