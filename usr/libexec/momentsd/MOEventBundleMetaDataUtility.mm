@interface MOEventBundleMetaDataUtility
+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)summary AtHome:(BOOL)home;
+ (id)andStringFromArray:(id)array propertyPath:(id)path maxCount:(unint64_t)count;
+ (id)buildActivityMetaDataForEventBundle:(id)bundle;
+ (id)buildClusteringMetaDataForEventBundle:(id)bundle;
+ (id)buildEvergreenMetaDataForEventBundle:(id)bundle;
+ (id)buildMediaPlayMetaDataForEventBundle:(id)bundle;
+ (id)buildMetaDataForEventBundle:(id)bundle;
+ (id)buildOutingMetaDataForEventBundle:(id)bundle;
+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)bundle;
+ (id)buildSharedContentMetaDataForEventBundle:(id)bundle;
+ (id)buildSignificantContactMetaDataForEventBundle:(id)bundle;
+ (id)buildStateOfMindMetaDataForEventBundle:(id)bundle;
+ (id)buildThematicSummaryMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeContextMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)bundle;
+ (id)buildTrendMetaDataForEventBundle:(id)bundle;
+ (id)buildTripMetaDataForEventBundle:(id)bundle;
+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)summary;
+ (id)mediaKeywordWithType:(unint64_t)type;
+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)summary;
+ (void)appendDefaultMetaData:(id)data;
+ (void)defineClassCollections;
+ (void)setActivityNameForThematicSummaryFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type;
+ (void)setActivityNameFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type;
+ (void)setMetaDataForAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActions:(id)actions metaData:(id)data;
+ (void)setMetaDataForActivityAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActivityConcurrentMediaAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActivityPlace:(id)place metaData:(id)data;
+ (void)setMetaDataForBirthday:(id)birthday metaData:(id)data eventBundle:(id)bundle;
+ (void)setMetaDataForDiningAction:(id)action metaData:(id)data startDate:(id)date endDate:(id)endDate;
+ (void)setMetaDataForHoliday:(id)holiday metaData:(id)data eventBundle:(id)bundle;
+ (void)setMetaDataForInvite:(id)invite metaData:(id)data;
+ (void)setMetaDataForMediaAction:(id)action metaData:(id)data;
+ (void)setMetaDataForPersons:(id)persons suggestionId:(id)id metaData:(id)data sortBycomparePersons:(BOOL)bycomparePersons;
+ (void)setMetaDataForPhotos:(id)photos metaData:(id)data;
+ (void)setMetaDataForPlace:(id)place metaData:(id)data;
+ (void)setMetaDataForPlaces:(id)places metaData:(id)data;
+ (void)setMetaDataForTime:(id)time startDate:(id)date endDate:(id)endDate metaData:(id)data;
+ (void)setMetaDataWithKeyword:(id)keyword extendedKeyword:(id)extendedKeyword value:(id)value metaData:(id)data;
@end

@implementation MOEventBundleMetaDataUtility

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken != -1)
  {
    +[MOEventBundleMetaDataUtility defineClassCollections];
  }
}

void __54__MOEventBundleMetaDataUtility_defineClassCollections__block_invoke(id a1)
{
  v1 = noSavoringPromptLabels;
  noSavoringPromptLabels = &off_10036D8D8;

  v2 = noReappraisalPromptLabels;
  noReappraisalPromptLabels = &off_10036D8F0;
}

+ (id)buildMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = 0;
  switch([bundleCopy interfaceType])
  {
    case 1uLL:
      v5 = [MOEventBundleMetaDataUtility buildActivityMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 2uLL:
      v5 = [MOEventBundleMetaDataUtility buildOutingMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 4uLL:
      v5 = [MOEventBundleMetaDataUtility buildSignificantContactMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 5uLL:
      v5 = [MOEventBundleMetaDataUtility buildMediaPlayMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 6uLL:
      v5 = [MOEventBundleMetaDataUtility buildSharedContentMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 7uLL:
      v5 = [MOEventBundleMetaDataUtility buildTimeAtHomeMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 9uLL:
      v5 = [MOEventBundleMetaDataUtility buildTrendMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0xAuLL:
      v5 = [MOEventBundleMetaDataUtility buildPhotoMemoryMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0xBuLL:
      v5 = [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0xCuLL:
      if ([bundleCopy bundleSubType] == 205 || objc_msgSend(bundleCopy, "bundleSubType") == 206)
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextTransitMetaDataForEventBundle:bundleCopy];
      }

      else
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextMetaDataForEventBundle:bundleCopy];
      }

      goto LABEL_18;
    case 0xDuLL:
      v5 = [MOEventBundleMetaDataUtility buildTripMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0xEuLL:
      v5 = [MOEventBundleMetaDataUtility buildStateOfMindMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0xFuLL:
      v5 = [MOEventBundleMetaDataUtility buildClusteringMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 0x10uLL:
      v5 = [MOEventBundleMetaDataUtility buildThematicSummaryMetaDataForEventBundle:bundleCopy];
LABEL_18:
      v4 = v5;
      if (v5)
      {
        [MOEventBundleMetaDataUtility appendDefaultMetaData:v5];
      }

      break;
    default:
      break;
  }

  return v4;
}

+ (void)appendDefaultMetaData:(id)data
{
  dataCopy = data;
  v3 = +[MOEventBundleLabelLocalizer preferredLocalization];
  if (v3)
  {
    [dataCopy setObject:v3 forKeyedSubscript:@"language"];
  }
}

+ (id)buildActivityMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];

  if (action)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  concurrentMediaAction = [bundleCopy concurrentMediaAction];

  if (concurrentMediaAction)
  {
    concurrentMediaAction2 = [bundleCopy concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:concurrentMediaAction2 metaData:v4];
  }

  places = [bundleCopy places];
  if (places)
  {
    v10 = places;
    if ([bundleCopy bundleSubType] == 204 || objc_msgSend(bundleCopy, "bundleSubType") == 207)
    {

LABEL_9:
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      places2 = [bundleCopy places];
      v12 = [places2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(places2);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            placeName = [v16 placeName];

            if (placeName)
            {
              [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v16 metaData:v4];
            }
          }

          v13 = [places2 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v13);
      }

      goto LABEL_22;
    }

    bundleSubType = [bundleCopy bundleSubType];

    if (bundleSubType == 208)
    {
      goto LABEL_9;
    }
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:place2 metaData:v4];
  }

LABEL_22:
  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  return v4;
}

+ (id)buildOutingMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  actions = [bundleCopy actions];
  if (actions)
  {
    actions2 = [bundleCopy actions];
    v7 = [actions2 count];

    if (v7)
    {
      v8 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 2];
      actions3 = [bundleCopy actions];
      v10 = [actions3 filteredArrayUsingPredicate:v8];

      if ([v10 count])
      {
        firstObject = [v10 firstObject];
        actions = [firstObject actionName];
      }

      else
      {
        actions = 0;
      }
    }

    else
    {
      actions = 0;
    }
  }

  action = [bundleCopy action];
  if (action)
  {
    v13 = action;
    action2 = [bundleCopy action];
    if ([action2 actionType] == 9)
    {
    }

    else
    {
      action3 = [bundleCopy action];
      actionType = [action3 actionType];

      if (actionType != 10)
      {
        goto LABEL_13;
      }
    }

    action4 = [bundleCopy action];
    actionName = [action4 actionName];

    actions = actionName;
  }

LABEL_13:
  if (actions)
  {
    v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actions];
    [v4 setObject:v19 forKeyedSubscript:@"action"];

    v20 = [objc_opt_class() keywordFromString:actions];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];
  }

  action5 = [bundleCopy action];
  if (action5)
  {
    v22 = action5;
    action6 = [bundleCopy action];
    actionType2 = [action6 actionType];

    if (actionType2 == 11)
    {
      [v4 setObject:@"flight" forKeyedSubscript:@"flight"];
    }
  }

  if ([bundleCopy isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  action7 = [bundleCopy action];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForDiningAction:action7 metaData:v4 startDate:startDate endDate:endDate];

  place = [bundleCopy place];
  [MOEventBundleMetaDataUtility setMetaDataForPlace:place metaData:v4];

  persons = [bundleCopy persons];
  suggestionID = [bundleCopy suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:persons suggestionId:suggestionID metaData:v4];

  time = [bundleCopy time];
  startDate2 = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate2 endDate:endDate2 metaData:v4];

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  photoTraits2 = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:photoTraits2 metaData:v4 eventBundle:bundleCopy];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:bundleCopy metaData:v4];

  return v4;
}

+ (id)buildSharedContentMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [NSMutableDictionary alloc];
  v10 = @"default_label";
  action = [bundleCopy action];

  actionName = [action actionName];
  v11 = actionName;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v4 initWithDictionary:v7];

  return v8;
}

+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionName = [action actionName];
  [v4 setObject:actionName forKeyedSubscript:@"default_label"];

  action2 = [bundleCopy action];
  actionName2 = [action2 actionName];
  v9 = [actionName2 isEqualToString:@"Hosting at Home"];

  if (v9)
  {
    v10 = &off_100368FB0;
  }

  else
  {
    v10 = &off_100368FC8;
  }

  [v4 setObject:v10 forKeyedSubscript:@"home_activity"];
  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  resources = [bundleCopy resources];
  [MOEventBundleMetaDataUtility setMetaDataForPhotos:resources metaData:v4];

  time = [bundleCopy time];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v4];

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  photoTraits2 = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:photoTraits2 metaData:v4 eventBundle:bundleCopy];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:bundleCopy metaData:v4];

  return v4;
}

+ (id)buildSignificantContactMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (action)
  {
    v5 = action;
    persons = [bundleCopy persons];
    if (persons)
    {
      v7 = persons;
      summarizationGranularity = [bundleCopy summarizationGranularity];

      if (summarizationGranularity != 2)
      {
        v9 = objc_opt_new();
        action2 = [bundleCopy action];
        persons2 = [bundleCopy persons];
        firstObject = [persons2 firstObject];
        name = [firstObject name];

        actionName = [action2 actionName];
        endDate2 = actionName;
        if (name)
        {
          v16 = [actionName stringByAppendingString:name];

          endDate2 = v16;
        }

        [v9 setObject:endDate2 forKeyedSubscript:@"default_label"];
        actionName2 = [action2 actionName];
        v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
        [v9 setObject:v18 forKeyedSubscript:@"header"];

        [v9 setObject:name forKeyedSubscript:@"title"];
        actionName3 = [action2 actionName];
        v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName3];
        [v9 setObject:v20 forKeyedSubscript:@"action"];

        v21 = objc_opt_class();
        actionName4 = [action2 actionName];
        v23 = [v21 keywordFromString:actionName4];
        [v9 setObject:v23 forKeyedSubscript:@"action_type"];

        persons3 = [bundleCopy persons];
        suggestionID = [bundleCopy suggestionID];
        [MOEventBundleMetaDataUtility setMetaDataForPersons:persons3 suggestionId:suggestionID metaData:v9];

        time = [bundleCopy time];
        startDate = [bundleCopy startDate];
        endDate = [bundleCopy endDate];
        [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v9];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([bundleCopy summarizationGranularity] != 2 || (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) != 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = objc_opt_new();
  [v9 setObject:@"contact_summary" forKeyedSubscript:@"summary_type"];
  persons4 = [bundleCopy persons];
  suggestionID2 = [bundleCopy suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:persons4 suggestionId:suggestionID2 metaData:v9];

  action2 = [bundleCopy time];
  name = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:action2 startDate:name endDate:endDate2 metaData:v9];
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)buildMediaPlayMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (!action)
  {
    goto LABEL_19;
  }

  v5 = action;
  resources = [bundleCopy resources];
  if (!resources)
  {

    goto LABEL_19;
  }

  v7 = resources;
  summarizationGranularity = [bundleCopy summarizationGranularity];

  if (summarizationGranularity == 2)
  {
LABEL_19:
    if ([bundleCopy summarizationGranularity] != 2 || (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) != 0)
    {
      v9 = 0;
      goto LABEL_35;
    }

    v37 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    resources2 = [bundleCopy resources];
    firstObject = [resources2 firstObject];

    [v9 setObject:@"media_summary" forKeyedSubscript:@"summary_type"];
    resources3 = [bundleCopy resources];
    v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resources3 count]);
    [v9 setObject:v51 forKeyedSubscript:@"media_event_count"];

    resources4 = [bundleCopy resources];
    firstObject2 = [resources4 firstObject];
    getDictionary = [firstObject2 getDictionary];
    firstObject4 = [getDictionary objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

    if (([firstObject4 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || (objc_msgSend(firstObject4, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]) & 1) != 0 || objc_msgSend(firstObject4, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]))
    {
      events = [bundleCopy events];
      v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [events count]);
      [v9 setObject:v56 forKeyedSubscript:@"media_event_count"];
    }

    resources5 = [bundleCopy resources];
    firstObject3 = [resources5 firstObject];
    getDictionary2 = [firstObject3 getDictionary];
    v60 = [getDictionary2 objectForKeyedSubscript:@"media_type"];
    [v9 setObject:v60 forKeyedSubscript:@"media_type"];

    action2 = [bundleCopy action];
    actionName = [action2 actionName];
    if (([actionName isEqualToString:@"songs_on_repeat"] & 1) == 0)
    {
      action3 = [bundleCopy action];
      actionName2 = [action3 actionName];
      if (([actionName2 isEqualToString:@"song_on_repeat"] & 1) == 0)
      {
        action4 = [bundleCopy action];
        [action4 actionName];
        v82 = firstObject4;
        v75 = v74 = v37;
        v80 = [v75 isEqualToString:@"media_on_repeat"];

        v37 = v74;
        firstObject4 = v82;

        if ((v80 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    action5 = [bundleCopy action];
    actionName3 = [action5 actionName];
    [v9 setObject:actionName3 forKeyedSubscript:@"media_on_repeat"];

LABEL_31:
    action6 = [bundleCopy action];
    actionName4 = [action6 actionName];
    v69 = [actionName4 isEqualToString:@"media_on_repeat_third_party"];

    if (v69)
    {
      action7 = [bundleCopy action];
      actionName5 = [action7 actionName];
      [v9 setObject:actionName5 forKeyedSubscript:@"media_on_repeat_third_party"];
    }

    getDictionary3 = [firstObject getDictionary];
    v16 = [getDictionary3 objectForKeyedSubscript:@"third_party_dominate_value"];
    [v9 setObject:v16 forKeyedSubscript:@"third_party_dominate_value"];
    goto LABEL_34;
  }

  v78 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  firstObject = [bundleCopy action];
  resources6 = [bundleCopy resources];
  firstObject4 = [resources6 firstObject];

  getDictionary4 = [firstObject4 getDictionary];
  v81 = [getDictionary4 objectForKeyedSubscript:@"media_album"];

  actionName6 = [firstObject actionName];
  name = [firstObject4 name];
  v16 = [NSString stringWithFormat:@"%@: %@", actionName6, name];

  [v9 setObject:v16 forKeyedSubscript:@"default_label"];
  actionName7 = [firstObject actionName];
  v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName7];
  [v9 setObject:v18 forKeyedSubscript:@"header"];

  name2 = [firstObject4 name];
  v20 = [NSString stringWithFormat:@"%@", name2];
  [v9 setObject:v20 forKeyedSubscript:@"title"];

  resources7 = [bundleCopy resources];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resources7 count]);
  [v9 setObject:v22 forKeyedSubscript:@"media_event_count"];

  getDictionary5 = [firstObject4 getDictionary];
  v24 = [getDictionary5 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

  v79 = v24;
  if (([v24 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || (objc_msgSend(v24, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]) & 1) != 0 || objc_msgSend(v24, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]))
  {
    events2 = [bundleCopy events];
    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [events2 count]);
    [v9 setObject:v26 forKeyedSubscript:@"media_event_count"];
  }

  getDictionary6 = [firstObject4 getDictionary];
  v28 = [getDictionary6 objectForKeyedSubscript:@"media_type"];
  [v9 setObject:v28 forKeyedSubscript:@"media_type"];

  [v9 setObject:v81 forKeyedSubscript:@"media_album"];
  time = [bundleCopy time];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v9];

  actionName8 = [firstObject actionName];
  if (([actionName8 isEqualToString:@"songs_on_repeat"] & 1) == 0)
  {
    actionName9 = [firstObject actionName];
    if (![actionName9 isEqualToString:@"song_on_repeat"])
    {
      actionName10 = [firstObject actionName];
      v77 = [actionName10 isEqualToString:@"media_on_repeat"];

      if ((v77 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  actionName11 = [firstObject actionName];
  [v9 setObject:actionName11 forKeyedSubscript:@"media_on_repeat"];

LABEL_13:
  actionName12 = [firstObject actionName];
  v36 = [actionName12 isEqualToString:@"media_on_repeat_third_party"];

  v37 = v78;
  if (v36)
  {
    actionName13 = [firstObject actionName];
    [v9 setObject:actionName13 forKeyedSubscript:@"media_on_repeat_third_party"];
  }

  actionName14 = [firstObject actionName];
  v40 = [actionName14 isEqualToString:@"played_media_sessions"];

  if (v40)
  {
    actionName15 = [firstObject actionName];
    [v9 setObject:actionName15 forKeyedSubscript:@"played_media_sessions"];
  }

  actionName16 = [firstObject actionName];
  [v9 setObject:actionName16 forKeyedSubscript:@"action"];

  v43 = objc_opt_class();
  actionName17 = [firstObject actionName];
  v45 = [v43 keywordFromString:actionName17];
  [v9 setObject:v45 forKeyedSubscript:@"action_type"];

  getDictionary7 = [firstObject4 getDictionary];
  v47 = [getDictionary7 objectForKeyedSubscript:@"third_party_dominate_value"];
  [v9 setObject:v47 forKeyedSubscript:@"third_party_dominate_value"];

  getDictionary3 = v81;
LABEL_34:

  objc_autoreleasePoolPop(v37);
LABEL_35:

  return v9;
}

+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (action)
  {
    resources = [bundleCopy resources];

    if (resources)
    {
      action = objc_opt_new();
      action2 = [bundleCopy action];
      v7 = [NSString stringWithFormat:@"%@", @"Memories from Photos"];
      actionName = [action2 actionName];
      v9 = [actionName length];

      if (v9 >= 2)
      {
        [action setObject:v7 forKeyedSubscript:@"default_label"];
        actionName2 = [action2 actionName];
        [action setObject:actionName2 forKeyedSubscript:@"title"];
      }
    }

    else
    {
      action = 0;
    }
  }

  return action;
}

+ (id)buildTrendMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  events = [bundleCopy events];
  firstObject = [events firstObject];
  category = [firstObject category];

  if (category == 10)
  {
    action = [bundleCopy action];
    persons = [bundleCopy persons];
    firstObject2 = [persons firstObject];
    name = [firstObject2 name];

    actionName = [action actionName];
    v13 = [actionName stringByAppendingString:name];

    [v4 setObject:v13 forKeyedSubscript:@"default_label"];
    actionName2 = [action actionName];
    v15 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
    [v4 setObject:v15 forKeyedSubscript:@"header"];

    [v4 setObject:name forKeyedSubscript:@"title"];
    actionName3 = [action actionName];
    v17 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName3];
    [v4 setObject:v17 forKeyedSubscript:@"action"];

    v18 = objc_opt_class();
    actionName4 = [action actionName];
    v20 = [v18 keywordFromString:actionName4];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];

    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  return v4;
}

+ (id)buildEvergreenMetaDataForEventBundle:(id)bundle
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  resources = [bundle resources];
  v4 = [resources countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(resources);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        if ([v8 type] == 9)
        {
          v25 = resources;
          v9 = objc_opt_new();
          v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"EVERGREEN_LABEL"];
          [v9 setObject:v10 forKeyedSubscript:@"default_label"];

          name = [v8 name];
          v12 = [NSString stringWithFormat:@"%@_%@", @"evergreen_type", name];

          name2 = [v8 name];
          v26 = v9;
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"evergreen_type" extendedKeyword:v12 value:name2 metaData:v9];

          v14 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          promptCount = [v8 promptCount];
          if (promptCount)
          {
            for (j = 0; j != promptCount; ++j)
            {
              promptIndexes = [v8 promptIndexes];
              v18 = [promptIndexes objectAtIndex:j];

              if (v18)
              {
                v19 = [NSString stringWithFormat:@"%@%d", @"evergreen_slot_", j];
                [v26 setObject:v18 forKeyedSubscript:v19];
                v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", @"evergreen_index", [v18 intValue]);
                stringValue = [v18 stringValue];
                [MOEventBundleMetaDataUtility setMetaDataWithKeyword:v19 extendedKeyword:v20 value:stringValue metaData:v26];
              }
            }
          }

          [v26 setObject:&off_100368FE0 forKeyedSubscript:@"shuffle_mode"];
          v22 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          v23 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          resources = v25;
          goto LABEL_22;
        }
      }

      v5 = [resources countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_22:

  return v26;
}

+ (id)buildTimeContextMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionType = [action actionType];

  action2 = [bundleCopy action];
  if (actionType == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  actions = [bundleCopy actions];

  if (actions)
  {
    actions2 = [bundleCopy actions];
    [MOEventBundleMetaDataUtility setMetaDataForActions:actions2 metaData:v4];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];
  }

  places = [bundleCopy places];

  if (places)
  {
    places2 = [bundleCopy places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:places2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  action3 = [bundleCopy action];
  if ([action3 actionType] != 4)
  {
    goto LABEL_17;
  }

  concurrentMediaAction = [bundleCopy concurrentMediaAction];

  if (concurrentMediaAction)
  {
    action3 = [bundleCopy concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:action3 metaData:v4];
LABEL_17:
  }

  if ([bundleCopy bundleSubType] == 202 && objc_msgSend(bundleCopy, "summarizationGranularity") == 2 && (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) == 0)
  {
    [v4 setObject:@"workout_summary" forKeyedSubscript:@"summary_type"];
  }

  v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    startDate2 = [bundleCopy startDate];
    allKeys = [v4 allKeys];
    v27 = 138412546;
    v28 = startDate2;
    v29 = 2112;
    v30 = allKeys;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "build meta for time context bundle, bundle startDate, %@, metaData, %@", &v27, 0x16u);
  }

  return v4;
}

+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];

  if (action)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  places = [bundleCopy places];

  if (places)
  {
    places2 = [bundleCopy places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:places2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  [v4 setObject:@"transit_summary" forKeyedSubscript:@"summary_type"];
  places3 = [bundleCopy places];
  firstObject = [places3 firstObject];

  if (([firstObject placeType] == 2 || objc_msgSend(firstObject, "placeType") == 3) && objc_msgSend(firstObject, "placeType") != 4 && objc_msgSend(firstObject, "placeType") != 5 && objc_msgSend(firstObject, "proposition") != 4)
  {
    [v4 setObject:@"YES" forKeyedSubscript:@"destination_format"];
  }

  return v4;
}

+ (id)buildTripMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionType = [action actionType];

  if (actionType == 2)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  if ([bundleCopy isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];

    v10 = [NSPredicate predicateWithFormat:@"%K IN %@", @"placeType", &off_10036D908];
    places = [bundleCopy places];
    v12 = [places filteredArrayUsingPredicate:v10];

    place3 = [bundleCopy place];
    [place3 placeNameConfidence];
    v15 = v14;

    if ([v12 count] >= 2)
    {
      v16 = &kMOLabelFormatterMetaKeywordSingleDominantPlace;
      if (v15 < 0.8)
      {
        v17 = [v12 objectAtIndexedSubscript:0];
        [v17 placeNameConfidence];
        v19 = v18;
        v20 = [v12 objectAtIndexedSubscript:1];
        [v20 placeNameConfidence];
        v22 = v19 + v21;

        v16 = &kMOLabelFormatterMetaKeywordDoubleDominantPlaces;
        if (v22 < 0.8)
        {
          [v4 setObject:@"YES" forKeyedSubscript:@"many_places"];
          if (v15 >= 0.4)
          {
            v16 = &kMOLabelFormatterMetaKeywordSingleDominantPlace;
          }
        }
      }

      [v4 setObject:@"YES" forKeyedSubscript:*v16];
      [MOEventBundleMetaDataUtility setMetaDataForPlaces:v12 metaData:v4];
    }
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  return v4;
}

+ (id)buildClusteringMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  getSubTypeString = [bundleCopy getSubTypeString];
  [v4 setObject:getSubTypeString forKeyedSubscript:@"cluster_subtype"];

  action = [bundleCopy action];
  actionType = [action actionType];

  action2 = [bundleCopy action];
  if (actionType == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  return v4;
}

+ (id)buildThematicSummaryMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v6 = objc_opt_new();
  getSubTypeString = [bundleCopy getSubTypeString];
  [v6 setObject:getSubTypeString forKeyedSubscript:@"thematic_summary_subtype"];

  subBundleIDs = [bundleCopy subBundleIDs];
  v247 = bundleCopy;
  if ([subBundleIDs count] < 3)
  {
    goto LABEL_10;
  }

  clusterMetadata = [bundleCopy clusterMetadata];
  phenotype = [clusterMetadata phenotype];
  v11 = [phenotype objectForKeyedSubscript:@"timeTag"];
  if (!v11)
  {
    clusterMetadata2 = [bundleCopy clusterMetadata];
    phenotype2 = [clusterMetadata2 phenotype];
    v4 = [phenotype2 objectForKeyedSubscript:@"timeString"];
    if (!v4)
    {
      v14 = 0;
LABEL_7:

      goto LABEL_8;
    }
  }

  clusterMetadata3 = [bundleCopy clusterMetadata];
  weekOfYearHistogram = [clusterMetadata3 weekOfYearHistogram];
  v14 = [weekOfYearHistogram count] > 2;

  bundleCopy = v247;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  if (!v14)
  {
    goto LABEL_11;
  }

  subBundleIDs = [NSNumber numberWithBool:1];
  [v6 setObject:subBundleIDs forKeyedSubscript:@"is_routine"];
LABEL_10:

LABEL_11:
  clusterMetadata4 = [bundleCopy clusterMetadata];
  phenotype3 = [clusterMetadata4 phenotype];
  v17 = [phenotype3 objectForKeyedSubscript:@"holiday"];
  if (v17)
  {
    v18 = v17;
    clusterMetadata5 = [bundleCopy clusterMetadata];
    phenotype4 = [clusterMetadata5 phenotype];
    v21 = [phenotype4 objectForKeyedSubscript:@"holiday"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    bundleCopy = v247;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    clusterMetadata4 = [v247 clusterMetadata];
    phenotype3 = [clusterMetadata4 phenotype];
    v23 = [phenotype3 objectForKeyedSubscript:@"holiday"];
    [v6 setObject:v23 forKeyedSubscript:@"holiday_name"];
  }

LABEL_15:
  clusterMetadata6 = [bundleCopy clusterMetadata];
  phenotype5 = [clusterMetadata6 phenotype];
  v26 = [phenotype5 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  v27 = &GEOPOICategoryGasStation_ptr;
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    clusterMetadata7 = [bundleCopy clusterMetadata];
    phenotype6 = [clusterMetadata7 phenotype];
    v31 = [phenotype6 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    [v6 setObject:v31 forKeyedSubscript:@"photo_trait_subject"];
  }

  clusterMetadata8 = [bundleCopy clusterMetadata];
  phenotype7 = [clusterMetadata8 phenotype];
  v34 = [phenotype7 objectForKeyedSubscript:@"withFamily"];

  if (v34)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_family"];
  }

  clusterMetadata9 = [bundleCopy clusterMetadata];
  phenotype8 = [clusterMetadata9 phenotype];
  v37 = [phenotype8 objectForKeyedSubscript:@"withFriend"];

  if (v37)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_friends"];
  }

  clusterMetadata10 = [bundleCopy clusterMetadata];
  phenotype9 = [clusterMetadata10 phenotype];
  v40 = [phenotype9 objectForKeyedSubscript:@"withMyPet"];

  if (v40)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_pets"];
  }

  clusterMetadata11 = [bundleCopy clusterMetadata];
  phenotypePersonUUIDs = [clusterMetadata11 phenotypePersonUUIDs];
  v43 = [phenotypePersonUUIDs count];

  v242 = v6;
  if (v43)
  {
    clusterMetadata12 = [bundleCopy clusterMetadata];
    phenotype10 = [clusterMetadata12 phenotype];
    v46 = [phenotype10 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v46)
    {
      v47 = objc_opt_new();
      clusterMetadata13 = [bundleCopy clusterMetadata];
      contactNamesHistogram = [clusterMetadata13 contactNamesHistogram];
      v50 = [contactNamesHistogram keysSortedByValueUsingComparator:&__block_literal_global_600];

      v260 = 0u;
      v261 = 0u;
      v258 = 0u;
      v259 = 0u;
      obj = v50;
      v249 = [obj countByEnumeratingWithState:&v258 objects:v269 count:16];
      if (v249)
      {
        v245 = *v259;
        do
        {
          for (i = 0; i != v249; i = i + 1)
          {
            if (*v259 != v245)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v258 + 1) + 8 * i);
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            persons = [bundleCopy persons];
            v54 = [persons countByEnumeratingWithState:&v254 objects:v268 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v255;
              do
              {
                for (j = 0; j != v55; j = j + 1)
                {
                  if (*v255 != v56)
                  {
                    objc_enumerationMutation(persons);
                  }

                  v58 = *(*(&v254 + 1) + 8 * j);
                  name = [v58 name];
                  v60 = [name isEqualToString:v52];

                  if (v60)
                  {
                    [v47 addObject:v58];
                  }
                }

                v55 = [persons countByEnumeratingWithState:&v254 objects:v268 count:16];
              }

              while (v55);
            }

            bundleCopy = v247;
          }

          v249 = [obj countByEnumeratingWithState:&v258 objects:v269 count:16];
        }

        while (v249);
      }

      v61 = v47;
      suggestionID = [bundleCopy suggestionID];
      v6 = v242;
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:suggestionID metaData:v242 sortBycomparePersons:0];

      v27 = &GEOPOICategoryGasStation_ptr;
    }

    else
    {
      clusterMetadata14 = [bundleCopy clusterMetadata];
      phenotypePersonUUIDs2 = [clusterMetadata14 phenotypePersonUUIDs];
      v65 = [NSPredicate predicateWithFormat:@"contactIdentifier IN %@", phenotypePersonUUIDs2];

      persons2 = [bundleCopy persons];
      v61 = [persons2 filteredArrayUsingPredicate:v65];

      suggestionID2 = [bundleCopy suggestionID];
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:suggestionID2 metaData:v6 sortBycomparePersons:1];
    }

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_contact"];
  }

  clusterMetadata15 = [bundleCopy clusterMetadata];
  phenotype11 = [clusterMetadata15 phenotype];
  v70 = [phenotype11 objectForKeyedSubscript:@"placeName"];

  clusterMetadata16 = [bundleCopy clusterMetadata];
  phenotype12 = [clusterMetadata16 phenotype];
  v73 = [phenotype12 objectForKeyedSubscript:@"combinedPlaceType"];

  clusterMetadata17 = [bundleCopy clusterMetadata];
  phenotype13 = [clusterMetadata17 phenotype];
  v76 = [phenotype13 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  clusterMetadata18 = [bundleCopy clusterMetadata];
  phenotype14 = [clusterMetadata18 phenotype];
  v246 = [phenotype14 objectForKeyedSubscript:@"enclosingAreaName"];

  if ([v70 length])
  {
    v79 = v70;
    v80 = &kMOLabelFormatterMetaKeywordPlaceName;
    goto LABEL_51;
  }

  if ([v73 length])
  {
    v79 = [objc_opt_class() combinedPlaceTypeLabelMetadataForThematicSummary:v73];
    v81 = v73;
    v73 = v79;
LABEL_50:

    v80 = &kMOLabelFormatterMetaKeywordPlaceName;
    goto LABEL_51;
  }

  if ([v76 length])
  {
    v79 = [objc_opt_class() placeTypePhotoTraitLabelMetadataForThematicSummary:v76];
    v81 = v76;
    v76 = v79;
    goto LABEL_50;
  }

  v79 = v246;
  if (![v246 length])
  {
    goto LABEL_52;
  }

  v80 = &kMOLabelFormatterMetaKeywordEnclosingArea;
LABEL_51:
  v82 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v79];
  v83 = *v80;
  v6 = v242;
  [v242 setObject:v82 forKeyedSubscript:v83];

LABEL_52:
  [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:?];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"not_home"];
  if ([v70 length])
  {
    lowercaseString = [v70 lowercaseString];
    v85 = [lowercaseString isEqualToString:@"home"];

    if (v85)
    {
      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"at_home"];
      [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"not_home"];
    }
  }

  if ([v73 length])
  {
    lowercaseString2 = [v73 lowercaseString];
    v87 = [lowercaseString2 isEqualToString:@"home"];

    if (v87)
    {
      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"at_home"];
      v88 = &__kCFBooleanFalse;
      v89 = v6;
      v90 = @"not_home";
LABEL_66:
      [v89 setObject:v88 forKeyedSubscript:v90];
      goto LABEL_67;
    }

    if ([v73 isEqualToString:@"restaurants"])
    {
      v91 = &kMOLabelFormatterMetaKeywordAtRestaurant;
LABEL_65:
      v90 = *v91;
      v88 = &__kCFBooleanTrue;
      v89 = v6;
      goto LABEL_66;
    }

    if ([v73 isEqualToString:@"stores"])
    {
      v91 = &kMOLabelFormatterMetaKeywordAtStore;
      goto LABEL_65;
    }

    if (([v73 isEqualToString:@"parks"] & 1) != 0 || objc_msgSend(v73, "isEqualToString:", @"national parks"))
    {
      v91 = &kMOLabelFormatterMetaKeywordAtPark;
      goto LABEL_65;
    }
  }

LABEL_67:
  v92 = [v6 objectForKeyedSubscript:@"place"];
  obja = v70;
  if (v92 || ([v6 objectForKeyedSubscript:@"enclosing_area"], (v92 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    places2 = v92;
LABEL_70:

    goto LABEL_71;
  }

  places = [bundleCopy places];
  v117 = [places count];

  if (v117 >= 2)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"multiple_places"];
    v118 = [v6 objectForKeyedSubscript:@"place"];

    if (!v118)
    {
      places2 = [bundleCopy places];
      firstObject = [places2 firstObject];
      placeName = [firstObject placeName];
      [v6 setObject:placeName forKeyedSubscript:@"place"];

      goto LABEL_70;
    }
  }

LABEL_71:
  v241 = v73;
  clusterMetadata19 = [bundleCopy clusterMetadata];
  phenotype15 = [clusterMetadata19 phenotype];
  v96 = [phenotype15 objectForKeyedSubscript:@"secondLevelActivityType"];

  clusterMetadata20 = [bundleCopy clusterMetadata];
  phenotype16 = [clusterMetadata20 phenotype];
  v99 = phenotype16;
  v240 = v76;
  if (v96)
  {
    v100 = [phenotype16 objectForKeyedSubscript:@"secondLevelActivityType"];

    v101 = v247;
    if ([v100 isEqualToString:@"eating out"])
    {
      v102 = [v6 objectForKeyedSubscript:@"at_home"];

      if (v102)
      {
        lowercaseString3 = [@"dining" lowercaseString];
        v104 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString3];
        [v6 setObject:v104 forKeyedSubscript:@"action"];

        v105 = objc_opt_class();
        lowercaseString4 = [@"dining" lowercaseString];
        v107 = [v105 keywordFromString:lowercaseString4];
        [v6 setObject:v107 forKeyedSubscript:@"action_type"];

        v108 = @"prompt_type";
        v109 = v6;
        v110 = @"dining";
      }

      else
      {
        lowercaseString5 = [@"eating out" lowercaseString];
        v122 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString5];
        [v6 setObject:v122 forKeyedSubscript:@"action"];

        v123 = objc_opt_class();
        lowercaseString6 = [@"eating out" lowercaseString];
        v125 = [v123 keywordFromString:lowercaseString6];
        [v6 setObject:v125 forKeyedSubscript:@"action_type"];

        [v6 setObject:@"dining" forKeyedSubscript:@"prompt_type"];
        v110 = &__kCFBooleanTrue;
        v108 = @"is_outing";
        v109 = v6;
      }

      [v109 setObject:v110 forKeyedSubscript:v108];
    }

    if ([v100 isEqualToString:@"shopping"])
    {
      lowercaseString7 = [@"shopping" lowercaseString];
      v127 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString7];
      [v6 setObject:v127 forKeyedSubscript:@"action"];

      v128 = objc_opt_class();
      lowercaseString8 = [@"shopping" lowercaseString];
      v130 = [v128 keywordFromString:lowercaseString8];
      [v6 setObject:v130 forKeyedSubscript:@"action_type"];

      v131 = v6;
      v132 = @"shopping";
LABEL_91:
      [v131 setObject:v132 forKeyedSubscript:@"prompt_type"];
      v133 = &__kCFBooleanTrue;
      v134 = @"is_outing";
LABEL_95:
      [v6 setObject:v133 forKeyedSubscript:v134];
      goto LABEL_96;
    }

    if ([v100 isEqualToString:@"visit"])
    {
      v132 = @"visit";
      v131 = v6;
      goto LABEL_91;
    }

    action = [v247 action];
    actionType = [action actionType];

    if (actionType != 4)
    {
      action2 = [v247 action];
      actionName = [action2 actionName];
      if ([actionName isEqualToString:@"Time at Home"])
      {
      }

      else
      {
        action3 = [v247 action];
        actionName2 = [action3 actionName];
        v226 = [actionName2 isEqualToString:@"visit"];

        if ((v226 & 1) == 0)
        {
          action4 = [v247 action];
          actionName3 = [action4 actionName];
          lowercaseString9 = [actionName3 lowercaseString];
          v230 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString9];
          [v6 setObject:v230 forKeyedSubscript:@"action"];

          v231 = objc_opt_class();
          action5 = [v247 action];
          actionName4 = [action5 actionName];
          lowercaseString10 = [actionName4 lowercaseString];
          v235 = [v231 keywordFromString:lowercaseString10];
          [v6 setObject:v235 forKeyedSubscript:@"action_type"];
        }
      }

      v27 = &GEOPOICategoryGasStation_ptr;
      goto LABEL_96;
    }

    action6 = [v247 action];
    actionName5 = [action6 actionName];
    [MOEventBundleMetaDataUtility setActivityNameForThematicSummaryFromActionName:actionName5 metaData:v6 keyword:@"action" keywordType:@"action_type"];

LABEL_94:
    [v6 setObject:@"workouts" forKeyedSubscript:@"diversity_key"];
    v134 = @"prompt_type";
    v133 = @"workout";
    goto LABEL_95;
  }

  v111 = [phenotype16 objectForKeyedSubscript:@"topLevelActivityType"];

  v101 = v247;
  if (!v111)
  {
    goto LABEL_97;
  }

  clusterMetadata21 = [v247 clusterMetadata];
  phenotype17 = [clusterMetadata21 phenotype];
  v100 = [phenotype17 objectForKeyedSubscript:@"topLevelActivityType"];

  if ([v100 isEqualToString:@"contact"])
  {
    v114 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"contact"];
    [v6 setObject:v114 forKeyedSubscript:@"action"];

    v115 = [objc_opt_class() keywordFromString:@"contact"];
    [v6 setObject:v115 forKeyedSubscript:@"action_type"];
  }

  if ([v100 isEqualToString:@"outing"])
  {
    [v6 setObject:@"visit" forKeyedSubscript:@"prompt_type"];
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_outing"];
  }

  if ([v100 isEqualToString:@"activity"])
  {
    goto LABEL_94;
  }

LABEL_96:

LABEL_97:
  clusterMetadata22 = [v101 clusterMetadata];
  phenotype18 = [clusterMetadata22 phenotype];
  v141 = [phenotype18 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v142 = v27[199];
  objc_opt_class();
  v143 = objc_opt_isKindOfClass();

  if (v143)
  {
    clusterMetadata23 = [v101 clusterMetadata];
    phenotype19 = [clusterMetadata23 phenotype];
    v146 = [phenotype19 objectForKeyedSubscript:@"topLevelActivityType"];

    v147 = [v6 objectForKeyedSubscript:@"at_home"];
    bOOLValue = [v147 BOOLValue];

    v149 = [objc_opt_class() activityPhotoTraitLabelMetadataForThematicSummary:v146 AtHome:bOOLValue];

    if ([v149 length])
    {
      lowercaseString11 = [v149 lowercaseString];
      v151 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString11];
      [v6 setObject:v151 forKeyedSubscript:@"action"];

      v152 = objc_opt_class();
      lowercaseString12 = [v149 lowercaseString];
      v154 = [v152 keywordFromString:lowercaseString12];
      [v6 setObject:v154 forKeyedSubscript:@"action_type"];
    }
  }

  v155 = [v6 objectForKeyedSubscript:@"diversity_key"];
  if (v155)
  {
    v156 = v155;
    v157 = [v6 objectForKeyedSubscript:@"diversity_key"];

    v6 = v242;
    if (v157 == @"workouts")
    {
      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      actions = [v101 actions];
      v195 = [actions countByEnumeratingWithState:&v250 objects:v267 count:16];
      if (v195)
      {
        v196 = v195;
        v197 = 0;
        v198 = *v251;
        do
        {
          for (k = 0; k != v196; k = k + 1)
          {
            if (*v251 != v198)
            {
              objc_enumerationMutation(actions);
            }

            if ([*(*(&v250 + 1) + 8 * k) actionType] == 4)
            {
              ++v197;
            }
          }

          v196 = [actions countByEnumeratingWithState:&v250 objects:v267 count:16];
        }

        while (v196);

        v6 = v242;
        if (v197 >= 2)
        {
          [v242 setObject:&__kCFBooleanTrue forKeyedSubscript:@"multiple_workouts"];
        }
      }

      else
      {
      }
    }
  }

  startDate = [v101 startDate];
  if (startDate)
  {
    v159 = startDate;
    endDate = [v101 endDate];

    if (endDate)
    {
      v161 = +[NSCalendar currentCalendar];
      startDate2 = [v101 startDate];
      endDate2 = [v101 endDate];
      v164 = [v161 isDate:startDate2 inSameDayAsDate:endDate2];

      if (v164)
      {
        [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"day_summary"];
      }

      v101 = v247;
    }
  }

  clusterMetadata24 = [v101 clusterMetadata];
  phenotype20 = [clusterMetadata24 phenotype];
  v167 = [phenotype20 objectForKeyedSubscript:@"timeTag"];
  v168 = v101;
  if (v167)
  {
    v169 = v167;
    clusterMetadata25 = [v101 clusterMetadata];
    phenotype21 = [clusterMetadata25 phenotype];
    v172 = [phenotype21 objectForKeyedSubscript:@"timeString"];

    if (v172)
    {
      clusterMetadata26 = [v168 clusterMetadata];
      phenotype22 = [clusterMetadata26 phenotype];
      v175 = [phenotype22 objectForKeyedSubscript:@"timeString"];

      clusterMetadata27 = [v168 clusterMetadata];
      phenotype23 = [clusterMetadata27 phenotype];
      v178 = [phenotype23 objectForKeyedSubscript:@"timeTag"];

      v179 = [MOTime timeStringSingularToPluralForm:v178];
      capitalizedString = [v178 capitalizedString];
      v180 = [NSString stringWithFormat:@"%@ %@", v175, capitalizedString];

      v182 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v180];
      [v6 setObject:v182 forKeyedSubscript:@"time"];

      if (v179)
      {
        capitalizedString2 = [v179 capitalizedString];
        v183 = [NSString stringWithFormat:@"%@ %@", v175, capitalizedString2];

        v185 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v183];
        [v6 setObject:v185 forKeyedSubscript:@"times"];
      }

      v186 = obja;
      goto LABEL_131;
    }
  }

  else
  {
  }

  clusterMetadata28 = [v168 clusterMetadata];
  phenotype24 = [clusterMetadata28 phenotype];
  v189 = [phenotype24 objectForKeyedSubscript:@"timeTag"];

  clusterMetadata29 = [v168 clusterMetadata];
  phenotype25 = [clusterMetadata29 phenotype];
  v192 = phenotype25;
  if (v189)
  {
    v175 = [phenotype25 objectForKeyedSubscript:@"timeTag"];

    v178 = [MOTime timeStringSingularToPluralForm:v175];
    v193 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v175];
    [v6 setObject:v193 forKeyedSubscript:@"time"];

    v186 = obja;
    if (!v178)
    {
      v168 = v247;
      goto LABEL_132;
    }

    v179 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v178];
    [v6 setObject:v179 forKeyedSubscript:@"times"];
    v168 = v247;
    goto LABEL_131;
  }

  v200 = [phenotype25 objectForKeyedSubscript:@"timeString"];

  v168 = v247;
  v186 = obja;
  if (!v200)
  {
    goto LABEL_133;
  }

  clusterMetadata30 = [v247 clusterMetadata];
  phenotype26 = [clusterMetadata30 phenotype];
  v175 = [phenotype26 objectForKeyedSubscript:@"timeString"];

  v178 = [MOTime timeStringSingularToPluralForm:v175];
  v203 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v175];
  [v6 setObject:v203 forKeyedSubscript:@"time"];

  if (v178)
  {
    v179 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v178];
    [v6 setObject:v179 forKeyedSubscript:@"times"];
LABEL_131:
  }

LABEL_132:

LABEL_133:
  if ([v168 bundleSubType] == 1001)
  {
    v266[0] = @"reflection";
    v266[1] = @"moments";
    v266[2] = @"highlights";
    v204 = [NSArray arrayWithObjects:v266 count:3];
    v205 = [v204 objectAtIndex:{arc4random_uniform(objc_msgSend(v204, "count"))}];
    [v6 setObject:v205 forKeyedSubscript:@"diversity_key"];

    v206 = [NSNumber numberWithUnsignedInt:arc4random_uniform(7u)];
    [v6 setObject:v206 forKeyedSubscript:@"prompt_idx"];

    v207 = v240;
    goto LABEL_159;
  }

  v207 = v240;
  if ([v168 bundleSubType] == 1002)
  {
    v208 = [v6 objectForKeyedSubscript:@"with_family"];
    if (v208)
    {
      goto LABEL_138;
    }

    v208 = [v6 objectForKeyedSubscript:@"with_friends"];
    if (v208)
    {
      goto LABEL_138;
    }

    v236 = [v6 objectForKeyedSubscript:@"with_pets"];

    if (v236)
    {
      goto LABEL_139;
    }

    goto LABEL_166;
  }

  if ([v168 bundleSubType] == 1003)
  {
    v211 = [v6 objectForKeyedSubscript:@"prompt_type"];

    if (!v211)
    {
      goto LABEL_159;
    }

    v212 = [v6 objectForKeyedSubscript:@"prompt_type"];
    if ([v212 isEqualToString:@"workout"])
    {
      v213 = 19;
    }

    else
    {
      if (![v212 isEqualToString:@"visit"])
      {
        if ([v212 isEqualToString:@"shopping"] || objc_msgSend(v212, "isEqualToString:", @"dining"))
        {
          [v6 setObject:&off_100368FC8 forKeyedSubscript:@"prompt_idx"];
        }

        goto LABEL_158;
      }

      v213 = 4;
    }

    v218 = [NSNumber numberWithUnsignedInt:arc4random_uniform(v213)];
    [v6 setObject:v218 forKeyedSubscript:@"prompt_idx"];

LABEL_158:
    goto LABEL_159;
  }

  if ([v168 bundleSubType] == 1004)
  {
    v214 = [v6 objectForKeyedSubscript:@"at_home"];

    if (!v214)
    {
      v237 = [v6 objectForKeyedSubscript:@"at_restaurant"];

      if (v237)
      {
        v208 = [v6 objectForKeyedSubscript:@"with_contact"];
LABEL_138:

LABEL_139:
        v209 = 3;
LABEL_140:
        v210 = [NSNumber numberWithUnsignedInt:arc4random_uniform(v209)];
        [v6 setObject:v210 forKeyedSubscript:@"prompt_idx"];

        goto LABEL_159;
      }

      v238 = [v6 objectForKeyedSubscript:@"at_store"];

      if (v238)
      {
        v209 = 2;
        goto LABEL_140;
      }

      v239 = [v6 objectForKeyedSubscript:@"at_park"];

      if (!v239)
      {
        v209 = 6;
        goto LABEL_140;
      }
    }

    v215 = [v6 objectForKeyedSubscript:@"with_contact"];

    if (!v215)
    {
LABEL_166:
      v209 = 4;
      goto LABEL_140;
    }

    [v6 setObject:&off_100368FC8 forKeyedSubscript:@"prompt_idx"];
  }

LABEL_159:
  v219 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
  {
    clusterMetadata31 = [v168 clusterMetadata];
    phenotype27 = [clusterMetadata31 phenotype];
    *buf = 138478083;
    v263 = phenotype27;
    v264 = 2112;
    v265 = v242;
    v6 = v242;
    _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_INFO, "Built label metadata for thematic summary:cluster phenotype=%{private}@, metaData=%@", buf, 0x16u);
  }

  v222 = v6;
  return v6;
}

int64_t __75__MOEventBundleMetaDataUtility_buildThematicSummaryMetaDataForEventBundle___block_invoke(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    v7 = v8 < [v5 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)buildStateOfMindMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  +[MOEventBundleMetaDataUtility defineClassCollections];
  v4 = objc_opt_new();
  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  if ([bundleCopy bundleSubType] == 802)
  {
    v9 = @"momentary_emotion";
  }

  else
  {
    v9 = @"daily_mood";
  }

  [v4 setObject:v9 forKeyedSubscript:@"reflective_interval"];
  action = [bundleCopy action];
  actionSubtype = [action actionSubtype];

  v12 = actionSubtype - 1;
  if ((actionSubtype - 1) <= 6)
  {
    v13 = *(&off_100336098 + v12);
    [v4 setObject:*(&off_100336060 + v12) forKeyedSubscript:@"valence_classification_granular"];
    [v4 setObject:v13 forKeyedSubscript:@"valence_classification"];
  }

  action2 = [bundleCopy action];
  actionMetaData = [action2 actionMetaData];
  v16 = [actionMetaData objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

  if (v16)
  {
    action3 = [bundleCopy action];
    actionMetaData2 = [action3 actionMetaData];
    v19 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
    [v4 setObject:v19 forKeyedSubscript:@"state_of_mind_app_name"];
  }

  metaDataForRank = [bundleCopy metaDataForRank];
  v21 = [metaDataForRank objectForKey:@"StateOfMindLabels"];

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
  [v4 setObject:v22 forKeyedSubscript:@"state_of_mind_label_count"];

  if ([v21 count])
  {
    v23 = [v21 objectAtIndexedSubscript:0];
    [v23 intValue];

    v24 = HKUILocalizedStringForStateOfMindLabel();
    lowercaseString = [v24 lowercaseString];
    v26 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
    [v4 setObject:v26 forKeyedSubscript:@"state_of_mind_label_1"];
  }

  if ([v21 count] >= 2)
  {
    v27 = [v21 objectAtIndexedSubscript:1];
    [v27 intValue];

    v28 = HKUILocalizedStringForStateOfMindLabel();
    lowercaseString2 = [v28 lowercaseString];
    v30 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString2];
    [v4 setObject:v30 forKeyedSubscript:@"state_of_mind_label_2"];
  }

  v31 = v4;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v21;
  v32 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v52;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v51 + 1) + 8 * i);
        action4 = [bundleCopy action];
        if ([action4 actionSubtype] == 2)
        {
          v38 = [noSavoringPromptLabels containsObject:v36];

          if (v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          action5 = [bundleCopy action];
          if ([action5 actionSubtype] == 3)
          {
            v40 = [noSavoringPromptLabels containsObject:v36];

            if (v40)
            {
              goto LABEL_27;
            }
          }

          else
          {
            action6 = [bundleCopy action];
            if ([action6 actionSubtype] == 4)
            {
              v42 = [noSavoringPromptLabels containsObject:v36];

              if ((v42 & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_27:
              [v31 setObject:@"Yes" forKeyedSubscript:@"no_savoring_prompt"];
              goto LABEL_29;
            }
          }
        }

LABEL_29:
        action7 = [bundleCopy action];
        if ([action7 actionSubtype] == 5)
        {
          v44 = [noReappraisalPromptLabels containsObject:v36];

          if (v44)
          {
            goto LABEL_37;
          }
        }

        else
        {
          action8 = [bundleCopy action];
          if ([action8 actionSubtype] == 6)
          {
            v46 = [noReappraisalPromptLabels containsObject:v36];

            if (v46)
            {
              goto LABEL_37;
            }
          }

          else
          {
            action9 = [bundleCopy action];
            if ([action9 actionSubtype] == 7)
            {
              v48 = [noReappraisalPromptLabels containsObject:v36];

              if ((v48 & 1) == 0)
              {
                continue;
              }

LABEL_37:
              [v31 setObject:@"Yes" forKeyedSubscript:@"no_reappraisal_prompt"];
              continue;
            }
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v33);
  }

  return v31;
}

+ (void)setMetaDataForAction:(id)action metaData:(id)data
{
  if (action)
  {
    dataCopy = data;
    actionCopy = action;
    actionName = [actionCopy actionName];
    v8 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName];
    [dataCopy setObject:v8 forKeyedSubscript:@"action"];

    v9 = objc_opt_class();
    actionName2 = [actionCopy actionName];

    v10 = [v9 keywordFromString:actionName2];
    [dataCopy setObject:v10 forKeyedSubscript:@"action_type"];
  }
}

+ (void)setMetaDataForDiningAction:(id)action metaData:(id)data startDate:(id)date endDate:(id)endDate
{
  actionCopy = action;
  dataCopy = data;
  dateCopy = date;
  endDateCopy = endDate;
  if (actionCopy)
  {
    actionName = [actionCopy actionName];
    v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName];
    [dataCopy setObject:v13 forKeyedSubscript:@"action"];

    v14 = objc_opt_class();
    actionName2 = [actionCopy actionName];
    v16 = [v14 keywordFromString:actionName2];
    [dataCopy setObject:v16 forKeyedSubscript:@"action_type"];

    if ([actionCopy actionType] == 10)
    {
      v17 = [MOTime mealtagFromStartDate:dateCopy endDate:endDateCopy];
      if (v17 - 2000 <= 2)
      {
        v18 = [MOTime timeStringFromTimeTag:v17];
        if (v18)
        {
          v19 = [NSString stringWithFormat:@"%@_%@", @"meal_type", v18];
          v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"meal_type" extendedKeyword:v19 value:v20 metaData:dataCopy];
        }
      }
    }
  }
}

+ (void)setMetaDataForActions:(id)actions metaData:(id)data
{
  actionsCopy = actions;
  dataCopy = data;
  if (actionsCopy && [actionsCopy count])
  {
    v7 = objc_opt_new();
    v47 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = actionsCopy;
    obj = actionsCopy;
    v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v48)
    {
      v49 = 0;
      v46 = 0;
      v43 = 0;
      v45 = *v51;
      v8 = 1;
      v9 = v47;
      v42 = v7;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v50 + 1) + 8 * i);
          v12 = [NSString stringWithFormat:@"%@%d", @"action_", v8];
          v13 = [NSString stringWithFormat:@"%@_%d", @"action_type", v8];
          if ([v11 actionType] == 4)
          {
            actionName = [v11 actionName];
            [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName metaData:dataCopy keyword:v12 keywordType:v13];
          }

          else
          {
            actionName2 = [v11 actionName];
            v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
            [dataCopy setObject:v16 forKeyedSubscript:v12];

            v17 = objc_opt_class();
            actionName = [v11 actionName];
            v18 = [v17 keywordFromString:actionName];
            [dataCopy setObject:v18 forKeyedSubscript:v13];
          }

          if ([v11 actionType] == 4)
          {
            v19 = v49 + 1;
          }

          else
          {
            v19 = v49;
          }

          LODWORD(v49) = v19;
          if ([v11 actionType] == 2)
          {
            v20 = HIDWORD(v49) + 1;
          }

          else
          {
            v20 = HIDWORD(v49);
          }

          HIDWORD(v49) = v20;
          actionName3 = [v11 actionName];
          v22 = [v9 containsObject:actionName3];

          if ((v22 & 1) == 0)
          {
            v23 = dataCopy;
            actionName4 = [v11 actionName];
            [v9 addObject:actionName4];

            v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_action_", [v9 count]);
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", @"unique_action_type", [v9 count]);
            if ([v11 actionType] == 4)
            {
              actionName5 = [v11 actionName];
              [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName5 metaData:dataCopy keyword:v25 keywordType:v26];

              ++v43;
            }

            else
            {
              actionName6 = [v11 actionName];
              v29 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName6];
              [v23 setObject:v29 forKeyedSubscript:v25];

              v30 = objc_opt_class();
              actionName7 = [v11 actionName];
              v32 = [v30 keywordFromString:actionName7];
              [v23 setObject:v32 forKeyedSubscript:v26];

              dataCopy = v23;
            }

            v7 = v42;
          }

          v33 = [[NSNumber alloc] initWithUnsignedInteger:{objc_msgSend(v11, "actionType")}];
          v34 = [v7 containsObject:v33];

          if ((v34 & 1) == 0)
          {
            ++v46;
            v35 = [[NSNumber alloc] initWithUnsignedInteger:{objc_msgSend(v11, "actionType")}];
            [v7 addObject:v35];
          }

          v8 = (v8 + 1);

          v9 = v47;
        }

        v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v48);
    }

    else
    {
      v49 = 0;
      v46 = 0;
      v43 = 0;
      v9 = v47;
    }

    v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count]);
    [dataCopy setObject:v36 forKeyedSubscript:@"action_count"];

    v37 = [NSNumber numberWithInt:v49];
    [dataCopy setObject:v37 forKeyedSubscript:@"activity_count"];

    v38 = [NSNumber numberWithInt:v46];
    [dataCopy setObject:v38 forKeyedSubscript:@"unique_action_type_count"];

    v39 = [NSNumber numberWithInt:v43];
    [dataCopy setObject:v39 forKeyedSubscript:@"unique_activity_count"];

    v40 = [NSNumber numberWithInt:HIDWORD(v49)];
    [dataCopy setObject:v40 forKeyedSubscript:@"visit_count"];

    actionsCopy = v41;
  }
}

+ (void)setActivityNameFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type
{
  nameCopy = name;
  dataCopy = data;
  typeCopy = type;
  lowercaseString = [keyword lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:lowercaseString];
  v27 = nameCopy;
  v14 = [HKWorkout _workoutActivityTypeFromString:v27];
  IsValid = _HKWorkoutActivityTypeIsValid();
  v16 = v27;
  if (IsValid)
  {
    v16 = HKUILocalizedWorkoutTypeName();
  }

  v17 = [MOEventBundleLabelLocalizer _Moments_LowercaseNounForKey:v16];

  v18 = 1;
  if (v14 > 44)
  {
    if (v14 <= 48)
    {
      if (v14 == 45)
      {
        v19 = v13;
        v25 = 0;
        v20 = @"surfing";
        goto LABEL_27;
      }

      if (v14 == 46)
      {
        v19 = v13;
        v25 = 0;
        v20 = @"swim";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v14)
      {
        case '1':
          v19 = v13;
          v18 = 0;
          v20 = @"track and field";
          v21 = @"Track and Field";
LABEL_25:
          v25 = v21;
          goto LABEL_27;
        case '4':
          v19 = v13;
          v25 = 0;
          v20 = @"walk";
          goto LABEL_27;
        case '?':
          v19 = v13;
          v25 = 0;
          v20 = @"HIIT";
          goto LABEL_27;
      }
    }

LABEL_38:
    v25 = 0;
    goto LABEL_28;
  }

  if (v14 <= 23)
  {
    if (v14 == 1)
    {
      v25 = 0;
      v19 = v13;
      v20 = @"American football";
      goto LABEL_27;
    }

    if (v14 == 3)
    {
      v19 = v13;
      v25 = 0;
      v20 = @"Australian football";
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if (v14 == 24)
  {
    v19 = v13;
    v25 = 0;
    v20 = @"hike";
    goto LABEL_27;
  }

  if (v14 == 29)
  {
    v19 = v13;
    v18 = 0;
    v20 = @"mind and body workout";
    v21 = @"Mind and Body Workout";
    goto LABEL_25;
  }

  if (v14 != 37)
  {
    goto LABEL_38;
  }

  v19 = v13;
  v25 = 0;
  v20 = @"run";
LABEL_27:

  IsValid = 0;
  v17 = v20;
  v13 = v19;
LABEL_28:
  if (v14 > 0x4F || v14 == 33)
  {

    v17 = @"workout";
  }

  else if (IsValid)
  {
    [dataCopy setObject:v17 forKeyedSubscript:{lowercaseString, v25}];
    goto LABEL_35;
  }

  v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17, v25];
  [dataCopy setObject:v22 forKeyedSubscript:lowercaseString];

  if ((v18 & 1) == 0)
  {
    v23 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v26];
    [dataCopy setObject:v23 forKeyedSubscript:v13];
  }

LABEL_35:
  v24 = [objc_opt_class() keywordFromString:v17];
  [dataCopy setObject:v24 forKeyedSubscript:typeCopy];
}

+ (void)setActivityNameForThematicSummaryFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type
{
  nameCopy = name;
  dataCopy = data;
  typeCopy = type;
  lowercaseString = [keyword lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:lowercaseString];
  v24 = nameCopy;
  v14 = [HKWorkout _workoutActivityTypeFromString:v24];
  v15 = v24;
  if (v14 <= 0x4F)
  {
    v15 = v24;
    if (v14 != 33)
    {
      IsValid = _HKWorkoutActivityTypeIsValid();
      v17 = v24;
      if (IsValid)
      {
        v17 = HKUILocalizedWorkoutTypeName();
      }

      v15 = [MOEventBundleLabelLocalizer _Moments_LowercaseNounForKey:v17];

      if (v14 <= 48)
      {
        switch(v14)
        {
          case 1:
            v18 = 0;
            v19 = 1;
            v20 = @"American football";
            goto LABEL_23;
          case 3:
            v18 = 0;
            v19 = 1;
            v20 = @"Australian football";
            goto LABEL_23;
          case 29:
            v19 = 0;
            v18 = @"Mind and Body";
            v20 = @"mind and body";
            goto LABEL_23;
        }
      }

      else if (v14 > 63)
      {
        if (v14 == 64)
        {
          v19 = 0;
          v18 = @"Jump Rope";
          v20 = @"jump rope";
          goto LABEL_23;
        }

        if (v14 == 72)
        {
          v19 = 0;
          v18 = @"Tai Chi";
          v20 = @"tai chi";
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 == 49)
        {
          v19 = 0;
          v18 = @"Track and Field";
          v20 = @"track and field";
          goto LABEL_23;
        }

        if (v14 == 63)
        {
          v18 = 0;
          v19 = 1;
          v20 = @"HIIT";
LABEL_23:

          v15 = v20;
          goto LABEL_24;
        }
      }

      if (IsValid)
      {
        [dataCopy setObject:v15 forKeyedSubscript:lowercaseString];
LABEL_26:
        v23 = [objc_opt_class() keywordFromString:v15];
        [dataCopy setObject:v23 forKeyedSubscript:typeCopy];

        goto LABEL_27;
      }

      v18 = 0;
      v19 = 1;
LABEL_24:
      v21 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
      [dataCopy setObject:v21 forKeyedSubscript:lowercaseString];

      if ((v19 & 1) == 0)
      {
        v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
        [dataCopy setObject:v22 forKeyedSubscript:v13];
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

+ (void)setMetaDataForActivityAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy)
  {
    actionName = [actionCopy actionName];
    [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName metaData:dataCopy keyword:@"action" keywordType:@"action_type"];

    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [actionCopy actionSubtype]);
    [dataCopy setObject:v7 forKeyedSubscript:@"workoutSubtype"];

    actionMetaData = [actionCopy actionMetaData];
    v9 = [actionMetaData objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

    if (v9)
    {
      actionMetaData2 = [actionCopy actionMetaData];
      v11 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [dataCopy setObject:v11 forKeyedSubscript:@"workout_app_name"];
    }
  }
}

+ (void)setMetaDataForMediaAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy && [actionCopy actionType] == 6)
  {
    actionName = [actionCopy actionName];
    [dataCopy setObject:actionName forKeyedSubscript:@"media"];
  }
}

+ (id)mediaKeywordWithType:(unint64_t)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        [NSString stringWithFormat:@"%@_artist", @"media"];
        goto LABEL_14;
      case 4uLL:
        [NSString stringWithFormat:@"%@_genre", @"media"];
        goto LABEL_14;
      case 5uLL:
        [NSString stringWithFormat:@"%@_app", @"media"];
        goto LABEL_14;
    }

LABEL_10:
    v3 = @"media";
    goto LABEL_15;
  }

  if (!type)
  {
    goto LABEL_10;
  }

  if (type == 1)
  {
    [NSString stringWithFormat:@"%@_title", @"media"];
    goto LABEL_14;
  }

  if (type != 2)
  {
    goto LABEL_10;
  }

  [NSString stringWithFormat:@"%@_album", @"media"];
  v3 = LABEL_14:;
LABEL_15:

  return v3;
}

+ (void)setMetaDataForActivityConcurrentMediaAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy)
  {
    if ([actionCopy actionType] == 6)
    {
      actionMetaData = [actionCopy actionMetaData];

      if (actionMetaData)
      {
        actionName = [actionCopy actionName];
        [dataCopy setObject:actionName forKeyedSubscript:@"media"];

        actionMetaData2 = [actionCopy actionMetaData];
        v9 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
        [dataCopy setObject:v9 forKeyedSubscript:@"media_type"];

        actionMetaData3 = [actionCopy actionMetaData];
        v11 = [actionMetaData3 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

        if (v11)
        {
          actionMetaData4 = [actionCopy actionMetaData];
          v13 = [actionMetaData4 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

          v14 = [objc_opt_class() mediaKeywordWithType:{objc_msgSend(v13, "intValue")}];
          actionName2 = [actionCopy actionName];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"media_name" extendedKeyword:v14 value:actionName2 metaData:dataCopy];
        }
      }
    }
  }
}

+ (void)setMetaDataWithKeyword:(id)keyword extendedKeyword:(id)extendedKeyword value:(id)value metaData:(id)data
{
  keywordCopy = keyword;
  extendedKeywordCopy = extendedKeyword;
  valueCopy = value;
  dataCopy = data;
  if (keywordCopy && extendedKeywordCopy && valueCopy)
  {
    v13 = [NSString stringWithFormat:@"%@%@", keywordCopy, @"_string"];
    [dataCopy setObject:extendedKeywordCopy forKeyedSubscript:keywordCopy];
    [dataCopy setObject:valueCopy forKeyedSubscript:extendedKeywordCopy];
    [dataCopy setObject:valueCopy forKeyedSubscript:v13];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = keywordCopy;
      v16 = 2112;
      v17 = extendedKeywordCopy;
      v18 = 2048;
      v19 = [valueCopy length];
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "build meta, keyword, %@, extendedKeyword, %@, value, %lu", buf, 0x20u);
    }
  }
}

+ (void)setMetaDataForTime:(id)time startDate:(id)date endDate:(id)endDate metaData:(id)data
{
  timeCopy = time;
  dateCopy = date;
  endDateCopy = endDate;
  dataCopy = data;
  timeZoneObject = [timeCopy timeZoneObject];
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v61 = timeZoneObject;
    v62 = 2112;
    v63 = dateCopy;
    v64 = 2112;
    v65 = endDateCopy;
    v66 = 2112;
    v67 = timeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, endDate, %@, time, %@", buf, 0x2Au);
  }

  if (endDateCopy)
  {
    if ([endDateCopy isBeforeDate:dateCopy])
    {
      snapToTheDay = endDateCopy;
    }

    else
    {
      snapToTheDay = [endDateCopy snapToTheDay];
      if (![snapToTheDay isAfterDate:dateCopy])
      {
        goto LABEL_14;
      }

      v16 = snapToTheDay;

      if (v16)
      {
        if (![v16 isBeforeDate:dateCopy])
        {
          endDateCopy = v16;
          goto LABEL_14;
        }

        v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v61 = dateCopy;
          v62 = 2112;
          v63 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after snapping.", buf, 0x16u);
        }
      }
    }

    endDateCopy = 0;
LABEL_14:
  }

  if (timeCopy)
  {
    timeString = [timeCopy timeString];

    if (timeString)
    {
      timeString2 = [timeCopy timeString];
      v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:timeString2];
      [dataCopy setObject:v20 forKeyedSubscript:@"time"];
    }
  }

  if (!dateCopy)
  {
    dateCopy = [timeCopy date];

    endDateCopy = 0;
  }

  if (!timeZoneObject)
  {
    v23 = endDateCopy;
    v21 = dateCopy;
LABEL_36:
    if (!v21)
    {
      v24 = 0;
      goto LABEL_68;
    }

    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (dateCopy)
  {
    v21 = [MOTime localTimeOfDate:dateCopy timeZone:timeZoneObject];
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v61 = timeZoneObject;
      v62 = 2112;
      v63 = dateCopy;
      v64 = 2112;
      v65 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, localDate, %@", buf, 0x20u);
    }

    if (!endDateCopy)
    {
      v23 = 0;
      v24 = 0;
      if (!v21)
      {
        goto LABEL_68;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v23 = 0;
    if (!endDateCopy)
    {
      goto LABEL_68;
    }
  }

  v23 = [MOTime localTimeOfDate:endDateCopy timeZone:timeZoneObject];
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v61 = timeZoneObject;
    v62 = 2112;
    v63 = endDateCopy;
    v64 = 2112;
    v65 = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "build meta, time zone, %@, endDate, %@, localDate, %@", buf, 0x20u);
  }

  if (!v21 || !v23)
  {
    goto LABEL_36;
  }

  if ([v23 isBeforeDate:v21])
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v61 = v21;
      v62 = 2112;
      v63 = v23;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after time zone shifting.", buf, 0x16u);
    }

LABEL_41:

    v23 = 0;
    goto LABEL_42;
  }

LABEL_38:
  if ([v23 isBeforeDate:v21])
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleMetaDataUtility setMetaDataForTime:startDate:endDate:metaData:];
    }

    goto LABEL_41;
  }

LABEL_42:
  v27 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v61 = timeZoneObject;
    v62 = 2112;
    v63 = v21;
    v64 = 2112;
    v65 = v23;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "build meta after timezone shift, time zone, %@, startDate, %@, endDate, %@", buf, 0x20u);
  }

  v28 = [MOTime dateReferenceTagFromStartDate:v21 endDate:v23];
  if (timeCopy)
  {
    [timeCopy setDateReferenceTag:v28];
  }

  if (v28 >= 2)
  {
    v29 = [MOTime timeStringFromTimeTag:v28];
    [dataCopy setObject:v29 forKeyedSubscript:@"date_referece_time_tag"];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x64)
  {
    v30 = [MOTime timeStringFromTimeTag:v28];
    v31 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v30];
    v32 = [NSString stringWithFormat:@"%@%@", @"date_reference_", v30];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference" extendedKeyword:v32 value:v31 metaData:dataCopy];
  }

  v33 = +[NSDate date];
  v34 = [v33 dateByAddingTimeInterval:-604800.0];

  v57 = v34;
  if ([v21 isAfterDate:v34])
  {
    [dataCopy setObject:&off_100368FB0 forKeyedSubscript:@"date_referece_recency"];
  }

  v59 = timeCopy;
  v55 = [MOTime typeOfDayTagFromStartDate:v21 endDate:v23 timeZone:0];
  if (v55 == 10001)
  {
    v35 = [MOTime timeStringFromTimeTag:10001];
    [dataCopy setObject:v35 forKeyedSubscript:@"typeOfDay"];
  }

  v58 = timeZoneObject;
  v36 = [MOTime dayOfWeekTagFromStartDate:v21 endDate:v23];
  v37 = v36 - 102;
  if (v36 - 102 <= 6)
  {
    v38 = [MOTime timeStringFromTimeTag:v36];
    v39 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v38];
    v40 = [NSString stringWithFormat:@"%@%@", @"date_reference_", v38];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday" extendedKeyword:v40 value:v39 metaData:dataCopy];
  }

  v56 = v36;
  v41 = dataCopy;
  v42 = [MOTime timetagFromStartDate:v21 endDate:v23];
  if (v42 - 2 <= 6)
  {
    v43 = [MOTime timeStringFromTimeTag:v42];
    v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
    [dataCopy setObject:v44 forKeyedSubscript:@"timeOfDay"];

    v45 = [dataCopy objectForKey:@"time"];

    if (!v45)
    {
      v46 = [v41 objectForKeyedSubscript:@"timeOfDay"];
      [v41 setObject:v46 forKeyedSubscript:@"time"];
    }

    if (v37 <= 6)
    {
      v47 = [MOTime timeStringFromTimeTag:v56];
      v48 = [MOTime timeStringFromTimeTag:v42];
      v49 = [NSString stringWithFormat:@"%@ %@", v47, v48];
      v50 = [NSString stringWithFormat:@"%@%@_%@", @"date_reference_", v47, v48];
      [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday_timeofday" extendedKeyword:v50 value:v49 metaData:v41];
    }
  }

  v51 = [MOTime localizedDateStringFromDate:v21];
  [v41 setObject:v51 forKeyedSubscript:@"date_string"];

  if (v23 && ([v23 isSameDayWithDate:v21] & 1) == 0)
  {
    v52 = [MOTime localizedDateStringFromDate:v23];
    [v41 setObject:v52 forKeyedSubscript:@"end_date_string"];
  }

  v53 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = [v41 objectForKeyedSubscript:@"date_string"];
    *buf = 138413826;
    v61 = v21;
    v62 = 2112;
    v63 = v23;
    v64 = 2048;
    v65 = v28;
    v66 = 2048;
    v67 = v55;
    v68 = 2048;
    v69 = v56;
    v70 = 2048;
    v71 = v42;
    v72 = 2112;
    v73 = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "build meta, startDate, %@, endDate, %@, dateTag, %lu, typeOfDay, %lu, dayOfWeek, %lu, timeOfDay, %lu, dateString, %@", buf, 0x48u);
  }

  v24 = v21;
  dataCopy = v41;
  timeZoneObject = v58;
  timeCopy = v59;
LABEL_68:
}

+ (void)setMetaDataForPlace:(id)place metaData:(id)data
{
  placeCopy = place;
  dataCopy = data;
  placeName = [placeCopy placeName];
  if (placeName)
  {
    v7 = placeName;
    placeType = [placeCopy placeType];

    if (placeType)
    {
      if ([placeCopy placeUserType] && (objc_msgSend(placeCopy, "placeUserType") == 1 || objc_msgSend(placeCopy, "placeUserType") == 2))
      {
        placeName2 = [placeCopy placeName];
        lowercaseString = [placeName2 lowercaseString];
        v11 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
        [dataCopy setObject:v11 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
        [dataCopy setObject:v13 forKeyedSubscript:@"Place"];
      }

      else
      {
        placeName4 = [placeCopy placeName];
        [dataCopy setObject:placeName4 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        [dataCopy setObject:placeName3 forKeyedSubscript:@"Place"];
      }

      enclosingArea = [placeCopy enclosingArea];

      if (enclosingArea)
      {
        if ([placeCopy placeType] != 101 && objc_msgSend(placeCopy, "placeType") != 102)
        {
          enclosingArea2 = [placeCopy enclosingArea];
          [dataCopy setObject:enclosingArea2 forKeyedSubscript:@"city"];

          placeName5 = [placeCopy placeName];
          enclosingArea3 = [placeCopy enclosingArea];
          v19 = [placeName5 containsString:enclosingArea3];

          if (v19)
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeType]);
      [dataCopy setObject:v20 forKeyedSubscript:@"place_type"];

      v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeUserType]);
      [dataCopy setObject:v21 forKeyedSubscript:@"place_user_type"];

      v22 = +[MOEventRoutine stringOfPlaceUserType:](MOEventRoutine, "stringOfPlaceUserType:", [placeCopy placeUserType]);
      v23 = v22;
      if (v22)
      {
        lowercaseString2 = [v22 lowercaseString];
        [dataCopy setObject:lowercaseString2 forKeyedSubscript:@"place_user_type_tag"];
      }

      if ([placeCopy proposition] == 4)
      {
        v25 = [dataCopy objectForKeyedSubscript:@"flight"];
        v26 = [v25 isEqual:@"flight"];

        if ((v26 & 1) == 0)
        {
          [dataCopy setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }

      if ([placeCopy locationMode] == 2)
      {
        [dataCopy setObject:&off_100368FB0 forKeyedSubscript:@"trip"];
      }

      if ([placeCopy placeType] == 3 && (objc_msgSend(placeCopy, "placeNameConfidence"), v27 >= 0.9) || objc_msgSend(placeCopy, "placeType") == 2 && (objc_msgSend(placeCopy, "placeNameConfidence"), v28 >= 0.9) || objc_msgSend(placeCopy, "placeUserType") && objc_msgSend(placeCopy, "placeUserType") < 0x64)
      {
        v29 = @"high";
      }

      else if ([placeCopy placeType] == 3 && (objc_msgSend(placeCopy, "placeNameConfidence"), v30 >= 0.75) || objc_msgSend(placeCopy, "placeType") == 2 && (objc_msgSend(placeCopy, "placeNameConfidence"), v31 >= 0.5))
      {
        v29 = @"medium";
      }

      else
      {
        v29 = @"low";
      }

      [dataCopy setObject:v29 forKeyedSubscript:@"confidence"];
    }
  }
}

+ (void)setMetaDataForActivityPlace:(id)place metaData:(id)data
{
  placeCopy = place;
  dataCopy = data;
  placeName = [placeCopy placeName];
  if (placeName && [placeCopy placeType])
  {
    placeUserType = [placeCopy placeUserType];

    if (placeUserType != 2)
    {
      if ([placeCopy placeUserType] && objc_msgSend(placeCopy, "placeUserType") == 1)
      {
        placeName2 = [placeCopy placeName];
        lowercaseString = [placeName2 lowercaseString];
        v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
        [dataCopy setObject:v10 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        v12 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
        [dataCopy setObject:v12 forKeyedSubscript:@"Place"];
      }

      else
      {
        placeName4 = [placeCopy placeName];
        [dataCopy setObject:placeName4 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        [dataCopy setObject:placeName3 forKeyedSubscript:@"Place"];
      }

      enclosingArea = [placeCopy enclosingArea];

      if (enclosingArea)
      {
        if ([placeCopy placeType] != 101 && objc_msgSend(placeCopy, "placeType") != 102)
        {
          enclosingArea2 = [placeCopy enclosingArea];
          [dataCopy setObject:enclosingArea2 forKeyedSubscript:@"city"];

          placeName5 = [placeCopy placeName];
          enclosingArea3 = [placeCopy enclosingArea];
          v18 = [placeName5 containsString:enclosingArea3];

          if (v18)
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeType]);
      [dataCopy setObject:v19 forKeyedSubscript:@"place_type"];

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeUserType]);
      [dataCopy setObject:v20 forKeyedSubscript:@"place_user_type"];

      if ([placeCopy proposition] == 4)
      {
        v21 = [dataCopy objectForKeyedSubscript:@"flight"];
        v22 = [v21 isEqual:@"flight"];

        if ((v22 & 1) == 0)
        {
          [dataCopy setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }
    }
  }

  else
  {
  }
}

+ (void)setMetaDataForPersons:(id)persons suggestionId:(id)id metaData:(id)data sortBycomparePersons:(BOOL)bycomparePersons
{
  bycomparePersonsCopy = bycomparePersons;
  personsCopy = persons;
  idCopy = id;
  dataCopy = data;
  if (personsCopy && [personsCopy count])
  {
    v59 = personsCopy;
    v60 = idCopy;
    if (bycomparePersonsCopy)
    {
      v58 = [NSSet setWithArray:personsCopy];
      allObjects = [v58 allObjects];
      v11 = [allObjects sortedArrayUsingSelector:"comparePersons:"];
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[setMetaDataForPersons] After Sorting setMetaDataForPersons", buf, 2u);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v72;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v72 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v71 + 1) + 8 * i);
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v78 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, " Person %@", buf, 0xCu);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v15);
      }

      v62 = [NSPredicate predicateWithFormat:@"isMePerson == NO"];
      v20 = [v13 filteredArrayUsingPredicate:?];
      v56 = [NSPredicate predicateWithFormat:@"isMePerson == YES"];
      v21 = [v13 filteredArrayUsingPredicate:?];
      if ([v21 count])
      {
        firstObject = [v21 firstObject];
        name = [firstObject name];
        [dataCopy setObject:name forKeyedSubscript:@"me_person"];

        firstObject2 = [v21 firstObject];
        LODWORD(name) = [firstObject2 mePersonIdentified];

        if (name)
        {
          [dataCopy setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
        }

        if ([v21 count] >= 2)
        {
          v25 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [MOEventBundleMetaDataUtility setMetaDataForPersons:v21 suggestionId:v25 metaData:? sortBycomparePersons:?];
          }
        }
      }

      v55 = v21;
      v54 = [NSPredicate predicateWithFormat:@"isPHPersonTypeImportant == YES"];
      v53 = [v20 filteredArrayUsingPredicate:?];
      v26 = [v53 mutableCopy];
      v27 = [v60 hash];
      [v26 shuffleWithSeed:v27];
      v28 = [NSPredicate predicateWithFormat:@"isPHPersonTypeImportant == NO"];
      v29 = v20;
      v30 = [v20 filteredArrayUsingPredicate:v28];
      v31 = [v30 mutableCopy];
      [v31 shuffleWithSeed:v27];
      v32 = [v26 arrayByAddingObjectsFromArray:v31];
      v33 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
      v34 = allObjects;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "all shuffed persons by importance except me Person", buf, 2u);
      }

      v35 = v58;
    }

    else
    {
      v35 = [NSPredicate predicateWithFormat:@"isMePerson == NO"];
      v32 = [personsCopy filteredArrayUsingPredicate:v35];
      v34 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[setMetaDataForPersons] Using input sorting order after filtering me person", buf, 2u);
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v36 = v32;
    v37 = [v36 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v68;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v68 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v67 + 1) + 8 * j);
          v42 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v78 = v41;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, " Person %@", buf, 0xCu);
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v38);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = v36;
    v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v44)
    {
      v45 = v44;
      LODWORD(v46) = 0;
      v47 = *v64;
      while (2)
      {
        v48 = 0;
        v46 = v46;
        v49 = (v46 + 1);
        do
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v43);
          }

          if (++v46 > 3)
          {
            [dataCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_more_than_three_persons"];
            goto LABEL_48;
          }

          v50 = *(*(&v63 + 1) + 8 * v48);
          if ([v50 mePersonIdentified])
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
          }

          v51 = [NSString stringWithFormat:@"%@%d", @"person_", v49];
          name2 = [v50 name];
          [dataCopy setObject:name2 forKeyedSubscript:v51];

          v48 = v48 + 1;
          v49 = (v49 + 1);
        }

        while (v45 != v48);
        v45 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_48:

    personsCopy = v59;
    idCopy = v60;
  }
}

+ (void)setMetaDataForPlaces:(id)places metaData:(id)data
{
  placesCopy = places;
  dataCopy = data;
  if (!placesCopy || ![placesCopy count])
  {
    v53 = 0;
    v65 = 0;
    v54 = 0;
    goto LABEL_54;
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v60 = placesCopy;
  obj = placesCopy;
  v68 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (!v68)
  {
    v62 = 0;
    v65 = 0;
    v61 = 0;
    goto LABEL_53;
  }

  v62 = 0;
  v65 = 0;
  v61 = 0;
  v67 = *v72;
  v9 = 1;
  v63 = v7;
  do
  {
    for (i = 0; i != v68; i = i + 1)
    {
      if (*v72 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v71 + 1) + 8 * i);
      v70 = [NSString stringWithFormat:@"%@%d", @"place_", v9];
      v12 = [NSString stringWithFormat:@"%@%d", @"Place_", v9];
      placeName = [v11 placeName];

      v69 = v12;
      if (placeName)
      {
        if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
        {
          placeName2 = [v11 placeName];
          lowercaseString = [placeName2 lowercaseString];
          v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
          [dataCopy setObject:v16 forKeyedSubscript:v70];

          v7 = v63;
          placeName3 = [v11 placeName];
          v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
          [dataCopy setObject:v18 forKeyedSubscript:v12];
        }

        else
        {
          placeName4 = [v11 placeName];
          [dataCopy setObject:placeName4 forKeyedSubscript:v70];

          placeName3 = [v11 placeName];
          [dataCopy setObject:placeName3 forKeyedSubscript:v12];
        }
      }

      enclosingArea = [v11 enclosingArea];

      if (enclosingArea && [v11 placeType] != 101 && objc_msgSend(v11, "placeType") != 102)
      {
        v21 = [NSString stringWithFormat:@"%@_%d", @"city", v9];
        enclosingArea2 = [v11 enclosingArea];
        [dataCopy setObject:enclosingArea2 forKeyedSubscript:v21];

        enclosingArea3 = [v11 enclosingArea];
        v24 = [v8 containsObject:enclosingArea3];

        if ((v24 & 1) == 0)
        {
          ++v62;
          enclosingArea4 = [v11 enclosingArea];
          [v8 addObject:enclosingArea4];

          v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_city_", [v8 count]);
          enclosingArea5 = [v11 enclosingArea];
          [dataCopy setObject:enclosingArea5 forKeyedSubscript:v26];
        }

        v7 = v63;
      }

      if ([v11 proposition] == 4)
      {
        v28 = [dataCopy objectForKeyedSubscript:@"flight"];
        v29 = [v28 isEqual:@"flight"];

        if ((v29 & 1) == 0 && v9 == 1)
        {
          [dataCopy setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }

      placeName5 = [v11 placeName];
      if (!placeName5)
      {
        goto LABEL_27;
      }

      v31 = placeName5;
      v32 = v8;
      placeName6 = [v11 placeName];
      v34 = v7;
      v35 = [v7 containsObject:placeName6];

      if (v35)
      {
        v7 = v34;
        v8 = v32;
LABEL_27:
        v36 = v69;
        goto LABEL_48;
      }

      placeName7 = [v11 placeName];
      [v34 addObject:placeName7];

      v66 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_place_", [v34 count]);
      v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"Unique_place_", [v34 count]);
      v7 = v34;
      if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
      {
        placeName8 = [v11 placeName];
        [placeName8 lowercaseString];
        v41 = v40 = dataCopy;
        v42 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v41];
        [v40 setObject:v42 forKeyedSubscript:v66];

        dataCopy = v40;
        v7 = v63;

        placeName9 = [v11 placeName];
        v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName9];
        [dataCopy setObject:v44 forKeyedSubscript:v38];
      }

      else
      {
        placeName10 = [v11 placeName];
        [dataCopy setObject:placeName10 forKeyedSubscript:v66];

        placeName9 = [v11 placeName];
        [dataCopy setObject:placeName9 forKeyedSubscript:v38];
      }

      v8 = v32;
      if ([v11 proposition] == 4)
      {
        v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"vicinity_", [v7 count]);
        [dataCopy setObject:&off_100368FB0 forKeyedSubscript:v46];
      }

      v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"confidence_", [v7 count]);
      v36 = v69;
      if ([v11 placeType] == 3 && (objc_msgSend(v11, "placeNameConfidence"), v48 >= 0.9) || objc_msgSend(v11, "placeType") == 2 && (objc_msgSend(v11, "placeNameConfidence"), v49 >= 0.9) || objc_msgSend(v11, "placeUserType") && objc_msgSend(v11, "placeUserType") < 0x64)
      {
        v50 = @"high";
      }

      else if ([v11 placeType] == 3 && (objc_msgSend(v11, "placeNameConfidence"), v51 >= 0.75) || objc_msgSend(v11, "placeType") == 2 && (objc_msgSend(v11, "placeNameConfidence"), v52 >= 0.5))
      {
        v50 = @"medium";
      }

      else
      {
        v61 = 1;
        v50 = @"low";
      }

      ++v65;
      [dataCopy setObject:v50 forKeyedSubscript:v47];

LABEL_48:
      v9 = (v9 + 1);
    }

    v68 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  }

  while (v68);
LABEL_53:

  placesCopy = v60;
  v53 = v62;
  v54 = v61;
LABEL_54:
  v55 = [NSNumber numberWithBool:v54 & 1];
  [dataCopy setObject:v55 forKeyedSubscript:@"include_low_confidence_place_name"];

  v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placesCopy count]);
  [dataCopy setObject:v56 forKeyedSubscript:@"place_count"];

  v57 = [NSNumber numberWithInt:v65];
  [dataCopy setObject:v57 forKeyedSubscript:@"unique_place_count"];

  v58 = [NSNumber numberWithInt:v53];
  [dataCopy setObject:v58 forKeyedSubscript:@"unique_city_count"];

  if ([placesCopy count] >= 2)
  {
    v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placesCopy count] - 1);
    [dataCopy setObject:v59 forKeyedSubscript:@"place_count_minus_one"];
  }
}

+ (void)setMetaDataForPhotos:(id)photos metaData:(id)data
{
  photosCopy = photos;
  dataCopy = data;
  if (photosCopy && [photosCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = photosCopy;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v12 + 1) + 8 * i) type] == 2)
          {
            [dataCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"photo_attached"];
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

+ (id)andStringFromArray:(id)array propertyPath:(id)path maxCount:(unint64_t)count
{
  arrayCopy = array;
  pathCopy = path;
  v9 = [arrayCopy count];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = [arrayCopy objectAtIndex:v12];
    v14 = [v13 valueForKeyPath:pathCopy];
    v15 = v14;
    if (!v11)
    {
      v11 = [NSMutableString stringWithString:v14];
      goto LABEL_9;
    }

    if (v10 != 1)
    {
      break;
    }

    [v11 appendFormat:@" and %@", v14];
LABEL_9:

    ++v12;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  if (v12 < count - 1)
  {
    [v11 appendFormat:@", %@", v14];
    goto LABEL_9;
  }

  [v11 appendFormat:@", %@ and more", v14];

LABEL_13:
  v16 = [v11 copy];

  return v16;
}

+ (void)setMetaDataForHoliday:(id)holiday metaData:(id)data eventBundle:(id)bundle
{
  holidayCopy = holiday;
  dataCopy = data;
  bundleCopy = bundle;
  rankingDictionary = [bundleCopy rankingDictionary];
  v10 = [rankingDictionary objectForKeyedSubscript:@"useHolidayLabel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    bundleSubType = [bundleCopy bundleSubType];
    v13 = bundleSubType == 204;
    if ([bundleCopy bundleSubType] == 201)
    {
      action = [bundleCopy action];
      actionName = [action actionName];
      v16 = [HKWorkout _workoutActivityTypeFromString:actionName];

      v13 = v16 == 52 || bundleSubType == 204;
    }

    v18 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:holidayCopy];
    v19 = v18;
    if (v18 && !v13)
    {
      name = [v18 name];
      [dataCopy setObject:name forKeyedSubscript:@"holiday_name"];
    }

    if (v19)
    {
      if (v13)
      {
        holidayIdentifier = [v19 holidayIdentifier];
        v22 = [holidayIdentifier isEqualToString:@"Halloween"];

        if (v22)
        {
          name2 = [v19 name];
          [dataCopy setObject:name2 forKeyedSubscript:@"holiday_name"];
        }
      }
    }
  }
}

+ (void)setMetaDataForBirthday:(id)birthday metaData:(id)data eventBundle:(id)bundle
{
  birthdayCopy = birthday;
  dataCopy = data;
  bundleCopy = bundle;
  rankingDictionary = [bundleCopy rankingDictionary];
  v10 = [rankingDictionary objectForKeyedSubscript:@"useBirthdayLabel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:birthdayCopy];
    if (v12)
    {
      v13 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v12 eventBundle:bundleCopy];
      v14 = v13;
      if (v13)
      {
        name = [v13 name];
        v16 = [name copy];
        [dataCopy setObject:v16 forKeyedSubscript:@"birthday_person_name"];
      }
    }
  }
}

+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"Home"])
  {
    v4 = @"home";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"Work"])
  {
    v4 = @"work";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"School"])
  {
    v4 = @"school";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"Gym"])
  {
    v4 = @"gym";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryAmusementPark])
  {
    v4 = @"amusement parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryAquarium])
  {
    v4 = @"aquariums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBakery])
  {
    v4 = @"bakeries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBaseball])
  {
    v4 = @"baseball fields";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBasketball])
  {
    v4 = @"basketball courts";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBeach])
  {
    v4 = @"beaches";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBeauty])
  {
    v4 = @"beauty stores";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBowling])
  {
    v4 = @"bowling alleys";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryBrewery])
  {
    v4 = @"breweries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryCafe])
  {
    v4 = @"cafes";
    goto LABEL_85;
  }

  v5 = GEOPOICategoryCampground;
  if ([summaryCopy isEqualToString:GEOPOICategoryCampground])
  {
LABEL_30:
    v4 = @"campgrounds";
    goto LABEL_85;
  }

  v6 = GEOPOICategoryCastle;
  if ([summaryCopy isEqualToString:GEOPOICategoryCastle])
  {
LABEL_32:
    v4 = @"castles";
    goto LABEL_85;
  }

  v7 = GEOPOICategoryConventionCenter;
  if ([summaryCopy isEqualToString:GEOPOICategoryConventionCenter])
  {
LABEL_34:
    v4 = @"convention centers";
    goto LABEL_85;
  }

  v8 = GEOPOICategoryFairground;
  if ([summaryCopy isEqualToString:GEOPOICategoryFairground])
  {
    goto LABEL_36;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryFitnessCenter])
  {
    v4 = @"fitness centers";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryFishing])
  {
    v4 = @"fishing spots";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryFoodMarket])
  {
    v4 = @"food markets";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryGolf])
  {
    v4 = @"golf courses";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryGoKart])
  {
    v4 = @"go kart";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryHiking])
  {
    v4 = @"hiking trails";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryHotel])
  {
    v4 = @"hotels";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryKayaking])
  {
    v4 = @"kayaking";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryLibrary])
  {
    v4 = @"libraries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryMarina])
  {
    v4 = @"marinas";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryMiniGolf])
  {
    v4 = @"mini golf";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryMovieTheater])
  {
    v4 = @"movie theaters";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryMuseum])
  {
    v4 = @"museums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryMusicVenue])
  {
    v4 = @"music venues";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryNationalPark])
  {
    v4 = @"national parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryNightlife])
  {
    v4 = @"nightlife";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryPark])
  {
    v4 = @"parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryPlayground])
  {
    v4 = @"playgrounds";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryRestaurant])
  {
    v4 = @"restaurants";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryRockClimbing])
  {
    v4 = @"rock climbing";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryStadium])
  {
    v4 = @"stadiums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryTheater])
  {
    v4 = @"theaters";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryWinery])
  {
    v4 = @"wineries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryZoo])
  {
    v4 = @"zoos";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:v5])
  {
    goto LABEL_30;
  }

  if ([summaryCopy isEqualToString:v6])
  {
    goto LABEL_32;
  }

  if ([summaryCopy isEqualToString:v7])
  {
    goto LABEL_34;
  }

  if ([summaryCopy isEqualToString:v8])
  {
LABEL_36:
    v4 = @"fairgrounds";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:GEOPOICategoryFortress])
  {
    v4 = @"fortresses";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryLandmark])
  {
    v4 = @"landmarks";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryNationalMonument])
  {
    v4 = @"national monuments";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryPlanetarium])
  {
    v4 = @"planetariums";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryRVPark])
  {
    v4 = @"RV parks";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySkatePark])
  {
    v4 = @"skate parks";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySchool])
  {
    v4 = @"schools";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySkating])
  {
    v4 = @"skating";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySkiing])
  {
    v4 = @"ski resorts";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySoccer])
  {
    v4 = @"soccer fields";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySpa])
  {
    v4 = @"spas";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryStore])
  {
    v4 = @"stores";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySurfing])
  {
    v4 = @"surfing spots";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategorySwimming])
  {
    v4 = @"swimming pools";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryTennis])
  {
    v4 = @"tennis courts";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryUniversity])
  {
    v4 = @"universities";
  }

  else if ([summaryCopy isEqualToString:GEOPOICategoryVolleyball])
  {
    v4 = @"volleyball courts";
  }

  else
  {
    v4 = 0;
  }

LABEL_85:

  return v4;
}

+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"amusementpark"])
  {
    v4 = @"amusement park";
  }

  else
  {
    v4 = summaryCopy;
  }

  return v4;
}

+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)summary AtHome:(BOOL)home
{
  homeCopy = home;
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"eating"])
  {
    if (homeCopy)
    {
      v6 = @"dining";
    }

    else
    {
      v6 = @"eating out";
    }
  }

  else
  {
    v6 = summaryCopy;
  }

  return v6;
}

+ (void)setMetaDataForInvite:(id)invite metaData:(id)data
{
  dataCopy = data;
  inviteCopy = invite;
  v6 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
  resources = [inviteCopy resources];

  v8 = [resources filteredArrayUsingPredicate:v6];

  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    name = [firstObject name];
    v11 = [name length];

    if (v11)
    {
      name2 = [firstObject name];
      v13 = [name2 copy];
      [dataCopy setObject:v13 forKeyedSubscript:@"invite_title"];
    }
  }
}

+ (void)buildEvergreenMetaDataForEventBundle:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)buildEvergreenMetaDataForEventBundle:(void *)a1 .cold.3(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)setMetaDataForTime:startDate:endDate:metaData:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted at the end", v2, 0x16u);
}

+ (void)setMetaDataForPersons:(uint64_t)a1 suggestionId:(NSObject *)a2 metaData:sortBycomparePersons:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "More than one person found : %@", &v2, 0xCu);
}

@end