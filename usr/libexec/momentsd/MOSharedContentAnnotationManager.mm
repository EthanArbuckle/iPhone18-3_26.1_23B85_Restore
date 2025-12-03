@interface MOSharedContentAnnotationManager
- (MOSharedContentAnnotationManager)initWithUniverse:(id)universe;
- (id)annotateBaseEvents:(id)events;
- (id)getBaseEvents:(id)events;
- (void)_performAnnotationWithEvents:(id)events handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events handler:(id)handler;
@end

@implementation MOSharedContentAnnotationManager

- (MOSharedContentAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  objc_storeStrong(&self->fUniverse, universe);
  v14.receiver = self;
  v14.super_class = MOSharedContentAnnotationManager;
  v6 = [(MOSharedContentAnnotationManager *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v6->_queue;
    v6->_queue = v11;
  }

  return v6;
}

- (id)getBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 9];
  v5 = [eventsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)performAnnotationWithEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOSharedContentAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __72__MOSharedContentAnnotationManager_performAnnotationWithEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = eventsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventsCopy;
  dispatch_async(queue, block);
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

- (void)_performAnnotationWithEvents:(id)events handler:(id)handler
{
  handlerCopy = handler;
  v7 = [(MOSharedContentAnnotationManager *)self getBaseEvents:events];
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

    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

- (id)annotateBaseEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy)
  {
    v42 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = eventsCopy;
    obj = eventsCopy;
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
        itemURL = [v5 itemURL];
        absoluteString = [itemURL absoluteString];

        if ([absoluteString hasPrefix:@"https://apple.news"] & 1) != 0 || (objc_msgSend(absoluteString, "hasPrefix:", @"https://music.apple.com") & 1) != 0 || (objc_msgSend(absoluteString, "hasPrefix:", @"https://tv.apple.com") & 1) != 0 || (objc_msgSend(absoluteString, "hasPrefix:", @"https://podcasts.apple.com"))
        {
          goto LABEL_11;
        }

        itemAttributionsCount = [v5 itemAttributionsCount];
        if ([(MOEventBundle *)itemAttributionsCount intValue]< 2)
        {
          goto LABEL_16;
        }

        itemShareDirection = [v5 itemShareDirection];

        if (itemShareDirection == 1)
        {
LABEL_11:
          v45 = absoluteString;
          v8 = [MOEventBundle alloc];
          v9 = +[NSUUID UUID];
          v10 = +[NSDate date];
          itemAttributionsCount = [(MOEventBundle *)v8 initWithBundleIdentifier:v9 creationDate:v10];

          [(MOEventBundle *)itemAttributionsCount setInterfaceType:6];
          v12 = objc_opt_new();
          [v12 addObject:v5];
          [(MOEventBundle *)itemAttributionsCount setEvents:v12];
          v13 = [[MOAction alloc] initWithActionName:@"Items shared and received today" actionType:1 actionSubtype:3];
          [(MOEventBundle *)itemAttributionsCount setAction:v13];

          eventIdentifier = [v5 eventIdentifier];
          action = [(MOEventBundle *)itemAttributionsCount action];
          [action setSourceEventIdentifier:eventIdentifier];

          v16 = objc_opt_new();
          v58[0] = @"sharedContentURL";
          itemURL2 = [v5 itemURL];
          absoluteString2 = [itemURL2 absoluteString];
          v58[1] = @"sharedContentStartDate";
          v59[0] = absoluteString2;
          startDate = [v5 startDate];
          [startDate timeIntervalSinceReferenceDate];
          v20 = [NSNumber numberWithDouble:?];
          v59[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];

          v22 = [[MOResource alloc] initWithName:@"Shared Content" type:4 dict:v21 value:0.0];
          eventIdentifier2 = [v5 eventIdentifier];
          [(MOResource *)v22 setSourceEventIdentifier:eventIdentifier2];

          [v16 addObject:v22];
          v24 = [v16 copy];
          [(MOEventBundle *)itemAttributionsCount setResources:v24];

          startDate2 = [v5 startDate];
          [(MOEventBundle *)itemAttributionsCount setStartDate:startDate2];

          startDate3 = [v5 startDate];
          v27 = [startDate3 dateByAddingTimeInterval:3600.0];
          [(MOEventBundle *)itemAttributionsCount setEndDate:v27];

          v28 = objc_opt_new();
          v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 itemShareDirection]);
          [v28 setObject:v29 forKey:@"ItemShareDirection"];

          itemAttributionsCount2 = [v5 itemAttributionsCount];

          if (itemAttributionsCount2)
          {
            itemAttributionsCount3 = [v5 itemAttributionsCount];
            [v28 setObject:itemAttributionsCount3 forKey:@"ItemAttributionsCount"];
          }

          [(MOEventBundle *)itemAttributionsCount setMetaDataForRank:v28];
          v32 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            identifierFromProvider = [v5 identifierFromProvider];
            startDate4 = [(MOEventBundle *)itemAttributionsCount startDate];
            endDate = [(MOEventBundle *)itemAttributionsCount endDate];
            *buf = 136315906;
            v51 = "[MOSharedContentAnnotationManager annotateBaseEvents:]";
            v52 = 2112;
            v53 = identifierFromProvider;
            v54 = 2112;
            v55 = startDate4;
            v56 = 2112;
            v57 = endDate;
            v36 = endDate;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s, #swy: annotated share content bundle with identifierFromProvider, %@,startdata,%@,enddate,%@", buf, 0x2Au);
          }

          [v42 addObject:itemAttributionsCount];
          absoluteString = v45;
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

        eventsCopy = v39;
        goto LABEL_25;
      }
    }
  }

  v42 = 0;
LABEL_25:

  return v42;
}

@end