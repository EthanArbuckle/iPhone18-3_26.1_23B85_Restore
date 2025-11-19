@interface MOPersonalizedReflectionPromptManager
+ (void)initializeStringArrays;
- (MOMomentsIntelligenceServiceManager)intelligenceServiceManager;
- (MOPersonalizedReflectionPromptManager)initWithUniverse:(id)a3;
- (id)_convertResultStringToDict:(id)a3;
- (id)_createReflectionBundleWithStrings:(id)a3;
- (id)_dayOfWeekString:(unint64_t)a3;
- (id)_generateEventDescriptionfromBundle:(id)a3;
- (id)_generateSystemPrompt;
- (id)_getActivityStringFromBundle:(id)a3;
- (id)_getPersonStringFromBundle:(id)a3;
- (id)_getPlaceStringFromBundle:(id)a3;
- (id)_selectOneRandomStringFromArray:(id)a3;
- (void)_generateReflectionBundlesForType:(id)a3 WithBundles:(id)a4 handler:(id)a5;
- (void)_generateReflectionBundlesWithBundles:(id)a3 handler:(id)a4;
- (void)_generateReflectionBundlesWithSystemPrompt:(id)a3 UserInput:(id)a4 handler:(id)a5;
- (void)generateReflectionBundlesWithBundles:(id)a3 handler:(id)a4;
@end

@implementation MOPersonalizedReflectionPromptManager

- (MOPersonalizedReflectionPromptManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MOPersonalizedReflectionPromptManager;
  v6 = [(MOPersonalizedReflectionPromptManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MOPersonalizedReflectionPromptManager", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v7->_gmsAvailabilityStatus = +[MOPlatformInfo generativeModelsAvailabilityStatus];
    +[MOPersonalizedReflectionPromptManager initializeStringArrays];
  }

  return v7;
}

- (MOMomentsIntelligenceServiceManager)intelligenceServiceManager
{
  intelligenceServiceManager = self->_intelligenceServiceManager;
  if (!intelligenceServiceManager)
  {
    v4 = +[MOMomentsIntelligenceServiceManager sharedInstance];
    v5 = self->_intelligenceServiceManager;
    self->_intelligenceServiceManager = v4;

    intelligenceServiceManager = self->_intelligenceServiceManager;
  }

  return intelligenceServiceManager;
}

+ (void)initializeStringArrays
{
  if (initializeStringArrays_onceToken != -1)
  {
    +[MOPersonalizedReflectionPromptManager initializeStringArrays];
  }
}

void __63__MOPersonalizedReflectionPromptManager_initializeStringArrays__block_invoke(id a1)
{
  v1 = lengthDict;
  lengthDict = &off_10036EB08;

  v2 = topicStrings;
  topicStrings = &off_10036DB90;

  v3 = specStrings;
  specStrings = &off_10036DBA8;

  v4 = timeStrings;
  timeStrings = &off_10036DBC0;
}

- (void)generateReflectionBundlesWithBundles:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOPersonalizedReflectionPromptManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __86__MOPersonalizedReflectionPromptManager_generateReflectionBundlesWithBundles_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_generateReflectionBundlesWithBundles:(id)a3 handler:(id)a4
{
  v26 = a3;
  v21 = a4;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v26 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "generateReflectionBundlesWithBundles, input bundles count,  %lu", &buf, 0xCu);
  }

  if (![v26 count])
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MOPersonalizedReflectionPromptManager _generateReflectionBundlesWithBundles:v20 handler:?];
    }

    goto LABEL_21;
  }

  if ([(MOPersonalizedReflectionPromptManager *)self gmsAvailabilityStatus]!= 1)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "LLM not available so do not generate personalized reflection prompts", &buf, 2u);
    }

LABEL_21:

    (*(v21 + 2))(v21, 0, 0);
    goto LABEL_22;
  }

  v6 = [NSSet setWithObjects:@"outing", @"activity", @"contact", 0];
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_create("com.apple.personalizedReflection.bundleCreation", v8);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__22;
  v43 = __Block_byref_object_dispose__22;
  v44 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [NSPredicate predicateWithFormat:@"bundleSuperType == %luu", [MOEventBundle getSuperTypeEnum:v11]];
        v13 = [v26 filteredArrayUsingPredicate:v12];
        v14 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
        v38 = v14;
        v15 = [NSArray arrayWithObjects:&v38 count:1];
        v16 = [v13 sortedArrayUsingDescriptors:v15];

        v17 = objc_opt_new();
        if ([v16 count] < 0xB)
        {
          [v17 addObjectsFromArray:v16];
        }

        else
        {
          v18 = [v16 subarrayWithRange:{0, 9}];
          [v17 addObjectsFromArray:v18];
        }

        dispatch_group_enter(v7);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke;
        v30[3] = &unk_100336CC0;
        v31 = v24;
        p_buf = &buf;
        v32 = v7;
        [(MOPersonalizedReflectionPromptManager *)self _generateReflectionBundlesForType:v11 WithBundles:v17 handler:v30];
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v19 = [(MOPersonalizedReflectionPromptManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke_3;
  block[3] = &unk_10033AF18;
  v29 = &buf;
  v28 = v21;
  dispatch_group_notify(v7, v19, block);

  _Block_object_dispose(&buf, 8);
LABEL_22:
}

void __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke_2;
  v7[3] = &unk_10033AEF0;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, v7);
  dispatch_group_leave(*(a1 + 40));
}

id __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v4 addObjectsFromArray:v3];
  }

  return result;
}

uint64_t __87__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithBundles_handler___block_invoke_3(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "generateReflectionBundlesWithBundles, output bundles count,  %lu", &v6, 0xCu);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  return (*(*(a1 + 32) + 16))();
}

- (void)_generateReflectionBundlesForType:(id)a3 WithBundles:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 count])
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "generateReflectionBundlesForType, no bundle for type %@.", buf, 0xCu);
    }
  }

  v12 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(MOPersonalizedReflectionPromptManager *)self _generateEventDescriptionfromBundle:*(*(&v27 + 1) + 8 * v17)];
        if (v18)
        {
          [v12 addObject:v18];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [(MOPersonalizedReflectionPromptManager *)self _generateSystemPrompt];
  v20 = [v12 componentsJoinedByString:@"\n"];
  v21 = [(MOPersonalizedReflectionPromptManager *)self _generateUserInputWithEventsDescription:v20];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __95__MOPersonalizedReflectionPromptManager__generateReflectionBundlesForType_WithBundles_handler___block_invoke;
  v24[3] = &unk_100337850;
  v25 = v8;
  v26 = v10;
  v22 = v8;
  v23 = v10;
  [(MOPersonalizedReflectionPromptManager *)self _generateReflectionBundlesWithSystemPrompt:v19 UserInput:v21 handler:v24];
}

void __95__MOPersonalizedReflectionPromptManager__generateReflectionBundlesForType_WithBundles_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = *(a1 + 32);
          if (v13 == @"outing")
          {
            [*(*(&v14 + 1) + 8 * i) setBundleSubType:1101];
            v13 = *(a1 + 32);
          }

          if (v13 == @"activity")
          {
            [v12 setBundleSubType:1103];
            v13 = *(a1 + 32);
          }

          if (v13 == @"contact")
          {
            [v12 setBundleSubType:1102];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (void)_generateReflectionBundlesWithSystemPrompt:(id)a3 UserInput:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MOPersonalizedReflectionPromptManager *)self intelligenceServiceManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __102__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithSystemPrompt_UserInput_handler___block_invoke;
  v13[3] = &unk_10033AF40;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 generatePersonalizedReflectionPromptsWithSystemPrompt:v10 Input:v9 WithReply:v13];
}

void __102__MOPersonalizedReflectionPromptManager__generateReflectionBundlesWithSystemPrompt_UserInput_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "generateReflectionBundlesWithSystemPrompt, result,  %@ with error, %@", buf, 0x16u);
  }

  if (!v5 || v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) _convertResultStringToDict:v5];
    v9 = v8;
    if (v8 && ([v8 objectForKey:@"prompts"], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v9 objectForKey:@"prompts"];
      v12 = [*(a1 + 32) _createReflectionBundleWithStrings:v11];
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "generateReflectionBundlesWithSystemPrompt, reflection bundle,  %@", buf, 0xCu);
      }

      v14 = *(a1 + 40);
      v21 = v12;
      v15 = [NSArray arrayWithObjects:&v21 count:1];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "generateReflectionBundlesWithSystemPrompt, result dictionary value does not match the expected format: %@", buf, 0xCu);
      }

      v17 = [NSError alloc];
      v19 = NSLocalizedDescriptionKey;
      v20 = @"incorrect format of LLM output.";
      v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v11 = [v17 initWithDomain:@"MOPersonalizedReflectionPromptManager" code:0 userInfo:v18];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (id)_generateEventDescriptionfromBundle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"MM/dd/yyyy"];
  v6 = [v4 startDate];
  v26 = v5;
  v7 = [v5 stringFromDate:v6];

  v8 = +[NSCalendar currentCalendar];
  v9 = [v4 localStartDate];
  v10 = [v8 component:512 fromDate:v9];

  v11 = [(MOPersonalizedReflectionPromptManager *)self _dayOfWeekString:v10];
  v12 = [v4 localStartDate];
  v24 = v8;
  v13 = [v8 components:96 fromDate:v12];

  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.1f", [v13 minute] / 60.0 + objc_msgSend(v13, "hour"));
  v15 = [(MOPersonalizedReflectionPromptManager *)self _getActivityStringFromBundle:v4];
  [v4 duration];
  v17 = [NSString stringWithFormat:@"%.1f", v16 / 3600.0];
  v25 = v7;
  v18 = [NSString stringWithFormat:@"On %@, a %@, at hour %@, I engaged in a %@ for %@ hours.", v7, v11, v14, v15, v17];
  v19 = [v18 mutableCopy];

  v20 = [(MOPersonalizedReflectionPromptManager *)self _getPlaceStringFromBundle:v4];
  v21 = [(MOPersonalizedReflectionPromptManager *)self _getPersonStringFromBundle:v4];
  if (v20)
  {
    [v19 appendString:v20];
  }

  if (v21)
  {
    [v19 appendString:v21];
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = v19;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "generateEventDescriptionfromBundle, description, %@, for bundle, %@", buf, 0x16u);
  }

  return v19;
}

- (id)_generateSystemPrompt
{
  v3 = [lengthDict allKeys];
  v4 = [(MOPersonalizedReflectionPromptManager *)self _selectOneRandomStringFromArray:v3];

  v5 = [(MOPersonalizedReflectionPromptManager *)self _selectOneRandomStringFromArray:topicStrings];
  v6 = [(MOPersonalizedReflectionPromptManager *)self _selectOneRandomStringFromArray:specStrings];
  v7 = [(MOPersonalizedReflectionPromptManager *)self _selectOneRandomStringFromArray:timeStrings];
  v8 = [lengthDict objectForKey:v4];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v8 objectAtIndexedSubscript:1];
  v11 = [NSString stringWithFormat:@"You are a friendly Coach. Based on the following summary of my past events, generate 3 journaling reflection questions to inspire thought about %@. Each prompt should be %@, use the pronoun 'you', and try to capture %@ of my most recent events. Don't be too assumptive (do not assume my thoughts, hobbies, interests, or intents), and encourage me to %@. Please only return a json in the form of: {summary: <summary>, prompts: [%@, ...]}. ", v5, v9, v6, v7, v10];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "generateSystemPrompt, system prompt, %@", buf, 0xCu);
  }

  return v11;
}

- (id)_selectOneRandomStringFromArray:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))}];

  return v4;
}

- (id)_getActivityStringFromBundle:(id)a3
{
  v3 = a3;
  if ([v3 bundleSuperType] == 1)
  {
    v4 = @"outing";
  }

  else if ([v3 bundleSuperType] == 2 || objc_msgSend(v3, "bundleSuperType") == 3)
  {
    v5 = [v3 getSuperTypeString];
    v6 = [v5 stringByAppendingString:@"/"];

    v7 = [v3 action];
    v8 = [v7 actionName];
    v4 = [v6 stringByAppendingString:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getPlaceStringFromBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 place];
  v5 = [v4 placeName];

  if (!v5)
  {
    v22 = 0;
    goto LABEL_9;
  }

  v6 = [v3 place];
  v7 = [v6 placeName];

  v8 = [v3 place];
  [v8 distanceToHomeInMiles];
  v10 = v9;

  v11 = [NSString stringWithFormat:@"%.1f", v10];
  v12 = [v3 place];
  v13 = [v12 poiCategory];
  if (!v13)
  {

    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v3 place];
  v16 = [v15 poiCategory];
  v17 = [v16 isEqualToString:@"RTMapItemPOICategoryUndefined"];

  if (v17)
  {
LABEL_7:
    v22 = [NSString stringWithFormat:@"I did this at %@, approximately %@ miles from my house.", v7, v11];
    goto LABEL_8;
  }

  v18 = [v3 place];
  v19 = [v18 poiCategory];
  v20 = [v19 stringByReplacingOccurrencesOfString:@"GEOPOICategory" withString:&stru_1003416B0];

  v21 = [NSString stringWithFormat:@"which I think is a %@", v20];
  v22 = [NSString stringWithFormat:@"I did this at %@ %@, approximately %@ miles from my house.", v7, v21, v11];

LABEL_8:
LABEL_9:

  return v22;
}

- (id)_getPersonStringFromBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 persons];
  v6 = [v5 count];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v3 persons];
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

          v12 = [*(*(&v16 + 1) + 8 * i) name];
          [v4 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  if ([v4 count])
  {
    v13 = [v4 componentsJoinedByString:{@", "}];
    v14 = [NSString stringWithFormat:@"I did this with %@", v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_dayOfWeekString:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return @"undefined";
  }

  else
  {
    return off_10033AF60[a3 - 1];
  }
}

- (id)_convertResultStringToDict:(id)a3
{
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "result string, %@", buf, 0xCu);
  }

  v5 = [v3 rangeOfString:@"{" options:2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v3 substringFromIndex:&v5[v6 - 1]];

    v3 = v7;
  }

  v8 = [v3 rangeOfString:@"}" options:4];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v3 substringToIndex:v8 + 1];

    v3 = v9;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "input string for converting to dictionary, %@", buf, 0xCu);
  }

  v11 = [v3 dataUsingEncoding:4];
  v17 = 0;
  v12 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v17];
  v13 = v17;
  if (v13 || !v12)
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedReflection);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MOPersonalizedReflectionPromptManager *)v13 _convertResultStringToDict:v15];
    }

    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  return v14;
}

- (id)_createReflectionBundleWithStrings:(id)a3
{
  v3 = a3;
  v4 = [MOEventBundle alloc];
  v5 = +[NSUUID UUID];
  v6 = +[NSDate date];
  v7 = [(MOEventBundle *)v4 initWithBundleIdentifier:v5 creationDate:v6];

  [(MOEventBundle *)v7 setInterfaceType:11];
  [(MOEventBundle *)v7 setBundleSuperType:11];
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MOResource alloc];
        v16 = [(MOResource *)v15 initWithName:v14 value:0.0, v18];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(MOEventBundle *)v7 setResources:v8];

  return v7;
}

- (void)_convertResultStringToDict:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error when serialization to dictionary, %@", &v2, 0xCu);
}

@end