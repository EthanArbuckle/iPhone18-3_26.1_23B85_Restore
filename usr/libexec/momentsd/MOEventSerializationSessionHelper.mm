@interface MOEventSerializationSessionHelper
- (MOEventSerializationSessionHelper)initWithRandomization:(BOOL)randomization;
- (id)serializeEvent:(id)event;
- (id)serializeEventBundle:(id)bundle;
- (void)_savePropertyToDictionary:(id)dictionary withKey:(id)key andValue:(id)value;
@end

@implementation MOEventSerializationSessionHelper

- (MOEventSerializationSessionHelper)initWithRandomization:(BOOL)randomization
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

    v4->_shouldAvoidRandomization = !randomization;
  }

  return v4;
}

- (id)serializeEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v5 = objc_opt_new();
    eventIdentifier = [eventCopy eventIdentifier];
    uUIDString = [eventIdentifier UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventID" andValue:uUIDString];

    startDate = [eventCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventStartDate" andValue:v9];

    endDate = [eventCopy endDate];
    [endDate timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventEndDate" andValue:v11];

    creationDate = [eventCopy creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCreationDate" andValue:v13];

    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy provider]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventProvider" andValue:v14];

    workoutType = [eventCopy workoutType];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutType" andValue:workoutType];

    workoutTotalDistance = [eventCopy workoutTotalDistance];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutTotalDistance" andValue:workoutTotalDistance];

    workoutTotalEnergyBurned = [eventCopy workoutTotalEnergyBurned];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutTotalEnergyBurned" andValue:workoutTotalEnergyBurned];

    workoutDuration = [eventCopy workoutDuration];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventWorkoutDuration" andValue:workoutDuration];

    motionStepCount = [eventCopy motionStepCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMotionStepCount" andValue:motionStepCount];

    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [eventCopy isFitnessPlusSession]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventIsFitnessPlusSession" andValue:v20];

    placeName = [eventCopy placeName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceName" andValue:placeName];

    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy placeType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceType" andValue:v22];

    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy placeUserType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceUserType" andValue:v23];

    poiCategory = [eventCopy poiCategory];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPOICategory" andValue:poiCategory];

    categoryMuid = [eventCopy categoryMuid];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategoryMuid" andValue:categoryMuid];

    location = [eventCopy location];

    if (location)
    {
      location2 = [eventCopy location];
      [location2 latitude];
      v28 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocationLatitude" andValue:v28];

      location3 = [eventCopy location];
      [location3 longitude];
      v30 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocationLongitude" andValue:v30];
    }

    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy placeDiscovery]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPlaceDiscovery" andValue:v31];

    mediaTitle = [eventCopy mediaTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaTitle" andValue:mediaTitle];

    mediaArtist = [eventCopy mediaArtist];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaArtist" andValue:mediaArtist];

    mediaSumTimePlayed = [eventCopy mediaSumTimePlayed];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaSumTimePlayed" andValue:mediaSumTimePlayed];

    mediaRepetitions = [eventCopy mediaRepetitions];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaRepititions" andValue:mediaRepetitions];

    mediaEvent = [eventCopy mediaEvent];
    mediaFirstPartyTimePlayedRatio = [mediaEvent mediaFirstPartyTimePlayedRatio];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaFirstPartyTimePlayedRatio" andValue:mediaFirstPartyTimePlayedRatio];

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy category]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategory" andValue:v38];

    pCount = [eventCopy pCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleCount" andValue:pCount];

    densityScore = [eventCopy densityScore];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleDensity" andValue:densityScore];

    densityScanDuration = [eventCopy densityScanDuration];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"peopleDensityScanDuration" andValue:densityScanDuration];

    v42 = objc_opt_new();
    mediaPlaySessions = [eventCopy mediaPlaySessions];
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke;
    v143[3] = &unk_100338748;
    v143[4] = self;
    v44 = v42;
    v144 = v44;
    [mediaPlaySessions enumerateObjectsUsingBlock:v143];

    v133 = v44;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventMediaPlaySessions" andValue:v44];
    if ([eventCopy category] == 20)
    {
      v45 = objc_opt_new();
      screenTimeEvent = [eventCopy screenTimeEvent];
      appCategoryUsages = [screenTimeEvent appCategoryUsages];
      v141[0] = _NSConcreteStackBlock;
      v141[1] = 3221225472;
      v141[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_2;
      v141[3] = &unk_100338770;
      v141[4] = self;
      v142 = v45;
      v48 = v45;
      [appCategoryUsages enumerateObjectsUsingBlock:v141];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventCategoryUsage" andValue:v48];
      screenTimeEvent2 = [eventCopy screenTimeEvent];
      longestActivity = [screenTimeEvent2 longestActivity];
      startDate2 = [longestActivity startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v52 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLongestScreenTimeStartDate" andValue:v52];

      screenTimeEvent3 = [eventCopy screenTimeEvent];
      longestActivity2 = [screenTimeEvent3 longestActivity];
      endDate2 = [longestActivity2 endDate];
      [endDate2 timeIntervalSinceReferenceDate];
      v56 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLongestScreenTimeEndDate" andValue:v56];
    }

    v57 = objc_opt_new();
    v58 = objc_opt_new();
    extendedAttributes = [eventCopy extendedAttributes];
    photoMomentPersons = [extendedAttributes photoMomentPersons];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_3;
    v139[3] = &unk_100338798;
    v139[4] = self;
    v61 = v58;
    v140 = v61;
    [photoMomentPersons enumerateObjectsUsingBlock:v139];

    if ([v61 count])
    {
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"persons" andValue:v61];
    }

    v132 = v61;
    extendedAttributes2 = [eventCopy extendedAttributes];
    photoMomentLocalIdentifier = [extendedAttributes2 photoMomentLocalIdentifier];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"localIdentifier" andValue:photoMomentLocalIdentifier];

    extendedAttributes3 = [eventCopy extendedAttributes];
    photoMomentInferences = [extendedAttributes3 photoMomentInferences];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v57 withKey:@"inferences" andValue:photoMomentInferences];

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventExtendedAttributes" andValue:v57];
    interactionContactScore = [eventCopy interactionContactScore];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactScore" andValue:interactionContactScore];

    interactionScoredContact = [eventCopy interactionScoredContact];
    [interactionScoredContact score];
    v68 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventScoredContactScore" andValue:v68];

    interactionScoredContact2 = [eventCopy interactionScoredContact];
    contact = [interactionScoredContact2 contact];
    givenName = [contact givenName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactGivenName" andValue:givenName];

    interactionScoredContact3 = [eventCopy interactionScoredContact];
    contact2 = [interactionScoredContact3 contact];
    familyName = [contact2 familyName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventContactFamilyName" andValue:familyName];

    interactionScoredContact4 = [eventCopy interactionScoredContact];
    contact3 = [interactionScoredContact4 contact];
    localizedFullName = [contact3 localizedFullName];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventLocalizedFullName" andValue:localizedFullName];

    v78 = objc_opt_new();
    interactionContacts = [eventCopy interactionContacts];
    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_4;
    v136[3] = &unk_1003387C0;
    v136[4] = self;
    v80 = eventCopy;
    v137 = v80;
    v81 = v78;
    v138 = v81;
    [interactionContacts enumerateObjectsUsingBlock:v136];

    v131 = v81;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventInteractionContacts" andValue:v81];
    v82 = objc_opt_new();
    interactions = [v80 interactions];
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = __52__MOEventSerializationSessionHelper_serializeEvent___block_invoke_5;
    v134[3] = &unk_1003387E8;
    v134[4] = self;
    v84 = v82;
    v135 = v84;
    [interactions enumerateObjectsUsingBlock:v134];

    v130 = v84;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventInteractions" andValue:v84];
    itemURL = [v80 itemURL];
    absoluteString = [itemURL absoluteString];

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemURL" andValue:absoluteString];
    if (!self->_shouldAvoidRandomization && absoluteString)
    {
      if ([absoluteString hasPrefix:@"https://apple.news"])
      {
        v87 = [absoluteString componentsSeparatedByString:@"https://apple.news"];
        v88 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v88 && [v87 count] == 2)
        {
          v89 = [@"https://apple.news" stringByAppendingString:v88];
          [v5 setObject:v89 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([absoluteString hasPrefix:@"https://music.apple.com"])
      {
        v90 = [absoluteString componentsSeparatedByString:@"https://music.apple.com"];
        v91 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v91 && [v90 count] == 2)
        {
          v92 = [@"https://music.apple.com" stringByAppendingString:v91];
          [v5 setObject:v92 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([absoluteString hasPrefix:@"https://podcasts.apple.com"])
      {
        v93 = [absoluteString componentsSeparatedByString:@"https://podcasts.apple.com"];
        v94 = [v5 objectForKeyedSubscript:@"eventItemURL"];
        if (v94 && [v93 count] == 2)
        {
          v95 = [@"https://podcasts.apple.com" stringByAppendingString:v94];
          [v5 setObject:v95 forKeyedSubscript:@"eventItemURL"];
        }
      }

      if ([absoluteString hasPrefix:@"https://tv.apple.com"])
      {
        v96 = [absoluteString componentsSeparatedByString:@"https://tv.apple.com"];
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

    itemAttributionsCount = [v80 itemAttributionsCount];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventItemAttributionsCount" andValue:itemAttributionsCount];

    appBundle = [v80 appBundle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventAppBundle" andValue:appBundle];

    v103 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v80 fromFirstParty]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventFromFirstParty" andValue:v103];

    patterns = [v80 patterns];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPatterns" andValue:patterns];

    photoMemoryTitle = [v80 photoMemoryTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryTitle" andValue:photoMemoryTitle];

    v106 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v80 photoMemoryCategory]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryCategory" andValue:v106];

    photoEvent = [v80 photoEvent];
    v108 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [photoEvent photoMemorySubCategory]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemorySubCategory" andValue:v108];

    photoMemoryTitle2 = [v80 photoMemoryTitle];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryTitle" andValue:photoMemoryTitle2];

    photoEvent2 = [v80 photoEvent];
    [photoEvent2 photoMemoryRelevanceScore];
    v111 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventPhotoMemoryRelevanceScore" andValue:v111];

    photoEvent3 = [v80 photoEvent];
    v113 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [photoEvent3 photoMemoryIsFavorite]);
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

    routineEvent = [v80 routineEvent];

    if (routineEvent)
    {
      routineEvent2 = [v80 routineEvent];
      v124 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [routineEvent2 isPreOnboardedVisit]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineIsPreOnboardedVisit" andValue:v124];

      routineEvent3 = [v80 routineEvent];
      poiCategory2 = [routineEvent3 poiCategory];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineEventPOICategory" andValue:poiCategory2];

      routineEvent4 = [v80 routineEvent];
      categoryMuid2 = [routineEvent4 categoryMuid];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"eventRoutineEventCategoryMuid" andValue:categoryMuid2];
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

- (id)serializeEventBundle:(id)bundle
{
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v5 = objc_opt_new();
    [bundleCopy buildResources];
    bundleIdentifier = [bundleCopy bundleIdentifier];
    uUIDString = [bundleIdentifier UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleID" andValue:uUIDString];

    suggestionID = [bundleCopy suggestionID];
    uUIDString2 = [suggestionID UUIDString];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"SuggestionID" andValue:uUIDString2];

    startDate = [bundleCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleStartDate" andValue:v11];

    endDate = [bundleCopy endDate];
    [endDate timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleEndDate" andValue:v13];

    creationDate = [bundleCopy creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleCreationDate" andValue:v15];

    firstCreationDate = [bundleCopy firstCreationDate];
    [firstCreationDate timeIntervalSinceReferenceDate];
    v17 = [NSNumber numberWithDouble:?];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleFirstCreationDate" andValue:v17];

    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy filtered]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleFiltered" andValue:v18];

    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleSubType" andValue:v19];

    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSuperType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleSuperType" andValue:v20];

    v21 = objc_opt_new();
    events = [bundleCopy events];
    v285[0] = _NSConcreteStackBlock;
    v285[1] = 3221225472;
    v285[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke;
    v285[3] = &unk_100338810;
    v23 = v21;
    v286 = v23;
    [events enumerateObjectsUsingBlock:v285];

    v258 = v23;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"bundleEvents" andValue:v23];
    subBundleIDs = [bundleCopy subBundleIDs];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"subBundleIDs" andValue:subBundleIDs];

    subSuggestionIDs = [bundleCopy subSuggestionIDs];
    v261 = v5;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v5 withKey:@"subSuggestionIDs" andValue:subSuggestionIDs];

    v267 = objc_opt_new();
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    metaData = [bundleCopy metaData];
    v27 = [metaData countByEnumeratingWithState:&v281 objects:v288 count:16];
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
            objc_enumerationMutation(metaData);
          }

          v31 = *(*(&v281 + 1) + 8 * i);
          objc_opt_class();
          stringValue = v31;
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v31 stringValue];
          }

          metaData2 = [bundleCopy metaData];
          v34 = [metaData2 objectForKey:v31];
          [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v267 withKey:stringValue andValue:v34];
        }

        v28 = [metaData countByEnumeratingWithState:&v281 objects:v288 count:16];
      }

      while (v28);
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleMetadata" andValue:v267];
    if (self->_shouldAvoidRandomization)
    {
      labels = [bundleCopy labels];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleLabels" andValue:labels];

      promptLanguages = [bundleCopy promptLanguages];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePromptLanguages" andValue:promptLanguages];

      promptLanguage = [bundleCopy promptLanguage];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePromptLanguage" andValue:promptLanguage];
    }

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy interfaceType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleInterfaceType" andValue:v38];

    v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy summarizationGranularity]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSummarizationGranularity" andValue:v39];

    v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy isAggregatedAndSuppressed]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleIsAggregatedAndSuppressed" andValue:v40];

    v41 = objc_opt_new();
    action = [bundleCopy action];

    v260 = v41;
    if (action)
    {
      action2 = [bundleCopy action];
      v44 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [action2 actionType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionType" andValue:v44];

      action3 = [bundleCopy action];
      v46 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [action3 actionSubtype]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionSubType" andValue:v46];

      action4 = [bundleCopy action];
      [action4 actionNameConfidence];
      v48 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v41 withKey:@"bundleActionNameConfidence" andValue:v48];

      v49 = objc_opt_new();
      action5 = [bundleCopy action];
      actionMetaData = [action5 actionMetaData];
      [actionMetaData objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
      v53 = v52 = v41;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataMediaType" andValue:v53];

      action6 = [bundleCopy action];
      actionMetaData2 = [action6 actionMetaData];
      v56 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataMediaInfoType" andValue:v56];

      action7 = [bundleCopy action];
      actionMetaData3 = [action7 actionMetaData];
      v59 = [actionMetaData3 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v49 withKey:@"MediaActionMetaDataAppName" andValue:v59];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v52 withKey:@"bundleActionMetadata" andValue:v49];
      if ([bundleCopy interfaceType] == 10 && !self->_shouldAvoidRandomization)
      {
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v260 withKey:@"bundleActionName" andValue:@"PhotoMemory"];
      }

      else
      {
        action8 = [bundleCopy action];
        actionName = [action8 actionName];
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v260 withKey:@"bundleActionName" andValue:actionName];
      }

      v41 = v260;
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleAction" andValue:v41];
    v63 = objc_opt_new();
    concurrentMediaAction = [bundleCopy concurrentMediaAction];

    v262 = v63;
    if (concurrentMediaAction)
    {
      concurrentMediaAction2 = [bundleCopy concurrentMediaAction];
      v66 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [concurrentMediaAction2 actionType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionType" andValue:v66];

      concurrentMediaAction3 = [bundleCopy concurrentMediaAction];
      v68 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [concurrentMediaAction3 actionSubtype]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionSubType" andValue:v68];

      concurrentMediaAction4 = [bundleCopy concurrentMediaAction];
      actionName2 = [concurrentMediaAction4 actionName];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionName" andValue:actionName2];

      concurrentMediaAction5 = [bundleCopy concurrentMediaAction];
      [concurrentMediaAction5 actionNameConfidence];
      v72 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionNameConfidence" andValue:v72];

      v73 = objc_opt_new();
      concurrentMediaAction6 = [bundleCopy concurrentMediaAction];
      actionMetaData4 = [concurrentMediaAction6 actionMetaData];
      v76 = [actionMetaData4 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataMediaType" andValue:v76];

      concurrentMediaAction7 = [bundleCopy concurrentMediaAction];
      actionMetaData5 = [concurrentMediaAction7 actionMetaData];
      v79 = [actionMetaData5 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataMediaInfoType" andValue:v79];

      concurrentMediaAction8 = [bundleCopy concurrentMediaAction];
      actionMetaData6 = [concurrentMediaAction8 actionMetaData];
      v82 = [actionMetaData6 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      v63 = v262;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v73 withKey:@"MediaActionMetaDataAppName" andValue:v82];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v262 withKey:@"bundleActionMetadata" andValue:v73];
    }

    v62 = v261;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleConcurrentMediaAction" andValue:v63];
    v83 = objc_opt_new();
    actions = [bundleCopy actions];
    v279[0] = _NSConcreteStackBlock;
    v279[1] = 3221225472;
    v279[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_2;
    v279[3] = &unk_100338838;
    v279[4] = self;
    v85 = v83;
    v280 = v85;
    [actions enumerateObjectsUsingBlock:v279];

    v257 = v85;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleBackgroundAction" andValue:v85];
    v86 = objc_opt_new();
    persons = [bundleCopy persons];
    v277[0] = _NSConcreteStackBlock;
    v277[1] = 3221225472;
    v277[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_3;
    v277[3] = &unk_100338798;
    v277[4] = self;
    v88 = v86;
    v278 = v88;
    [persons enumerateObjectsUsingBlock:v277];

    v256 = v88;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePersons" andValue:v88];
    v89 = objc_opt_new();
    place = [bundleCopy place];

    if (place)
    {
      place2 = [bundleCopy place];
      v92 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [place2 placeUserType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceUserType" andValue:v92];

      place3 = [bundleCopy place];
      v94 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [place3 placeType]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceType" andValue:v94];

      place4 = [bundleCopy place];
      placeName = [place4 placeName];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceName" andValue:placeName];

      place5 = [bundleCopy place];
      v98 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [place5 proposition]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceProposition" andValue:v98];

      place6 = [bundleCopy place];
      [place6 placeNameConfidence];
      v100 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlaceNameConfidence" andValue:v100];

      place7 = [bundleCopy place];
      location = [place7 location];
      [location latitude];
      v103 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationLatitude" andValue:v103];

      place8 = [bundleCopy place];
      location2 = [place8 location];
      [location2 longitude];
      v106 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationLongitude" andValue:v106];

      place9 = [bundleCopy place];
      v108 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [place9 locationMode]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleLocationMode" andValue:v108];

      place10 = [bundleCopy place];
      poiCategory = [place10 poiCategory];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePoiCategory" andValue:poiCategory];

      place11 = [bundleCopy place];
      categoryMuid = [place11 categoryMuid];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleCategoryMuid" andValue:categoryMuid];

      place12 = [bundleCopy place];
      [place12 distanceToHomeInMiles];
      v114 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleDistanceToHomeInMiles" andValue:v114];

      place13 = [bundleCopy place];
      [place13 familiarityIndexLOI];
      v116 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"familiarityIndexLOI" andValue:v116];

      place14 = [bundleCopy place];
      enclosingArea = [place14 enclosingArea];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleEnclosingArea" andValue:enclosingArea];

      place15 = [bundleCopy place];
      startDate2 = [place15 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v121 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleStartDate" andValue:v121];

      place16 = [bundleCopy place];
      endDate2 = [place16 endDate];
      [endDate2 timeIntervalSinceReferenceDate];
      v124 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundleEndDate" andValue:v124];

      place17 = [bundleCopy place];
      [place17 priorityScore];
      v126 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v89 withKey:@"bundlePlacePriorityScore" andValue:v126];
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePlace" andValue:v89];
    v127 = objc_opt_new();
    places = [bundleCopy places];
    v274[0] = _NSConcreteStackBlock;
    v274[1] = 3221225472;
    v274[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_4;
    v274[3] = &unk_100338860;
    v274[4] = self;
    v255 = v89;
    v275 = v255;
    v129 = v127;
    v276 = v129;
    [places enumerateObjectsUsingBlock:v274];

    v254 = v129;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePlaces" andValue:v129];
    v130 = objc_opt_new();
    time = [bundleCopy time];

    v259 = v130;
    if (time)
    {
      time2 = [bundleCopy time];
      identifier = [time2 identifier];
      uUIDString3 = [identifier UUIDString];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"timeIdentifier" andValue:uUIDString3];

      v130 = v259;
      time3 = [bundleCopy time];
      [time3 timestamp];
      v136 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimestamp" andValue:v136];

      time4 = [bundleCopy time];
      timeString = [time4 timeString];

      if (timeString)
      {
        time5 = [bundleCopy time];
        timeString2 = [time5 timeString];
        [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimestring" andValue:timeString2];
      }

      time6 = [bundleCopy time];
      v142 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [time6 timeTag]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimetag" andValue:v142];

      time7 = [bundleCopy time];
      timeZone = [time7 timeZone];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"bundleTimezone" andValue:timeZone];

      time8 = [bundleCopy time];
      v146 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [time8 dateReferenceTag]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v259 withKey:@"dateReferenceTag" andValue:v146];
    }

    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleTime" andValue:v130];
    v147 = objc_opt_new();
    resources = [bundleCopy resources];
    v272[0] = _NSConcreteStackBlock;
    v272[1] = 3221225472;
    v272[2] = __58__MOEventSerializationSessionHelper_serializeEventBundle___block_invoke_5;
    v272[3] = &unk_100338888;
    v272[4] = self;
    v149 = v147;
    v273 = v149;
    [resources enumerateObjectsUsingBlock:v272];

    v253 = v149;
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleResources" andValue:v149];
    v150 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy photoSource]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundlePhotoSource" andValue:v150];

    visitEventsRejectedByWatchLocation = [bundleCopy visitEventsRejectedByWatchLocation];
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleVisitEventsRejectedByWatchLocation" andValue:visitEventsRejectedByWatchLocation];

    suggestionEngagementEvents = [bundleCopy suggestionEngagementEvents];

    if (suggestionEngagementEvents)
    {
      suggestionEngagementEvents2 = [bundleCopy suggestionEngagementEvents];
      allObjects = [suggestionEngagementEvents2 allObjects];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSuggestionEngagementEvents" andValue:allObjects];
    }

    [bundleCopy suggestionEngagementViewCount];
    v155 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy suggestionEngagementViewCount]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleSuggestionEngagementViewCount" andValue:v155];

    appEntryEngagementEvents = [bundleCopy appEntryEngagementEvents];

    if (appEntryEngagementEvents)
    {
      appEntryEngagementEvents2 = [bundleCopy appEntryEngagementEvents];
      allObjects2 = [appEntryEngagementEvents2 allObjects];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleAppEntryEngagementEvents" andValue:allObjects2];
    }

    rankingDictionary = [bundleCopy rankingDictionary];

    if (rankingDictionary)
    {
      rankingDictionary2 = [bundleCopy rankingDictionary];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleRanking" andValue:rankingDictionary2];
    }

    metaDataForRank = [bundleCopy metaDataForRank];

    if (metaDataForRank)
    {
      metaDataForRank2 = [bundleCopy metaDataForRank];
      v163 = [metaDataForRank2 mutableCopy];

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

    v164 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy timeAtHomeSubType]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleTimeAtHomeSubtype" andValue:v164];

    v165 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy includedInSummaryBundleOnly]);
    [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"bundleIncludedInSummaryBundleOnly" andValue:v165];

    v263 = objc_opt_new();
    clusterMetadata = [bundleCopy clusterMetadata];

    if (clusterMetadata)
    {
      clusterMetadata2 = [bundleCopy clusterMetadata];
      identifier2 = [clusterMetadata2 identifier];
      uUIDString4 = [identifier2 UUIDString];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"outlierMetadataidentifier" andValue:uUIDString4];

      clusterMetadata3 = [bundleCopy clusterMetadata];
      v171 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [clusterMetadata3 isFiltered]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"isFiltered" andValue:v171];

      clusterMetadata4 = [bundleCopy clusterMetadata];
      phenotype = [clusterMetadata4 phenotype];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"phenotype" andValue:phenotype];

      clusterMetadata5 = [bundleCopy clusterMetadata];
      topLevelActivityHistogram = [clusterMetadata5 topLevelActivityHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"topLevelActivityHistogram" andValue:topLevelActivityHistogram];

      clusterMetadata6 = [bundleCopy clusterMetadata];
      secondLevelActivityHistogram = [clusterMetadata6 secondLevelActivityHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"secondLevelActivityHistogram" andValue:secondLevelActivityHistogram];

      clusterMetadata7 = [bundleCopy clusterMetadata];
      activityTypeFromPhotoTraitsHistogram = [clusterMetadata7 activityTypeFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"activityTypeFromPhotoTraitsHistogram" andValue:activityTypeFromPhotoTraitsHistogram];

      clusterMetadata8 = [bundleCopy clusterMetadata];
      timeTagHistogram = [clusterMetadata8 timeTagHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"timeTagHistogram" andValue:timeTagHistogram];

      clusterMetadata9 = [bundleCopy clusterMetadata];
      dayOfWeekHistogram = [clusterMetadata9 dayOfWeekHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"dayOfWeekHistogram" andValue:dayOfWeekHistogram];

      clusterMetadata10 = [bundleCopy clusterMetadata];
      weekOfYearHistogram = [clusterMetadata10 weekOfYearHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"weekOfYearHistogram" andValue:weekOfYearHistogram];

      clusterMetadata11 = [bundleCopy clusterMetadata];
      holidayHistogram = [clusterMetadata11 holidayHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"holidayHistogram" andValue:holidayHistogram];

      clusterMetadata12 = [bundleCopy clusterMetadata];
      celebrationHistogram = [clusterMetadata12 celebrationHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"celebrationHistogram" andValue:celebrationHistogram];

      clusterMetadata13 = [bundleCopy clusterMetadata];
      placeNameHistogram = [clusterMetadata13 placeNameHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"placeNameHistogram" andValue:placeNameHistogram];

      clusterMetadata14 = [bundleCopy clusterMetadata];
      combinedPlaceTypeHistogram = [clusterMetadata14 combinedPlaceTypeHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"combinedPlaceTypeHistogram" andValue:combinedPlaceTypeHistogram];

      clusterMetadata15 = [bundleCopy clusterMetadata];
      enclosingPlaceNameHistogram = [clusterMetadata15 enclosingPlaceNameHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"enclosingPlaceNameHistogram" andValue:enclosingPlaceNameHistogram];

      clusterMetadata16 = [bundleCopy clusterMetadata];
      placeTypeFromPhotoTraitsHistogram = [clusterMetadata16 placeTypeFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"placeTypeFromPhotoTraitsHistogram" andValue:placeTypeFromPhotoTraitsHistogram];

      clusterMetadata17 = [bundleCopy clusterMetadata];
      contactNamesHistogram = [clusterMetadata17 contactNamesHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"contactNamesHistogram" andValue:contactNamesHistogram];

      clusterMetadata18 = [bundleCopy clusterMetadata];
      personRelationshipHistogram = [clusterMetadata18 personRelationshipHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"personRelationshipHistogram" andValue:personRelationshipHistogram];

      clusterMetadata19 = [bundleCopy clusterMetadata];
      socialEventFromPhotoTraitsHistogram = [clusterMetadata19 socialEventFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"socialEventFromPhotoTraitsHistogram" andValue:socialEventFromPhotoTraitsHistogram];

      clusterMetadata20 = [bundleCopy clusterMetadata];
      otherSubjectFromPhotoTraitsHistogram = [clusterMetadata20 otherSubjectFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"otherSubjectFromPhotoTraitsHistogram" andValue:otherSubjectFromPhotoTraitsHistogram];

      clusterMetadata21 = [bundleCopy clusterMetadata];
      stateOfMindValenceHistogram = [clusterMetadata21 stateOfMindValenceHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"stateOfMindValenceHistogram" andValue:stateOfMindValenceHistogram];

      clusterMetadata22 = [bundleCopy clusterMetadata];
      subBundleGoodnessScores = [clusterMetadata22 subBundleGoodnessScores];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"subBundleGoodnessScores" andValue:subBundleGoodnessScores];

      clusterMetadata23 = [bundleCopy clusterMetadata];
      subSuggestionIDsBeforePruning = [clusterMetadata23 subSuggestionIDsBeforePruning];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"subSuggestionIDsBeforePruning" andValue:subSuggestionIDsBeforePruning];

      clusterMetadata24 = [bundleCopy clusterMetadata];
      phenotypePersonUUIDs = [clusterMetadata24 phenotypePersonUUIDs];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"phenotypePersonUUIDs" andValue:phenotypePersonUUIDs];

      clusterMetadata25 = [bundleCopy clusterMetadata];
      timeContextFromPhotoTraitsHistogram = [clusterMetadata25 timeContextFromPhotoTraitsHistogram];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v263 withKey:@"timeContextFromPhotoTraitsHistogram" andValue:timeContextFromPhotoTraitsHistogram];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"clusterMetadata" andValue:v263];
    }

    v216 = objc_opt_new();
    outlierMetadata = [bundleCopy outlierMetadata];

    if (outlierMetadata)
    {
      outlierMetadata2 = [bundleCopy outlierMetadata];
      identifier3 = [outlierMetadata2 identifier];
      [identifier3 UUIDString];
      v221 = v220 = v216;
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierMetadataidentifier" andValue:v221];

      outlierMetadata3 = [bundleCopy outlierMetadata];
      updatedDate = [outlierMetadata3 updatedDate];
      [updatedDate timeIntervalSinceReferenceDate];
      v224 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"updatedDate" andValue:v224];

      v216 = v220;
      outlierMetadata4 = [bundleCopy outlierMetadata];
      v226 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [outlierMetadata4 isSignificant]);
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"isSignificant" andValue:v226];

      outlierMetadata5 = [bundleCopy outlierMetadata];
      [outlierMetadata5 outlierScore];
      v228 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierScore" andValue:v228];

      outlierMetadata6 = [bundleCopy outlierMetadata];
      [outlierMetadata6 outlierScoreThreshold];
      v230 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"outlierScoreThreshold" andValue:v230];

      outlierMetadata7 = [bundleCopy outlierMetadata];
      [outlierMetadata7 bundleGoodnessScore];
      v232 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"bundleGoodnessScore" andValue:v232];

      outlierMetadata8 = [bundleCopy outlierMetadata];
      [outlierMetadata8 bundleGoodnessScoreThreshold];
      v234 = [NSNumber numberWithDouble:?];
      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v220 withKey:@"bundleGoodnessScoreThreshold" andValue:v234];

      [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v261 withKey:@"outlierMetadata" andValue:v220];
    }

    photoTraits = [bundleCopy photoTraits];
    v236 = [photoTraits count];

    if (v236)
    {
      v251 = v216;
      v265 = objc_opt_new();
      v268 = 0u;
      v269 = 0u;
      v270 = 0u;
      v271 = 0u;
      v252 = bundleCopy;
      obj = [bundleCopy photoTraits];
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
            identifier4 = [v240 identifier];
            uUIDString5 = [identifier4 UUIDString];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"identifier" andValue:uUIDString5];

            name = [v240 name];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"name" andValue:name];

            labelType = [v240 labelType];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"labelType" andValue:labelType];

            holidayIdentifier = [v240 holidayIdentifier];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"holidayIdentifier" andValue:holidayIdentifier];

            meaningIdentifier = [v240 meaningIdentifier];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"meaningIdentifier" andValue:meaningIdentifier];

            relevantAssetUUIDs = [v240 relevantAssetUUIDs];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"relevantAssetUUIDs" andValue:relevantAssetUUIDs];

            associatedPersonLocalIdentifiers = [v240 associatedPersonLocalIdentifiers];
            [(MOEventSerializationSessionHelper *)self _savePropertyToDictionary:v241 withKey:@"associatedPersonLocalIdentifiers" andValue:associatedPersonLocalIdentifiers];

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
      bundleCopy = v252;
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

- (void)_savePropertyToDictionary:(id)dictionary withKey:(id)key andValue:(id)value
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  v11 = valueCopy;
  if (keyCopy && valueCopy)
  {
    if (self->_shouldAvoidRandomization || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
LABEL_5:
      [dictionaryCopy setObject:v11 forKey:{keyCopy, v19}];
      goto LABEL_6;
    }

    if (![(NSSet *)self->_randomizedKeys containsObject:keyCopy])
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

              if ([keyCopy containsString:{*(*(&v19 + 1) + 8 * v16), v19}])
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
    uUIDString = [(NSMutableDictionary *)self->_randomMapping objectForKey:v11];
    if (!uUIDString)
    {
      v18 = +[NSUUID UUID];
      uUIDString = [v18 UUIDString];

      [(NSMutableDictionary *)self->_randomMapping setObject:uUIDString forKey:v11];
    }

    [dictionaryCopy setObject:uUIDString forKey:keyCopy];
  }

LABEL_6:
}

@end