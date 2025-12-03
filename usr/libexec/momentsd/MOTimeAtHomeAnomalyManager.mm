@interface MOTimeAtHomeAnomalyManager
- (MOTimeAtHomeAnomalyManager)initWithUniverse:(id)universe;
- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
@end

@implementation MOTimeAtHomeAnomalyManager

- (MOTimeAtHomeAnomalyManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v25.receiver = self;
  v25.super_class = MOTimeAtHomeAnomalyManager;
  v6 = [(MOTimeAtHomeAnomalyManager *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, universe);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    queue = v7->_queue;
    v7->_queue = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [universeCopy getService:v15];
    routineServiceManager = v7->_routineServiceManager;
    v7->_routineServiceManager = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [universeCopy getService:v19];
    configurationManager = v7->_configurationManager;
    v7->_configurationManager = v20;

    v22 = [[MOTimeAtHomeParams alloc] initWithConfigurationManager:v7->_configurationManager];
    parameters = v7->_parameters;
    v7->_parameters = v22;
  }

  return v7;
}

- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  startCopy = start;
  endCopy = end;
  handlerCopy = handler;
  queue = [(MOTimeAtHomeAnomalyManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __126__MOTimeAtHomeAnomalyManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
  v23[3] = &unk_100338668;
  v23[4] = self;
  v24 = eventsCopy;
  v25 = patternEventsCopy;
  v26 = startCopy;
  v27 = endCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = endCopy;
  v20 = startCopy;
  v21 = patternEventsCopy;
  v22 = eventsCopy;
  dispatch_async(queue, v23);
}

void __126__MOTimeAtHomeAnomalyManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __126__MOTimeAtHomeAnomalyManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2;
  v6[3] = &unk_1003369E0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 _performAnnotationWithEvents:v2 withPatternEvents:v3 withBundleWindowStart:v4 withBundleWindowEnd:v5 handler:v6];
}

uint64_t __126__MOTimeAtHomeAnomalyManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler
{
  eventsCopy = events;
  patternEventsCopy = patternEvents;
  startCopy = start;
  endCopy = end;
  handlerCopy = handler;
  v152 = +[MOContextAnnotationUtilities predicateOfEventsWithPlaySessions];
  v160 = [eventsCopy filteredArrayUsingPredicate:v152];
  v151 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v150 = [eventsCopy filteredArrayUsingPredicate:v151];
  v149 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
  v159 = [v150 filteredArrayUsingPredicate:v149];
  v148 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  v161 = [eventsCopy filteredArrayUsingPredicate:v148];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = [v161 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "T@H: Found %lu spotlight invite events", buf, 0xCu);
  }

  v147 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v153 = [patternEventsCopy filteredArrayUsingPredicate:v147];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v153 count];
    *buf = 134217984;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "T@H: Found %lu visit pattern events", buf, 0xCu);
  }

  if ([v153 count])
  {
    v144 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
    v143 = [NSPredicate predicateWithFormat:v144, @"category", 1, @"placeUserType", 1];
    v142 = [eventsCopy filteredArrayUsingPredicate:v143];
    v141 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v237 = v141;
    v14 = [NSArray arrayWithObjects:&v237 count:1];
    v163 = [v142 sortedArrayUsingDescriptors:v14];

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v163 count];
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "T@H: Found %lu visit events", buf, 0xCu);
    }

    if ([v163 count])
    {
      v158 = objc_opt_new();
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      obj = v153;
      v17 = [obj countByEnumeratingWithState:&v217 objects:v236 count:16];
      if (v17)
      {
        v18 = *v218;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v218 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v217 + 1) + 8 * i);
            patterns = [v20 patterns];
            v22 = [patterns objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
            if ([v22 unsignedIntValue] == 5)
            {
              startDate = [v20 startDate];
              if ([startDate isOnOrAfter:startCopy])
              {
                endDate = [v20 endDate];
                v25 = [endDate isOnOrBefore:endCopy];

                if (v25)
                {
                  [v158 addObject:v20];
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          v17 = [obj countByEnumeratingWithState:&v217 objects:v236 count:16];
        }

        while (v17);
      }

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v158 count];
        *buf = 134217984;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "T@H: Found %lu T@H pattern events with complete context available for bundling", buf, 0xCu);
      }

      if ([v158 count])
      {
        fUniverse = [(MOTimeAtHomeAnomalyManager *)self fUniverse];
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = [fUniverse getService:v30];

        v32 = objc_opt_new();
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v157 = v158;
        v164 = [v157 countByEnumeratingWithState:&v213 objects:v235 count:16];
        if (!v164)
        {
          goto LABEL_81;
        }

        v162 = *v214;
        v155 = v32;
        v156 = v31;
        while (1)
        {
          v33 = 0;
          do
          {
            if (*v214 != v162)
            {
              v34 = v33;
              objc_enumerationMutation(v157);
              v33 = v34;
            }

            v176 = v33;
            v35 = *(*(&v213 + 1) + 8 * v33);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v232 = __Block_byref_object_copy__17;
            v233 = __Block_byref_object_dispose__17;
            v234 = objc_opt_new();
            startDate2 = [v35 startDate];
            endDate2 = [v35 endDate];
            v212[0] = _NSConcreteStackBlock;
            v212[1] = 3221225472;
            v212[2] = __127__MOTimeAtHomeAnomalyManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
            v212[3] = &unk_100338690;
            v212[4] = buf;
            [MOContextAnnotationUtilities filterEventsIntersectingDateRange:v163 rangeStart:startDate2 rangeEnd:endDate2 handler:v212];

            if ([*(*&buf[8] + 40) count])
            {
              v38 = objc_opt_new();
              [v38 addObject:v35];
              [v38 addObjectsFromArray:*(*&buf[8] + 40)];
              v175 = v38;
              v39 = [MOEventBundle alloc];
              v40 = +[NSUUID UUID];
              v41 = +[NSDate date];
              v42 = [(MOEventBundle *)v39 initWithBundleIdentifier:v40 creationDate:v41];

              [(MOEventBundle *)v42 setEvents:v175];
              [(MOEventBundle *)v42 setInterfaceType:7];
              [(MOEventBundle *)v42 setBundleSubType:501];
              [(MOEventBundle *)v42 setBundleSuperType:5];
              startDate3 = [v35 startDate];
              [(MOEventBundle *)v42 setStartDate:startDate3];

              endDate3 = [v35 endDate];
              [(MOEventBundle *)v42 setEndDate:endDate3];

              endDate4 = [v35 endDate];
              v46 = [MOTime timeForDate:endDate4 timeZoneManager:v31];
              [(MOEventBundle *)v42 setTime:v46];

              v47 = [[MOAction alloc] initWithActionName:@"Time at Home" actionType:1 actionSubtype:1];
              [(MOEventBundle *)v42 setAction:v47];

              firstObject = [*(*&buf[8] + 40) firstObject];
              eventIdentifier = [firstObject eventIdentifier];
              action = [(MOEventBundle *)v42 action];
              [action setSourceEventIdentifier:eventIdentifier];

              v51 = [MOPlace alloc];
              firstObject2 = [*(*&buf[8] + 40) firstObject];
              location = [firstObject2 location];
              v54 = [(MOPlace *)v51 initWithPlaceName:@"Home" placeType:1 placeUserType:1 location:location locationMode:1 poiCategory:0 categoryMuid:-1.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0.0 familiarityIndexLOI:0];
              [(MOEventBundle *)v42 setPlace:v54];

              firstObject3 = [*(*&buf[8] + 40) firstObject];
              eventIdentifier2 = [firstObject3 eventIdentifier];
              place = [(MOEventBundle *)v42 place];
              [place setSourceEventIdentifier:eventIdentifier2];

              startDate4 = [(MOEventBundle *)v42 startDate];
              endDate5 = [(MOEventBundle *)v42 endDate];
              v174 = [MOContextAnnotationUtilities predicateOfEventsWithPlaySessionsWithStartDate:startDate4 endData:endDate5];

              v166 = [v160 filteredArrayUsingPredicate:v174];
              if ([v166 count])
              {
                v60 = *(*&buf[8] + 40);
                parameters = [(MOTimeAtHomeAnomalyManager *)self parameters];
                [parameters mediaDurationThreshold];
                v62 = [MOContextAnnotationUtilities annotateEventBundle:v42 dateIntervalEvents:v60 playbackMediaEvents:v166 mediaDurationThreshold:?];

                if ([v62 count])
                {
                  [(MOEventBundle *)v42 addEvents:v62];
                }
              }

              startDate5 = [(MOEventBundle *)v42 startDate];
              endDate6 = [(MOEventBundle *)v42 endDate];
              v173 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate5 endDate:endDate6];

              v172 = [v159 filteredArrayUsingPredicate:v173];
              v65 = *(*&buf[8] + 40);
              parameters2 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              [parameters2 emotionAttachmentBundleDurationThreshold];
              *&v67 = v67;
              obja = [MOContextAnnotationUtilities annotateEventBundle:v42 dateIntervalEvents:v65 emotionEvents:v172 bundleDurationThreshold:v67];

              [(MOEventBundle *)v42 addEvents:obja];
              v68 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                startDate6 = [v35 startDate];
                endDate7 = [v35 endDate];
                *v227 = 138412546;
                *&v227[4] = startDate6;
                *&v227[12] = 2112;
                *&v227[14] = endDate7;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "T@H: Created bundle for range %@ to %@", v227, 0x16u);
              }

              *v227 = 0;
              *&v227[8] = v227;
              *&v227[16] = 0x3032000000;
              v228 = __Block_byref_object_copy__17;
              v229 = __Block_byref_object_dispose__17;
              v230 = objc_opt_new();
              v208 = 0;
              v209 = &v208;
              v210 = 0x2020000000;
              v211 = 0;
              v202 = 0;
              v203 = &v202;
              v204 = 0x3032000000;
              v205 = __Block_byref_object_copy__17;
              v206 = __Block_byref_object_dispose__17;
              v207 = objc_opt_new();
              v196 = 0;
              v197 = &v196;
              v198 = 0x3032000000;
              v199 = __Block_byref_object_copy__17;
              v200 = __Block_byref_object_dispose__17;
              v201 = 0;
              v190 = 0;
              v191 = &v190;
              v192 = 0x3032000000;
              v193 = __Block_byref_object_copy__17;
              v194 = __Block_byref_object_dispose__17;
              v195 = 0;
              fUniverse = self->_fUniverse;
              v189[0] = _NSConcreteStackBlock;
              v189[1] = 3221225472;
              v189[2] = __127__MOTimeAtHomeAnomalyManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_157;
              v189[3] = &unk_1003386B8;
              v189[4] = v227;
              v189[5] = &v208;
              v189[6] = &v202;
              v189[7] = &v196;
              v189[8] = &v190;
              [MOContextAnnotationUtilities addPhotoResources:v42 universe:fUniverse handler:v189];
              [(MOEventBundle *)v42 setPhotoSource:v209[3]];
              v72 = [v203[5] copy];
              [(MOEventBundle *)v42 setPhotoTraits:v72];

              v73 = *(*&v227[8] + 40);
              parameters3 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              [parameters3 photosCurationScoreThreshold];
              v76 = v75;
              parameters4 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              photosFaceCountThreshold = [parameters4 photosFaceCountThreshold];
              parameters5 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              photosCountThreshold = [parameters5 photosCountThreshold];
              *&v81 = v76;
              v82 = [MOPhotosAtHomeManager chooseResourcesWithGoodPhotos:v73 withPhotoCurationScore:photosFaceCountThreshold andFaceCount:photosCountThreshold numPhotosThreshold:v81];
              [(MOEventBundle *)v42 setResources:v82];

              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              resources = [(MOEventBundle *)v42 resources];
              v84 = [resources countByEnumeratingWithState:&v185 objects:v226 count:16];
              if (v84)
              {
                v85 = *v186;
                v86 = 0.0;
                do
                {
                  for (j = 0; j != v84; j = j + 1)
                  {
                    if (*v186 != v85)
                    {
                      objc_enumerationMutation(resources);
                    }

                    photoCurationScore = [*(*(&v185 + 1) + 8 * j) photoCurationScore];
                    [photoCurationScore floatValue];
                    v90 = v89;

                    v86 = v86 + v90;
                  }

                  v84 = [resources countByEnumeratingWithState:&v185 objects:v226 count:16];
                }

                while (v84);
              }

              else
              {
                v86 = 0.0;
              }

              resources2 = [(MOEventBundle *)v42 resources];
              v92 = [resources2 count] == 0;

              if (!v92)
              {
                resources3 = [(MOEventBundle *)v42 resources];
                v95 = [resources3 count];

                v86 = v86 / v95;
              }

              *&v93 = v86;
              v96 = [NSNumber numberWithFloat:v93];
              [(MOEventBundle *)v42 addMetaDataForRankForKey:@"PhotosAtHomeCurationScore" value:v96];

              if ([obja count])
              {
                [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v42 withEmotionEvents:obja];
                [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v42 withEmotionEvents:obja];
              }

              startDate7 = [(MOEventBundle *)v42 startDate];
              endDate8 = [(MOEventBundle *)v42 endDate];
              v171 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:startDate7 endDate:endDate8];

              v170 = [v161 filteredArrayUsingPredicate:v171];
              v99 = *(*&buf[8] + 40);
              parameters6 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              [parameters6 timeAtHomeInviteEventTimeOverlapWithVisitsThreshold];
              v102 = v101;
              parameters7 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              [parameters7 timeAtHomeInviteEventDistanceFromVisitEventsThreshold];
              v105 = v104;
              parameters8 = [(MOTimeAtHomeAnomalyManager *)self parameters];
              [parameters8 timeAtHomeInviteEventPhotoTimeThreshold];
              LODWORD(v107) = v105;
              v109 = [MOContextAnnotationUtilities annotateEventBundle:v42 visitEvents:v99 inviteEvents:v170 withTimeThreshold:v102 withDistanceThreshold:v107 withPhotoTimeThreshold:v108];

              if (v109)
              {
                v110 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                {
                  *v224 = 138412290;
                  v225 = v109;
                  _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "T@H: found invite event overlapping bundle, %@", v224, 0xCu);
                }

                [(MOEventBundle *)v42 addEvent:v109];
                parameters9 = [(MOTimeAtHomeAnomalyManager *)self parameters];
                timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck = [parameters9 timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck];
                parameters10 = [(MOTimeAtHomeAnomalyManager *)self parameters];
                +[MOContextAnnotationUtilities removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:](MOContextAnnotationUtilities, "removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:", v42, v109, timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck, [parameters10 timeAtHomeInviteEventMissingEndDateTimeThresholdForPhotoCheck]);
              }

              v169 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 2];
              resources4 = [(MOEventBundle *)v42 resources];
              v167 = [resources4 filteredArrayUsingPredicate:v169];

              v168 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 3];
              resources5 = [(MOEventBundle *)v42 resources];
              v116 = [resources5 filteredArrayUsingPredicate:v168];

              v117 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 16];
              resources6 = [(MOEventBundle *)v42 resources];
              v119 = [resources6 filteredArrayUsingPredicate:v117];

              [MOContextAnnotationUtilities assetPriorityScoringForTimeAtHomeBundlesWithBundle:v42 withMediaResources:v116 withPhotoResources:v167 withEmotionResources:v119];
              if (v109)
              {
                [MOContextAnnotationUtilities addInviteResourceForBundle:v42 withInviteEvent:v109];
              }

              if (v197[5] && v191[5])
              {
                [(MOEventBundle *)v42 setStartDate:?];
                v120 = v197[5];
                if (v120 == v191[5])
                {
                  v121 = [v120 dateByAddingTimeInterval:5.0];
                  [(MOEventBundle *)v42 setEndDate:v121];
                }

                else
                {
                  [(MOEventBundle *)v42 setEndDate:?];
                }
              }

              v222 = @"TimeAtHomeDuration";
              patterns2 = [v35 patterns];
              v123 = [patterns2 objectForKeyedSubscript:@"kEventPatternFeatureValue"];
              v223 = v123;
              v124 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
              [(MOEventBundle *)v42 setMetaDataForRank:v124];

              if ([MOContextAnnotationUtilities isEvergreenBundle:v42])
              {
                v125 = 504;
              }

              else
              {
                v125 = 501;
              }

              [(MOEventBundle *)v42 setBundleSubType:v125];
              resources7 = [(MOEventBundle *)v42 resources];
              v127 = [resources7 count] == 0;

              if (v127)
              {
                goto LABEL_77;
              }

              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              resources8 = [(MOEventBundle *)v42 resources];
              v129 = [resources8 countByEnumeratingWithState:&v181 objects:v221 count:16];
              if (!v129)
              {

                goto LABEL_77;
              }

              v130 = 0;
              v131 = *v182;
              do
              {
                for (k = 0; k != v129; k = k + 1)
                {
                  if (*v182 != v131)
                  {
                    objc_enumerationMutation(resources8);
                  }

                  if ([*(*(&v181 + 1) + 8 * k) type] == 2)
                  {
                    ++v130;
                  }
                }

                v129 = [resources8 countByEnumeratingWithState:&v181 objects:v221 count:16];
              }

              while (v129);

              v32 = v155;
              v31 = v156;
              if (!v130)
              {
LABEL_77:
                [(MOEventBundle *)v42 setIsAggregatedAndSuppressed:1];
              }

              [v32 addObject:v42];

              _Block_object_dispose(&v190, 8);
              _Block_object_dispose(&v196, 8);

              _Block_object_dispose(&v202, 8);
              _Block_object_dispose(&v208, 8);
              _Block_object_dispose(v227, 8);
            }

            _Block_object_dispose(buf, 8);

            v33 = v176 + 1;
          }

          while ((v176 + 1) != v164);
          v164 = [v157 countByEnumeratingWithState:&v213 objects:v235 count:16];
          if (!v164)
          {
LABEL_81:

            v133 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
            {
              v134 = objc_opt_class();
              v135 = NSStringFromClass(v134);
              v136 = [v32 count];
              *buf = 138412546;
              *&buf[4] = v135;
              *&buf[12] = 2048;
              *&buf[14] = v136;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "T@H(%@): Event Bundles, %lu", buf, 0x16u);
            }

            v137 = [v32 copy];
            handlerCopy[2](handlerCopy, v137, 0);

            goto LABEL_93;
          }
        }
      }

      v140 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_INFO, "T@H: Exiting bundling due to no pattern events with complete context available for bundling", buf, 2u);
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
LABEL_93:
    }

    else
    {
      v139 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "T@H: Exiting bundling due to no visit events", buf, 2u);
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    }
  }

  else
  {
    v138 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "T@H: Exiting bundling due to no visit pattern events", buf, 2u);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

void __127__MOTimeAtHomeAnomalyManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "T@H: Found %lu visit events overlapping anomaly time range", &v5, 0xCu);
    }

    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v3];
  }
}

void __127__MOTimeAtHomeAnomalyManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_157(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_storeStrong((*(a1[7] + 8) + 40), a5);
  objc_storeStrong((*(a1[8] + 8) + 40), a6);
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(*(a1[5] + 8) + 24);
    v18 = 134218754;
    v19 = v17;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2048;
    v25 = [v12 count];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "T@H, photoSource, %lu, startDate, %@, endDate, %@, count, %lu", &v18, 0x2Au);
  }
}

@end