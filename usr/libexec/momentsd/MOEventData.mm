@interface MOEventData
+ (id)supportedMetricKeys;
+ (void)defineClassCollections;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOEventData)initWithEvent:(id)event islandID:(id)d subDate:(id)date;
- (void)setValues;
@end

@implementation MOEventData

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken_1 != -1)
  {
    +[MOEventData defineClassCollections];
  }
}

void __37__MOEventData_defineClassCollections__block_invoke(id a1)
{
  v1 = videoBundleIds;
  videoBundleIds = &off_10036DB18;

  v2 = mixedAudioBundleIds;
  mixedAudioBundleIds = &off_10036DB30;

  v3 = poiCategoryDictionary;
  poiCategoryDictionary = &off_10036EAE0;
}

- (MOEventData)initWithEvent:(id)event islandID:(id)d subDate:(id)date
{
  eventCopy = event;
  dCopy = d;
  dateCopy = date;
  v13 = dateCopy;
  if (!eventCopy)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOEventData *)v16 initWithEvent:v17 islandID:v18 subDate:v19, v20, v21, v22, v23];
    }

    v24 = +[NSAssertionHandler currentHandler];
    v25 = v24;
    v26 = @"Invalid parameter not satisfying: event";
    v27 = a2;
    selfCopy3 = self;
    v29 = 98;
    goto LABEL_16;
  }

  if (!dCopy)
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(MOEventData *)v30 initWithEvent:v31 islandID:v32 subDate:v33, v34, v35, v36, v37];
    }

    v24 = +[NSAssertionHandler currentHandler];
    v25 = v24;
    v26 = @"Invalid parameter not satisfying: islandID != nil";
    v27 = a2;
    selfCopy3 = self;
    v29 = 99;
    goto LABEL_16;
  }

  if (!dateCopy)
  {
    v38 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(MOEventData *)v38 initWithEvent:v39 islandID:v40 subDate:v41, v42, v43, v44, v45];
    }

    v24 = +[NSAssertionHandler currentHandler];
    v25 = v24;
    v26 = @"Invalid parameter not satisfying: subDate";
    v27 = a2;
    selfCopy3 = self;
    v29 = 100;
LABEL_16:
    [v24 handleFailureInMethod:v27 object:selfCopy3 file:@"MOEventData.m" lineNumber:v29 description:v26];

    selfCopy4 = 0;
    goto LABEL_17;
  }

  v14 = [(MOEventData *)self initWithLoggingEnabled:1];
  if (v14)
  {
    v14->_provider = [eventCopy provider];
    objc_storeStrong(&v14->_event, event);
    objc_storeStrong(&v14->_islandID, d);
    objc_storeStrong(&v14->_subDate, date);
  }

  self = v14;
  selfCopy4 = self;
LABEL_17:

  return selfCopy4;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects2 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  provider = self->_provider;
  if (provider <= 2)
  {
    if (provider == 1)
    {
      event = MOAnalyticsEventMOEventDataWorkout;
      goto LABEL_13;
    }

    if (provider == 2)
    {
      event = MOAnalyticsEventMOEventDataStorytelling;
      goto LABEL_13;
    }

LABEL_12:
    event = [objc_opt_class() event];
    goto LABEL_13;
  }

  if (provider == 3)
  {
    event = MOAnalyticsEventMOEventDataProactive;
    goto LABEL_13;
  }

  if (provider == 9)
  {
    event = MOAnalyticsEventMOEventDataScreenTime;
    goto LABEL_13;
  }

  if (provider != 4)
  {
    goto LABEL_12;
  }

  event = MOAnalyticsEventMOEventDataRoutine;
LABEL_13:
  [(MOEventData *)self setValues];
  v8.receiver = self;
  v8.super_class = MOEventData;
  return [(MOMetric *)&v8 submitMetricsWithError:error forEvent:event];
}

- (void)setValues
{
  v358 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4B0 gap:&off_10036E4C0];
  v344 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4D0 gap:&off_10036E4E0];
  v3 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4F0 gap:&off_10036E500];
  v341 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4F0 gap:&off_10036E510];
  v343 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4F0 gap:&off_10036E520];
  v342 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4F0 gap:&off_10036E530];
  v339 = +[NSCalendar currentCalendar];
  v4 = [v339 components:764 fromDate:self->_subDate];
  year = [v4 year];
  month = [v4 month];
  v362 = [v4 day];
  weekday = [v4 weekday];
  hour = [v4 hour];
  minute = [v4 minute];
  v338 = v4;
  v10 = (minute * 60.0 + hour * 3600.0 + [v4 second]);
  v11 = [NSNumber numberWithInteger:weekday];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v11 forKeyedSubscript:@"DayIDSubDate"];

  v13 = [NSNumber numberWithLong:v10];
  v340 = v3;
  v14 = v3;
  selfCopy = self;
  v16 = [MOMetric binForNumber:v13 bins:v14];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v16 forKeyedSubscript:@"HourIDSubDate"];

  v18 = [NSNumber numberWithInteger:year];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v18 forKeyedSubscript:@"SubDateYear"];

  v20 = [NSNumber numberWithInteger:month];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v20 forKeyedSubscript:@"SubDateMonth"];

  v22 = [NSNumber numberWithInteger:v362];
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:v22 forKeyedSubscript:@"SubDateDay"];

  v24 = [NSNumber numberWithInteger:minute];
  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:v24 forKeyedSubscript:@"SubDateMinute"];

  v26 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event provider]];
  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:v26 forKeyedSubscript:@"provider"];

  v28 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event category]];
  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:v28 forKeyedSubscript:@"category"];

  subDate = self->_subDate;
  startDate = [(MOEvent *)self->_event startDate];
  [(NSDate *)subDate timeIntervalSinceDate:startDate];
  v32 = [NSNumber numberWithDouble:?];
  v33 = [MOMetric binForNumber:v32 bins:v358];
  metrics9 = [(MOMetric *)self metrics];
  [metrics9 setObject:v33 forKeyedSubscript:@"startTimeID"];

  v35 = self->_subDate;
  endDate = [(MOEvent *)self->_event endDate];
  [(NSDate *)v35 timeIntervalSinceDate:endDate];
  v37 = [NSNumber numberWithDouble:?];
  v38 = [MOMetric binForNumber:v37 bins:v358];
  metrics10 = [(MOMetric *)self metrics];
  [metrics10 setObject:v38 forKeyedSubscript:@"endTimeID"];

  islandID = self->_islandID;
  metrics11 = [(MOMetric *)self metrics];
  [metrics11 setObject:islandID forKeyedSubscript:@"islandID"];

  0x2710 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event hash]% 0x2710];
  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:0x2710 forKeyedSubscript:@"eventID"];

  v44 = [NSNumber numberWithInt:[(NSNumber *)self->_islandID intValue]> 0];
  metrics13 = [(MOMetric *)self metrics];
  [metrics13 setObject:v44 forKeyedSubscript:@"cooccurrenceCheck"];

  endDate2 = [(MOEvent *)self->_event endDate];

  if (endDate2)
  {
    creationDate = [(MOEvent *)self->_event creationDate];

    if (creationDate)
    {
      creationDate2 = [(MOEvent *)self->_event creationDate];
      endDate3 = [(MOEvent *)self->_event endDate];
      [creationDate2 timeIntervalSinceDate:endDate3];
      v51 = v50;

      v52 = [NSNumber numberWithDouble:v51];
      v53 = [MOMetric binForNumber:v52 bins:v344];
      metrics14 = [(MOMetric *)self metrics];
      [metrics14 setObject:v53 forKeyedSubscript:@"sensedLatencyBucketed"];
    }

    sourceCreationDate = [(MOEvent *)self->_event sourceCreationDate];

    if (sourceCreationDate)
    {
      sourceCreationDate2 = [(MOEvent *)self->_event sourceCreationDate];
      endDate4 = [(MOEvent *)self->_event endDate];
      [sourceCreationDate2 timeIntervalSinceDate:endDate4];
      v59 = v58;

      v60 = [NSNumber numberWithDouble:v59];
      v61 = [MOMetric binForNumber:v60 bins:v344];
      metrics15 = [(MOMetric *)self metrics];
      [metrics15 setObject:v61 forKeyedSubscript:@"realLatencyBucketed"];
    }
  }

  provider = self->_provider;
  if (provider <= 2)
  {
    if (provider == 1)
    {
      workoutType = [(MOEvent *)self->_event workoutType];
      v143 = [HKWorkout _workoutActivityTypeFromString:workoutType];

      v144 = [NSNumber numberWithUnsignedInteger:v143];
      metrics16 = [(MOMetric *)self metrics];
      [metrics16 setObject:v144 forKeyedSubscript:@"workoutType"];

      if (objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
      {
        v146 = [NSNumber numberWithUnsignedInteger:v143];
        metrics17 = [(MOMetric *)self metrics];
        [metrics17 setObject:v146 forKeyedSubscript:@"workoutTypeIHA"];
      }

      goto LABEL_186;
    }

    if (provider != 2)
    {
      goto LABEL_186;
    }

    v363 = +[MOPhotoMomentTags getInferenceTagMap];
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    selfCopy2 = self;
    extendedAttributes = [(MOEvent *)self->_event extendedAttributes];
    photoMomentInferences = [extendedAttributes photoMomentInferences];

    v357 = [photoMomentInferences countByEnumeratingWithState:&v372 objects:v385 count:16];
    if (v357)
    {
      v71 = 0;
      obj = photoMomentInferences;
      v354 = *v373;
LABEL_16:
      v72 = 0;
      if (v71 <= 1)
      {
        v73 = 1;
      }

      else
      {
        v73 = v71;
      }

      v359 = (v73 - v71);
      while (1)
      {
        if (*v373 != v354)
        {
          objc_enumerationMutation(obj);
        }

        lowercaseString = [*(*(&v372 + 1) + 8 * v72) lowercaseString];
        v75 = lowercaseString;
        if (v72 == v359)
        {
          break;
        }

        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        v76 = v363;
        v77 = [v76 countByEnumeratingWithState:&v368 objects:v384 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v369;
          while (2)
          {
            for (i = 0; i != v78; i = i + 1)
            {
              if (*v369 != v79)
              {
                objc_enumerationMutation(v76);
              }

              v81 = *(*(&v368 + 1) + 8 * i);
              v82 = [v76 objectForKeyedSubscript:v81];
              lowercaseString2 = [v82 lowercaseString];
              if ([v75 containsString:lowercaseString2])
              {
                metrics18 = [(MOMetric *)selfCopy2 metrics];
                [metrics18 setObject:v81 forKeyedSubscript:@"photoInference"];

                goto LABEL_33;
              }
            }

            v78 = [v76 countByEnumeratingWithState:&v368 objects:v384 count:16];
            if (v78)
            {
              continue;
            }

            break;
          }
        }

LABEL_33:
        ++v71;

        if (++v72 == v357)
        {
          v357 = [obj countByEnumeratingWithState:&v372 objects:v385 count:16];
          if (v357)
          {
            goto LABEL_16;
          }

          if (!v71)
          {
            goto LABEL_89;
          }

LABEL_82:
          v148 = &__kCFBooleanTrue;
          goto LABEL_90;
        }
      }

      goto LABEL_82;
    }

LABEL_89:
    v148 = &__kCFBooleanFalse;
LABEL_90:
    metrics19 = [(MOMetric *)selfCopy2 metrics];
    [metrics19 setObject:v148 forKeyedSubscript:@"photoInferenceMade"];

    metrics20 = [(MOMetric *)selfCopy2 metrics];
    [metrics20 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isShared"];

    metrics21 = [(MOMetric *)selfCopy2 metrics];
    [metrics21 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isFavorited"];

    v141 = v363;
LABEL_91:

    goto LABEL_186;
  }

  if (provider == 3)
  {
    if ([(MOEvent *)self->_event category]== 10)
    {
      v382 = 0u;
      v383 = 0u;
      v380 = 0u;
      v381 = 0u;
      interactions = [(MOEvent *)self->_event interactions];
      v85 = [interactions countByEnumeratingWithState:&v380 objects:v387 count:16];
      if (v85)
      {
        v86 = v85;
        v334 = 0;
        v336 = 0;
        v347 = 0;
        v87 = 0;
        v88 = 0;
        obja = 0;
        v89 = *v381;
        v90 = 0.0;
        v91 = 0.0;
        v92 = 0.0;
        v349 = *v381;
        do
        {
          v93 = 0;
          do
          {
            if (*v381 != v89)
            {
              objc_enumerationMutation(interactions);
            }

            v94 = *(*(&v380 + 1) + 8 * v93);
            bundleId = [v94 bundleId];
            v96 = [bundleId containsString:@"com.apple."];

            if (v96)
            {
              obja = 1;
            }

            else
            {
              bundleId2 = [v94 bundleId];
              v98 = bundleId2 != 0;

              v88 |= v98;
            }

            if (![v94 mechanism] || objc_msgSend(v94, "mechanism") == 8 || objc_msgSend(v94, "mechanism") == 9 || objc_msgSend(v94, "mechanism") == 11 || objc_msgSend(v94, "mechanism") == 16)
            {
              v87 = (v87 + 1);
              endDate5 = [v94 endDate];
              startDate2 = [v94 startDate];
              [endDate5 timeIntervalSinceDate:startDate2];
              v102 = v101;

              v92 = v92 + v102;
            }

            else if ([v94 mechanism] == 12 || objc_msgSend(v94, "mechanism") == 17)
            {
              ++v347;
              endDate6 = [v94 endDate];
              startDate3 = [v94 startDate];
              [endDate6 timeIntervalSinceDate:startDate3];
              v120 = v119;

              v91 = v91 + v120;
            }

            else if ([v94 mechanism] == 1 || objc_msgSend(v94, "mechanism") == 2 || objc_msgSend(v94, "mechanism") == 3 || objc_msgSend(v94, "mechanism") == 4 || objc_msgSend(v94, "mechanism") == 13)
            {
              ++v336;
            }

            else
            {
              ++v334;
            }

            if (![v94 mechanism] || objc_msgSend(v94, "mechanism") == 8 || objc_msgSend(v94, "mechanism") == 9 || objc_msgSend(v94, "mechanism") == 11 || objc_msgSend(v94, "mechanism") == 16 || objc_msgSend(v94, "mechanism") == 12 || objc_msgSend(v94, "mechanism") == 17)
            {
              endDate7 = [v94 endDate];
              startDate4 = [v94 startDate];
              [endDate7 timeIntervalSinceDate:startDate4];
              v106 = v105;

              if (v106 > v90)
              {
                v360 = v88;
                v107 = selfCopy->_subDate;
                [v94 startDate];
                v108 = v364 = v87;
                [(NSDate *)v107 timeIntervalSinceDate:v108];
                v109 = [NSNumber numberWithDouble:?];
                v110 = [MOMetric binForNumber:v109 bins:v358];
                metrics22 = [(MOMetric *)selfCopy metrics];
                [metrics22 setObject:v110 forKeyedSubscript:@"startTimeIDlongestDurationCall"];

                v88 = v360;
                v112 = selfCopy->_subDate;
                v89 = v349;
                endDate8 = [v94 endDate];
                [(NSDate *)v112 timeIntervalSinceDate:endDate8];
                v114 = [NSNumber numberWithDouble:?];
                v115 = [MOMetric binForNumber:v114 bins:v358];
                metrics23 = [(MOMetric *)selfCopy metrics];
                [metrics23 setObject:v115 forKeyedSubscript:@"endTimeIDlongestDurationCall"];

                v87 = v364;
                v90 = v106;
              }
            }

            v93 = v93 + 1;
          }

          while (v86 != v93);
          v121 = [interactions countByEnumeratingWithState:&v380 objects:v387 count:16];
          v86 = v121;
        }

        while (v121);
      }

      else
      {
        v334 = 0;
        v336 = 0;
        v347 = 0;
        v87 = 0;
        v88 = 0;
        obja = 0;
        v91 = 0.0;
        v92 = 0.0;
      }

      v172 = [NSNumber numberWithInt:v87];
      metrics24 = [(MOMetric *)selfCopy metrics];
      [metrics24 setObject:v172 forKeyedSubscript:@"numAudioCalls"];

      v174 = [NSNumber numberWithDouble:v92];
      v175 = [MOMetric binForNumber:v174 bins:v341];
      metrics25 = [(MOMetric *)selfCopy metrics];
      [metrics25 setObject:v175 forKeyedSubscript:@"durationAudioCalls"];

      v177 = [NSNumber numberWithInt:v347];
      metrics26 = [(MOMetric *)selfCopy metrics];
      [metrics26 setObject:v177 forKeyedSubscript:@"numVideoCalls"];

      v179 = [NSNumber numberWithDouble:v91];
      v180 = [MOMetric binForNumber:v179 bins:v341];
      metrics27 = [(MOMetric *)selfCopy metrics];
      [metrics27 setObject:v180 forKeyedSubscript:@"durationVideoCalls"];

      v182 = [NSNumber numberWithInt:v336];
      metrics28 = [(MOMetric *)selfCopy metrics];
      [metrics28 setObject:v182 forKeyedSubscript:@"numTexts"];

      v184 = [NSNumber numberWithInt:v334];
      metrics29 = [(MOMetric *)selfCopy metrics];
      [metrics29 setObject:v184 forKeyedSubscript:@"numOtherContactType"];

      interactionScoredContact = [(MOEvent *)selfCopy->_event interactionScoredContact];
      contact = [interactionScoredContact contact];
      identifier = [contact identifier];
      v189 = [identifier hash] % 0x2710;

      v190 = [NSNumber numberWithUnsignedInteger:v189];
      metrics30 = [(MOMetric *)selfCopy metrics];
      [metrics30 setObject:v190 forKeyedSubscript:@"sigContactPersonID"];

      interactionContactScore = [(MOEvent *)selfCopy->_event interactionContactScore];
      [interactionContactScore floatValue];
      *&v194 = v193 * 100.0;
      v159 = [NSNumber numberWithFloat:v194];

      v195 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v159 intValue]);
      metrics31 = [(MOMetric *)selfCopy metrics];
      [metrics31 setObject:v195 forKeyedSubscript:@"interactionContactScore"];

      interactionContacts = [(MOEvent *)selfCopy->_event interactionContacts];
      v198 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [interactionContacts count]);
      metrics32 = [(MOMetric *)selfCopy metrics];
      [metrics32 setObject:v198 forKeyedSubscript:@"numSigContacts"];

      v200 = v88 ^ 1;
      if (((obja ^ 1) & 1) == 0 && (v200 & 1) == 0)
      {
        metrics33 = [(MOMetric *)selfCopy metrics];
        [metrics33 setObject:&off_100369BC8 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja | v200) & 1) == 0)
      {
        metrics34 = [(MOMetric *)selfCopy metrics];
        [metrics34 setObject:&off_100369BB0 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja ^ 1 | v88) & 1) == 0)
      {
        metrics35 = [(MOMetric *)selfCopy metrics];
        [metrics35 setObject:&off_100369B80 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja | v88) & 1) == 0)
      {
        metrics36 = [(MOMetric *)selfCopy metrics];
        [metrics36 setObject:&off_100369BF8 forKeyedSubscript:@"sourceApp"];
      }
    }

    else
    {
      mediaPlayerBundleId = [(MOEvent *)self->_event mediaPlayerBundleId];
      if (mediaPlayerBundleId)
      {
        v150 = mediaPlayerBundleId;
        mediaPlayerBundleId2 = [(MOEvent *)self->_event mediaPlayerBundleId];
        v152 = [mediaPlayerBundleId2 containsString:@"com.apple."];

        if (v152)
        {
          metrics37 = [(MOMetric *)self metrics];
          [metrics37 setObject:&off_100369B80 forKeyedSubscript:@"sourceApp"];

          goto LABEL_112;
        }
      }

      mediaPlayerBundleId3 = [(MOEvent *)self->_event mediaPlayerBundleId];

      metrics38 = [(MOMetric *)self metrics];
      v159 = metrics38;
      if (mediaPlayerBundleId3)
      {
        v160 = &off_100369BB0;
      }

      else
      {
        v160 = &off_100369BF8;
      }

      [metrics38 setObject:v160 forKeyedSubscript:@"sourceApp"];
    }

LABEL_112:
    mediaGenre = [(MOEvent *)selfCopy->_event mediaGenre];

    if (mediaGenre)
    {
      mediaGenre2 = [(MOEvent *)selfCopy->_event mediaGenre];
      lowercaseString3 = [mediaGenre2 lowercaseString];

      if ([lowercaseString3 containsString:@"alternative"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369B80;
      }

      else if ([lowercaseString3 containsString:@"blues"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369B98;
      }

      else if ([lowercaseString3 containsString:@"children"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369BB0;
      }

      else if (([lowercaseString3 containsString:@"christian"] & 1) != 0 || objc_msgSend(lowercaseString3, "containsString:", @"gospel"))
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369BC8;
      }

      else if ([lowercaseString3 containsString:@"classical"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369BE0;
      }

      else if ([lowercaseString3 containsString:@"comedy"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C10;
      }

      else if ([lowercaseString3 containsString:@"country"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C28;
      }

      else if ([lowercaseString3 containsString:@"dance"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C40;
      }

      else if ([lowercaseString3 containsString:@"electronic"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C58;
      }

      else if ([lowercaseString3 containsString:@"hip"] && objc_msgSend(lowercaseString3, "containsString:", @"hop"))
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C70;
      }

      else if ([lowercaseString3 containsString:@"rap"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369C88;
      }

      else if ([lowercaseString3 containsString:@"jazz"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369CA0;
      }

      else if ([lowercaseString3 containsString:@"pop"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369CB8;
      }

      else if ([lowercaseString3 containsString:@"latin"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369CD0;
      }

      else if ([lowercaseString3 containsString:@"classic"] && objc_msgSend(lowercaseString3, "containsString:", @"rock"))
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369CE8;
      }

      else if ([lowercaseString3 containsString:@"rock"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D00;
      }

      else if (([lowercaseString3 containsString:@"r&b"] & 1) != 0 || objc_msgSend(lowercaseString3, "containsString:", @"rb"))
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D18;
      }

      else if ([lowercaseString3 containsString:@"soul"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D30;
      }

      else if ([lowercaseString3 containsString:@"reggae"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D48;
      }

      else if ([lowercaseString3 containsString:@"singer"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D60;
      }

      else if ([lowercaseString3 containsString:@"songwriter"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D78;
      }

      else if ([lowercaseString3 containsString:@"sound"] && objc_msgSend(lowercaseString3, "containsString:", @"track"))
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369D90;
      }

      else if ([lowercaseString3 containsString:@"worldwide"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369DA8;
      }

      else if ([lowercaseString3 containsString:@"hits"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369DC0;
      }

      else if ([lowercaseString3 containsString:@"oldie"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369DD8;
      }

      else if ([lowercaseString3 containsString:@"indie"])
      {
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        v210 = &off_100369DF0;
      }

      else
      {
        v329 = [lowercaseString3 containsString:@"metal"];
        metrics39 = [(MOMetric *)selfCopy metrics];
        v209 = metrics39;
        if (v329)
        {
          v210 = &off_100369E08;
        }

        else
        {
          v210 = &off_100369E20;
        }
      }

      [metrics39 setObject:v210 forKeyedSubscript:@"mediaGenre"];
    }

    else
    {
      lowercaseString3 = [(MOMetric *)selfCopy metrics];
      [lowercaseString3 setObject:&off_100369BF8 forKeyedSubscript:@"mediaGenre"];
    }

    mediaType = [(MOEvent *)selfCopy->_event mediaType];

    if (mediaType)
    {
      mediaType2 = [(MOEvent *)selfCopy->_event mediaType];
      lowercaseString4 = [mediaType2 lowercaseString];

      if ([lowercaseString4 containsString:@"music"])
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369B80;
      }

      else if ([lowercaseString4 containsString:@"podcast"])
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369B98;
      }

      else if ([lowercaseString4 containsString:@"audio"] && objc_msgSend(lowercaseString4, "containsString:", @"book"))
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369BB0;
      }

      else if ([lowercaseString4 containsString:@"audio"])
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369C10;
      }

      else if ([lowercaseString4 containsString:@"itune"] && objc_msgSend(lowercaseString4, "containsString:", @"radio"))
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369BE0;
      }

      else if ([lowercaseString4 containsString:@"itune"])
      {
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        v217 = &off_100369BC8;
      }

      else
      {
        v328 = [lowercaseString4 containsString:@"video"];
        metrics40 = [(MOMetric *)selfCopy metrics];
        v216 = metrics40;
        if (v328)
        {
          v217 = &off_100369C28;
        }

        else
        {
          v217 = &off_100369C40;
        }
      }

      [metrics40 setObject:v217 forKeyedSubscript:@"mediaType"];
    }

    else
    {
      lowercaseString4 = [(MOMetric *)selfCopy metrics];
      [lowercaseString4 setObject:&off_100369BF8 forKeyedSubscript:@"mediaType"];
    }

    if ([(MOEvent *)selfCopy->_event category]== 4)
    {
      mediaSumTimePlayed = [(MOEvent *)selfCopy->_event mediaSumTimePlayed];
      v219 = [MOMetric binForNumber:mediaSumTimePlayed bins:v343];
      metrics41 = [(MOMetric *)selfCopy metrics];
      [metrics41 setObject:v219 forKeyedSubscript:@"durationLeisureMedia"];
    }

    if ([(MOEvent *)selfCopy->_event category]== 3)
    {
      mediaSumTimePlayed2 = [(MOEvent *)selfCopy->_event mediaSumTimePlayed];
      v222 = [MOMetric binForNumber:mediaSumTimePlayed2 bins:v343];
      metrics42 = [(MOMetric *)selfCopy metrics];
      [metrics42 setObject:v222 forKeyedSubscript:@"durationMediaOnRepeat"];

      mediaRepetitions = [(MOEvent *)selfCopy->_event mediaRepetitions];
      metrics43 = [(MOMetric *)selfCopy metrics];
      [metrics43 setObject:mediaRepetitions forKeyedSubscript:@"mediaRepetitions"];
    }

    if ([(MOEvent *)selfCopy->_event category]!= 6)
    {
      goto LABEL_186;
    }

    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v346 = selfCopy;
    mediaPlaySessions = [(MOEvent *)selfCopy->_event mediaPlaySessions];
    v226 = [mediaPlaySessions countByEnumeratingWithState:&v376 objects:v386 count:16];
    if (!v226)
    {
      v348 = 0;
      v350 = 0;
      v331 = 0;
      v356 = 0;
      v337 = 0;
      objb = 0;
      v361 = 0;
      v228 = 0;
      v231 = 0.0;
      v232 = 0.0;
      v233 = 0.0;
      v234 = 0.0;
      v335 = 0.0;
      v235 = 0.0;
      v236 = 0.0;
      v330 = 0.0;
      goto LABEL_184;
    }

    v227 = v226;
    v348 = 0;
    v350 = 0;
    v331 = 0;
    v356 = 0;
    v337 = 0;
    objb = 0;
    v361 = 0;
    v228 = 0;
    v229 = *v377;
    v230 = 0.0;
    v231 = 0.0;
    v232 = 0.0;
    v233 = 0.0;
    v234 = 0.0;
    v335 = 0.0;
    v235 = 0.0;
    v236 = 0.0;
    v330 = 0.0;
LABEL_151:
    v237 = 0;
    while (1)
    {
      if (*v377 != v229)
      {
        objc_enumerationMutation(mediaPlaySessions);
      }

      v238 = *(*(&v376 + 1) + 8 * v237);
      mediaType3 = [v238 mediaType];
      lowercaseString5 = [mediaType3 lowercaseString];

      if ([lowercaseString5 containsString:@"music"])
      {
        break;
      }

      v241 = mixedAudioBundleIds;
      bundleId3 = [v238 bundleId];
      if ([v241 containsObject:bundleId3])
      {
        artist = [v238 artist];

        if (artist)
        {
          break;
        }
      }

      else
      {
      }

      if (([lowercaseString5 containsString:@"podcast"] & 1) == 0)
      {
        v252 = mixedAudioBundleIds;
        bundleId4 = [v238 bundleId];
        if (([v252 containsObject:bundleId4] & 1) == 0)
        {

LABEL_165:
          if ([lowercaseString5 containsString:@"audio"] && objc_msgSend(lowercaseString5, "containsString:", @"book"))
          {
            ++objb;
            endDate9 = [v238 endDate];
            startDate5 = [v238 startDate];
            [endDate9 timeIntervalSinceDate:startDate5];
            v258 = v257;

            v233 = v233 + v258;
          }

          else if ([lowercaseString5 containsString:@"audio"])
          {
            ++v356;
            endDate10 = [v238 endDate];
            startDate6 = [v238 startDate];
            [endDate10 timeIntervalSinceDate:startDate6];
            v262 = v261;

            v235 = v235 + v262;
          }

          else if ([lowercaseString5 containsString:@"itune"] && objc_msgSend(lowercaseString5, "containsString:", @"radio"))
          {
            ++v337;
            endDate11 = [v238 endDate];
            startDate7 = [v238 startDate];
            [endDate11 timeIntervalSinceDate:startDate7];
            v266 = v265;

            v335 = v335 + v266;
          }

          else if ([lowercaseString5 containsString:@"itune"])
          {
            ++v350;
            endDate12 = [v238 endDate];
            startDate8 = [v238 startDate];
            [endDate12 timeIntervalSinceDate:startDate8];
            v270 = v269;

            v234 = v234 + v270;
          }

          else if (([lowercaseString5 containsString:@"video"] & 1) != 0 || (v271 = videoBundleIds, objc_msgSend(v238, "bundleId"), v272 = objc_claimAutoreleasedReturnValue(), LODWORD(v271) = objc_msgSend(v271, "containsObject:", v272), v272, v271))
          {
            ++v348;
            endDate13 = [v238 endDate];
            startDate9 = [v238 startDate];
            [endDate13 timeIntervalSinceDate:startDate9];
            v276 = v275;

            v236 = v236 + v276;
            if (v276 > v230)
            {
              v277 = v346->_subDate;
              startDate10 = [v238 startDate];
              [(NSDate *)v277 timeIntervalSinceDate:startDate10];
              v278 = [NSNumber numberWithDouble:?];
              v279 = [MOMetric binForNumber:v278 bins:v358];
              metrics44 = [(MOMetric *)v346 metrics];
              [metrics44 setObject:v279 forKeyedSubscript:@"startTimeIDlongestDurationVideo"];

              v281 = v346->_subDate;
              endDate14 = [v238 endDate];
              [(NSDate *)v281 timeIntervalSinceDate:endDate14];
              v282 = [NSNumber numberWithDouble:?];
              v283 = [MOMetric binForNumber:v282 bins:v358];
              metrics45 = [(MOMetric *)v346 metrics];
              [metrics45 setObject:v283 forKeyedSubscript:@"endTimeIDlongestDurationVideo"];

              v230 = v276;
            }
          }

          else
          {
            ++v331;
            endDate15 = [v238 endDate];
            startDate11 = [v238 startDate];
            [endDate15 timeIntervalSinceDate:startDate11];
            v288 = v287;

            v330 = v330 + v288;
          }

          goto LABEL_180;
        }

        artist2 = [v238 artist];

        if (artist2)
        {
          goto LABEL_165;
        }
      }

      ++v361;
      endDate16 = [v238 endDate];
      startDate12 = [v238 startDate];
      [endDate16 timeIntervalSinceDate:startDate12];
      v251 = v250;

      v232 = v232 + v251;
LABEL_180:

      if (v227 == ++v237)
      {
        v227 = [mediaPlaySessions countByEnumeratingWithState:&v376 objects:v386 count:16];
        if (!v227)
        {
LABEL_184:

          v289 = [NSNumber numberWithInt:v228];
          metrics46 = [(MOMetric *)v346 metrics];
          [metrics46 setObject:v289 forKeyedSubscript:@"numMusic"];

          v291 = [NSNumber numberWithDouble:v231];
          v292 = [MOMetric binForNumber:v291 bins:v343];
          metrics47 = [(MOMetric *)v346 metrics];
          [metrics47 setObject:v292 forKeyedSubscript:@"durationMusic"];

          v294 = [NSNumber numberWithInt:v361];
          metrics48 = [(MOMetric *)v346 metrics];
          [metrics48 setObject:v294 forKeyedSubscript:@"numPodcast"];

          v296 = [NSNumber numberWithDouble:v232];
          v297 = [MOMetric binForNumber:v296 bins:v343];
          metrics49 = [(MOMetric *)v346 metrics];
          [metrics49 setObject:v297 forKeyedSubscript:@"durationPodcast"];

          v299 = [NSNumber numberWithInt:objb];
          metrics50 = [(MOMetric *)v346 metrics];
          [metrics50 setObject:v299 forKeyedSubscript:@"numAudioBook"];

          v301 = [NSNumber numberWithDouble:v233];
          v302 = [MOMetric binForNumber:v301 bins:v343];
          metrics51 = [(MOMetric *)v346 metrics];
          [metrics51 setObject:v302 forKeyedSubscript:@"durationAudioBook"];

          v304 = [NSNumber numberWithInt:v356];
          metrics52 = [(MOMetric *)v346 metrics];
          [metrics52 setObject:v304 forKeyedSubscript:@"numAudio"];

          v306 = [NSNumber numberWithDouble:v235];
          v307 = [MOMetric binForNumber:v306 bins:v343];
          metrics53 = [(MOMetric *)v346 metrics];
          [metrics53 setObject:v307 forKeyedSubscript:@"durationAudio"];

          v309 = [NSNumber numberWithInt:v337];
          metrics54 = [(MOMetric *)v346 metrics];
          [metrics54 setObject:v309 forKeyedSubscript:@"numITunesRadio"];

          v311 = [NSNumber numberWithDouble:v335];
          v312 = [MOMetric binForNumber:v311 bins:v343];
          metrics55 = [(MOMetric *)v346 metrics];
          [metrics55 setObject:v312 forKeyedSubscript:@"durationITunesRadio"];

          v314 = [NSNumber numberWithInt:v350];
          metrics56 = [(MOMetric *)v346 metrics];
          [metrics56 setObject:v314 forKeyedSubscript:@"numITunesU"];

          v316 = [NSNumber numberWithDouble:v234];
          v317 = [MOMetric binForNumber:v316 bins:v343];
          metrics57 = [(MOMetric *)v346 metrics];
          [metrics57 setObject:v317 forKeyedSubscript:@"durationITunesU"];

          v319 = [NSNumber numberWithInt:v348];
          metrics58 = [(MOMetric *)v346 metrics];
          [metrics58 setObject:v319 forKeyedSubscript:@"numVideo"];

          v321 = [NSNumber numberWithDouble:v236];
          v322 = [MOMetric binForNumber:v321 bins:v343];
          metrics59 = [(MOMetric *)v346 metrics];
          [metrics59 setObject:v322 forKeyedSubscript:@"durationVideo"];

          v324 = [NSNumber numberWithInt:v331];
          metrics60 = [(MOMetric *)v346 metrics];
          [metrics60 setObject:v324 forKeyedSubscript:@"numOther"];

          lowercaseString6 = [NSNumber numberWithDouble:v330];
          v326 = [MOMetric binForNumber:lowercaseString6 bins:v343];
          metrics61 = [(MOMetric *)v346 metrics];
          [metrics61 setObject:v326 forKeyedSubscript:@"durationOther"];

          goto LABEL_185;
        }

        goto LABEL_151;
      }
    }

    v228 = (v228 + 1);
    endDate17 = [v238 endDate];
    startDate13 = [v238 startDate];
    [endDate17 timeIntervalSinceDate:startDate13];
    v247 = v246;

    v231 = v231 + v247;
    goto LABEL_180;
  }

  if (provider == 9)
  {
    screenTimeEvent = [(MOEvent *)self->_event screenTimeEvent];
    longestActivity = [screenTimeEvent longestActivity];

    if (longestActivity)
    {
      v124 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4B0 gap:&off_10036E510];
      v125 = self->_subDate;
      screenTimeEvent2 = [(MOEvent *)self->_event screenTimeEvent];
      longestActivity2 = [screenTimeEvent2 longestActivity];
      startDate14 = [longestActivity2 startDate];
      [(NSDate *)v125 timeIntervalSinceDate:startDate14];
      v129 = [NSNumber numberWithDouble:?];
      v130 = [MOMetric binForNumber:v129 bins:v124];
      metrics62 = [(MOMetric *)self metrics];
      [metrics62 setObject:v130 forKeyedSubscript:@"screenTimeStartTimeIDlongestActivity"];

      v132 = self->_subDate;
      screenTimeEvent3 = [(MOEvent *)self->_event screenTimeEvent];
      longestActivity3 = [screenTimeEvent3 longestActivity];
      endDate18 = [longestActivity3 endDate];
      [(NSDate *)v132 timeIntervalSinceDate:endDate18];
      v136 = [NSNumber numberWithDouble:?];
      v137 = [MOMetric binForNumber:v136 bins:v124];
      metrics63 = [(MOMetric *)self metrics];
      [metrics63 setObject:v137 forKeyedSubscript:@"screenTimeEndTimeIDlongestActivity"];
    }

    screenTimeEvent4 = [(MOEvent *)self->_event screenTimeEvent];
    appCategoryUsages = [screenTimeEvent4 appCategoryUsages];
    v366[0] = _NSConcreteStackBlock;
    v366[1] = 3221225472;
    v366[2] = __24__MOEventData_setValues__block_invoke;
    v366[3] = &unk_100338770;
    v366[4] = self;
    v367 = v342;
    [appCategoryUsages enumerateObjectsUsingBlock:v366];

    v141 = v367;
    goto LABEL_91;
  }

  if (provider != 4)
  {
    goto LABEL_186;
  }

  placeName = [(MOEvent *)self->_event placeName];
  lowercaseString6 = [placeName lowercaseString];

  if ([lowercaseString6 containsString:@"home"])
  {
    metrics64 = [(MOMetric *)self metrics];
    v67 = metrics64;
    v68 = &off_100369B80;
  }

  else if ([lowercaseString6 containsString:@"work"])
  {
    metrics64 = [(MOMetric *)self metrics];
    v67 = metrics64;
    v68 = &off_100369B98;
  }

  else if ([lowercaseString6 containsString:@"gym"])
  {
    metrics64 = [(MOMetric *)self metrics];
    v67 = metrics64;
    v68 = &off_100369BB0;
  }

  else
  {
    v211 = [lowercaseString6 containsString:@"school"];
    metrics64 = [(MOMetric *)self metrics];
    v67 = metrics64;
    if (!v211)
    {
      [metrics64 setObject:&off_100369BE0 forKeyedSubscript:@"visitCategory"];
      v161 = &__kCFBooleanFalse;
      goto LABEL_97;
    }

    v68 = &off_100369BC8;
  }

  [metrics64 setObject:v68 forKeyedSubscript:@"visitCategory"];
  v161 = &__kCFBooleanTrue;
LABEL_97:

  metrics65 = [(MOMetric *)self metrics];
  [metrics65 setObject:v161 forKeyedSubscript:@"visitLOI"];

  v163 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event mode]];
  metrics66 = [(MOMetric *)self metrics];
  [metrics66 setObject:v163 forKeyedSubscript:@"visitMode"];

  v165 = poiCategoryDictionary;
  poiCategory = [(MOEvent *)self->_event poiCategory];
  v167 = [v165 objectForKeyedSubscript:poiCategory];

  if (v167)
  {
    v168 = poiCategoryDictionary;
    poiCategory2 = [(MOEvent *)self->_event poiCategory];
    v170 = [v168 objectForKeyedSubscript:poiCategory2];
    metrics67 = [(MOMetric *)self metrics];
    [metrics67 setObject:v170 forKeyedSubscript:@"visitPOI"];
  }

LABEL_185:

LABEL_186:
}

uint64_t __24__MOEventData_setValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 appCategory];
    if (v4 <= 0x11)
    {
      v5 = *(&off_100338E10 + v4);
      v6 = [v10 duration];
      v7 = [MOMetric binForNumber:v6 bins:*(a1 + 40)];
      v8 = [*(a1 + 32) metrics];
      [v8 setObject:v7 forKeyedSubscript:v5];
    }
  }

  return _objc_release_x1();
}

@end