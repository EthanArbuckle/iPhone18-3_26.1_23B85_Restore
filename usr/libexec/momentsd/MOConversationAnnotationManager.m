@interface MOConversationAnnotationManager
- (BOOL)_callLikeInteraction:(id)a3;
- (BOOL)_messageInteraction:(id)a3;
- (MOConversationAnnotationManager)initWithUniverse:(id)a3;
- (id)_actionForBundle:(id)a3 type:(unint64_t)a4;
- (id)_annotateEvents:(id)a3 significantContact:(id)a4 type:(unint64_t)a5;
- (id)_findEventsWithBurstyInteractionsFromEvents:(id)a3;
- (id)_findEventsWithLongDailyCall:(id)a3;
- (id)_findEventsWithOutgoingMessageBurstFromEvents:(id)a3;
- (id)_findEventsWithPatternEvents:(id)a3;
- (id)_getBaseEvents:(id)a3;
- (id)_getContextEvents:(id)a3;
- (id)_getWorkVisitEventsDuringCall:(id)a3 withCall:(id)a4;
- (unint64_t)_outgoingMessageBurstCount:(id)a3 bundleIdPrefix:(id)a4;
- (void)_buildMappingFromBaseEvents:(id)a3 toContextEvents:(id)a4;
- (void)_buildMappingFromBaseEvents:(id)a3 toPatternEvents:(id)a4;
- (void)_calculateEventStats:(id)a3;
- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
@end

@implementation MOConversationAnnotationManager

- (MOConversationAnnotationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MOConversationAnnotationManager;
  v5 = [(MOAnnotationManager *)&v25 initWithUniverse:v4];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MOConversationAnnotationManager", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v4 getService:v10];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v11;

    v13 = [[NSSet alloc] initWithObjects:{&off_10036BCE0, &off_10036BCF8, &off_10036BD10, &off_10036BD28, &off_10036BD40, &off_10036BD58, &off_10036BD70, &off_10036BD88, 0}];
    callLikeInteractionMechanisms = v5->_callLikeInteractionMechanisms;
    v5->_callLikeInteractionMechanisms = v13;

    v15 = [[NSSet alloc] initWithObjects:{&off_10036BDA0, &off_10036BDB8, &off_10036BDD0, 0}];
    messageInteractionMechanisms = v5->_messageInteractionMechanisms;
    v5->_messageInteractionMechanisms = v15;

    v17 = objc_opt_new();
    stats = v5->_stats;
    v5->_stats = v17;

    v19 = objc_opt_new();
    eventToPatternEventMap = v5->_eventToPatternEventMap;
    v5->_eventToPatternEventMap = v19;

    v21 = objc_opt_new();
    eventToContextEventMap = v5->_eventToContextEventMap;
    v5->_eventToContextEventMap = v21;

    v23 = v5;
  }

  return v5;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOConversationAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __89__MOConversationAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
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
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOConversationAnnotationManager *)self _getBaseEvents:v8];
  if ([v11 count])
  {
    v59 = v10;
    if (![v9 count])
    {

      v9 = 0;
    }

    [(MOConversationAnnotationManager *)self _calculateEventStats:v11];
    v60 = v9;
    [(MOConversationAnnotationManager *)self _buildMappingFromBaseEvents:v11 toPatternEvents:v9];
    v61 = v8;
    v57 = [(MOConversationAnnotationManager *)self _getContextEvents:v8];
    [(MOConversationAnnotationManager *)self _buildMappingFromBaseEvents:v11 toContextEvents:?];
    v12 = [(MOConversationAnnotationManager *)self _findEventsWithPatternEvents:v11];
    v13 = [(MOConversationAnnotationManager *)self _findEventsWithBurstyInteractionsFromEvents:v11];
    v53 = [(MOConversationAnnotationManager *)self _findEventsWithLongDailyCall:v11];
    v58 = v11;
    v55 = [(MOConversationAnnotationManager *)self _findEventsWithOutgoingMessageBurstFromEvents:v11];
    v63 = objc_opt_new();
    v14 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v12;
    v15 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v77;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v77 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v76 + 1) + 8 * i);
          if (([v14 containsObject:v20] & 1) == 0)
          {
            [v14 addObject:v20];
            v90 = v20;
            v21 = [NSArray arrayWithObjects:&v90 count:1];
            v22 = [v20 interactionScoredContact];
            v23 = [(MOConversationAnnotationManager *)self _annotateEvents:v21 significantContact:v22 type:6];

            if (v23)
            {
              [v63 addObject:v23];
              v17 = v23;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v72 objects:v89 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v73;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v73 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v72 + 1) + 8 * j);
          if (([v14 containsObject:v29] & 1) == 0)
          {
            [v14 addObject:v29];
            v88 = v29;
            v30 = [NSArray arrayWithObjects:&v88 count:1];
            v31 = [v29 interactionScoredContact];
            v32 = [(MOConversationAnnotationManager *)self _annotateEvents:v30 significantContact:v31 type:5];

            if (v32)
            {
              [v63 addObject:v32];
              v17 = v32;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v72 objects:v89 count:16];
      }

      while (v26);
    }

    v56 = v24;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v33 = v53;
    v34 = [v33 countByEnumeratingWithState:&v68 objects:v87 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v69;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v69 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v68 + 1) + 8 * k);
          if (([v14 containsObject:v38] & 1) == 0)
          {
            [v14 addObject:v38];
            v86 = v38;
            v39 = [NSArray arrayWithObjects:&v86 count:1];
            v40 = [v38 interactionScoredContact];
            v41 = [(MOConversationAnnotationManager *)self _annotateEvents:v39 significantContact:v40 type:4];

            if (v41)
            {
              [v63 addObject:v41];
              v17 = v41;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v68 objects:v87 count:16];
      }

      while (v35);
    }

    v54 = v33;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v42 = v55;
    v43 = [v42 countByEnumeratingWithState:&v64 objects:v85 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v65;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v65 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v64 + 1) + 8 * m);
          if (([v14 containsObject:{v47, v54}] & 1) == 0)
          {
            [v14 addObject:v47];
            v84 = v47;
            v48 = [NSArray arrayWithObjects:&v84 count:1];
            v49 = [v47 interactionScoredContact];
            v50 = [(MOConversationAnnotationManager *)self _annotateEvents:v48 significantContact:v49 type:7];

            if (v50)
            {
              [v63 addObject:v50];
              v17 = v50;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v64 objects:v85 count:16];
      }

      while (v44);
    }

    v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = [v63 count];
      *buf = 136315394;
      v81 = "[MOConversationAnnotationManager _performAnnotationWithEvents:withPatternEvents:handler:]";
      v82 = 2048;
      v83 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s, annotated bundle count, %lu", buf, 0x16u);
    }

    v10 = v59;
    (*(v59 + 2))(v59, v63, 0);

    v9 = v60;
    v8 = v61;
    v11 = v58;
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (id)_getBaseEvents:(id)a3
{
  v3 = a3;
  v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 10];
  v17 = v3;
  v4 = [v3 filteredArrayUsingPredicate:?];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v23 = "[MOConversationAnnotationManager _getBaseEvents:]";
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s, filtered event, %@", buf, 0x16u);
        }

        v11 = [v9 interactions];
        [v11 enumerateObjectsUsingBlock:&__block_literal_global_50];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v17 count];
    v14 = [v4 count];
    *buf = 136315650;
    v23 = "[MOConversationAnnotationManager _getBaseEvents:]";
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s, event count, %lu, filtered events count, %lu", buf, 0x20u);
  }

  return v4;
}

void __50__MOConversationAnnotationManager__getBaseEvents___block_invoke(id a1, MOInteraction *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__MOConversationAnnotationManager__getBaseEvents___block_invoke_cold_1(v5, a3, v6);
  }
}

- (id)_getContextEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@", @"category", &off_10036E1C0];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)_getWorkVisitEventsDuringCall:(id)a3 withCall:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"%K = %lu", @"placeUserType", 2];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = [v5 endDate];
  v10 = [NSPredicate predicateWithFormat:@"%K <= %@", @"startDate", v9];
  v18[0] = v10;
  v11 = [v5 startDate];

  v12 = [NSPredicate predicateWithFormat:@"%K => %@", @"endDate", v11];
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];

  v15 = [v8 filteredArrayUsingPredicate:v14];
  v16 = [v15 mutableCopy];

  return v16;
}

- (BOOL)_callLikeInteraction:(id)a3
{
  callLikeInteractionMechanisms = self->_callLikeInteractionMechanisms;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 mechanism]);
  LOBYTE(callLikeInteractionMechanisms) = [(NSSet *)callLikeInteractionMechanisms containsObject:v4];

  return callLikeInteractionMechanisms;
}

- (BOOL)_messageInteraction:(id)a3
{
  messageInteractionMechanisms = self->_messageInteractionMechanisms;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 mechanism]);
  LOBYTE(messageInteractionMechanisms) = [(NSSet *)messageInteractionMechanisms containsObject:v4];

  return messageInteractionMechanisms;
}

- (id)_findEventsWithBurstyInteractionsFromEvents:(id)a3
{
  v4 = a3;
  v5 = [(MOConversationAnnotationManager *)self configurationManager];
  v6 = [v5 getIntegerSettingForKey:@"kMOConversationAnnotationManagerMinimumInteractionCount" withFallback:10];

  v22 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = v6;
    v11 = *v25;
    *&v8 = 136315650;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        stats = self->_stats;
        v15 = [v13 eventIdentifier];
        v16 = [(NSMutableDictionary *)stats objectForKeyedSubscript:v15];
        v17 = [v16 objectForKey:@"maxBurstLength"];
        v18 = [v17 unsignedIntValue];

        if (v18 >= v10)
        {
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v29 = "[MOConversationAnnotationManager _findEventsWithBurstyInteractionsFromEvents:]";
            v30 = 2112;
            v31 = v13;
            v32 = 2048;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s, found event, %@, maxBurstLength, %lu", buf, 0x20u);
          }

          [v22 addObject:v13];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v9);
  }

  return v22;
}

- (id)_findEventsWithOutgoingMessageBurstFromEvents:(id)a3
{
  v4 = a3;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 136315650;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        stats = self->_stats;
        v12 = [v10 eventIdentifier];
        v13 = [(NSMutableDictionary *)stats objectForKeyedSubscript:v12];
        v14 = [v13 objectForKey:@"outgoingMessageBurstCount"];
        v15 = [v14 unsignedIntValue];

        if (v15)
        {
          v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v26 = "[MOConversationAnnotationManager _findEventsWithOutgoingMessageBurstFromEvents:]";
            v27 = 2112;
            v28 = v10;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s, found event, %@, outgoingMessageBurstCount, %lu", buf, 0x20u);
          }

          [v20 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }

  return v20;
}

- (id)_findEventsWithLongDailyCall:(id)a3
{
  v4 = a3;
  v5 = [(MOConversationAnnotationManager *)self configurationManager];
  [v5 getDoubleSettingForKey:@"kMOConversationAnnotationManagerMinimumDurationDailyCall" withFallback:300.0];
  v7 = v6;

  v26 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 136315650;
    v25 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        stats = self->_stats;
        v15 = [v13 eventIdentifier];
        v16 = [(NSMutableDictionary *)stats objectForKey:v15];
        v17 = [v16 objectForKey:@"aggregatedCallDuration"];
        [v17 doubleValue];
        v19 = v18;

        if (v19 > v7)
        {
          v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            v34 = "[MOConversationAnnotationManager _findEventsWithLongDailyCall:]";
            v35 = 2112;
            v36 = v13;
            v37 = 2048;
            v38 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s, found event, %@, daily call duration, %.1f", buf, 0x20u);
          }

          [v26 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v10);
  }

  v21 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:0];
  v32 = v21;
  v22 = [NSArray arrayWithObjects:&v32 count:1];
  v23 = [v26 sortedArrayUsingDescriptors:v22];

  return v23;
}

- (id)_findEventsWithPatternEvents:(id)a3
{
  v4 = a3;
  v5 = [(MOConversationAnnotationManager *)self configurationManager];
  v6 = [v5 getIntegerSettingForKey:@"kMOConversationAnnotationManagerMinimumPatternEventCount" withFallback:2];

  v23 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = v6;
    v11 = *v28;
    *&v8 = 136315650;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        eventToPatternEventMap = self->_eventToPatternEventMap;
        v15 = [v13 eventIdentifier];
        v16 = [(NSMutableDictionary *)eventToPatternEventMap objectForKey:v15];

        if ([v16 count] >= v10)
        {
          v17 = objc_opt_new();
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = __64__MOConversationAnnotationManager__findEventsWithPatternEvents___block_invoke;
          v25[3] = &unk_10033EC38;
          v18 = v17;
          v26 = v18;
          [v16 enumerateObjectsUsingBlock:v25];
          if (v10 == 1)
          {
            goto LABEL_14;
          }

          if ([v18 containsObject:&off_10036BE00] && ((objc_msgSend(v18, "containsObject:", &off_10036BE18) & 1) != 0 || objc_msgSend(v18, "containsObject:", &off_10036BE30)))
          {
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v16 count];
              *buf = v22;
              v32 = "[MOConversationAnnotationManager _findEventsWithPatternEvents:]";
              v33 = 2112;
              v34 = v13;
              v35 = 2048;
              v36 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s, found event, %@, pattern event count, %lu", buf, 0x20u);
            }

LABEL_14:
            [v23 addObject:v13];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v9);
  }

  return v23;
}

void __64__MOConversationAnnotationManager__findEventsWithPatternEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 patterns];
  v3 = [v4 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
  [v2 addObject:v3];
}

- (id)_annotateEvents:(id)a3 significantContact:(id)a4 type:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 contact];
  v10 = [v9 localizedFullName];

  if (v10)
  {
    v253 = v8;
    v11 = [MOEventBundle alloc];
    v12 = +[NSUUID UUID];
    v13 = +[NSDate date];
    v14 = [(MOEventBundle *)v11 initWithBundleIdentifier:v12 creationDate:v13];

    v258 = objc_opt_new();
    [(MOEventBundle *)v14 setEvents:v7];
    [(MOEventBundle *)v14 setPropertiesBasedOnEvents];
    [(MOEventBundle *)v14 setInterfaceType:4];
    v255 = a5;
    if (a5 == 7)
    {
      [(MOEventBundle *)v14 setIncludedInSummaryBundleOnly:1];
    }

    v261 = v14;
    v264 = [NSMutableArray arrayWithArray:v7];
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0u;
    v254 = v7;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v301 objects:v323 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v302;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v302 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v301 + 1) + 8 * i);
          eventToPatternEventMap = self->_eventToPatternEventMap;
          v21 = [v19 eventIdentifier];
          v22 = [(NSMutableDictionary *)eventToPatternEventMap objectForKey:v21];

          v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v19 eventIdentifier];
            v36 = [v22 count];
            *buf = 136315650;
            v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
            v307 = 2112;
            v308 = v35;
            v309 = 2048;
            v310 = v36;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s, event identifier, %@, pattern event count, %lu", buf, 0x20u);
          }

          if ([v22 count])
          {
            v24 = [v22 allObjects];
            [v264 addObjectsFromArray:v24];
          }

          eventToContextEventMap = self->_eventToContextEventMap;
          v26 = [v19 eventIdentifier];
          v27 = [(NSMutableDictionary *)eventToContextEventMap objectForKey:v26];

          v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v37 = [v19 eventIdentifier];
            v38 = [v27 count];
            *buf = 136315650;
            v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
            v307 = 2112;
            v308 = v37;
            v309 = 2048;
            v310 = v38;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s, event identifier, %@, context event count, %lu", buf, 0x20u);
          }

          if ([v27 count])
          {
            v29 = [v27 allObjects];
            [v264 addObjectsFromArray:v29];
          }

          v30 = [v19 significantContactEvent];
          v31 = [v30 containsOrganizationContact];

          if (v31)
          {
            [v258 setObject:&off_10036BE18 forKey:@"BusinessContact"];
            v32 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = [v19 eventIdentifier];
              v34 = [(MOEventBundle *)v261 bundleIdentifier];
              *buf = 136315650;
              v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
              v307 = 2112;
              v308 = v33;
              v309 = 2112;
              v310 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s, event with identifier, %@, contains business contact, therefore update metadata for bundle with identifier, %@", buf, 0x20u);
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v301 objects:v323 count:16];
      }

      while (v16);
    }

    [(MOEventBundle *)v261 setEvents:v264];
    v39 = [(MOConversationAnnotationManager *)self _actionForBundle:v261 type:v255];
    [(MOEventBundle *)v261 setAction:v39];

    v40 = [(MOEventBundle *)v261 startDate];
    v41 = [(MOAnnotationManager *)self timeZoneManager];
    v42 = [MOTime timeForDate:v40 timeZoneManager:v41];
    [(MOEventBundle *)v261 setTime:v42];

    v43 = [obj firstObject];
    v44 = [v43 interactionContacts];
    v45 = [NSSortDescriptor sortDescriptorWithKey:@"score" ascending:0];
    v322 = v45;
    v46 = [NSArray arrayWithObjects:&v322 count:1];
    v47 = [v44 sortedArrayUsingDescriptors:v46];

    v256 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v47, "count")}];
    v257 = v47;
    if ([v47 count])
    {
      v48 = 0;
      do
      {
        if (v48)
        {
          if (v48 >= 4)
          {
            v49 = v48 + 296;
          }

          else
          {
            v49 = v48 + 199;
          }
        }

        else
        {
          v49 = 100;
        }

        v50 = [v257 objectAtIndexedSubscript:v48];
        [v50 score];
        v52 = v51;

        v53 = [v257 objectAtIndexedSubscript:v48];
        v54 = [v53 contact];
        v55 = [v54 localizedFullName];

        v56 = [v257 objectAtIndexedSubscript:v48];
        v57 = [v56 contact];
        v58 = [v57 givenName];

        v59 = [v257 objectAtIndexedSubscript:v48];
        v60 = [v59 contact];
        v61 = [v60 identifier];
        v62 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:v61];

        if (v62)
        {
          v63 = [[MOPerson alloc] initWithLocalIdentifier:0 name:v55 contactIdentifier:v62 family:0 priorityScore:v49 significanceScore:v52];
          p_super = &v63->super;
          if (v63)
          {
            if (v58)
            {
              [(MOPerson *)v63 setGivenName:v58];
            }

            v65 = [obj firstObject];
            v66 = [v65 eventIdentifier];
            [p_super setSourceEventIdentifier:v66];

            [p_super setSourceEventAccessType:3];
            v67 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              v68 = [(MOEventBundle *)v261 bundleIdentifier];
              *buf = 136315650;
              v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
              v307 = 2112;
              v308 = p_super;
              v309 = 2112;
              v310 = v68;
              _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "%s, person, %@, bundle identifier, %@", buf, 0x20u);
            }

            [v256 addObject:p_super];
          }
        }

        else
        {
          p_super = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [MOConversationAnnotationManager _annotateEvents:v300 significantContact:p_super type:?];
          }
        }

        ++v48;
      }

      while (v48 < [v257 count]);
    }

    [(MOEventBundle *)v261 setPersons:v256];
    [(MOEventBundle *)v261 setBundleSuperType:3];
    [(MOEventBundle *)v261 setBundleSubType:301];
    v69 = [(MOEventBundle *)v261 persons];
    v70 = [v69 count];

    if (v70 == 1)
    {
      v71 = &__kCFBooleanFalse;
    }

    else
    {
      v71 = &__kCFBooleanTrue;
    }

    [v258 setObject:v71 forKey:@"isGroupConversation"];
    stats = self->_stats;
    v73 = [obj firstObject];
    v74 = [v73 eventIdentifier];
    v75 = [(NSMutableDictionary *)stats objectForKeyedSubscript:v74];
    v76 = [v75 objectForKey:@"callCount"];
    [v76 doubleValue];
    v78 = v77;

    v79 = self->_stats;
    v80 = [obj firstObject];
    v81 = [v80 eventIdentifier];
    v82 = [(NSMutableDictionary *)v79 objectForKeyedSubscript:v81];
    v83 = [v82 objectForKey:@"messageCount"];
    [v83 doubleValue];
    v85 = v84;

    if (v85)
    {
      v86 = v78 == 0;
    }

    else
    {
      v86 = 1;
    }

    if (v86)
    {
      v87 = &__kCFBooleanFalse;
    }

    else
    {
      v87 = &__kCFBooleanTrue;
    }

    [v258 setObject:v87 forKey:@"multipleInteractionTypes"];
    [v258 setObject:&off_10036EA80 forKey:?];
    [v258 setObject:&off_10036EA80 forKey:?];
    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v259 = [(MOEventBundle *)v261 events];
    v263 = [v259 countByEnumeratingWithState:&v295 objects:v321 count:16];
    v88 = 0;
    v89 = 0;
    if (v263)
    {
      v262 = *v296;
      do
      {
        v90 = 0;
        do
        {
          if (*v296 != v262)
          {
            objc_enumerationMutation(v259);
          }

          v266 = v89;
          v265 = v90;
          v91 = *(*(&v295 + 1) + 8 * v90);
          v92 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v112 = [v91 eventIdentifier];
            v113 = [v91 significantContactEvent];
            v114 = [v113 contactClassificationMap];
            v115 = [v114 count];
            *buf = 136315650;
            v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
            v307 = 2112;
            v308 = v112;
            v309 = 2048;
            v310 = v115;
            _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "%s, event identifier, %@, contactClassificationMap size, %lu", buf, 0x20u);
          }

          v293 = 0u;
          v294 = 0u;
          v291 = 0u;
          v292 = 0u;
          v93 = [v91 significantContactEvent];
          v94 = [v93 contactClassificationMap];

          v95 = [v94 countByEnumeratingWithState:&v291 objects:v320 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v292;
            v268 = v91;
            do
            {
              for (j = 0; j != v96; j = j + 1)
              {
                if (*v292 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v291 + 1) + 8 * j);
                v100 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  v276 = [v99 contact];
                  v269 = [v276 identifier];
                  v273 = [v99 contact];
                  v272 = [v273 localizedFullName];
                  v101 = [v272 mask];
                  v270 = [v91 significantContactEvent];
                  v102 = [v270 contactClassificationMap];
                  v103 = [v102 objectForKey:v99];
                  *buf = 136315906;
                  v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
                  v307 = 2112;
                  v308 = v269;
                  v309 = 2112;
                  v310 = v101;
                  v311 = 2112;
                  v312 = v103;
                  _os_log_debug_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, "%s, contactID, %@, name, %@, classification, %@", buf, 0x2Au);

                  v91 = v268;
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v291 objects:v320 count:16];
            }

            while (v96);
          }

          v289 = 0u;
          v290 = 0u;
          v287 = 0u;
          v288 = 0u;
          v104 = [v91 significantContactEvent];
          v105 = [v104 contactClassificationMap];
          v106 = [v105 allValues];

          v107 = [v106 countByEnumeratingWithState:&v287 objects:v319 count:16];
          if (v107)
          {
            v108 = v107;
            v109 = *v288;
            v89 = v266;
            do
            {
              for (k = 0; k != v108; k = k + 1)
              {
                if (*v288 != v109)
                {
                  objc_enumerationMutation(v106);
                }

                v111 = *(*(&v287 + 1) + 8 * k);
                if (([v111 unsignedIntValue] & 8) != 0 || (objc_msgSend(v111, "unsignedIntValue") & 0x100000) != 0)
                {
                  v89 = 1;
                }

                v88 |= ([v111 unsignedIntValue] & 0x200000) >> 21;
              }

              v108 = [v106 countByEnumeratingWithState:&v287 objects:v319 count:16];
            }

            while (v108);
          }

          else
          {
            v89 = v266;
          }

          v90 = v265 + 1;
        }

        while ((v265 + 1) != v263);
        v263 = [v259 countByEnumeratingWithState:&v295 objects:v321 count:16];
      }

      while (v263);
    }

    v116 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      v117 = @"NO";
      if (v89)
      {
        v118 = @"YES";
      }

      else
      {
        v118 = @"NO";
      }

      *buf = 136315650;
      v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
      v307 = 2112;
      if (v88)
      {
        v117 = @"YES";
      }

      v308 = v118;
      v309 = 2112;
      v310 = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "%s, bundleHasFamilyOrFriendContact, %@, bundleHasCoworkerContact, %@", buf, 0x20u);
    }

    v119 = v258;
    v120 = v261;
    v121 = v255;
    if ((v88 | v89))
    {
      if (v88)
      {
        v122 = @"isCoworkerContact";
      }

      else
      {
        v122 = @"isFamilyContact";
      }

      [v258 setObject:&off_10036E770 forKey:v122];
    }

    if ((v255 & 0xFFFFFFFFFFFFFFFDLL) == 4)
    {
      v123 = self->_stats;
      v124 = [obj firstObject];
      v125 = [v124 eventIdentifier];
      v126 = [(NSMutableDictionary *)v123 objectForKeyedSubscript:v125];
      v127 = [v126 objectForKey:@"longestCallDuration"];
      [v127 doubleValue];
      v129 = v128;

      v130 = [NSNumber numberWithDouble:v129];
      [v258 setObject:v130 forKey:@"callDuration"];

      v131 = self->_stats;
      v132 = [obj firstObject];
      v133 = [v132 eventIdentifier];
      v134 = [(NSMutableDictionary *)v131 objectForKeyedSubscript:v133];
      v135 = [v134 objectForKey:@"aggregatedCallDuration"];
      [v135 doubleValue];
      v137 = v136;

      v138 = [NSNumber numberWithDouble:v137];
      [v258 setObject:v138 forKey:@"dailyAggregateCallDuration"];

      v139 = self->_stats;
      v140 = [obj firstObject];
      v141 = [v140 eventIdentifier];
      v142 = [(NSMutableDictionary *)v139 objectForKeyedSubscript:v141];
      v143 = [v142 objectForKey:@"callAtWork"];
      [v143 doubleValue];
      v145 = v144;

      v146 = self->_stats;
      v147 = [obj firstObject];
      v148 = [v147 eventIdentifier];
      v149 = [(NSMutableDictionary *)v146 objectForKeyedSubscript:v148];
      v150 = [v149 objectForKey:@"callCountForDailyAggregate"];
      [v150 doubleValue];
      v152 = v151;

      if (v145 && v145 == v152)
      {
        v153 = &__kCFBooleanTrue;
      }

      else
      {
        v153 = &__kCFBooleanFalse;
      }

      v119 = v258;
      [v258 setObject:v153 forKey:@"contactLocationWork"];
      v120 = v261;
      v121 = v255;
      goto LABEL_105;
    }

    if (v255 == 5)
    {
      v156 = self->_stats;
      v157 = [obj firstObject];
      v158 = [v157 eventIdentifier];
      v159 = [(NSMutableDictionary *)v156 objectForKeyedSubscript:v158];
      v160 = [v159 objectForKey:@"maxBurstLength"];
      [v160 doubleValue];
      v162 = v161;

      v121 = 5;
      v120 = v261;

      v119 = v258;
      v163 = [NSNumber numberWithUnsignedInteger:v162];
      v164 = kMOEventBundleMetaDataForRankKeywordBurstyInteractionCount;
    }

    else
    {
      if (v255 != 7)
      {
LABEL_105:
        v172 = [(MOEventBundle *)v120 metaDataForRank];

        if (v172)
        {
          v173 = [(MOEventBundle *)v120 metaDataForRank];
          [v119 addEntriesFromDictionary:v173];
        }

        v174 = [NSNumber numberWithUnsignedInteger:v121];
        [v119 setObject:v174 forKey:@"SigConType"];

        [(MOEventBundle *)v120 setMetaDataForRank:v119];
        v175 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          v176 = [(MOEventBundle *)v120 events];
          v177 = [v176 count];
          *buf = 136315906;
          v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
          v307 = 2112;
          v308 = v120;
          v309 = 2048;
          v310 = v121;
          v311 = 2048;
          v312 = v177;
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "%s, bundle, %@, type, %lu, event count, %lu", buf, 0x2Au);
        }

        v285 = 0u;
        v286 = 0u;
        v283 = 0u;
        v284 = 0u;
        v178 = [(MOEventBundle *)v120 metaDataForRank];
        v179 = [v178 countByEnumeratingWithState:&v283 objects:v318 count:16];
        if (v179)
        {
          v180 = v179;
          v181 = *v284;
          v271 = v178;
          do
          {
            for (m = 0; m != v180; m = m + 1)
            {
              if (*v284 != v181)
              {
                objc_enumerationMutation(v178);
              }

              v183 = *(*(&v283 + 1) + 8 * m);
              v184 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
              {
                v185 = [(MOEventBundle *)v261 bundleIdentifier];
                v277 = [(MOEventBundle *)v261 events];
                v274 = [v277 firstObject];
                v186 = [v274 eventIdentifier];
                v187 = [(MOEventBundle *)v261 metaDataForRank];
                v188 = [v187 objectForKey:v183];
                *buf = 136316162;
                v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
                v307 = 2112;
                v308 = v185;
                v309 = 2112;
                v310 = v186;
                v311 = 2112;
                v312 = v183;
                v313 = 2112;
                v314 = v188;
                _os_log_debug_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEBUG, "%s, bundleID, %@, eventID, %@, metaDataForRank key, %@, metaDataForRank value, %@", buf, 0x34u);

                v178 = v271;
              }
            }

            v180 = [v178 countByEnumeratingWithState:&v283 objects:v318 count:16];
          }

          while (v180);
        }

        [(MOEventBundle *)v261 setIsAggregatedAndSuppressed:1];
        v189 = [(MOConversationAnnotationManager *)self configurationManager];
        v190 = [v189 getIntegerSettingForKey:@"kMOConversationAnnotationManagerBundlingFilterNumPatternEvents" withFallback:0];

        v191 = [(MOConversationAnnotationManager *)self configurationManager];
        [v191 getFloatSettingForKey:@"kMOConversationAnnotationManagerBundlingFilterMinContactScoreForCalls" withFallback:0.0];
        v193 = v192;

        v194 = [(MOConversationAnnotationManager *)self configurationManager];
        LODWORD(v195) = 1157840896;
        [v194 getFloatSettingForKey:@"kMOConversationAnnotationManagerBundlingFilterMinimumDurationForCalls" withFallback:v195];
        v197 = v196;

        v198 = [(MOConversationAnnotationManager *)self configurationManager];
        LODWORD(v199) = 1058642330;
        [v198 getFloatSettingForKey:@"kMOConversationAnnotationManagerBundlingFilterMaximumContactScoreForBurstyTexts" withFallback:v199];
        v201 = v200;

        v202 = [(MOConversationAnnotationManager *)self configurationManager];
        LODWORD(v203) = 10.0;
        [v202 getFloatSettingForKey:@"kMOConversationAnnotationManagerMinimumInteractionCount" withFallback:v203];
        v205 = v204;

        v206 = [(MOConversationAnnotationManager *)self configurationManager];
        LODWORD(v207) = 6.0;
        [v206 getFloatSettingForKey:@"kMOConversationAnnotationManagerBundlingFilterMaximumBaselineValueForFrequencyAnomaly" withFallback:v207];
        v209 = v208;

        v210 = [(MOConversationAnnotationManager *)self configurationManager];
        LODWORD(v211) = *"U0B@";
        [v210 getFloatSettingForKey:@"PD_SCF_TukeyFactorForExponentialDistributionOutlier" withFallback:v211];
        v213 = v212;

        v214 = self->_stats;
        v215 = [obj firstObject];
        v216 = [v215 eventIdentifier];
        v217 = [(NSMutableDictionary *)v214 objectForKeyedSubscript:v216];
        v218 = [v217 objectForKey:@"longestCallDuration"];
        [v218 doubleValue];
        v220 = v219;

        v221 = self->_stats;
        v222 = [obj firstObject];
        v223 = [v222 eventIdentifier];
        v224 = [(NSMutableDictionary *)v221 objectForKeyedSubscript:v223];
        v225 = [v224 objectForKey:@"maxBurstLength"];
        [v225 doubleValue];
        v227 = v226;

        v228 = [obj firstObject];
        v229 = [v228 interactionContactScore];
        [v229 doubleValue];
        v231 = v230;

        v278 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu", @"category", 10, @"provider", 5];
        v232 = [v264 filteredArrayUsingPredicate:?];
        if ([v232 count] > v190 || v220 > v197 && v231 > v193 || v227 > v205 && v231 < v201)
        {
          [(MOEventBundle *)v261 setIsAggregatedAndSuppressed:0];
        }

        v275 = v227;
        v281 = 0u;
        v282 = 0u;
        v279 = 0u;
        v280 = 0u;
        v233 = v232;
        v234 = [v233 countByEnumeratingWithState:&v279 objects:v317 count:16];
        if (v234)
        {
          v235 = v234;
          v236 = v209;
          v237 = v213;
          v238 = *v280;
          do
          {
            for (n = 0; n != v235; n = n + 1)
            {
              if (*v280 != v238)
              {
                objc_enumerationMutation(v233);
              }

              v240 = *(*(&v279 + 1) + 8 * n);
              v241 = [v240 patterns];
              v242 = [v241 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
              v243 = [v242 intValue];

              if (v243 == 2)
              {
                v245 = [v240 patterns];
                v246 = [v245 objectForKeyedSubscript:@"kEventPatternThresholdValue"];
                [v246 doubleValue];
                v248 = v247;

                v244 = v248 / v237;
                if (v248 / v237 > v236)
                {
                  [(MOEventBundle *)v261 setIsAggregatedAndSuppressed:1, v244];
                }
              }
            }

            v235 = [v233 countByEnumeratingWithState:&v279 objects:v317 count:{16, v244}];
          }

          while (v235);
        }

        v249 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
        {
          v250 = [(MOEventBundle *)v261 isAggregatedAndSuppressed];
          v251 = [v233 count];
          *buf = 136316418;
          v306 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
          v307 = 2048;
          v308 = v250;
          v309 = 2048;
          v310 = v251;
          v311 = 2048;
          v312 = v275;
          v313 = 2048;
          v314 = v231;
          v315 = 2048;
          v316 = v220;
          _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_INFO, "%s, isAggregatedAndSuppressed, %lu, num. patterns, %lu, burstyInteractionCount, %lu, contactScore, %lu, call duration, %lu", buf, 0x3Eu);
        }

        v154 = v261;
        v155 = v154;
        v8 = v253;
        v7 = v254;
        goto LABEL_137;
      }

      v165 = self->_stats;
      v166 = [obj firstObject];
      v167 = [v166 eventIdentifier];
      v168 = [(NSMutableDictionary *)v165 objectForKeyedSubscript:v167];
      v169 = [v168 objectForKey:@"outgoingMessageBurstCount"];
      [v169 doubleValue];
      v171 = v170;

      v121 = 7;
      v120 = v261;

      v119 = v258;
      v163 = [NSNumber numberWithUnsignedInteger:v171];
      v164 = kMOEventBundleMetaDataForRankKeywordBurstyOutgoingInteractionCount;
    }

    [v119 setObject:v163 forKey:*v164];

    goto LABEL_105;
  }

  v154 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
  {
    [MOConversationAnnotationManager _annotateEvents:v7 significantContact:v8 type:v154];
  }

  v155 = 0;
LABEL_137:

  return v155;
}

- (unint64_t)_outgoingMessageBurstCount:(id)a3 bundleIdPrefix:(id)a4
{
  v6 = a3;
  v31 = a4;
  v7 = [(MOConversationAnnotationManager *)self configurationManager];
  [v7 getDoubleSettingForKey:@"kMOConversationAnnotationManagerMaximumOutgoingInteractionInterval" withFallback:600.0];
  v9 = v8;

  v10 = [(MOConversationAnnotationManager *)self configurationManager];
  v29 = [v10 getIntegerSettingForKey:@"kMOConversationAnnotationManagerMinimumOutgoingInteractionCount" withFallback:5];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v30 = 0;
    v15 = *v33;
    v16 = 1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if ([(MOConversationAnnotationManager *)self _messageInteraction:v18])
        {
          v19 = [v18 bundleId];
          v20 = [v19 hasPrefix:v31];

          if (v20)
          {
            if (v14)
            {
              v21 = [v18 startDate];
              [v21 timeIntervalSinceDate:v14];
              v23 = v22;

              v24 = 1;
              if (v23 < v9)
              {
                v24 = v16 + 1;
              }

              v25 = v16 >= v29 && v23 >= v9;
              v30 += v25;
              v16 = v24;
            }

            v26 = [v18 endDate];

            v14 = v26;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v30 = 0;
    v16 = 1;
  }

  if (v16 < v29)
  {
    v27 = v30;
  }

  else
  {
    v27 = v30 + 1;
  }

  return v27;
}

- (void)_calculateEventStats:(id)a3
{
  v4 = a3;
  v5 = [(MOConversationAnnotationManager *)self configurationManager];
  [v5 getDoubleSettingForKey:@"kMOConversationAnnotationManagerMaximumInteractionInterval" withFallback:300.0];
  v7 = v6;

  v8 = [(MOConversationAnnotationManager *)self configurationManager];
  v9 = [v8 getIntegerSettingForKey:@"kMOConversationAnnotationManagerMinimumDurationSingleCall" withFallback:300];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v4;
  v80 = [obj countByEnumeratingWithState:&v101 objects:v133 count:16];
  if (v80)
  {
    v79 = *v102;
    v11 = v9;
    *&v10 = 136318210;
    v75 = v10;
    v96 = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v102 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v101 + 1) + 8 * v12);
        v82 = v12;
        v13 = [v81 interactions];
        v14 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
        v132 = v14;
        v15 = [NSArray arrayWithObjects:&v132 count:1];
        v16 = [v13 sortedArrayUsingDescriptors:v15];

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v89 = v16;
        v17 = [v89 countByEnumeratingWithState:&v97 objects:v131 count:16];
        if (!v17)
        {
          v19 = 0;
          v95 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0.0;
          v92 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v24 = 0.0;
          v25 = 0.0;
          goto LABEL_66;
        }

        v18 = v17;
        v93 = 0;
        v95 = 0;
        v19 = 0;
        v86 = 0;
        v87 = 0;
        v88 = 0.0;
        v90 = 0;
        v92 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = *v98;
        v24 = 0.0;
        v25 = 0.0;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v98 != v23)
            {
              objc_enumerationMutation(v89);
            }

            v27 = *(*(&v97 + 1) + 8 * i);
            if ([(MOConversationAnnotationManager *)self _callLikeInteraction:v27]|| [(MOConversationAnnotationManager *)self _messageInteraction:v27])
            {
              v28 = [v27 startDate];
              if (!v28)
              {
                goto LABEL_20;
              }

              v29 = v28;
              v30 = v21;
              v31 = v20;
              v32 = [v27 endDate];

              if (!v32)
              {
                v20 = v31;
                v21 = v30;
LABEL_20:
                self = v96;
                continue;
              }

              if (v19)
              {
                v33 = [v27 startDate];
                v34 = [v19 endDate];
                [v33 timeIntervalSinceDate:v34];
                v36 = v35;

                if ((-[MOConversationAnnotationManager _callLikeInteraction:](v96, "_callLikeInteraction:", v19) || [v19 direction] == 1 && !objc_msgSend(v27, "direction") || !objc_msgSend(v19, "direction") && objc_msgSend(v27, "direction") == 1) && v36 < v7)
                {
                  ++v90;
                  v37 = v27;

                  v19 = v37;
                }

                v20 = v31;
                if (v36 > v7)
                {

                  v19 = 0;
                  v90 = 0;
                }

LABEL_40:
                v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v83 = [v27 startDate];
                  v55 = [v27 endDate];
                  *buf = 136316418;
                  v106 = "[MOConversationAnnotationManager _calculateEventStats:]";
                  v107 = 2048;
                  v108 = v93;
                  v109 = 2112;
                  v110 = v83;
                  v111 = 2112;
                  v112 = v55;
                  v56 = v55;
                  v113 = 2048;
                  v114 = v36;
                  v115 = 2048;
                  v116 = v90;
                  _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s, idx, %lu, startDate, %@, endDate, %@, interaction interval, %.1f, burstLength, %lu", buf, 0x3Eu);

                  v20 = v31;
                }

                v42 = v92;
                if (v92 <= v90)
                {
                  v42 = v90;
                }

                v92 = v42;
                self = v96;
                if ([(MOConversationAnnotationManager *)v96 _callLikeInteraction:v27])
                {
                  v43 = [v27 startDate];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = [v27 endDate];

                    if (v45)
                    {
                      v46 = [v27 endDate];
                      v47 = [v27 startDate];
                      [v46 timeIntervalSinceDate:v47];
                      v49 = v48;

                      if (v49 > v24)
                      {
                        v50 = v27;

                        v86 = v50;
                        v24 = v49;
                      }

                      self = v96;
                      v25 = v25 + v49;
                      ++v87;
                      v51 = [(MOConversationAnnotationManager *)v96 _getWorkVisitEventsDuringCall:obj withCall:v27];
                      v52 = [v51 count];
                      v53 = v88;
                      if (v52)
                      {
                        *&v53 = *&v88 + 1;
                      }

                      v88 = v53;
                      if (v49 > v11)
                      {
                        ++v22;
                      }

                      v20 = v31;
LABEL_58:
                      v21 = v30;
                      goto LABEL_61;
                    }

                    v20 = v31;
                  }

                  v21 = v30;
                  self = v96;
                  goto LABEL_61;
                }

                if (![(MOConversationAnnotationManager *)v96 _messageInteraction:v27])
                {
                  goto LABEL_58;
                }

                v21 = v30 + 1;
                if ([v27 direction] == 1)
                {
                  ++v20;
                }

LABEL_61:
                v54 = v27;

                ++v93;
                v95 = v54;
                continue;
              }

              v19 = v95;
              if (!v95)
              {
                v36 = 0.0;
                v20 = v31;
                goto LABEL_40;
              }

              v38 = [v27 startDate];
              v39 = [v95 endDate];
              [v38 timeIntervalSinceDate:v39];
              v36 = v40;

              if (-[MOConversationAnnotationManager _callLikeInteraction:](v96, "_callLikeInteraction:", v95) || [v95 direction] == 1 && !objc_msgSend(v27, "direction"))
              {
                v20 = v31;
                if (v36 >= v7)
                {
LABEL_34:
                  v19 = 0;
                  goto LABEL_40;
                }
              }

              else
              {
                v20 = v31;
                if ([v95 direction])
                {
                  goto LABEL_34;
                }

                v19 = 0;
                if ([v27 direction] != 1 || v36 >= v7)
                {
                  goto LABEL_40;
                }
              }

              v19 = v27;
              v90 = 2;
              goto LABEL_40;
            }
          }

          v18 = [v89 countByEnumeratingWithState:&v97 objects:v131 count:16];
        }

        while (v18);
LABEL_66:

        v94 = [(MOConversationAnnotationManager *)self _outgoingMessageBurstCount:v89 bundleIdPrefix:@"net.whatsapp.WhatsApp"];
        v91 = [(MOConversationAnnotationManager *)self _getWorkVisitEventsDuringCall:obj withCall:v86];
        v57 = [v91 count] != 0;
        v58 = objc_opt_new();
        v59 = [NSNumber numberWithUnsignedInteger:v22];
        [v58 setObject:v59 forKey:@"callCount"];

        v60 = [NSNumber numberWithDouble:v25];
        [v58 setObject:v60 forKey:@"aggregatedCallDuration"];

        v61 = [NSNumber numberWithDouble:v24];
        [v58 setObject:v61 forKey:@"longestCallDuration"];

        v62 = [NSNumber numberWithUnsignedInteger:v21];
        [v58 setObject:v62 forKey:@"messageCount"];

        v63 = [NSNumber numberWithUnsignedInteger:v20];
        [v58 setObject:v63 forKey:@"outgoingMessageCount"];

        v64 = [NSNumber numberWithUnsignedInteger:v92];
        [v58 setObject:v64 forKey:@"maxBurstLength"];

        v65 = [NSNumber numberWithUnsignedInteger:*&v88];
        [v58 setObject:v65 forKey:@"callAtWork"];

        v66 = [NSNumber numberWithUnsignedInteger:v87];
        [v58 setObject:v66 forKey:@"callCountForDailyAggregate"];

        v84 = v57;
        v67 = [NSNumber numberWithUnsignedInteger:v57];
        [v58 setObject:v67 forKey:@"longCallAtWork"];

        v68 = [NSNumber numberWithUnsignedInteger:v94];
        [v58 setObject:v68 forKey:@"outgoingMessageBurstCount"];

        v69 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = [v81 eventIdentifier];
          v78 = [v81 interactionScoredContact];
          v77 = [v78 contact];
          [v77 localizedFullName];
          v71 = v76 = v20;
          v72 = [v71 mask];
          *buf = v75;
          v106 = "[MOConversationAnnotationManager _calculateEventStats:]";
          v107 = 2112;
          v108 = v70;
          v109 = 2048;
          v110 = v22;
          v111 = 2048;
          v112 = v87;
          v113 = 2048;
          v114 = v88;
          v115 = 2048;
          v116 = v84;
          v117 = 2048;
          v118 = v25;
          v119 = 2048;
          v120 = v24;
          v121 = 2048;
          v122 = v21;
          v123 = 2048;
          v124 = v76;
          v125 = 2048;
          v126 = v94;
          v127 = 2048;
          v128 = v92;
          v129 = 2112;
          v130 = v72;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s, event ID, %@, call count, %lu, call count for daily agg., %lu, call at work, %lu, long call at work, %lu, aggregated call duration, %.1f, longest call duration, %.1f, message count, %lu, outgoing message count, %lu, outgoing message burst count, %lu, max burst length, %lu, contact, %@", buf, 0x84u);

          self = v96;
        }

        stats = self->_stats;
        v74 = [v81 eventIdentifier];
        [(NSMutableDictionary *)stats setObject:v58 forKey:v74];

        v12 = v82 + 1;
      }

      while ((v82 + 1) != v80);
      v80 = [obj countByEnumeratingWithState:&v101 objects:v133 count:16];
    }

    while (v80);
  }
}

- (void)_buildMappingFromBaseEvents:(id)a3 toPatternEvents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 eventIdentifier];
        v15 = [v13 eventIdentifier];
        v16 = [v15 UUIDString];
        [v7 setObject:v14 forKey:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v10);
  }

  v36 = v8;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v17 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      v20 = 0;
      v37 = v18;
      do
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * v20);
        v22 = [v21 patterns];
        v23 = [v22 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];

        v24 = [v7 objectForKey:v23];

        if (v24)
        {
          v25 = [v21 patterns];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = __79__MOConversationAnnotationManager__buildMappingFromBaseEvents_toPatternEvents___block_invoke;
          v40[3] = &unk_10033EC60;
          v40[4] = v21;
          [v25 enumerateKeysAndObjectsUsingBlock:v40];

          v26 = [v21 patterns];
          v27 = [v26 objectForKeyedSubscript:@"kEventPatternType"];
          v28 = [v27 intValue];

          if (!v28 && v23 != 0)
          {
            v30 = [v7 objectForKey:v23];
            v31 = [(NSMutableDictionary *)self->_eventToPatternEventMap objectForKey:v30];

            if (!v31)
            {
              eventToPatternEventMap = self->_eventToPatternEventMap;
              v33 = objc_opt_new();
              [(NSMutableDictionary *)eventToPatternEventMap setObject:v33 forKey:v30];
            }

            v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v50 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toPatternEvents:]";
              v51 = 2112;
              v52 = v21;
              v53 = 2112;
              v54 = v23;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s, pattern event, %@, base event identifier, %@", buf, 0x20u);
            }

            v35 = [(NSMutableDictionary *)self->_eventToPatternEventMap objectForKey:v30];
            [v35 addObject:v21];

            v18 = v37;
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v18);
  }

  [(NSMutableDictionary *)self->_eventToPatternEventMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_291];
}

void __79__MOConversationAnnotationManager__buildMappingFromBaseEvents_toPatternEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) eventIdentifier];
    v9 = 136315906;
    v10 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toPatternEvents:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s, pattern event identifier, %@, key, %@, value, %@", &v9, 0x2Au);
  }
}

void __79__MOConversationAnnotationManager__buildMappingFromBaseEvents_toPatternEvents___block_invoke_288(id a1, NSUUID *a2, NSSet *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toPatternEvents:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [(NSSet *)v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, event identifier, %@, pattern event count, %lu", &v8, 0x20u);
  }
}

- (void)_buildMappingFromBaseEvents:(id)a3 toContextEvents:(id)a4
{
  v5 = a3;
  v87 = a4;
  v85 = objc_opt_new();
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v112 objects:v129 count:16];
  if (v6)
  {
    v7 = v6;
    v89 = *v113;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v113 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v112 + 1) + 8 * i);
        v10 = objc_opt_new();
        v11 = [v9 interactions];
        v12 = [v11 firstObject];
        v13 = [v12 sender];
        v14 = [v13 personId];

        if (v14)
        {
          v15 = [v9 interactions];
          v16 = [v15 firstObject];
          v17 = [v16 sender];
          v18 = [v17 personId];
          [v10 addObject:v18];
        }

        v19 = [v9 interactions];
        v20 = [v19 firstObject];
        v21 = [v20 recipients];
        v22 = [v21 count];

        if (v22)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v23 = [v9 interactions];
          v24 = [v23 firstObject];
          v25 = [v24 recipients];

          v26 = [v25 countByEnumeratingWithState:&v108 objects:v128 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v109;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v109 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v108 + 1) + 8 * j);
                v31 = [v30 personId];

                if (v31)
                {
                  v32 = [v30 personId];
                  [v10 addObject:v32];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v108 objects:v128 count:16];
            }

            while (v27);
          }
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v33 = v10;
        v34 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v105;
          do
          {
            for (k = 0; k != v35; k = k + 1)
            {
              if (*v105 != v36)
              {
                objc_enumerationMutation(v33);
              }

              if (v33)
              {
                v38 = *(*(&v104 + 1) + 8 * k);
                v39 = [v85 objectForKey:v38];

                if (!v39)
                {
                  v40 = objc_opt_new();
                  [v85 setObject:v40 forKey:v38];
                }

                v41 = [v85 objectForKey:v38];
                [v41 addObject:v9];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
          }

          while (v35);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v112 objects:v129 count:16];
    }

    while (v7);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v77 = v87;
  v42 = self;
  v80 = [v77 countByEnumeratingWithState:&v100 objects:v126 count:16];
  if (v80)
  {
    v79 = *v101;
    do
    {
      v43 = 0;
      do
      {
        if (*v101 != v79)
        {
          objc_enumerationMutation(v77);
        }

        v81 = v43;
        v44 = *(*(&v100 + 1) + 8 * v43);
        v45 = objc_opt_new();
        if ([v44 category] == 9)
        {
          v46 = [v44 itemSenders];
          v47 = [v46 count];

          if (v47)
          {
            v48 = [v44 itemSenders];
            [v45 addObjectsFromArray:v48];
          }
        }

        v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v45 count];
          *buf = 136315650;
          v117 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toContextEvents:]";
          v118 = 2112;
          v119 = v44;
          v120 = 2048;
          v121 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s, contextEvent, %@, contactIdentifier count, %lu", buf, 0x20u);
        }

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v82 = v45;
        v84 = [v82 countByEnumeratingWithState:&v96 objects:v125 count:16];
        if (v84)
        {
          v83 = *v97;
          do
          {
            v51 = 0;
            do
            {
              if (*v97 != v83)
              {
                objc_enumerationMutation(v82);
              }

              v86 = v51;
              v52 = *(*(&v96 + 1) + 8 * v51);
              v53 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v75 = [v85 objectForKey:v52];
                v76 = [v75 count];
                *buf = 136315650;
                v117 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toContextEvents:]";
                v118 = 2112;
                v119 = v52;
                v120 = 2048;
                v121 = v76;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "%s, contactIdentifier, %@, base event count, %lu", buf, 0x20u);
              }

              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v88 = v52;
              v90 = [v85 objectForKey:v52];
              v54 = [v90 countByEnumeratingWithState:&v92 objects:v124 count:16];
              if (v54)
              {
                v55 = v54;
                v56 = *v93;
                do
                {
                  for (m = 0; m != v55; m = m + 1)
                  {
                    if (*v93 != v56)
                    {
                      objc_enumerationMutation(v90);
                    }

                    v58 = *(*(&v92 + 1) + 8 * m);
                    v59 = [v58 startDate];
                    v60 = [v59 startOfDay];
                    v61 = [v44 startDate];
                    v62 = [v61 startOfDay];
                    v63 = [v60 isEqualToDate:v62];

                    if (v63)
                    {
                      v64 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315906;
                        v117 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toContextEvents:]";
                        v118 = 2112;
                        v119 = v88;
                        v120 = 2112;
                        v121 = v58;
                        v122 = 2112;
                        v123 = v44;
                        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s, contactIdentifier, %@, matching base event, %@, context event, %@", buf, 0x2Au);
                      }

                      v65 = self;
                      eventToContextEventMap = self->_eventToContextEventMap;
                      v67 = [v58 eventIdentifier];
                      v68 = [(NSMutableDictionary *)eventToContextEventMap objectForKey:v67];

                      if (!v68)
                      {
                        v69 = self->_eventToContextEventMap;
                        v70 = objc_opt_new();
                        v71 = [v58 eventIdentifier];
                        [(NSMutableDictionary *)v69 setObject:v70 forKey:v71];

                        v65 = self;
                      }

                      v72 = v65->_eventToContextEventMap;
                      v73 = [v58 eventIdentifier];
                      v74 = [(NSMutableDictionary *)v72 objectForKey:v73];
                      [v74 addObject:v44];
                    }
                  }

                  v55 = [v90 countByEnumeratingWithState:&v92 objects:v124 count:16];
                }

                while (v55);
              }

              v51 = v86 + 1;
              v42 = self;
            }

            while ((v86 + 1) != v84);
            v84 = [v82 countByEnumeratingWithState:&v96 objects:v125 count:16];
          }

          while (v84);
        }

        v43 = v81 + 1;
      }

      while ((v81 + 1) != v80);
      v80 = [v77 countByEnumeratingWithState:&v100 objects:v126 count:16];
    }

    while (v80);
  }

  [(NSMutableDictionary *)v42->_eventToContextEventMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_293];
}

void __79__MOConversationAnnotationManager__buildMappingFromBaseEvents_toContextEvents___block_invoke(id a1, NSUUID *a2, NSSet *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[MOConversationAnnotationManager _buildMappingFromBaseEvents:toContextEvents:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [(NSSet *)v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, event identifier, %@, context event count, %lu", &v8, 0x20u);
  }
}

- (id)_actionForBundle:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 > 3)
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        v6 = @"call";
        goto LABEL_33;
      }

LABEL_11:
      v6 = @"chat";
      goto LABEL_33;
    }

    if (a4 != 6)
    {
      if (a4 != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_11;
    }

    v31 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v5 events];
    v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = v8;
    v10 = *v34;
LABEL_15:
    v11 = 0;
    while (1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      v13 = [v12 patterns];
      v14 = [v13 objectForKeyedSubscript:@"kEventPatternType"];
      if ([v14 intValue])
      {
      }

      else
      {
        v15 = [v12 patterns];
        v16 = [v15 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
        v17 = [v16 intValue];

        if (v17 == 2)
        {
          v18 = v31;
          v19 = &off_10036BE30;
LABEL_26:
          [v18 addObject:v19];
          goto LABEL_27;
        }
      }

      v20 = [v12 patterns];
      v21 = [v20 objectForKeyedSubscript:@"kEventPatternType"];
      if ([v21 intValue])
      {
      }

      else
      {
        v22 = [v12 patterns];
        v23 = [v22 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
        v24 = [v23 intValue];

        if (v24 == 1)
        {
          v18 = v31;
          v19 = &off_10036BE18;
          goto LABEL_26;
        }
      }

LABEL_27:
      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (!v9)
        {
LABEL_29:

          if ([v31 containsObject:&off_10036BE18])
          {
            v6 = @"call";
          }

          else
          {
            v6 = @"chat";
          }

          goto LABEL_33;
        }

        goto LABEL_15;
      }
    }
  }

  if (a4 - 1 < 3)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOConversationAnnotationManager _actionForBundle:a4 type:v7];
    }

    v6 = 0;
  }

LABEL_33:
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[MOConversationAnnotationManager _actionForBundle:type:]";
    v39 = 2112;
    v40 = v5;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s, bundle, %@, action name, %@", buf, 0x20u);
  }

  if (v6)
  {
    v26 = [[MOAction alloc] initWithActionName:v6 actionType:1 actionSubtype:4];
    v27 = [v5 events];
    v28 = [v27 firstObject];
    v29 = [v28 eventIdentifier];
    [(MOAction *)v26 setSourceEventIdentifier:v29];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __50__MOConversationAnnotationManager__getBaseEvents___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[MOConversationAnnotationManager _getBaseEvents:]_block_invoke";
  v5 = 2048;
  v6 = a2;
  v7 = 2112;
  v8 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, idx, %lu, interaction, %@", &v3, 0x20u);
}

- (void)_annotateEvents:(uint8_t *)buf significantContact:(_BYTE *)a2 type:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "contact identifier is nil, not creating the MOPerson!", buf, 2u);
}

- (void)_annotateEvents:(void *)a1 significantContact:(uint64_t)a2 type:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 firstObject];
  v6 = 136315650;
  v7 = "[MOConversationAnnotationManager _annotateEvents:significantContact:type:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s, no contact name, event, %@, contact, %@", &v6, 0x20u);
}

- (void)_actionForBundle:(uint64_t)a1 type:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[MOConversationAnnotationManager _actionForBundle:type:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s, deprecated annotation type, %lu", &v2, 0x16u);
}

@end