@interface MOMediaPlayAnnotationManager
+ (id)renderTypeFrom:(unint64_t)a3 isFirstPartyApp:(BOOL)a4;
- (MOMediaPlayAnnotationManager)initWithUniverse:(id)a3;
- (id)_annotateEvents:(id)a3 isFirstParty:(BOOL)a4;
- (id)_createBundlesFromEvents:(id)a3;
- (id)_getBaseEvents:(id)a3;
- (id)_getEventBasedOnTime:(id)a3 category:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6;
- (id)_getEventsBasedOnTypes:(id)a3 isFirstPartyApp:(unsigned __int8)a4;
- (id)_groupBaseEvents:(id)a3 category:(unint64_t)a4;
- (id)_groupBaseEventsByDay:(id)a3 category:(unint64_t)a4;
- (id)_groupEventsByApps:(id)a3;
- (id)_sortEventGroupsBasedOnRepetions:(id)a3;
- (id)getMediaOnRepeatLabelHeaderFromMediaType:(unint64_t)a3;
- (unsigned)_isFirstPartyApp:(id)a3;
- (void)_performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
@end

@implementation MOMediaPlayAnnotationManager

- (MOMediaPlayAnnotationManager)initWithUniverse:(id)a3
{
  v8.receiver = self;
  v8.super_class = MOMediaPlayAnnotationManager;
  v3 = [(MOAnnotationManager *)&v8 initWithUniverse:a3];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("MOConversationAnnotationManager", v4);
    queue = v3->_queue;
    v3->_queue = v5;
  }

  return v3;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOMediaPlayAnnotationManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __86__MOMediaPlayAnnotationManager_performAnnotationWithEvents_withPatternEvents_handler___block_invoke;
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
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [(MOMediaPlayAnnotationManager *)self _createBundlesFromEvents:v8];

  [v9 addObjectsFromArray:v10];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MOMediaPlayAnnotationManager _performAnnotationWithEvents:withPatternEvents:handler:]";
    v14 = 2048;
    v15 = [v9 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s, annotated media played bundle count, %lu", &v12, 0x16u);
  }

  v7[2](v7, v9, 0);
}

- (id)_createBundlesFromEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v22 = v4;
    v6 = [(MOMediaPlayAnnotationManager *)self _groupBaseEventsByDay:v4 category:4];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v6 allKeys];
    v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v23 = *v35;
      v24 = v6;
      do
      {
        v10 = 0;
        v25 = v8;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [v6 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * v10)];
          v12 = v11;
          if (v11 && [v11 count])
          {
            v29 = [(MOMediaPlayAnnotationManager *)self _getEventsBasedOnTypes:v12 isFirstPartyApp:1];
            v13 = [MOMediaPlayAnnotationManager _annotateEvents:"_annotateEvents:isFirstParty:" isFirstParty:?];
            if (v13)
            {
              [v5 addObject:v13];
            }

            v28 = [(MOMediaPlayAnnotationManager *)self _getEventsBasedOnTypes:v12 isFirstPartyApp:0];
            v14 = [(MOMediaPlayAnnotationManager *)self _groupEventsByApps:?];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v27 = v14;
            v15 = [v14 allValues];
            v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v31;
              do
              {
                v19 = 0;
                v20 = v13;
                do
                {
                  if (*v31 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v13 = [(MOMediaPlayAnnotationManager *)self _annotateEvents:*(*(&v30 + 1) + 8 * v19) isFirstParty:0];

                  if (v13)
                  {
                    [v5 addObject:v13];
                  }

                  v19 = v19 + 1;
                  v20 = v13;
                }

                while (v17 != v19);
                v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v17);
            }

            v9 = v23;
            v6 = v24;
            v8 = v25;
          }

          v10 = v10 + 1;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    v4 = v22;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_groupBaseEventsByDay:(id)a3 category:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  if ([v5 count])
  {
    v32 = v6;
    v7 = +[NSCalendar currentCalendar];
    v8 = [v5 getDurationOfMOEventArray];
    v9 = [v8 startDate];
    v10 = [v7 components:28 fromDate:v9];

    v31 = v10;
    v11 = [v7 dateFromComponents:v10];
    v12 = [v7 dateByAddingUnit:16 value:1 toDate:v11 options:0];
    v13 = objc_alloc_init(NSDateFormatter);
    [v13 setCalendar:v7];
    v33 = v13;
    [v13 setDateFormat:@"yyyy-MM-dd"];
    v14 = [v8 endDate];
    v15 = [v11 compare:v14];

    if (v15 == -1)
    {
      *&v16 = 136315650;
      v30 = v16;
      do
      {
        v20 = [(MOMediaPlayAnnotationManager *)self _getEventBasedOnTime:v5 category:a4 startTime:v11 endTime:v12, v30];
        v21 = v20;
        if (v20 && [v20 count])
        {
          v22 = [v21 firstObject];
          v23 = [v22 startDate];
          v24 = [v33 stringFromDate:v23];

          if (v24)
          {
            [v32 setObject:v21 forKey:v24];
            v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v21 count];
              *buf = v30;
              v36 = "[MOMediaPlayAnnotationManager _groupBaseEventsByDay:category:]";
              v37 = 2112;
              v38 = v24;
              v39 = 2048;
              v40 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s, bundle annotation with day, %@, event count, %lu", buf, 0x20u);
            }
          }
        }

        v18 = [v7 dateByAddingUnit:16 value:1 toDate:v11 options:0];

        v17 = [v7 dateByAddingUnit:16 value:1 toDate:v12 options:0];

        v27 = [v8 endDate];
        v28 = [v18 compare:v27];

        v11 = v18;
        v12 = v17;
      }

      while (v28 == -1);
    }

    else
    {
      v17 = v12;
      v18 = v11;
    }

    v6 = v32;
    v19 = v32;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "annotated media events are empty.", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)_getEventBasedOnTime:(id)a3 category:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v21 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 startDate];
        if (([v17 isAfterDate:v9] & 1) == 0)
        {
          goto LABEL_11;
        }

        v18 = [v16 startDate];
        if (([v18 isBeforeDate:v10] & 1) == 0)
        {

LABEL_11:
          continue;
        }

        v19 = [v16 category];

        if (v19 == a4)
        {
          [v21 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  return v21;
}

- (id)_sortEventGroupsBasedOnRepetions:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __65__MOMediaPlayAnnotationManager__sortEventGroupsBasedOnRepetions___block_invoke;
    v7[3] = &unk_1003373F0;
    v8 = objc_opt_new();
    v4 = v8;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 keysSortedByValueUsingComparator:&__block_literal_global_6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __65__MOMediaPlayAnnotationManager__sortEventGroupsBasedOnRepetions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __65__MOMediaPlayAnnotationManager__sortEventGroupsBasedOnRepetions___block_invoke_2;
  v13[3] = &unk_1003373C8;
  v13[4] = &v14;
  [v6 enumerateObjectsUsingBlock:v13];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MOMediaPlaySession redactString:v5];
    v9 = v15[3];
    *buf = 136315650;
    v19 = "[MOMediaPlayAnnotationManager _sortEventGroupsBasedOnRepetions:]_block_invoke";
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, media title, %@, repetition count, %lu", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = [NSNumber alloc];
  v12 = [v11 initWithUnsignedLong:v15[3]];
  [v10 setObject:v12 forKey:v5];

  _Block_object_dispose(&v14, 8);
}

void __65__MOMediaPlayAnnotationManager__sortEventGroupsBasedOnRepetions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRepetitions];
  *(*(*(a1 + 32) + 8) + 24) += [v3 unsignedLongValue];
}

- (id)_getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 3];
  v15[0] = v4;
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 4];
  v15[1] = v5;
  v6 = [NSArray arrayWithObjects:v15 count:2];
  v7 = [NSCompoundPredicate orPredicateWithSubpredicates:v6];

  v8 = [v3 filteredArrayUsingPredicate:v7];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[MOMediaPlayAnnotationManager _getBaseEvents:]";
    v13 = 2048;
    v14 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s, filtered event count, %lu", buf, 0x16u);
  }

  [v8 enumerateObjectsUsingBlock:&__block_literal_global_166];

  return v8;
}

void __47__MOMediaPlayAnnotationManager__getBaseEvents___block_invoke(id a1, MOEvent *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[MOMediaPlayAnnotationManager _getBaseEvents:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s, idx, %lu, filtered event, %@", &v7, 0x20u);
  }
}

- (id)_groupBaseEvents:(id)a3 category:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if ([v11 category] == a4)
        {
          v12 = [v11 mediaTitle];
          if ([v12 length])
          {
            v13 = [v6 objectForKey:v12];

            if (!v13)
            {
              v14 = objc_opt_new();
              [v6 setObject:v14 forKey:v12];
            }

            v15 = [v6 objectForKey:v12];
            [v15 addObject:v11];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v8);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v6 count];
    *buf = 136315650;
    v41 = "[MOMediaPlayAnnotationManager _groupBaseEvents:category:]";
    v42 = 2048;
    v43 = a4;
    v44 = 2048;
    v45 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s, category, %lu, event group count, %lu", buf, 0x20u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        v24 = objc_autoreleasePoolPush();
        v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [MOMediaPlaySession redactString:v23];
          v27 = [v18 objectForKeyedSubscript:v23];
          v28 = [v27 count];
          *buf = 136315650;
          v41 = "[MOMediaPlayAnnotationManager _groupBaseEvents:category:]";
          v42 = 2112;
          v43 = v26;
          v44 = 2048;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s, media title, %@, event count, %lu", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  return v18;
}

+ (id)renderTypeFrom:(unint64_t)a3 isFirstPartyApp:(BOOL)a4
{
  v4 = MOMediaPlayMetaDataKeyPlayerMediaTypeSong;
  v5 = MOMediaPlayMetaDataKeyPlayerMediaTypePodcastEpisode;
  if (a3 != 2)
  {
    v5 = MOMediaPlayMetaDataKeyPlayerMediaTypeUnknown;
  }

  if (a3 != 1)
  {
    v4 = v5;
  }

  if (!a4)
  {
    v4 = MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia;
  }

  return *v4;
}

- (id)_annotateEvents:(id)a3 isFirstParty:(BOOL)a4
{
  v103 = a4;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:0];
    v168 = v6;
    v7 = [NSArray arrayWithObjects:&v168 count:1];
    v8 = v5;
    v9 = v7;
    v91 = v8;
    v10 = [v8 sortedArrayUsingDescriptors:v7];

    v11 = objc_alloc_init(NSMutableArray);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v150 objects:v167 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v151;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v151 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v150 + 1) + 8 * i);
          v17 = [v16 mediaEvent];
          v18 = [v17 mediaTitle];

          if (v18)
          {
            [v11 addObject:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v150 objects:v167 count:16];
      }

      while (v13);
    }

    if ([v11 count])
    {
      v19 = [MOEventBundle alloc];
      v20 = [[NSSet alloc] initWithArray:v11];
      v21 = [(MOEventBundle *)v19 initWithEventSet:v20 filtered:0];

      [(MOEventBundle *)v21 setInterfaceType:5];
      [(MOEventBundle *)v21 setBundleSuperType:4];
      [(MOEventBundle *)v21 setBundleSubType:406];
      v22 = [(MOEventBundle *)v21 endDate];
      v23 = [(MOAnnotationManager *)self timeZoneManager];
      v24 = [MOTime timeForDate:v22 timeZoneManager:v23];
      [(MOEventBundle *)v21 setTime:v24];

      v25 = [v11 firstObject];
      v26 = [v11 firstObject];
      v27 = [v26 category];

      if (v27 == 4)
      {
        v28 = [[MOAction alloc] initWithActionName:@"played_media_sessions" actionType:1 actionSubtype:6];
        [(MOEventBundle *)v21 setAction:v28];

        v29 = [obj firstObject];
        v30 = [v29 eventIdentifier];
        v31 = [(MOEventBundle *)v21 action];
        [v31 setSourceEventIdentifier:v30];

        v32 = [v25 mediaAlbum];

        v33 = [(MOEventBundle *)v21 action];
        v34 = [v33 actionName];
        v101 = v25;
        if (v32)
        {
          v35 = [v25 mediaAlbum];
          v36 = [(MOEventBundle *)v21 resources];
          v37 = [v36 firstObject];
          v38 = [v37 name];
          v39 = [NSString stringWithFormat:@"%@: %@ - %@", v34, v35, v38];
          [(MOEventBundle *)v21 setPromptLanguage:v39];
        }

        else
        {
          v35 = [(MOEventBundle *)v21 resources];
          v36 = [v35 firstObject];
          v37 = [v36 name];
          v38 = [NSString stringWithFormat:@"%@: %@", v34, v37];
          [(MOEventBundle *)v21 setPromptLanguage:v38];
        }

        v102 = objc_alloc_init(NSMutableArray);
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v90 = v21;
        v92 = [(MOEventBundle *)v21 events];
        v25 = v101;
        v104 = [v92 countByEnumeratingWithState:&v146 objects:v166 count:16];
        if (v104)
        {
          v99 = *v147;
          v100 = v11;
          do
          {
            v41 = 0;
            do
            {
              if (*v147 != v99)
              {
                objc_enumerationMutation(v92);
              }

              v145 = v41;
              v42 = *(*(&v146 + 1) + 8 * v41);
              v43 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v80 = [v91 count];
                v81 = [v42 mediaEvent];
                v82 = [v81 mediaTitle];
                v83 = [MOMediaPlaySession redactString:v82];
                v84 = [v42 startDate];
                v85 = [v42 endDate];
                *buf = 136316162;
                v157 = "[MOMediaPlayAnnotationManager _annotateEvents:isFirstParty:]";
                v158 = 2048;
                v159 = v80;
                v160 = 2112;
                v161 = v83;
                v162 = 2112;
                v163 = v84;
                v164 = 2112;
                v165 = v85;
                _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%s, media annotation event count, %lu, media title, %@, start, %@, end, %@", buf, 0x34u);
              }

              v44 = [v42 mediaEvent];
              v45 = [v44 mediaType];
              v46 = [v42 mediaEvent];
              v47 = [v46 mediaPlayerBundleId];
              v48 = [MOMediaPlaySession getMOPlaySessionMediaType:v45 bundleId:v47];
              v49 = [v48 unsignedIntValue];

              v154[0] = @"MOMediaPlayMetaDataKeyPlayerTitle";
              v144 = [v42 mediaEvent];
              v143 = [v144 mediaTitle];
              if (v143)
              {
                v108 = [v42 mediaEvent];
                v109 = [v108 mediaTitle];
                v50 = v109;
              }

              else
              {
                v50 = &stru_1003416B0;
              }

              v155[0] = v50;
              v154[1] = @"MOMediaPlayMetaDataKeyPlayerArtist";
              v142 = [v42 mediaEvent];
              v51 = [v142 mediaArtist];
              if (v51)
              {
                v121 = [v42 mediaEvent];
                v117 = [v121 mediaArtist];
                v52 = v117;
              }

              else
              {
                v52 = &stru_1003416B0;
              }

              v155[1] = v52;
              v154[2] = @"MOMediaPlayMetaDataKeyPlayerTrackID";
              v140 = [v42 mediaEvent];
              v53 = [v140 mediaProductId];
              if (v53)
              {
                v120 = [v42 mediaEvent];
                v115 = [v120 mediaProductId];
                v54 = v115;
              }

              else
              {
                v54 = &stru_1003416B0;
              }

              v155[2] = v54;
              v154[3] = @"MOMediaPlayMetaDataKeyPlayerAlbumName";
              v138 = [v42 mediaEvent];
              v55 = [v138 mediaAlbum];
              if (v55)
              {
                v119 = [v42 mediaEvent];
                v113 = [v119 mediaAlbum];
                v56 = v113;
              }

              else
              {
                v56 = &stru_1003416B0;
              }

              v155[3] = v56;
              v154[4] = @"MOMediaPlayMetaDataKeyPlayerBundleID";
              v136 = [v42 mediaEvent];
              v57 = [v136 mediaPlayerBundleId];
              v141 = v51;
              v139 = v53;
              if (v57)
              {
                v118 = [v42 mediaEvent];
                v112 = [v118 mediaPlayerBundleId];
                v58 = v112;
              }

              else
              {
                v58 = &stru_1003416B0;
              }

              v155[4] = v58;
              v154[5] = @"MOMediaPlayMetaDataKeyPlayerDuration";
              v134 = [v42 mediaEvent];
              v133 = [v134 mediaPlaySessions];
              v132 = [v133 firstObject];
              v131 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v132 duration]);
              v155[5] = v131;
              v154[6] = @"MOMediaPlayMetaDataKeyPlayerSumPlaytime";
              v130 = [v42 mediaEvent];
              v129 = [v130 mediaSumTimePlayed];
              v155[6] = v129;
              v154[7] = @"media_type";
              v128 = [NSNumber numberWithUnsignedInteger:v49];
              v155[7] = v128;
              v154[8] = @"MOMediaPlayMetaDataKeyPlayerFirstPartyRatio";
              v127 = [v42 mediaEvent];
              v59 = [v127 mediaFirstPartyTimePlayedRatio];
              v137 = v55;
              if (v59)
              {
                v116 = [v42 mediaEvent];
                v111 = [v116 mediaFirstPartyTimePlayedRatio];
                v60 = v111;
              }

              else
              {
                v60 = &off_100369238;
              }

              v155[8] = v60;
              v154[9] = @"MOMediaPlayMetaDataKeyPlayerMediaTypeKey";
              v125 = [MOMediaPlayAnnotationManager renderTypeFrom:v49 isFirstPartyApp:v103];
              v155[9] = v125;
              v154[10] = @"media_album";
              v124 = [v42 mediaEvent];
              v61 = [v124 mediaAlbum];
              v135 = v57;
              if (!v61)
              {
                goto LABEL_49;
              }

              v114 = [v42 mediaEvent];
              v122 = [v114 mediaTitle];
              if (!v122)
              {
                v122 = 0;
LABEL_49:
                v63 = 0;
                v64 = 0;
                goto LABEL_51;
              }

              v98 = [v42 mediaEvent];
              v62 = [v98 mediaAlbum];
              v96 = [v42 mediaEvent];
              [v96 mediaTitle];
              v95 = v97 = v62;
              if ([v62 rangeOfString:?] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v94 = [v42 mediaEvent];
                [v94 mediaAlbum];
                v63 = 1;
                v93 = v64 = 1;
                v65 = v93;
                goto LABEL_52;
              }

              v64 = 0;
              v63 = 1;
LABEL_51:
              v65 = &stru_1003416B0;
LABEL_52:
              v155[10] = v65;
              v154[11] = @"MOMediaPlayMetaDataKeyPlayerBgColor";
              v66 = [v42 mediaEvent];
              v67 = [v66 mediaPlaySessions];
              v68 = [v67 firstObject];
              v69 = [v68 bgColor];
              if (v69)
              {
                v110 = [v42 mediaEvent];
                v107 = [v110 mediaPlaySessions];
                v106 = [v107 firstObject];
                v105 = [v106 bgColor];
                v70 = v105;
              }

              else
              {
                v70 = &stru_1003416B0;
              }

              v155[11] = v70;
              v71 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:12];
              v126 = [v71 mutableCopy];

              if (v69)
              {
              }

              v25 = v101;
              if (v64)
              {
              }

              if (v63)
              {
              }

              if (v61)
              {
              }

              v11 = v100;
              if (v59)
              {
              }

              if (v135)
              {
              }

              if (v137)
              {
              }

              if (v139)
              {
              }

              if (v141)
              {
              }

              if (v143)
              {
              }

              v72 = [v42 startDate];

              if (v72)
              {
                v73 = [v42 startDate];
                [v73 timeIntervalSinceReferenceDate];
                v74 = [NSNumber numberWithDouble:?];
                [v126 setObject:v74 forKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerStartDate"];
              }

              v75 = [MOResource alloc];
              v76 = [v42 mediaEvent];
              v77 = [v76 mediaTitle];
              v78 = [(MOResource *)v75 initWithName:v77 type:3 dict:v126 value:0.0];

              v79 = [v42 eventIdentifier];
              [(MOResource *)v78 setSourceEventIdentifier:v79];

              [v102 addObject:v78];
              v41 = v145 + 1;
            }

            while (v104 != (v145 + 1));
            v104 = [v92 countByEnumeratingWithState:&v146 objects:v166 count:16];
          }

          while (v104);
        }

        v21 = v90;
        [(MOEventBundle *)v90 setResources:v102];
        v86 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        v5 = v91;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = [v91 firstObject];
          v88 = [v87 category];
          *buf = 136315650;
          v157 = "[MOMediaPlayAnnotationManager _annotateEvents:isFirstParty:]";
          v158 = 2112;
          v159 = v90;
          v160 = 2048;
          v161 = v88;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, %lu", buf, 0x20u);
        }

        v40 = v90;
      }

      else
      {
        v40 = 0;
        v5 = v91;
      }
    }

    else
    {
      v40 = 0;
      v5 = v91;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)_groupEventsByApps:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 mediaEvent];
        v12 = [v11 mediaPlayerBundleId];

        if (v12)
        {
          v13 = [v4 objectForKey:v12];

          if (v13)
          {
            v14 = [v4 objectForKey:v12];
          }

          else
          {
            v14 = objc_opt_new();
          }

          v15 = v14;
          [v14 addObject:v10];
          [v4 setObject:v15 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_getEventsBasedOnTypes:(id)a3 isFirstPartyApp:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([(MOMediaPlayAnnotationManager *)self _isFirstPartyApp:v13, v15]== v4)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (unsigned)_isFirstPartyApp:(id)a3
{
  v3 = [a3 mediaEvent];
  v4 = [v3 mediaPlayerBundleId];

  v5 = v4 && ([v4 hasPrefix:@"com.apple."] & 1) != 0;
  return v5;
}

- (id)getMediaOnRepeatLabelHeaderFromMediaType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"media_on_repeat";
  }

  else
  {
    return *(&off_100337470 + a3 - 1);
  }
}

@end