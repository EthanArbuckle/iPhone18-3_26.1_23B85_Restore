@interface MOEventSerializationSessionHelper
- (MOEventSerializationSessionHelper)initWithRandomization:(BOOL)a3;
- (id)serializeEvent:(id)a3;
- (id)serializeEventBundle:(id)a3;
- (void)_savePropertyToDictionary:(id)a3 withKey:(id)a4 andValue:(id)a5;
@end

@implementation MOEventSerializationSessionHelper

- (MOEventSerializationSessionHelper)initWithRandomization:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = MOEventSerializationSessionHelper;
  v4 = [(MOEventSerializationSessionHelper *)&v10 init];
  if (v4)
  {
    v5 = [NSSet setWithObjects:@"eventPlaceName", @"eventLocationLatitude", @"eventLocationLongitude", @"eventMediaTitle", @"eventMediaArtist", @"localIdentifier", @"name", @"eventContactGivenName", @"eventContactFamilyName", @"eventLocalizedFullName", @"eventItemURL", @"eventPhotoMemoryTitle", @"eventMediaPlaySessionsTitle", @"eventMediaPlaySessionsAlbum", @"eventMediaPlaySessionsGenre", @"eventMediaPlaySessionsArtist", @"bundlePlaceName", @"bundleLocationLatitude", @"bundleLocationLongitude", @"bundleResourceName", @"bundleResourceAssets", @"bundleEnclosingArea", @"media", @"media_name", @"city", @"place", @"Place", @"place_string", @"person", @"person_string", @"default_label", @"person_", @"me_person", @"me_person_identified", @"header", @"title", @"place_", @"Place_", @"media_type", @"media_album", @"unique_action_type_count", @"unique_activity_count", @"unique_place_count", @"unique_action_", @"unique_place_", @"Unique_place_", @"unique_city_", @"reflective_interval", @"valence_classification", @"state_of_mind_label_count", @"state_of_mind_label_1", @"state_of_mind_label_2", @"no_savoring_prompt", @"no_reappraisal_prompt", @"holiday_name", @"birthday_person_name", @"invite_title", @"MediaActionMetaDataAppName", 0];
    randomizedKeys = v4->_randomizedKeys;
    v4->_randomizedKeys = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    randomMapping = v4->_randomMapping;
    v4->_randomMapping = v7;

    v4->_shouldAvoidRandomization = !a3;
  }

  return v4;
}

- (id)serializeEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v4 eventIdentifier];
    v7 = [v6 UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventID" andValue:v7];

    v8 = [v4 startDate];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventStartDate" andValue:v9];

    v10 = [v4 endDate];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventEndDate" andValue:v11];

    v12 = [v4 creationDate];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCreationDate" andValue:v13];

    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 provider]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventProvider" andValue:v14];

    v15 = [v4 workoutType];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutType" andValue:v15];

    v16 = [v4 workoutTotalDistance];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutTotalDistance" andValue:v16];

    v17 = [v4 workoutTotalEnergyBurned];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutTotalEnergyBurned" andValue:v17];

    v18 = [v4 workoutDuration];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutDuration" andValue:v18];

    v19 = [v4 motionStepCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMotionStepCount" andValue:v19];

    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isFitnessPlusSession]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventIsFitnessPlusSession" andValue:v20];

    v21 = [v4 placeName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceName" andValue:v21];

    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 placeType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceType" andValue:v22];

    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 placeUserType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceUserType" andValue:v23];

    v24 = [v4 poiCategory];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPOICategory" andValue:v24];

    v25 = [v4 categoryMuid];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategoryMuid" andValue:v25];

    v26 = [v4 location];

    if (v26)
    {
      v27 = [v4 location];
      [v27 latitude];
      v28 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocationLatitude" andValue:v28];

      v29 = [v4 location];
      [v29 longitude];
      v30 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocationLongitude" andValue:v30];
    }

    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 placeDiscovery]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceDiscovery" andValue:v31];

    v32 = [v4 mediaTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaTitle" andValue:v32];

    v33 = [v4 mediaArtist];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaArtist" andValue:v33];

    v34 = [v4 mediaSumTimePlayed];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaSumTimePlayed" andValue:v34];

    v35 = [v4 mediaRepetitions];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaRepititions" andValue:v35];

    v36 = [v4 mediaEvent];
    v37 = [v36 mediaFirstPartyTimePlayedRatio];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaFirstPartyTimePlayedRatio" andValue:v37];

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 category]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategory" andValue:v38];

    v39 = [v4 pCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleCount" andValue:v39];

    v40 = [v4 densityScore];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleDensity" andValue:v40];

    v41 = [v4 densityScanDuration];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleDensityScanDuration" andValue:v41];

    v42 = objc_opt_new();
    v43 = [v4 mediaPlaySessions];
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke;
    v143[3] = &unk_100338748;
    v143[4] = self;
    v44 = v42;
    v144 = v44;
    [v43 enumerateObjectsUsingBlock:v143];

    v133 = v44;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaPlaySessions" andValue:v44];
    if ([v4 category] == 20)
    {
      v45 = objc_opt_new();
      v46 = [v4 screenTimeEvent];
      v47 = [v46 appCategoryUsages];
      v141[0] = _NSConcreteStackBlock;
      v141[1] = 3221225472;
      v141[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_2;
      v141[3] = &unk_100338770;
      v141[4] = self;
      v142 = v45;
      v48 = v45;
      [v47 enumerateObjectsUsingBlock:v141];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategoryUsage" andValue:v48];
      v49 = [v4 screenTimeEvent];
      v50 = [v49 longestActivity];
      v51 = [v50 startDate];
      [v51 timeIntervalSinceReferenceDate];
      v52 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLongestScreenTimeStartDate" andValue:v52];

      v53 = [v4 screenTimeEvent];
      v54 = [v53 longestActivity];
      v55 = [v54 endDate];
      [v55 timeIntervalSinceReferenceDate];
      v56 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLongestScreenTimeEndDate" andValue:v56];
    }

    v57 = objc_opt_new();
    v58 = objc_opt_new();
    v59 = [v4 extendedAttributes];
    v60 = [v59 photoMomentPersons];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_3;
    v139[3] = &unk_100338798;
    v139[4] = self;
    v61 = v58;
    v140 = v61;
    [v60 enumerateObjectsUsingBlock:v139];

    if ([v61 count])
    {
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"persons" andValue:v61];
    }

    v132 = v61;
    v62 = [v4 extendedAttributes];
    v63 = [v62 photoMomentLocalIdentifier];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"localIdentifier" andValue:v63];

    v64 = [v4 extendedAttributes];
    v65 = [v64 photoMomentInferences];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"inferences" andValue:v65];

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventExtendedAttributes" andValue:v57];
    v66 = [v4 interactionContactScore];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactScore" andValue:v66];

    v67 = [v4 interactionScoredContact];
    [v67 score];
    v68 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventScoredContactScore" andValue:v68];

    v69 = [v4 interactionScoredContact];
    v70 = [v69 contact];
    v71 = [v70 givenName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactGivenName" andValue:v71];

    v72 = [v4 interactionScoredContact];
    v73 = [v72 contact];
    v74 = [v73 familyName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactFamilyName" andValue:v74];

    v75 = [v4 interactionScoredContact];
    v76 = [v75 contact];
    v77 = [v76 localizedFullName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocalizedFullName" andValue:v77];

    v78 = objc_opt_new();
    v79 = [v4 interactionContacts];
    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_4;
    v136[3] = &unk_1003387C0;
    v136[4] = self;
    v80 = v4;
    v137 = v80;
    v81 = v78;
    v138 = v81;
    [v79 enumerateObjectsUsingBlock:v136];

    v131 = v81;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventInteractionContacts" andValue:v81];
    v82 = objc_opt_new();
    v83 = [v80 interactions];
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_5;
    v134[3] = &unk_1003387E8;
    v134[4] = self;
    v84 = v82;
    v135 = v84;
    [v83 enumerateObjectsUsingBlock:v134];

    v130 = v84;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventInteractions" andValue:v84];
    v85 = [v80 itemURL];
    v86 = [v85 absoluteString];

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemURL" andValue:v86];
    if (!self->_shouldAvoidRandomization && v86)
    {
      if ([v86 hasPrefix:@"https://apple.news"])
      {
        v87 = [v86 componentsSeparatedByString:@"https://apple.news"];
        v88 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v88 && [v87 count] == 2)
        {
          v89 = [@"https://apple.news" stringByAppendingString:v88];
          [v5 setObject:v89 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([v86 hasPrefix:@"https://music.apple.com"])
      {
        v90 = [v86 componentsSeparatedByString:@"https://music.apple.com"];
        v91 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v91 && [v90 count] == 2)
        {
          v92 = [@"https://music.apple.com" stringByAppendingString:v91];
          [v5 setObject:v92 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([v86 hasPrefix:@"https://podcasts.apple.com"])
      {
        v93 = [v86 componentsSeparatedByString:@"https://podcasts.apple.com"];
        v94 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v94 && [v93 count] == 2)
        {
          v95 = [@"https://podcasts.apple.com" stringByAppendingString:v94];
          [v5 setObject:v95 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([v86 hasPrefix:@"https://tv.apple.com"])
      {
        v96 = [v86 componentsSeparatedByString:@"https://tv.apple.com"];
        v97 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v97 && [v96 count] == 2)
        {
          v98 = [@"https://tv.apple.com" stringByAppendingString:v97];
          [v5 setObject:v98 forKeyedSubscript:@"eventItemURL"];
        }
      }
    }

    v99 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 itemShareDirection]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemShareDirection" andValue:v99];

    v100 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v80 itemIsPinned]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemIsPinned" andValue:v100];

    v101 = [v80 itemAttributionsCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemAttributionsCount" andValue:v101];

    v102 = [v80 appBundle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventAppBundle" andValue:v102];

    v103 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v80 fromFirstParty]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventFromFirstParty" andValue:v103];

    v104 = [v80 patterns];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPatterns" andValue:v104];

    v105 = [v80 photoMemoryTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryTitle" andValue:v105];

    v106 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 photoMemoryCategory]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryCategory" andValue:v106];

    v107 = [v80 photoEvent];
    v108 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v107 photoMemorySubCategory]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemorySubCategory" andValue:v108];

    v109 = [v80 photoMemoryTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryTitle" andValue:v109];

    v110 = [v80 photoEvent];
    [v110 photoMemoryRelevanceScore];
    v111 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryRelevanceScore" andValue:v111];

    v112 = [v80 photoEvent];
    v113 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v112 photoMemoryIsFavorite]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryIsFavorite" andValue:v113];

    v114 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 timeAtHomeSubType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventTimeAtHomeSubtype" andValue:v114];

    v115 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 motionType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMotionType" andValue:v115];

    [v80 familiarityIndexLOI];
    v116 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventFamiliarityIndexLOI" andValue:v116];

    [v80 placeNameConfidence];
    v117 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceNameConfidence" andValue:v117];

    [v80 confidenceScore];
    v118 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventConfidenceScore" andValue:v118];

    v119 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 lifeEventCategory]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLifeEventCategory" andValue:v119];

    v120 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 mode]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocationMode" andValue:v120];

    v121 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 placeSource]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceSource" andValue:v121];

    v122 = [v80 routineEvent];

    if (v122)
    {
      v123 = [v80 routineEvent];
      v124 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v123 isPreOnboardedVisit]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineIsPreOnboardedVisit" andValue:v124];

      v125 = [v80 routineEvent];
      v126 = [v125 poiCategory];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineEventPOICategory" andValue:v126];

      v127 = [v80 routineEvent];
      v128 = [v127 categoryMuid];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineEventCategoryMuid" andValue:v128];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v22 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = [v3 title];
    [v4 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsTitle" andValue:v5];

    v6 = *(a1 + 32);
    v7 = [v3 album];
    [v6 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsAlbum" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v3 bundleId];
    [v8 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsBundleId" andValue:v9];

    v10 = *(a1 + 32);
    v11 = [v3 genre];
    [v10 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsGenre" andValue:v11];

    v12 = *(a1 + 32);
    v13 = [v3 mediaType];
    [v12 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsMediaType" andValue:v13];

    v14 = *(a1 + 32);
    v15 = [v3 artist];
    [v14 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsArtist" andValue:v15];

    v16 = *(a1 + 32);
    v17 = [v3 startDate];
    [v17 timeIntervalSinceReferenceDate];
    v18 = [NSNumber numberWithDouble:?];
    [v16 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsStartDate" andValue:v18];

    v19 = *(a1 + 32);
    v20 = [v3 endDate];

    [v20 timeIntervalSinceReferenceDate];
    v21 = [NSNumber numberWithDouble:?];
    [v19 _savePropertyToDictionary:v22 withKey:@"eventMediaPlaySessionsEndDate" andValue:v21];

    [*(a1 + 40) addObject:v22];
  }
}

void __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v9 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = [v3 duration];
    [v4 _savePropertyToDictionary:v9 withKey:@"eventCategoryUsageDuration" andValue:v5];

    v6 = *(a1 + 32);
    v7 = [v3 appCategory];

    v8 = [NSNumber numberWithUnsignedInteger:v7];
    [v6 _savePropertyToDictionary:v9 withKey:@"eventCategoryUsageAppCategory" andValue:v8];

    [*(a1 + 40) addObject:v9];
  }
}

void __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v18 = v3;
    v4 = objc_opt_new();
    if ([v18 isMePerson])
    {
      v5 = @"JohnDoe";
    }

    else
    {
      v5 = [v18 name];
    }

    [*(a1 + 32) _savePropertyToDictionary:v4 withKey:@"name" andValue:v5];
    v6 = *(a1 + 32);
    v7 = [v18 family];
    [v6 _savePropertyToDictionary:v4 withKey:@"family" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v18 contactIdentifier];
    [v8 _savePropertyToDictionary:v4 withKey:@"contactIdentifier" andValue:v9];

    v10 = *(a1 + 32);
    [v18 significanceScore];
    v11 = [NSNumber numberWithDouble:?];
    [v10 _savePropertyToDictionary:v4 withKey:@"significanceScore" andValue:v11];

    v12 = *(a1 + 32);
    [v18 priorityScore];
    v13 = [NSNumber numberWithDouble:?];
    [v12 _savePropertyToDictionary:v4 withKey:@"priorityScore" andValue:v13];

    v14 = *(a1 + 32);
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isPHPersonTypeImportant]);
    [v14 _savePropertyToDictionary:v4 withKey:@"isPHPersonTypeImportant" andValue:v15];

    v16 = *(a1 + 32);
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isMePerson]);
    [v16 _savePropertyToDictionary:v4 withKey:@"isMePerson" andValue:v17];

    if (v4)
    {
      [*(a1 + 40) addObject:v4];
    }

    v3 = v18;
  }
}

void __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_4(id *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v17 = objc_opt_new();
    v4 = a1[4];
    [v3 score];
    v5 = [NSNumber numberWithDouble:?];
    [v4 _savePropertyToDictionary:v17 withKey:@"eventScoredContactScore" andValue:v5];

    v6 = a1[4];
    v7 = [v3 contact];
    v8 = [v7 givenName];
    [v6 _savePropertyToDictionary:v17 withKey:@"eventContactGivenName" andValue:v8];

    v9 = a1[4];
    v10 = [v3 contact];
    v11 = [v10 familyName];
    [v9 _savePropertyToDictionary:v17 withKey:@"eventContactFamilyName" andValue:v11];

    v12 = a1[4];
    v13 = [v3 contact];
    v14 = [v13 localizedFullName];
    [v12 _savePropertyToDictionary:v17 withKey:@"eventLocalizedFullName" andValue:v14];

    v15 = [a1[5] contactClassificationMap];
    v16 = [v15 objectForKey:v3];

    if (v16)
    {
      [a1[4] _savePropertyToDictionary:v17 withKey:@"eventContactClassification" andValue:v16];
    }

    [a1[6] addObject:v17];
  }
}

void __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v15 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = [v3 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    [v4 _savePropertyToDictionary:v15 withKey:@"eventInteractionsStartDate" andValue:v6];

    v7 = *(a1 + 32);
    v8 = [v3 endDate];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
    [v7 _savePropertyToDictionary:v15 withKey:@"eventInteractionsEndDate" andValue:v9];

    v10 = *(a1 + 32);
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 mechanism]);
    [v10 _savePropertyToDictionary:v15 withKey:@"eventInteractionsMechanism" andValue:v11];

    v12 = *(a1 + 32);
    v13 = [v3 direction];

    v14 = [NSNumber numberWithInteger:v13];
    [v12 _savePropertyToDictionary:v15 withKey:@"eventInteractionsDirection" andValue:v14];

    [*(a1 + 40) addObject:v15];
  }
}

- (id)serializeEventBundle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    [v4 buildResources];
    v6 = [v4 bundleIdentifier];
    v7 = [v6 UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleID" andValue:v7];

    v8 = [v4 suggestionID];
    v9 = [v8 UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"SuggestionID" andValue:v9];

    v10 = [v4 startDate];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleStartDate" andValue:v11];

    v12 = [v4 endDate];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleEndDate" andValue:v13];

    v14 = [v4 creationDate];
    [v14 timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleCreationDate" andValue:v15];

    v16 = [v4 firstCreationDate];
    [v16 timeIntervalSinceReferenceDate];
    v17 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleFirstCreationDate" andValue:v17];

    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 filtered]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleFiltered" andValue:v18];

    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 bundleSubType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleSubType" andValue:v19];

    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 bundleSuperType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleSuperType" andValue:v20];

    v21 = objc_opt_new();
    v22 = [v4 events];
    v285[0] = _NSConcreteStackBlock;
    v285[1] = 3221225472;
    v285[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke;
    v285[3] = &unk_100338810;
    v23 = v21;
    v286 = v23;
    [v22 enumerateObjectsUsingBlock:v285];

    v258 = v23;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleEvents" andValue:v23];
    v24 = [v4 subBundleIDs];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"subBundleIDs" andValue:v24];

    v25 = [v4 subSuggestionIDs];
    v261 = v5;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"subSuggestionIDs" andValue:v25];

    v267 = objc_opt_new();
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v26 = [v4 metaData];
    v27 = [v26 countByEnumeratingWithState:&v281 objects:v288 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v282;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v282 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v281 + 1) + 8 * i);
          objc_opt_class();
          v32 = v31;
          if (objc_opt_isKindOfClass())
          {
            v32 = [v31 stringValue];
          }

          v33 = [v4 metaData];
          v34 = [v33 objectForKey:v31];
          [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v267 withKey:v32 andValue:v34];
        }

        v28 = [v26 countByEnumeratingWithState:&v281 objects:v288 count:16];
      }

      while (v28);
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleMetadata" andValue:v267];
    if (self->_shouldAvoidRandomization)
    {
      v35 = [v4 labels];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleLabels" andValue:v35];

      v36 = [v4 promptLanguages];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePromptLanguages" andValue:v36];

      v37 = [v4 promptLanguage];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePromptLanguage" andValue:v37];
    }

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 interfaceType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleInterfaceType" andValue:v38];

    v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 summarizationGranularity]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSummarizationGranularity" andValue:v39];

    v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isAggregatedAndSuppressed]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleIsAggregatedAndSuppressed" andValue:v40];

    v41 = objc_opt_new();
    v42 = [v4 action];

    v260 = v41;
    if (v42)
    {
      v43 = [v4 action];
      v44 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v43 actionType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionType" andValue:v44];

      v45 = [v4 action];
      v46 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v45 actionSubtype]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionSubType" andValue:v46];

      v47 = [v4 action];
      [v47 actionNameConfidence];
      v48 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionNameConfidence" andValue:v48];

      v49 = objc_opt_new();
      v50 = [v4 action];
      v51 = [v50 actionMetaData];
      [v51 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
      v53 = v52 = v41;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataMediaType" andValue:v53];

      v54 = [v4 action];
      v55 = [v54 actionMetaData];
      v56 = [v55 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataMediaInfoType" andValue:v56];

      v57 = [v4 action];
      v58 = [v57 actionMetaData];
      v59 = [v58 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataAppName" andValue:v59];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v52 withKey:@"bundleActionMetadata" andValue:v49];
      if ([v4 interfaceType] == 10 && !self->_shouldAvoidRandomization)
      {
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v260 withKey:@"bundleActionName" andValue:@"PhotoMemory"];
      }

      else
      {
        v60 = [v4 action];
        v61 = [v60 actionName];
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v260 withKey:@"bundleActionName" andValue:v61];
      }

      v41 = v260;
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleAction" andValue:v41];
    v63 = objc_opt_new();
    v64 = [v4 concurrentMediaAction];

    v262 = v63;
    if (v64)
    {
      v65 = [v4 concurrentMediaAction];
      v66 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v65 actionType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionType" andValue:v66];

      v67 = [v4 concurrentMediaAction];
      v68 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v67 actionSubtype]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionSubType" andValue:v68];

      v69 = [v4 concurrentMediaAction];
      v70 = [v69 actionName];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionName" andValue:v70];

      v71 = [v4 concurrentMediaAction];
      [v71 actionNameConfidence];
      v72 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionNameConfidence" andValue:v72];

      v73 = objc_opt_new();
      v74 = [v4 concurrentMediaAction];
      v75 = [v74 actionMetaData];
      v76 = [v75 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataMediaType" andValue:v76];

      v77 = [v4 concurrentMediaAction];
      v78 = [v77 actionMetaData];
      v79 = [v78 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataMediaInfoType" andValue:v79];

      v80 = [v4 concurrentMediaAction];
      v81 = [v80 actionMetaData];
      v82 = [v81 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      v63 = v262;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataAppName" andValue:v82];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionMetadata" andValue:v73];
    }

    v62 = v261;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleConcurrentMediaAction" andValue:v63];
    v83 = objc_opt_new();
    v84 = [v4 actions];
    v279[0] = _NSConcreteStackBlock;
    v279[1] = 3221225472;
    v279[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_2;
    v279[3] = &unk_100338838;
    v279[4] = self;
    v85 = v83;
    v280 = v85;
    [v84 enumerateObjectsUsingBlock:v279];

    v257 = v85;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleBackgroundAction" andValue:v85];
    v86 = objc_opt_new();
    v87 = [v4 persons];
    v277[0] = _NSConcreteStackBlock;
    v277[1] = 3221225472;
    v277[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_3;
    v277[3] = &unk_100338798;
    v277[4] = self;
    v88 = v86;
    v278 = v88;
    [v87 enumerateObjectsUsingBlock:v277];

    v256 = v88;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePersons" andValue:v88];
    v89 = objc_opt_new();
    v90 = [v4 place];

    if (v90)
    {
      v91 = [v4 place];
      v92 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v91 placeUserType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceUserType" andValue:v92];

      v93 = [v4 place];
      v94 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v93 placeType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceType" andValue:v94];

      v95 = [v4 place];
      v96 = [v95 placeName];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceName" andValue:v96];

      v97 = [v4 place];
      v98 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v97 proposition]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceProposition" andValue:v98];

      v99 = [v4 place];
      [v99 placeNameConfidence];
      v100 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceNameConfidence" andValue:v100];

      v101 = [v4 place];
      v102 = [v101 location];
      [v102 latitude];
      v103 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationLatitude" andValue:v103];

      v104 = [v4 place];
      v105 = [v104 location];
      [v105 longitude];
      v106 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationLongitude" andValue:v106];

      v107 = [v4 place];
      v108 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v107 locationMode]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationMode" andValue:v108];

      v109 = [v4 place];
      v110 = [v109 poiCategory];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePoiCategory" andValue:v110];

      v111 = [v4 place];
      v112 = [v111 categoryMuid];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleCategoryMuid" andValue:v112];

      v113 = [v4 place];
      [v113 distanceToHomeInMiles];
      v114 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleDistanceToHomeInMiles" andValue:v114];

      v115 = [v4 place];
      [v115 familiarityIndexLOI];
      v116 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"familiarityIndexLOI" andValue:v116];

      v117 = [v4 place];
      v118 = [v117 enclosingArea];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleEnclosingArea" andValue:v118];

      v119 = [v4 place];
      v120 = [v119 startDate];
      [v120 timeIntervalSinceReferenceDate];
      v121 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleStartDate" andValue:v121];

      v122 = [v4 place];
      v123 = [v122 endDate];
      [v123 timeIntervalSinceReferenceDate];
      v124 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleEndDate" andValue:v124];

      v125 = [v4 place];
      [v125 priorityScore];
      v126 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlacePriorityScore" andValue:v126];
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePlace" andValue:v89];
    v127 = objc_opt_new();
    v128 = [v4 places];
    v274[0] = _NSConcreteStackBlock;
    v274[1] = 3221225472;
    v274[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_4;
    v274[3] = &unk_100338860;
    v274[4] = self;
    v255 = v89;
    v275 = v255;
    v129 = v127;
    v276 = v129;
    [v128 enumerateObjectsUsingBlock:v274];

    v254 = v129;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePlaces" andValue:v129];
    v130 = objc_opt_new();
    v131 = [v4 time];

    v259 = v130;
    if (v131)
    {
      v132 = [v4 time];
      v133 = [v132 identifier];
      v134 = [v133 UUIDString];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"timeIdentifier" andValue:v134];

      v130 = v259;
      v135 = [v4 time];
      [v135 timestamp];
      v136 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimestamp" andValue:v136];

      v137 = [v4 time];
      v138 = [v137 timeString];

      if (v138)
      {
        v139 = [v4 time];
        v140 = [v139 timeString];
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimestring" andValue:v140];
      }

      v141 = [v4 time];
      v142 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v141 timeTag]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimetag" andValue:v142];

      v143 = [v4 time];
      v144 = [v143 timeZone];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimezone" andValue:v144];

      v145 = [v4 time];
      v146 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v145 dateReferenceTag]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"dateReferenceTag" andValue:v146];
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleTime" andValue:v130];
    v147 = objc_opt_new();
    v148 = [v4 resources];
    v272[0] = _NSConcreteStackBlock;
    v272[1] = 3221225472;
    v272[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_5;
    v272[3] = &unk_100338888;
    v272[4] = self;
    v149 = v147;
    v273 = v149;
    [v148 enumerateObjectsUsingBlock:v272];

    v253 = v149;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleResources" andValue:v149];
    v150 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 photoSource]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePhotoSource" andValue:v150];

    v151 = [v4 visitEventsRejectedByWatchLocation];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleVisitEventsRejectedByWatchLocation" andValue:v151];

    v152 = [v4 suggestionEngagementEvents];

    if (v152)
    {
      v153 = [v4 suggestionEngagementEvents];
      v154 = [v153 allObjects];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSuggestionEngagementEvents" andValue:v154];
    }

    [v4 suggestionEngagementViewCount];
    v155 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 suggestionEngagementViewCount]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSuggestionEngagementViewCount" andValue:v155];

    v156 = [v4 appEntryEngagementEvents];

    if (v156)
    {
      v157 = [v4 appEntryEngagementEvents];
      v158 = [v157 allObjects];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleAppEntryEngagementEvents" andValue:v158];
    }

    v159 = [v4 rankingDictionary];

    if (v159)
    {
      v160 = [v4 rankingDictionary];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleRanking" andValue:v160];
    }

    v161 = [v4 metaDataForRank];

    if (v161)
    {
      v162 = [v4 metaDataForRank];
      v163 = [v162 mutableCopy];

      if (!self->_shouldAvoidRandomization)
      {
        [v163 removeObjectForKey:@"StateOfMindLabels"];
        [v163 removeObjectForKey:@"StateOfMindDomains"];
        [v163 removeObjectForKey:@"StateOfMindValence"];
        [v163 removeObjectForKey:@"StateOfMindValenceClassification"];
        [v163 removeObjectForKey:@"StateOfMindReflectiveInterval"];
        [v163 removeObjectForKey:@"StateOfMindLoggedIn3pApp"];
        [v163 removeObjectForKey:@"StateOfMindLoggedInJournalApp"];
      }

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleMetaDataForRanking" andValue:v163];
    }

    v164 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 timeAtHomeSubType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleTimeAtHomeSubtype" andValue:v164];

    v165 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 includedInSummaryBundleOnly]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleIncludedInSummaryBundleOnly" andValue:v165];

    v263 = objc_opt_new();
    v166 = [v4 clusterMetadata];

    if (v166)
    {
      v167 = [v4 clusterMetadata];
      v168 = [v167 identifier];
      v169 = [v168 UUIDString];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"outlierMetadataidentifier" andValue:v169];

      v170 = [v4 clusterMetadata];
      v171 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v170 isFiltered]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"isFiltered" andValue:v171];

      v172 = [v4 clusterMetadata];
      v173 = [v172 phenotype];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"phenotype" andValue:v173];

      v174 = [v4 clusterMetadata];
      v175 = [v174 topLevelActivityHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"topLevelActivityHistogram" andValue:v175];

      v176 = [v4 clusterMetadata];
      v177 = [v176 secondLevelActivityHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"secondLevelActivityHistogram" andValue:v177];

      v178 = [v4 clusterMetadata];
      v179 = [v178 activityTypeFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"activityTypeFromPhotoTraitsHistogram" andValue:v179];

      v180 = [v4 clusterMetadata];
      v181 = [v180 timeTagHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"timeTagHistogram" andValue:v181];

      v182 = [v4 clusterMetadata];
      v183 = [v182 dayOfWeekHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"dayOfWeekHistogram" andValue:v183];

      v184 = [v4 clusterMetadata];
      v185 = [v184 weekOfYearHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"weekOfYearHistogram" andValue:v185];

      v186 = [v4 clusterMetadata];
      v187 = [v186 holidayHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"holidayHistogram" andValue:v187];

      v188 = [v4 clusterMetadata];
      v189 = [v188 celebrationHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"celebrationHistogram" andValue:v189];

      v190 = [v4 clusterMetadata];
      v191 = [v190 placeNameHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"placeNameHistogram" andValue:v191];

      v192 = [v4 clusterMetadata];
      v193 = [v192 combinedPlaceTypeHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"combinedPlaceTypeHistogram" andValue:v193];

      v194 = [v4 clusterMetadata];
      v195 = [v194 enclosingPlaceNameHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"enclosingPlaceNameHistogram" andValue:v195];

      v196 = [v4 clusterMetadata];
      v197 = [v196 placeTypeFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"placeTypeFromPhotoTraitsHistogram" andValue:v197];

      v198 = [v4 clusterMetadata];
      v199 = [v198 contactNamesHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"contactNamesHistogram" andValue:v199];

      v200 = [v4 clusterMetadata];
      v201 = [v200 personRelationshipHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"personRelationshipHistogram" andValue:v201];

      v202 = [v4 clusterMetadata];
      v203 = [v202 socialEventFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"socialEventFromPhotoTraitsHistogram" andValue:v203];

      v204 = [v4 clusterMetadata];
      v205 = [v204 otherSubjectFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"otherSubjectFromPhotoTraitsHistogram" andValue:v205];

      v206 = [v4 clusterMetadata];
      v207 = [v206 stateOfMindValenceHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"stateOfMindValenceHistogram" andValue:v207];

      v208 = [v4 clusterMetadata];
      v209 = [v208 subBundleGoodnessScores];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"subBundleGoodnessScores" andValue:v209];

      v210 = [v4 clusterMetadata];
      v211 = [v210 subSuggestionIDsBeforePruning];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"subSuggestionIDsBeforePruning" andValue:v211];

      v212 = [v4 clusterMetadata];
      v213 = [v212 phenotypePersonUUIDs];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"phenotypePersonUUIDs" andValue:v213];

      v214 = [v4 clusterMetadata];
      v215 = [v214 timeContextFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"timeContextFromPhotoTraitsHistogram" andValue:v215];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"clusterMetadata" andValue:v263];
    }

    v216 = objc_opt_new();
    v217 = [v4 outlierMetadata];

    if (v217)
    {
      v218 = [v4 outlierMetadata];
      v219 = [v218 identifier];
      [v219 UUIDString];
      v221 = v220 = v216;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierMetadataidentifier" andValue:v221];

      v222 = [v4 outlierMetadata];
      v223 = [v222 updatedDate];
      [v223 timeIntervalSinceReferenceDate];
      v224 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"updatedDate" andValue:v224];

      v216 = v220;
      v225 = [v4 outlierMetadata];
      v226 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v225 isSignificant]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"isSignificant" andValue:v226];

      v227 = [v4 outlierMetadata];
      [v227 outlierScore];
      v228 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierScore" andValue:v228];

      v229 = [v4 outlierMetadata];
      [v229 outlierScoreThreshold];
      v230 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierScoreThreshold" andValue:v230];

      v231 = [v4 outlierMetadata];
      [v231 bundleGoodnessScore];
      v232 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"bundleGoodnessScore" andValue:v232];

      v233 = [v4 outlierMetadata];
      [v233 bundleGoodnessScoreThreshold];
      v234 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"bundleGoodnessScoreThreshold" andValue:v234];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"outlierMetadata" andValue:v220];
    }

    v235 = [v4 photoTraits];
    v236 = [v235 count];

    if (v236)
    {
      v251 = v216;
      v265 = objc_opt_new();
      v268 = 0u;
      v269 = 0u;
      v270 = 0u;
      v271 = 0u;
      v252 = v4;
      obj = [v4 photoTraits];
      v237 = [obj countByEnumeratingWithState:&v268 objects:v287 count:16];
      if (v237)
      {
        v238 = v237;
        v266 = *v269;
        do
        {
          for (j = 0; j != v238; j = j + 1)
          {
            if (*v269 != v266)
            {
              objc_enumerationMutation(obj);
            }

            v240 = *(*(&v268 + 1) + 8 * j);
            v241 = objc_opt_new();
            v242 = [v240 identifier];
            v243 = [v242 UUIDString];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"identifier" andValue:v243];

            v244 = [v240 name];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"name" andValue:v244];

            v245 = [v240 labelType];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"labelType" andValue:v245];

            v246 = [v240 holidayIdentifier];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"holidayIdentifier" andValue:v246];

            v247 = [v240 meaningIdentifier];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"meaningIdentifier" andValue:v247];

            v248 = [v240 relevantAssetUUIDs];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"relevantAssetUUIDs" andValue:v248];

            v249 = [v240 associatedPersonLocalIdentifiers];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"associatedPersonLocalIdentifiers" andValue:v249];

            if ([v241 count])
            {
              [v265 addObject:v241];
            }
          }

          v238 = [obj countByEnumeratingWithState:&v268 objects:v287 count:16];
        }

        while (v238);
      }

      v62 = v261;
      if ([v265 count])
      {
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"photoTraits" andValue:v265];
      }

      v216 = v251;
      v4 = v252;
    }
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

void __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventIdentifier];
  v4 = [v3 UUIDString];

  [*(a1 + 32) addObject:v4];
}

void __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v22 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 actionType]);
    [v4 _savePropertyToDictionary:v22 withKey:@"bundleActionType" andValue:v5];

    v6 = *(a1 + 32);
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 actionSubtype]);
    [v6 _savePropertyToDictionary:v22 withKey:@"bundleActionSubType" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v3 actionName];
    [v8 _savePropertyToDictionary:v22 withKey:@"bundleActionName" andValue:v9];

    v10 = *(a1 + 32);
    [v3 actionNameConfidence];
    v11 = [NSNumber numberWithDouble:?];
    [v10 _savePropertyToDictionary:v22 withKey:@"bundleActionNameConfidence" andValue:v11];

    v12 = objc_opt_new();
    v13 = *(a1 + 32);
    v14 = [v3 actionMetaData];
    v15 = [v14 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
    [v13 _savePropertyToDictionary:v12 withKey:@"MediaActionMetaDataMediaType" andValue:v15];

    v16 = *(a1 + 32);
    v17 = [v3 actionMetaData];
    v18 = [v17 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];
    [v16 _savePropertyToDictionary:v12 withKey:@"MediaActionMetaDataMediaInfoType" andValue:v18];

    v19 = *(a1 + 32);
    v20 = [v3 actionMetaData];

    v21 = [v20 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
    [v19 _savePropertyToDictionary:v12 withKey:@"MediaActionMetaDataAppName" andValue:v21];

    [*(a1 + 32) _savePropertyToDictionary:v22 withKey:@"bundleActionMetadata" andValue:v12];
    [*(a1 + 40) addObject:v22];
  }
}

void __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    if ([v3 isMePerson])
    {
      v5 = @"JohnDoe";
    }

    else
    {
      v5 = [v3 name];
    }

    [*(a1 + 32) _savePropertyToDictionary:v4 withKey:@"name" andValue:v5];
    v6 = *(a1 + 32);
    v7 = [v3 family];
    [v6 _savePropertyToDictionary:v4 withKey:@"family" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v3 contactIdentifier];
    [v8 _savePropertyToDictionary:v4 withKey:@"contactIdentifier" andValue:v9];

    v10 = *(a1 + 32);
    [v3 significanceScore];
    v11 = [NSNumber numberWithDouble:?];
    [v10 _savePropertyToDictionary:v4 withKey:@"significanceScore" andValue:v11];

    v12 = *(a1 + 32);
    [v3 priorityScore];
    v13 = [NSNumber numberWithDouble:?];
    [v12 _savePropertyToDictionary:v4 withKey:@"priorityScore" andValue:v13];

    v14 = *(a1 + 32);
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isPHPersonTypeImportant]);
    [v14 _savePropertyToDictionary:v4 withKey:@"isPHPersonTypeImportant" andValue:v15];

    v16 = *(a1 + 32);
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isMePerson]);
    [v16 _savePropertyToDictionary:v4 withKey:@"isMePerson" andValue:v17];

    v18 = *(a1 + 32);
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 mePersonIdentified]);
    [v18 _savePropertyToDictionary:v4 withKey:@"mePersonIdentified" andValue:v19];

    v20 = [v3 personRelationships];
    v21 = [v20 count];

    if (v21)
    {
      v34 = v4;
      v22 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v35 = v3;
      obj = [v3 personRelationships];
      v23 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v37 = *v39;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v39 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v38 + 1) + 8 * i);
            v27 = objc_opt_new();
            v28 = *(a1 + 32);
            v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 relationship]);
            [v28 _savePropertyToDictionary:v27 withKey:@"personRelationshipTag" andValue:v29];

            v30 = *(a1 + 32);
            [v26 score];
            v31 = [NSNumber numberWithDouble:?];
            [v30 _savePropertyToDictionary:v27 withKey:@"personRelationshipScore" andValue:v31];

            v32 = *(a1 + 32);
            v33 = [v26 source];
            [v32 _savePropertyToDictionary:v27 withKey:@"personRelationshipSource" andValue:v33];

            [v22 addObject:v27];
          }

          v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v24);
      }

      v4 = v34;
      if ([v22 count])
      {
        [*(a1 + 32) _savePropertyToDictionary:v34 withKey:@"personRelationships" andValue:v22];
      }

      v3 = v35;
    }

    [*(a1 + 40) addObject:v4];
  }
}

void __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v43 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 placeUserType]);
    [v4 _savePropertyToDictionary:v43 withKey:@"bundlePlaceUserType" andValue:v5];

    v6 = *(a1 + 32);
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 placeType]);
    [v6 _savePropertyToDictionary:v43 withKey:@"bundlePlaceType" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v3 placeName];
    [v8 _savePropertyToDictionary:v43 withKey:@"bundlePlaceName" andValue:v9];

    v10 = *(a1 + 32);
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 proposition]);
    [v10 _savePropertyToDictionary:v43 withKey:@"bundlePlaceProposition" andValue:v11];

    v12 = *(a1 + 32);
    [v3 placeNameConfidence];
    v13 = [NSNumber numberWithDouble:?];
    [v12 _savePropertyToDictionary:v43 withKey:@"bundlePlaceNameConfidence" andValue:v13];

    v14 = *(a1 + 32);
    v15 = [v3 location];
    [v15 latitude];
    v16 = [NSNumber numberWithDouble:?];
    [v14 _savePropertyToDictionary:v43 withKey:@"bundleLocationLatitude" andValue:v16];

    v17 = *(a1 + 32);
    v18 = [v3 location];
    [v18 longitude];
    v19 = [NSNumber numberWithDouble:?];
    [v17 _savePropertyToDictionary:v43 withKey:@"bundleLocationLongitude" andValue:v19];

    v20 = *(a1 + 32);
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 locationMode]);
    [v20 _savePropertyToDictionary:v43 withKey:@"bundleLocationMode" andValue:v21];

    v22 = *(a1 + 32);
    v23 = [v3 poiCategory];
    [v22 _savePropertyToDictionary:v43 withKey:@"bundlePoiCategory" andValue:v23];

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = [v3 categoryMuid];
    [v24 _savePropertyToDictionary:v25 withKey:@"bundleCategoryMuid" andValue:v26];

    v27 = *(a1 + 32);
    [v3 distanceToHomeInMiles];
    v28 = [NSNumber numberWithDouble:?];
    [v27 _savePropertyToDictionary:v43 withKey:@"bundleDistanceToHomeInMiles" andValue:v28];

    v29 = *(a1 + 32);
    [v3 familiarityIndexLOI];
    v30 = [NSNumber numberWithDouble:?];
    [v29 _savePropertyToDictionary:v43 withKey:@"familiarityIndexLOI" andValue:v30];

    v31 = *(a1 + 32);
    v32 = [v3 enclosingArea];
    [v31 _savePropertyToDictionary:v43 withKey:@"bundleEnclosingArea" andValue:v32];

    v33 = *(a1 + 32);
    v34 = [v3 startDate];
    [v34 timeIntervalSinceReferenceDate];
    v35 = [NSNumber numberWithDouble:?];
    [v33 _savePropertyToDictionary:v43 withKey:@"bundleStartDate" andValue:v35];

    v36 = *(a1 + 32);
    v37 = [v3 endDate];
    [v37 timeIntervalSinceReferenceDate];
    v38 = [NSNumber numberWithDouble:?];
    [v36 _savePropertyToDictionary:v43 withKey:@"bundleEndDate" andValue:v38];

    v39 = *(a1 + 32);
    [v3 priorityScore];
    v41 = v40;

    v42 = [NSNumber numberWithDouble:v41];
    [v39 _savePropertyToDictionary:v43 withKey:@"bundlePlacePriorityScore" andValue:v42];

    [*(a1 + 48) addObject:v43];
  }
}

void __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v22 = objc_opt_new();
    v4 = *(a1 + 32);
    [v3 value];
    v5 = [NSNumber numberWithDouble:?];
    [v4 _savePropertyToDictionary:v22 withKey:@"bundleResourceValue" andValue:v5];

    v6 = *(a1 + 32);
    v7 = [v3 name];
    [v6 _savePropertyToDictionary:v22 withKey:@"bundleResourceName" andValue:v7];

    v8 = *(a1 + 32);
    v9 = [v3 assets];
    [v8 _savePropertyToDictionary:v22 withKey:@"bundleResourceAssets" andValue:v9];

    v10 = *(a1 + 32);
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
    [v10 _savePropertyToDictionary:v22 withKey:@"bundleResourceType" andValue:v11];

    v12 = *(a1 + 32);
    [v3 priorityScore];
    v13 = [NSNumber numberWithDouble:?];
    [v12 _savePropertyToDictionary:v22 withKey:@"bundleResourcePriorityScore" andValue:v13];

    v14 = *(a1 + 32);
    v15 = [v3 photoCurationScore];
    [v14 _savePropertyToDictionary:v22 withKey:@"bundleResourcePhotoCurationScore" andValue:v15];

    v16 = *(a1 + 32);
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 photoFaceCount]);
    [v16 _savePropertyToDictionary:v22 withKey:@"bundleResourcePhotoFaceCount" andValue:v17];

    v18 = *(a1 + 32);
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 photoAssetMediaType]);
    [v18 _savePropertyToDictionary:v22 withKey:@"bundleResourcePhotoAssetMediaType" andValue:v19];

    v20 = [v3 data];

    v21 = [MODictionaryEncoder decodeToDictionary:v20];

    [*(a1 + 32) _savePropertyToDictionary:v22 withKey:@"bundleResourceMetadata" andValue:v21];
    [*(a1 + 40) addObject:v22];
  }
}

- (void)_savePropertyToDictionary:(id)a3 withKey:(id)a4 andValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    if (self->_shouldAvoidRandomization || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
LABEL_5:
      [v8 setObject:v11 forKey:{v9, v19}];
      goto LABEL_6;
    }

    if (![(NSSet *)self->_randomizedKeys containsObject:v9])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = self->_randomizedKeys;
        v13 = [(NSSet *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            v16 = 0;
            do
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v9 containsString:{*(*(&v19 + 1) + 8 * v16), v19}])
              {

                goto LABEL_19;
              }

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [(NSSet *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_5;
    }

LABEL_19:
    v17 = [(NSMutableDictionary *)self->_randomMapping objectForKey:v11];
    if (!v17)
    {
      v18 = +[NSUUID UUID];
      v17 = [v18 UUIDString];

      [(NSMutableDictionary *)self->_randomMapping setObject:v17 forKey:v11];
    }

    [v8 setObject:v17 forKey:v9];
  }

LABEL_6:
}

@end