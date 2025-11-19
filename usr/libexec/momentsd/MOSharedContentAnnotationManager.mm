@interface MOSharedContentAnnotationManager
- (MOSharedContentAnnotationManager)initWithUniverse:(id)a3;
- (id)annotateBaseEvents:(id)a3;
- (id)getBaseEvents:(id)a3;
- (void)_performAnnotationWithEvents:(id)a3 handler:(id)a4;
- (void)performAnnotationWithEvents:(id)a3 handler:(id)a4;
@end

@implementation MOSharedContentAnnotationManager

- (MOSharedContentAnnotationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->fUniverse, a3);
  v14.receiver = self;
  v14.super_class = MOSharedContentAnnotationManager;
  v6 = [(MOSharedContentAnnotationManager *)&v14 init];
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

- (id)getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 9];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)performAnnotationWithEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOSharedContentAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __72__MOSharedContentAnnotationManager_performAnnotationWithEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __72__MOSharedContentAnnotationManager_performAnnotationWithEvents_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __72__MOSharedContentAnnotationManager_performAnnotationWithEvents_handler___block_invoke_2;
  v3[3] = &unk_1003369E0;
  v4 = *(a1 + 48);
  [v1 _performAnnotationWithEvents:v2 handler:v3];
}

uint64_t __72__MOSharedContentAnnotationManager_performAnnotationWithEvents_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performAnnotationWithEvents:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [(MOSharedContentAnnotationManager *)self getBaseEvents:a3];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOSharedContentAnnotationManager _performAnnotationWithEvents:v7 handler:?];
  }

  if ([v7 count])
  {
    v9 = [(MOSharedContentAnnotationManager *)self annotateBaseEvents:v7];
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        [MOSharedContentAnnotationManager _performAnnotationWithEvents:v9 handler:?];
      }
    }

    else if (v11)
    {
      [MOSharedContentAnnotationManager _performAnnotationWithEvents:v10 handler:?];
    }

    v6[2](v6, v9, 0);
  }

  else
  {
    v6[2](v6, &__NSArray0__struct, 0);
  }
}

- (id)annotateBaseEvents:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v42 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v3;
    obj = v3;
    v44 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (!v44)
    {
      goto LABEL_23;
    }

    v43 = *v47;
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v46 + 1) + 8 * v4);
        v6 = [v5 itemURL];
        v7 = [v6 absoluteString];

        if ([v7 hasPrefix:@"https://apple.news"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"https://music.apple.com") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"https://tv.apple.com") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"https://podcasts.apple.com"))
        {
          goto LABEL_11;
        }

        v11 = [v5 itemAttributionsCount];
        if ([(MOEventBundle *)v11 intValue]< 2)
        {
          goto LABEL_16;
        }

        v33 = [v5 itemShareDirection];

        if (v33 == 1)
        {
LABEL_11:
          v45 = v7;
          v8 = [MOEventBundle alloc];
          v9 = +[NSUUID UUID];
          v10 = +[NSDate date];
          v11 = [(MOEventBundle *)v8 initWithBundleIdentifier:v9 creationDate:v10];

          [(MOEventBundle *)v11 setInterfaceType:6];
          v12 = objc_opt_new();
          [v12 addObject:v5];
          [(MOEventBundle *)v11 setEvents:v12];
          v13 = [[MOAction alloc] initWithActionName:@"Items shared and received today" actionType:1 actionSubtype:3];
          [(MOEventBundle *)v11 setAction:v13];

          v14 = [v5 eventIdentifier];
          v15 = [(MOEventBundle *)v11 action];
          [v15 setSourceEventIdentifier:v14];

          v16 = objc_opt_new();
          v58[0] = @"sharedContentURL";
          v17 = [v5 itemURL];
          v18 = [v17 absoluteString];
          v58[1] = @"sharedContentStartDate";
          v59[0] = v18;
          v19 = [v5 startDate];
          [v19 timeIntervalSinceReferenceDate];
          v20 = [NSNumber numberWithDouble:?];
          v59[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];

          v22 = [[MOResource alloc] initWithName:@"Shared Content" type:4 dict:v21 value:0.0];
          v23 = [v5 eventIdentifier];
          [(MOResource *)v22 setSourceEventIdentifier:v23];

          [v16 addObject:v22];
          v24 = [v16 copy];
          [(MOEventBundle *)v11 setResources:v24];

          v25 = [v5 startDate];
          [(MOEventBundle *)v11 setStartDate:v25];

          v26 = [v5 startDate];
          v27 = [v26 dateByAddingTimeInterval:3600.0];
          [(MOEventBundle *)v11 setEndDate:v27];

          v28 = objc_opt_new();
          v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 itemShareDirection]);
          [v28 setObject:v29 forKey:@"ItemShareDirection"];

          v30 = [v5 itemAttributionsCount];

          if (v30)
          {
            v31 = [v5 itemAttributionsCount];
            [v28 setObject:v31 forKey:@"ItemAttributionsCount"];
          }

          [(MOEventBundle *)v11 setMetaDataForRank:v28];
          v32 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v40 = [v5 identifierFromProvider];
            v34 = [(MOEventBundle *)v11 startDate];
            v35 = [(MOEventBundle *)v11 endDate];
            *buf = 136315906;
            v51 = "[MOSharedContentAnnotationManager annotateBaseEvents:]";
            v52 = 2112;
            v53 = v40;
            v54 = 2112;
            v55 = v34;
            v56 = 2112;
            v57 = v35;
            v36 = v35;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s, #swy: annotated share content bundle with identifierFromProvider, %@,startdata,%@,enddate,%@", buf, 0x2Au);
          }

          [v42 addObject:v11];
          v7 = v45;
LABEL_16:
        }

        v4 = v4 + 1;
      }

      while (v44 != v4);
      v37 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
      v44 = v37;
      if (!v37)
      {
LABEL_23:

        v3 = v39;
        goto LABEL_25;
      }
    }
  }

  v42 = 0;
LABEL_25:

  return v42;
}

@end