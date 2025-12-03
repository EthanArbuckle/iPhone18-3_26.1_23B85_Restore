@interface MOEmbedding
- (MOEmbedding)initWithEventBundle:(id)bundle forEmbeddingType:(unint64_t)type;
- (double)getActivityContextDistanceFrom:(id)from withWeights:(id)weights;
- (double)getDistanceFrom:(id)from withWeights:(id)weights;
- (double)getExtraContextDistanceFrom:(id)from withWeights:(id)weights;
- (double)getLocationContextDistanceFrom:(id)from withWeights:(id)weights;
- (double)getSocialContextDistanceFrom:(id)from withWeights:(id)weights;
- (double)getStateOfMindContextDistanceFrom:(id)from withWeights:(id)weights;
- (double)getTimeContextDistanceFrom:(id)from withWeights:(id)weights;
- (id)dayOfWeekString:(unint64_t)string;
- (id)description;
- (id)extractActivtyContextEmbedding:(id)embedding;
- (id)extractExtraContextEmbedding:(id)embedding;
- (id)extractLocationContextEmbedding:(id)embedding;
- (id)extractSocialContextEmbedding:(id)embedding;
- (id)extractStateOfMindContextEmbedding:(id)embedding;
- (id)extractTimeContextEmbedding:(id)embedding;
- (id)summaryDictionary;
- (void)extractContextsFromPhotoTraits:(id)traits;
@end

@implementation MOEmbedding

- (MOEmbedding)initWithEventBundle:(id)bundle forEmbeddingType:(unint64_t)type
{
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v30.receiver = self;
    v30.super_class = MOEmbedding;
    v8 = [(MOEmbedding *)&v30 init];
    if (v8)
    {
      bundleIdentifier = [bundleCopy bundleIdentifier];
      bundleIdentifier = v8->_bundleIdentifier;
      v8->_bundleIdentifier = bundleIdentifier;

      suggestionID = [bundleCopy suggestionID];
      suggestionID = v8->_suggestionID;
      v8->_suggestionID = suggestionID;

      v8->_embeddingType = type;
      v13 = [(MOEmbedding *)v8 extractActivtyContextEmbedding:bundleCopy];
      activityContextEmbedding = v8->_activityContextEmbedding;
      v8->_activityContextEmbedding = v13;

      v15 = [(MOEmbedding *)v8 extractTimeContextEmbedding:bundleCopy];
      timeContextEmbedding = v8->_timeContextEmbedding;
      v8->_timeContextEmbedding = v15;

      v17 = [(MOEmbedding *)v8 extractLocationContextEmbedding:bundleCopy];
      locationContextEmbedding = v8->_locationContextEmbedding;
      v8->_locationContextEmbedding = v17;

      v19 = [(MOEmbedding *)v8 extractSocialContextEmbedding:bundleCopy];
      socialContextEmbedding = v8->_socialContextEmbedding;
      v8->_socialContextEmbedding = v19;

      v21 = [(MOEmbedding *)v8 extractStateOfMindContextEmbedding:bundleCopy];
      stateOfMindContextEmbedding = v8->_stateOfMindContextEmbedding;
      v8->_stateOfMindContextEmbedding = v21;

      v23 = [(MOEmbedding *)v8 extractExtraContextEmbedding:bundleCopy];
      extraContextEmbedding = v8->_extraContextEmbedding;
      v8->_extraContextEmbedding = v23;

      photoTraits = [bundleCopy photoTraits];
      [(MOEmbedding *)v8 extractContextsFromPhotoTraits:photoTraits];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding initWithEventBundle:forEmbeddingType:];
    }

    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MOEmbedding.m" lineNumber:31 description:@"Invalid parameter not satisfying: eventBundle"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)extractActivtyContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  getSuperTypeString = [embeddingCopy getSuperTypeString];
  [v4 setObject:getSuperTypeString forKeyedSubscript:@"topLevelActivityType"];

  action = [embeddingCopy action];
  actionName = [action actionName];

  if (actionName)
  {
    action2 = [embeddingCopy action];
    actionName2 = [action2 actionName];
    [v4 setObject:actionName2 forKeyedSubscript:@"secondLevelActivityType"];

    action3 = [embeddingCopy action];
    actionName3 = [action3 actionName];
    if ([actionName3 isEqualToString:@"Photos at Home"])
    {
    }

    else
    {
      action4 = [embeddingCopy action];
      actionName4 = [action4 actionName];
      v14 = [actionName4 isEqualToString:@"Hosting at Home"];

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    [v4 setObject:@"Time at Home" forKeyedSubscript:@"secondLevelActivityType"];
  }

LABEL_6:

  return v4;
}

- (id)extractTimeContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v5 = objc_opt_new();
  localStartDate = [embeddingCopy localStartDate];
  v7 = +[NSCalendar currentCalendar];
  v8 = v7;
  embeddingType = self->_embeddingType;
  if (embeddingType == 2)
  {
    v32 = __sincos_stret([v7 component:4096 fromDate:localStartDate] * 6.28318531 / 5.0);
    v33 = __sincos_stret([v8 component:8 fromDate:localStartDate] * 6.28318531 / 12.0);
    v34 = [NSNumber numberWithDouble:v32.__cosval];
    [v5 setObject:v34 forKeyedSubscript:@"weekOfMonthCos"];

    v35 = [NSNumber numberWithDouble:v32.__sinval];
    [v5 setObject:v35 forKeyedSubscript:@"weekOfMonthSin"];

    v36 = [NSNumber numberWithDouble:v33.__cosval];
    [v5 setObject:v36 forKeyedSubscript:@"monthCos"];

    v37 = [NSNumber numberWithDouble:v33.__sinval];
    [v5 setObject:v37 forKeyedSubscript:@"monthSin"];

    v31 = v5;
  }

  else if (embeddingType == 1)
  {
    [embeddingCopy duration];
    v11 = v10 / 86400.0;
    v12 = [v8 components:96 fromDate:localStartDate];
    v13 = __sincos_stret(([v12 minute] / 60.0 + objc_msgSend(v12, "hour")) * 6.28318531 / 24.0);
    v14 = [v8 component:512 fromDate:localStartDate];
    v15 = v14;
    v16 = __sincos_stret(v14 * 6.28318531 / 7.0);
    v18 = v14 == 1 || v14 == 7;
    v19 = [v8 component:0x2000 fromDate:localStartDate];
    v20 = [NSNumber numberWithDouble:v11];
    [v5 setObject:v20 forKeyedSubscript:@"normalizedDuration"];

    v21 = [NSNumber numberWithDouble:v13.__cosval];
    [v5 setObject:v21 forKeyedSubscript:@"timeOfDayCos"];

    v22 = [NSNumber numberWithDouble:v13.__sinval];
    [v5 setObject:v22 forKeyedSubscript:@"timeOfDaySin"];

    v23 = [NSNumber numberWithDouble:v16.__cosval];
    [v5 setObject:v23 forKeyedSubscript:@"dayOfWeekCos"];

    v24 = [NSNumber numberWithDouble:v16.__sinval];
    [v5 setObject:v24 forKeyedSubscript:@"dayOfWeekSin"];

    v25 = [NSNumber numberWithBool:v18];
    [v5 setObject:v25 forKeyedSubscript:@"isWeekend"];

    localStartDate2 = [embeddingCopy localStartDate];
    localEndDate = [embeddingCopy localEndDate];
    v28 = [NSNumber numberWithUnsignedInteger:[MOTime simpleTimetagFromStartDate:localStartDate2 endDate:localEndDate]];
    [v5 setObject:v28 forKeyedSubscript:@"timeTag"];

    v29 = [NSNumber numberWithDouble:v15];
    [v5 setObject:v29 forKeyedSubscript:@"dayOfWeek"];

    v30 = [NSNumber numberWithDouble:v19];
    [v5 setObject:v30 forKeyedSubscript:@"weekOfYear"];

    v31 = v5;
  }

  else
  {
    v38 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding extractTimeContextEmbedding:];
    }

    v31 = 0;
  }

  return v31;
}

- (id)extractLocationContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  place = [embeddingCopy place];

  if (place)
  {
    place2 = [embeddingCopy place];
    placeName = [place2 placeName];
    v8 = [placeName length];

    if (v8)
    {
      place3 = [embeddingCopy place];
      placeName2 = [place3 placeName];
      [v4 setObject:placeName2 forKeyedSubscript:@"placeName"];
    }

    place4 = [embeddingCopy place];
    enclosingArea = [place4 enclosingArea];
    v13 = [enclosingArea length];

    if (v13)
    {
      place5 = [embeddingCopy place];
      enclosingArea = [place5 enclosingArea];
      [v4 setObject:enclosingArea forKeyedSubscript:@"enclosingAreaName"];
    }

    place6 = [embeddingCopy place];
    placeType = [place6 placeType];
    if (placeType == 2 || ([embeddingCopy place], enclosingArea = objc_claimAutoreleasedReturnValue(), objc_msgSend(enclosingArea, "placeType") == 3))
    {
      place7 = [embeddingCopy place];
      [place7 placeNameConfidence];
      if (v18 >= 0.9)
      {
        place8 = [embeddingCopy place];
        poiCategory = [place8 poiCategory];
        v21 = [poiCategory length];

        if (placeType != 2)
        {
        }

        if (!v21)
        {
LABEL_17:
          place9 = [embeddingCopy place];
          if ([place9 placeUserType])
          {
            place10 = [embeddingCopy place];
            placeUserType = [place10 placeUserType];

            if (placeUserType == 100)
            {
              goto LABEL_21;
            }

            place9 = [embeddingCopy place];
            v25 = +[MOEventRoutine stringOfPlaceUserType:](MOEventRoutine, "stringOfPlaceUserType:", [place9 placeUserType]);
            [v4 setObject:v25 forKeyedSubscript:@"combinedPlaceType"];
          }

LABEL_21:
          place11 = [embeddingCopy place];
          location = [place11 location];
          [location latitude];
          if (v28 != 0.0)
          {
            place12 = [embeddingCopy place];
            location2 = [place12 location];
            [location2 longitude];
            v32 = v31;

            if (v32 == 0.0)
            {
LABEL_25:
              place13 = [embeddingCopy place];
              [place13 familiarityIndexLOI];
              v38 = [NSNumber numberWithDouble:?];
              [v4 setObject:v38 forKeyedSubscript:@"placeFamiliarityIndexLOI"];

              goto LABEL_26;
            }

            place14 = [embeddingCopy place];
            location3 = [place14 location];
            [location3 latitude];
            v35 = [NSNumber numberWithDouble:?];
            [v4 setObject:v35 forKeyedSubscript:@"placeLatitude"];

            place11 = [embeddingCopy place];
            location = [place11 location];
            [location longitude];
            v36 = [NSNumber numberWithDouble:?];
            [v4 setObject:v36 forKeyedSubscript:@"placeLongitude"];
          }

          goto LABEL_25;
        }

        place6 = [embeddingCopy place];
        enclosingArea = [place6 poiCategory];
        [v4 setObject:enclosingArea forKeyedSubscript:@"combinedPlaceType"];
      }

      else
      {

        if (placeType == 2)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_26:

  return v4;
}

- (id)extractSocialContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  persons = [embeddingCopy persons];
  v5 = [persons count];

  if (v5)
  {
    v6 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = embeddingCopy;
    persons2 = [embeddingCopy persons];
    v8 = [persons2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v8)
    {
      v32 = v6;
      v33 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v9 = 0;
      v10 = *v38;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(persons2);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          name = [v12 name];

          if (name && ([v12 isMePerson] & 1) == 0)
          {
            [v32 addObject:v12];
          }

          v14 = [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v12 useRelationshipInference:0];
          v15 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            name2 = [v12 name];
            *buf = 138478083;
            v42 = name2;
            v43 = 2048;
            v44 = v14;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Relationship Tag for person %{private}@:%lu", buf, 0x16u);
          }

          if (v14 <= 20)
          {
            if (v14 == 4)
            {
              ++v9;
            }

            else if (v14 == 15)
            {
              ++v35;
            }
          }

          else
          {
            switch(v14)
            {
              case 21:
                ++v34;
                break;
              case 22:
                ++v33;
                break;
              case 27:
                ++v36;
                break;
            }
          }
        }

        v8 = [persons2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v8);
      v17 = v9 != 0;
      v8 = v33 != 0;
      v18 = v34 != 0;
      v19 = v35 != 0;
      v20 = v36 != 0;
      v6 = v32;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
    }

    v5 = objc_opt_new();
    v21 = [v6 copy];
    [v5 setObject:v21 forKeyedSubscript:@"persons"];

    v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 count] != 0);
    [v5 setObject:v22 forKeyedSubscript:@"withContact"];

    v23 = [NSNumber numberWithInt:v17];
    [v5 setObject:v23 forKeyedSubscript:@"withFamily"];

    v24 = [NSNumber numberWithInt:v8];
    [v5 setObject:v24 forKeyedSubscript:@"withCoworker"];

    [NSNumber numberWithInt:v18];
    v26 = v25 = v6;
    [v5 setObject:v26 forKeyedSubscript:@"withFriend"];

    v27 = [NSNumber numberWithInt:v19];
    [v5 setObject:v27 forKeyedSubscript:@"withChild"];

    v28 = [NSNumber numberWithInt:v20];
    [v5 setObject:v28 forKeyedSubscript:@"withMyPet"];

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [MOEmbedding extractSocialContextEmbedding:];
    }

    embeddingCopy = v31;
  }

  return v5;
}

- (id)extractStateOfMindContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  metaDataForRank = [embeddingCopy metaDataForRank];
  v6 = [metaDataForRank objectForKeyedSubscript:@"StateOfMindValence"];

  if (v6)
  {
    metaDataForRank2 = [embeddingCopy metaDataForRank];
    v8 = [metaDataForRank2 objectForKeyedSubscript:@"StateOfMindValence"];
    [v4 setObject:v8 forKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
  }

  metaDataForRank3 = [embeddingCopy metaDataForRank];
  v10 = [metaDataForRank3 objectForKeyedSubscript:@"StateOfMindLabels"];

  if (v10)
  {
    metaDataForRank4 = [embeddingCopy metaDataForRank];
    v12 = [metaDataForRank4 objectForKeyedSubscript:@"StateOfMindLabels"];
    [v4 setObject:v12 forKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];
  }

  metaDataForRank5 = [embeddingCopy metaDataForRank];
  v14 = [metaDataForRank5 objectForKeyedSubscript:@"StateOfMindDomains"];

  if (v14)
  {
    metaDataForRank6 = [embeddingCopy metaDataForRank];
    v16 = [metaDataForRank6 objectForKeyedSubscript:@"StateOfMindDomains"];
    [v4 setObject:v16 forKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [MOEmbedding extractStateOfMindContextEmbedding:embeddingCopy];
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MOEmbedding extractStateOfMindContextEmbedding:];
  }

  return v4;
}

- (id)extractExtraContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  rankingDictionary = [embeddingCopy rankingDictionary];
  v6 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];

  if (v6)
  {
    rankingDictionary2 = [embeddingCopy rankingDictionary];
    v8 = [rankingDictionary2 objectForKeyedSubscript:@"bundleGoodnessScore"];
    [v4 setObject:v8 forKeyedSubscript:@"bundleGoodnessScore"];
  }

  resources = [embeddingCopy resources];
  v10 = [resources count];

  if (v10)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    resources2 = [embeddingCopy resources];
    v12 = [resources2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      LODWORD(v14) = 0;
      v15 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(resources2);
          }

          if ([*(*(&v19 + 1) + 8 * i) type] == 2)
          {
            v14 = (v14 + 1);
          }

          else
          {
            v14 = v14;
          }
        }

        v13 = [resources2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v17 = [NSNumber numberWithInt:v14];
    [v4 setObject:v17 forKeyedSubscript:@"photoCount"];
  }

  else
  {
    [v4 setObject:&off_10036AA38 forKeyedSubscript:@"photoCount"];
  }

  return v4;
}

- (void)extractContextsFromPhotoTraits:(id)traits
{
  traitsCopy = traits;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOEmbedding extractContextsFromPhotoTraits:traitsCopy];
  }

  if ([traitsCopy count])
  {
    v6 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:traitsCopy];
    if (v6)
    {
      timeContextEmbedding = [(MOEmbedding *)self timeContextEmbedding];
      v8 = [timeContextEmbedding mutableCopy];

      name = [v6 name];
      [v8 setObject:name forKeyedSubscript:@"holiday"];

      [(MOEmbedding *)self setTimeContextEmbedding:v8];
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(MOEmbedding *)v6 extractContextsFromPhotoTraits:?];
      }
    }

    v92 = v6;
    v97 = objc_opt_new();
    v95 = objc_opt_new();
    v96 = objc_opt_new();
    v94 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v93 = traitsCopy;
    obj = traitsCopy;
    v11 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v100;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v100 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v99 + 1) + 8 * i);
          name2 = [v15 name];
          v17 = [name2 length];

          if (v17)
          {
            v18 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [(MOEmbedding *)v107 extractContextsFromPhotoTraits:v15, &v108, v18];
            }

            photoTraitRankedListForActivityTypes = [objc_opt_class() photoTraitRankedListForActivityTypes];
            name3 = [v15 name];
            lowercaseString = [name3 lowercaseString];
            v22 = [photoTraitRankedListForActivityTypes containsObject:lowercaseString];

            if (v22)
            {
              photoTraitRankedListForActivityTypes2 = [objc_opt_class() photoTraitRankedListForActivityTypes];
              name4 = [v15 name];
              lowercaseString2 = [name4 lowercaseString];
              v26 = [photoTraitRankedListForActivityTypes2 indexOfObject:lowercaseString2];

              v27 = [NSNumber numberWithUnsignedInteger:v26];
              name5 = [v15 name];
              lowercaseString3 = [name5 lowercaseString];
              [v97 setObject:v27 forKey:lowercaseString3];

              v30 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                name6 = [v15 name];
                *buf = 138412546;
                v104 = name6;
                v105 = 2048;
                v106 = v26;
                _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Photo trait was found from activity type list: traitName=%@, rankFromList=%lu", buf, 0x16u);
              }
            }

            photoTraitRankedListForPlaceTypes = [objc_opt_class() photoTraitRankedListForPlaceTypes];
            name7 = [v15 name];
            lowercaseString4 = [name7 lowercaseString];
            v34 = [photoTraitRankedListForPlaceTypes containsObject:lowercaseString4];

            if (v34)
            {
              photoTraitRankedListForPlaceTypes2 = [objc_opt_class() photoTraitRankedListForPlaceTypes];
              name8 = [v15 name];
              lowercaseString5 = [name8 lowercaseString];
              v38 = [photoTraitRankedListForPlaceTypes2 indexOfObject:lowercaseString5];

              v39 = [NSNumber numberWithUnsignedInteger:v38];
              name9 = [v15 name];
              lowercaseString6 = [name9 lowercaseString];
              [v95 setObject:v39 forKey:lowercaseString6];

              v42 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                name10 = [v15 name];
                *buf = 138412546;
                v104 = name10;
                v105 = 2048;
                v106 = v38;
                _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Photo trait was found from place type list:traitName=%@, rankFromList=%lu", buf, 0x16u);
              }
            }

            photoTraitRankedListForSocialEvents = [objc_opt_class() photoTraitRankedListForSocialEvents];
            name11 = [v15 name];
            lowercaseString7 = [name11 lowercaseString];
            v46 = [photoTraitRankedListForSocialEvents containsObject:lowercaseString7];

            if (v46)
            {
              photoTraitRankedListForSocialEvents2 = [objc_opt_class() photoTraitRankedListForSocialEvents];
              name12 = [v15 name];
              lowercaseString8 = [name12 lowercaseString];
              v50 = [photoTraitRankedListForSocialEvents2 indexOfObject:lowercaseString8];

              v51 = [NSNumber numberWithUnsignedInteger:v50];
              name13 = [v15 name];
              lowercaseString9 = [name13 lowercaseString];
              [v96 setObject:v51 forKey:lowercaseString9];

              v54 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                name14 = [v15 name];
                *buf = 138412546;
                v104 = name14;
                v105 = 2048;
                v106 = v50;
                _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Photo trait was found from social event list:traitName=%@, rankFromList=%lu", buf, 0x16u);
              }
            }

            photoTraitRankedListForOtherSubjects = [objc_opt_class() photoTraitRankedListForOtherSubjects];
            name15 = [v15 name];
            lowercaseString10 = [name15 lowercaseString];
            v58 = [photoTraitRankedListForOtherSubjects containsObject:lowercaseString10];

            if (v58)
            {
              photoTraitRankedListForOtherSubjects2 = [objc_opt_class() photoTraitRankedListForOtherSubjects];
              name16 = [v15 name];
              lowercaseString11 = [name16 lowercaseString];
              v62 = [photoTraitRankedListForOtherSubjects2 indexOfObject:lowercaseString11];

              v63 = [NSNumber numberWithUnsignedInteger:v62];
              name17 = [v15 name];
              lowercaseString12 = [name17 lowercaseString];
              [v94 setObject:v63 forKey:lowercaseString12];

              v66 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
              {
                name18 = [v15 name];
                *buf = 138412546;
                v104 = name18;
                v105 = 2048;
                v106 = v62;
                _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Photo trait was found from other subject list:traitName=%@, rankFromList=%lu", buf, 0x16u);
              }
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
      }

      while (v12);
    }

    v71 = v92;
    if ([v97 count])
    {
      v72 = [v97 keysSortedByValueUsingComparator:&__block_literal_global_38];
      v73 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        [MOEmbedding extractContextsFromPhotoTraits:];
      }

      activityContextEmbedding = [(MOEmbedding *)self activityContextEmbedding];
      v75 = [activityContextEmbedding mutableCopy];

      v76 = [v72 objectAtIndex:0];
      [v75 setObject:v76 forKeyedSubscript:@"activityTypeFromPhotoTraits"];

      [(MOEmbedding *)self setActivityContextEmbedding:v75];
    }

    if ([v95 count])
    {
      v77 = [v95 keysSortedByValueUsingComparator:&__block_literal_global_132];
      v78 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        [MOEmbedding extractContextsFromPhotoTraits:];
      }

      locationContextEmbedding = [(MOEmbedding *)self locationContextEmbedding];
      v80 = [locationContextEmbedding mutableCopy];

      v81 = [v77 objectAtIndex:0];
      [v95 setObject:v81 forKeyedSubscript:@"placeTypeFromPhotoTraits"];

      [(MOEmbedding *)self setLocationContextEmbedding:v80];
    }

    if ([v96 count])
    {
      v82 = [v96 keysSortedByValueUsingComparator:&__block_literal_global_135_0];
      v83 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        [MOEmbedding extractContextsFromPhotoTraits:];
      }

      socialContextEmbedding = [(MOEmbedding *)self socialContextEmbedding];
      v85 = [socialContextEmbedding mutableCopy];

      v86 = [v82 objectAtIndex:0];
      [v85 setObject:v86 forKeyedSubscript:@"socialEventFromPhotoTraits"];

      [(MOEmbedding *)self setSocialContextEmbedding:v85];
    }

    if ([v94 count])
    {
      v87 = [v94 keysSortedByValueUsingComparator:&__block_literal_global_138_0];
      v88 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        [MOEmbedding extractContextsFromPhotoTraits:];
      }

      extraContextEmbedding = [(MOEmbedding *)self extraContextEmbedding];
      v90 = [extraContextEmbedding mutableCopy];

      v91 = [v87 objectAtIndex:0];
      [v90 setObject:v91 forKeyedSubscript:@"otherSubjectFromPhotoTraits"];

      [(MOEmbedding *)self setExtraContextEmbedding:v90];
    }

    traitsCopy = v93;
  }
}

- (double)getDistanceFrom:(id)from withWeights:(id)weights
{
  fromCopy = from;
  weightsCopy = weights;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MOEmbedding getDistanceFrom:fromCopy withWeights:?];
  }

  bundleIdentifier = [(MOEmbedding *)self bundleIdentifier];
  bundleIdentifier2 = [fromCopy bundleIdentifier];
  if ([bundleIdentifier isEqual:bundleIdentifier2])
  {

    goto LABEL_6;
  }

  suggestionID = [(MOEmbedding *)self suggestionID];
  suggestionID2 = [fromCopy suggestionID];
  v14 = [suggestionID isEqual:suggestionID2];

  if (v14)
  {
LABEL_6:
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
    v16 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MOEmbedding getDistanceFrom:withWeights:];
    }

    goto LABEL_27;
  }

  [(MOEmbedding *)self getActivityContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v18 = v17;
  [(MOEmbedding *)self getTimeContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v20 = v19;
  [(MOEmbedding *)self getLocationContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v61 = v21;
  [(MOEmbedding *)self getSocialContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v60 = v22;
  [(MOEmbedding *)self getStateOfMindContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v24 = v23;
  [(MOEmbedding *)self getExtraContextDistanceFrom:fromCopy withWeights:weightsCopy];
  v26 = v25;
  v27 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityContext"];
  v62 = v20;
  v58 = v26;
  v59 = v24;
  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeContext"];
  v30 = 0.166666672;
  if (!v29)
  {
LABEL_19:
    v42 = 0.166666672;
    v45 = 0.166666672;
    v48 = 0.166666672;
    v51 = 0.166666672;
    v53 = 0.166666672;
    goto LABEL_20;
  }

  v31 = v29;
  v32 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_locationContext"];
  if (!v32)
  {
LABEL_18:

    goto LABEL_19;
  }

  v33 = v32;
  v34 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_socialContext"];
  if (!v34)
  {
LABEL_17:

    goto LABEL_18;
  }

  v35 = v34;
  v36 = [weightsCopy objectForKeyedSubscript:?];
  if (!v36)
  {

    goto LABEL_17;
  }

  v57 = v36;
  v37 = [weightsCopy objectForKeyedSubscript:?];

  if (v37)
  {
    v38 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityContext"];
    [v38 doubleValue];
    v30 = v39;

    v40 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeContext"];
    [v40 doubleValue];
    v42 = v41;

    v43 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_locationContext"];
    [v43 doubleValue];
    v45 = v44;

    v46 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_socialContext"];
    [v46 doubleValue];
    v48 = v47;

    v49 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
    [v49 doubleValue];
    v51 = v50;

    v28 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_extraContext"];
    [v28 doubleValue];
    v53 = v52;
LABEL_20:

    goto LABEL_21;
  }

LABEL_15:
  v30 = 0.166666672;
  v42 = 0.166666672;
  v45 = 0.166666672;
  v48 = 0.166666672;
  v51 = 0.166666672;
  v53 = 0.166666672;
LABEL_21:
  if (fabs(v30 + v42 + v45 + v48 + v51 + v53 + -1.0) >= 0.00001)
  {
    v54 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getDistanceFrom:withWeights:];
    }

    v55 = +[NSAssertionHandler currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"MOEmbedding.m" lineNumber:384 description:{@"Sum of full distance weight is not 1, sum=%.3f (in %s:%d)", v30 + v42 + v45 + v48 + v51 + v53, "-[MOEmbedding getDistanceFrom:withWeights:]", 384}];
  }

  v16 = v62 * v42 + v30 * v18 + v45 * v61 + v48 * v60 + v51 * v59 + v53 * v58;
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219520;
    v64 = v16;
    v65 = 2048;
    v66 = v18;
    v67 = 2048;
    v68 = v62;
    v69 = 2048;
    v70 = v61;
    v71 = 2048;
    v72 = v60;
    v73 = 2048;
    v74 = v59;
    v75 = 2048;
    v76 = v58;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Full distance=%.3f (activity=%.3f,time=%.3f,location=%.3f,social=%.3f, stateOfMind=%.3f extra=%.3f)", buf, 0x48u);
  }

LABEL_27:

  return v16;
}

- (double)getActivityContextDistanceFrom:(id)from withWeights:(id)weights
{
  weightsCopy = weights;
  fromCopy = from;
  activityContextEmbedding = [(MOEmbedding *)self activityContextEmbedding];
  activityContextEmbedding2 = [fromCopy activityContextEmbedding];

  v10 = [activityContextEmbedding objectForKeyedSubscript:@"topLevelActivityType"];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [activityContextEmbedding2 objectForKeyedSubscript:@"topLevelActivityType"];

    if (v14)
    {
      v15 = [activityContextEmbedding objectForKeyedSubscript:@"topLevelActivityType"];
      v16 = [activityContextEmbedding2 objectForKeyedSubscript:@"topLevelActivityType"];
      if ([v15 isEqualToString:v16])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }
    }
  }

  v17 = [activityContextEmbedding objectForKeyedSubscript:@"secondLevelActivityType"];
  if (v17)
  {
    v18 = v17;
    v19 = [activityContextEmbedding2 objectForKeyedSubscript:@"secondLevelActivityType"];

    if (v19)
    {
      v20 = [activityContextEmbedding objectForKeyedSubscript:@"secondLevelActivityType"];
      v21 = [activityContextEmbedding2 objectForKeyedSubscript:@"secondLevelActivityType"];
      if ([v20 isEqualToString:v21])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }
    }
  }

  v22 = [activityContextEmbedding objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v23 = 1.0;
  if (v22)
  {
    v24 = v22;
    v25 = [activityContextEmbedding2 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];

    if (v25)
    {
      v26 = [activityContextEmbedding objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
      v27 = [activityContextEmbedding2 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
      if ([v26 isEqualToString:v27])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }
    }
  }

  v28 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  if (!v28)
  {
    v35 = 0.333333343;
    v38 = 0.333333343;
    v40 = 0.333333343;
    goto LABEL_27;
  }

  v29 = v28;
  selfCopy = self;
  v30 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  if (!v30)
  {
    v35 = 0.333333343;
    v38 = 0.333333343;
    v40 = 0.333333343;
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];

  if (v32)
  {
    v33 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
    [v33 doubleValue];
    v35 = v34;

    v36 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
    [v36 doubleValue];
    v38 = v37;

    v29 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
    [v29 doubleValue];
    v40 = v39;
LABEL_25:
    self = selfCopy;

    goto LABEL_27;
  }

  v35 = 0.333333343;
  v38 = 0.333333343;
  v40 = 0.333333343;
  self = selfCopy;
LABEL_27:
  if (fabs(v35 + v38 + v40 + -1.0) >= 0.00001)
  {
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getActivityContextDistanceFrom:withWeights:];
    }

    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"MOEmbedding.m" lineNumber:425 description:{@"Sum of activity context distance weight is not 1, sum=%.3f (in %s:%d)", v35 + v38 + v40, "-[MOEmbedding getActivityContextDistanceFrom:withWeights:]", 425}];
  }

  v43 = v11 * v38 + v35 * v12 + v40 * v23;
  v44 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v49 = v43;
    v50 = 2048;
    v51 = v12;
    v52 = 2048;
    v53 = v11;
    v54 = 2048;
    v55 = v23;
    _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Activity context distance=%.3f (topLevelActivityTypeDist=%.3f,secondLevelActivityTypeDist=%.3f,activityFromPhotoTraits=%.3f)", buf, 0x2Au);
  }

  return v43;
}

- (double)getTimeContextDistanceFrom:(id)from withWeights:(id)weights
{
  weightsCopy = weights;
  fromCopy = from;
  timeContextEmbedding = [(MOEmbedding *)self timeContextEmbedding];
  timeContextEmbedding2 = [fromCopy timeContextEmbedding];

  embeddingType = self->_embeddingType;
  if (embeddingType == 2)
  {
    v91 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
    v12 = 0.0;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getTimeContextDistanceFrom:withWeights:];
    }

    goto LABEL_49;
  }

  v12 = 0.0;
  if (embeddingType == 1)
  {
    v13 = [timeContextEmbedding2 objectForKeyedSubscript:@"normalizedDuration"];
    [v13 doubleValue];
    v105 = v14;
    v15 = [timeContextEmbedding objectForKeyedSubscript:@"normalizedDuration"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDayCos"];
    [v18 doubleValue];
    v20 = v19;
    v21 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDayCos"];
    [v21 doubleValue];
    v23 = v22;
    v24 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDaySin"];
    [v24 doubleValue];
    v26 = v25;
    v27 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDaySin"];
    [v27 doubleValue];
    v29 = v26 * v28 + v20 * v23;

    v30 = 1.0;
    v31 = 1.0;
    if (v29 <= 1.0)
    {
      v31 = v29;
      if (v29 < -1.0)
      {
        v31 = -1.0;
      }
    }

    v110 = acos(v31);
    v32 = [timeContextEmbedding objectForKeyedSubscript:@"dayOfWeekCos"];
    [v32 doubleValue];
    v34 = v33;
    v35 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekCos"];
    [v35 doubleValue];
    v37 = v36;
    v38 = [timeContextEmbedding objectForKeyedSubscript:@"dayOfWeekSin"];
    [v38 doubleValue];
    v40 = v39;
    v41 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekSin"];
    [v41 doubleValue];
    v43 = v40 * v42 + v34 * v37;

    if (v43 <= 1.0)
    {
      v30 = v43;
      if (v43 < -1.0)
      {
        v30 = -1.0;
      }
    }

    v44 = acos(v30);
    v45 = [timeContextEmbedding objectForKeyedSubscript:@"isWeekend"];
    v46 = 1.0;
    v47 = 1.0;
    if (v45)
    {
      v48 = v45;
      v49 = [timeContextEmbedding2 objectForKeyedSubscript:@"isWeekend"];

      if (v49)
      {
        v50 = [timeContextEmbedding objectForKeyedSubscript:@"isWeekend"];
        bOOLValue = [v50 BOOLValue];
        v52 = [timeContextEmbedding2 objectForKeyedSubscript:@"isWeekend"];
        if (bOOLValue != [v52 BOOLValue])
        {
          v47 = 1.0;
        }

        else
        {
          v47 = 0.0;
        }
      }
    }

    v53 = [timeContextEmbedding objectForKeyedSubscript:@"holiday"];
    if (v53)
    {
      v54 = v53;
      v55 = [timeContextEmbedding2 objectForKeyedSubscript:@"holiday"];

      if (v55)
      {
        v56 = [timeContextEmbedding objectForKeyedSubscript:@"holiday"];
        v57 = [timeContextEmbedding2 objectForKeyedSubscript:@"holiday"];
        if ([v56 isEqualToString:v57])
        {
          v46 = 0.0;
        }

        else
        {
          v46 = 1.0;
        }
      }
    }

    v58 = [timeContextEmbedding objectForKeyedSubscript:@"celebration"];
    v59 = 1.0;
    v109 = v46;
    if (v58)
    {
      v60 = v58;
      v61 = [timeContextEmbedding2 objectForKeyedSubscript:@"celebration"];

      if (v61)
      {
        v62 = [timeContextEmbedding objectForKeyedSubscript:@"celebration"];
        v63 = [timeContextEmbedding2 objectForKeyedSubscript:@"celebration"];
        if ([v62 isEqualToString:v63])
        {
          v59 = 0.0;
        }

        else
        {
          v59 = 1.0;
        }
      }
    }

    v108 = v47;
    v64 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
    v107 = v59;
    if (!v64)
    {
      v67 = 0.166666667;
      v92 = 0.166666667;
      v93 = 0.166666667;
      v85 = 0.166666667;
      v88 = 0.166666667;
      v90 = 0.166666667;
LABEL_43:
      v94 = vabdd_f64(v105, v17);
      v95 = v110 / 3.14159265;
      v96 = v44 / 3.14159265;
      v97 = v67 + v92 + v93 + v85 + v88 + v90;
      if (fabs(v97 + -1.0) >= 0.00001)
      {
        v106 = v93;
        v111 = v92;
        v98 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          [MOEmbedding getTimeContextDistanceFrom:withWeights:];
        }

        v99 = +[NSAssertionHandler currentHandler];
        [v99 handleFailureInMethod:a2 object:self file:@"MOEmbedding.m" lineNumber:495 description:{@"Sum of time context distance weight is not 1, sum=%.3f (in %s:%d)", *&v97, "-[MOEmbedding getTimeContextDistanceFrom:withWeights:]", 495}];

        v92 = v111;
        v93 = v106;
      }

      v12 = v95 * v92 + v67 * v94 + v93 * v96 + v85 * v108 + v88 * v109 + v90 * v107;
      v91 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219520;
        v113 = v12;
        v114 = 2048;
        v115 = v94;
        v116 = 2048;
        v117 = v95;
        v118 = 2048;
        v119 = v96;
        v120 = 2048;
        v121 = v108;
        v122 = 2048;
        v123 = v109;
        v124 = 2048;
        v125 = v107;
        _os_log_debug_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "Time context distance=%.3f (durationNormDist=%.3f,timeOfDayDist=%.3f,dayOfWeekDist=%.3f,isWeekendDist=%.3f, holiday=%.3f, celebration=%.3f)", buf, 0x48u);
      }

LABEL_49:

      goto LABEL_50;
    }

    v65 = v64;
    v66 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
    v67 = 0.166666667;
    v104 = v44;
    if (v66)
    {
      v68 = v66;
      v69 = [weightsCopy objectForKeyedSubscript:?];
      if (v69)
      {
        v70 = v69;
        v103 = a2;
        v71 = [weightsCopy objectForKeyedSubscript:?];
        if (v71)
        {
          v72 = v71;
          v73 = [weightsCopy objectForKeyedSubscript:?];
          if (v73)
          {
            v101 = v73;
            [weightsCopy objectForKeyedSubscript:?];
            v74 = v102 = weightsCopy;

            if (!v74)
            {
              v67 = 0.166666667;
              v92 = 0.166666667;
              v93 = 0.166666667;
              v85 = 0.166666667;
              v88 = 0.166666667;
              v90 = 0.166666667;
              a2 = v103;
              weightsCopy = v102;
              goto LABEL_43;
            }

            weightsCopy = v102;
            v75 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
            [v75 doubleValue];
            v67 = v76;

            v77 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
            [v77 doubleValue];
            v79 = v78;

            v80 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
            [v80 doubleValue];
            v82 = v81;

            v83 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_isWeekend"];
            [v83 doubleValue];
            v85 = v84;

            v86 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_holiday"];
            [v86 doubleValue];
            v88 = v87;

            v65 = [v102 objectForKeyedSubscript:@"embeddingDistWeight_celebration"];
            [v65 doubleValue];
            v90 = v89;
            goto LABEL_41;
          }
        }

        *&v79 = 0.166666667;
        *&v82 = 0.166666667;
        v85 = 0.166666667;
        v88 = 0.166666667;
        v90 = 0.166666667;
LABEL_41:
        a2 = v103;
        goto LABEL_42;
      }
    }

    *&v79 = 0.166666667;
    *&v82 = 0.166666667;
    v85 = 0.166666667;
    v88 = 0.166666667;
    v90 = 0.166666667;
LABEL_42:

    v92 = *&v79;
    v44 = v104;
    v93 = *&v82;
    goto LABEL_43;
  }

LABEL_50:

  return v12;
}

- (double)getLocationContextDistanceFrom:(id)from withWeights:(id)weights
{
  weightsCopy = weights;
  fromCopy = from;
  selfCopy = self;
  locationContextEmbedding = [(MOEmbedding *)self locationContextEmbedding];
  locationContextEmbedding2 = [fromCopy locationContextEmbedding];

  v10 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];

    if (v14)
    {
      v15 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];
      v16 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];
      if ([v15 isEqualToString:v16])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }
    }
  }

  v17 = [locationContextEmbedding objectForKeyedSubscript:@"combinedPlaceType"];
  if (v17)
  {
    v18 = v17;
    v19 = [locationContextEmbedding2 objectForKeyedSubscript:@"combinedPlaceType"];

    if (v19)
    {
      v20 = [locationContextEmbedding objectForKeyedSubscript:@"combinedPlaceType"];
      v21 = [locationContextEmbedding2 objectForKeyedSubscript:@"combinedPlaceType"];
      if ([v20 isEqualToString:v21])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }
    }
  }

  v22 = [locationContextEmbedding objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
  v23 = 1.0;
  v24 = 1.0;
  if (v22)
  {
    v25 = v22;
    v26 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

    if (v26)
    {
      v27 = [locationContextEmbedding objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
      v28 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
      if ([v27 isEqualToString:v28])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }
    }
  }

  v29 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
  v75 = v12;
  if (v29)
  {
    v30 = v29;
    v31 = [locationContextEmbedding objectForKeyedSubscript:@"placeLongitude"];
    if (v31)
    {
      v32 = v31;
      v33 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLatitude"];
      if (v33)
      {
        v34 = v33;
        v35 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLongitude"];

        if (v35)
        {
          v36 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
          [v36 doubleValue];
          v38 = v37;

          v39 = [locationContextEmbedding objectForKeyedSubscript:@"placeLongitude"];
          [v39 doubleValue];
          v41 = v40;

          v42 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLatitude"];
          [v42 doubleValue];
          v44 = v43;

          v45 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLongitude"];
          [v45 doubleValue];
          v47 = v46;

          [RTLocation distanceFromlat1:v38 lon1:v41 tolat2:v44 lon2:v47];
          v49 = v48 * 0.00062137;
          if (v49 >= 200.0)
          {
            v23 = 1.0;
          }

          else
          {
            v23 = v49 / 200.0;
          }
        }

        goto LABEL_28;
      }
    }
  }

LABEL_28:
  v50 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeName"];
  if (!v50)
  {
    v53 = 0.25;
    goto LABEL_34;
  }

  v51 = v50;
  v52 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeType"];
  v53 = 0.25;
  if (!v52)
  {
LABEL_36:
    v62 = 0.25;
    v65 = 0.25;
    v67 = 0.25;
    goto LABEL_37;
  }

  v54 = v52;
  v55 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  if (!v55)
  {

    goto LABEL_36;
  }

  v56 = v55;
  v57 = [weightsCopy objectForKeyedSubscript:?];

  if (!v57)
  {
LABEL_34:
    v62 = 0.25;
    v65 = 0.25;
    v67 = 0.25;
    goto LABEL_38;
  }

  v58 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v58 doubleValue];
  v53 = v59;

  v60 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v60 doubleValue];
  v62 = v61;

  v63 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v63 doubleValue];
  v65 = v64;

  v51 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v51 doubleValue];
  v67 = v66;
LABEL_37:

LABEL_38:
  if (fabs(v53 + v62 + v65 + v67 + -1.0) >= 0.00001)
  {
    v68 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getLocationContextDistanceFrom:withWeights:];
    }

    v69 = +[NSAssertionHandler currentHandler];
    [v69 handleFailureInMethod:a2 object:selfCopy file:@"MOEmbedding.m" lineNumber:552 description:{@"Sum of location context distance weight is not 1, sum=%.3f (in %s:%d)", v53 + v62 + v65 + v67, "-[MOEmbedding getLocationContextDistanceFrom:withWeights:]", 552}];
  }

  v70 = v11 * v62 + v53 * v75 + v65 * v23 + v67 * v24;
  v71 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v77 = v70;
    v78 = 2048;
    v79 = v75;
    v80 = 2048;
    v81 = v11;
    v82 = 2048;
    v83 = v23;
    v84 = 2048;
    v85 = v24;
    _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Location context distance=%.3f (placeNameDist=%.3f,combinedPlaceTypeDist=%.3f,geoProxDist=%.3f,placeTypeFromPhotoTraits=%.3f)", buf, 0x34u);
  }

  return v70;
}

- (double)getSocialContextDistanceFrom:(id)from withWeights:(id)weights
{
  weightsCopy = weights;
  fromCopy = from;
  socialContextEmbedding = [(MOEmbedding *)self socialContextEmbedding];
  socialContextEmbedding2 = [fromCopy socialContextEmbedding];

  v11 = [socialContextEmbedding objectForKeyedSubscript:@"persons"];
  v12 = 1.0;
  v13 = 1.0;
  if (v11)
  {
    v14 = v11;
    v15 = [socialContextEmbedding2 objectForKeyedSubscript:@"persons"];

    if (v15)
    {
      v16 = [socialContextEmbedding2 objectForKeyedSubscript:@"persons"];
      v17 = [v16 valueForKey:@"name"];

      v18 = [socialContextEmbedding2 objectForKeyedSubscript:@"persons"];
      v19 = [v18 valueForKey:@"name"];

      if ([v17 count] && objc_msgSend(v19, "count"))
      {
        v20 = [v17 mutableCopy];
        v21 = [v17 mutableCopy];
        [v20 intersectSet:v19];
        [v21 unionSet:v19];
        v22 = [v20 count];
        v13 = 1.0 - v22 / [v21 count];
      }
    }
  }

  v23 = [socialContextEmbedding objectForKeyedSubscript:@"withContact"];
  if (v23)
  {
    v24 = v23;
    v25 = [socialContextEmbedding2 objectForKeyedSubscript:@"withContact"];

    if (v25)
    {
      v26 = [socialContextEmbedding objectForKeyedSubscript:@"withContact"];
      bOOLValue = [v26 BOOLValue];
      v28 = [socialContextEmbedding2 objectForKeyedSubscript:@"withContact"];
      if (bOOLValue != [v28 BOOLValue])
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }
    }
  }

  v29 = [socialContextEmbedding objectForKeyedSubscript:@"withFamily"];
  v30 = 1.0;
  v31 = 1.0;
  if (v29)
  {
    v32 = v29;
    v33 = [socialContextEmbedding2 objectForKeyedSubscript:@"withFamily"];

    if (v33)
    {
      v34 = [socialContextEmbedding objectForKeyedSubscript:@"withFamily"];
      bOOLValue2 = [v34 BOOLValue];
      v36 = [socialContextEmbedding2 objectForKeyedSubscript:@"withFamily"];
      if (bOOLValue2 != [v36 BOOLValue])
      {
        v31 = 1.0;
      }

      else
      {
        v31 = 0.0;
      }
    }
  }

  v37 = [socialContextEmbedding objectForKeyedSubscript:@"withCoworker"];
  if (v37)
  {
    v38 = v37;
    v39 = [socialContextEmbedding2 objectForKeyedSubscript:@"withCoworker"];

    if (v39)
    {
      v40 = [socialContextEmbedding objectForKeyedSubscript:@"withCoworker"];
      bOOLValue3 = [v40 BOOLValue];
      v42 = [socialContextEmbedding2 objectForKeyedSubscript:@"withCoworker"];
      if (bOOLValue3 != [v42 BOOLValue])
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }
    }
  }

  v43 = [socialContextEmbedding objectForKeyedSubscript:@"withFriend"];
  v44 = 1.0;
  v45 = 1.0;
  if (v43)
  {
    v46 = v43;
    v47 = [socialContextEmbedding2 objectForKeyedSubscript:@"withFriend"];

    if (v47)
    {
      v48 = [socialContextEmbedding objectForKeyedSubscript:@"withFriend"];
      bOOLValue4 = [v48 BOOLValue];
      v50 = [socialContextEmbedding2 objectForKeyedSubscript:@"withFriend"];
      if (bOOLValue4 != [v50 BOOLValue])
      {
        v45 = 1.0;
      }

      else
      {
        v45 = 0.0;
      }
    }
  }

  v124 = v45;
  v51 = [socialContextEmbedding objectForKeyedSubscript:@"withChild"];
  if (v51)
  {
    v52 = v51;
    v53 = [socialContextEmbedding2 objectForKeyedSubscript:@"withChild"];

    if (v53)
    {
      v54 = [socialContextEmbedding objectForKeyedSubscript:@"withChild"];
      bOOLValue5 = [v54 BOOLValue];
      v56 = [socialContextEmbedding2 objectForKeyedSubscript:@"withChild"];
      if (bOOLValue5 != [v56 BOOLValue])
      {
        v44 = 1.0;
      }

      else
      {
        v44 = 0.0;
      }
    }
  }

  v57 = [socialContextEmbedding objectForKeyedSubscript:@"withMyPet"];
  v58 = 1.0;
  v59 = 1.0;
  if (v57)
  {
    v60 = v57;
    v61 = [socialContextEmbedding2 objectForKeyedSubscript:@"withMyPet"];

    if (v61)
    {
      v62 = [socialContextEmbedding objectForKeyedSubscript:@"withMyPet"];
      bOOLValue6 = [v62 BOOLValue];
      v64 = [socialContextEmbedding2 objectForKeyedSubscript:@"withMyPet"];
      if (bOOLValue6 != [v64 BOOLValue])
      {
        v59 = 1.0;
      }

      else
      {
        v59 = 0.0;
      }
    }
  }

  v65 = [socialContextEmbedding objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
  if (v65)
  {
    v66 = v65;
    v67 = [socialContextEmbedding2 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

    if (v67)
    {
      v68 = [socialContextEmbedding objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
      v69 = [socialContextEmbedding2 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
      if ([v68 isEqualToString:v69])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = 1.0;
      }
    }
  }

  v70 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_contactNames"];
  v126 = v30;
  v127 = v12;
  v128 = v31;
  v129 = v13;
  v125 = v44;
  v122 = v59;
  v123 = v58;
  if (!v70)
  {
    v105 = 0.125;
    v104 = 0.125;
    v87 = 0.125;
    v90 = 0.125;
    v106 = 0.125;
    v96 = 0.125;
    v99 = 0.125;
    v102 = 0.125;
    goto LABEL_66;
  }

  v71 = v70;
  v72 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  v119 = 0.125;
  if (!v72)
  {
    v104 = 0.125;
    v87 = 0.125;
    v90 = 0.125;
    v93 = 0.125;
    v96 = 0.125;
    v99 = 0.125;
    v102 = 0.125;
    goto LABEL_65;
  }

  v73 = v72;
  v74 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  if (!v74)
  {

    v104 = 0.125;
    v87 = 0.125;
    v90 = 0.125;
    v93 = 0.125;
    v96 = 0.125;
    v99 = 0.125;
    v102 = 0.125;
    goto LABEL_65;
  }

  v75 = v74;
  v76 = [weightsCopy objectForKeyedSubscript:?];
  v77 = weightsCopy;
  if (!v76)
  {

    v104 = 0.125;
    v87 = 0.125;
    v90 = 0.125;
    v93 = 0.125;
    v96 = 0.125;
    v99 = 0.125;
    v102 = 0.125;
    goto LABEL_65;
  }

  v78 = v76;
  v118 = v77;
  v79 = [v77 objectForKeyedSubscript:?];
  if (!v79)
  {
LABEL_64:

    v104 = 0.125;
    v87 = 0.125;
    v90 = 0.125;
    v93 = 0.125;
    v96 = 0.125;
    v99 = 0.125;
    v102 = 0.125;
    weightsCopy = v118;
    goto LABEL_65;
  }

  v80 = v79;
  v81 = [v118 objectForKeyedSubscript:?];
  if (!v81)
  {
LABEL_63:

    goto LABEL_64;
  }

  v117 = v81;
  v82 = [v118 objectForKeyedSubscript:?];
  if (!v82)
  {

    goto LABEL_63;
  }

  v116 = v82;
  v120 = [v118 objectForKeyedSubscript:?];

  if (v120)
  {
    weightsCopy = v118;
    v83 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_contactNames"];
    [v83 doubleValue];
    v119 = v84;

    v85 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
    [v85 doubleValue];
    v87 = v86;

    v88 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
    [v88 doubleValue];
    v90 = v89;

    v91 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
    [v91 doubleValue];
    v93 = v92;

    v94 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_isWithChild"];
    [v94 doubleValue];
    v96 = v95;

    v97 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
    [v97 doubleValue];
    v99 = v98;

    v100 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
    [v100 doubleValue];
    v102 = v101;

    v71 = [v118 objectForKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
    [v71 doubleValue];
    v104 = v103;
LABEL_65:

    v105 = v119;
    v106 = v93;
    goto LABEL_66;
  }

  v105 = 0.125;
  v104 = 0.125;
  v87 = 0.125;
  v90 = 0.125;
  v106 = 0.125;
  v96 = 0.125;
  v99 = 0.125;
  v102 = 0.125;
  weightsCopy = v118;
LABEL_66:
  v107 = v87;
  v108 = v105 + v104 + v87 + v90 + v106 + v96 + v99 + v102;
  if (fabs(v108 + -1.0) >= 0.00001)
  {
    v121 = v106;
    v109 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getSocialContextDistanceFrom:withWeights:];
    }

    v110 = +[NSAssertionHandler currentHandler];
    [v110 handleFailureInMethod:a2 object:self file:@"MOEmbedding.m" lineNumber:623 description:{@"Sum of social context distance weight is not 1, sum=%.3f (in %s:%d)", *&v108, "-[MOEmbedding getSocialContextDistanceFrom:withWeights:]", 623}];

    v106 = v121;
  }

  v111 = v127 * v104 + v105 * v129 + v107 * v128 + v90 * v126 + v106 * v124 + v96 * v125 + v99 * v122;
  v112 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
  {
    [MOEmbedding getSocialContextDistanceFrom:withWeights:];
  }

  v113 = v111 + v102 * v123;

  v114 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134220032;
    v131 = v113;
    v132 = 2048;
    v133 = v129;
    v134 = 2048;
    v135 = v127;
    v136 = 2048;
    v137 = v128;
    v138 = 2048;
    v139 = v126;
    v140 = 2048;
    v141 = v124;
    v142 = 2048;
    v143 = v125;
    v144 = 2048;
    v145 = v122;
    v146 = 2048;
    v147 = v123;
    _os_log_debug_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEBUG, "Social context distance=%.3f (contactNames=%.3f,isWithContact=%.3f,isWithFamily=%.3f,isWithCoworker=%.3f,isWithFriend=%.3f,isWithChild=%.3f,isWithMyPet=%.3f,socialEventFromPhotoTraits=%.3f)", buf, 0x5Cu);
  }

  return v113;
}

- (double)getStateOfMindContextDistanceFrom:(id)from withWeights:(id)weights
{
  weightsCopy = weights;
  fromCopy = from;
  selfCopy = self;
  stateOfMindContextEmbedding = [(MOEmbedding *)self stateOfMindContextEmbedding];
  stateOfMindContextEmbedding2 = [fromCopy stateOfMindContextEmbedding];

  v10 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];

    if (v14)
    {
      v15 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
      v16 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
      if ([v15 count] && objc_msgSend(v16, "count"))
      {
        lastObject = [v15 lastObject];
        [lastObject doubleValue];
        v19 = v18;

        lastObject2 = [v16 lastObject];
        [lastObject2 doubleValue];
        v22 = v21;

        v12 = vabdd_f64(v19, v22) * 0.5;
      }
    }
  }

  v23 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
  if (v23)
  {
    v24 = v23;
    v25 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];

    if (v25)
    {
      v26 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
      v27 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
      if ([v26 count] && objc_msgSend(v27, "count"))
      {
        v28 = [NSMutableSet setWithArray:v26];
        v29 = [NSMutableSet setWithArray:v26];
        v30 = [NSSet setWithArray:v27];
        [v28 intersectSet:v30];
        [v29 unionSet:v30];
        v31 = [v28 count];
        v11 = 1.0 - v31 / [v29 count];
      }
    }
  }

  v32 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];
  v33 = 1.0;
  if (v32)
  {
    v34 = v32;
    v35 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];

    if (v35)
    {
      v36 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];
      v37 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:@"persons"];
      if ([v36 count] && objc_msgSend(v37, "count"))
      {
        v38 = [NSMutableSet setWithArray:v36];
        v39 = [NSMutableSet setWithArray:v36];
        v40 = [NSSet setWithArray:v37];
        [v38 intersectSet:v40];
        [v39 unionSet:v40];
        v41 = [v38 count];
        v33 = 1.0 - v41 / [v39 count];
      }
    }
  }

  v42 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  if (!v42)
  {
    goto LABEL_23;
  }

  v43 = v42;
  v44 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  if (!v44)
  {
    v49 = 0.333333333;
    v52 = 0.333333333;
    v54 = 0.333333333;
    goto LABEL_25;
  }

  v45 = v44;
  v46 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];

  if (!v46)
  {
LABEL_23:
    v49 = 0.333333333;
    v52 = 0.333333333;
    v54 = 0.333333333;
    goto LABEL_26;
  }

  v47 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v47 doubleValue];
  v49 = v48;

  v50 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v50 doubleValue];
  v52 = v51;

  v43 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v43 doubleValue];
  v54 = v53;
LABEL_25:

LABEL_26:
  if (fabs(v49 + v52 + v54 + -1.0) >= 0.00001)
  {
    v55 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [MOEmbedding getStateOfMindContextDistanceFrom:withWeights:];
    }

    v56 = +[NSAssertionHandler currentHandler];
    [v56 handleFailureInMethod:a2 object:selfCopy file:@"MOEmbedding.m" lineNumber:695 description:{@"Sum of state of mind context distance weight is not 1, sum=%.3f (in %s:%d)", v49 + v52 + v54, "-[MOEmbedding getStateOfMindContextDistanceFrom:withWeights:]", 695}];
  }

  v57 = v11 * v52 + v49 * v12 + v54 * v33;
  v58 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v63 = v57;
    v64 = 2048;
    v65 = v12;
    v66 = 2048;
    v67 = v11;
    v68 = 2048;
    v69 = v33;
    _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "State of mind context distance=%.3f (valence=%.3f,SOMDomains=%.3f,SOMLabels=%.3f)", buf, 0x2Au);
  }

  return v57;
}

- (double)getExtraContextDistanceFrom:(id)from withWeights:(id)weights
{
  fromCopy = from;
  extraContextEmbedding = [(MOEmbedding *)self extraContextEmbedding];
  extraContextEmbedding2 = [fromCopy extraContextEmbedding];

  v8 = [extraContextEmbedding objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  v9 = 1.0;
  if (v8)
  {
    v10 = v8;
    v11 = [extraContextEmbedding2 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v11)
    {
      v12 = [extraContextEmbedding objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
      v13 = [extraContextEmbedding2 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
      if ([v12 isEqualToString:v13])
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }
    }
  }

  return v9;
}

- (id)description
{
  bundleIdentifier = [(MOEmbedding *)self bundleIdentifier];
  suggestionID = [(MOEmbedding *)self suggestionID];
  embeddingType = [(MOEmbedding *)self embeddingType];
  activityContextEmbedding = [(MOEmbedding *)self activityContextEmbedding];
  timeContextEmbedding = [(MOEmbedding *)self timeContextEmbedding];
  locationContextEmbedding = [(MOEmbedding *)self locationContextEmbedding];
  socialContextEmbedding = [(MOEmbedding *)self socialContextEmbedding];
  stateOfMindContextEmbedding = [(MOEmbedding *)self stateOfMindContextEmbedding];
  extraContextEmbedding = [(MOEmbedding *)self extraContextEmbedding];
  v12 = [NSString stringWithFormat:@"<MOEmbedding bundleID:%@, suggestionID:%@, embeddingType:%lu, activityContextEmbedding:%@, timeContextEmbedding:%@, locationContextEmbedding:%@, socialContextEmbedding:%@, stateOfMindContextEmbedding:%@, extraContextEmbedding:%@>", bundleIdentifier, suggestionID, embeddingType, activityContextEmbedding, timeContextEmbedding, locationContextEmbedding, socialContextEmbedding, stateOfMindContextEmbedding, extraContextEmbedding];

  return v12;
}

- (id)summaryDictionary
{
  v3 = objc_opt_new();
  bundleIdentifier = [(MOEmbedding *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];

  suggestionID = [(MOEmbedding *)self suggestionID];
  [v3 setObject:suggestionID forKeyedSubscript:@"suggestionID"];

  activityContextEmbedding = [(MOEmbedding *)self activityContextEmbedding];
  [v3 addEntriesFromDictionary:activityContextEmbedding];

  timeContextEmbedding = [(MOEmbedding *)self timeContextEmbedding];
  v8 = [timeContextEmbedding objectForKeyedSubscript:@"normalizedDuration"];

  if (v8)
  {
    timeContextEmbedding2 = [(MOEmbedding *)self timeContextEmbedding];
    v10 = [timeContextEmbedding2 objectForKeyedSubscript:@"normalizedDuration"];
    [v3 setObject:v10 forKeyedSubscript:@"normalizedDuration"];
  }

  timeContextEmbedding3 = [(MOEmbedding *)self timeContextEmbedding];
  v12 = [timeContextEmbedding3 objectForKeyedSubscript:@"timeTag"];

  if (v12)
  {
    timeContextEmbedding4 = [(MOEmbedding *)self timeContextEmbedding];
    v14 = [timeContextEmbedding4 objectForKeyedSubscript:@"timeTag"];
    [v3 setObject:v14 forKeyedSubscript:@"timeTag"];
  }

  timeContextEmbedding5 = [(MOEmbedding *)self timeContextEmbedding];
  v16 = [timeContextEmbedding5 objectForKeyedSubscript:@"dayOfWeek"];

  if (v16)
  {
    timeContextEmbedding6 = [(MOEmbedding *)self timeContextEmbedding];
    v18 = [timeContextEmbedding6 objectForKeyedSubscript:@"dayOfWeek"];
    v19 = -[MOEmbedding dayOfWeekString:](self, "dayOfWeekString:", [v18 intValue]);
    [v3 setObject:v19 forKeyedSubscript:@"dayOfWeek"];
  }

  timeContextEmbedding7 = [(MOEmbedding *)self timeContextEmbedding];
  v21 = [timeContextEmbedding7 objectForKeyedSubscript:@"weekOfYear"];

  if (v21)
  {
    timeContextEmbedding8 = [(MOEmbedding *)self timeContextEmbedding];
    v23 = [timeContextEmbedding8 objectForKeyedSubscript:@"weekOfYear"];
    [v3 setObject:v23 forKeyedSubscript:@"weekOfYear"];
  }

  timeContextEmbedding9 = [(MOEmbedding *)self timeContextEmbedding];
  v25 = [timeContextEmbedding9 objectForKeyedSubscript:@"isWeekend"];

  if (v25)
  {
    timeContextEmbedding10 = [(MOEmbedding *)self timeContextEmbedding];
    v27 = [timeContextEmbedding10 objectForKeyedSubscript:@"isWeekend"];
    [v3 setObject:v27 forKeyedSubscript:@"isWeekend"];
  }

  timeContextEmbedding11 = [(MOEmbedding *)self timeContextEmbedding];
  v29 = [timeContextEmbedding11 objectForKeyedSubscript:@"holiday"];

  if (v29)
  {
    timeContextEmbedding12 = [(MOEmbedding *)self timeContextEmbedding];
    v31 = [timeContextEmbedding12 objectForKeyedSubscript:@"holiday"];
    [v3 setObject:v31 forKeyedSubscript:@"holiday"];
  }

  timeContextEmbedding13 = [(MOEmbedding *)self timeContextEmbedding];
  v33 = [timeContextEmbedding13 objectForKeyedSubscript:@"celebration"];

  if (v33)
  {
    timeContextEmbedding14 = [(MOEmbedding *)self timeContextEmbedding];
    v35 = [timeContextEmbedding14 objectForKeyedSubscript:@"celebration"];
    [v3 setObject:v35 forKeyedSubscript:@"celebration"];
  }

  locationContextEmbedding = [(MOEmbedding *)self locationContextEmbedding];
  v37 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];

  if (v37)
  {
    locationContextEmbedding2 = [(MOEmbedding *)self locationContextEmbedding];
    v39 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];
    [v3 setObject:v39 forKeyedSubscript:@"placeName"];
  }

  locationContextEmbedding3 = [(MOEmbedding *)self locationContextEmbedding];
  v41 = [locationContextEmbedding3 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v41)
  {
    locationContextEmbedding4 = [(MOEmbedding *)self locationContextEmbedding];
    v43 = [locationContextEmbedding4 objectForKeyedSubscript:@"combinedPlaceType"];
    [v3 setObject:v43 forKeyedSubscript:@"combinedPlaceType"];
  }

  locationContextEmbedding5 = [(MOEmbedding *)self locationContextEmbedding];
  v45 = [locationContextEmbedding5 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v45)
  {
    locationContextEmbedding6 = [(MOEmbedding *)self locationContextEmbedding];
    v47 = [locationContextEmbedding6 objectForKeyedSubscript:@"enclosingAreaName"];
    [v3 setObject:v47 forKeyedSubscript:@"enclosingAreaName"];
  }

  locationContextEmbedding7 = [(MOEmbedding *)self locationContextEmbedding];
  v49 = [locationContextEmbedding7 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  if (v49)
  {
    locationContextEmbedding8 = [(MOEmbedding *)self locationContextEmbedding];
    v51 = [locationContextEmbedding8 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
    [v3 setObject:v51 forKeyedSubscript:@"placeTypeFromPhotoTraits"];
  }

  locationContextEmbedding9 = [(MOEmbedding *)self locationContextEmbedding];
  v53 = [locationContextEmbedding9 objectForKeyedSubscript:@"placeFamiliarityIndexLOI"];

  if (v53)
  {
    locationContextEmbedding10 = [(MOEmbedding *)self locationContextEmbedding];
    v55 = [locationContextEmbedding10 objectForKeyedSubscript:@"placeFamiliarityIndexLOI"];
    [v3 setObject:v55 forKeyedSubscript:@"placeFamiliarityIndexLOI"];
  }

  socialContextEmbedding = [(MOEmbedding *)self socialContextEmbedding];
  v57 = [socialContextEmbedding objectForKeyedSubscript:@"persons"];

  if (v57)
  {
    socialContextEmbedding2 = [(MOEmbedding *)self socialContextEmbedding];
    v59 = [socialContextEmbedding2 objectForKeyedSubscript:@"persons"];
    [v3 setObject:v59 forKeyedSubscript:@"persons"];
  }

  socialContextEmbedding3 = [(MOEmbedding *)self socialContextEmbedding];
  v61 = [socialContextEmbedding3 objectForKeyedSubscript:@"withFamily"];

  if (v61)
  {
    socialContextEmbedding4 = [(MOEmbedding *)self socialContextEmbedding];
    v63 = [socialContextEmbedding4 objectForKeyedSubscript:@"withFamily"];
    [v3 setObject:v63 forKeyedSubscript:@"withFamily"];
  }

  socialContextEmbedding5 = [(MOEmbedding *)self socialContextEmbedding];
  v65 = [socialContextEmbedding5 objectForKeyedSubscript:@"withCoworker"];

  if (v65)
  {
    socialContextEmbedding6 = [(MOEmbedding *)self socialContextEmbedding];
    v67 = [socialContextEmbedding6 objectForKeyedSubscript:@"withCoworker"];
    [v3 setObject:v67 forKeyedSubscript:@"withCoworker"];
  }

  socialContextEmbedding7 = [(MOEmbedding *)self socialContextEmbedding];
  v69 = [socialContextEmbedding7 objectForKeyedSubscript:@"withFriend"];

  if (v69)
  {
    socialContextEmbedding8 = [(MOEmbedding *)self socialContextEmbedding];
    v71 = [socialContextEmbedding8 objectForKeyedSubscript:@"withFriend"];
    [v3 setObject:v71 forKeyedSubscript:@"withFriend"];
  }

  socialContextEmbedding9 = [(MOEmbedding *)self socialContextEmbedding];
  v73 = [socialContextEmbedding9 objectForKeyedSubscript:@"withChild"];

  if (v73)
  {
    socialContextEmbedding10 = [(MOEmbedding *)self socialContextEmbedding];
    v75 = [socialContextEmbedding10 objectForKeyedSubscript:@"withChild"];
    [v3 setObject:v75 forKeyedSubscript:@"withChild"];
  }

  socialContextEmbedding11 = [(MOEmbedding *)self socialContextEmbedding];
  v77 = [socialContextEmbedding11 objectForKeyedSubscript:@"withMyPet"];

  if (v77)
  {
    socialContextEmbedding12 = [(MOEmbedding *)self socialContextEmbedding];
    v79 = [socialContextEmbedding12 objectForKeyedSubscript:@"withMyPet"];
    [v3 setObject:v79 forKeyedSubscript:@"withMyPet"];
  }

  socialContextEmbedding13 = [(MOEmbedding *)self socialContextEmbedding];
  v81 = [socialContextEmbedding13 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

  if (v81)
  {
    socialContextEmbedding14 = [(MOEmbedding *)self socialContextEmbedding];
    v83 = [socialContextEmbedding14 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
    [v3 setObject:v83 forKeyedSubscript:@"socialEventFromPhotoTraits"];
  }

  stateOfMindContextEmbedding = [(MOEmbedding *)self stateOfMindContextEmbedding];
  v85 = [stateOfMindContextEmbedding objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];

  if (v85)
  {
    stateOfMindContextEmbedding2 = [(MOEmbedding *)self stateOfMindContextEmbedding];
    v87 = [stateOfMindContextEmbedding2 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
    [v3 setObject:v87 forKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
  }

  stateOfMindContextEmbedding3 = [(MOEmbedding *)self stateOfMindContextEmbedding];
  v89 = [stateOfMindContextEmbedding3 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];

  if (v89)
  {
    stateOfMindContextEmbedding4 = [(MOEmbedding *)self stateOfMindContextEmbedding];
    v91 = [stateOfMindContextEmbedding4 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];
    [v3 setObject:v91 forKeyedSubscript:kMOStateOfMindContextEmbeddingLabels];
  }

  stateOfMindContextEmbedding5 = [(MOEmbedding *)self stateOfMindContextEmbedding];
  v93 = [stateOfMindContextEmbedding5 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];

  if (v93)
  {
    stateOfMindContextEmbedding6 = [(MOEmbedding *)self stateOfMindContextEmbedding];
    v95 = [stateOfMindContextEmbedding6 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
    [v3 setObject:v95 forKeyedSubscript:kMOStateOfMindContextEmbeddingDomains];
  }

  extraContextEmbedding = [(MOEmbedding *)self extraContextEmbedding];
  [v3 addEntriesFromDictionary:extraContextEmbedding];

  return v3;
}

- (id)dayOfWeekString:(unint64_t)string
{
  if (string - 1 > 6)
  {
    return @"undefined";
  }

  else
  {
    return *(&off_10033D090 + string - 1);
  }
}

- (void)initWithEventBundle:forEmbeddingType:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)extractTimeContextEmbedding:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)extractStateOfMindContextEmbedding:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 metaDataForRank];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)extractContextsFromPhotoTraits:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)extractContextsFromPhotoTraits:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 timeContextEmbedding];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)extractContextsFromPhotoTraits:(void *)a3 .cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Current photo trait name:%@", a1, 0xCu);
}

- (void)extractContextsFromPhotoTraits:.cold.4()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_5_1(v0 v1)];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)extractContextsFromPhotoTraits:.cold.5()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_5_1(v0 v1)];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)extractContextsFromPhotoTraits:.cold.6()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_5_1(v0 v1)];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)extractContextsFromPhotoTraits:.cold.7()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_5_1(v0 v1)];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)getDistanceFrom:(void *)a1 withWeights:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 bundleIdentifier];
  v4 = [a2 bundleIdentifier];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)getDistanceFrom:withWeights:.cold.2()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getActivityContextDistanceFrom:withWeights:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getTimeContextDistanceFrom:withWeights:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getTimeContextDistanceFrom:withWeights:.cold.2()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getLocationContextDistanceFrom:withWeights:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getSocialContextDistanceFrom:withWeights:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)getSocialContextDistanceFrom:withWeights:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "social context embeddings e1 %@, e2 %@", v2, 0x16u);
}

- (void)getStateOfMindContextDistanceFrom:withWeights:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end