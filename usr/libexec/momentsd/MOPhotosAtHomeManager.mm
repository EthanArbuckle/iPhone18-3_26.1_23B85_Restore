@interface MOPhotosAtHomeManager
+ (id)chooseResourcesWithGoodPhotos:(id)photos withPhotoCurationScore:(float)score andFaceCount:(unint64_t)count numPhotosThreshold:(unint64_t)threshold;
- (MOPhotosAtHomeManager)initWithUniverse:(id)universe;
- (void)_performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
- (void)performAnnotationWithEvents:(id)events withPatternEvents:(id)patternEvents withBundleWindowStart:(id)start withBundleWindowEnd:(id)end handler:(id)handler;
@end

@implementation MOPhotosAtHomeManager

- (MOPhotosAtHomeManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v25.receiver = self;
  v25.super_class = MOPhotosAtHomeManager;
  v6 = [(MOPhotosAtHomeManager *)&v25 init];
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
  queue = [(MOPhotosAtHomeManager *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __121__MOPhotosAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
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

void __121__MOPhotosAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __121__MOPhotosAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2;
  v6[3] = &unk_1003369E0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 _performAnnotationWithEvents:v2 withPatternEvents:v3 withBundleWindowStart:v4 withBundleWindowEnd:v5 handler:v6];
}

uint64_t __121__MOPhotosAtHomeManager_performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_2(uint64_t a1)
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
  v140 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
  v139 = [NSPredicate predicateWithFormat:v140, @"category", 1, @"placeUserType", 1];
  v138 = [eventsCopy filteredArrayUsingPredicate:v139];
  v130 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v223 = v130;
  v11 = [NSArray arrayWithObjects:&v223 count:1];
  v149 = [v138 sortedArrayUsingDescriptors:v11];

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = [v149 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "P@H: Found %lu visit events", buf, 0xCu);
  }

  if ([v149 count])
  {
    v128 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
    v127 = [eventsCopy filteredArrayUsingPredicate:v128];
    v126 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
    v145 = [v127 filteredArrayUsingPredicate:v126];
    v125 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
    v146 = [eventsCopy filteredArrayUsingPredicate:v125];
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v146 count];
      *buf = 134217984;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "P@H: Found %lu spotlight invite events", buf, 0xCu);
    }

    v143 = objc_opt_new();
    v141 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v124 = startCopy;
    v134 = [v141 components:28 fromDate:?];
    [v134 setHour:3];
    v133 = [v141 dateFromComponents:v134];
    v156 = v133;
    if ([v133 isBeforeDate:v124])
    {
      v156 = [NSDate dateWithTimeInterval:v133 sinceDate:86400.0];
    }

    v123 = endCopy;
    v132 = [v141 components:28 fromDate:?];
    [v132 setHour:3];
    v131 = [v141 dateFromComponents:v132];
    v148 = v131;
    if ([v131 isAfterDate:v123])
    {
      v148 = [NSDate dateWithTimeInterval:v131 sinceDate:-86400.0];
    }

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      firstObject = [v149 firstObject];
      startDate = [firstObject startDate];
      lastObject = [v149 lastObject];
      endDate = [lastObject endDate];
      *buf = 138412546;
      *&buf[4] = startDate;
      *&buf[12] = 2112;
      *&buf[14] = endDate;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "P@H: Source event time span: range start %@, range end %@", buf, 0x16u);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v156;
      *&buf[12] = 2112;
      *&buf[14] = v148;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "P@H: Time span for bundling: range start %@, range end %@", buf, 0x16u);
    }

    if ([v148 isOnOrBefore:v156])
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v156;
        *&buf[12] = 2112;
        *&buf[14] = v148;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "P@H: Range end is on or before range start so exiting bundling: range start %@, range end %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v220 = __Block_byref_object_copy__41;
      v221 = __Block_byref_object_dispose__41;
      v222 = objc_opt_new();
      v206 = 0;
      v207 = &v206;
      v208 = 0x3032000000;
      v209 = __Block_byref_object_copy__41;
      v210 = __Block_byref_object_dispose__41;
      v211 = objc_opt_new();
      v200 = 0;
      v201 = &v200;
      v202 = 0x3032000000;
      v203 = __Block_byref_object_copy__41;
      v204 = __Block_byref_object_dispose__41;
      v205 = objc_opt_new();
      v198[0] = 0;
      v198[1] = v198;
      v198[2] = 0x2020000000;
      v199 = 0;
      v194 = 0;
      v195 = &v194;
      v196 = 0x2020000000;
      v197 = 0;
      v155 = [NSDate dateWithTimeInterval:v156 sinceDate:86400.0];
      while ([v155 isOnOrBefore:v148])
      {
        parameters = [(MOPhotosAtHomeManager *)self parameters];
        [parameters photosDurationAtHomeSecThreshold];
        v24 = v23;
        v186[0] = _NSConcreteStackBlock;
        v186[1] = 3221225472;
        v186[2] = __122__MOPhotosAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke;
        v186[3] = &unk_10033F470;
        v189 = v198;
        v190 = buf;
        v25 = v156;
        v187 = v25;
        v191 = &v206;
        v26 = v155;
        v188 = v26;
        v192 = &v200;
        v193 = &v194;
        [MOContextAnnotationUtilities filterEventsIntersectingDateRange:v149 rangeStart:v25 rangeEnd:v26 eventInterval:v186 handler:v24];

        v156 = v26;
        v155 = [NSDate dateWithTimeInterval:v156 sinceDate:86400.0];
      }

      v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v201[5] count];
        *v215 = 134217984;
        *&v215[4] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "P@H: Built %lu grouped events", v215, 0xCu);
      }

      if ([v201[5] count])
      {
        v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v201[5] count];
          firstObject2 = [*(*&buf[8] + 40) firstObject];
          lastObject2 = [v207[5] lastObject];
          *v215 = 134218498;
          *&v215[4] = v30;
          *&v215[12] = 2112;
          *&v215[14] = firstObject2;
          *&v215[22] = 2112;
          v216 = lastObject2;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "P@H: Grouped %lu events for range %@ to %@", v215, 0x20u);
        }

        fUniverse = [(MOPhotosAtHomeManager *)self fUniverse];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v144 = [fUniverse getService:v35];

        for (i = 0; [v201[5] count] > i; i = v147 + 1)
        {
          v157 = [v201[5] objectAtIndex:i];
          v153 = [*(*&buf[8] + 40) objectAtIndex:i];
          v152 = [v207[5] objectAtIndex:i];
          v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          v147 = i;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *v215 = 138412546;
            *&v215[4] = v153;
            *&v215[12] = 2112;
            *&v215[14] = v152;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "P@H: Annotating grouped events for range %@ to %@", v215, 0x16u);
          }

          v38 = [MOEventBundle alloc];
          v39 = +[NSUUID UUID];
          v40 = +[NSDate date];
          v41 = [(MOEventBundle *)v38 initWithBundleIdentifier:v39 creationDate:v40];

          [(MOEventBundle *)v41 setInterfaceType:7];
          [(MOEventBundle *)v41 setStartDate:v153];
          [(MOEventBundle *)v41 setEndDate:v152];
          startDate2 = [(MOEventBundle *)v41 startDate];
          v43 = [MOTime timeForDate:startDate2 timeZoneManager:v144];
          [(MOEventBundle *)v41 setTime:v43];

          [(MOEventBundle *)v41 setPromptLanguage:@"Photos at Home"];
          v44 = [[MOAction alloc] initWithActionName:@"Photos at Home" actionType:1 actionSubtype:8];
          [(MOEventBundle *)v41 setAction:v44];

          firstObject3 = [v157 firstObject];
          eventIdentifier = [firstObject3 eventIdentifier];
          action = [(MOEventBundle *)v41 action];
          [action setSourceEventIdentifier:eventIdentifier];

          v48 = [MOPlace alloc];
          firstObject4 = [v157 firstObject];
          location = [firstObject4 location];
          v51 = [(MOPlace *)v48 initWithPlaceName:@"Home" placeType:1 placeUserType:1 location:location locationMode:1 poiCategory:0 categoryMuid:-1.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0.0 familiarityIndexLOI:0];
          [(MOEventBundle *)v41 setPlace:v51];

          firstObject5 = [v157 firstObject];
          eventIdentifier2 = [firstObject5 eventIdentifier];
          place = [(MOEventBundle *)v41 place];
          [place setSourceEventIdentifier:eventIdentifier2];

          [(MOEventBundle *)v41 setEvents:v157];
          [(MOEventBundle *)v41 setTimeAtHomeSubType:2];
          [(MOEventBundle *)v41 setBundleSubType:502];
          [(MOEventBundle *)v41 setBundleSuperType:5];
          startDate3 = [(MOEventBundle *)v41 startDate];
          endDate2 = [(MOEventBundle *)v41 endDate];
          v151 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate3 endDate:endDate2];

          v150 = [v145 filteredArrayUsingPredicate:v151];
          parameters2 = [(MOPhotosAtHomeManager *)self parameters];
          [parameters2 emotionAttachmentBundleDurationThreshold];
          *&v58 = v58;
          v154 = [MOContextAnnotationUtilities annotateEventBundle:v41 dateIntervalEvents:v157 emotionEvents:v150 bundleDurationThreshold:v58];

          [(MOEventBundle *)v41 addEvents:v154];
          v59 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *v215 = 138412546;
            *&v215[4] = v153;
            *&v215[12] = 2112;
            *&v215[14] = v152;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "P@H: Created bundle for range %@ to %@", v215, 0x16u);
          }

          *v215 = 0;
          *&v215[8] = v215;
          *&v215[16] = 0x3032000000;
          v216 = __Block_byref_object_copy__41;
          v217 = __Block_byref_object_dispose__41;
          v218 = objc_opt_new();
          v182 = 0;
          v183 = &v182;
          v184 = 0x2020000000;
          v185 = 0;
          v176 = 0;
          v177 = &v176;
          v178 = 0x3032000000;
          v179 = __Block_byref_object_copy__41;
          v180 = __Block_byref_object_dispose__41;
          v181 = objc_opt_new();
          v170 = 0;
          v171 = &v170;
          v172 = 0x3032000000;
          v173 = __Block_byref_object_copy__41;
          v174 = __Block_byref_object_dispose__41;
          v175 = 0;
          v164 = 0;
          v165 = &v164;
          v166 = 0x3032000000;
          v167 = __Block_byref_object_copy__41;
          v168 = __Block_byref_object_dispose__41;
          v169 = 0;
          fUniverse = self->_fUniverse;
          v163[0] = _NSConcreteStackBlock;
          v163[1] = 3221225472;
          v163[2] = __122__MOPhotosAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_161;
          v163[3] = &unk_1003386B8;
          v163[4] = v215;
          v163[5] = &v182;
          v163[6] = &v176;
          v163[7] = &v170;
          v163[8] = &v164;
          [MOContextAnnotationUtilities addPhotoResources:v41 universe:fUniverse handler:v163];
          v61 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = v183[3];
            *v213 = 134217984;
            v214 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "P@H,photoSource,%lu", v213, 0xCu);
          }

          [(MOEventBundle *)v41 setPhotoSource:v183[3]];
          v63 = [v177[5] copy];
          [(MOEventBundle *)v41 setPhotoTraits:v63];

          v64 = *(*&v215[8] + 40);
          parameters3 = [(MOPhotosAtHomeManager *)self parameters];
          [parameters3 photosCurationScoreThreshold];
          v67 = v66;
          parameters4 = [(MOPhotosAtHomeManager *)self parameters];
          photosFaceCountThreshold = [parameters4 photosFaceCountThreshold];
          parameters5 = [(MOPhotosAtHomeManager *)self parameters];
          photosCountThreshold = [parameters5 photosCountThreshold];
          *&v72 = v67;
          v73 = [MOPhotosAtHomeManager chooseResourcesWithGoodPhotos:v64 withPhotoCurationScore:photosFaceCountThreshold andFaceCount:photosCountThreshold numPhotosThreshold:v72];
          [(MOEventBundle *)v41 setResources:v73];

          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          resources = [(MOEventBundle *)v41 resources];
          v75 = [resources countByEnumeratingWithState:&v159 objects:v212 count:16];
          if (v75)
          {
            v76 = *v160;
            v77 = 0.0;
            do
            {
              for (j = 0; j != v75; j = j + 1)
              {
                if (*v160 != v76)
                {
                  objc_enumerationMutation(resources);
                }

                photoCurationScore = [*(*(&v159 + 1) + 8 * j) photoCurationScore];
                [photoCurationScore floatValue];
                v81 = v80;

                v77 = v77 + v81;
              }

              v75 = [resources countByEnumeratingWithState:&v159 objects:v212 count:16];
            }

            while (v75);
          }

          else
          {
            v77 = 0.0;
          }

          resources2 = [(MOEventBundle *)v41 resources];
          v83 = [resources2 count] == 0;

          if (!v83)
          {
            resources3 = [(MOEventBundle *)v41 resources];
            v86 = [resources3 count];

            v77 = v77 / v86;
          }

          *&v84 = v77;
          v87 = [NSNumber numberWithFloat:v84];
          [(MOEventBundle *)v41 addMetaDataForRankForKey:@"PhotosAtHomeCurationScore" value:v87];

          LODWORD(v88) = *(v195 + 6);
          v89 = [NSNumber numberWithFloat:v88];
          [(MOEventBundle *)v41 addMetaDataForRankForKey:@"TimeAtHomeDuration" value:v89];

          if ([v154 count])
          {
            [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v41 withEmotionEvents:v154];
            [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v41 withEmotionEvents:v154];
          }

          startDate4 = [(MOEventBundle *)v41 startDate];
          endDate3 = [(MOEventBundle *)v41 endDate];
          v92 = [MOContextAnnotationUtilities predicateOfInviteEventsWithStartDate:startDate4 endDate:endDate3];

          v93 = [v146 filteredArrayUsingPredicate:v92];
          parameters6 = [(MOPhotosAtHomeManager *)self parameters];
          [parameters6 timeAtHomeInviteEventTimeOverlapWithVisitsThreshold];
          v96 = v95;
          parameters7 = [(MOPhotosAtHomeManager *)self parameters];
          [parameters7 timeAtHomeInviteEventDistanceFromVisitEventsThreshold];
          v99 = v98;
          parameters8 = [(MOPhotosAtHomeManager *)self parameters];
          [parameters8 timeAtHomeInviteEventPhotoTimeThreshold];
          LODWORD(v101) = v99;
          v103 = [MOContextAnnotationUtilities annotateEventBundle:v41 visitEvents:v157 inviteEvents:v93 withTimeThreshold:v96 withDistanceThreshold:v101 withPhotoTimeThreshold:v102];

          if (v103)
          {
            v104 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
            {
              *v213 = 138412290;
              v214 = v103;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "P@H: found invite event overlapping bundle, %@", v213, 0xCu);
            }

            [(MOEventBundle *)v41 addEvent:v103];
            parameters9 = [(MOPhotosAtHomeManager *)self parameters];
            timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck = [parameters9 timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck];
            parameters10 = [(MOPhotosAtHomeManager *)self parameters];
            +[MOContextAnnotationUtilities removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:](MOContextAnnotationUtilities, "removePhotoResourcesFarFromInvite:inviteEvent:withStandardTimeThreshold:missingEndDateTimeThreshold:", v41, v103, timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck, [parameters10 timeAtHomeInviteEventMissingEndDateTimeThresholdForPhotoCheck]);
          }

          v108 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 2];
          resources4 = [(MOEventBundle *)v41 resources];
          v110 = [resources4 filteredArrayUsingPredicate:v108];

          v111 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 16];
          resources5 = [(MOEventBundle *)v41 resources];
          v113 = [resources5 filteredArrayUsingPredicate:v111];

          [MOContextAnnotationUtilities assetPriorityScoringForTimeAtHomeBundlesWithBundle:v41 withMediaResources:&__NSArray0__struct withPhotoResources:v110 withEmotionResources:v113];
          if (v103)
          {
            [MOContextAnnotationUtilities addInviteResourceForBundle:v41 withInviteEvent:v103];
          }

          if (v171[5] && v165[5])
          {
            [(MOEventBundle *)v41 setStartDate:?];
            v114 = v171[5];
            if (v114 == v165[5])
            {
              v115 = [v114 dateByAddingTimeInterval:5.0];
              [(MOEventBundle *)v41 setEndDate:v115];
            }

            else
            {
              [(MOEventBundle *)v41 setEndDate:?];
            }
          }

          resources6 = [(MOEventBundle *)v41 resources];
          v117 = [resources6 count] == 0;

          if (!v117)
          {
            [v143 addObject:v41];
          }

          _Block_object_dispose(&v164, 8);
          _Block_object_dispose(&v170, 8);

          _Block_object_dispose(&v176, 8);
          _Block_object_dispose(&v182, 8);
          _Block_object_dispose(v215, 8);
        }

        v118 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
        {
          v119 = objc_opt_class();
          v120 = NSStringFromClass(v119);
          v121 = [v143 count];
          *v215 = 138412546;
          *&v215[4] = v120;
          *&v215[12] = 2048;
          *&v215[14] = v121;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "P@H(%@): Event Bundles, %lu", v215, 0x16u);
        }

        v122 = [v143 copy];
        handlerCopy[2](handlerCopy, v122, 0);
      }

      else
      {
        handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
      }

      _Block_object_dispose(&v194, 8);
      _Block_object_dispose(v198, 8);
      _Block_object_dispose(&v200, 8);

      _Block_object_dispose(&v206, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

void __122__MOPhotosAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke(void *a1, void *a2, char a3, float a4)
{
  v7 = a2;
  *(*(a1[6] + 8) + 24) = a3 ^ 1;
  [*(*(a1[7] + 8) + 40) addObject:a1[4]];
  [*(*(a1[8] + 8) + 40) addObject:a1[5]];
  [*(*(a1[9] + 8) + 40) addObject:v7];
  *(*(a1[10] + 8) + 24) = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 count];
    v10 = a1[4];
    v11 = a1[5];
    v12 = 134218498;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "P@H: Grouped %lu events for range %@ to %@", &v12, 0x20u);
  }
}

void __122__MOPhotosAtHomeManager__performAnnotationWithEvents_withPatternEvents_withBundleWindowStart_withBundleWindowEnd_handler___block_invoke_161(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
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
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "P@H, photoSource, %lu, startDate, %@, endDate, %@, count, %lu", &v18, 0x2Au);
  }
}

+ (id)chooseResourcesWithGoodPhotos:(id)photos withPhotoCurationScore:(float)score andFaceCount:(unint64_t)count numPhotosThreshold:(unint64_t)threshold
{
  photosCopy = photos;
  v9 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = photosCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        photoCurationScore = [v15 photoCurationScore];
        [photoCurationScore floatValue];
        v18 = v17;

        if (v18 >= score || [v15 photoFaceCount] >= count)
        {
          [v9 addObject:v15];
        }

        v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          photoFaceCount = [v15 photoFaceCount];
          *buf = 134218240;
          v29 = v18;
          v30 = 2048;
          v31 = photoFaceCount;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "P@H: Photo curationScore, %f, faceCount, %lu", buf, 0x16u);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v12);
  }

  if ([v9 count] >= threshold)
  {
    v21 = v9;
  }

  else
  {
    v21 = &__NSArray0__struct;
  }

  return v21;
}

@end