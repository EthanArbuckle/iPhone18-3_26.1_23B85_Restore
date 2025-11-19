@interface MOEventBundleMetaDataUtility
+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)a3 AtHome:(BOOL)a4;
+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5;
+ (id)buildActivityMetaDataForEventBundle:(id)a3;
+ (id)buildClusteringMetaDataForEventBundle:(id)a3;
+ (id)buildEvergreenMetaDataForEventBundle:(id)a3;
+ (id)buildMediaPlayMetaDataForEventBundle:(id)a3;
+ (id)buildMetaDataForEventBundle:(id)a3;
+ (id)buildOutingMetaDataForEventBundle:(id)a3;
+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)a3;
+ (id)buildSharedContentMetaDataForEventBundle:(id)a3;
+ (id)buildSignificantContactMetaDataForEventBundle:(id)a3;
+ (id)buildStateOfMindMetaDataForEventBundle:(id)a3;
+ (id)buildThematicSummaryMetaDataForEventBundle:(id)a3;
+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)a3;
+ (id)buildTimeContextMetaDataForEventBundle:(id)a3;
+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)a3;
+ (id)buildTrendMetaDataForEventBundle:(id)a3;
+ (id)buildTripMetaDataForEventBundle:(id)a3;
+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)a3;
+ (id)mediaKeywordWithType:(unint64_t)a3;
+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)a3;
+ (void)appendDefaultMetaData:(id)a3;
+ (void)defineClassCollections;
+ (void)setActivityNameForThematicSummaryFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6;
+ (void)setActivityNameFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6;
+ (void)setMetaDataForAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActions:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityConcurrentMediaAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityPlace:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForBirthday:(id)a3 metaData:(id)a4 eventBundle:(id)a5;
+ (void)setMetaDataForDiningAction:(id)a3 metaData:(id)a4 startDate:(id)a5 endDate:(id)a6;
+ (void)setMetaDataForHoliday:(id)a3 metaData:(id)a4 eventBundle:(id)a5;
+ (void)setMetaDataForInvite:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForMediaAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPersons:(id)a3 suggestionId:(id)a4 metaData:(id)a5 sortBycomparePersons:(BOOL)a6;
+ (void)setMetaDataForPhotos:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPlace:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPlaces:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForTime:(id)a3 startDate:(id)a4 endDate:(id)a5 metaData:(id)a6;
+ (void)setMetaDataWithKeyword:(id)a3 extendedKeyword:(id)a4 value:(id)a5 metaData:(id)a6;
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

+ (id)buildMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = 0;
  switch([v3 interfaceType])
  {
    case 1uLL:
      v5 = [MOEventBundleMetaDataUtility buildActivityMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 2uLL:
      v5 = [MOEventBundleMetaDataUtility buildOutingMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 4uLL:
      v5 = [MOEventBundleMetaDataUtility buildSignificantContactMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 5uLL:
      v5 = [MOEventBundleMetaDataUtility buildMediaPlayMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 6uLL:
      v5 = [MOEventBundleMetaDataUtility buildSharedContentMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 7uLL:
      v5 = [MOEventBundleMetaDataUtility buildTimeAtHomeMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 9uLL:
      v5 = [MOEventBundleMetaDataUtility buildTrendMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0xAuLL:
      v5 = [MOEventBundleMetaDataUtility buildPhotoMemoryMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0xBuLL:
      v5 = [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0xCuLL:
      if ([v3 bundleSubType] == 205 || objc_msgSend(v3, "bundleSubType") == 206)
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextTransitMetaDataForEventBundle:v3];
      }

      else
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextMetaDataForEventBundle:v3];
      }

      goto LABEL_18;
    case 0xDuLL:
      v5 = [MOEventBundleMetaDataUtility buildTripMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0xEuLL:
      v5 = [MOEventBundleMetaDataUtility buildStateOfMindMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0xFuLL:
      v5 = [MOEventBundleMetaDataUtility buildClusteringMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 0x10uLL:
      v5 = [MOEventBundleMetaDataUtility buildThematicSummaryMetaDataForEventBundle:v3];
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

+ (void)appendDefaultMetaData:(id)a3
{
  v4 = a3;
  v3 = +[MOEventBundleLabelLocalizer preferredLocalization];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:@"language"];
  }
}

+ (id)buildActivityMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];

  if (v5)
  {
    v6 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v6 metaData:v4];
  }

  v7 = [v3 concurrentMediaAction];

  if (v7)
  {
    v8 = [v3 concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:v8 metaData:v4];
  }

  v9 = [v3 places];
  if (v9)
  {
    v10 = v9;
    if ([v3 bundleSubType] == 204 || objc_msgSend(v3, "bundleSubType") == 207)
    {

LABEL_9:
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v3 places];
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            v17 = [v16 placeName];

            if (v17)
            {
              [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v16 metaData:v4];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v13);
      }

      goto LABEL_22;
    }

    v18 = [v3 bundleSubType];

    if (v18 == 208)
    {
      goto LABEL_9;
    }
  }

  v19 = [v3 place];

  if (v19)
  {
    v20 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v20 metaData:v4];
  }

LABEL_22:
  v21 = [v3 time];

  if (v21)
  {
    v22 = [v3 time];
    v23 = [v3 startDate];
    v24 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v22 startDate:v23 endDate:v24 metaData:v4];
  }

  v25 = [v3 persons];

  if (v25)
  {
    v26 = [v3 persons];
    v27 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v26 suggestionId:v27 metaData:v4];
  }

  v28 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v28 metaData:v4 eventBundle:v3];

  return v4;
}

+ (id)buildOutingMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 actions];
  if (v5)
  {
    v6 = [v3 actions];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [NSPredicate predicateWithFormat:@"%K = %lu", @"actionType", 2];
      v9 = [v3 actions];
      v10 = [v9 filteredArrayUsingPredicate:v8];

      if ([v10 count])
      {
        v11 = [v10 firstObject];
        v5 = [v11 actionName];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v12 = [v3 action];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 action];
    if ([v14 actionType] == 9)
    {
    }

    else
    {
      v15 = [v3 action];
      v16 = [v15 actionType];

      if (v16 != 10)
      {
        goto LABEL_13;
      }
    }

    v17 = [v3 action];
    v18 = [v17 actionName];

    v5 = v18;
  }

LABEL_13:
  if (v5)
  {
    v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v5];
    [v4 setObject:v19 forKeyedSubscript:@"action"];

    v20 = [objc_opt_class() keywordFromString:v5];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];
  }

  v21 = [v3 action];
  if (v21)
  {
    v22 = v21;
    v23 = [v3 action];
    v24 = [v23 actionType];

    if (v24 == 11)
    {
      [v4 setObject:@"flight" forKeyedSubscript:@"flight"];
    }
  }

  if ([v3 isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  v25 = [v3 action];
  v26 = [v3 startDate];
  v27 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForDiningAction:v25 metaData:v4 startDate:v26 endDate:v27];

  v28 = [v3 place];
  [MOEventBundleMetaDataUtility setMetaDataForPlace:v28 metaData:v4];

  v29 = [v3 persons];
  v30 = [v3 suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:v29 suggestionId:v30 metaData:v4];

  v31 = [v3 time];
  v32 = [v3 startDate];
  v33 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v31 startDate:v32 endDate:v33 metaData:v4];

  v34 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v34 metaData:v4 eventBundle:v3];

  v35 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:v35 metaData:v4 eventBundle:v3];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:v3 metaData:v4];

  return v4;
}

+ (id)buildSharedContentMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [NSMutableDictionary alloc];
  v10 = @"default_label";
  v5 = [v3 action];

  v6 = [v5 actionName];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v4 initWithDictionary:v7];

  return v8;
}

+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionName];
  [v4 setObject:v6 forKeyedSubscript:@"default_label"];

  v7 = [v3 action];
  v8 = [v7 actionName];
  v9 = [v8 isEqualToString:@"Hosting at Home"];

  if (v9)
  {
    v10 = &off_100368FB0;
  }

  else
  {
    v10 = &off_100368FC8;
  }

  [v4 setObject:v10 forKeyedSubscript:@"home_activity"];
  v11 = [v3 persons];

  if (v11)
  {
    v12 = [v3 persons];
    v13 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v12 suggestionId:v13 metaData:v4];
  }

  v14 = [v3 resources];
  [MOEventBundleMetaDataUtility setMetaDataForPhotos:v14 metaData:v4];

  v15 = [v3 time];
  v16 = [v3 startDate];
  v17 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v15 startDate:v16 endDate:v17 metaData:v4];

  v18 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v18 metaData:v4 eventBundle:v3];

  v19 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:v19 metaData:v4 eventBundle:v3];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:v3 metaData:v4];

  return v4;
}

+ (id)buildSignificantContactMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 persons];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 summarizationGranularity];

      if (v8 != 2)
      {
        v9 = objc_opt_new();
        v10 = [v3 action];
        v11 = [v3 persons];
        v12 = [v11 firstObject];
        v13 = [v12 name];

        v14 = [v10 actionName];
        v15 = v14;
        if (v13)
        {
          v16 = [v14 stringByAppendingString:v13];

          v15 = v16;
        }

        [v9 setObject:v15 forKeyedSubscript:@"default_label"];
        v17 = [v10 actionName];
        v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17];
        [v9 setObject:v18 forKeyedSubscript:@"header"];

        [v9 setObject:v13 forKeyedSubscript:@"title"];
        v19 = [v10 actionName];
        v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v19];
        [v9 setObject:v20 forKeyedSubscript:@"action"];

        v21 = objc_opt_class();
        v22 = [v10 actionName];
        v23 = [v21 keywordFromString:v22];
        [v9 setObject:v23 forKeyedSubscript:@"action_type"];

        v24 = [v3 persons];
        v25 = [v3 suggestionID];
        [MOEventBundleMetaDataUtility setMetaDataForPersons:v24 suggestionId:v25 metaData:v9];

        v26 = [v3 time];
        v27 = [v3 startDate];
        v28 = [v3 endDate];
        [MOEventBundleMetaDataUtility setMetaDataForTime:v26 startDate:v27 endDate:v28 metaData:v9];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([v3 summarizationGranularity] != 2 || (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) != 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = objc_opt_new();
  [v9 setObject:@"contact_summary" forKeyedSubscript:@"summary_type"];
  v29 = [v3 persons];
  v30 = [v3 suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:v29 suggestionId:v30 metaData:v9];

  v10 = [v3 time];
  v13 = [v3 startDate];
  v15 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v10 startDate:v13 endDate:v15 metaData:v9];
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)buildMediaPlayMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 resources];
  if (!v6)
  {

    goto LABEL_19;
  }

  v7 = v6;
  v8 = [v3 summarizationGranularity];

  if (v8 == 2)
  {
LABEL_19:
    if ([v3 summarizationGranularity] != 2 || (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) != 0)
    {
      v9 = 0;
      goto LABEL_35;
    }

    v37 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    v49 = [v3 resources];
    v10 = [v49 firstObject];

    [v9 setObject:@"media_summary" forKeyedSubscript:@"summary_type"];
    v50 = [v3 resources];
    v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v50 count]);
    [v9 setObject:v51 forKeyedSubscript:@"media_event_count"];

    v52 = [v3 resources];
    v53 = [v52 firstObject];
    v54 = [v53 getDictionary];
    v12 = [v54 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

    if (([v12 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || (objc_msgSend(v12, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]) & 1) != 0 || objc_msgSend(v12, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]))
    {
      v55 = [v3 events];
      v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v55 count]);
      [v9 setObject:v56 forKeyedSubscript:@"media_event_count"];
    }

    v57 = [v3 resources];
    v58 = [v57 firstObject];
    v59 = [v58 getDictionary];
    v60 = [v59 objectForKeyedSubscript:@"media_type"];
    [v9 setObject:v60 forKeyedSubscript:@"media_type"];

    v61 = [v3 action];
    v62 = [v61 actionName];
    if (([v62 isEqualToString:@"songs_on_repeat"] & 1) == 0)
    {
      v63 = [v3 action];
      v64 = [v63 actionName];
      if (([v64 isEqualToString:@"song_on_repeat"] & 1) == 0)
      {
        v73 = [v3 action];
        [v73 actionName];
        v82 = v12;
        v75 = v74 = v37;
        v80 = [v75 isEqualToString:@"media_on_repeat"];

        v37 = v74;
        v12 = v82;

        if ((v80 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    v65 = [v3 action];
    v66 = [v65 actionName];
    [v9 setObject:v66 forKeyedSubscript:@"media_on_repeat"];

LABEL_31:
    v67 = [v3 action];
    v68 = [v67 actionName];
    v69 = [v68 isEqualToString:@"media_on_repeat_third_party"];

    if (v69)
    {
      v70 = [v3 action];
      v71 = [v70 actionName];
      [v9 setObject:v71 forKeyedSubscript:@"media_on_repeat_third_party"];
    }

    v48 = [v10 getDictionary];
    v16 = [v48 objectForKeyedSubscript:@"third_party_dominate_value"];
    [v9 setObject:v16 forKeyedSubscript:@"third_party_dominate_value"];
    goto LABEL_34;
  }

  v78 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [v3 action];
  v11 = [v3 resources];
  v12 = [v11 firstObject];

  v13 = [v12 getDictionary];
  v81 = [v13 objectForKeyedSubscript:@"media_album"];

  v14 = [v10 actionName];
  v15 = [v12 name];
  v16 = [NSString stringWithFormat:@"%@: %@", v14, v15];

  [v9 setObject:v16 forKeyedSubscript:@"default_label"];
  v17 = [v10 actionName];
  v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17];
  [v9 setObject:v18 forKeyedSubscript:@"header"];

  v19 = [v12 name];
  v20 = [NSString stringWithFormat:@"%@", v19];
  [v9 setObject:v20 forKeyedSubscript:@"title"];

  v21 = [v3 resources];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
  [v9 setObject:v22 forKeyedSubscript:@"media_event_count"];

  v23 = [v12 getDictionary];
  v24 = [v23 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

  v79 = v24;
  if (([v24 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || (objc_msgSend(v24, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]) & 1) != 0 || objc_msgSend(v24, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]))
  {
    v25 = [v3 events];
    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 count]);
    [v9 setObject:v26 forKeyedSubscript:@"media_event_count"];
  }

  v27 = [v12 getDictionary];
  v28 = [v27 objectForKeyedSubscript:@"media_type"];
  [v9 setObject:v28 forKeyedSubscript:@"media_type"];

  [v9 setObject:v81 forKeyedSubscript:@"media_album"];
  v29 = [v3 time];
  v30 = [v3 startDate];
  v31 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v29 startDate:v30 endDate:v31 metaData:v9];

  v32 = [v10 actionName];
  if (([v32 isEqualToString:@"songs_on_repeat"] & 1) == 0)
  {
    v33 = [v10 actionName];
    if (![v33 isEqualToString:@"song_on_repeat"])
    {
      v76 = [v10 actionName];
      v77 = [v76 isEqualToString:@"media_on_repeat"];

      if ((v77 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v34 = [v10 actionName];
  [v9 setObject:v34 forKeyedSubscript:@"media_on_repeat"];

LABEL_13:
  v35 = [v10 actionName];
  v36 = [v35 isEqualToString:@"media_on_repeat_third_party"];

  v37 = v78;
  if (v36)
  {
    v38 = [v10 actionName];
    [v9 setObject:v38 forKeyedSubscript:@"media_on_repeat_third_party"];
  }

  v39 = [v10 actionName];
  v40 = [v39 isEqualToString:@"played_media_sessions"];

  if (v40)
  {
    v41 = [v10 actionName];
    [v9 setObject:v41 forKeyedSubscript:@"played_media_sessions"];
  }

  v42 = [v10 actionName];
  [v9 setObject:v42 forKeyedSubscript:@"action"];

  v43 = objc_opt_class();
  v44 = [v10 actionName];
  v45 = [v43 keywordFromString:v44];
  [v9 setObject:v45 forKeyedSubscript:@"action_type"];

  v46 = [v12 getDictionary];
  v47 = [v46 objectForKeyedSubscript:@"third_party_dominate_value"];
  [v9 setObject:v47 forKeyedSubscript:@"third_party_dominate_value"];

  v48 = v81;
LABEL_34:

  objc_autoreleasePoolPop(v37);
LABEL_35:

  return v9;
}

+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (v4)
  {
    v5 = [v3 resources];

    if (v5)
    {
      v4 = objc_opt_new();
      v6 = [v3 action];
      v7 = [NSString stringWithFormat:@"%@", @"Memories from Photos"];
      v8 = [v6 actionName];
      v9 = [v8 length];

      if (v9 >= 2)
      {
        [v4 setObject:v7 forKeyedSubscript:@"default_label"];
        v10 = [v6 actionName];
        [v4 setObject:v10 forKeyedSubscript:@"title"];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)buildTrendMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 events];
  v6 = [v5 firstObject];
  v7 = [v6 category];

  if (v7 == 10)
  {
    v8 = [v3 action];
    v9 = [v3 persons];
    v10 = [v9 firstObject];
    v11 = [v10 name];

    v12 = [v8 actionName];
    v13 = [v12 stringByAppendingString:v11];

    [v4 setObject:v13 forKeyedSubscript:@"default_label"];
    v14 = [v8 actionName];
    v15 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v14];
    [v4 setObject:v15 forKeyedSubscript:@"header"];

    [v4 setObject:v11 forKeyedSubscript:@"title"];
    v16 = [v8 actionName];
    v17 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v16];
    [v4 setObject:v17 forKeyedSubscript:@"action"];

    v18 = objc_opt_class();
    v19 = [v8 actionName];
    v20 = [v18 keywordFromString:v19];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];

    v21 = [v3 persons];
    v22 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v21 suggestionId:v22 metaData:v4];
  }

  return v4;
}

+ (id)buildEvergreenMetaDataForEventBundle:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a3 resources];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        if ([v8 type] == 9)
        {
          v25 = v3;
          v9 = objc_opt_new();
          v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"EVERGREEN_LABEL"];
          [v9 setObject:v10 forKeyedSubscript:@"default_label"];

          v11 = [v8 name];
          v12 = [NSString stringWithFormat:@"%@_%@", @"evergreen_type", v11];

          v13 = [v8 name];
          v26 = v9;
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"evergreen_type" extendedKeyword:v12 value:v13 metaData:v9];

          v14 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          v15 = [v8 promptCount];
          if (v15)
          {
            for (j = 0; j != v15; ++j)
            {
              v17 = [v8 promptIndexes];
              v18 = [v17 objectAtIndex:j];

              if (v18)
              {
                v19 = [NSString stringWithFormat:@"%@%d", @"evergreen_slot_", j];
                [v26 setObject:v18 forKeyedSubscript:v19];
                v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", @"evergreen_index", [v18 intValue]);
                v21 = [v18 stringValue];
                [MOEventBundleMetaDataUtility setMetaDataWithKeyword:v19 extendedKeyword:v20 value:v21 metaData:v26];
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

          v3 = v25;
          goto LABEL_22;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

+ (id)buildTimeContextMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionType];

  v7 = [v3 action];
  if (v6 == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v7 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:v7 metaData:v4];
  }

  v8 = [v3 actions];

  if (v8)
  {
    v9 = [v3 actions];
    [MOEventBundleMetaDataUtility setMetaDataForActions:v9 metaData:v4];
  }

  v10 = [v3 place];

  if (v10)
  {
    v11 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v11 metaData:v4];
  }

  v12 = [v3 places];

  if (v12)
  {
    v13 = [v3 places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:v13 metaData:v4];
  }

  v14 = [v3 time];

  if (v14)
  {
    v15 = [v3 time];
    v16 = [v3 startDate];
    v17 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v15 startDate:v16 endDate:v17 metaData:v4];
  }

  v18 = [v3 persons];

  if (v18)
  {
    v19 = [v3 persons];
    v20 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v19 suggestionId:v20 metaData:v4];
  }

  v21 = [v3 action];
  if ([v21 actionType] != 4)
  {
    goto LABEL_17;
  }

  v22 = [v3 concurrentMediaAction];

  if (v22)
  {
    v21 = [v3 concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:v21 metaData:v4];
LABEL_17:
  }

  if ([v3 bundleSubType] == 202 && objc_msgSend(v3, "summarizationGranularity") == 2 && (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) == 0)
  {
    [v4 setObject:@"workout_summary" forKeyedSubscript:@"summary_type"];
  }

  v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v3 startDate];
    v25 = [v4 allKeys];
    v27 = 138412546;
    v28 = v24;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "build meta for time context bundle, bundle startDate, %@, metaData, %@", &v27, 0x16u);
  }

  return v4;
}

+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];

  if (v5)
  {
    v6 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v6 metaData:v4];
  }

  v7 = [v3 places];

  if (v7)
  {
    v8 = [v3 places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:v8 metaData:v4];
  }

  v9 = [v3 time];

  if (v9)
  {
    v10 = [v3 time];
    v11 = [v3 startDate];
    v12 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v10 startDate:v11 endDate:v12 metaData:v4];
  }

  [v4 setObject:@"transit_summary" forKeyedSubscript:@"summary_type"];
  v13 = [v3 places];
  v14 = [v13 firstObject];

  if (([v14 placeType] == 2 || objc_msgSend(v14, "placeType") == 3) && objc_msgSend(v14, "placeType") != 4 && objc_msgSend(v14, "placeType") != 5 && objc_msgSend(v14, "proposition") != 4)
  {
    [v4 setObject:@"YES" forKeyedSubscript:@"destination_format"];
  }

  return v4;
}

+ (id)buildTripMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionType];

  if (v6 == 2)
  {
    v7 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForAction:v7 metaData:v4];
  }

  if ([v3 isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  v8 = [v3 place];

  if (v8)
  {
    v9 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v9 metaData:v4];

    v10 = [NSPredicate predicateWithFormat:@"%K IN %@", @"placeType", &off_10036D908];
    v11 = [v3 places];
    v12 = [v11 filteredArrayUsingPredicate:v10];

    v13 = [v3 place];
    [v13 placeNameConfidence];
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

  v23 = [v3 time];

  if (v23)
  {
    v24 = [v3 time];
    v25 = [v3 startDate];
    v26 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v24 startDate:v25 endDate:v26 metaData:v4];
  }

  v27 = [v3 persons];

  if (v27)
  {
    v28 = [v3 persons];
    v29 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v28 suggestionId:v29 metaData:v4];
  }

  return v4;
}

+ (id)buildClusteringMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 getSubTypeString];
  [v4 setObject:v5 forKeyedSubscript:@"cluster_subtype"];

  v6 = [v3 action];
  v7 = [v6 actionType];

  v8 = [v3 action];
  if (v7 == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v8 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:v8 metaData:v4];
  }

  v9 = [v3 place];

  if (v9)
  {
    v10 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v10 metaData:v4];
  }

  v11 = [v3 time];

  if (v11)
  {
    v12 = [v3 time];
    v13 = [v3 startDate];
    v14 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v12 startDate:v13 endDate:v14 metaData:v4];
  }

  return v4;
}

+ (id)buildThematicSummaryMetaDataForEventBundle:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 getSubTypeString];
  [v6 setObject:v7 forKeyedSubscript:@"thematic_summary_subtype"];

  v8 = [v5 subBundleIDs];
  v247 = v5;
  if ([v8 count] < 3)
  {
    goto LABEL_10;
  }

  v9 = [v5 clusterMetadata];
  v10 = [v9 phenotype];
  v11 = [v10 objectForKeyedSubscript:@"timeTag"];
  if (!v11)
  {
    v248 = [v5 clusterMetadata];
    v3 = [v248 phenotype];
    v4 = [v3 objectForKeyedSubscript:@"timeString"];
    if (!v4)
    {
      v14 = 0;
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = [v5 clusterMetadata];
  v13 = [v12 weekOfYearHistogram];
  v14 = [v13 count] > 2;

  v5 = v247;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  if (!v14)
  {
    goto LABEL_11;
  }

  v8 = [NSNumber numberWithBool:1];
  [v6 setObject:v8 forKeyedSubscript:@"is_routine"];
LABEL_10:

LABEL_11:
  v15 = [v5 clusterMetadata];
  v16 = [v15 phenotype];
  v17 = [v16 objectForKeyedSubscript:@"holiday"];
  if (v17)
  {
    v18 = v17;
    v19 = [v5 clusterMetadata];
    v20 = [v19 phenotype];
    v21 = [v20 objectForKeyedSubscript:@"holiday"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = v247;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    v15 = [v247 clusterMetadata];
    v16 = [v15 phenotype];
    v23 = [v16 objectForKeyedSubscript:@"holiday"];
    [v6 setObject:v23 forKeyedSubscript:@"holiday_name"];
  }

LABEL_15:
  v24 = [v5 clusterMetadata];
  v25 = [v24 phenotype];
  v26 = [v25 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  v27 = &GEOPOICategoryGasStation_ptr;
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    v29 = [v5 clusterMetadata];
    v30 = [v29 phenotype];
    v31 = [v30 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    [v6 setObject:v31 forKeyedSubscript:@"photo_trait_subject"];
  }

  v32 = [v5 clusterMetadata];
  v33 = [v32 phenotype];
  v34 = [v33 objectForKeyedSubscript:@"withFamily"];

  if (v34)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_family"];
  }

  v35 = [v5 clusterMetadata];
  v36 = [v35 phenotype];
  v37 = [v36 objectForKeyedSubscript:@"withFriend"];

  if (v37)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_friends"];
  }

  v38 = [v5 clusterMetadata];
  v39 = [v38 phenotype];
  v40 = [v39 objectForKeyedSubscript:@"withMyPet"];

  if (v40)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_pets"];
  }

  v41 = [v5 clusterMetadata];
  v42 = [v41 phenotypePersonUUIDs];
  v43 = [v42 count];

  v242 = v6;
  if (v43)
  {
    v44 = [v5 clusterMetadata];
    v45 = [v44 phenotype];
    v46 = [v45 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v46)
    {
      v47 = objc_opt_new();
      v48 = [v5 clusterMetadata];
      v49 = [v48 contactNamesHistogram];
      v50 = [v49 keysSortedByValueUsingComparator:&__block_literal_global_600];

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
            v53 = [v5 persons];
            v54 = [v53 countByEnumeratingWithState:&v254 objects:v268 count:16];
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
                    objc_enumerationMutation(v53);
                  }

                  v58 = *(*(&v254 + 1) + 8 * j);
                  v59 = [v58 name];
                  v60 = [v59 isEqualToString:v52];

                  if (v60)
                  {
                    [v47 addObject:v58];
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v254 objects:v268 count:16];
              }

              while (v55);
            }

            v5 = v247;
          }

          v249 = [obj countByEnumeratingWithState:&v258 objects:v269 count:16];
        }

        while (v249);
      }

      v61 = v47;
      v62 = [v5 suggestionID];
      v6 = v242;
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:v62 metaData:v242 sortBycomparePersons:0];

      v27 = &GEOPOICategoryGasStation_ptr;
    }

    else
    {
      v63 = [v5 clusterMetadata];
      v64 = [v63 phenotypePersonUUIDs];
      v65 = [NSPredicate predicateWithFormat:@"contactIdentifier IN %@", v64];

      v66 = [v5 persons];
      v61 = [v66 filteredArrayUsingPredicate:v65];

      v67 = [v5 suggestionID];
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:v67 metaData:v6 sortBycomparePersons:1];
    }

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_contact"];
  }

  v68 = [v5 clusterMetadata];
  v69 = [v68 phenotype];
  v70 = [v69 objectForKeyedSubscript:@"placeName"];

  v71 = [v5 clusterMetadata];
  v72 = [v71 phenotype];
  v73 = [v72 objectForKeyedSubscript:@"combinedPlaceType"];

  v74 = [v5 clusterMetadata];
  v75 = [v74 phenotype];
  v76 = [v75 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  v77 = [v5 clusterMetadata];
  v78 = [v77 phenotype];
  v246 = [v78 objectForKeyedSubscript:@"enclosingAreaName"];

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
    v84 = [v70 lowercaseString];
    v85 = [v84 isEqualToString:@"home"];

    if (v85)
    {
      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"at_home"];
      [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"not_home"];
    }
  }

  if ([v73 length])
  {
    v86 = [v73 lowercaseString];
    v87 = [v86 isEqualToString:@"home"];

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
    v93 = v92;
LABEL_70:

    goto LABEL_71;
  }

  v116 = [v5 places];
  v117 = [v116 count];

  if (v117 >= 2)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"multiple_places"];
    v118 = [v6 objectForKeyedSubscript:@"place"];

    if (!v118)
    {
      v93 = [v5 places];
      v119 = [v93 firstObject];
      v120 = [v119 placeName];
      [v6 setObject:v120 forKeyedSubscript:@"place"];

      goto LABEL_70;
    }
  }

LABEL_71:
  v241 = v73;
  v94 = [v5 clusterMetadata];
  v95 = [v94 phenotype];
  v96 = [v95 objectForKeyedSubscript:@"secondLevelActivityType"];

  v97 = [v5 clusterMetadata];
  v98 = [v97 phenotype];
  v99 = v98;
  v240 = v76;
  if (v96)
  {
    v100 = [v98 objectForKeyedSubscript:@"secondLevelActivityType"];

    v101 = v247;
    if ([v100 isEqualToString:@"eating out"])
    {
      v102 = [v6 objectForKeyedSubscript:@"at_home"];

      if (v102)
      {
        v103 = [@"dining" lowercaseString];
        v104 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v103];
        [v6 setObject:v104 forKeyedSubscript:@"action"];

        v105 = objc_opt_class();
        v106 = [@"dining" lowercaseString];
        v107 = [v105 keywordFromString:v106];
        [v6 setObject:v107 forKeyedSubscript:@"action_type"];

        v108 = @"prompt_type";
        v109 = v6;
        v110 = @"dining";
      }

      else
      {
        v121 = [@"eating out" lowercaseString];
        v122 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v121];
        [v6 setObject:v122 forKeyedSubscript:@"action"];

        v123 = objc_opt_class();
        v124 = [@"eating out" lowercaseString];
        v125 = [v123 keywordFromString:v124];
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
      v126 = [@"shopping" lowercaseString];
      v127 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v126];
      [v6 setObject:v127 forKeyedSubscript:@"action"];

      v128 = objc_opt_class();
      v129 = [@"shopping" lowercaseString];
      v130 = [v128 keywordFromString:v129];
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

    v135 = [v247 action];
    v136 = [v135 actionType];

    if (v136 != 4)
    {
      v216 = [v247 action];
      v217 = [v216 actionName];
      if ([v217 isEqualToString:@"Time at Home"])
      {
      }

      else
      {
        v224 = [v247 action];
        v225 = [v224 actionName];
        v226 = [v225 isEqualToString:@"visit"];

        if ((v226 & 1) == 0)
        {
          v227 = [v247 action];
          v228 = [v227 actionName];
          v229 = [v228 lowercaseString];
          v230 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v229];
          [v6 setObject:v230 forKeyedSubscript:@"action"];

          v231 = objc_opt_class();
          v232 = [v247 action];
          v233 = [v232 actionName];
          v234 = [v233 lowercaseString];
          v235 = [v231 keywordFromString:v234];
          [v6 setObject:v235 forKeyedSubscript:@"action_type"];
        }
      }

      v27 = &GEOPOICategoryGasStation_ptr;
      goto LABEL_96;
    }

    v137 = [v247 action];
    v138 = [v137 actionName];
    [MOEventBundleMetaDataUtility setActivityNameForThematicSummaryFromActionName:v138 metaData:v6 keyword:@"action" keywordType:@"action_type"];

LABEL_94:
    [v6 setObject:@"workouts" forKeyedSubscript:@"diversity_key"];
    v134 = @"prompt_type";
    v133 = @"workout";
    goto LABEL_95;
  }

  v111 = [v98 objectForKeyedSubscript:@"topLevelActivityType"];

  v101 = v247;
  if (!v111)
  {
    goto LABEL_97;
  }

  v112 = [v247 clusterMetadata];
  v113 = [v112 phenotype];
  v100 = [v113 objectForKeyedSubscript:@"topLevelActivityType"];

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
  v139 = [v101 clusterMetadata];
  v140 = [v139 phenotype];
  v141 = [v140 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v142 = v27[199];
  objc_opt_class();
  v143 = objc_opt_isKindOfClass();

  if (v143)
  {
    v144 = [v101 clusterMetadata];
    v145 = [v144 phenotype];
    v146 = [v145 objectForKeyedSubscript:@"topLevelActivityType"];

    v147 = [v6 objectForKeyedSubscript:@"at_home"];
    v148 = [v147 BOOLValue];

    v149 = [objc_opt_class() activityPhotoTraitLabelMetadataForThematicSummary:v146 AtHome:v148];

    if ([v149 length])
    {
      v150 = [v149 lowercaseString];
      v151 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v150];
      [v6 setObject:v151 forKeyedSubscript:@"action"];

      v152 = objc_opt_class();
      v153 = [v149 lowercaseString];
      v154 = [v152 keywordFromString:v153];
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
      v194 = [v101 actions];
      v195 = [v194 countByEnumeratingWithState:&v250 objects:v267 count:16];
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
              objc_enumerationMutation(v194);
            }

            if ([*(*(&v250 + 1) + 8 * k) actionType] == 4)
            {
              ++v197;
            }
          }

          v196 = [v194 countByEnumeratingWithState:&v250 objects:v267 count:16];
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

  v158 = [v101 startDate];
  if (v158)
  {
    v159 = v158;
    v160 = [v101 endDate];

    if (v160)
    {
      v161 = +[NSCalendar currentCalendar];
      v162 = [v101 startDate];
      v163 = [v101 endDate];
      v164 = [v161 isDate:v162 inSameDayAsDate:v163];

      if (v164)
      {
        [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"day_summary"];
      }

      v101 = v247;
    }
  }

  v165 = [v101 clusterMetadata];
  v166 = [v165 phenotype];
  v167 = [v166 objectForKeyedSubscript:@"timeTag"];
  v168 = v101;
  if (v167)
  {
    v169 = v167;
    v170 = [v101 clusterMetadata];
    v171 = [v170 phenotype];
    v172 = [v171 objectForKeyedSubscript:@"timeString"];

    if (v172)
    {
      v173 = [v168 clusterMetadata];
      v174 = [v173 phenotype];
      v175 = [v174 objectForKeyedSubscript:@"timeString"];

      v176 = [v168 clusterMetadata];
      v177 = [v176 phenotype];
      v178 = [v177 objectForKeyedSubscript:@"timeTag"];

      v179 = [MOTime timeStringSingularToPluralForm:v178];
      v180 = [v178 capitalizedString];
      v181 = [NSString stringWithFormat:@"%@ %@", v175, v180];

      v182 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v181];
      [v6 setObject:v182 forKeyedSubscript:@"time"];

      if (v179)
      {
        v183 = [v179 capitalizedString];
        v184 = [NSString stringWithFormat:@"%@ %@", v175, v183];

        v185 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v184];
        [v6 setObject:v185 forKeyedSubscript:@"times"];
      }

      v186 = obja;
      goto LABEL_131;
    }
  }

  else
  {
  }

  v187 = [v168 clusterMetadata];
  v188 = [v187 phenotype];
  v189 = [v188 objectForKeyedSubscript:@"timeTag"];

  v190 = [v168 clusterMetadata];
  v191 = [v190 phenotype];
  v192 = v191;
  if (v189)
  {
    v175 = [v191 objectForKeyedSubscript:@"timeTag"];

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

  v200 = [v191 objectForKeyedSubscript:@"timeString"];

  v168 = v247;
  v186 = obja;
  if (!v200)
  {
    goto LABEL_133;
  }

  v201 = [v247 clusterMetadata];
  v202 = [v201 phenotype];
  v175 = [v202 objectForKeyedSubscript:@"timeString"];

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
    v220 = [v168 clusterMetadata];
    v221 = [v220 phenotype];
    *buf = 138478083;
    v263 = v221;
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

+ (id)buildStateOfMindMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  +[MOEventBundleMetaDataUtility defineClassCollections];
  v4 = objc_opt_new();
  v5 = [v3 time];

  if (v5)
  {
    v6 = [v3 time];
    v7 = [v3 startDate];
    v8 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v6 startDate:v7 endDate:v8 metaData:v4];
  }

  if ([v3 bundleSubType] == 802)
  {
    v9 = @"momentary_emotion";
  }

  else
  {
    v9 = @"daily_mood";
  }

  [v4 setObject:v9 forKeyedSubscript:@"reflective_interval"];
  v10 = [v3 action];
  v11 = [v10 actionSubtype];

  v12 = v11 - 1;
  if ((v11 - 1) <= 6)
  {
    v13 = *(&off_100336098 + v12);
    [v4 setObject:*(&off_100336060 + v12) forKeyedSubscript:@"valence_classification_granular"];
    [v4 setObject:v13 forKeyedSubscript:@"valence_classification"];
  }

  v14 = [v3 action];
  v15 = [v14 actionMetaData];
  v16 = [v15 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

  if (v16)
  {
    v17 = [v3 action];
    v18 = [v17 actionMetaData];
    v19 = [v18 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
    [v4 setObject:v19 forKeyedSubscript:@"state_of_mind_app_name"];
  }

  v20 = [v3 metaDataForRank];
  v21 = [v20 objectForKey:@"StateOfMindLabels"];

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
  [v4 setObject:v22 forKeyedSubscript:@"state_of_mind_label_count"];

  if ([v21 count])
  {
    v23 = [v21 objectAtIndexedSubscript:0];
    [v23 intValue];

    v24 = HKUILocalizedStringForStateOfMindLabel();
    v25 = [v24 lowercaseString];
    v26 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v25];
    [v4 setObject:v26 forKeyedSubscript:@"state_of_mind_label_1"];
  }

  if ([v21 count] >= 2)
  {
    v27 = [v21 objectAtIndexedSubscript:1];
    [v27 intValue];

    v28 = HKUILocalizedStringForStateOfMindLabel();
    v29 = [v28 lowercaseString];
    v30 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v29];
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
        v37 = [v3 action];
        if ([v37 actionSubtype] == 2)
        {
          v38 = [noSavoringPromptLabels containsObject:v36];

          if (v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v39 = [v3 action];
          if ([v39 actionSubtype] == 3)
          {
            v40 = [noSavoringPromptLabels containsObject:v36];

            if (v40)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v41 = [v3 action];
            if ([v41 actionSubtype] == 4)
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
        v43 = [v3 action];
        if ([v43 actionSubtype] == 5)
        {
          v44 = [noReappraisalPromptLabels containsObject:v36];

          if (v44)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v45 = [v3 action];
          if ([v45 actionSubtype] == 6)
          {
            v46 = [noReappraisalPromptLabels containsObject:v36];

            if (v46)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v47 = [v3 action];
            if ([v47 actionSubtype] == 7)
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

+ (void)setMetaDataForAction:(id)a3 metaData:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v6 actionName];
    v8 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v7];
    [v5 setObject:v8 forKeyedSubscript:@"action"];

    v9 = objc_opt_class();
    v11 = [v6 actionName];

    v10 = [v9 keywordFromString:v11];
    [v5 setObject:v10 forKeyedSubscript:@"action_type"];
  }
}

+ (void)setMetaDataForDiningAction:(id)a3 metaData:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v21)
  {
    v12 = [v21 actionName];
    v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v12];
    [v9 setObject:v13 forKeyedSubscript:@"action"];

    v14 = objc_opt_class();
    v15 = [v21 actionName];
    v16 = [v14 keywordFromString:v15];
    [v9 setObject:v16 forKeyedSubscript:@"action_type"];

    if ([v21 actionType] == 10)
    {
      v17 = [MOTime mealtagFromStartDate:v10 endDate:v11];
      if (v17 - 2000 <= 2)
      {
        v18 = [MOTime timeStringFromTimeTag:v17];
        if (v18)
        {
          v19 = [NSString stringWithFormat:@"%@_%@", @"meal_type", v18];
          v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"meal_type" extendedKeyword:v19 value:v20 metaData:v9];
        }
      }
    }
  }
}

+ (void)setMetaDataForActions:(id)a3 metaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v7 = objc_opt_new();
    v47 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = v5;
    obj = v5;
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
            v14 = [v11 actionName];
            [MOEventBundleMetaDataUtility setActivityNameFromActionName:v14 metaData:v6 keyword:v12 keywordType:v13];
          }

          else
          {
            v15 = [v11 actionName];
            v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
            [v6 setObject:v16 forKeyedSubscript:v12];

            v17 = objc_opt_class();
            v14 = [v11 actionName];
            v18 = [v17 keywordFromString:v14];
            [v6 setObject:v18 forKeyedSubscript:v13];
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
          v21 = [v11 actionName];
          v22 = [v9 containsObject:v21];

          if ((v22 & 1) == 0)
          {
            v23 = v6;
            v24 = [v11 actionName];
            [v9 addObject:v24];

            v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_action_", [v9 count]);
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", @"unique_action_type", [v9 count]);
            if ([v11 actionType] == 4)
            {
              v27 = [v11 actionName];
              [MOEventBundleMetaDataUtility setActivityNameFromActionName:v27 metaData:v6 keyword:v25 keywordType:v26];

              ++v43;
            }

            else
            {
              v28 = [v11 actionName];
              v29 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v28];
              [v23 setObject:v29 forKeyedSubscript:v25];

              v30 = objc_opt_class();
              v31 = [v11 actionName];
              v32 = [v30 keywordFromString:v31];
              [v23 setObject:v32 forKeyedSubscript:v26];

              v6 = v23;
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
    [v6 setObject:v36 forKeyedSubscript:@"action_count"];

    v37 = [NSNumber numberWithInt:v49];
    [v6 setObject:v37 forKeyedSubscript:@"activity_count"];

    v38 = [NSNumber numberWithInt:v46];
    [v6 setObject:v38 forKeyedSubscript:@"unique_action_type_count"];

    v39 = [NSNumber numberWithInt:v43];
    [v6 setObject:v39 forKeyedSubscript:@"unique_activity_count"];

    v40 = [NSNumber numberWithInt:HIDWORD(v49)];
    [v6 setObject:v40 forKeyedSubscript:@"visit_count"];

    v5 = v41;
  }
}

+ (void)setActivityNameFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v12];
  v27 = v9;
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
    [v10 setObject:v17 forKeyedSubscript:{v12, v25}];
    goto LABEL_35;
  }

  v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17, v25];
  [v10 setObject:v22 forKeyedSubscript:v12];

  if ((v18 & 1) == 0)
  {
    v23 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v26];
    [v10 setObject:v23 forKeyedSubscript:v13];
  }

LABEL_35:
  v24 = [objc_opt_class() keywordFromString:v17];
  [v10 setObject:v24 forKeyedSubscript:v11];
}

+ (void)setActivityNameForThematicSummaryFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v12];
  v24 = v9;
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
        [v10 setObject:v15 forKeyedSubscript:v12];
LABEL_26:
        v23 = [objc_opt_class() keywordFromString:v15];
        [v10 setObject:v23 forKeyedSubscript:v11];

        goto LABEL_27;
      }

      v18 = 0;
      v19 = 1;
LABEL_24:
      v21 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
      [v10 setObject:v21 forKeyedSubscript:v12];

      if ((v19 & 1) == 0)
      {
        v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
        [v10 setObject:v22 forKeyedSubscript:v13];
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

+ (void)setMetaDataForActivityAction:(id)a3 metaData:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (v12)
  {
    v6 = [v12 actionName];
    [MOEventBundleMetaDataUtility setActivityNameFromActionName:v6 metaData:v5 keyword:@"action" keywordType:@"action_type"];

    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 actionSubtype]);
    [v5 setObject:v7 forKeyedSubscript:@"workoutSubtype"];

    v8 = [v12 actionMetaData];
    v9 = [v8 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

    if (v9)
    {
      v10 = [v12 actionMetaData];
      v11 = [v10 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [v5 setObject:v11 forKeyedSubscript:@"workout_app_name"];
    }
  }
}

+ (void)setMetaDataForMediaAction:(id)a3 metaData:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7 && [v7 actionType] == 6)
  {
    v6 = [v7 actionName];
    [v5 setObject:v6 forKeyedSubscript:@"media"];
  }
}

+ (id)mediaKeywordWithType:(unint64_t)a3
{
  if (a3 > 2)
  {
    switch(a3)
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

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    [NSString stringWithFormat:@"%@_title", @"media"];
    goto LABEL_14;
  }

  if (a3 != 2)
  {
    goto LABEL_10;
  }

  [NSString stringWithFormat:@"%@_album", @"media"];
  v3 = LABEL_14:;
LABEL_15:

  return v3;
}

+ (void)setMetaDataForActivityConcurrentMediaAction:(id)a3 metaData:(id)a4
{
  v16 = a3;
  v5 = a4;
  if (v16)
  {
    if ([v16 actionType] == 6)
    {
      v6 = [v16 actionMetaData];

      if (v6)
      {
        v7 = [v16 actionName];
        [v5 setObject:v7 forKeyedSubscript:@"media"];

        v8 = [v16 actionMetaData];
        v9 = [v8 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
        [v5 setObject:v9 forKeyedSubscript:@"media_type"];

        v10 = [v16 actionMetaData];
        v11 = [v10 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

        if (v11)
        {
          v12 = [v16 actionMetaData];
          v13 = [v12 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

          v14 = [objc_opt_class() mediaKeywordWithType:{objc_msgSend(v13, "intValue")}];
          v15 = [v16 actionName];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"media_name" extendedKeyword:v14 value:v15 metaData:v5];
        }
      }
    }
  }
}

+ (void)setMetaDataWithKeyword:(id)a3 extendedKeyword:(id)a4 value:(id)a5 metaData:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 && v10 && v11)
  {
    v13 = [NSString stringWithFormat:@"%@%@", v9, @"_string"];
    [v12 setObject:v10 forKeyedSubscript:v9];
    [v12 setObject:v11 forKeyedSubscript:v10];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = [v11 length];
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "build meta, keyword, %@, extendedKeyword, %@, value, %lu", buf, 0x20u);
    }
  }
}

+ (void)setMetaDataForTime:(id)a3 startDate:(id)a4 endDate:(id)a5 metaData:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 timeZoneObject];
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v61 = v13;
    v62 = 2112;
    v63 = v10;
    v64 = 2112;
    v65 = v11;
    v66 = 2112;
    v67 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, endDate, %@, time, %@", buf, 0x2Au);
  }

  if (v11)
  {
    if ([v11 isBeforeDate:v10])
    {
      v15 = v11;
    }

    else
    {
      v15 = [v11 snapToTheDay];
      if (![v15 isAfterDate:v10])
      {
        goto LABEL_14;
      }

      v16 = v15;

      if (v16)
      {
        if (![v16 isBeforeDate:v10])
        {
          v11 = v16;
          goto LABEL_14;
        }

        v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v61 = v10;
          v62 = 2112;
          v63 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after snapping.", buf, 0x16u);
        }
      }
    }

    v11 = 0;
LABEL_14:
  }

  if (v9)
  {
    v18 = [v9 timeString];

    if (v18)
    {
      v19 = [v9 timeString];
      v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v19];
      [v12 setObject:v20 forKeyedSubscript:@"time"];
    }
  }

  if (!v10)
  {
    v10 = [v9 date];

    v11 = 0;
  }

  if (!v13)
  {
    v23 = v11;
    v21 = v10;
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

  if (v10)
  {
    v21 = [MOTime localTimeOfDate:v10 timeZone:v13];
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v61 = v13;
      v62 = 2112;
      v63 = v10;
      v64 = 2112;
      v65 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, localDate, %@", buf, 0x20u);
    }

    if (!v11)
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
    if (!v11)
    {
      goto LABEL_68;
    }
  }

  v23 = [MOTime localTimeOfDate:v11 timeZone:v13];
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v61 = v13;
    v62 = 2112;
    v63 = v11;
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
    v61 = v13;
    v62 = 2112;
    v63 = v21;
    v64 = 2112;
    v65 = v23;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "build meta after timezone shift, time zone, %@, startDate, %@, endDate, %@", buf, 0x20u);
  }

  v28 = [MOTime dateReferenceTagFromStartDate:v21 endDate:v23];
  if (v9)
  {
    [v9 setDateReferenceTag:v28];
  }

  if (v28 >= 2)
  {
    v29 = [MOTime timeStringFromTimeTag:v28];
    [v12 setObject:v29 forKeyedSubscript:@"date_referece_time_tag"];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x64)
  {
    v30 = [MOTime timeStringFromTimeTag:v28];
    v31 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v30];
    v32 = [NSString stringWithFormat:@"%@%@", @"date_reference_", v30];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference" extendedKeyword:v32 value:v31 metaData:v12];
  }

  v33 = +[NSDate date];
  v34 = [v33 dateByAddingTimeInterval:-604800.0];

  v57 = v34;
  if ([v21 isAfterDate:v34])
  {
    [v12 setObject:&off_100368FB0 forKeyedSubscript:@"date_referece_recency"];
  }

  v59 = v9;
  v55 = [MOTime typeOfDayTagFromStartDate:v21 endDate:v23 timeZone:0];
  if (v55 == 10001)
  {
    v35 = [MOTime timeStringFromTimeTag:10001];
    [v12 setObject:v35 forKeyedSubscript:@"typeOfDay"];
  }

  v58 = v13;
  v36 = [MOTime dayOfWeekTagFromStartDate:v21 endDate:v23];
  v37 = v36 - 102;
  if (v36 - 102 <= 6)
  {
    v38 = [MOTime timeStringFromTimeTag:v36];
    v39 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v38];
    v40 = [NSString stringWithFormat:@"%@%@", @"date_reference_", v38];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday" extendedKeyword:v40 value:v39 metaData:v12];
  }

  v56 = v36;
  v41 = v12;
  v42 = [MOTime timetagFromStartDate:v21 endDate:v23];
  if (v42 - 2 <= 6)
  {
    v43 = [MOTime timeStringFromTimeTag:v42];
    v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
    [v12 setObject:v44 forKeyedSubscript:@"timeOfDay"];

    v45 = [v12 objectForKey:@"time"];

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
  v12 = v41;
  v13 = v58;
  v9 = v59;
LABEL_68:
}

+ (void)setMetaDataForPlace:(id)a3 metaData:(id)a4
{
  v32 = a3;
  v5 = a4;
  v6 = [v32 placeName];
  if (v6)
  {
    v7 = v6;
    v8 = [v32 placeType];

    if (v8)
    {
      if ([v32 placeUserType] && (objc_msgSend(v32, "placeUserType") == 1 || objc_msgSend(v32, "placeUserType") == 2))
      {
        v9 = [v32 placeName];
        v10 = [v9 lowercaseString];
        v11 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v10];
        [v5 setObject:v11 forKeyedSubscript:@"place"];

        v12 = [v32 placeName];
        v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v12];
        [v5 setObject:v13 forKeyedSubscript:@"Place"];
      }

      else
      {
        v14 = [v32 placeName];
        [v5 setObject:v14 forKeyedSubscript:@"place"];

        v12 = [v32 placeName];
        [v5 setObject:v12 forKeyedSubscript:@"Place"];
      }

      v15 = [v32 enclosingArea];

      if (v15)
      {
        if ([v32 placeType] != 101 && objc_msgSend(v32, "placeType") != 102)
        {
          v16 = [v32 enclosingArea];
          [v5 setObject:v16 forKeyedSubscript:@"city"];

          v17 = [v32 placeName];
          v18 = [v32 enclosingArea];
          v19 = [v17 containsString:v18];

          if (v19)
          {
            [v5 setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 placeType]);
      [v5 setObject:v20 forKeyedSubscript:@"place_type"];

      v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 placeUserType]);
      [v5 setObject:v21 forKeyedSubscript:@"place_user_type"];

      v22 = +[MOEventRoutine stringOfPlaceUserType:](MOEventRoutine, "stringOfPlaceUserType:", [v32 placeUserType]);
      v23 = v22;
      if (v22)
      {
        v24 = [v22 lowercaseString];
        [v5 setObject:v24 forKeyedSubscript:@"place_user_type_tag"];
      }

      if ([v32 proposition] == 4)
      {
        v25 = [v5 objectForKeyedSubscript:@"flight"];
        v26 = [v25 isEqual:@"flight"];

        if ((v26 & 1) == 0)
        {
          [v5 setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }

      if ([v32 locationMode] == 2)
      {
        [v5 setObject:&off_100368FB0 forKeyedSubscript:@"trip"];
      }

      if ([v32 placeType] == 3 && (objc_msgSend(v32, "placeNameConfidence"), v27 >= 0.9) || objc_msgSend(v32, "placeType") == 2 && (objc_msgSend(v32, "placeNameConfidence"), v28 >= 0.9) || objc_msgSend(v32, "placeUserType") && objc_msgSend(v32, "placeUserType") < 0x64)
      {
        v29 = @"high";
      }

      else if ([v32 placeType] == 3 && (objc_msgSend(v32, "placeNameConfidence"), v30 >= 0.75) || objc_msgSend(v32, "placeType") == 2 && (objc_msgSend(v32, "placeNameConfidence"), v31 >= 0.5))
      {
        v29 = @"medium";
      }

      else
      {
        v29 = @"low";
      }

      [v5 setObject:v29 forKeyedSubscript:@"confidence"];
    }
  }
}

+ (void)setMetaDataForActivityPlace:(id)a3 metaData:(id)a4
{
  v23 = a3;
  v5 = a4;
  v6 = [v23 placeName];
  if (v6 && [v23 placeType])
  {
    v7 = [v23 placeUserType];

    if (v7 != 2)
    {
      if ([v23 placeUserType] && objc_msgSend(v23, "placeUserType") == 1)
      {
        v8 = [v23 placeName];
        v9 = [v8 lowercaseString];
        v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v9];
        [v5 setObject:v10 forKeyedSubscript:@"place"];

        v11 = [v23 placeName];
        v12 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v11];
        [v5 setObject:v12 forKeyedSubscript:@"Place"];
      }

      else
      {
        v13 = [v23 placeName];
        [v5 setObject:v13 forKeyedSubscript:@"place"];

        v11 = [v23 placeName];
        [v5 setObject:v11 forKeyedSubscript:@"Place"];
      }

      v14 = [v23 enclosingArea];

      if (v14)
      {
        if ([v23 placeType] != 101 && objc_msgSend(v23, "placeType") != 102)
        {
          v15 = [v23 enclosingArea];
          [v5 setObject:v15 forKeyedSubscript:@"city"];

          v16 = [v23 placeName];
          v17 = [v23 enclosingArea];
          v18 = [v16 containsString:v17];

          if (v18)
          {
            [v5 setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 placeType]);
      [v5 setObject:v19 forKeyedSubscript:@"place_type"];

      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 placeUserType]);
      [v5 setObject:v20 forKeyedSubscript:@"place_user_type"];

      if ([v23 proposition] == 4)
      {
        v21 = [v5 objectForKeyedSubscript:@"flight"];
        v22 = [v21 isEqual:@"flight"];

        if ((v22 & 1) == 0)
        {
          [v5 setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }
    }
  }

  else
  {
  }
}

+ (void)setMetaDataForPersons:(id)a3 suggestionId:(id)a4 metaData:(id)a5 sortBycomparePersons:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v61 = a5;
  if (v9 && [v9 count])
  {
    v59 = v9;
    v60 = v10;
    if (v6)
    {
      v58 = [NSSet setWithArray:v9];
      v57 = [v58 allObjects];
      v11 = [v57 sortedArrayUsingSelector:"comparePersons:"];
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
        v22 = [v21 firstObject];
        v23 = [v22 name];
        [v61 setObject:v23 forKeyedSubscript:@"me_person"];

        v24 = [v21 firstObject];
        LODWORD(v23) = [v24 mePersonIdentified];

        if (v23)
        {
          [v61 setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
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
      v34 = v57;
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
      v32 = [v9 filteredArrayUsingPredicate:v35];
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
            [v61 setObject:&__kCFBooleanTrue forKeyedSubscript:@"with_more_than_three_persons"];
            goto LABEL_48;
          }

          v50 = *(*(&v63 + 1) + 8 * v48);
          if ([v50 mePersonIdentified])
          {
            [v61 setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
          }

          v51 = [NSString stringWithFormat:@"%@%d", @"person_", v49];
          v52 = [v50 name];
          [v61 setObject:v52 forKeyedSubscript:v51];

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

    v9 = v59;
    v10 = v60;
  }
}

+ (void)setMetaDataForPlaces:(id)a3 metaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ![v5 count])
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
  v60 = v5;
  obj = v5;
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
      v13 = [v11 placeName];

      v69 = v12;
      if (v13)
      {
        if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
        {
          v14 = [v11 placeName];
          v15 = [v14 lowercaseString];
          v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
          [v6 setObject:v16 forKeyedSubscript:v70];

          v7 = v63;
          v17 = [v11 placeName];
          v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17];
          [v6 setObject:v18 forKeyedSubscript:v12];
        }

        else
        {
          v19 = [v11 placeName];
          [v6 setObject:v19 forKeyedSubscript:v70];

          v17 = [v11 placeName];
          [v6 setObject:v17 forKeyedSubscript:v12];
        }
      }

      v20 = [v11 enclosingArea];

      if (v20 && [v11 placeType] != 101 && objc_msgSend(v11, "placeType") != 102)
      {
        v21 = [NSString stringWithFormat:@"%@_%d", @"city", v9];
        v22 = [v11 enclosingArea];
        [v6 setObject:v22 forKeyedSubscript:v21];

        v23 = [v11 enclosingArea];
        v24 = [v8 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          ++v62;
          v25 = [v11 enclosingArea];
          [v8 addObject:v25];

          v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_city_", [v8 count]);
          v27 = [v11 enclosingArea];
          [v6 setObject:v27 forKeyedSubscript:v26];
        }

        v7 = v63;
      }

      if ([v11 proposition] == 4)
      {
        v28 = [v6 objectForKeyedSubscript:@"flight"];
        v29 = [v28 isEqual:@"flight"];

        if ((v29 & 1) == 0 && v9 == 1)
        {
          [v6 setObject:&off_100368FB0 forKeyedSubscript:@"vicinity"];
        }
      }

      v30 = [v11 placeName];
      if (!v30)
      {
        goto LABEL_27;
      }

      v31 = v30;
      v32 = v8;
      v33 = [v11 placeName];
      v34 = v7;
      v35 = [v7 containsObject:v33];

      if (v35)
      {
        v7 = v34;
        v8 = v32;
LABEL_27:
        v36 = v69;
        goto LABEL_48;
      }

      v37 = [v11 placeName];
      [v34 addObject:v37];

      v66 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"unique_place_", [v34 count]);
      v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"Unique_place_", [v34 count]);
      v7 = v34;
      if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
      {
        v39 = [v11 placeName];
        [v39 lowercaseString];
        v41 = v40 = v6;
        v42 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v41];
        [v40 setObject:v42 forKeyedSubscript:v66];

        v6 = v40;
        v7 = v63;

        v43 = [v11 placeName];
        v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
        [v6 setObject:v44 forKeyedSubscript:v38];
      }

      else
      {
        v45 = [v11 placeName];
        [v6 setObject:v45 forKeyedSubscript:v66];

        v43 = [v11 placeName];
        [v6 setObject:v43 forKeyedSubscript:v38];
      }

      v8 = v32;
      if ([v11 proposition] == 4)
      {
        v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%d", @"vicinity_", [v7 count]);
        [v6 setObject:&off_100368FB0 forKeyedSubscript:v46];
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
      [v6 setObject:v50 forKeyedSubscript:v47];

LABEL_48:
      v9 = (v9 + 1);
    }

    v68 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  }

  while (v68);
LABEL_53:

  v5 = v60;
  v53 = v62;
  v54 = v61;
LABEL_54:
  v55 = [NSNumber numberWithBool:v54 & 1];
  [v6 setObject:v55 forKeyedSubscript:@"include_low_confidence_place_name"];

  v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  [v6 setObject:v56 forKeyedSubscript:@"place_count"];

  v57 = [NSNumber numberWithInt:v65];
  [v6 setObject:v57 forKeyedSubscript:@"unique_place_count"];

  v58 = [NSNumber numberWithInt:v53];
  [v6 setObject:v58 forKeyedSubscript:@"unique_city_count"];

  if ([v5 count] >= 2)
  {
    v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count] - 1);
    [v6 setObject:v59 forKeyedSubscript:@"place_count_minus_one"];
  }
}

+ (void)setMetaDataForPhotos:(id)a3 metaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
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
            [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"photo_attached"];
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

+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
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
    v13 = [v7 objectAtIndex:v12];
    v14 = [v13 valueForKeyPath:v8];
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

  if (v12 < a5 - 1)
  {
    [v11 appendFormat:@", %@", v14];
    goto LABEL_9;
  }

  [v11 appendFormat:@", %@ and more", v14];

LABEL_13:
  v16 = [v11 copy];

  return v16;
}

+ (void)setMetaDataForHoliday:(id)a3 metaData:(id)a4 eventBundle:(id)a5
{
  v24 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 rankingDictionary];
  v10 = [v9 objectForKeyedSubscript:@"useHolidayLabel"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [v8 bundleSubType];
    v13 = v12 == 204;
    if ([v8 bundleSubType] == 201)
    {
      v14 = [v8 action];
      v15 = [v14 actionName];
      v16 = [HKWorkout _workoutActivityTypeFromString:v15];

      v13 = v16 == 52 || v12 == 204;
    }

    v18 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:v24];
    v19 = v18;
    if (v18 && !v13)
    {
      v20 = [v18 name];
      [v7 setObject:v20 forKeyedSubscript:@"holiday_name"];
    }

    if (v19)
    {
      if (v13)
      {
        v21 = [v19 holidayIdentifier];
        v22 = [v21 isEqualToString:@"Halloween"];

        if (v22)
        {
          v23 = [v19 name];
          [v7 setObject:v23 forKeyedSubscript:@"holiday_name"];
        }
      }
    }
  }
}

+ (void)setMetaDataForBirthday:(id)a3 metaData:(id)a4 eventBundle:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 rankingDictionary];
  v10 = [v9 objectForKeyedSubscript:@"useBirthdayLabel"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:v17];
    if (v12)
    {
      v13 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v12 eventBundle:v8];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 name];
        v16 = [v15 copy];
        [v7 setObject:v16 forKeyedSubscript:@"birthday_person_name"];
      }
    }
  }
}

+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Home"])
  {
    v4 = @"home";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"Work"])
  {
    v4 = @"work";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"School"])
  {
    v4 = @"school";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"Gym"])
  {
    v4 = @"gym";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryAmusementPark])
  {
    v4 = @"amusement parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryAquarium])
  {
    v4 = @"aquariums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBakery])
  {
    v4 = @"bakeries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBaseball])
  {
    v4 = @"baseball fields";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBasketball])
  {
    v4 = @"basketball courts";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBeach])
  {
    v4 = @"beaches";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBeauty])
  {
    v4 = @"beauty stores";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBowling])
  {
    v4 = @"bowling alleys";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryBrewery])
  {
    v4 = @"breweries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryCafe])
  {
    v4 = @"cafes";
    goto LABEL_85;
  }

  v5 = GEOPOICategoryCampground;
  if ([v3 isEqualToString:GEOPOICategoryCampground])
  {
LABEL_30:
    v4 = @"campgrounds";
    goto LABEL_85;
  }

  v6 = GEOPOICategoryCastle;
  if ([v3 isEqualToString:GEOPOICategoryCastle])
  {
LABEL_32:
    v4 = @"castles";
    goto LABEL_85;
  }

  v7 = GEOPOICategoryConventionCenter;
  if ([v3 isEqualToString:GEOPOICategoryConventionCenter])
  {
LABEL_34:
    v4 = @"convention centers";
    goto LABEL_85;
  }

  v8 = GEOPOICategoryFairground;
  if ([v3 isEqualToString:GEOPOICategoryFairground])
  {
    goto LABEL_36;
  }

  if ([v3 isEqualToString:GEOPOICategoryFitnessCenter])
  {
    v4 = @"fitness centers";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryFishing])
  {
    v4 = @"fishing spots";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryFoodMarket])
  {
    v4 = @"food markets";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryGolf])
  {
    v4 = @"golf courses";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryGoKart])
  {
    v4 = @"go kart";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryHiking])
  {
    v4 = @"hiking trails";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryHotel])
  {
    v4 = @"hotels";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryKayaking])
  {
    v4 = @"kayaking";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryLibrary])
  {
    v4 = @"libraries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryMarina])
  {
    v4 = @"marinas";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryMiniGolf])
  {
    v4 = @"mini golf";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryMovieTheater])
  {
    v4 = @"movie theaters";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryMuseum])
  {
    v4 = @"museums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryMusicVenue])
  {
    v4 = @"music venues";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryNationalPark])
  {
    v4 = @"national parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryNightlife])
  {
    v4 = @"nightlife";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryPark])
  {
    v4 = @"parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryPlayground])
  {
    v4 = @"playgrounds";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryRestaurant])
  {
    v4 = @"restaurants";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryRockClimbing])
  {
    v4 = @"rock climbing";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryStadium])
  {
    v4 = @"stadiums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryTheater])
  {
    v4 = @"theaters";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryWinery])
  {
    v4 = @"wineries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryZoo])
  {
    v4 = @"zoos";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:v5])
  {
    goto LABEL_30;
  }

  if ([v3 isEqualToString:v6])
  {
    goto LABEL_32;
  }

  if ([v3 isEqualToString:v7])
  {
    goto LABEL_34;
  }

  if ([v3 isEqualToString:v8])
  {
LABEL_36:
    v4 = @"fairgrounds";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:GEOPOICategoryFortress])
  {
    v4 = @"fortresses";
  }

  else if ([v3 isEqualToString:GEOPOICategoryLandmark])
  {
    v4 = @"landmarks";
  }

  else if ([v3 isEqualToString:GEOPOICategoryNationalMonument])
  {
    v4 = @"national monuments";
  }

  else if ([v3 isEqualToString:GEOPOICategoryPlanetarium])
  {
    v4 = @"planetariums";
  }

  else if ([v3 isEqualToString:GEOPOICategoryRVPark])
  {
    v4 = @"RV parks";
  }

  else if ([v3 isEqualToString:GEOPOICategorySkatePark])
  {
    v4 = @"skate parks";
  }

  else if ([v3 isEqualToString:GEOPOICategorySchool])
  {
    v4 = @"schools";
  }

  else if ([v3 isEqualToString:GEOPOICategorySkating])
  {
    v4 = @"skating";
  }

  else if ([v3 isEqualToString:GEOPOICategorySkiing])
  {
    v4 = @"ski resorts";
  }

  else if ([v3 isEqualToString:GEOPOICategorySoccer])
  {
    v4 = @"soccer fields";
  }

  else if ([v3 isEqualToString:GEOPOICategorySpa])
  {
    v4 = @"spas";
  }

  else if ([v3 isEqualToString:GEOPOICategoryStore])
  {
    v4 = @"stores";
  }

  else if ([v3 isEqualToString:GEOPOICategorySurfing])
  {
    v4 = @"surfing spots";
  }

  else if ([v3 isEqualToString:GEOPOICategorySwimming])
  {
    v4 = @"swimming pools";
  }

  else if ([v3 isEqualToString:GEOPOICategoryTennis])
  {
    v4 = @"tennis courts";
  }

  else if ([v3 isEqualToString:GEOPOICategoryUniversity])
  {
    v4 = @"universities";
  }

  else if ([v3 isEqualToString:GEOPOICategoryVolleyball])
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

+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"amusementpark"])
  {
    v4 = @"amusement park";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)a3 AtHome:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isEqualToString:@"eating"])
  {
    if (v4)
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
    v6 = v5;
  }

  return v6;
}

+ (void)setMetaDataForInvite:(id)a3 metaData:(id)a4
{
  v14 = a4;
  v5 = a3;
  v6 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
  v7 = [v5 resources];

  v8 = [v7 filteredArrayUsingPredicate:v6];

  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [v9 name];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v9 name];
      v13 = [v12 copy];
      [v14 setObject:v13 forKeyedSubscript:@"invite_title"];
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