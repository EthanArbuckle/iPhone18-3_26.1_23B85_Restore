@interface MOHostingAtHomeManager
- (MOHostingAtHomeManager)initWithUniverse:(id)universe;
- (id)dedupeHostingAtHomeBundles:(id)bundles withEvents:(id)events withCalendar:(id)calendar;
- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
@end

@implementation MOHostingAtHomeManager

- (MOHostingAtHomeManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v25.receiver = self;
  v25.super_class = MOHostingAtHomeManager;
  v6 = [(MOHostingAtHomeManager *)&v25 init];
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
  queue = [(MOHostingAtHomeManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __122__MOHostingAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
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

void __122__MOHostingAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __122__MOHostingAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2;
  v6[3] = &unk_1003369E0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 _performAnnotationWithEvents:v2 withPatternEvents:v3 withBundleWindowStart:v4 withBundleWindowEnd:v5 handler:v6];
}

uint64_t __122__MOHostingAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2(uint64_t a1)
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
  v158 = +[MOContextAnnotationUtilities predicateOfEventsWithPlaySessions];
  v167 = [eventsCopy filteredArrayUsingPredicate:v158];
  v157 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v156 = [eventsCopy filteredArrayUsingPredicate:v157];
  v155 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
  v166 = [v156 filteredArrayUsingPredicate:v155];
  v154 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  v168 = [eventsCopy filteredArrayUsingPredicate:v154];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = [v168 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "H@H: Found %lu spotlight invite events", buf, 0xCu);
  }

  v153 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v159 = [patternEventsCopy filteredArrayUsingPredicate:v153];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v159 count];
    *buf = 134217984;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "H@H: Found %lu visit pattern events", buf, 0xCu);
  }

  if ([v159 count])
  {
    fUniverse = [(MOHostingAtHomeManager *)self fUniverse];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v165 = [fUniverse getService:v16];

    v150 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
    v149 = [NSPredicate predicateWithFormat:v150, @"category", 1, @"placeUserType", 1];
    v148 = [eventsCopy filteredArrayUsingPredicate:v149];
    v147 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v241 = v147;
    v17 = [NSArray arrayWithObjects:&v241 count:1];
    v170 = [v148 sortedArrayUsingDescriptors:v17];

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v170 count];
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "H@H: Found %lu visit events", buf, 0xCu);
    }

    if ([v170 count])
    {
      v163 = objc_opt_new();
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      obj = v159;
      v20 = [obj countByEnumeratingWithState:&v223 objects:v240 count:16];
      if (v20)
      {
        v21 = *v224;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v224 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v223 + 1) + 8 * i);
            patterns = [v23 patterns];
            v25 = [patterns objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
            if ([v25 unsignedIntValue] == 4)
            {
              startDate = [v23 startDate];
              if ([startDate isOnOrAfter:startCopy])
              {
                endDate = [v23 endDate];
                v28 = [endDate isOnOrBefore:endCopy];

                if (v28)
                {
                  [v163 addObject:v23];
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

          v20 = [obj countByEnumeratingWithState:&v223 objects:v240 count:16];
        }

        while (v20);
      }

      v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v163 count];
        *buf = 134217984;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "H@H: Found %lu H@H pattern events with complete context available for bundling", buf, 0xCu);
      }

      if ([v163 count])
      {
        v164 = objc_opt_new();
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v162 = v163;
        v171 = [v162 countByEnumeratingWithState:&v219 objects:v239 count:16];
        if (!v171)
        {
          goto LABEL_83;
        }

        v169 = *v220;
        while (1)
        {
          v31 = 0;
          do
          {
            if (*v220 != v169)
            {
              v32 = v31;
              objc_enumerationMutation(v162);
              v31 = v32;
            }

            v181 = v31;
            v33 = *(*(&v219 + 1) + 8 * v31);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v236 = __Block_byref_object_copy__36;
            v237 = __Block_byref_object_dispose__36;
            v238 = objc_opt_new();
            startDate2 = [v33 startDate];
            endDate2 = [v33 endDate];
            v218[0] = _NSConcreteStackBlock;
            v218[1] = 3221225472;
            v218[2] = __123__MOHostingAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
            v218[3] = &unk_100338690;
            v218[4] = buf;
            [MOContextAnnotationUtilities filterEventsIntersectingDateRange:v170 rangeStart:startDate2 rangeEnd:endDate2 handler:v218];

            if ([*(*&buf[8] + 40) count])
            {
              v36 = objc_opt_new();
              [v36 addObject:v33];
              [v36 addObjectsFromArray:*(*&buf[8] + 40)];
              v180 = v36;
              v37 = [MOEventBundle alloc];
              v38 = +[NSUUID UUID];
              v39 = +[NSDate date];
              v40 = [(MOEventBundle *)v37 initWithBundleIdentifier:v38 creationDate:v39];

              [(MOEventBundle *)v40 setEvents:v180];
              [(MOEventBundle *)v40 setInterfaceType:7];
              [(MOEventBundle *)v40 setBundleSubType:503];
              [(MOEventBundle *)v40 setBundleSuperType:5];
              startDate3 = [v33 startDate];
              v42 = [startDate3 dateByAddingTimeInterval:-7200.0];
              [(MOEventBundle *)v40 setStartDate:v42];

              endDate3 = [v33 endDate];
              v44 = [endDate3 dateByAddingTimeInterval:7200.0];
              [(MOEventBundle *)v40 setEndDate:v44];

              startDate4 = [v33 startDate];
              v46 = [MOTime timeForDate:startDate4 timeZoneManager:v165];
              [(MOEventBundle *)v40 setTime:v46];

              v47 = [[MOAction alloc] initWithActionName:@"Hosting at Home" actionType:1 actionSubtype:9];
              [(MOEventBundle *)v40 setAction:v47];

              firstObject = [*(*&buf[8] + 40) firstObject];
              eventIdentifier = [firstObject eventIdentifier];
              action = [(MOEventBundle *)v40 action];
              [action setSourceEventIdentifier:eventIdentifier];

              v51 = [MOPlace alloc];
              firstObject2 = [*(*&buf[8] + 40) firstObject];
              location = [firstObject2 location];
              v54 = [(MOPlace *)v51 initWithPlaceName:@"Home" placeType:1 placeUserType:1 location:location locationMode:1 poiCategory:0 categoryMuid:-1.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0.0 familiarityIndexLOI:0];
              [(MOEventBundle *)v40 setPlace:v54];

              firstObject3 = [*(*&buf[8] + 40) firstObject];
              eventIdentifier2 = [firstObject3 eventIdentifier];
              place = [(MOEventBundle *)v40 place];
              [place setSourceEventIdentifier:eventIdentifier2];

              startDate5 = [(MOEventBundle *)v40 startDate];
              endDate4 = [(MOEventBundle *)v40 endDate];
              v179 = [MOContextAnnotationUtilities predicateOfEventsWithPlaySessionsWithStartDate:startDate5 endData:endDate4];

              v174 = [v167 filteredArrayUsingPredicate:v179];
              if ([v174 count])
              {
                v60 = *(*&buf[8] + 40);
                parameters = [(MOHostingAtHomeManager *)self parameters];
                [parameters mediaDurationThreshold];
                v62 = [MOContextAnnotationUtilities annotateEventBundle:v40 dateIntervalEvents:v60 playbackMediaEvents:v174 mediaDurationThreshold:?];

                if ([v62 count])
                {
                  [(MOEventBundle *)v40 addEvents:v62];
                }
              }

              startDate6 = [(MOEventBundle *)v40 startDate];
              endDate5 = [(MOEventBundle *)v40 endDate];
              v178 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate6 endDate:endDate5];

              v177 = [v166 filteredArrayUsingPredicate:v178];
              v65 = *(*&buf[8] + 40);
              parameters2 = [(MOHostingAtHomeManager *)self parameters];
              [parameters2 emotionAttachmentBundleDurationThreshold];
              *&v67 = v67;
              v183 = [MOContextAnnotationUtilities annotateEventBundle:v40 dateIntervalEvents:v65 emotionEvents:v177 bundleDurationThreshold:v67];

              [(MOEventBundle *)v40 addEvents:v183];
              v68 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                startDate7 = [v33 startDate];
                endDate6 = [v33 endDate];
                *v231 = 138412546;
                *&v231[4] = startDate7;
                *&v231[12] = 2112;
                *&v231[14] = endDate6;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "H@H: Created bundle for range %@ to %@", v231, 0x16u);
              }

              *v231 = 0;
              *&v231[8] = v231;
              *&v231[16] = 0x3032000000;
              v232 = __Block_byref_object_copy__36;
              v233 = __Block_byref_object_dispose__36;
              v234 = objc_opt_new();
              v214 = 0;
              v215 = &v214;
              v216 = 0x2020000000;
              v217 = 0;
              v208 = 0;
              v209 = &v208;
              v210 = 0x3032000000;
              v211 = __Block_byref_object_copy__36;
              v212 = __Block_byref_object_dispose__36;
              v213 = objc_opt_new();
              v202 = 0;
              v203 = &v202;
              v204 = 0x3032000000;
              v205 = __Block_byref_object_copy__36;
              v206 = __Block_byref_object_dispose__36;
              v207 = 0;
              v196 = 0;
              v197 = &v196;
              v198 = 0x3032000000;
              v199 = __Block_byref_object_copy__36;
              v200 = __Block_byref_object_dispose__36;
              v201 = 0;
              v71 = [(MOEventBundle *)v40 copy];
              fUniverse = self->_fUniverse;
              v195[0] = _NSConcreteStackBlock;
              v195[1] = 3221225472;
              v195[2] = __123__MOHostingAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_157;
              v195[3] = &unk_1003386B8;
              v195[4] = v231;
              v195[5] = &v214;
              v195[6] = &v208;
              v195[7] = &v202;
              v195[8] = &v196;
              [MOContextAnnotationUtilities addPhotoResources:v71 universe:fUniverse handler:v195];

              [(MOEventBundle *)v40 setPhotoSource:v215[3]];
              v73 = [v209[5] copy];
              [(MOEventBundle *)v40 setPhotoTraits:v73];

              v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                v75 = v215[3];
                *v229 = 134217984;
                v230 = v75;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "H@H: photoSource, %lu", v229, 0xCu);
              }

              startDate8 = [v33 startDate];
              [(MOEventBundle *)v40 setStartDate:startDate8];

              endDate7 = [v33 endDate];
              [(MOEventBundle *)v40 setEndDate:endDate7];

              v78 = *(*&v231[8] + 40);
              parameters3 = [(MOHostingAtHomeManager *)self parameters];
              [parameters3 photosCurationScoreThreshold];
              v81 = v80;
              parameters4 = [(MOHostingAtHomeManager *)self parameters];
              photosFaceCountThreshold = [parameters4 photosFaceCountThreshold];
              parameters5 = [(MOHostingAtHomeManager *)self parameters];
              photosCountThreshold = [parameters5 photosCountThreshold];
              *&v86 = v81;
              v87 = [MOPhotosAtHomeManager chooseResourcesWithGoodPhotos:v78 withPhotoCurationScore:photosFaceCountThreshold andFaceCount:photosCountThreshold numPhotosThreshold:v86];
              [(MOEventBundle *)v40 setResources:v87];

              v193 = 0u;
              v194 = 0u;
              v191 = 0u;
              v192 = 0u;
              resources = [(MOEventBundle *)v40 resources];
              v89 = [resources countByEnumeratingWithState:&v191 objects:v228 count:16];
              if (v89)
              {
                v90 = *v192;
                v91 = 0.0;
                do
                {
                  for (j = 0; j != v89; j = j + 1)
                  {
                    if (*v192 != v90)
                    {
                      objc_enumerationMutation(resources);
                    }

                    photoCurationScore = [*(*(&v191 + 1) + 8 * j) photoCurationScore];
                    [photoCurationScore floatValue];
                    v95 = v94;

                    v91 = v91 + v95;
                  }

                  v89 = [resources countByEnumeratingWithState:&v191 objects:v228 count:16];
                }

                while (v89);
              }

              else
              {
                v91 = 0.0;
              }

              resources2 = [(MOEventBundle *)v40 resources];
              v97 = [resources2 count] == 0;

              if (!v97)
              {
                resources3 = [(MOEventBundle *)v40 resources];
                v100 = [resources3 count];

                v91 = v91 / v100;
              }

              *&v98 = v91;
              v101 = [NSNumber numberWithFloat:v98];
              [(MOEventBundle *)v40 addMetaDataForRankForKey:@"PhotosAtHomeCurationScore" value:v101];

              if ([v183 count])
              {
                [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v40 withEmotionEvents:v183];
                [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v40 withEmotionEvents:v183];
              }

              startDate9 = [(MOEventBundle *)v40 startDate];
              endDate8 = [(MOEventBundle *)v40 endDate];
              v176 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:startDate9 endDate:endDate8];

              v175 = [v168 filteredArrayUsingPredicate:v176];
              v104 = *(*&buf[8] + 40);
              parameters6 = [(MOHostingAtHomeManager *)self parameters];
              [parameters6 timeAtHomeInviteEventTimeOverlapWithVisitsThreshold];
              v107 = v106;
              parameters7 = [(MOHostingAtHomeManager *)self parameters];
              [parameters7 timeAtHomeInviteEventDistanceFromVisitEventsThreshold];
              v110 = v109;
              parameters8 = [(MOHostingAtHomeManager *)self parameters];
              [parameters8 timeAtHomeInviteEventPhotoTimeThreshold];
              LODWORD(v112) = v110;
              obja = [MOContextAnnotationUtilities annotateEventBundle:v40 visitEvents:v104 inviteEvents:v175 withTimeThreshold:v107 withDistanceThreshold:v112 withPhotoTimeThreshold:v113];

              if (obja)
              {
                v114 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                {
                  *v229 = 138412290;
                  v230 = obja;
                  _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "H@H: found invite event overlapping bundle, %@", v229, 0xCu);
                }

                [(MOEventBundle *)v40 addEvent:obja];
                parameters9 = [(MOHostingAtHomeManager *)self parameters];
                timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck = [parameters9 timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck];
                parameters10 = [(MOHostingAtHomeManager *)self parameters];
                +[MOContextAnnotationUtilities removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:](MOContextAnnotationUtilities, "removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:", v40, obja, timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck, [parameters10 timeAtHomeInviteEventMissingEndDateTimeThresholdForPhotoCheck]);
              }

              v118 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 2];
              resources4 = [(MOEventBundle *)v40 resources];
              v120 = [resources4 filteredArrayUsingPredicate:v118];

              v121 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 3];
              resources5 = [(MOEventBundle *)v40 resources];
              v123 = [resources5 filteredArrayUsingPredicate:v121];
              v173 = v121;

              v124 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 16];
              resources6 = [(MOEventBundle *)v40 resources];
              v126 = [resources6 filteredArrayUsingPredicate:v124];

              [MOContextAnnotationUtilities assetPriorityScoringForTimeAtHomeBundlesWithBundle:v40 withMediaResources:v123 withPhotoResources:v120 withEmotionResources:v126];
              if (obja)
              {
                [MOContextAnnotationUtilities addInviteResourceForBundle:v40 withInviteEvent:obja];
              }

              if ([MOContextAnnotationUtilities isEvergreenBundle:v40])
              {
                v127 = 504;
              }

              else
              {
                v127 = 503;
              }

              [(MOEventBundle *)v40 setBundleSubType:v127];
              if (v203[5] && v197[5])
              {
                [(MOEventBundle *)v40 setStartDate:?];
                v128 = v203[5];
                if (v128 == v197[5])
                {
                  v129 = [v128 dateByAddingTimeInterval:5.0];
                  [(MOEventBundle *)v40 setEndDate:v129];
                }

                else
                {
                  [(MOEventBundle *)v40 setEndDate:?];
                }
              }

              resources7 = [(MOEventBundle *)v40 resources];
              v131 = [resources7 count] == 0;

              if (v131)
              {
                goto LABEL_79;
              }

              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              resources8 = [(MOEventBundle *)v40 resources];
              v133 = [resources8 countByEnumeratingWithState:&v187 objects:v227 count:16];
              if (!v133)
              {

                goto LABEL_79;
              }

              v161 = v118;
              v134 = 0;
              v135 = *v188;
              do
              {
                for (k = 0; k != v133; k = k + 1)
                {
                  if (*v188 != v135)
                  {
                    objc_enumerationMutation(resources8);
                  }

                  if ([*(*(&v187 + 1) + 8 * k) type] == 2)
                  {
                    ++v134;
                  }
                }

                v133 = [resources8 countByEnumeratingWithState:&v187 objects:v227 count:16];
              }

              while (v133);

              v118 = v161;
              if (!v134)
              {
LABEL_79:
                [(MOEventBundle *)v40 setIsAggregatedAndSuppressed:1];
              }

              [v164 addObject:v40];

              _Block_object_dispose(&v196, 8);
              _Block_object_dispose(&v202, 8);

              _Block_object_dispose(&v208, 8);
              _Block_object_dispose(&v214, 8);
              _Block_object_dispose(v231, 8);
            }

            _Block_object_dispose(buf, 8);

            v31 = v181 + 1;
          }

          while ((v181 + 1) != v171);
          v171 = [v162 countByEnumeratingWithState:&v219 objects:v239 count:16];
          if (!v171)
          {
LABEL_83:

            v137 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
            v138 = [(MOHostingAtHomeManager *)self dedupeHostingAtHomeBundles:v164 withEvents:eventsCopy withCalendar:v137];
            v139 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
            {
              v140 = objc_opt_class();
              v141 = NSStringFromClass(v140);
              v142 = [v138 count];
              *buf = 138412546;
              *&buf[4] = v141;
              *&buf[12] = 2048;
              *&buf[14] = v142;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "H@H(%@): Event Bundles, %lu", buf, 0x16u);
            }

            v143 = [v138 copy];
            handlerCopy[2](handlerCopy, v143, 0);

            goto LABEL_95;
          }
        }
      }

      v146 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "H@H: Exiting bundling due to no pattern events with complete context available for bundling", buf, 2u);
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
LABEL_95:
    }

    else
    {
      v145 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "H@H: Exiting bundling due to no visit events", buf, 2u);
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    }
  }

  else
  {
    v144 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_INFO, "H@H: Exiting bundling due to no visit pattern events", buf, 2u);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

void __123__MOHostingAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "H@H: Found %lu visit events overlapping anomaly time range", &v5, 0xCu);
    }

    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v3];
  }
}

void __123__MOHostingAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_157(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v25 = v11;

  *(*(a1[5] + 8) + 24) = a3;
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v12;
  v19 = v12;

  v20 = *(a1[7] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v13;
  v22 = v13;

  v23 = *(a1[8] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v14;
}

- (id)dedupeHostingAtHomeBundles:(id)bundles withEvents:(id)events withCalendar:(id)calendar
{
  bundlesCopy = bundles;
  eventsCopy = events;
  calendarCopy = calendar;
  if ([bundlesCopy count] <= 1)
  {
    v9 = bundlesCopy;
    goto LABEL_31;
  }

  v50 = eventsCopy;
  v49 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v57 = v49;
  v10 = [NSArray arrayWithObjects:&v57 count:1];
  v51 = bundlesCopy;
  v11 = [bundlesCopy sortedArrayUsingDescriptors:v10];

  v9 = objc_opt_new();
  firstObject = [v11 firstObject];
  if ([v11 count] >= 2)
  {
    v13 = 1;
    v14 = 1;
    do
    {
      v15 = [v11 objectAtIndex:v13];
      startDate = [firstObject startDate];
      v17 = [startDate dateByAddingTimeInterval:-10800.0];
      startDate2 = [v15 startDate];
      v19 = [startDate2 dateByAddingTimeInterval:-10800.0];
      v20 = [calendarCopy isDate:v17 inSameDayAsDate:v19];

      if ((v20 & 1) == 0)
      {
        [v9 addObject:firstObject];
        v30 = v15;
LABEL_28:
        v47 = v30;

        firstObject = v47;
        goto LABEL_29;
      }

      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v54 = firstObject;
        v55 = 2112;
        v56 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "H@H: Found bundles on same day, %@ to %@", buf, 0x16u);
      }

      resources = [v15 resources];
      v23 = [resources count];
      resources2 = [firstObject resources];
      v25 = [resources2 count];

      if (v23 > v25)
      {
        v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v15;
          v27 = v26;
          v28 = "H@H: Adding bundle to return array because greater resource count, %@";
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      resources3 = [firstObject resources];
      v32 = [resources3 count];
      resources4 = [v15 resources];
      v34 = [resources4 count];

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      v35 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v32 <= v34)
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "H@H: Bundle resource counts are equal so de-dupe based on timespan", buf, 2u);
        }

        endDate = [firstObject endDate];
        startDate3 = [firstObject startDate];
        [endDate timeIntervalSinceDate:startDate3];
        v41 = v40;

        endDate2 = [v15 endDate];
        startDate4 = [v15 startDate];
        [endDate2 timeIntervalSinceDate:startDate4];
        v45 = v44;

        v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        v46 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
        if (v45 > v41)
        {
          if (v46)
          {
            *buf = 138412290;
            v54 = v15;
            v27 = v26;
            v28 = "H@H: Adding bundle to return array because of broader timespan, %@";
LABEL_11:
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v28, buf, 0xCu);
          }

LABEL_12:
          v29 = v15;
          goto LABEL_26;
        }

        if (v46)
        {
          *buf = 138412290;
          v54 = firstObject;
          v36 = v26;
          v37 = "H@H: Adding bundle to return array because of broader timespan, %@";
          goto LABEL_24;
        }
      }

      else if (v35)
      {
        *buf = 138412290;
        v54 = firstObject;
        v36 = v26;
        v37 = "H@H: Adding bundle to return array because greater resource count, %@";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, v37, buf, 0xCu);
      }

      v29 = firstObject;
LABEL_26:

      [v9 addObject:v29];
      if ([v11 count] > ++v14)
      {
        v30 = [v11 objectAtIndex:v14];
        goto LABEL_28;
      }

LABEL_29:

      v13 = ++v14;
    }

    while ([v11 count] > v14);
  }

  eventsCopy = v50;
  bundlesCopy = v51;
LABEL_31:

  return v9;
}

@end