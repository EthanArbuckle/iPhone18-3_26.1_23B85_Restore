@interface MOEvergreenAnnotationManager
+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)type;
+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)string;
+ (void)replacePromptIndicesOfEvergreen:(id)evergreen isTah:(BOOL)tah;
- (MOEvergreenAnnotationManager)initWithUniverse:(id)universe;
- (id)shuffledIndexesWithSize:(unint64_t)size;
- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents dateInterval:(id)interval handler:(id)handler;
- (void)_performAnnotationWithSeed:(unint64_t)seed startDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents dateInterval:(id)interval handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler;
- (void)performAnnotationWithSeed:(unint64_t)seed startDate:(id)date endDate:(id)endDate handler:(id)handler;
@end

@implementation MOEvergreenAnnotationManager

- (MOEvergreenAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  objc_storeStrong(&self->fUniverse, universe);
  v18.receiver = self;
  v18.super_class = MOEvergreenAnnotationManager;
  v6 = [(MOEvergreenAnnotationManager *)&v18 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = objc_alloc_init(NSDateComponents);
    [v13 setHour:3];
    [v13 setDay:1];
    [v13 setMonth:1];
    [v13 setYear:2023];
    v14 = +[NSCalendar currentCalendar];
    v15 = [v14 dateFromComponents:v13];
    referenceDate = v6->_referenceDate;
    v6->_referenceDate = v15;
  }

  return v6;
}

- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  handlerCopy = handler;
  queue = [(MOEvergreenAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __86__MOEvergreenAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
  v15[3] = &unk_1003361C0;
  v16 = eventsCopy;
  selfCopy = self;
  v18 = patternEventsCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = patternEventsCopy;
  v14 = eventsCopy;
  dispatch_async(queue, v15);
}

void __86__MOEvergreenAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke(uint64_t a1)
{
  v2 = [NSDateInterval alloc];
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 startDate];
  v5 = [*(a1 + 32) lastObject];
  v6 = [v5 endDate];
  v7 = [v2 initWithStartDate:v4 endDate:v6];

  [*(a1 + 40) _performAnnotationWithEvents:*(a1 + 32) withPatternEvents:*(a1 + 48) dateInterval:v7 handler:*(a1 + 56)];
}

- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents dateInterval:(id)interval handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(MOEvergreenAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __99__MOEvergreenAnnotationManager_performAnnotationWithEvents_withPatternEvents_dateInterval_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = eventsCopy;
  v21 = patternEventsCopy;
  v22 = intervalCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = intervalCopy;
  v17 = patternEventsCopy;
  v18 = eventsCopy;
  dispatch_async(queue, block);
}

- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents dateInterval:(id)interval handler:(id)handler
{
  handlerCopy = handler;
  v8 = +[NSDate date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = (v9 / 86400.0);

  v11 = +[NSDate date];
  v13 = [v11 dateByAddingTimeInterval:-3600.0];

  v12 = [v13 dateByAddingTimeInterval:3600.0];
  [(MOEvergreenAnnotationManager *)self _performAnnotationWithSeed:v10 startDate:v13 endDate:v12 handler:handlerCopy];
}

- (void)performAnnotationWithSeed:(unint64_t)seed startDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MOEvergreenAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __84__MOEvergreenAnnotationManager_performAnnotationWithSeed_startDate_endDate_handler___block_invoke;
  block[3] = &unk_1003376B8;
  v20 = handlerCopy;
  seedCopy = seed;
  block[4] = self;
  v18 = dateCopy;
  v19 = endDateCopy;
  v14 = handlerCopy;
  v15 = endDateCopy;
  v16 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_performAnnotationWithSeed:(unint64_t)seed startDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v58[0] = @"WISDOM";
  v58[1] = @"GRATITUDE";
  v59[0] = &off_10036ABD0;
  v59[1] = &off_10036ABE8;
  v58[2] = @"KINDNESS";
  v58[3] = @"PURPOSE";
  v59[2] = &off_10036AC00;
  v59[3] = &off_10036AC18;
  v58[4] = @"RESILIENCE";
  v58[5] = @"CREATIVITY";
  v59[4] = &off_10036AC30;
  v59[5] = &off_10036AC48;
  v8 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:6];
  v35 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v38 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v38)
  {
    v33 = *v41;
    v9 = 5 * seed;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [obj objectForKey:v11];
        unsignedIntValue = [v12 unsignedIntValue];

        v14 = [(MOEvergreenAnnotationManager *)self shuffledIndexesWithSize:unsignedIntValue];
        v15 = objc_opt_new();
        v16 = 0;
        v17 = 5;
        do
        {
          v18 = [v14 objectAtIndex:(v9 % unsignedIntValue + v16) % unsignedIntValue];
          [v15 addObject:v18];

          ++v16;
          --v17;
        }

        while (v17);
        v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136316418;
          v46 = "[MOEvergreenAnnotationManager _performAnnotationWithSeed:startDate:endDate:handler:]";
          v47 = 2112;
          v48 = v11;
          v49 = 2048;
          v50 = unsignedIntValue;
          v51 = 2048;
          v52 = v9 % unsignedIntValue;
          v53 = 2112;
          v54 = v15;
          v55 = 2048;
          seedCopy = seed;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s, Evergreen Context, build a bundle, type, %@, promptCount, %lu, first index, %lu, indexes, %@, seed, %lu", buf, 0x3Eu);
        }

        v20 = [MOResource alloc];
        v21 = [v15 copy];
        v22 = [(MOResource *)v20 initWithEvergreenTypeName:v11 promptIndexes:v21];

        v23 = [MOEventBundle alloc];
        v24 = +[NSUUID UUID];
        v25 = +[NSDate date];
        v26 = [(MOEventBundle *)v23 initWithBundleIdentifier:v24 creationDate:v25];

        [(MOEventBundle *)v26 setInterfaceType:11];
        [(MOEventBundle *)v26 setBundleSuperType:7];
        v27 = [(MOResource *)v22 evergreenType]- 1;
        if (v27 <= 5)
        {
          [(MOEventBundle *)v26 setBundleSubType:qword_100323268[v27]];
        }

        v44 = v22;
        v28 = [NSArray arrayWithObjects:&v44 count:1];
        [(MOEventBundle *)v26 setResources:v28];

        [(MOEventBundle *)v26 setPromptLanguage:v11];
        [(MOEventBundle *)v26 setStartDate:dateCopy];
        [(MOEventBundle *)v26 setEndDate:endDateCopy];
        v29 = [endDateCopy dateByAddingTimeInterval:*&kMOEvergreenExpirationInterval];
        [(MOEventBundle *)v26 setExpirationDate:v29];

        [v35 addObject:v26];
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v38);
  }

  v30 = [v35 copy];
  handlerCopy[2](handlerCopy, v30, 0);
}

- (id)shuffledIndexesWithSize:(unint64_t)size
{
  if (size)
  {
    v4 = objc_opt_new();
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithUnsignedInt:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (size != v5);
    v7 = size - 1;
    if (size != 1)
    {
      v8 = 0;
      v9 = size - 1;
      do
      {
        [v4 exchangeObjectAtIndex:v8 withObjectAtIndex:v8 + 1 + arc4random_uniform(v9--)];
        ++v8;
      }

      while (v7 != v8);
    }

    v10 = [v4 copy];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

+ (void)replacePromptIndicesOfEvergreen:(id)evergreen isTah:(BOOL)tah
{
  tahCopy = tah;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = evergreen;
  v32 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v32)
  {
    v31 = *v35;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * i);
        resources = [v5 resources];
        v7 = [resources objectAtIndexedSubscript:0];

        evergreenType = [v7 evergreenType];
        if (evergreenType == 5)
        {
          if (tahCopy)
          {
            v40[0] = &off_10036AC30;
            v40[1] = &off_10036ACC0;
            v14 = v40;
          }

          else
          {
            v39[0] = &off_10036ACD8;
            v39[1] = &off_10036AC00;
            v14 = v39;
          }

          promptIndexes = [v7 promptIndexes];
          v9 = [promptIndexes objectAtIndexedSubscript:2];
          v14[2] = v9;
          promptIndexes2 = [v7 promptIndexes];
          v11 = [promptIndexes2 objectAtIndexedSubscript:3];
          v14[3] = v11;
          promptIndexes3 = [v7 promptIndexes];
          v22 = [promptIndexes3 objectAtIndexedSubscript:4];
          v14[4] = v22;
          v19 = [NSArray arrayWithObjects:v14 count:5];

          v20 = 708;
        }

        else if (evergreenType == 4)
        {
          if (tahCopy)
          {
            v42 = &off_10036AC18;
            v13 = &v42;
          }

          else
          {
            v41 = &off_10036AC48;
            v13 = &v41;
          }

          promptIndexes = [v7 promptIndexes];
          v28 = [promptIndexes objectAtIndexedSubscript:1];
          v13[1] = v28;
          promptIndexes2 = [v7 promptIndexes];
          v11 = [promptIndexes2 objectAtIndexedSubscript:2];
          v13[2] = v11;
          promptIndexes4 = [v7 promptIndexes];
          v16 = [promptIndexes4 objectAtIndexedSubscript:3];
          v13[3] = v16;
          promptIndexes5 = [v7 promptIndexes];
          v18 = [promptIndexes5 objectAtIndexedSubscript:4];
          v13[4] = v18;
          v19 = [NSArray arrayWithObjects:v13 count:5];

          v9 = v28;
          v20 = 709;
        }

        else
        {
          if (evergreenType != 2)
          {
            goto LABEL_22;
          }

          if (tahCopy)
          {
            v44[0] = &off_10036ABE8;
            v44[1] = &off_10036ABD0;
            v44[2] = &off_10036AC60;
            promptIndexes = [v7 promptIndexes];
            v9 = [promptIndexes objectAtIndexedSubscript:3];
            v44[3] = v9;
            promptIndexes2 = [v7 promptIndexes];
            v11 = [promptIndexes2 objectAtIndexedSubscript:4];
            v44[4] = v11;
            v12 = v44;
          }

          else
          {
            v43[0] = &off_10036AC78;
            v43[1] = &off_10036AC90;
            v43[2] = &off_10036ACA8;
            promptIndexes = [v7 promptIndexes];
            v9 = [promptIndexes objectAtIndexedSubscript:3];
            v43[3] = v9;
            promptIndexes2 = [v7 promptIndexes];
            v11 = [promptIndexes2 objectAtIndexedSubscript:4];
            v43[4] = v11;
            v12 = v43;
          }

          v19 = [NSArray arrayWithObjects:v12 count:5];
          v20 = 707;
        }

        v23 = [MOResource alloc];
        promptLanguage = [v5 promptLanguage];
        v25 = [v19 copy];
        v26 = [(MOResource *)v23 initWithEvergreenTypeName:promptLanguage promptIndexes:v25];

        [v5 setBundleSubType:v20];
        v7 = v26;
LABEL_22:
        v38 = v7;
        v27 = [NSArray arrayWithObjects:&v38 count:1];
        [v5 setResources:v27];
      }

      v32 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v32);
  }
}

+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_10033D228[type - 1];
  }

  return v4;
}

+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)string
{
  stringCopy = string;
  if ([@"WISDOM" isEqualToString:stringCopy])
  {
    v4 = 1;
  }

  else if ([@"PURPOSE" isEqualToString:stringCopy])
  {
    v4 = 4;
  }

  else if ([@"KINDNESS" isEqualToString:stringCopy])
  {
    v4 = 3;
  }

  else if ([@"GRATITUDE" isEqualToString:stringCopy])
  {
    v4 = 2;
  }

  else if ([@"CREATIVITY" isEqualToString:stringCopy])
  {
    v4 = 6;
  }

  else if ([@"RESILIENCE" isEqualToString:stringCopy])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end