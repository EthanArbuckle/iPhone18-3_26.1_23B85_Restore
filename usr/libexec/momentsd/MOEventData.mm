@interface MOEventData
+ (id)supportedMetricKeys;
+ (void)defineClassCollections;
- (BOOL)submitMetricsWithError:(id *)a3;
- (MOEventData)initWithEvent:(id)a3 islandID:(id)a4 subDate:(id)a5;
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

- (MOEventData)initWithEvent:(id)a3 islandID:(id)a4 subDate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
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
    v28 = self;
    v29 = 98;
    goto LABEL_16;
  }

  if (!v11)
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
    v28 = self;
    v29 = 99;
    goto LABEL_16;
  }

  if (!v12)
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
    v28 = self;
    v29 = 100;
LABEL_16:
    [v24 handleFailureInMethod:v27 object:v28 file:@"MOEventData.m" lineNumber:v29 description:v26];

    v15 = 0;
    goto LABEL_17;
  }

  v14 = [(MOEventData *)self initWithLoggingEnabled:1];
  if (v14)
  {
    v14->_provider = [v10 provider];
    objc_storeStrong(&v14->_event, a3);
    objc_storeStrong(&v14->_islandID, a4);
    objc_storeStrong(&v14->_subDate, a5);
  }

  self = v14;
  v15 = self;
LABEL_17:

  return v15;
}

+ (id)supportedMetricKeys
{
  v2 = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:v2];

  v4 = [objc_opt_class() BOOLeanKeys];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [objc_opt_class() bucketedKeys];
  v7 = [v6 allObjects];
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  provider = self->_provider;
  if (provider <= 2)
  {
    if (provider == 1)
    {
      v6 = MOAnalyticsEventMOEventDataWorkout;
      goto LABEL_13;
    }

    if (provider == 2)
    {
      v6 = MOAnalyticsEventMOEventDataStorytelling;
      goto LABEL_13;
    }

LABEL_12:
    v6 = [objc_opt_class() event];
    goto LABEL_13;
  }

  if (provider == 3)
  {
    v6 = MOAnalyticsEventMOEventDataProactive;
    goto LABEL_13;
  }

  if (provider == 9)
  {
    v6 = MOAnalyticsEventMOEventDataScreenTime;
    goto LABEL_13;
  }

  if (provider != 4)
  {
    goto LABEL_12;
  }

  v6 = MOAnalyticsEventMOEventDataRoutine;
LABEL_13:
  [(MOEventData *)self setValues];
  v8.receiver = self;
  v8.super_class = MOEventData;
  return [(MOMetric *)&v8 submitMetricsWithError:a3 forEvent:v6];
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
  v5 = [v4 year];
  v6 = [v4 month];
  v362 = [v4 day];
  v7 = [v4 weekday];
  v8 = [v4 hour];
  v9 = [v4 minute];
  v338 = v4;
  v10 = (v9 * 60.0 + v8 * 3600.0 + [v4 second]);
  v11 = [NSNumber numberWithInteger:v7];
  v12 = [(MOMetric *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"DayIDSubDate"];

  v13 = [NSNumber numberWithLong:v10];
  v340 = v3;
  v14 = v3;
  v15 = self;
  v16 = [MOMetric binForNumber:v13 bins:v14];
  v17 = [(MOMetric *)self metrics];
  [v17 setObject:v16 forKeyedSubscript:@"HourIDSubDate"];

  v18 = [NSNumber numberWithInteger:v5];
  v19 = [(MOMetric *)self metrics];
  [v19 setObject:v18 forKeyedSubscript:@"SubDateYear"];

  v20 = [NSNumber numberWithInteger:v6];
  v21 = [(MOMetric *)self metrics];
  [v21 setObject:v20 forKeyedSubscript:@"SubDateMonth"];

  v22 = [NSNumber numberWithInteger:v362];
  v23 = [(MOMetric *)self metrics];
  [v23 setObject:v22 forKeyedSubscript:@"SubDateDay"];

  v24 = [NSNumber numberWithInteger:v9];
  v25 = [(MOMetric *)self metrics];
  [v25 setObject:v24 forKeyedSubscript:@"SubDateMinute"];

  v26 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event provider]];
  v27 = [(MOMetric *)self metrics];
  [v27 setObject:v26 forKeyedSubscript:@"provider"];

  v28 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event category]];
  v29 = [(MOMetric *)self metrics];
  [v29 setObject:v28 forKeyedSubscript:@"category"];

  subDate = self->_subDate;
  v31 = [(MOEvent *)self->_event startDate];
  [(NSDate *)subDate timeIntervalSinceDate:v31];
  v32 = [NSNumber numberWithDouble:?];
  v33 = [MOMetric binForNumber:v32 bins:v358];
  v34 = [(MOMetric *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"startTimeID"];

  v35 = self->_subDate;
  v36 = [(MOEvent *)self->_event endDate];
  [(NSDate *)v35 timeIntervalSinceDate:v36];
  v37 = [NSNumber numberWithDouble:?];
  v38 = [MOMetric binForNumber:v37 bins:v358];
  v39 = [(MOMetric *)self metrics];
  [v39 setObject:v38 forKeyedSubscript:@"endTimeID"];

  islandID = self->_islandID;
  v41 = [(MOMetric *)self metrics];
  [v41 setObject:islandID forKeyedSubscript:@"islandID"];

  v42 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event hash]% 0x2710];
  v43 = [(MOMetric *)self metrics];
  [v43 setObject:v42 forKeyedSubscript:@"eventID"];

  v44 = [NSNumber numberWithInt:[(NSNumber *)self->_islandID intValue]> 0];
  v45 = [(MOMetric *)self metrics];
  [v45 setObject:v44 forKeyedSubscript:@"cooccurrenceCheck"];

  v46 = [(MOEvent *)self->_event endDate];

  if (v46)
  {
    v47 = [(MOEvent *)self->_event creationDate];

    if (v47)
    {
      v48 = [(MOEvent *)self->_event creationDate];
      v49 = [(MOEvent *)self->_event endDate];
      [v48 timeIntervalSinceDate:v49];
      v51 = v50;

      v52 = [NSNumber numberWithDouble:v51];
      v53 = [MOMetric binForNumber:v52 bins:v344];
      v54 = [(MOMetric *)self metrics];
      [v54 setObject:v53 forKeyedSubscript:@"sensedLatencyBucketed"];
    }

    v55 = [(MOEvent *)self->_event sourceCreationDate];

    if (v55)
    {
      v56 = [(MOEvent *)self->_event sourceCreationDate];
      v57 = [(MOEvent *)self->_event endDate];
      [v56 timeIntervalSinceDate:v57];
      v59 = v58;

      v60 = [NSNumber numberWithDouble:v59];
      v61 = [MOMetric binForNumber:v60 bins:v344];
      v62 = [(MOMetric *)self metrics];
      [v62 setObject:v61 forKeyedSubscript:@"realLatencyBucketed"];
    }
  }

  provider = self->_provider;
  if (provider <= 2)
  {
    if (provider == 1)
    {
      v142 = [(MOEvent *)self->_event workoutType];
      v143 = [HKWorkout _workoutActivityTypeFromString:v142];

      v144 = [NSNumber numberWithUnsignedInteger:v143];
      v145 = [(MOMetric *)self metrics];
      [v145 setObject:v144 forKeyedSubscript:@"workoutType"];

      if (objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
      {
        v146 = [NSNumber numberWithUnsignedInteger:v143];
        v147 = [(MOMetric *)self metrics];
        [v147 setObject:v146 forKeyedSubscript:@"workoutTypeIHA"];
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
    v345 = self;
    v69 = [(MOEvent *)self->_event extendedAttributes];
    v70 = [v69 photoMomentInferences];

    v357 = [v70 countByEnumeratingWithState:&v372 objects:v385 count:16];
    if (v357)
    {
      v71 = 0;
      obj = v70;
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

        v74 = [*(*(&v372 + 1) + 8 * v72) lowercaseString];
        v75 = v74;
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
              v83 = [v82 lowercaseString];
              if ([v75 containsString:v83])
              {
                v84 = [(MOMetric *)v345 metrics];
                [v84 setObject:v81 forKeyedSubscript:@"photoInference"];

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
    v154 = [(MOMetric *)v345 metrics];
    [v154 setObject:v148 forKeyedSubscript:@"photoInferenceMade"];

    v155 = [(MOMetric *)v345 metrics];
    [v155 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isShared"];

    v156 = [(MOMetric *)v345 metrics];
    [v156 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isFavorited"];

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
      v355 = [(MOEvent *)self->_event interactions];
      v85 = [v355 countByEnumeratingWithState:&v380 objects:v387 count:16];
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
              objc_enumerationMutation(v355);
            }

            v94 = *(*(&v380 + 1) + 8 * v93);
            v95 = [v94 bundleId];
            v96 = [v95 containsString:@"com.apple."];

            if (v96)
            {
              obja = 1;
            }

            else
            {
              v97 = [v94 bundleId];
              v98 = v97 != 0;

              v88 |= v98;
            }

            if (![v94 mechanism] || objc_msgSend(v94, "mechanism") == 8 || objc_msgSend(v94, "mechanism") == 9 || objc_msgSend(v94, "mechanism") == 11 || objc_msgSend(v94, "mechanism") == 16)
            {
              v87 = (v87 + 1);
              v99 = [v94 endDate];
              v100 = [v94 startDate];
              [v99 timeIntervalSinceDate:v100];
              v102 = v101;

              v92 = v92 + v102;
            }

            else if ([v94 mechanism] == 12 || objc_msgSend(v94, "mechanism") == 17)
            {
              ++v347;
              v117 = [v94 endDate];
              v118 = [v94 startDate];
              [v117 timeIntervalSinceDate:v118];
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
              v103 = [v94 endDate];
              v104 = [v94 startDate];
              [v103 timeIntervalSinceDate:v104];
              v106 = v105;

              if (v106 > v90)
              {
                v360 = v88;
                v107 = v15->_subDate;
                [v94 startDate];
                v108 = v364 = v87;
                [(NSDate *)v107 timeIntervalSinceDate:v108];
                v109 = [NSNumber numberWithDouble:?];
                v110 = [MOMetric binForNumber:v109 bins:v358];
                v111 = [(MOMetric *)v15 metrics];
                [v111 setObject:v110 forKeyedSubscript:@"startTimeIDlongestDurationCall"];

                v88 = v360;
                v112 = v15->_subDate;
                v89 = v349;
                v113 = [v94 endDate];
                [(NSDate *)v112 timeIntervalSinceDate:v113];
                v114 = [NSNumber numberWithDouble:?];
                v115 = [MOMetric binForNumber:v114 bins:v358];
                v116 = [(MOMetric *)v15 metrics];
                [v116 setObject:v115 forKeyedSubscript:@"endTimeIDlongestDurationCall"];

                v87 = v364;
                v90 = v106;
              }
            }

            v93 = v93 + 1;
          }

          while (v86 != v93);
          v121 = [v355 countByEnumeratingWithState:&v380 objects:v387 count:16];
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
      v173 = [(MOMetric *)v15 metrics];
      [v173 setObject:v172 forKeyedSubscript:@"numAudioCalls"];

      v174 = [NSNumber numberWithDouble:v92];
      v175 = [MOMetric binForNumber:v174 bins:v341];
      v176 = [(MOMetric *)v15 metrics];
      [v176 setObject:v175 forKeyedSubscript:@"durationAudioCalls"];

      v177 = [NSNumber numberWithInt:v347];
      v178 = [(MOMetric *)v15 metrics];
      [v178 setObject:v177 forKeyedSubscript:@"numVideoCalls"];

      v179 = [NSNumber numberWithDouble:v91];
      v180 = [MOMetric binForNumber:v179 bins:v341];
      v181 = [(MOMetric *)v15 metrics];
      [v181 setObject:v180 forKeyedSubscript:@"durationVideoCalls"];

      v182 = [NSNumber numberWithInt:v336];
      v183 = [(MOMetric *)v15 metrics];
      [v183 setObject:v182 forKeyedSubscript:@"numTexts"];

      v184 = [NSNumber numberWithInt:v334];
      v185 = [(MOMetric *)v15 metrics];
      [v185 setObject:v184 forKeyedSubscript:@"numOtherContactType"];

      v186 = [(MOEvent *)v15->_event interactionScoredContact];
      v187 = [v186 contact];
      v188 = [v187 identifier];
      v189 = [v188 hash] % 0x2710;

      v190 = [NSNumber numberWithUnsignedInteger:v189];
      v191 = [(MOMetric *)v15 metrics];
      [v191 setObject:v190 forKeyedSubscript:@"sigContactPersonID"];

      v192 = [(MOEvent *)v15->_event interactionContactScore];
      [v192 floatValue];
      *&v194 = v193 * 100.0;
      v159 = [NSNumber numberWithFloat:v194];

      v195 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v159 intValue]);
      v196 = [(MOMetric *)v15 metrics];
      [v196 setObject:v195 forKeyedSubscript:@"interactionContactScore"];

      v197 = [(MOEvent *)v15->_event interactionContacts];
      v198 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v197 count]);
      v199 = [(MOMetric *)v15 metrics];
      [v199 setObject:v198 forKeyedSubscript:@"numSigContacts"];

      v200 = v88 ^ 1;
      if (((obja ^ 1) & 1) == 0 && (v200 & 1) == 0)
      {
        v201 = [(MOMetric *)v15 metrics];
        [v201 setObject:&off_100369BC8 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja | v200) & 1) == 0)
      {
        v202 = [(MOMetric *)v15 metrics];
        [v202 setObject:&off_100369BB0 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja ^ 1 | v88) & 1) == 0)
      {
        v203 = [(MOMetric *)v15 metrics];
        [v203 setObject:&off_100369B80 forKeyedSubscript:@"sourceApp"];
      }

      if (((obja | v88) & 1) == 0)
      {
        v204 = [(MOMetric *)v15 metrics];
        [v204 setObject:&off_100369BF8 forKeyedSubscript:@"sourceApp"];
      }
    }

    else
    {
      v149 = [(MOEvent *)self->_event mediaPlayerBundleId];
      if (v149)
      {
        v150 = v149;
        v151 = [(MOEvent *)self->_event mediaPlayerBundleId];
        v152 = [v151 containsString:@"com.apple."];

        if (v152)
        {
          v153 = [(MOMetric *)self metrics];
          [v153 setObject:&off_100369B80 forKeyedSubscript:@"sourceApp"];

          goto LABEL_112;
        }
      }

      v157 = [(MOEvent *)self->_event mediaPlayerBundleId];

      v158 = [(MOMetric *)self metrics];
      v159 = v158;
      if (v157)
      {
        v160 = &off_100369BB0;
      }

      else
      {
        v160 = &off_100369BF8;
      }

      [v158 setObject:v160 forKeyedSubscript:@"sourceApp"];
    }

LABEL_112:
    v205 = [(MOEvent *)v15->_event mediaGenre];

    if (v205)
    {
      v206 = [(MOEvent *)v15->_event mediaGenre];
      v207 = [v206 lowercaseString];

      if ([v207 containsString:@"alternative"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369B80;
      }

      else if ([v207 containsString:@"blues"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369B98;
      }

      else if ([v207 containsString:@"children"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369BB0;
      }

      else if (([v207 containsString:@"christian"] & 1) != 0 || objc_msgSend(v207, "containsString:", @"gospel"))
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369BC8;
      }

      else if ([v207 containsString:@"classical"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369BE0;
      }

      else if ([v207 containsString:@"comedy"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C10;
      }

      else if ([v207 containsString:@"country"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C28;
      }

      else if ([v207 containsString:@"dance"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C40;
      }

      else if ([v207 containsString:@"electronic"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C58;
      }

      else if ([v207 containsString:@"hip"] && objc_msgSend(v207, "containsString:", @"hop"))
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C70;
      }

      else if ([v207 containsString:@"rap"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369C88;
      }

      else if ([v207 containsString:@"jazz"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369CA0;
      }

      else if ([v207 containsString:@"pop"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369CB8;
      }

      else if ([v207 containsString:@"latin"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369CD0;
      }

      else if ([v207 containsString:@"classic"] && objc_msgSend(v207, "containsString:", @"rock"))
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369CE8;
      }

      else if ([v207 containsString:@"rock"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D00;
      }

      else if (([v207 containsString:@"r&b"] & 1) != 0 || objc_msgSend(v207, "containsString:", @"rb"))
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D18;
      }

      else if ([v207 containsString:@"soul"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D30;
      }

      else if ([v207 containsString:@"reggae"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D48;
      }

      else if ([v207 containsString:@"singer"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D60;
      }

      else if ([v207 containsString:@"songwriter"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D78;
      }

      else if ([v207 containsString:@"sound"] && objc_msgSend(v207, "containsString:", @"track"))
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369D90;
      }

      else if ([v207 containsString:@"worldwide"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369DA8;
      }

      else if ([v207 containsString:@"hits"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369DC0;
      }

      else if ([v207 containsString:@"oldie"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369DD8;
      }

      else if ([v207 containsString:@"indie"])
      {
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        v210 = &off_100369DF0;
      }

      else
      {
        v329 = [v207 containsString:@"metal"];
        v208 = [(MOMetric *)v15 metrics];
        v209 = v208;
        if (v329)
        {
          v210 = &off_100369E08;
        }

        else
        {
          v210 = &off_100369E20;
        }
      }

      [v208 setObject:v210 forKeyedSubscript:@"mediaGenre"];
    }

    else
    {
      v207 = [(MOMetric *)v15 metrics];
      [v207 setObject:&off_100369BF8 forKeyedSubscript:@"mediaGenre"];
    }

    v212 = [(MOEvent *)v15->_event mediaType];

    if (v212)
    {
      v213 = [(MOEvent *)v15->_event mediaType];
      v214 = [v213 lowercaseString];

      if ([v214 containsString:@"music"])
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369B80;
      }

      else if ([v214 containsString:@"podcast"])
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369B98;
      }

      else if ([v214 containsString:@"audio"] && objc_msgSend(v214, "containsString:", @"book"))
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369BB0;
      }

      else if ([v214 containsString:@"audio"])
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369C10;
      }

      else if ([v214 containsString:@"itune"] && objc_msgSend(v214, "containsString:", @"radio"))
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369BE0;
      }

      else if ([v214 containsString:@"itune"])
      {
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        v217 = &off_100369BC8;
      }

      else
      {
        v328 = [v214 containsString:@"video"];
        v215 = [(MOMetric *)v15 metrics];
        v216 = v215;
        if (v328)
        {
          v217 = &off_100369C28;
        }

        else
        {
          v217 = &off_100369C40;
        }
      }

      [v215 setObject:v217 forKeyedSubscript:@"mediaType"];
    }

    else
    {
      v214 = [(MOMetric *)v15 metrics];
      [v214 setObject:&off_100369BF8 forKeyedSubscript:@"mediaType"];
    }

    if ([(MOEvent *)v15->_event category]== 4)
    {
      v218 = [(MOEvent *)v15->_event mediaSumTimePlayed];
      v219 = [MOMetric binForNumber:v218 bins:v343];
      v220 = [(MOMetric *)v15 metrics];
      [v220 setObject:v219 forKeyedSubscript:@"durationLeisureMedia"];
    }

    if ([(MOEvent *)v15->_event category]== 3)
    {
      v221 = [(MOEvent *)v15->_event mediaSumTimePlayed];
      v222 = [MOMetric binForNumber:v221 bins:v343];
      v223 = [(MOMetric *)v15 metrics];
      [v223 setObject:v222 forKeyedSubscript:@"durationMediaOnRepeat"];

      v224 = [(MOEvent *)v15->_event mediaRepetitions];
      v225 = [(MOMetric *)v15 metrics];
      [v225 setObject:v224 forKeyedSubscript:@"mediaRepetitions"];
    }

    if ([(MOEvent *)v15->_event category]!= 6)
    {
      goto LABEL_186;
    }

    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v346 = v15;
    v365 = [(MOEvent *)v15->_event mediaPlaySessions];
    v226 = [v365 countByEnumeratingWithState:&v376 objects:v386 count:16];
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
        objc_enumerationMutation(v365);
      }

      v238 = *(*(&v376 + 1) + 8 * v237);
      v239 = [v238 mediaType];
      v240 = [v239 lowercaseString];

      if ([v240 containsString:@"music"])
      {
        break;
      }

      v241 = mixedAudioBundleIds;
      v242 = [v238 bundleId];
      if ([v241 containsObject:v242])
      {
        v243 = [v238 artist];

        if (v243)
        {
          break;
        }
      }

      else
      {
      }

      if (([v240 containsString:@"podcast"] & 1) == 0)
      {
        v252 = mixedAudioBundleIds;
        v253 = [v238 bundleId];
        if (([v252 containsObject:v253] & 1) == 0)
        {

LABEL_165:
          if ([v240 containsString:@"audio"] && objc_msgSend(v240, "containsString:", @"book"))
          {
            ++objb;
            v255 = [v238 endDate];
            v256 = [v238 startDate];
            [v255 timeIntervalSinceDate:v256];
            v258 = v257;

            v233 = v233 + v258;
          }

          else if ([v240 containsString:@"audio"])
          {
            ++v356;
            v259 = [v238 endDate];
            v260 = [v238 startDate];
            [v259 timeIntervalSinceDate:v260];
            v262 = v261;

            v235 = v235 + v262;
          }

          else if ([v240 containsString:@"itune"] && objc_msgSend(v240, "containsString:", @"radio"))
          {
            ++v337;
            v263 = [v238 endDate];
            v264 = [v238 startDate];
            [v263 timeIntervalSinceDate:v264];
            v266 = v265;

            v335 = v335 + v266;
          }

          else if ([v240 containsString:@"itune"])
          {
            ++v350;
            v267 = [v238 endDate];
            v268 = [v238 startDate];
            [v267 timeIntervalSinceDate:v268];
            v270 = v269;

            v234 = v234 + v270;
          }

          else if (([v240 containsString:@"video"] & 1) != 0 || (v271 = videoBundleIds, objc_msgSend(v238, "bundleId"), v272 = objc_claimAutoreleasedReturnValue(), LODWORD(v271) = objc_msgSend(v271, "containsObject:", v272), v272, v271))
          {
            ++v348;
            v273 = [v238 endDate];
            v274 = [v238 startDate];
            [v273 timeIntervalSinceDate:v274];
            v276 = v275;

            v236 = v236 + v276;
            if (v276 > v230)
            {
              v277 = v346->_subDate;
              v332 = [v238 startDate];
              [(NSDate *)v277 timeIntervalSinceDate:v332];
              v278 = [NSNumber numberWithDouble:?];
              v279 = [MOMetric binForNumber:v278 bins:v358];
              v280 = [(MOMetric *)v346 metrics];
              [v280 setObject:v279 forKeyedSubscript:@"startTimeIDlongestDurationVideo"];

              v281 = v346->_subDate;
              v333 = [v238 endDate];
              [(NSDate *)v281 timeIntervalSinceDate:v333];
              v282 = [NSNumber numberWithDouble:?];
              v283 = [MOMetric binForNumber:v282 bins:v358];
              v284 = [(MOMetric *)v346 metrics];
              [v284 setObject:v283 forKeyedSubscript:@"endTimeIDlongestDurationVideo"];

              v230 = v276;
            }
          }

          else
          {
            ++v331;
            v285 = [v238 endDate];
            v286 = [v238 startDate];
            [v285 timeIntervalSinceDate:v286];
            v288 = v287;

            v330 = v330 + v288;
          }

          goto LABEL_180;
        }

        v254 = [v238 artist];

        if (v254)
        {
          goto LABEL_165;
        }
      }

      ++v361;
      v248 = [v238 endDate];
      v249 = [v238 startDate];
      [v248 timeIntervalSinceDate:v249];
      v251 = v250;

      v232 = v232 + v251;
LABEL_180:

      if (v227 == ++v237)
      {
        v227 = [v365 countByEnumeratingWithState:&v376 objects:v386 count:16];
        if (!v227)
        {
LABEL_184:

          v289 = [NSNumber numberWithInt:v228];
          v290 = [(MOMetric *)v346 metrics];
          [v290 setObject:v289 forKeyedSubscript:@"numMusic"];

          v291 = [NSNumber numberWithDouble:v231];
          v292 = [MOMetric binForNumber:v291 bins:v343];
          v293 = [(MOMetric *)v346 metrics];
          [v293 setObject:v292 forKeyedSubscript:@"durationMusic"];

          v294 = [NSNumber numberWithInt:v361];
          v295 = [(MOMetric *)v346 metrics];
          [v295 setObject:v294 forKeyedSubscript:@"numPodcast"];

          v296 = [NSNumber numberWithDouble:v232];
          v297 = [MOMetric binForNumber:v296 bins:v343];
          v298 = [(MOMetric *)v346 metrics];
          [v298 setObject:v297 forKeyedSubscript:@"durationPodcast"];

          v299 = [NSNumber numberWithInt:objb];
          v300 = [(MOMetric *)v346 metrics];
          [v300 setObject:v299 forKeyedSubscript:@"numAudioBook"];

          v301 = [NSNumber numberWithDouble:v233];
          v302 = [MOMetric binForNumber:v301 bins:v343];
          v303 = [(MOMetric *)v346 metrics];
          [v303 setObject:v302 forKeyedSubscript:@"durationAudioBook"];

          v304 = [NSNumber numberWithInt:v356];
          v305 = [(MOMetric *)v346 metrics];
          [v305 setObject:v304 forKeyedSubscript:@"numAudio"];

          v306 = [NSNumber numberWithDouble:v235];
          v307 = [MOMetric binForNumber:v306 bins:v343];
          v308 = [(MOMetric *)v346 metrics];
          [v308 setObject:v307 forKeyedSubscript:@"durationAudio"];

          v309 = [NSNumber numberWithInt:v337];
          v310 = [(MOMetric *)v346 metrics];
          [v310 setObject:v309 forKeyedSubscript:@"numITunesRadio"];

          v311 = [NSNumber numberWithDouble:v335];
          v312 = [MOMetric binForNumber:v311 bins:v343];
          v313 = [(MOMetric *)v346 metrics];
          [v313 setObject:v312 forKeyedSubscript:@"durationITunesRadio"];

          v314 = [NSNumber numberWithInt:v350];
          v315 = [(MOMetric *)v346 metrics];
          [v315 setObject:v314 forKeyedSubscript:@"numITunesU"];

          v316 = [NSNumber numberWithDouble:v234];
          v317 = [MOMetric binForNumber:v316 bins:v343];
          v318 = [(MOMetric *)v346 metrics];
          [v318 setObject:v317 forKeyedSubscript:@"durationITunesU"];

          v319 = [NSNumber numberWithInt:v348];
          v320 = [(MOMetric *)v346 metrics];
          [v320 setObject:v319 forKeyedSubscript:@"numVideo"];

          v321 = [NSNumber numberWithDouble:v236];
          v322 = [MOMetric binForNumber:v321 bins:v343];
          v323 = [(MOMetric *)v346 metrics];
          [v323 setObject:v322 forKeyedSubscript:@"durationVideo"];

          v324 = [NSNumber numberWithInt:v331];
          v325 = [(MOMetric *)v346 metrics];
          [v325 setObject:v324 forKeyedSubscript:@"numOther"];

          v65 = [NSNumber numberWithDouble:v330];
          v326 = [MOMetric binForNumber:v65 bins:v343];
          v327 = [(MOMetric *)v346 metrics];
          [v327 setObject:v326 forKeyedSubscript:@"durationOther"];

          goto LABEL_185;
        }

        goto LABEL_151;
      }
    }

    v228 = (v228 + 1);
    v244 = [v238 endDate];
    v245 = [v238 startDate];
    [v244 timeIntervalSinceDate:v245];
    v247 = v246;

    v231 = v231 + v247;
    goto LABEL_180;
  }

  if (provider == 9)
  {
    v122 = [(MOEvent *)self->_event screenTimeEvent];
    v123 = [v122 longestActivity];

    if (v123)
    {
      v124 = [MOMetric binsFromStart:&off_100369748 toEnd:&off_10036E4B0 gap:&off_10036E510];
      v125 = self->_subDate;
      v126 = [(MOEvent *)self->_event screenTimeEvent];
      v127 = [v126 longestActivity];
      v128 = [v127 startDate];
      [(NSDate *)v125 timeIntervalSinceDate:v128];
      v129 = [NSNumber numberWithDouble:?];
      v130 = [MOMetric binForNumber:v129 bins:v124];
      v131 = [(MOMetric *)self metrics];
      [v131 setObject:v130 forKeyedSubscript:@"screenTimeStartTimeIDlongestActivity"];

      v132 = self->_subDate;
      v133 = [(MOEvent *)self->_event screenTimeEvent];
      v134 = [v133 longestActivity];
      v135 = [v134 endDate];
      [(NSDate *)v132 timeIntervalSinceDate:v135];
      v136 = [NSNumber numberWithDouble:?];
      v137 = [MOMetric binForNumber:v136 bins:v124];
      v138 = [(MOMetric *)self metrics];
      [v138 setObject:v137 forKeyedSubscript:@"screenTimeEndTimeIDlongestActivity"];
    }

    v139 = [(MOEvent *)self->_event screenTimeEvent];
    v140 = [v139 appCategoryUsages];
    v366[0] = _NSConcreteStackBlock;
    v366[1] = 3221225472;
    v366[2] = __24__MOEventData_setValues__block_invoke;
    v366[3] = &unk_100338770;
    v366[4] = self;
    v367 = v342;
    [v140 enumerateObjectsUsingBlock:v366];

    v141 = v367;
    goto LABEL_91;
  }

  if (provider != 4)
  {
    goto LABEL_186;
  }

  v64 = [(MOEvent *)self->_event placeName];
  v65 = [v64 lowercaseString];

  if ([v65 containsString:@"home"])
  {
    v66 = [(MOMetric *)self metrics];
    v67 = v66;
    v68 = &off_100369B80;
  }

  else if ([v65 containsString:@"work"])
  {
    v66 = [(MOMetric *)self metrics];
    v67 = v66;
    v68 = &off_100369B98;
  }

  else if ([v65 containsString:@"gym"])
  {
    v66 = [(MOMetric *)self metrics];
    v67 = v66;
    v68 = &off_100369BB0;
  }

  else
  {
    v211 = [v65 containsString:@"school"];
    v66 = [(MOMetric *)self metrics];
    v67 = v66;
    if (!v211)
    {
      [v66 setObject:&off_100369BE0 forKeyedSubscript:@"visitCategory"];
      v161 = &__kCFBooleanFalse;
      goto LABEL_97;
    }

    v68 = &off_100369BC8;
  }

  [v66 setObject:v68 forKeyedSubscript:@"visitCategory"];
  v161 = &__kCFBooleanTrue;
LABEL_97:

  v162 = [(MOMetric *)self metrics];
  [v162 setObject:v161 forKeyedSubscript:@"visitLOI"];

  v163 = [NSNumber numberWithUnsignedInteger:[(MOEvent *)self->_event mode]];
  v164 = [(MOMetric *)self metrics];
  [v164 setObject:v163 forKeyedSubscript:@"visitMode"];

  v165 = poiCategoryDictionary;
  v166 = [(MOEvent *)self->_event poiCategory];
  v167 = [v165 objectForKeyedSubscript:v166];

  if (v167)
  {
    v168 = poiCategoryDictionary;
    v169 = [(MOEvent *)self->_event poiCategory];
    v170 = [v168 objectForKeyedSubscript:v169];
    v171 = [(MOMetric *)self metrics];
    [v171 setObject:v170 forKeyedSubscript:@"visitPOI"];
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