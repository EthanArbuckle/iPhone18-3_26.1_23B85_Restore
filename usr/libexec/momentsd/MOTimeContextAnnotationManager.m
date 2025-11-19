@interface MOTimeContextAnnotationManager
- (MOTimeContextAnnotationManager)initWithUniverse:(id)a3;
- (double)overlapsIndexOfBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)buildPromptDescriptionForEventBundle:(id)a3;
- (id)getBaseEvents:(id)a3;
- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5;
- (id)groupBaseEvents:(id)a3;
- (id)intervalsFromEvents:(id)a3 boundaryInterval:(id)a4;
- (id)timespanFromEvents:(id)a3 boundaryInterval:(id)a4;
- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
- (void)addPeopleDensityContextForEventBundle:(id)a3 sortedBaseEvents:(id)a4 contextEvents:(id)a5;
- (void)addSocialContextForEventBundle:(id)a3 sortedBaseEvents:(id)a4 contextEvents:(id)a5;
- (void)addTimeOverlapsScoreForEventBundle:(id)a3 baseEvents:(id)a4 contextEvents:(id)a5;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
@end

@implementation MOTimeContextAnnotationManager

- (MOTimeContextAnnotationManager)initWithUniverse:(id)a3
{
  v11.receiver = self;
  v11.super_class = MOTimeContextAnnotationManager;
  v3 = [(MOAnnotationManager *)&v11 initWithUniverse:a3];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOTimeContextAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __88__MOTimeContextAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
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

- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v89 = v11;
  v12 = [NSArray arrayWithObjects:&v89 count:1];
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  v71 = v13;
  v14 = [(MOTimeContextAnnotationManager *)self getBaseEvents:v13];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v66 = v11;
  v70 = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v14 count];
    [v14 firstObject];
    v20 = v19 = v9;
    v21 = [v20 startDate];
    [v14 lastObject];
    v23 = v22 = v14;
    v24 = [v23 endDate];
    *buf = 138413058;
    v82 = v17;
    v83 = 2048;
    v84 = v18;
    v85 = 2112;
    v86 = v21;
    v87 = 2112;
    v88 = v24;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TimeContext(%@): Base Events, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    v14 = v22;
    self = v70;

    v9 = v19;
    v11 = v66;
  }

  if ([v14 count])
  {
    v65 = v9;
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
            v39 = [v34 firstObject];
            v40 = [v39 startDate];
            [v34 lastObject];
            v42 = v41 = v8;
            v43 = [v42 endDate];
            *buf = 138413058;
            v82 = v37;
            v83 = 2048;
            v84 = v38;
            v85 = 2112;
            v86 = v40;
            v87 = 2112;
            v88 = v43;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "TimeContext(%@): Base Events, %lu, first.date, %@, last.date, %@", buf, 0x2Au);

            self = v70;
            v8 = v41;
            v11 = v66;
          }

          v44 = [(MOTimeContextAnnotationManager *)self getContextEventsForBaseEvents:v34 events:v71 withPatternEvents:v8];
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
            v57 = [v49 promptLanguage];
            v58 = [v57 mask];
            *buf = 138412546;
            v82 = v56;
            v83 = 2112;
            v84 = v58;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "TimeContext(%@): Prompt Lang., %@", buf, 0x16u);

            self = v70;
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
    v9 = v65;
    v65[2](v65, v63, 0);

    v14 = v64;
  }

  else
  {
    v9[2](v9, &__NSArray0__struct, 0);
  }
}

- (id)groupBaseEvents:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
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
      v24 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TimeContext(%@): No grouping is applied, %lu", buf, 0x16u);
    }

    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)getBaseEvents:(id)a3
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

- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5
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

- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4
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

- (id)buildPromptDescriptionForEventBundle:(id)a3
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

- (void)addTimeOverlapsScoreForEventBundle:(id)a3 baseEvents:(id)a4 contextEvents:(id)a5
{
  v8 = a3;
  [(MOTimeContextAnnotationManager *)self overlapsIndexOfBaseEvents:a4 contextEvents:a5];
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
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TimeContext(%@): overlaps score, %f, bundle, %@", &v15, 0x20u);
  }

  v14 = [NSNumber numberWithDouble:v10];
  [v8 addMetaDataForRankForKey:@"TimeCorrelationScore" value:v14];
}

- (double)overlapsIndexOfBaseEvents:(id)a3 contextEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ([v7 count])
    {
      v8 = [NSDateInterval alloc];
      v9 = [v6 firstObject];
      v10 = [v9 startDate];
      v11 = [v6 lastObject];
      v12 = [v11 endDate];
      v13 = [v8 initWithStartDate:v10 endDate:v12];

      v14 = [(MOTimeContextAnnotationManager *)self timespanFromEvents:v6 boundaryInterval:0];
      v53 = v13;
      v15 = [(MOTimeContextAnnotationManager *)self timespanFromEvents:v7 boundaryInterval:v13];
      v52 = [v6 arrayByAddingObjectsFromArray:v7];
      v50 = [MOTimeContextAnnotationManager timespanFromEvents:"timespanFromEvents:boundaryInterval:" boundaryInterval:?];
      v55 = v14;
      v16 = [v14 objectEnumerator];
      v54 = v15;
      v17 = [v15 objectEnumerator];
      v18 = [v16 nextObject];
      v19 = [v17 nextObject];
      v20 = v19;
      v21 = 0.0;
      if (v18 && v19)
      {
        v22 = 0.0;
        do
        {
          v23 = [v18 intersectionWithDateInterval:v20];
          v24 = v23;
          if (v23)
          {
            [v23 duration];
            v22 = v22 + v25;
          }

          v26 = [v18 endDate];
          v27 = [v20 endDate];
          v28 = [v26 isBeforeDate:v27];

          if (v28)
          {
            v29 = [v16 nextObject];
            v30 = v18;
            v18 = v29;
          }

          else
          {
            v31 = [v17 nextObject];
            v30 = v20;
            v20 = v31;
          }
        }

        while (v18 && v20);
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
        v47 = [v6 count];
        v49 = [v6 firstObject];
        v42 = [v49 startDate];
        v48 = [v6 lastObject];
        v43 = [v48 endDate];
        v46 = [v7 count];
        v45 = [v55 count];
        v44 = [v54 count];
        *buf = 138414594;
        v61 = v51;
        v62 = 2048;
        v63 = v47;
        v64 = 2112;
        v65 = v42;
        v66 = 2112;
        v67 = v43;
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

- (id)timespanFromEvents:(id)a3 boundaryInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v36 = v7;
    v37 = v6;
    v8 = [(MOTimeContextAnnotationManager *)self intervalsFromEvents:v6 boundaryInterval:v7];
    v34 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
    v44 = v34;
    v9 = [NSArray arrayWithObjects:&v44 count:1];
    v35 = v8;
    v10 = [v8 sortedArrayUsingDescriptors:v9];

    v38 = objc_opt_new();
    v11 = [v10 firstObject];
    v12 = [v11 startDate];

    v13 = [v10 firstObject];
    v14 = [v13 endDate];

    v15 = [v12 dateByAddingTimeInterval:300.0];
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
          v22 = [v21 startDate];
          v23 = [v22 isAfterDate:v15];

          if (v23)
          {
            if ([v12 isBeforeDate:v14])
            {
              v24 = [[NSDateInterval alloc] initWithStartDate:v12 endDate:v14];
              [v38 addObject:v24];
            }

            v25 = [v21 startDate];

            v12 = v25;
          }

          else
          {
            v26 = [v21 endDate];
            v27 = [v26 isAfterDate:v15];

            if (!v27)
            {
              continue;
            }
          }

          v28 = [v21 endDate];

          v29 = [v21 endDate];
          v30 = [v29 dateByAddingTimeInterval:300.0];

          v14 = v28;
          v15 = v30;
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    if (v12 && v14 && [v12 isBeforeDate:v14])
    {
      v31 = [[NSDateInterval alloc] initWithStartDate:v12 endDate:v14];
      [v38 addObject:v31];
    }

    v32 = [v38 copy];

    v7 = v36;
    v6 = v37;
  }

  else
  {
    v32 = &__NSArray0__struct;
  }

  return v32;
}

- (id)intervalsFromEvents:(id)a3 boundaryInterval:(id)a4
{
  v7 = a3;
  v56 = a4;
  v55 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = v7;
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
        v14 = [v13 startDate];

        if (!v14)
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

        v17 = [v13 endDate];

        if (!v17)
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

        v20 = [v13 startDate];
        if (v20)
        {
          v21 = v20;
          v22 = [v13 endDate];

          if (v22)
          {
            if ([v13 category] == 6)
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v23 = [v13 mediaPlaySessions];
              v24 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
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
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v57 + 1) + 8 * i);
                    v29 = [v28 startDate];

                    if (!v29)
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

                    v32 = [v28 endDate];

                    if (!v32)
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

                    v35 = [v28 startDate];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = [v28 endDate];

                      if (v37)
                      {
                        v38 = [NSDateInterval alloc];
                        v39 = [v28 startDate];
                        v40 = [v28 endDate];
                        v41 = [v38 initWithStartDate:v39 endDate:v40];

                        if (!v56 || [v56 intersectsDateInterval:v41])
                        {
                          [v55 addObject:v41];
                        }
                      }
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
                }

                while (v25);
                v8 = v52;
                v10 = v53;
                v11 = v51;
              }
            }

            else
            {
              v42 = [v13 startDate];
              v43 = [v13 endDate];
              v44 = [v42 isBeforeDate:v43];

              if (v44)
              {
                v45 = [NSDateInterval alloc];
                v46 = [v13 startDate];
                v47 = [v13 endDate];
                v23 = [v45 initWithStartDate:v46 endDate:v47];

                [v55 addObject:v23];
              }

              else
              {
                v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v48 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v67 = v48;
                  v68 = 2112;
                  v69 = v13;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@, discard event with wrong start/end date, event, %@ ", buf, 0x16u);
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

- (void)addSocialContextForEventBundle:(id)a3 sortedBaseEvents:(id)a4 contextEvents:(id)a5
{
  v52 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 firstObject];
  v10 = [v9 startDate];

  v51 = v7;
  v11 = [v7 lastObject];
  v12 = [v11 endDate];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412802;
    v64 = v15;
    v65 = 2112;
    v66 = *&v10;
    v67 = 2112;
    v68 = *&v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "TimeContext(%@): bundle startDate, %@, endDate, %@", buf, 0x20u);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v59 objects:v79 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v60;
    v21 = 0.0;
    v22 = 0.0;
    v54 = v16;
    v55 = v10;
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
          v25 = [v24 startDate];
          if ([v25 isAfterDate:v10])
          {
            v26 = [v24 startDate];
          }

          else
          {
            v26 = v10;
          }

          v27 = v26;

          v28 = [v24 endDate];
          if ([v28 isBeforeDate:v12])
          {
            v29 = [v24 endDate];
          }

          else
          {
            v29 = v12;
          }

          v30 = v29;

          [v30 timeIntervalSinceDate:v27];
          v32 = v31;
          v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          v58 = v27;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v24 eventIdentifier];
            v37 = [v24 startDate];
            v38 = [v24 endDate];
            [v24 pCount];
            v56 = v19;
            v40 = v39 = v12;
            *buf = 138414082;
            v64 = v35;
            v65 = 2112;
            v66 = *&v36;
            v67 = 2112;
            v68 = *&v37;
            v69 = 2112;
            v70 = v38;
            v71 = 2112;
            v72 = v40;
            v73 = 2112;
            v74 = v58;
            v75 = 2112;
            v76 = v30;
            v77 = 2048;
            v78 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "TimeContext(%@): social context event identifier, %@, startDate, %@, endDate, %@, p count, %@, overlap startDate, %@, endDate %@, overlap interval, %.1f", buf, 0x52u);

            v12 = v39;
            v19 = v56;

            v20 = v53;
            v10 = v55;

            v16 = v54;
          }

          v41 = [v24 pCount];
          v22 = v22 + [v41 unsignedIntValue] * v32;

          v42 = [v24 pCount];
          v43 = [v42 unsignedIntValue];

          if (v19 <= v43)
          {
            v19 = v43;
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
  [v52 addMetaDataForRankForKey:@"PeopleCountWeightedSum" value:v48];

  v49 = [NSNumber numberWithDouble:v44];
  [v52 addMetaDataForRankForKey:@"PeopleCountWeightedAverage" value:v49];

  v50 = [NSNumber numberWithUnsignedInteger:v19];
  [v52 addMetaDataForRankForKey:@"PeopleCountMax" value:v50];
}

- (void)addPeopleDensityContextForEventBundle:(id)a3 sortedBaseEvents:(id)a4 contextEvents:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 firstObject];
  v11 = [v10 startDate];

  v12 = [v8 lastObject];
  v13 = [v12 endDate];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v69 = v13;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138412802;
    v78 = v16;
    v79 = 2112;
    v80 = *&v11;
    v81 = 2112;
    v82 = *&v69;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TimeContext(%@): bundle startDate, %@, endDate, %@", buf, 0x20u);

    v13 = v69;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v66 = v8;
    v67 = v7;
    v20 = *v74;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v68 = v11;
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
          v27 = [v26 startDate];
          if ([v27 isAfterDate:v11])
          {
            v28 = [v26 startDate];
          }

          else
          {
            v28 = v11;
          }

          v29 = v28;

          v30 = [v26 endDate];
          if ([v30 isBeforeDate:v13])
          {
            v31 = [v26 endDate];
          }

          else
          {
            v31 = v13;
          }

          v32 = v31;

          [v32 timeIntervalSinceDate:v29];
          v34 = v33;
          v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = [v26 eventIdentifier];
            v39 = [v26 startDate];
            v40 = [v26 endDate];
            v41 = [v26 densityScore];
            *buf = 138414082;
            v78 = v37;
            v79 = 2112;
            v80 = *&v38;
            v81 = 2112;
            v82 = *&v39;
            v83 = 2112;
            v84 = *&v40;
            v85 = 2112;
            v86 = *&v41;
            v87 = 2112;
            v88 = *&v29;
            v89 = 2112;
            v90 = v32;
            v91 = 2048;
            v92 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "TimeContext(%@): people density event identifier, %@, startDate, %@, endDate, %@, p count, %@, overlap startDate, %@, endDate %@, overlap interval, %.1f", buf, 0x52u);

            v13 = v69;
            v11 = v68;
          }

          v42 = [v26 densityScore];
          [v42 doubleValue];
          v24 = v24 + v43 * v34;

          v44 = [v26 endDate];
          v45 = [v26 startDate];
          [v44 timeIntervalSinceDate:v45];
          v47 = v46;

          v48 = [v26 densityScanDuration];
          [v48 doubleValue];
          v50 = v49 / v47;

          v51 = [v26 densityScore];
          [v51 doubleValue];
          v23 = v23 + v50 * v52 * v34;

          v53 = [v26 densityScore];
          [v53 doubleValue];
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

    v8 = v66;
    v7 = v67;
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
  [v7 addMetaDataForRankForKey:@"PeopleDensityWeightedSum" value:v61];

  v62 = [NSNumber numberWithDouble:v56];
  [v7 addMetaDataForRankForKey:@"PeopleDensityWeightedAverage" value:v62];

  v63 = [NSNumber numberWithDouble:v21];
  [v7 addMetaDataForRankForKey:@"PeopleDensityMax" value:v63];

  v64 = [NSNumber numberWithDouble:v23];
  [v7 addMetaDataForRankForKey:@"PeopleDensityWeightedConfidenceSum" value:v64];

  v65 = [NSNumber numberWithDouble:v57];
  [v7 addMetaDataForRankForKey:@"PeopleDensityWeightedConfidenceAverage" value:v65];
}

@end