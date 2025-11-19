@interface MOEventBundleRanking
+ (void)defineClassCollections;
- (MOEventBundleRanking)initWithCoder:(id)a3;
- (MOEventBundleRanking)initWithConfigurationManager:(id)a3;
- (MOEventBundleRanking)initWithUniverse:(id)a3;
- (double)_calculateNormSquare:(double *)a3;
- (double)_computeBPROptForPairs:(double *)a3 withTotalBundleCountsForInterfaceTypesHigherTier:(id)a4 WithTotalBundleCountsForInterfaceTypesLowerTier:(id)a5 bprOpt:(double)a6 pairWiseMult:(float)a7;
- (double)_generateBPROptUsing:(double *)a3 initialParams:(double *)a4;
- (id)_checkAndUpdateNumericLimits:(id)a3;
- (id)_fetchBundleInforForRanking:(id)a3;
- (id)_getDefaultFallbackFactorDict;
- (id)_getDefaultRichnessWeightDict;
- (id)_getRichnessScoreWeightFromConfigurationManager:(id)a3 withDefaultWeightDict:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)generateRankingInput:(id)a3;
- (id)loadHolidayTuningParameterJSONFromFilePath;
- (void)_computeGradient:(double *)a3 initialParams:(double *)a4 Update:(double *)a5;
- (void)_fillCurationInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillDistincnessInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillEngagementInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillHeuristicsInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillQualityInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillRecencyInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_fillRichnessInfoForRanking:(id)a3 forBundle:(id)a4;
- (void)_lineSearch:(double *)a3 initialParams:(double *)a4 With:(double *)a5 And:(double *)a6 handler:(id)a7;
- (void)_mergeScoresToBundles:(id)a3 usingScore:(id)a4;
- (void)_setToIdentityMatrix:(double *)a3 forNumRows:(unint64_t)a4;
- (void)_submitEventBundleRankingAnalytics:(id)a3 withRankingInput:(id)a4 andSubmissionDate:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)generateBundleRanking:(id)a3 withMinRecommendedBundleCountRequirement:(BOOL)a4;
- (void)identifyRepetitiveSignificantContactBundlesFromBundles:(id)a3 precedingSignificantContactBundles:(id)a4;
- (void)loadHolidayTuningParameterJSONFromFilePath;
- (void)safeSavePropertyToDictionary:(id)a3 withKey:(id)a4 andValue:(id)a5;
- (void)setHolidayTuningParameters;
- (void)setRankingParamsFromRankingParamsMO:(id)a3;
- (void)updateEngagementScoreParamsUsingBFGS;
- (void)updateTripMetaDataForRank:(id)a3;
@end

@implementation MOEventBundleRanking

- (void)setRankingParamsFromRankingParamsMO:(id)a3
{
  v5 = a3;
  if (!self)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking(MORankingParamsMO) setRankingParamsFromRankingParamsMO:v6];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:0 file:@"MORankingParams+CoreDataTransformable.m" lineNumber:23 description:{@"MOEventBundleRanking was not initialized (in %s:%d)", "-[MOEventBundleRanking(MORankingParamsMO) setRankingParamsFromRankingParamsMO:]", 23}];
  }

  if (v5)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    [v5 activityInterfaceTypeEngagementWeight];
    v9 = [NSNumber numberWithFloat:?];
    [v8 setObject:v9 forKeyedSubscript:&off_100369538];

    [v5 outingInterfaceTypeEngagementWeight];
    v10 = [NSNumber numberWithFloat:?];
    [v8 setObject:v10 forKeyedSubscript:&off_100369550];

    [v5 photoMomentInterfaceTypeEngagementWeight];
    v11 = [NSNumber numberWithFloat:?];
    [v8 setObject:v11 forKeyedSubscript:&off_100369568];

    [v5 significantContactInterfaceTypeEngagementWeight];
    v12 = [NSNumber numberWithFloat:?];
    [v8 setObject:v12 forKeyedSubscript:&off_100369580];

    [v5 yourMediaInterfaceTypeEngagementWeight];
    v13 = [NSNumber numberWithFloat:?];
    [v8 setObject:v13 forKeyedSubscript:&off_100369598];

    [v5 yourTimeAtHomeInterfaceTypeEngagementWeight];
    v14 = [NSNumber numberWithFloat:?];
    [v8 setObject:v14 forKeyedSubscript:&off_1003695B0];

    [v5 yourSharedContentInterfaceTypeEngagementWeight];
    v15 = [NSNumber numberWithFloat:?];
    [v8 setObject:v15 forKeyedSubscript:&off_1003695C8];

    [v5 topicsOfInterestInterfaceTypeEngagementWeight];
    v16 = [NSNumber numberWithFloat:?];
    [v8 setObject:v16 forKeyedSubscript:&off_1003695E0];

    [v5 trendInterfaceTypeEngagementWeight];
    v17 = [NSNumber numberWithFloat:?];
    [v8 setObject:v17 forKeyedSubscript:&off_1003695F8];

    [v5 photoMemoryInterfaceTypeEngagementWeight];
    v18 = [NSNumber numberWithFloat:?];
    [v8 setObject:v18 forKeyedSubscript:&off_100369610];

    [v5 evergreenInterfaceTypeEngagementWeight];
    v19 = [NSNumber numberWithFloat:?];
    [v8 setObject:v19 forKeyedSubscript:&off_100369628];

    [v5 timeContextInterfaceTypeEngagementWeight];
    v20 = [NSNumber numberWithFloat:?];
    [v8 setObject:v20 forKeyedSubscript:&off_100369640];

    [v5 tripInterfaceTypeEngagementWeight];
    v21 = [NSNumber numberWithFloat:?];
    [v8 setObject:v21 forKeyedSubscript:&off_100369658];

    [v5 stateOfMindInterfaceTypeEngagementWeight];
    v22 = [NSNumber numberWithFloat:?];
    [v8 setObject:v22 forKeyedSubscript:&off_100369670];

    [v5 clusteringInterfaceTypeEngagementWeight];
    v23 = [NSNumber numberWithFloat:?];
    [v8 setObject:v23 forKeyedSubscript:&off_100369688];

    [v5 thematicSummaryInterfaceTypeEngagementWeight];
    v24 = [NSNumber numberWithFloat:?];
    [v8 setObject:v24 forKeyedSubscript:&off_1003696A0];

    if ([v8 count] != 16)
    {
      v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(MOEventBundleRanking(MORankingParamsMO) *)v8 setRankingParamsFromRankingParamsMO:v25];
      }

      v26 = +[NSAssertionHandler currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"MORankingParams+CoreDataTransformable.m" lineNumber:45 description:{@"Mismatch between ranking modelParameterDict, %lu and bundle interface type, %lu (in %s:%d)", objc_msgSend(v8, "count"), 16, "-[MOEventBundleRanking(MORankingParamsMO) setRankingParamsFromRankingParamsMO:]", 45}];
    }

    v27 = objc_alloc_init(NSMutableDictionary);
    [v5 wisdomEvergreenTypeEngagementWeight];
    v28 = [NSNumber numberWithFloat:?];
    [v27 setObject:v28 forKeyedSubscript:@"WISDOM"];

    [v5 gratitudeEvergreenTypeEngagementWeight];
    v29 = [NSNumber numberWithFloat:?];
    [v27 setObject:v29 forKeyedSubscript:@"GRATITUDE"];

    [v5 kindnessEvergreenTypeEngagementWeight];
    v30 = [NSNumber numberWithFloat:?];
    [v27 setObject:v30 forKeyedSubscript:@"KINDNESS"];

    [v5 purposeEvergreenTypeEngagementWeight];
    v31 = [NSNumber numberWithFloat:?];
    [v27 setObject:v31 forKeyedSubscript:@"PURPOSE"];

    [v5 resilienceEvergreenTypeEngagementWeight];
    v32 = [NSNumber numberWithFloat:?];
    [v27 setObject:v32 forKeyedSubscript:@"RESILIENCE"];

    [v5 creativityEvergreenTypeEngagementWeight];
    v33 = [NSNumber numberWithFloat:?];
    [v27 setObject:v33 forKeyedSubscript:@"CREATIVITY"];

    [(MOEventBundleRanking *)self setDynamicModelParameterDict:v8];
    v34 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "dynamicModelParameterDict was set to %@ using Moments DB", buf, 0xCu);
    }

    [(MOEventBundleRanking *)self setEvergreenEngagementScoreParameterDict:v27];
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "evergreenEngagementScoreParameterDict was set to %@ using Moments DB", buf, 0xCu);
    }
  }
}

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken_2 != -1)
  {
    +[MOEventBundleRanking defineClassCollections];
  }
}

void __46__MOEventBundleRanking_defineClassCollections__block_invoke(id a1)
{
  v24[0] = GEOPOICategoryAmusementPark;
  v24[1] = GEOPOICategoryAquarium;
  v24[2] = GEOPOICategoryBeach;
  v24[3] = GEOPOICategoryBrewery;
  v24[4] = GEOPOICategoryCafe;
  v24[5] = GEOPOICategoryFitnessCenter;
  v24[6] = GEOPOICategoryLibrary;
  v24[7] = GEOPOICategoryMarina;
  v24[8] = GEOPOICategoryMovieTheater;
  v24[9] = GEOPOICategoryMuseum;
  v24[10] = GEOPOICategoryNationalPark;
  v24[11] = GEOPOICategoryNightlife;
  v24[12] = GEOPOICategoryPark;
  v24[13] = GEOPOICategoryPlayground;
  v24[14] = GEOPOICategoryReligiousSite;
  v24[15] = GEOPOICategoryRestaurant;
  v24[16] = GEOPOICategoryStadium;
  v24[17] = GEOPOICategoryTheater;
  v24[18] = GEOPOICategoryWinery;
  v24[19] = GEOPOICategoryZoo;
  v24[20] = GEOPOICategoryCampground;
  v24[21] = GEOPOICategoryBaseball;
  v24[22] = GEOPOICategoryBasketball;
  v24[23] = GEOPOICategoryBeauty;
  v24[24] = GEOPOICategoryBowling;
  v24[25] = GEOPOICategoryCastle;
  v24[26] = GEOPOICategoryConventionCenter;
  v24[27] = GEOPOICategoryDistillery;
  v24[28] = GEOPOICategoryFairground;
  v24[29] = GEOPOICategoryFishing;
  v24[30] = GEOPOICategoryFortress;
  v24[31] = GEOPOICategoryGolf;
  v24[32] = GEOPOICategoryGoKart;
  v24[33] = GEOPOICategoryHiking;
  v24[34] = GEOPOICategoryKayaking;
  v24[35] = GEOPOICategoryLandmark;
  v24[36] = GEOPOICategoryMiniGolf;
  v24[37] = GEOPOICategoryMusicVenue;
  v24[38] = GEOPOICategoryNationalMonument;
  v24[39] = GEOPOICategoryPlanetarium;
  v24[40] = GEOPOICategoryRockClimbing;
  v24[41] = GEOPOICategoryRVPark;
  v24[42] = GEOPOICategorySkatePark;
  v24[43] = GEOPOICategorySkating;
  v24[44] = GEOPOICategorySkiing;
  v24[45] = GEOPOICategorySoccer;
  v24[46] = GEOPOICategorySpa;
  v24[47] = GEOPOICategorySurfing;
  v24[48] = GEOPOICategorySwimming;
  v24[49] = GEOPOICategoryTennis;
  v24[50] = GEOPOICategoryVolleyball;
  v1 = [NSArray arrayWithObjects:v24 count:51];
  v2 = interestingPOIcategories;
  interestingPOIcategories = v1;

  v23[0] = GEOPOICategoryAirportGate;
  v23[1] = GEOPOICategoryAirportTerminal;
  v23[2] = GEOPOICategoryATM;
  v23[3] = GEOPOICategoryBank;
  v23[4] = GEOPOICategoryCarRental;
  v23[5] = GEOPOICategoryEVCharger;
  v23[6] = GEOPOICategoryGasStation;
  v23[7] = GEOPOICategoryLaundry;
  v23[8] = GEOPOICategoryParking;
  v23[9] = GEOPOICategoryPostOffice;
  v23[10] = GEOPOICategoryPublicTransport;
  v23[11] = GEOPOICategoryRestroom;
  v23[12] = GEOPOICategoryAutomotiveRepair;
  v23[13] = GEOPOICategoryMailbox;
  v3 = [NSArray arrayWithObjects:v23 count:14];
  v4 = nonInterestingPOIcategories;
  nonInterestingPOIcategories = v3;

  v22[0] = GEOPOICategoryHospital;
  v22[1] = GEOPOICategoryPolice;
  v22[2] = GEOPOICategoryFireStation;
  v22[3] = GEOPOICategoryPharmacy;
  v22[4] = GEOPOICategoryAnimalService;
  v5 = [NSArray arrayWithObjects:v22 count:5];
  v6 = sensitivePOICategories;
  sensitivePOICategories = v5;

  v21[0] = GEOPOICategoryHotel;
  v21[1] = GEOPOICategoryFoodMarket;
  v21[2] = GEOPOICategoryBakery;
  v21[3] = GEOPOICategorySchool;
  v21[4] = GEOPOICategoryStore;
  v21[5] = GEOPOICategoryUniversity;
  v7 = [NSArray arrayWithObjects:v21 count:6];
  v8 = neutralPOIcategories;
  neutralPOIcategories = v7;

  v9 = enrichedActionTags;
  enrichedActionTags = &off_10036E040;

  v10 = interestingTimeTags;
  interestingTimeTags = &off_10036E058;

  v11 = visitActionTags;
  visitActionTags = &off_10036E070;

  v12 = visitSubtypeVariants;
  visitSubtypeVariants = &off_10036E088;

  v13 = dailyMediaSubtypeVariants;
  dailyMediaSubtypeVariants = &off_10036E0A0;

  v14 = MediaWeeklySummarySubtypeVariants;
  MediaWeeklySummarySubtypeVariants = &off_10036E0B8;

  v15 = timeAtHomeSubtypeVariants;
  timeAtHomeSubtypeVariants = &off_10036E0D0;

  v16 = phoneSensedWalkingVariants;
  phoneSensedWalkingVariants = &off_10036E0E8;

  v17 = workoutSubtypeVariants;
  workoutSubtypeVariants = &off_10036E100;

  v18 = thirdPartyMediaSubtypeVariants;
  thirdPartyMediaSubtypeVariants = &off_10036E118;

  v19 = [NSSet setWithObject:&stru_1003416B0];
  v20 = emptyStringSet;
  emptyStringSet = v19;
}

- (id)generateRankingInput:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MOEventBundleRanking *)self _fetchBundleInforForRanking:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_fetchBundleInforForRanking:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [v4 bundleIdentifier];
  [v6 setBundleIdentifier:v7];

  v8 = [v4 suggestionID];
  [v6 setSuggestionIdentifier:v8];

  v9 = [v4 events];
  [v6 setEvents:v9];

  v10 = [v4 subSuggestionIDs];
  [v6 setSubSuggestionIDs:v10];

  [(MOEventBundleRanking *)self _fillRecencyInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillRichnessInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillDistincnessInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillHeuristicsInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillQualityInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillEngagementInfoForRanking:v6 forBundle:v4];
  [(MOEventBundleRanking *)self _fillCurationInfoForRanking:v6 forBundle:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)_fillRecencyInfoForRanking:(id)a3 forBundle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 endDate];
  v8 = +[NSDate date];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9 / -86400.0;
  *&v10 = v10;
  [v6 setBundleRecencyDaysElapsed:v10];

  v11 = [v5 startDate];
  [v6 setBundleStartDate:v11];

  v12 = [v5 endDate];

  [v6 setBundleEndDate:v12];
}

- (void)_fillCurationInfoForRanking:(id)a3 forBundle:(id)a4
{
  v6 = visitSubtypeVariants;
  v7 = a4;
  v8 = a3;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 bundleSubType]);
  v10 = [v6 containsObject:v9];

  v11 = [v7 place];
  if ([v11 placeUserType] == 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v8 setIsWorkVisit:v12];

  v13 = [v7 metaDataForRank];

  v14 = [v13 objectForKeyedSubscript:@"VisitDuration"];
  [v14 floatValue];
  v16 = v15;

  v19 = [(NSDictionary *)self->_curationParameterDict objectForKeyedSubscript:@"shortVisitDurationThresholdInSec"];
  [v19 floatValue];
  if (v16 < v17)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  [v8 setIsShortVisit:v18];
}

- (void)_fillQualityInfoForRanking:(id)a3 forBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 action];
  v8 = [v7 actionType];
  v9 = 0.0;
  if (v8)
  {
    *&v9 = 0.5;
  }

  [v5 setIsBundleActionSpecific:v9];

  v10 = enrichedActionTags;
  v11 = [v6 action];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 actionType]);
  LODWORD(v10) = [v10 containsObject:v12];

  if (v10)
  {
    [v5 isBundleActionSpecific];
    if ((*&v13 + 0.5) > 1.0)
    {
      LODWORD(v13) = 1.0;
      [v5 setIsBundleActionSpecific:v13];
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = [v6 action];
    if ([v14 actionType]!= 1)
    {
      goto LABEL_12;
    }

    v15 = [v6 action];
    v16 = [v15 actionSubtype];

    if (v16 != 4)
    {
      goto LABEL_14;
    }

    [v5 isBundleActionSpecific];
    if ((*&v17 + 0.5) > 1.0)
    {
      LODWORD(v17) = 1.0;
      [v5 setIsBundleActionSpecific:v17];
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }

LABEL_12:

      goto LABEL_14;
    }
  }

  [v5 isBundleActionSpecific];
  *&v19 = v18 + 0.5;
  [v5 setIsBundleActionSpecific:v19];
LABEL_14:
  v20 = [v6 time];
  v22 = 0.0;
  if ([v20 timeTag])
  {
    *&v21 = 0.5;
  }

  else
  {
    *&v21 = 0.0;
  }

  [v5 setIsBundleTimeTagSpecific:v21];

  v23 = interestingTimeTags;
  v24 = [v6 time];
  v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 timeTag]);
  LODWORD(v23) = [v23 containsObject:v25];

  if (v23)
  {
    [v5 isBundleTimeTagSpecific];
    if ((*&v26 + 0.5) <= 1.0)
    {
      [v5 isBundleTimeTagSpecific];
      *&v29 = v28 + 0.5;
      [v5 setIsBundleTimeTagSpecific:v29];
    }

    else
    {
      LODWORD(v26) = 1.0;
      [v5 setIsBundleTimeTagSpecific:v26];
      v27 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }
    }
  }

  v30 = [v6 place];
  v31 = [v30 placeType];

  if (v31 > 4)
  {
    if (v31 <= 99)
    {
      if (v31 == 5)
      {
        v22 = 0.2;
        goto LABEL_38;
      }

      if (v31 != 6)
      {
        goto LABEL_39;
      }
    }

    else if (v31 != 100 && v31 != 101 && v31 != 102)
    {
      goto LABEL_39;
    }

LABEL_37:
    v22 = 1.0;
    goto LABEL_38;
  }

  if (v31 > 2)
  {
    if (v31 != 3)
    {
      v22 = 0.4;
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v31 < 2)
  {
LABEL_38:
    *&v32 = v22;
    [v5 setIsBundlePlaceTypeSpecific:v32];
    goto LABEL_39;
  }

  if (v31 == 2)
  {
    v22 = 0.8;
    goto LABEL_38;
  }

LABEL_39:
  v33 = [v6 place];
  v34 = [v33 placeUserType];

  if ((v34 - 1) < 4)
  {
    goto LABEL_40;
  }

  if (!v34)
  {
    v35 = 0.0;
    goto LABEL_41;
  }

  if (v34 == 100)
  {
LABEL_40:
    LODWORD(v35) = 1.0;
LABEL_41:
    [v5 setIsBundlePlaceTypeSpecific:v35];
  }

  [v5 isBundlePlaceTypeSpecific];
  v37 = v36;
  [v5 isBundleTimeTagSpecific];
  v39 = v37 + v38;
  [v5 isBundleActionSpecific];
  *&v41 = v39 + v40;
  [v5 setLabelSpecificityNormalized:v41];
  v42 = [v6 persons];
  v43 = [v42 count];

  if (v43)
  {
    [v5 labelSpecificityNormalized];
    if ((*&v44 + 0.5) <= 4.0)
    {
      [v5 labelSpecificityNormalized];
      *&v47 = v46 + 0.5;
      [v5 setLabelSpecificityNormalized:v47];
    }

    else
    {
      LODWORD(v44) = 4.0;
      [v5 setLabelSpecificityNormalized:v44];
      v45 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _fillQualityInfoForRanking:forBundle:];
      }
    }
  }

  [v5 labelSpecificityNormalized];
  *&v49 = v48 * 0.25;
  [v5 setLabelSpecificityNormalized:v49];
  [v5 labelSpecificityNormalized];
  v51 = v50;
  v52 = [v6 metaDataForRank];
  v53 = [v52 objectForKey:@"LabelConfidence"];
  [v53 floatValue];
  *&v55 = v51 * v54;
  [v5 setLabelQualityScore:v55];

  v56 = [v6 metaDataForRank];
  v57 = [v56 objectForKey:@"TimeCorrelationScore"];

  if (v57)
  {
    v58 = [v6 metaDataForRank];
    v59 = [v58 objectForKey:@"TimeCorrelationScore"];
    [v59 floatValue];
    [v5 setTimeCorrelationScoreFeature:?];
  }

  else
  {
    [v5 setTimeCorrelationScoreFeature:0.0];
  }
}

- (void)_fillHeuristicsInfoForRanking:(id)a3 forBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 photoTraits];
  v9 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:v8];

  v280 = v7;
  v281 = v9;
  v279 = self;
  if (v9)
  {
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    v10 = [(MOEventBundleRanking *)self holidayTuningParameters];
    v11 = [v10 allValues];

    v12 = [v11 countByEnumeratingWithState:&v286 objects:v291 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v287;
LABEL_4:
      v15 = v11;
      v16 = 0;
      while (1)
      {
        if (*v287 != v14)
        {
          objc_enumerationMutation(v15);
        }

        v17 = *(*(&v286 + 1) + 8 * v16);
        v18 = [v281 holidayIdentifier];
        v19 = [v17 objectForKeyedSubscript:@"holidayIdentifier"];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          v21 = [v281 relevantAssetUUIDs];
          v22 = [v21 count];
          v23 = [v17 objectForKeyedSubscript:@"minPhotoCount"];
          v24 = [v23 intValue];

          if (v22 < v24)
          {
            break;
          }
        }

        if (v13 == ++v16)
        {
          v11 = v15;
          v13 = [v15 countByEnumeratingWithState:&v286 objects:v291 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v15 = [v281 relevantAssetUUIDs];
      [v6 setNumHolidayAssets:{objc_msgSend(v15, "count")}];
    }

    self = v279;
    v7 = v280;
  }

  v25 = [v7 photoTraits];
  v26 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:v25];

  if (v26)
  {
    v27 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v26 eventBundle:v7];
    if (v27)
    {
      v28 = [v26 relevantAssetUUIDs];
      [v6 setNumBirthdayAssets:{objc_msgSend(v28, "count")}];
    }
  }

  v278 = v26;
  v29 = [v7 resources];
  if (v29)
  {
    v30 = v29;
    v31 = [v7 resources];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
      v34 = [v7 resources];
      v35 = [v34 filteredArrayUsingPredicate:v33];

      if ([v35 count])
      {
        [v6 setNumInviteEvents:{objc_msgSend(v35, "count")}];
      }
    }
  }

  if ([v7 interfaceType] == 13)
  {
    [(MOEventBundleRanking *)self updateTripMetaDataForRank:v7];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleRanking _fillHeuristicsInfoForRanking:v7 forBundle:?];
    }
  }

  v37 = [v7 metaDataForRank];
  v38 = [v37 objectForKeyedSubscript:@"PoiCategory"];

  v39 = +[NSNull null];
  v277 = v38;
  if ([v38 isEqual:v39])
  {

LABEL_29:
    [v6 setInterestingPOIFeature:0.0];
    goto LABEL_31;
  }

  v40 = [v7 isSensitive];

  if (v40)
  {
    goto LABEL_29;
  }

  v41 = [v7 metaDataForRank];
  v42 = [v41 objectForKeyedSubscript:@"PoiCategory"];
  [v42 floatValue];
  [v6 setInterestingPOIFeature:?];

LABEL_31:
  [v6 setFamiliarityIndexFeature:0.0];
  [v6 setDistanceToHomeFeatureNormalized:0.0];
  v43 = [v7 metaDataForRank];
  v44 = [v43 objectForKey:@"FamiliarityIndex"];

  if (!v44)
  {
    goto LABEL_56;
  }

  v45 = [v7 metaDataForRank];
  v46 = [v45 objectForKey:@"FamiliarityIndex"];
  [v46 floatValue];
  v48 = v47;

  v49 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v50 = [v49 objectForKeyedSubscript:@"FIDownRankThreshold"];
  [v50 floatValue];
  v52 = v51;

  if (v48 != 0.0 || ([v6 interestingPOIFeature], v54 = 1.0, *&v53 != 1.0) && (objc_msgSend(v6, "numPhotoAssetsResourcesNormalized"), *&v53 <= 0.0))
  {
    if (v48 > 0.0 && v48 <= v52 && (([v6 interestingPOIFeature], *&v53 == 1.0) || (objc_msgSend(v6, "numPhotoAssetsResourcesNormalized"), *&v53 > 0.0)))
    {
      v54 = (v48 * -4.0) + 3.0;
    }

    else
    {
      v55 = v48;
      if (v48 > v52 && self->_recommendedTabVisitFIThreshold >= v55 && ([v6 numPhotoAssetsResourcesNormalized], *&v53 == 0.0))
      {
        v54 = (v48 * -6.67) + 5.0;
      }

      else
      {
        if (v48 >= 1.0)
        {
          goto LABEL_48;
        }

        if (self->_recommendedTabVisitFIThreshold >= v55)
        {
          goto LABEL_48;
        }

        [v6 numPhotoAssetsResourcesNormalized];
        v54 = -1.0;
        if (*&v53 != 0.0)
        {
          goto LABEL_48;
        }
      }
    }
  }

  *&v53 = v54;
  [v6 setFamiliarityIndexFeature:v53];
LABEL_48:
  [v6 familiarityIndexFeature];
  if (*&v56 > 1.0)
  {
    LODWORD(v56) = 1.0;
    [v6 setFamiliarityIndexFeature:v56];
  }

  v57 = [v7 metaDataForRank];
  v58 = [v57 objectForKeyedSubscript:@"DistanceToHome"];
  [v58 floatValue];
  v60 = v59;

  v61 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v62 = [v61 objectForKeyedSubscript:@"distanceToHomeThreshold"];
  [v62 floatValue];
  v64 = v63;

  [v6 interestingPOIFeature];
  if (*&v65 != -1.0 && v48 >= 0.0 && v48 <= v52 && v60 > 0.0)
  {
    *&v65 = v60 / v64;
    [v6 setDistanceToHomeFeatureNormalized:v65];
    if (v60 > v64)
    {
      LODWORD(v66) = 1.0;
      [v6 setDistanceToHomeFeatureNormalized:v66];
    }
  }

LABEL_56:
  [v6 setNumFamilyNormalized:0.0];
  [v6 setNumKidsNormalized:0.0];
  [v6 setNumFriendsNormalized:0.0];
  [v6 setNumCoworkersNormalized:0.0];
  [v6 setNumPetsNormalized:0.0];
  [v6 setNumOtherPersonsNormalized:0.0];
  v67 = [v7 persons];
  v68 = [v67 count];

  if (v68)
  {
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v69 = [v7 persons];
    v70 = [v69 countByEnumeratingWithState:&v282 objects:v290 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v283;
      do
      {
        v73 = 0;
        do
        {
          if (*v283 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v282 + 1) + 8 * v73);
          if (([v74 isMePerson] & 1) == 0)
          {
            v75 = [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v74];
            if (v75 > 20)
            {
              switch(v75)
              {
                case 21:
                  [v6 numFriendsNormalized];
                  *&v83 = v82 + 1.0;
                  [v6 setNumFriendsNormalized:v83];
                  break;
                case 22:
                  [v6 numCoworkersNormalized];
                  *&v87 = v86 + 1.0;
                  [v6 setNumCoworkersNormalized:v87];
                  break;
                case 27:
                  [v6 numPetsNormalized];
                  *&v79 = v78 + 1.0;
                  [v6 setNumPetsNormalized:v79];
                  break;
              }
            }

            else
            {
              switch(v75)
              {
                case 1:
                  [v6 numOtherPersonsNormalized];
                  *&v81 = v80 + 1.0;
                  [v6 setNumOtherPersonsNormalized:v81];
                  break;
                case 4:
                  [v6 numFamilyNormalized];
                  *&v85 = v84 + 1.0;
                  [v6 setNumFamilyNormalized:v85];
                  break;
                case 15:
                  [v6 numKidsNormalized];
                  *&v77 = v76 + 1.0;
                  [v6 setNumKidsNormalized:v77];
                  break;
              }
            }
          }

          v73 = v73 + 1;
        }

        while (v71 != v73);
        v88 = [v69 countByEnumeratingWithState:&v282 objects:v290 count:16];
        v71 = v88;
      }

      while (v88);
    }

    v7 = v280;
  }

  v89 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking _fillHeuristicsInfoForRanking:v6 forBundle:?];
  }

  [v6 numFamilyNormalized];
  v90 = 1.0;
  v91 = *&v92 < 2.0;
  LODWORD(v92) = 1.0;
  if (v91)
  {
    [v6 numFamilyNormalized];
    *&v92 = *&v92 * 0.5;
  }

  [v6 setNumFamilyNormalized:v92];
  [v6 numKidsNormalized];
  if (*&v93 < 2.0)
  {
    [v6 numKidsNormalized];
    v90 = *&v93 * 0.5;
  }

  *&v93 = v90;
  [v6 setNumKidsNormalized:v93];
  [v6 numFriendsNormalized];
  v94 = 1.0;
  v91 = *&v95 < 2.0;
  LODWORD(v95) = 1.0;
  if (v91)
  {
    [v6 numFriendsNormalized];
    *&v95 = *&v95 * 0.5;
  }

  [v6 setNumFriendsNormalized:v95];
  [v6 numCoworkersNormalized];
  if (*&v96 < 2.0)
  {
    [v6 numCoworkersNormalized];
    v94 = *&v96 * 0.5;
  }

  *&v96 = v94;
  [v6 setNumCoworkersNormalized:v96];
  [v6 numPetsNormalized];
  v97 = 1.0;
  v91 = *&v98 < 2.0;
  LODWORD(v98) = 1.0;
  if (v91)
  {
    [v6 numPetsNormalized];
    *&v98 = *&v98 * 0.5;
  }

  [v6 setNumPetsNormalized:v98];
  [v6 numOtherPersonsNormalized];
  if (*&v99 < 2.0)
  {
    [v6 numOtherPersonsNormalized];
    v97 = *&v99 * 0.5;
  }

  *&v99 = v97;
  [v6 setNumOtherPersonsNormalized:v99];
  [v6 setCallDurationFeatureNormalized:0.0];
  v100 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v101 = [v100 objectForKeyedSubscript:@"callDurationThreshold"];
  [v101 floatValue];
  v103 = v102;

  v104 = [v7 metaDataForRank];
  v105 = [v104 objectForKey:@"callDuration"];
  [v105 doubleValue];
  v107 = v106;

  v108 = [v7 metaDataForRank];
  v109 = v108;
  if (v107 <= 0.0)
  {
    v114 = [v108 objectForKey:@"dailyAggregateCallDuration"];
    [v114 floatValue];
    v116 = v115;

    if (v116 <= 0.0)
    {
      goto LABEL_103;
    }

    v117 = [v7 metaDataForRank];
    v118 = [v117 objectForKey:@"dailyAggregateCallDuration"];
    [v118 floatValue];
    v112 = v119;
  }

  else
  {
    v110 = [v108 objectForKey:@"callDuration"];
    [v110 floatValue];
    v112 = v111;
  }

  *&v113 = v112 / v103;
  [v6 setCallDurationFeatureNormalized:v113];
  if (v112 > v103)
  {
    LODWORD(v120) = 1.0;
    [v6 setCallDurationFeatureNormalized:v120];
  }

LABEL_103:
  [v6 setBurstyInteractionCountFeatureNormalized:0.0];
  v121 = [v7 metaDataForRank];
  v122 = [v121 objectForKey:@"burstyInteractionCount"];
  [v122 doubleValue];
  v124 = v123;

  if (v124 > 0.0)
  {
    v125 = [v7 metaDataForRank];
    v126 = [v125 objectForKey:@"burstyInteractionCount"];
    [v126 floatValue];
    v128 = v127;

    v129 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v130 = [v129 objectForKeyedSubscript:@"burstyInteractionCountThreshold"];
    *&v131 = v128 / [v130 intValue];
    [v6 setBurstyInteractionCountFeatureNormalized:v131];

    v132 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v133 = [v132 objectForKeyedSubscript:@"burstyInteractionCountThreshold"];
    v134 = [v133 intValue];

    if (v128 > v134)
    {
      LODWORD(v135) = 1.0;
      [v6 setBurstyInteractionCountFeatureNormalized:v135];
    }
  }

  [v6 setMultipleInteractionTypesFeature:0];
  v136 = [v7 metaDataForRank];
  v137 = [v136 objectForKey:@"multipleInteractionTypes"];
  v138 = [v137 BOOLValue];

  if (v138)
  {
    [v6 setMultipleInteractionTypesFeature:1];
  }

  [v6 setContactLocationWorkFeature:0];
  v139 = [v7 metaDataForRank];
  v140 = [v139 objectForKey:@"contactLocationWork"];
  v141 = [v140 BOOLValue];

  if (v141)
  {
    [v6 setContactLocationWorkFeature:0xFFFFFFFFLL];
  }

  v142 = [v7 metaDataForRank];
  v143 = [v142 objectForKeyedSubscript:@"isFamilyContact"];
  [v143 floatValue];
  [v6 setIsFamilyContact:?];

  v144 = [v7 metaDataForRank];
  v145 = [v144 objectForKeyedSubscript:@"isCoworkerContact"];
  [v145 floatValue];
  [v6 setIsCoworkerContact:?];

  v146 = [v7 metaDataForRank];
  v147 = [v146 objectForKeyedSubscript:@"isRepetitiveContact"];
  [v6 setIsRepetitiveContact:{objc_msgSend(v147, "BOOLValue")}];

  v148 = [v7 metaDataForRank];
  v149 = [v148 objectForKeyedSubscript:@"isGroupConversation"];
  [v6 setGroupConversationFeature:{objc_msgSend(v149, "BOOLValue")}];

  [v6 setWorkoutDurationFeatureNormalized:0.0];
  v150 = [v7 metaDataForRank];
  v151 = [v150 objectForKey:@"WorkoutDuration"];
  [v151 floatValue];
  v153 = v152;

  v154 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v155 = [v154 objectForKeyedSubscript:@"workoutDurationThreshold"];
  [v155 floatValue];
  v157 = v156;

  if ([v6 bundleSubType] == 202)
  {
    v159 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v160 = [v159 objectForKeyedSubscript:@"WeeklySummaryWorkoutDurationThreshold"];
    [v160 floatValue];
    v157 = v161;
  }

  if (v153 > 0.0)
  {
    *&v158 = v153 / v157;
    if (v153 >= v157)
    {
      *&v158 = 1.0;
    }

    [v6 setWorkoutDurationFeatureNormalized:v158];
  }

  v162 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v163 = [v162 objectForKeyedSubscript:@"mediaPlayTimeThreshold"];
  [v163 floatValue];
  v165 = v164;

  v166 = MediaWeeklySummarySubtypeVariants;
  v167 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 bundleSubType]);
  LODWORD(v166) = [v166 containsObject:v167];

  if (v166)
  {
    v168 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v169 = [v168 objectForKeyedSubscript:@"weeklySummaryMediaPlayTimeThreshold"];
    [v169 floatValue];
    v165 = v170;
  }

  v171 = [v7 metaDataForRank];
  v172 = [v171 objectForKey:@"MediaActionIsRepeat"];
  [v172 floatValue];
  [v6 setMediaScoreFeatureNormalized:?];

  v173 = [v7 metaDataForRank];
  v174 = [v173 objectForKey:@"MediaTotalPlayTime"];
  [v174 floatValue];
  v176 = v175;

  if (v176 > 0.0)
  {
    [v6 mediaScoreFeatureNormalized];
    if (v176 >= v165)
    {
      *&v177 = *&v177 + 0.5;
    }

    else
    {
      v177 = v176 * 0.5 / v165 + *&v177;
      *&v177 = v177;
    }

    [v6 setMediaScoreFeatureNormalized:v177];
  }

  [v6 setItemFromMeFeature:0];
  v178 = [v7 metaDataForRank];
  v179 = [v178 objectForKey:@"ItemShareDirection"];
  if ([v179 intValue] == 1)
  {

LABEL_126:
    [v6 setItemFromMeFeature:1];
    goto LABEL_127;
  }

  v180 = [v7 metaDataForRank];
  v181 = [v180 objectForKey:@"ItemShareDirection"];
  v182 = [v181 intValue];

  if (v182 == 3)
  {
    goto LABEL_126;
  }

LABEL_127:
  v183 = 0.0;
  [v6 setShareCountFeatureNormalized:0.0];
  v184 = v280;
  v185 = [v280 metaDataForRank];
  v186 = [v185 objectForKey:@"ItemAttributionsCount"];
  v187 = [v186 intValue];

  if (v187 >= 1)
  {
    v188 = [v280 metaDataForRank];
    v189 = [v188 objectForKey:@"ItemAttributionsCount"];
    [v189 floatValue];
    v191 = v190;

    v192 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v193 = [v192 objectForKeyedSubscript:@"shareCountThreshold"];
    [v193 floatValue];
    *&v195 = v191 / v194;
    [v6 setShareCountFeatureNormalized:v195];

    v196 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v197 = [v196 objectForKeyedSubscript:@"shareCountThreshold"];
    [v197 floatValue];
    v199 = v198;

    if (v191 > v199)
    {
      LODWORD(v200) = 1.0;
      [v6 setShareCountFeatureNormalized:v200];
    }
  }

  v201 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  v202 = [v201 objectForKeyedSubscript:@"maxPeopleCountFromSocialContext"];
  [v202 floatValue];
  v204 = v203;

  v205 = [v280 metaDataForRank];
  v206 = [v205 objectForKey:@"PeopleCountWeightedAverage"];

  if (v206)
  {
    [v206 floatValue];
    v183 = *&v207 / v204;
  }

  *&v207 = v183;
  [v6 setPeopleCountWeightedAverageNormalized:v207];
  [v6 peopleCountWeightedAverageNormalized];
  if (*&v208 > 1.0)
  {
    LODWORD(v208) = 1.0;
    [v6 setPeopleCountWeightedAverageNormalized:v208];
  }

  v209 = [v280 metaDataForRank];
  v210 = [v209 objectForKey:@"PeopleCountMax"];

  if (v210)
  {
    [v210 floatValue];
    *&v211 = *&v211 / v204;
  }

  else
  {
    v211 = 0.0;
  }

  v276 = v206;
  [v6 setPeopleCountMaxNormalized:v211];
  [v6 peopleCountMaxNormalized];
  if (*&v212 > 1.0)
  {
    LODWORD(v212) = 1.0;
    [v6 setPeopleCountMaxNormalized:v212];
  }

  v213 = [v280 endDate];
  v214 = [v280 startDate];
  [v213 timeIntervalSinceDate:v214];
  v216 = v215;

  if (v216 <= 0.0)
  {
    [v6 setPeopleCountWeightedSumNormalized:0.0];
  }

  else
  {
    v217 = [v280 endDate];
    v218 = [v280 startDate];
    [v217 timeIntervalSinceDate:v218];
    v220 = v219;

    v221 = [v280 metaDataForRank];
    v222 = [v221 objectForKey:@"PeopleCountWeightedSum"];

    if (v222)
    {
      v223 = v220 * v204;
      [v222 floatValue];
      *&v224 = *&v224 / v223;
    }

    else
    {
      v224 = 0.0;
    }

    [v6 setPeopleCountWeightedSumNormalized:v224];
    [v6 peopleCountWeightedSumNormalized];
    if (*&v225 > 1.0)
    {
      LODWORD(v225) = 1.0;
      [v6 setPeopleCountWeightedSumNormalized:v225];
    }
  }

  v226 = [v280 metaDataForRank];
  v227 = [v226 objectForKey:@"PeopleDensityWeightedAverage"];

  v229 = 0.0;
  if (v227)
  {
    [v6 interestingPOIFeature];
    if (v230 > 0.0 || [v280 interfaceType] == 1)
    {
      [v227 floatValue];
      v229 = *&v228 / v204;
    }
  }

  *&v228 = v229;
  [v6 setPeopleDensityWeightedAverageNormalized:v228];
  [v6 peopleDensityWeightedAverageNormalized];
  if (*&v231 > 1.0)
  {
    LODWORD(v231) = 1.0;
    [v6 setPeopleDensityWeightedAverageNormalized:v231];
  }

  v232 = [v280 metaDataForRank];
  v233 = [v232 objectForKey:@"PeopleDensityMax"];

  if (v233)
  {
    [v233 floatValue];
    *&v234 = *&v234 / v204;
  }

  else
  {
    v234 = 0.0;
  }

  [v6 setPeopleDensityMaxNormalized:v234];
  [v6 peopleDensityMaxNormalized];
  v236 = 1.0;
  if (*&v235 > 1.0)
  {
    LODWORD(v235) = 1.0;
    [v6 setPeopleDensityMaxNormalized:v235];
  }

  v237 = [v280 metaDataForRank];
  v238 = [v237 objectForKeyedSubscript:@"TimeAtHomeDuration"];
  [v238 floatValue];
  v240 = v239;
  v241 = [(MOEventBundleRanking *)v279 rankingScoreThresholdDict];
  v242 = [v241 objectForKeyedSubscript:@"timeAtHomeDurationThreshold"];
  [v242 floatValue];
  *&v244 = v240 / v243;
  [v6 setTimeAtHomeDuration:v244];

  v245 = [v280 metaDataForRank];
  v246 = [v245 objectForKey:@"StateOfMindLabels"];

  v247 = [(MOEventBundleRanking *)v279 rankingScoreThresholdDict];
  v248 = [v247 objectForKeyedSubscript:@"stateOfMindLabelCountThreshold"];
  [v248 doubleValue];
  v250 = v249;

  v251 = [v246 count];
  if (v250 > v251)
  {
    v251 = [v246 count] / v250;
    v236 = v251;
  }

  *&v251 = v236;
  [v6 setStateOfMindLabelCountNormalized:v251];
  v252 = [v280 metaDataForRank];
  v253 = [v252 objectForKey:@"StateOfMindDomains"];

  v254 = [(MOEventBundleRanking *)v279 rankingScoreThresholdDict];
  v255 = [v254 objectForKeyedSubscript:@"stateOfMindDomainCountThreshold"];
  [v255 doubleValue];
  v257 = v256;

  v258 = [v253 count];
  LODWORD(v259) = 1.0;
  if (v257 > v258)
  {
    v259 = [v253 count] / v257;
    *&v259 = v259;
  }

  [v6 setStateOfMindDomainCountNormalized:v259];
  v260 = [v280 metaDataForRank];
  v261 = [v260 objectForKey:@"StateOfMindLoggedIn3pApp"];
  *&v262 = [v261 BOOLValue];
  [v6 setStateOfMindLoggedIn3pApp:v262];

  v263 = [v280 metaDataForRank];
  v264 = [v263 objectForKey:@"StateOfMindLoggedInJournalApp"];
  *&v265 = [v264 BOOLValue];
  [v6 setStateOfMindLoggedInJournalApp:v265];

  [v6 setIsBundleAggregated:{objc_msgSend(v280, "isAggregatedAndSuppressed")}];
  [v6 setSummarizationGranularity:{objc_msgSend(v280, "summarizationGranularity")}];
  [v6 setAvgSubBundleGoodnessScores:0.0];
  if ([v280 interfaceType] == 15 || objc_msgSend(v280, "interfaceType") == 16)
  {
    v266 = [v280 clusterMetadata];
    v267 = [v266 subBundleGoodnessScores];
    v268 = [v267 valueForKeyPath:@"@avg.self"];
    [v268 floatValue];
    [v6 setAvgSubBundleGoodnessScores:?];

    v269 = [v280 clusterMetadata];
    v270 = [v269 subBundleGoodnessScores];
    v271 = [v270 valueForKeyPath:@"@max.self"];
    [v271 floatValue];
    [v6 setMaxSubBundleGoodnessScores:?];

    v184 = v280;
    v272 = [v280 clusterMetadata];
    v273 = [v272 subBundleGoodnessScores];
    [v6 setSubBundleCount:{objc_msgSend(v273, "count")}];
  }

  [v6 setIsSensitiveLocation:{objc_msgSend(v184, "isSensitive")}];
  v274 = [v184 metaDataForRank];
  v275 = [v274 objectForKey:@"BusinessContact"];

  [v6 setIsBusinessContact:{objc_msgSend(v275, "isEqualToNumber:", &off_10036BC50)}];
}

- (void)_fillRichnessInfoForRanking:(id)a3 forBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 setBundleInterfaceType:{objc_msgSend(v6, "interfaceType")}];
  [v5 setBundleSubType:{objc_msgSend(v6, "bundleSubType")}];
  [v5 setBundleSuperType:{objc_msgSend(v6, "bundleSuperType")}];
  [v5 setEvergreenType:0];
  [v5 setEvergreenPromptExists:0];
  if ([v6 interfaceType] == 11)
  {
    v7 = [v6 resources];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v6 resources];
      v10 = [v9 firstObject];

      v11 = [v10 name];
      [v5 setEvergreenType:v11];

      v12 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [MOEventBundleRanking _fillRichnessInfoForRanking:v5 forBundle:?];
      }

      v13 = [v10 promptIndexes];
      v14 = [v13 count] == 0;

      if (!v14)
      {
        [v5 setEvergreenPromptExists:1];
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleRanking _fillRichnessInfoForRanking:forBundle:];
        }
      }
    }
  }

  v16 = visitSubtypeVariants;
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 bundleSubType]);
  if (([v16 containsObject:v17] & 1) != 0 || objc_msgSend(v6, "bundleSubType") == 105)
  {
    v18 = 0;
  }

  else
  {
    v37 = phoneSensedWalkingVariants;
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 bundleSubType]);
    if (([v37 containsObject:v16] & 1) == 0 && objc_msgSend(v6, "bundleSuperType") != 10)
    {

LABEL_92:
      [v5 setAllPlaceNames:emptyStringSet];
      goto LABEL_30;
    }

    v18 = 1;
  }

  v19 = [v6 place];
  if (v19)
  {

    if (v18)
    {
    }

    goto LABEL_17;
  }

  v31 = [v6 places];

  if (v18)
  {

    if (!v31)
    {
      goto LABEL_92;
    }
  }

  else
  {

    if (!v31)
    {
      goto LABEL_92;
    }
  }

LABEL_17:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__35;
  v110 = __Block_byref_object_dispose__35;
  v111 = objc_opt_new();
  v20 = [v6 place];
  v21 = [v20 placeName];
  v22 = v21 == 0;

  if (!v22)
  {
    v23 = v107[5];
    v24 = [v6 place];
    v25 = [v24 placeName];
    [v23 addObject:v25];
  }

  v26 = [v6 places];
  v27 = v26 == 0;

  if (!v27)
  {
    v28 = [v6 places];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke;
    v105[3] = &unk_10033E668;
    v105[4] = &v106;
    [v28 enumerateObjectsUsingBlock:v105];
  }

  v29 = [v107[5] count];
  if (v29)
  {
    v30 = [v107[5] copy];
  }

  else
  {
    v30 = emptyStringSet;
  }

  [v5 setAllPlaceNames:v30];
  if (v29)
  {
  }

  _Block_object_dispose(&v106, 8);

LABEL_30:
  if ([v6 bundleSuperType] != 3 || (objc_msgSend(v6, "persons"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v33))
  {
    [v5 setAllContactIdentifiers:emptyStringSet];
  }

  else
  {
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__35;
    v110 = __Block_byref_object_dispose__35;
    v111 = objc_opt_new();
    v34 = [v6 persons];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_2;
    v104[3] = &unk_10033E690;
    v104[4] = &v106;
    [v34 enumerateObjectsUsingBlock:v104];

    v35 = [v107[5] count];
    if (v35)
    {
      v36 = [v107[5] copy];
    }

    else
    {
      v36 = emptyStringSet;
    }

    [v5 setAllContactIdentifiers:v36];
    if (v35)
    {
    }

    _Block_object_dispose(&v106, 8);
  }

  v38 = workoutSubtypeVariants;
  v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 bundleSubType]);
  if ([v38 containsObject:v39])
  {
    goto LABEL_48;
  }

  v40 = phoneSensedWalkingVariants;
  v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 bundleSubType]);
  if (([v40 containsObject:v41] & 1) != 0 || objc_msgSend(v6, "bundleSubType") == 203)
  {

LABEL_48:
    goto LABEL_49;
  }

  v83 = [v6 bundleSubType] == 202;

  if (!v83)
  {
    [v5 setWorkoutTypes:emptyStringSet];
    goto LABEL_61;
  }

LABEL_49:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__35;
  v110 = __Block_byref_object_dispose__35;
  v111 = objc_opt_new();
  v42 = [v6 action];
  v43 = [v42 actionName];
  if (!v43)
  {
LABEL_52:

    goto LABEL_53;
  }

  v44 = [v6 bundleSubType] == 202;

  if (!v44)
  {
    v45 = v107[5];
    v42 = [v6 action];
    v46 = [v42 actionName];
    [v45 addObject:v46];

    goto LABEL_52;
  }

LABEL_53:
  v47 = [v6 actions];
  v48 = v47 == 0;

  if (!v48)
  {
    v49 = [v6 actions];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_3;
    v103[3] = &unk_10033E6B8;
    v103[4] = &v106;
    [v49 enumerateObjectsUsingBlock:v103];
  }

  v50 = [v107[5] count];
  if (v50)
  {
    v51 = [v107[5] copy];
  }

  else
  {
    v51 = emptyStringSet;
  }

  [v5 setWorkoutTypes:v51];
  if (v50)
  {
  }

  _Block_object_dispose(&v106, 8);

LABEL_61:
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_4;
  v101[3] = &unk_10033AA48;
  v52 = objc_alloc_init(NSCountedSet);
  v102 = v52;
  [v6 withResourcesUsingBlock:v101];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v52;
  v53 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
  if (v53)
  {
    v54 = 0;
    v55 = *v98;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v98 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v97 + 1) + 8 * i);
        if ([v57 intValue] && objc_msgSend(v57, "intValue") != 12)
        {
          ++v54;
        }
      }

      v53 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
    }

    while (v53);
    v58 = v54;
  }

  else
  {
    v58 = 0.0;
  }

  v86 = objc_opt_new();
  *&v59 = v58 / 7.0;
  v60 = [NSNumber numberWithFloat:v59];
  [v86 setObject:v60 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];

  [v86 setObject:&off_10036E8E0 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
  [v86 setObject:&off_10036E8E0 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
  [v5 setNumPhotoAssetsResourcesNormalized:0.0];
  [v5 setNumMediaTypeResourcesNormalized:0.0];
  v61 = objc_opt_new();
  [v61 setObject:v86 forKey:@"NumUniqueResourceTypesNormalizedKey"];
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_526;
  v93[3] = &unk_10033E6E0;
  v85 = v5;
  v94 = v85;
  v87 = v61;
  v95 = v87;
  v96 = v6;
  v84 = v96;
  [v96 withResourcesUsingBlock:v93];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v62 = [v87 allKeys];
  v63 = [v62 countByEnumeratingWithState:&v89 objects:v112 count:16];
  if (v63)
  {
    v64 = *v90;
    do
    {
      for (j = 0; j != v63; j = j + 1)
      {
        if (*v90 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = *(*(&v89 + 1) + 8 * j);
        if (([v66 isEqualToString:@"NumUniqueResourceTypesNormalizedKey"] & 1) == 0)
        {
          v67 = [v87 objectForKeyedSubscript:v66];
          v68 = [v67 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
          [v68 floatValue];
          v70 = v69;

          *&v71 = v70 / 13.0;
          if ((v70 / 13.0) > 1.0)
          {
            *&v71 = 1.0;
          }

          v72 = [NSNumber numberWithFloat:v71];
          [v67 setObject:v72 forKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];

          v73 = [v67 objectForKeyedSubscript:@"RankingRichnessSecondaryPriorityScoreKey"];
          [v73 floatValue];
          v75 = v74;

          *&v76 = v75 / 13.0;
          if ((v75 / 13.0) > 1.0)
          {
            *&v76 = 1.0;
          }

          v77 = [NSNumber numberWithFloat:v76];
          [v67 setObject:v77 forKeyedSubscript:@"RankingRichnessSecondaryPriorityScoreKey"];

          v78 = [v67 objectForKeyedSubscript:@"RankingRichnessAuxiliaryPriorityScoreKey"];
          [v78 floatValue];
          v80 = v79;

          *&v81 = v80 / 13.0;
          if ((v80 / 13.0) > 1.0)
          {
            *&v81 = 1.0;
          }

          v82 = [NSNumber numberWithFloat:v81];
          [v67 setObject:v82 forKeyedSubscript:@"RankingRichnessAuxiliaryPriorityScoreKey"];
        }
      }

      v63 = [v62 countByEnumeratingWithState:&v89 objects:v112 count:16];
    }

    while (v63);
  }

  [v85 setBundleRichnessDict:v87];
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 placeName];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 placeName];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 contactIdentifier];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 contactIdentifier];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 actionName];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 actionName];
    [v4 addObject:v5];
  }
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a2 type]);
  [v2 addObject:v3];
}

void __62__MOEventBundleRanking__fillRichnessInfoForRanking_forBundle___block_invoke_526(uint64_t a1, void *a2)
{
  v50 = a2;
  if ([v50 type] == 2)
  {
    v3 = *(a1 + 32);
    [v3 numPhotoAssetsResourcesNormalized];
    *&v5 = v4 + 1.0;
    [v3 setNumPhotoAssetsResourcesNormalized:v5];
  }

  v6 = +[MOResource getStringTypeForResources:](MOResource, "getStringTypeForResources:", [v50 type]);
  v7 = [*(a1 + 40) objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"RankingRichnessPrimaryPriorityScoreKey"];
    [v9 floatValue];
    v11 = v10;

    v12 = [v8 objectForKey:@"RankingRichnessSecondaryPriorityScoreKey"];
    [v12 floatValue];
    v14 = v13;

    v15 = [v8 objectForKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
    [v15 floatValue];
    v17 = v16;
  }

  else
  {
    v14 = 0.0;
    v17 = 0.0;
    v11 = 0.0;
  }

  [v50 priorityScore];
  if (v18 >= 200.0)
  {
    [v50 priorityScore];
    if (v23 < 300.0)
    {
      if ([v50 type] == 2)
      {
        v24 = [v50 photoCurationScore];
        [v24 floatValue];
        v26 = v25;

        if (v26 == 0.0)
        {
          v14 = v14 + 0.5;
          goto LABEL_36;
        }

        v38 = [v50 photoCurationScore];
        [v38 floatValue];
        v14 = v14 + v43;
        goto LABEL_35;
      }

      v36 = thirdPartyMediaSubtypeVariants;
      v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
      LODWORD(v36) = [v36 containsObject:v37];

      if (!v36)
      {
        v14 = v14 + 1.0;
      }

      goto LABEL_36;
    }

    [v50 priorityScore];
    v30 = v29;
    v31 = [v50 type];
    HIDWORD(v22) = 1081294848;
    if (v30 < 308.0)
    {
      if (v31 == 2)
      {
        v32 = [v50 photoCurationScore];
        [v32 floatValue];
        v34 = v33;

        if (v34 == 0.0)
        {
          v35 = 0.5;
          goto LABEL_27;
        }

        v38 = [v50 photoCurationScore];
        [v38 floatValue];
        v17 = v17 + v44;
      }

      else
      {
        v40 = thirdPartyMediaSubtypeVariants;
        v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
        if (![v40 containsObject:v38])
        {
          v41 = MediaWeeklySummarySubtypeVariants;
          v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
          LOBYTE(v41) = [v41 containsObject:v42];

          if ((v41 & 1) == 0)
          {
            v17 = v17 + 1.0;
          }

          goto LABEL_36;
        }
      }

LABEL_35:

      goto LABEL_36;
    }

    if (v31 != 10 && [v50 type] != 6)
    {
      goto LABEL_36;
    }

    v35 = 1.0;
LABEL_27:
    v17 = v17 + v35;
    goto LABEL_36;
  }

  if ([v50 type] == 2)
  {
    v19 = [v50 photoCurationScore];
    [v19 floatValue];
    v21 = v20;

    if (v21 == 0.0)
    {
      v11 = v11 + 0.5;
      goto LABEL_36;
    }

    v38 = [v50 photoCurationScore];
    [v38 floatValue];
    v11 = v11 + v39;
    goto LABEL_35;
  }

  v27 = thirdPartyMediaSubtypeVariants;
  v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) bundleSubType]);
  LODWORD(v27) = [v27 containsObject:v28];

  if (!v27)
  {
    v11 = v11 + 1.0;
  }

LABEL_36:
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  *&v22 = v11;
  v45 = [NSNumber numberWithFloat:v22];
  [v8 setObject:v45 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];

  *&v46 = v14;
  v47 = [NSNumber numberWithFloat:v46];
  [v8 setObject:v47 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];

  *&v48 = v17;
  v49 = [NSNumber numberWithFloat:v48];
  [v8 setObject:v49 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];

  [*(a1 + 40) setObject:v8 forKey:v6];
}

- (void)_fillDistincnessInfoForRanking:(id)a3 forBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 setNumAnomalyEventsNormalized:0.0];
  [v5 setNumTrendEventsNormalized:0.0];
  [v5 setNumRoutineEventsNormalized:0.0];
  [v5 setNumStateOfMindEventsNormalized:0.0];
  v47 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v6 events];
  v7 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v7)
  {
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        if ([v10 provider] == 5)
        {
          v11 = [v10 patterns];
          v12 = [v11 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
          v13 = [v12 isEqual:&off_10036BC68];

          if (v13)
          {
            continue;
          }

          v14 = [v10 patterns];
          v15 = [v14 objectForKeyedSubscript:@"kEventPatternType"];
          v16 = [v15 intValue];

          switch(v16)
          {
            case 2u:
              [v5 numRoutineEventsNormalized];
              *&v22 = v21 + 1.0;
              [v5 setNumRoutineEventsNormalized:v22];
              break;
            case 1u:
              [v5 numTrendEventsNormalized];
              *&v20 = v19 + 1.0;
              [v5 setNumTrendEventsNormalized:v20];
              break;
            case 0u:
              [v5 numAnomalyEventsNormalized];
              *&v18 = v17 + 1.0;
              [v5 setNumAnomalyEventsNormalized:v18];
              break;
          }
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 0;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = __65__MOEventBundleRanking__fillDistincnessInfoForRanking_forBundle___block_invoke;
        v49[3] = &unk_10033C2A0;
        v49[4] = &v50;
        [v6 withResourcesUsingBlock:v49];
        if ([v10 category] == 24 && objc_msgSend(v10, "provider") != 5 && *(v51 + 24) == 1)
        {
          [v5 numStateOfMindEventsNormalized];
          *&v24 = v23 + 1.0;
          [v5 setNumStateOfMindEventsNormalized:v24];
          v25 = [v10 identifierFromProvider];
          [v47 addObject:v25];
        }

        _Block_object_dispose(&v50, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v7);
  }

  [v5 numAnomalyEventsNormalized];
  *&v27 = v26 * 0.25;
  [v5 setNumAnomalyEventsNormalized:v27];
  [v5 numAnomalyEventsNormalized];
  if (*&v28 > 1.0)
  {
    LODWORD(v28) = 1.0;
    [v5 setNumAnomalyEventsNormalized:v28];
  }

  [v5 numTrendEventsNormalized];
  *&v30 = v29 * 0.25;
  [v5 setNumTrendEventsNormalized:v30];
  [v5 numTrendEventsNormalized];
  if (*&v31 > 1.0)
  {
    LODWORD(v31) = 1.0;
    [v5 setNumTrendEventsNormalized:v31];
  }

  [v5 numRoutineEventsNormalized];
  *&v33 = v32 * 0.25;
  [v5 setNumRoutineEventsNormalized:v33];
  [v5 numRoutineEventsNormalized];
  if (*&v34 > 1.0)
  {
    LODWORD(v34) = 1.0;
    [v5 setNumRoutineEventsNormalized:v34];
  }

  if ([v5 bundleInterfaceType] == 4)
  {
    [v5 numAnomalyEventsNormalized];
    v36 = v35 <= 0.0;
    v37 = 0.0;
    if (!v36)
    {
      *&v37 = 1.0;
    }

    [v5 setNumAnomalyEventsNormalized:v37];
    [v5 numTrendEventsNormalized];
    v36 = v38 <= 0.0;
    v39 = 0.0;
    if (!v36)
    {
      *&v39 = 1.0;
    }

    [v5 setNumTrendEventsNormalized:v39];
    [v5 numRoutineEventsNormalized];
    v36 = v40 <= 0.0;
    v41 = 0.0;
    if (!v36)
    {
      *&v41 = 1.0;
    }

    [v5 setNumRoutineEventsNormalized:v41];
  }

  [v5 numStateOfMindEventsNormalized];
  if (v42 <= 0.0)
  {
    v46 = emptyStringSet;
  }

  else
  {
    [v5 numStateOfMindEventsNormalized];
    *&v44 = v43 * 0.25;
    [v5 setNumStateOfMindEventsNormalized:v44];
    [v5 numStateOfMindEventsNormalized];
    v46 = v47;
    if (*&v45 > 1.0)
    {
      LODWORD(v45) = 1.0;
      [v5 setNumStateOfMindEventsNormalized:{v47, v45}];
      v46 = v47;
    }
  }

  [v5 setAllStateOfMindIdentifiers:v46];
}

id __65__MOEventBundleRanking__fillDistincnessInfoForRanking_forBundle___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 type];
  if (result == 16)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)_fillEngagementInfoForRanking:(id)a3 forBundle:(id)a4
{
  v25 = a3;
  v6 = a4;
  [v25 setSuggestionIsDeleted:{objc_msgSend(v6, "hasSuggestionEngagementEvent:", @"suggestionsDeleted"}];
  [v25 setSuggestionIsSelected:{objc_msgSend(v6, "hasSuggestionEngagementEvent:", @"suggestionsSelected"}];
  [v25 setSuggestionQuickAddEntry:{objc_msgSend(v6, "hasSuggestionEngagementEvent:", @"suggestionsQuickAddEntry"}];
  [v25 setJournalEntryIsEdited:{objc_msgSend(v6, "hasAppEntryEngagementEvent:", @"appEntryEdited"}];
  [v25 setJournalEntryIsCreated:{objc_msgSend(v6, "hasAppEntryEngagementEvent:", @"appEntryCreated"}];
  [v25 setJournalEntryIsCancelled:{objc_msgSend(v6, "hasAppEntryEngagementEvent:", @"appEntryCancelled"}];
  [v25 setJournalEntryIsDeleted:{objc_msgSend(v6, "hasAppEntryEngagementEvent:", @"appEntryDeleted"}];
  *&v7 = [v6 suggestionEngagementViewCount];
  [v25 setViewCount:v7];
  [v25 setViewCountNormalized:0.0];
  v8 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v9 = [v8 objectForKeyedSubscript:@"minDaysElapsedForAdjustment"];
  [v9 floatValue];
  v11 = v10;

  v12 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v13 = [v12 objectForKeyedSubscript:@"minViewCountForAdjustment"];
  [v13 floatValue];
  v15 = v14;

  v16 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  v17 = [v16 objectForKeyedSubscript:@"maxViewCountForAdjustment"];
  [v17 floatValue];
  v19 = v18;

  if ([v6 suggestionEngagementViewCount])
  {
    if (([v6 hasSuggestionEngagementEvent:@"suggestionsSelected"] & 1) == 0 && (objc_msgSend(v6, "hasSuggestionEngagementEvent:", @"suggestionsQuickAddEntry") & 1) == 0 && (objc_msgSend(v6, "hasSuggestionEngagementEvent:", @"suggestionsDeleted") & 1) == 0)
    {
      [v25 bundleRecencyDaysElapsed];
      if (v20 > v11)
      {
        v21 = fmax(([v6 suggestionEngagementViewCount] - v15), 0.0);
        *&v21 = v21;
        [v25 setViewCountNormalized:v21];
        [v25 viewCountNormalized];
        *&v23 = v22 / (v19 - v15);
        [v25 setViewCountNormalized:v23];
        [v25 viewCountNormalized];
        if (*&v24 > 1.0)
        {
          LODWORD(v24) = 1.0;
          [v25 setViewCountNormalized:v24];
        }
      }
    }
  }
}

- (MOEventBundleRanking)initWithUniverse:(id)a3
{
  if (a3)
  {
    v4 = [a3 getService:@"MOConfigurationManager"];
    v5 = [(MOEventBundleRanking *)self initWithConfigurationManager:v4];
    [(MOEventBundleRanking *)v5 setHolidayTuningParameters];
    self = v5;

    v6 = self;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking initWithUniverse:];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MOEventBundleRanking.m" lineNumber:917 description:@"Invalid parameter not satisfying: universe"];

    v6 = 0;
  }

  return v6;
}

- (MOEventBundleRanking)initWithConfigurationManager:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v585.receiver = self;
    v585.super_class = MOEventBundleRanking;
    v7 = [(MOEventBundleRanking *)&v585 init];
    if (v7)
    {
      v566 = v6;
      +[MOEventBundleRanking defineClassCollections];
      [(MOEventBundleRanking *)v7 setHolidayTuningParameters];
      rankingAlgorithmVersion = v7->_rankingAlgorithmVersion;
      v7->_rankingAlgorithmVersion = @"17.2.0";

      objc_storeStrong(&v7->_configurationManager, a3);
      v7->_isInternalBuild = +[MOPlatformInfo isInternalBuild];
      configurationManager = v7->_configurationManager;
      v10 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"diversityCoefficientAlpha"];
      LODWORD(v11) = 1120403456;
      [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v10 withFallback:v11];
      v7->_frequencyPenalty = v12;

      v13 = v7->_configurationManager;
      v14 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"engagementScoreWeight"];
      LODWORD(v15) = 1036831949;
      [(MOConfigurationManagerBase *)v13 getFloatSettingForKey:v14 withFallback:v15];
      v7->_engagementScoreWeight = v16;

      v17 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(MOEventBundleRanking *)&v7->_engagementScoreWeight initWithConfigurationManager:v17, v18, v19, v20, v21, v22, v23];
      }

      HIDWORD(v24) = 1072483532;
      *&v24 = 0.9;
      [(MOConfigurationManagerBase *)v7->_configurationManager getFloatSettingForKey:@"VA_RecommendedTabVisitFIThreshold" withFallback:v24];
      v7->_recommendedTabVisitFIThreshold = v25;
      v26 = objc_opt_new();
      v27 = v7->_configurationManager;
      v580 = v7;
      v28 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"distanceToHomeThreshold"];
      LODWORD(v29) = 10.0;
      [(MOConfigurationManagerBase *)v27 getFloatSettingForKey:v28 withFallback:v29];
      v30 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v30 forKeyedSubscript:@"distanceToHomeThreshold"];

      v31 = v7->_configurationManager;
      v32 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"callDurationThreshold"];
      LODWORD(v33) = 1172373504;
      [(MOConfigurationManagerBase *)v31 getFloatSettingForKey:v32 withFallback:v33];
      v34 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v34 forKeyedSubscript:@"callDurationThreshold"];

      v35 = v7->_configurationManager;
      v36 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"workoutDurationThreshold"];
      LODWORD(v37) = 1172373504;
      [(MOConfigurationManagerBase *)v35 getFloatSettingForKey:v36 withFallback:v37];
      v38 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v38 forKeyedSubscript:@"workoutDurationThreshold"];

      v39 = v7->_configurationManager;
      v40 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"WeeklySummaryWorkoutDurationThreshold"];
      LODWORD(v41) = 1172373504;
      [(MOConfigurationManagerBase *)v39 getFloatSettingForKey:v40 withFallback:v41];
      v42 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v42 forKeyedSubscript:@"WeeklySummaryWorkoutDurationThreshold"];

      v43 = v7->_configurationManager;
      v44 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"timeAtHomeDurationThreshold"];
      LODWORD(v45) = 1202241536;
      [(MOConfigurationManagerBase *)v43 getFloatSettingForKey:v44 withFallback:v45];
      v46 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v46 forKeyedSubscript:@"timeAtHomeDurationThreshold"];

      v47 = v7->_configurationManager;
      v48 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"FIDownRankThreshold"];
      LODWORD(v49) = 0.75;
      [(MOConfigurationManagerBase *)v47 getFloatSettingForKey:v48 withFallback:v49];
      v50 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v50 forKeyedSubscript:@"FIDownRankThreshold"];

      v51 = v7->_configurationManager;
      v52 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"burstyInteractionCountThreshold"];
      LODWORD(v53) = 1125515264;
      [(MOConfigurationManagerBase *)v51 getFloatSettingForKey:v52 withFallback:v53];
      v54 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v54 forKeyedSubscript:@"burstyInteractionCountThreshold"];

      v55 = v7->_configurationManager;
      v56 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxPeopleCountFromSocialContext"];
      LODWORD(v57) = 1115684864;
      [(MOConfigurationManagerBase *)v55 getFloatSettingForKey:v56 withFallback:v57];
      v58 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v58 forKeyedSubscript:@"maxPeopleCountFromSocialContext"];

      v59 = v7->_configurationManager;
      v60 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"mediaPlayTimeThreshold"];
      LODWORD(v61) = 1177075712;
      [(MOConfigurationManagerBase *)v59 getFloatSettingForKey:v60 withFallback:v61];
      v62 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v62 forKeyedSubscript:@"mediaPlayTimeThreshold"];

      v63 = v7->_configurationManager;
      v64 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weeklySummaryMediaPlayTimeThreshold"];
      LODWORD(v65) = 1187307520;
      [(MOConfigurationManagerBase *)v63 getFloatSettingForKey:v64 withFallback:v65];
      v66 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v66 forKeyedSubscript:@"weeklySummaryMediaPlayTimeThreshold"];

      v67 = v7->_configurationManager;
      v68 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"shareCountThreshold"];
      LODWORD(v69) = 5.0;
      [(MOConfigurationManagerBase *)v67 getFloatSettingForKey:v68 withFallback:v69];
      v70 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v70 forKeyedSubscript:@"shareCountThreshold"];

      v71 = v7->_configurationManager;
      v72 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"contactHoldOffThreshold"];
      LODWORD(v73) = -921458688;
      [(MOConfigurationManagerBase *)v71 getFloatSettingForKey:v72 withFallback:v73];
      v74 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v74 forKeyedSubscript:@"contactHoldOffThreshold"];

      v75 = v7->_configurationManager;
      v76 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"stateOfMindLabelCountThreshold"];
      LODWORD(v77) = 5.0;
      [(MOConfigurationManagerBase *)v75 getFloatSettingForKey:v76 withFallback:v77];
      v78 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v78 forKeyedSubscript:@"stateOfMindLabelCountThreshold"];

      v79 = v7->_configurationManager;
      v80 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"stateOfMindDomainCountThreshold"];
      LODWORD(v81) = 5.0;
      [(MOConfigurationManagerBase *)v79 getFloatSettingForKey:v80 withFallback:v81];
      v82 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v82 forKeyedSubscript:@"stateOfMindDomainCountThreshold"];

      v83 = v7->_configurationManager;
      v84 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"sensitiveOnRecommendedThreshold"];
      v85 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v83 getIntegerSettingForKey:v84 withFallback:5]];
      [(NSDictionary *)v26 setObject:v85 forKeyedSubscript:@"sensitiveOnRecommendedThreshold"];

      v86 = v7->_configurationManager;
      v87 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForVisitSubTypeVariants"];
      LODWORD(v88) = -1130113270;
      [(MOConfigurationManagerBase *)v86 getFloatSettingForKey:v87 withFallback:v88];
      v89 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v89 forKeyedSubscript:@"suggestionAcceptThresholdForVisitSubTypeVariants"];

      v90 = v7->_configurationManager;
      v91 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForTripSubType"];
      LODWORD(v92) = -1130113270;
      [(MOConfigurationManagerBase *)v90 getFloatSettingForKey:v91 withFallback:v92];
      v93 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v93 forKeyedSubscript:@"suggestionAcceptThresholdForTripSubType"];

      v94 = v7->_configurationManager;
      v95 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWorkoutSubtype"];
      LODWORD(v96) = -1130113270;
      [(MOConfigurationManagerBase *)v94 getFloatSettingForKey:v95 withFallback:v96];
      v97 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v97 forKeyedSubscript:@"suggestionAcceptThresholdForWorkoutSubtype"];

      v98 = v7->_configurationManager;
      v99 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForMotionActivityWalkingSubtype"];
      LODWORD(v100) = -1130113270;
      [(MOConfigurationManagerBase *)v98 getFloatSettingForKey:v99 withFallback:v100];
      v101 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v101 forKeyedSubscript:@"suggestionAcceptThresholdForMotionActivityWalkingSubtype"];

      v102 = v7->_configurationManager;
      v103 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWorkoutWeeklySummarySubType"];
      LODWORD(v104) = -1.0;
      [(MOConfigurationManagerBase *)v102 getFloatSettingForKey:v103 withFallback:v104];
      v105 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v105 forKeyedSubscript:@"suggestionAcceptThresholdForWorkoutWeeklySummarySubType"];

      v106 = v7->_configurationManager;
      v107 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForContactSubType"];
      LODWORD(v108) = -1.0;
      [(MOConfigurationManagerBase *)v106 getFloatSettingForKey:v107 withFallback:v108];
      v109 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v109 forKeyedSubscript:@"suggestionAcceptThresholdForContactSubType"];

      v110 = v7->_configurationManager;
      v111 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForContactWeeklySummarySubType"];
      LODWORD(v112) = 1023671095;
      [(MOConfigurationManagerBase *)v110 getFloatSettingForKey:v111 withFallback:v112];
      v113 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v113 forKeyedSubscript:@"suggestionAcceptThresholdForContactWeeklySummarySubType"];

      v114 = v7->_configurationManager;
      v115 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForDailyMediaVariants"];
      LODWORD(v116) = -1.0;
      [(MOConfigurationManagerBase *)v114 getFloatSettingForKey:v115 withFallback:v116];
      v117 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v117 forKeyedSubscript:@"suggestionAcceptThresholdForDailyMediaVariants"];

      v118 = v7->_configurationManager;
      v119 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForWeeklyMediaSummaryVariants"];
      LODWORD(v120) = -1.0;
      [(MOConfigurationManagerBase *)v118 getFloatSettingForKey:v119 withFallback:v120];
      v121 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v121 forKeyedSubscript:@"suggestionAcceptThresholdForWeeklyMediaSummaryVariants"];

      v122 = v7->_configurationManager;
      v123 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionAcceptThresholdForTimeAtHomeSubTypeVariants"];
      LODWORD(v124) = -1.0;
      [(MOConfigurationManagerBase *)v122 getFloatSettingForKey:v123 withFallback:v124];
      v125 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v125 forKeyedSubscript:@"suggestionAcceptThresholdForTimeAtHomeSubTypeVariants"];

      v126 = v7->_configurationManager;
      v127 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForVisitSubTypeVariants"];
      LODWORD(v128) = 1017370378;
      [(MOConfigurationManagerBase *)v126 getFloatSettingForKey:v127 withFallback:v128];
      v129 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v129 forKeyedSubscript:@"suggestionRecommendThresholdForVisitSubTypeVariants"];

      v130 = v7->_configurationManager;
      v131 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForTripSubType"];
      LODWORD(v132) = 1017370378;
      [(MOConfigurationManagerBase *)v130 getFloatSettingForKey:v131 withFallback:v132];
      v133 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v133 forKeyedSubscript:@"suggestionRecommendThresholdForTripSubType"];

      v134 = v7->_configurationManager;
      v135 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWorkoutSubtype"];
      LODWORD(v136) = 1025758986;
      [(MOConfigurationManagerBase *)v134 getFloatSettingForKey:v135 withFallback:v136];
      v137 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v137 forKeyedSubscript:@"suggestionRecommendThresholdForWorkoutSubtype"];

      v138 = v7->_configurationManager;
      v139 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForMotionActivityWalkingSubtype"];
      LODWORD(v140) = 1017370378;
      [(MOConfigurationManagerBase *)v138 getFloatSettingForKey:v139 withFallback:v140];
      v141 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v141 forKeyedSubscript:@"suggestionRecommendThresholdForMotionActivityWalkingSubtype"];

      v142 = v7->_configurationManager;
      v143 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWorkoutWeeklySummarySubType"];
      LODWORD(v144) = 1025758986;
      [(MOConfigurationManagerBase *)v142 getFloatSettingForKey:v143 withFallback:v144];
      v145 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v145 forKeyedSubscript:@"suggestionRecommendThresholdForWorkoutWeeklySummarySubType"];

      v146 = v7->_configurationManager;
      v147 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForContactSubType"];
      LODWORD(v148) = 1028443341;
      [(MOConfigurationManagerBase *)v146 getFloatSettingForKey:v147 withFallback:v148];
      v149 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v149 forKeyedSubscript:@"suggestionRecommendThresholdForContactSubType"];

      v150 = v7->_configurationManager;
      v151 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForContactWeeklySummarySubType"];
      LODWORD(v152) = 1023671095;
      [(MOConfigurationManagerBase *)v150 getFloatSettingForKey:v151 withFallback:v152];
      v153 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v153 forKeyedSubscript:@"suggestionRecommendThresholdForContactWeeklySummarySubType"];

      v154 = v7->_configurationManager;
      v155 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForDailyMediaVariants"];
      LODWORD(v156) = -1.0;
      [(MOConfigurationManagerBase *)v154 getFloatSettingForKey:v155 withFallback:v156];
      v157 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v157 forKeyedSubscript:@"suggestionRecommendThresholdForDailyMediaVariants"];

      v158 = v7->_configurationManager;
      v159 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForWeeklyMediaSummaryVariants"];
      LODWORD(v160) = -1.0;
      [(MOConfigurationManagerBase *)v158 getFloatSettingForKey:v159 withFallback:v160];
      v161 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v161 forKeyedSubscript:@"suggestionRecommendThresholdForWeeklyMediaSummaryVariants"];

      v162 = v7->_configurationManager;
      v163 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForTimeAtHomeSubTypeVariants"];
      LODWORD(v164) = 1025758986;
      [(MOConfigurationManagerBase *)v162 getFloatSettingForKey:v163 withFallback:v164];
      v165 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v165 forKeyedSubscript:@"suggestionRecommendThresholdForTimeAtHomeSubTypeVariants"];

      v166 = v7->_configurationManager;
      v167 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"suggestionRecommendThresholdForThematicSummary"];
      LODWORD(v168) = 1025758986;
      [(MOConfigurationManagerBase *)v166 getFloatSettingForKey:v167 withFallback:v168];
      v169 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v169 forKeyedSubscript:@"suggestionRecommendThresholdForThematicSummary"];

      v170 = v7->_configurationManager;
      v171 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForVisitSubTypeVariants"];
      LODWORD(v172) = -1130113270;
      [(MOConfigurationManagerBase *)v170 getFloatSettingForKey:v171 withFallback:v172];
      v173 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v173 forKeyedSubscript:@"summarizationThresholdForVisitSubTypeVariants"];

      v174 = v7->_configurationManager;
      v175 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForWorkoutSubType"];
      LODWORD(v176) = -1130113270;
      [(MOConfigurationManagerBase *)v174 getFloatSettingForKey:v175 withFallback:v176];
      v177 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v177 forKeyedSubscript:@"summarizationThresholdForWorkoutSubType"];

      v178 = v7->_configurationManager;
      v179 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"summarizationThresholdForMotionActivityWalkingSubType"];
      LODWORD(v180) = -1130113270;
      [(MOConfigurationManagerBase *)v178 getFloatSettingForKey:v179 withFallback:v180];
      v181 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v181 forKeyedSubscript:@"summarizationThresholdForMotionActivityWalkingSubType"];

      v182 = v7->_configurationManager;
      v183 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"tripSummarizationThresholdForVisitSubType"];
      LODWORD(v184) = 1025758986;
      [(MOConfigurationManagerBase *)v182 getFloatSettingForKey:v183 withFallback:v184];
      v185 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v26 setObject:v185 forKeyedSubscript:@"tripSummarizationThresholdForVisitSubType"];

      v186 = v7->_configurationManager;
      v187 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"tripSummarizationThresholdForWorkoutSubType"];
      LODWORD(v188) = -1130113270;
      [(MOConfigurationManagerBase *)v186 getFloatSettingForKey:v187 withFallback:v188];
      v189 = [NSNumber numberWithFloat:?];
      v565 = v26;
      [(NSDictionary *)v26 setObject:v189 forKeyedSubscript:@"tripSummarizationThresholdForWorkoutSubType"];

      v190 = objc_opt_new();
      v191 = v580->_configurationManager;
      v192 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectWorkVisitWithPhotos"];
      v193 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v191 getBoolSettingForKey:v192 withFallback:0]];
      [(NSDictionary *)v190 setObject:v193 forKeyedSubscript:@"rejectWorkVisitWithPhotos"];

      v194 = v580->_configurationManager;
      v195 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectWorkVisitWithNoPhoto"];
      v196 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v194 getBoolSettingForKey:v195 withFallback:1]];
      [(NSDictionary *)v190 setObject:v196 forKeyedSubscript:@"rejectWorkVisitWithNoPhoto"];

      v197 = v580->_configurationManager;
      v198 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectShortVisit"];
      v199 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v197 getBoolSettingForKey:v198 withFallback:0]];
      [(NSDictionary *)v190 setObject:v199 forKeyedSubscript:@"rejectShortVisit"];

      v200 = v580->_configurationManager;
      v201 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"shortVisitDurationThresholdInSec"];
      LODWORD(v202) = 1150681088;
      [(MOConfigurationManagerBase *)v200 getFloatSettingForKey:v201 withFallback:v202];
      v203 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v203 forKeyedSubscript:@"shortVisitDurationThresholdInSec"];

      v204 = v580->_configurationManager;
      v205 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"rejectSignificantContactWithHighSignificanceScore"];
      v206 = [NSNumber numberWithBool:[(MOConfigurationManagerBase *)v204 getBoolSettingForKey:v205 withFallback:0]];
      [(NSDictionary *)v190 setObject:v206 forKeyedSubscript:@"rejectSignificantContactWithHighSignificanceScore"];

      v207 = v580->_configurationManager;
      v208 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"highContactSignificanceScoreThreshold"];
      LODWORD(v209) = 1064514355;
      [(MOConfigurationManagerBase *)v207 getFloatSettingForKey:v208 withFallback:v209];
      v210 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v210 forKeyedSubscript:@"highContactSignificanceScoreThreshold"];

      v211 = v580->_configurationManager;
      v212 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minSensedBundleCountInRecommendedTab"];
      v213 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v211 getIntegerSettingForKey:v212 withFallback:10]];
      [(NSDictionary *)v190 setObject:v213 forKeyedSubscript:@"minSensedBundleCountInRecommendedTab"];

      v214 = v580->_configurationManager;
      v215 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForWorkoutRoutine"];
      LODWORD(v216) = 7.0;
      [(MOConfigurationManagerBase *)v214 getFloatSettingForKey:v215 withFallback:v216];
      v217 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v217 forKeyedSubscript:@"maxDaysInRecommendedTabForWorkoutRoutine"];

      v218 = v580->_configurationManager;
      v219 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForContact"];
      LODWORD(v220) = 3.0;
      [(MOConfigurationManagerBase *)v218 getFloatSettingForKey:v219 withFallback:v220];
      v221 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v221 forKeyedSubscript:@"maxDaysInRecommendedTabForContact"];

      v222 = v580->_configurationManager;
      v223 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxDaysInRecommendedTabForStateOfMind"];
      LODWORD(v224) = 2.0;
      [(MOConfigurationManagerBase *)v222 getFloatSettingForKey:v223 withFallback:v224];
      v225 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v225 forKeyedSubscript:@"maxDaysInRecommendedTabForStateOfMind"];

      v226 = v580->_configurationManager;
      v227 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"daysToSuppressCoarseSummaryAfterOnboarding"];
      LODWORD(v228) = 7.0;
      [(MOConfigurationManagerBase *)v226 getFloatSettingForKey:v227 withFallback:v228];
      v229 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v190 setObject:v229 forKeyedSubscript:@"daysToSuppressCoarseSummaryAfterOnboarding"];

      v230 = v580->_configurationManager;
      v231 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxNumOfHolidayBundlesPerDay"];
      v232 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v230 getIntegerSettingForKey:v231 withFallback:2]];
      [(NSDictionary *)v190 setObject:v232 forKeyedSubscript:@"maxNumOfHolidayBundlesPerDay"];

      v233 = v580->_configurationManager;
      v234 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxNumOfBirthdayBundlesPerDay"];
      v235 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v233 getIntegerSettingForKey:v234 withFallback:2]];
      v567 = v190;
      [(NSDictionary *)v190 setObject:v235 forKeyedSubscript:@"maxNumOfBirthdayBundlesPerDay"];

      v236 = objc_opt_new();
      v237 = v580->_configurationManager;
      v238 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForInterestingPOI"];
      LODWORD(v239) = 1024148374;
      [(MOConfigurationManagerBase *)v237 getFloatSettingForKey:v238 withFallback:v239];
      v240 = [NSNumber numberWithFloat:?];
      [v236 setObject:v240 forKeyedSubscript:@"weightForInterestingPOI"];

      v241 = v580->_configurationManager;
      v242 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForSensitivePOI"];
      LODWORD(v243) = -1123335274;
      [(MOConfigurationManagerBase *)v241 getFloatSettingForKey:v242 withFallback:v243];
      v244 = [NSNumber numberWithFloat:?];
      [v236 setObject:v244 forKeyedSubscript:@"weightForSensitivePOI"];

      v245 = v580->_configurationManager;
      v246 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForDistanceFromHome"];
      LODWORD(v247) = 1024953680;
      [(MOConfigurationManagerBase *)v245 getFloatSettingForKey:v246 withFallback:v247];
      v248 = [NSNumber numberWithFloat:?];
      [v236 setObject:v248 forKeyedSubscript:@"weightForDistanceFromHome"];

      v249 = v580->_configurationManager;
      v250 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForCallDuration"];
      LODWORD(v251) = 1041865114;
      [(MOConfigurationManagerBase *)v249 getFloatSettingForKey:v250 withFallback:v251];
      v252 = [NSNumber numberWithFloat:?];
      [v236 setObject:v252 forKeyedSubscript:@"weightForCallDuration"];

      v253 = v580->_configurationManager;
      v254 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForBurstyInteractionCount"];
      LODWORD(v255) = 1028443341;
      [(MOConfigurationManagerBase *)v253 getFloatSettingForKey:v254 withFallback:v255];
      v256 = [NSNumber numberWithFloat:?];
      [v236 setObject:v256 forKeyedSubscript:@"weightForBurstyInteractionCount"];

      v257 = v580->_configurationManager;
      v258 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForMultipleInteractionTypes"];
      [(MOConfigurationManagerBase *)v257 getFloatSettingForKey:v258 withFallback:0.0];
      v259 = [NSNumber numberWithFloat:?];
      [v236 setObject:v259 forKeyedSubscript:@"weightForMultipleInteractionTypes"];

      v260 = v580->_configurationManager;
      v261 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForContactLocationWork"];
      [(MOConfigurationManagerBase *)v260 getFloatSettingForKey:v261 withFallback:0.0];
      v262 = [NSNumber numberWithFloat:?];
      [v236 setObject:v262 forKeyedSubscript:@"weightForContactLocationWork"];

      v263 = v580->_configurationManager;
      v264 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForGroupConversation"];
      [(MOConfigurationManagerBase *)v263 getFloatSettingForKey:v264 withFallback:0.0];
      v265 = [NSNumber numberWithFloat:?];
      [v236 setObject:v265 forKeyedSubscript:@"weightForGroupConversation"];

      v266 = v580->_configurationManager;
      v267 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountMax"];
      [(MOConfigurationManagerBase *)v266 getFloatSettingForKey:v267 withFallback:0.0];
      v268 = [NSNumber numberWithFloat:?];
      [v236 setObject:v268 forKeyedSubscript:@"weightForPCountMax"];

      v269 = v580->_configurationManager;
      v270 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountWeightedAverage"];
      LODWORD(v271) = 1008981770;
      [(MOConfigurationManagerBase *)v269 getFloatSettingForKey:v270 withFallback:v271];
      v272 = [NSNumber numberWithFloat:?];
      [v236 setObject:v272 forKeyedSubscript:@"weightForPCountWeightedAverage"];

      v273 = v580->_configurationManager;
      v274 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPDensityWeightedAverage"];
      LODWORD(v275) = 1008981770;
      [(MOConfigurationManagerBase *)v273 getFloatSettingForKey:v274 withFallback:v275];
      v276 = [NSNumber numberWithFloat:?];
      [v236 setObject:v276 forKeyedSubscript:@"weightForPDensityWeightedAverage"];

      v277 = v580->_configurationManager;
      v278 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForPCountWeightedSum"];
      [(MOConfigurationManagerBase *)v277 getFloatSettingForKey:v278 withFallback:0.0];
      v279 = [NSNumber numberWithFloat:?];
      [v236 setObject:v279 forKeyedSubscript:@"weightForPCountWeightedSum"];

      v280 = v580->_configurationManager;
      v281 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForItemFromMe"];
      LODWORD(v282) = 1017370378;
      [(MOConfigurationManagerBase *)v280 getFloatSettingForKey:v281 withFallback:v282];
      v283 = [NSNumber numberWithFloat:?];
      [v236 setObject:v283 forKeyedSubscript:@"weightForItemFromMe"];

      v284 = v580->_configurationManager;
      v285 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightShareCountFeature"];
      LODWORD(v286) = 1017370378;
      [(MOConfigurationManagerBase *)v284 getFloatSettingForKey:v285 withFallback:v286];
      v287 = [NSNumber numberWithFloat:?];
      [v236 setObject:v287 forKeyedSubscript:@"weightShareCountFeature"];

      v288 = v580->_configurationManager;
      v289 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForTimeAtHomeDuration"];
      [(MOConfigurationManagerBase *)v288 getFloatSettingForKey:v289 withFallback:0.0];
      v290 = [NSNumber numberWithFloat:?];
      [v236 setObject:v290 forKeyedSubscript:@"weightForTimeAtHomeDuration"];

      v291 = v580->_configurationManager;
      v292 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForWorkoutDurationNormalized"];
      LODWORD(v293) = 1042536202;
      [(MOConfigurationManagerBase *)v291 getFloatSettingForKey:v292 withFallback:v293];
      v294 = [NSNumber numberWithFloat:?];
      [v236 setObject:v294 forKeyedSubscript:@"weightForWorkoutDurationNormalized"];

      v295 = v580->_configurationManager;
      v296 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForFamiliarityIndex"];
      LODWORD(v297) = 1030322389;
      [(MOConfigurationManagerBase *)v295 getFloatSettingForKey:v296 withFallback:v297];
      v298 = [NSNumber numberWithFloat:?];
      [v236 setObject:v298 forKeyedSubscript:@"weightForFamiliarityIndex"];

      v299 = v580->_configurationManager;
      v300 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsFamilyContact"];
      LODWORD(v301) = 1008981770;
      [(MOConfigurationManagerBase *)v299 getFloatSettingForKey:v300 withFallback:v301];
      v302 = [NSNumber numberWithFloat:?];
      [v236 setObject:v302 forKeyedSubscript:@"weightForIsFamilyContact"];

      v303 = v580->_configurationManager;
      v304 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsCoworkerContact"];
      LODWORD(v305) = -1130113270;
      [(MOConfigurationManagerBase *)v303 getFloatSettingForKey:v304 withFallback:v305];
      v306 = [NSNumber numberWithFloat:?];
      [v236 setObject:v306 forKeyedSubscript:@"weightForIsCoworkerContact"];

      v307 = v580->_configurationManager;
      v308 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForIsBusinessContact"];
      LODWORD(v309) = -1121724662;
      [(MOConfigurationManagerBase *)v307 getFloatSettingForKey:v308 withFallback:v309];
      v310 = [NSNumber numberWithFloat:?];
      [v236 setObject:v310 forKeyedSubscript:@"weightForIsBusinessContact"];

      v311 = v580->_configurationManager;
      v312 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForMediaPlayTime"];
      LODWORD(v313) = 1026206379;
      [(MOConfigurationManagerBase *)v311 getFloatSettingForKey:v312 withFallback:v313];
      v314 = [NSNumber numberWithFloat:?];
      [v236 setObject:v314 forKeyedSubscript:@"weightForMediaPlayTime"];

      v315 = v580->_configurationManager;
      v316 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxBundleGoodnessScorePhotoMemory"];
      LODWORD(v317) = 1028443341;
      [(MOConfigurationManagerBase *)v315 getFloatSettingForKey:v316 withFallback:v317];
      v318 = [NSNumber numberWithFloat:?];
      [v236 setObject:v318 forKeyedSubscript:@"maxBundleGoodnessScorePhotoMemory"];

      v319 = v580->_configurationManager;
      v320 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"bundleGoodnessScoreIncrementPhotoMemory"];
      LODWORD(v321) = 1017370378;
      [(MOConfigurationManagerBase *)v319 getFloatSettingForKey:v320 withFallback:v321];
      v322 = [NSNumber numberWithFloat:?];
      [v236 setObject:v322 forKeyedSubscript:@"bundleGoodnessScoreIncrementPhotoMemory"];

      v323 = v580->_configurationManager;
      v324 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightStateOfMindLabelCountNormalized"];
      LODWORD(v325) = 1028443341;
      [(MOConfigurationManagerBase *)v323 getFloatSettingForKey:v324 withFallback:v325];
      v326 = [NSNumber numberWithFloat:?];
      [v236 setObject:v326 forKeyedSubscript:@"weightStateOfMindLabelCountNormalized"];

      v327 = v580->_configurationManager;
      v328 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightStateOfMindDomainCountNormalized"];
      LODWORD(v329) = 1028443341;
      [(MOConfigurationManagerBase *)v327 getFloatSettingForKey:v328 withFallback:v329];
      v330 = [NSNumber numberWithFloat:?];
      [v236 setObject:v330 forKeyedSubscript:@"weightStateOfMindDomainCountNormalized"];

      v331 = v580->_configurationManager;
      v332 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightHolidayInclusion"];
      LODWORD(v333) = 1025758986;
      [(MOConfigurationManagerBase *)v331 getFloatSettingForKey:v332 withFallback:v333];
      v334 = [NSNumber numberWithFloat:?];
      [v236 setObject:v334 forKeyedSubscript:@"weightHolidayInclusion"];

      v335 = v580->_configurationManager;
      v336 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightBirthdayInclusion"];
      LODWORD(v337) = 1025758986;
      [(MOConfigurationManagerBase *)v335 getFloatSettingForKey:v336 withFallback:v337];
      v338 = [NSNumber numberWithFloat:?];
      [v236 setObject:v338 forKeyedSubscript:@"weightBirthdayInclusion"];

      v339 = v580->_configurationManager;
      v340 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightInviteEventInclusion"];
      LODWORD(v341) = 1031127695;
      [(MOConfigurationManagerBase *)v339 getFloatSettingForKey:v340 withFallback:v341];
      v342 = [NSNumber numberWithFloat:?];
      [v236 setObject:v342 forKeyedSubscript:@"weightInviteEventInclusion"];

      v343 = v580->_configurationManager;
      v344 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFamilyNormalized"];
      LODWORD(v345) = 1022739087;
      [(MOConfigurationManagerBase *)v343 getFloatSettingForKey:v344 withFallback:v345];
      v346 = [NSNumber numberWithFloat:?];
      [v236 setObject:v346 forKeyedSubscript:@"weightForNumFamilyNormalized"];

      v347 = v580->_configurationManager;
      v348 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFriendsNormalized"];
      LODWORD(v349) = 1022739087;
      [(MOConfigurationManagerBase *)v347 getFloatSettingForKey:v348 withFallback:v349];
      v350 = [NSNumber numberWithFloat:?];
      [v236 setObject:v350 forKeyedSubscript:@"weightForNumFidsNormalized"];

      v351 = v580->_configurationManager;
      v352 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumFriendsNormalized"];
      LODWORD(v353) = 1017370378;
      [(MOConfigurationManagerBase *)v351 getFloatSettingForKey:v352 withFallback:v353];
      v354 = [NSNumber numberWithFloat:?];
      [v236 setObject:v354 forKeyedSubscript:@"weightForNumFriendsNormalized"];

      v355 = v580->_configurationManager;
      v356 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumPetsNormalized"];
      LODWORD(v357) = 1017370378;
      [(MOConfigurationManagerBase *)v355 getFloatSettingForKey:v356 withFallback:v357];
      v358 = [NSNumber numberWithFloat:?];
      [v236 setObject:v358 forKeyedSubscript:@"weightForNumPetsNormalized"];

      v359 = v580->_configurationManager;
      v360 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumCoworkersNormalized"];
      LODWORD(v361) = 1014350479;
      [(MOConfigurationManagerBase *)v359 getFloatSettingForKey:v360 withFallback:v361];
      v362 = [NSNumber numberWithFloat:?];
      [v236 setObject:v362 forKeyedSubscript:@"weightForNumCoworkersNormalized"];

      v363 = v580->_configurationManager;
      v364 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForNumOtherPersonsNormalized"];
      LODWORD(v365) = 1008981770;
      [(MOConfigurationManagerBase *)v363 getFloatSettingForKey:v364 withFallback:v365];
      v366 = [NSNumber numberWithFloat:?];
      v564 = v236;
      [v236 setObject:v366 forKeyedSubscript:@"weightForNumOtherPersonsNormalized"];

      v367 = objc_opt_new();
      v368 = v580->_configurationManager;
      v369 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"weightForViewCountBasedPenalty"];
      LODWORD(v370) = 0.125;
      [(MOConfigurationManagerBase *)v368 getFloatSettingForKey:v369 withFallback:v370];
      v371 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v367 setObject:v371 forKeyedSubscript:@"weightForViewCountBasedPenalty"];

      v372 = v580->_configurationManager;
      v373 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minViewCountForAdjustment"];
      v374 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v372 getIntegerSettingForKey:v373 withFallback:2]];
      [(NSDictionary *)v367 setObject:v374 forKeyedSubscript:@"minViewCountForAdjustment"];

      v375 = v580->_configurationManager;
      v376 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"maxViewCountForAdjustment"];
      v377 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v375 getIntegerSettingForKey:v376 withFallback:12]];
      [(NSDictionary *)v367 setObject:v377 forKeyedSubscript:@"maxViewCountForAdjustment"];

      v378 = v580->_configurationManager;
      v379 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minDaysElapsedForAdjustment"];
      v380 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v378 getIntegerSettingForKey:v379 withFallback:2]];
      v563 = v367;
      [(NSDictionary *)v367 setObject:v380 forKeyedSubscript:@"minDaysElapsedForAdjustment"];

      v381 = v580;
      v382 = [(MOConfigurationManagerBase *)v580->_configurationManager fDefaultsManager];
      v383 = [v382 objectForKey:@"OnboardingDate"];

      if (v383 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v384 = v383;
        v385 = +[NSDate date];
        [v385 timeIntervalSinceDate:v384];
        *&v386 = v386 / 86400.0;
        v580->_elapsedDaysSinceOnboardingDate = *&v386;

        v387 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v387, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleRanking *)v384 initWithConfigurationManager:?];
        }
      }

      else
      {
        v391 = [(NSDictionary *)v567 objectForKeyedSubscript:@"daysToSuppressCoarseSummaryAfterOnboarding"];
        [v391 floatValue];
        v580->_elapsedDaysSinceOnboardingDate = v392 + 1.0;

        v384 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v384, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleRanking *)&v580->_elapsedDaysSinceOnboardingDate initWithConfigurationManager:v384, v393, v394, v395, v396, v397, v398];
        }
      }

      v562 = v383;

      v575 = objc_opt_new();
      v571 = objc_opt_new();
      v399 = objc_opt_new();
      v579 = objc_alloc_init(NSString);
      v573 = objc_opt_new();
      v568 = objc_opt_new();
      v400 = 1;
      do
      {
        v577 = v400;
        switch(v400)
        {
          case 1:
            v401 = [NSNumber numberWithInt:1];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v401];

            v402 = v381->_configurationManager;
            v403 = [NSString stringWithFormat:@"%@_ActivityInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v404) = 1120403456;
            [(MOConfigurationManagerBase *)v402 getFloatSettingForKey:v403 withFallback:v404];
            v405 = [NSNumber numberWithFloat:?];
            v406 = [NSNumber numberWithInt:1];
            [(NSDictionary *)v573 setObject:v405 forKeyedSubscript:v406];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E8F0 forKeyedSubscript:@"weightForNumRoutineEventsNormalized"];
            v408 = @"%@_ActivityInterfaceType";
            goto LABEL_31;
          case 2:
            v451 = [NSNumber numberWithInt:2];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v451];

            v452 = v381->_configurationManager;
            v453 = [NSString stringWithFormat:@"%@_OutingInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v454) = 1120403456;
            [(MOConfigurationManagerBase *)v452 getFloatSettingForKey:v453 withFallback:v454];
            v455 = [NSNumber numberWithFloat:?];
            v456 = [NSNumber numberWithInt:2];
            [(NSDictionary *)v573 setObject:v455 forKeyedSubscript:v456];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E900 forKeyedSubscript:@"weightForNumAnamolyEventsNormalized"];
            v408 = @"%@_OutingInterfaceType";
            goto LABEL_31;
          case 3:
            v433 = [NSNumber numberWithInt:3];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v433];

            v434 = v381->_configurationManager;
            v435 = [NSString stringWithFormat:@"%@_PhotoMomentInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v436) = 1120403456;
            [(MOConfigurationManagerBase *)v434 getFloatSettingForKey:v435 withFallback:v436];
            v437 = [NSNumber numberWithFloat:?];
            v438 = [NSNumber numberWithInt:3];
            [(NSDictionary *)v573 setObject:v437 forKeyedSubscript:v438];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            v408 = @"%@_PhotoMomentInterfaceType";
            goto LABEL_31;
          case 4:
            v439 = [NSNumber numberWithInt:4];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v439];

            v440 = v381->_configurationManager;
            v441 = [NSString stringWithFormat:@"%@_SignificantContactInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v442) = 1120403456;
            [(MOConfigurationManagerBase *)v440 getFloatSettingForKey:v441 withFallback:v442];
            v443 = [NSNumber numberWithFloat:?];
            v444 = [NSNumber numberWithInt:4];
            [(NSDictionary *)v573 setObject:v443 forKeyedSubscript:v444];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E910 forKeyedSubscript:@"weightForNumAnamolyEventsNormalized"];
            [v407 setObject:&off_10036E910 forKeyedSubscript:@"weightForNumTrendEventsNormalized"];
            [v407 setObject:&off_10036E920 forKeyedSubscript:@"richnessScoreScalingParameter"];
            [v407 setObject:&off_10036E930 forKeyedSubscript:@"bundleScoreConstant"];
            v408 = @"%@_SignificantContactInterfaceType";
            goto LABEL_31;
          case 5:
            v415 = [NSNumber numberWithInt:5];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v415];

            v416 = v381->_configurationManager;
            v417 = [NSString stringWithFormat:@"%@_YourMediaInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v418) = 1120403456;
            [(MOConfigurationManagerBase *)v416 getFloatSettingForKey:v417 withFallback:v418];
            v419 = [NSNumber numberWithFloat:?];
            v420 = [NSNumber numberWithInt:5];
            [(NSDictionary *)v573 setObject:v419 forKeyedSubscript:v420];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            v408 = @"%@_YourMediaInterfaceType";
            goto LABEL_31;
          case 6:
            v457 = [NSNumber numberWithInt:6];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v457];

            v458 = v381->_configurationManager;
            v459 = [NSString stringWithFormat:@"%@_YourSharedContentInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v460) = 1120403456;
            [(MOConfigurationManagerBase *)v458 getFloatSettingForKey:v459 withFallback:v460];
            v461 = [NSNumber numberWithFloat:?];
            v462 = [NSNumber numberWithInt:6];
            [(NSDictionary *)v573 setObject:v461 forKeyedSubscript:v462];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E940 forKeyedSubscript:@"bundleScoreConstant"];
            v408 = @"%@_YourSharedContentInterfaceType";
            goto LABEL_31;
          case 7:
            v469 = [NSNumber numberWithInt:7];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v469];

            v470 = v381->_configurationManager;
            v471 = [NSString stringWithFormat:@"%@_YourTimeAtHomeInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v472) = 1120403456;
            [(MOConfigurationManagerBase *)v470 getFloatSettingForKey:v471 withFallback:v472];
            v473 = [NSNumber numberWithFloat:?];
            v474 = [NSNumber numberWithInt:7];
            [(NSDictionary *)v573 setObject:v473 forKeyedSubscript:v474];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E950 forKeyedSubscript:@"bundleScoreConstant"];
            [v407 setObject:&off_10036E960 forKeyedSubscript:@"bundleScoreScalingParameter"];
            v408 = @"%@_YourTimeAtHomeInterfaceType";
            goto LABEL_31;
          case 8:
            v445 = [NSNumber numberWithInt:8];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v445];

            v446 = v381->_configurationManager;
            v447 = [NSString stringWithFormat:@"%@_TopicsOfInterestInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v448) = 1120403456;
            [(MOConfigurationManagerBase *)v446 getFloatSettingForKey:v447 withFallback:v448];
            v449 = [NSNumber numberWithFloat:?];
            v450 = [NSNumber numberWithInt:8];
            [(NSDictionary *)v573 setObject:v449 forKeyedSubscript:v450];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            v408 = @"%@_TopicsOfInterestInterfaceType";
            goto LABEL_31;
          case 9:
            v481 = [NSNumber numberWithInt:9];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v481];

            v482 = v381->_configurationManager;
            v483 = [NSString stringWithFormat:@"%@_TrendInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight", v562];
            LODWORD(v484) = 1120403456;
            [(MOConfigurationManagerBase *)v482 getFloatSettingForKey:v483 withFallback:v484];
            v485 = [NSNumber numberWithFloat:?];
            v486 = [NSNumber numberWithInt:9];
            [(NSDictionary *)v573 setObject:v485 forKeyedSubscript:v486];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            v408 = @"%@_TrendInterfaceType";
            goto LABEL_31;
          case 10:
            v427 = [NSNumber numberWithInt:10];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v427];

            v428 = v381->_configurationManager;
            v429 = [NSString stringWithFormat:@"%@_PhotoMemoryInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v430) = 1120403456;
            [(MOConfigurationManagerBase *)v428 getFloatSettingForKey:v429 withFallback:v430];
            v431 = [NSNumber numberWithFloat:?];
            v432 = [NSNumber numberWithInt:10];
            [(NSDictionary *)v573 setObject:v431 forKeyedSubscript:v432];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E970 forKeyedSubscript:@"decayRate"];
            [v407 setObject:&off_10036E970 forKeyedSubscript:@"decayRateAfterViewed"];
            v408 = @"%@_PhotoMemoryInterfaceType";
            goto LABEL_31;
          case 11:
            v475 = [NSNumber numberWithInt:11];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v475];

            v476 = v381->_configurationManager;
            v477 = [NSString stringWithFormat:@"%@_EvergreenInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v478) = 1120403456;
            [(MOConfigurationManagerBase *)v476 getFloatSettingForKey:v477 withFallback:v478];
            v479 = [NSNumber numberWithFloat:?];
            v480 = [NSNumber numberWithInt:11];
            [(NSDictionary *)v573 setObject:v479 forKeyedSubscript:v480];

            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"WISDOM"];
            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"GRATITUDE"];
            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"KINDNESS"];
            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"PURPOSE"];
            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"RESILIENCE"];
            [(NSDictionary *)v568 setObject:&off_10036E8E0 forKeyedSubscript:@"CREATIVITY"];
            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E8E0 forKeyedSubscript:@"decayRate"];
            [v407 setObject:&off_10036E8E0 forKeyedSubscript:@"weightForLabelQualityScore"];
            v408 = @"%@_EvergreenInterfaceType";
            goto LABEL_31;
          case 12:
            v409 = [NSNumber numberWithInt:12];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v409];

            v410 = v381->_configurationManager;
            v411 = [NSString stringWithFormat:@"%@_TimeContextInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v412) = 1120403456;
            [(MOConfigurationManagerBase *)v410 getFloatSettingForKey:v411 withFallback:v412];
            v413 = [NSNumber numberWithFloat:?];
            v414 = [NSNumber numberWithInt:12];
            [(NSDictionary *)v573 setObject:v413 forKeyedSubscript:v414];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E8F0 forKeyedSubscript:@"weightForNumRoutineEventsNormalized"];
            v408 = @"%@_TimeContextInterfaceType";
            goto LABEL_31;
          case 13:
            v421 = [NSNumber numberWithInt:13];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v421];

            v422 = v381->_configurationManager;
            v423 = [NSString stringWithFormat:@"%@_TripInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v424) = 1120403456;
            [(MOConfigurationManagerBase *)v422 getFloatSettingForKey:v423 withFallback:v424];
            v425 = [NSNumber numberWithFloat:?];
            v426 = [NSNumber numberWithInt:13];
            [(NSDictionary *)v573 setObject:v425 forKeyedSubscript:v426];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            v408 = @"%@_TripInterfaceType";
            goto LABEL_31;
          case 14:
            v463 = [NSNumber numberWithInt:14];
            [(NSDictionary *)v571 setObject:&off_10036E8E0 forKeyedSubscript:v463];

            v464 = v381->_configurationManager;
            v465 = [NSString stringWithFormat:@"%@_StateOfMindInterfaceType_%@", @"rankingParams", @"BPRRegularizationWeight"];
            LODWORD(v466) = 1120403456;
            [(MOConfigurationManagerBase *)v464 getFloatSettingForKey:v465 withFallback:v466];
            v467 = [NSNumber numberWithFloat:?];
            v468 = [NSNumber numberWithInt:14];
            [(NSDictionary *)v573 setObject:v467 forKeyedSubscript:v468];

            v407 = [(MOEventBundleRanking *)v381 _getDefaultFallbackFactorDict];

            [v407 setObject:&off_10036E920 forKeyedSubscript:@"bundleScoreConstant"];
            [v407 setObject:&off_10036E980 forKeyedSubscript:@"decayRate"];
            v408 = @"%@_StateOfMindInterfaceType";
LABEL_31:
            v399 = v407;
            v487 = [NSString stringWithFormat:v408, @"rankingParams"];

            v579 = v487;
            break;
          default:
            break;
        }

        v488 = objc_opt_new();
        v581 = 0u;
        v582 = 0u;
        v583 = 0u;
        v584 = 0u;
        v399 = v399;
        v489 = [v399 countByEnumeratingWithState:&v581 objects:v586 count:16];
        if (v489)
        {
          v490 = v489;
          v491 = *v582;
          do
          {
            for (i = 0; i != v490; i = i + 1)
            {
              if (*v582 != v491)
              {
                objc_enumerationMutation(v399);
              }

              v493 = *(*(&v581 + 1) + 8 * i);
              v494 = v580->_configurationManager;
              v495 = [NSString stringWithFormat:@"%@_%@", v579, v493];
              v496 = [v399 objectForKeyedSubscript:v493];
              [v496 floatValue];
              [(MOConfigurationManagerBase *)v494 getFloatSettingForKey:v495 withFallback:?];
              v497 = [NSNumber numberWithFloat:?];
              [v488 setObject:v497 forKeyedSubscript:v493];

              v381 = v580;
            }

            v490 = [v399 countByEnumeratingWithState:&v581 objects:v586 count:16];
          }

          while (v490);
        }

        v498 = [v488 copy];
        v499 = [NSNumber numberWithInt:v577];
        [(NSDictionary *)v575 setObject:v498 forKeyedSubscript:v499];

        v400 = v577 + 1;
      }

      while (v577 != 16);
      v500 = objc_opt_new();
      v501 = v381->_configurationManager;
      v502 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minEngagementCount"];
      v503 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v501 getIntegerSettingForKey:v502 withFallback:5]];
      [(NSDictionary *)v500 setObject:v503 forKeyedSubscript:@"minEngagementCount"];

      v504 = v381->_configurationManager;
      v505 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minInterfaceTypes"];
      v506 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v504 getIntegerSettingForKey:v505 withFallback:2]];
      [(NSDictionary *)v500 setObject:v506 forKeyedSubscript:@"minInterfaceTypes"];

      v507 = v381->_configurationManager;
      v508 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"minTimeIntervalForUpdateSec"];
      v509 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v507 getIntegerSettingForKey:v508 withFallback:259200]];
      [(NSDictionary *)v500 setObject:v509 forKeyedSubscript:@"minTimeIntervalForUpdateSec"];

      v510 = v381->_configurationManager;
      v511 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];
      v512 = [NSNumber numberWithInt:[(MOConfigurationManagerBase *)v510 getIntegerSettingForKey:v511 withFallback:2419200]];
      [(NSDictionary *)v500 setObject:v512 forKeyedSubscript:@"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];

      v513 = v381->_configurationManager;
      v514 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"lowerBoundOfEngagementScoreParams"];
      LODWORD(v515) = -1.0;
      [(MOConfigurationManagerBase *)v513 getFloatSettingForKey:v514 withFallback:v515];
      v516 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v500 setObject:v516 forKeyedSubscript:@"lowerBoundOfEngagementScoreParams"];

      v517 = v381->_configurationManager;
      v518 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"upperBoundOfEngagementScoreParams"];
      LODWORD(v519) = 1.0;
      [(MOConfigurationManagerBase *)v517 getFloatSettingForKey:v518 withFallback:v519];
      v520 = [NSNumber numberWithFloat:?];
      [(NSDictionary *)v500 setObject:v520 forKeyedSubscript:@"upperBoundOfEngagementScoreParams"];

      v521 = objc_opt_new();
      v522 = v381->_configurationManager;
      v523 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFarthest"];
      LODWORD(v524) = 2.5;
      [(MOConfigurationManagerBase *)v522 getFloatSettingForKey:v523 withFallback:v524];
      v525 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v521 setObject:v525 forKeyedSubscript:@"pairWiseFarthest"];

      v526 = v381->_configurationManager;
      v527 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFarther"];
      LODWORD(v528) = 2.0;
      [(MOConfigurationManagerBase *)v526 getFloatSettingForKey:v527 withFallback:v528];
      v529 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v521 setObject:v529 forKeyedSubscript:@"pairWiseFarther"];

      v530 = v381->_configurationManager;
      v531 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", @"pairWiseFar"];
      LODWORD(v532) = 1.0;
      [(MOConfigurationManagerBase *)v530 getFloatSettingForKey:v531 withFallback:v532];
      v533 = [NSNumber numberWithFloat:?];
      [(NSMutableDictionary *)v521 setObject:v533 forKeyedSubscript:@"pairWiseFar"];

      v534 = objc_opt_new();
      v535 = [(MOEventBundleRanking *)v381 _getDefaultRichnessWeightDict];
      for (j = 0; j != 18; ++j)
      {
        v537 = [MOResource getStringTypeForResources:j];
        v538 = [v535 objectForKeyedSubscript:v537];
        v539 = [(MOEventBundleRanking *)v381 _getRichnessScoreWeightFromConfigurationManager:v537 withDefaultWeightDict:v538];
        [(NSDictionary *)v534 setObject:v539 forKey:v537];

        v381 = v580;
      }

      v540 = [v535 objectForKeyedSubscript:@"NumUniqueResourceTypesNormalizedKey"];
      v541 = [(MOEventBundleRanking *)v580 _getRichnessScoreWeightFromConfigurationManager:@"NumUniqueResourceTypesNormalizedKey" withDefaultWeightDict:v540];
      [(NSDictionary *)v534 setObject:v541 forKey:@"NumUniqueResourceTypesNormalizedKey"];

      v574 = [v535 objectForKeyedSubscript:@"NumWorkoutRouteMapAssets"];

      v542 = [(MOEventBundleRanking *)v580 _getRichnessScoreWeightFromConfigurationManager:@"NumWorkoutRouteMapAssets" withDefaultWeightDict:v574];
      [(NSDictionary *)v534 setObject:v542 forKey:@"NumWorkoutRouteMapAssets"];

      richnessWeightsDict = v580->_richnessWeightsDict;
      v580->_richnessWeightsDict = v534;
      v570 = v534;

      engagementScoreParameterDict = v580->_engagementScoreParameterDict;
      v580->_engagementScoreParameterDict = v500;
      v569 = v500;

      staticModelParameterMatrix = v580->_staticModelParameterMatrix;
      v580->_staticModelParameterMatrix = v575;
      v578 = v575;

      dynamicModelParameterDict = v580->_dynamicModelParameterDict;
      v580->_dynamicModelParameterDict = v571;
      v576 = v571;

      v547 = [(MOEventBundleRanking *)v580 _checkAndUpdateNumericLimits:v564];
      heuristicsParameterDict = v580->_heuristicsParameterDict;
      v580->_heuristicsParameterDict = v547;
      v549 = v547;

      rankingScoreThresholdDict = v580->_rankingScoreThresholdDict;
      v580->_rankingScoreThresholdDict = v565;
      v572 = v565;

      viewCountBasedAdjustmentParameterDict = v580->_viewCountBasedAdjustmentParameterDict;
      v580->_viewCountBasedAdjustmentParameterDict = v563;
      v552 = v563;

      bprRegularizationFactor = v580->_bprRegularizationFactor;
      v580->_bprRegularizationFactor = v573;
      v554 = v573;

      pairWiseWeights = v580->_pairWiseWeights;
      v580->_pairWiseWeights = v521;
      v556 = v521;

      evergreenEngagementScoreParameterDict = v580->_evergreenEngagementScoreParameterDict;
      v580->_evergreenEngagementScoreParameterDict = v568;
      v558 = v568;

      curationParameterDict = v580->_curationParameterDict;
      v580->_curationParameterDict = v567;
      v560 = v567;

      v7 = v580;
      v6 = v566;
    }

    self = v7;
    v390 = self;
  }

  else
  {
    v388 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v389 = +[NSAssertionHandler currentHandler];
    [v389 handleFailureInMethod:a2 object:self file:@"MOEventBundleRanking.m" lineNumber:928 description:@"Invalid parameter not satisfying: configurationManager"];

    v390 = 0;
  }

  return v390;
}

- (id)_getRichnessScoreWeightFromConfigurationManager:(id)a3 withDefaultWeightDict:(id)a4
{
  v6 = a4;
  v24 = a3;
  v25 = objc_opt_new();
  v23 = [v24 stringByAppendingString:@"_Resource_PrimaryWeight"];
  configurationManager = self->_configurationManager;
  v8 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v23];
  v9 = [v6 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
  [v9 floatValue];
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v8 withFallback:?];
  v10 = [NSNumber numberWithFloat:?];

  [v25 setObject:v10 forKey:@"RankingRichnessPrimaryPriorityScoreKey"];
  v11 = [v24 stringByAppendingString:@"_Resource_SecondaryWeight"];

  v12 = self->_configurationManager;
  v13 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v11];
  v14 = v6;
  v15 = [v6 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];
  [v15 floatValue];
  [(MOConfigurationManagerBase *)v12 getFloatSettingForKey:v13 withFallback:?];
  v16 = [NSNumber numberWithFloat:?];

  [v25 setObject:v16 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
  v17 = [v24 stringByAppendingString:@"_Resource_AuxiliaryWeight"];

  v18 = self->_configurationManager;
  v19 = [NSString stringWithFormat:@"%@_%@", @"rankingParams", v17];
  v20 = [v14 objectForKeyedSubscript:@"RankingRichnessPrimaryPriorityScoreKey"];

  [v20 floatValue];
  [(MOConfigurationManagerBase *)v18 getFloatSettingForKey:v19 withFallback:?];
  v21 = [NSNumber numberWithFloat:?];

  [v25 setObject:v21 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];

  return v25;
}

- (void)generateBundleRanking:(id)a3 withMinRecommendedBundleCountRequirement:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v36 = [v5 count];
    v37 = 1024;
    LODWORD(v38) = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Input bundle count: %lu, minimumRecommendedBundleRequired:%d", buf, 0x12u);
  }

  v28 = v4;

  v7 = +[NSMutableIndexSet indexSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 bundleIdentifier];
        if (!v15 || (v16 = v15, [v14 suggestionID], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
        {
          [v7 addIndex:v11];
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v14 bundleIdentifier];
            v20 = [v14 suggestionID];
            *buf = 138412546;
            v36 = v19;
            v37 = 2112;
            v38 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "bundle with nil bundleID or nil suggestionID was filtered out: bundleID %@ suggestionID %@", buf, 0x16u);
          }
        }

        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v10);
  }

  [v8 removeObjectsAtIndexes:v7];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v8 count];
    *buf = 134217984;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Input bundle count after nil ID filters: %lu", buf, 0xCu);
  }

  v23 = [(MOEventBundleRanking *)self generateRankingInput:v8];
  v24 = [(MOEventBundleRanking *)self _calculateRankingScore:v23 withMinRecommendedBundleCountRequirement:v28];
  if (self->_isInternalBuild)
  {
    v25 = +[NSDate date];
    [(MOEventBundleRanking *)self _submitEventBundleRankingAnalytics:v24 withRankingInput:v23 andSubmissionDate:v25];
  }

  [(MOEventBundleRanking *)self _mergeScoresToBundles:v8 usingScore:v24];
  v26 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v8 count];
    *buf = 134217984;
    v36 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "generateBundleRanking completed for %lu bundles", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
  v5 = [v4 isAfterDate:*(a1 + 32)];

  v6 = [v3 objectForKeyedSubscript:@"bundleStartDate"];

  LODWORD(a1) = [v6 isBeforeDate:*(a1 + 40)];
  return v5 & a1;
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_706(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"numHolidayAssets"];
  if ([v6 intValue] <= 0)
  {
  }

  else
  {
    v7 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:@"maxNumOfHolidayBundlesPerDay"];
    v8 = [v7 intValue];

    if (v8 > a3)
    {
      [v5 setObject:&off_10036BCB0 forKeyedSubscript:@"useHolidayLabel"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_706_cold_1(v5, @"numHolidayAssets");
      }
    }
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_710(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"numBirthdayAssets"];
  if ([v6 intValue] <= 0)
  {
  }

  else
  {
    v7 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:@"maxNumOfBirthdayBundlesPerDay"];
    v8 = [v7 intValue];

    if (v8 > a3)
    {
      [v5 setObject:&off_10036BCB0 forKeyedSubscript:@"useBirthdayLabel"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_710_cold_1(v5, @"numBirthdayAssets");
      }
    }
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleSuperType"];
  v5 = [v4 intValue];

  if (v5 == 3)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [v3 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    v68 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (!v68)
    {
      goto LABEL_17;
    }

    v67 = *v70;
    v65 = a1;
    while (1)
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v69 + 1) + 8 * i);
        v8 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
        v9 = [*(a1 + 32) rankingScoreThresholdDict];
        v10 = [v9 objectForKeyedSubscript:@"contactHoldOffThreshold"];
        [v10 floatValue];
        v12 = [v8 dateByAddingTimeInterval:v11];

        v13 = [*(a1 + 40) objectForKey:v7];

        if (v13)
        {
          v14 = [*(a1 + 40) objectForKey:v7];
          if ([v14 compare:v12]== 1)
          {
            v15 = [v3 objectForKeyedSubscript:@"isWithinHoldOffPeriod"];
            v16 = [v15 isEqual:&off_10036BC80];

            if (!v16)
            {
              goto LABEL_13;
            }

            [v3 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
            [v3 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
            [v3 setObject:&off_10036BCB0 forKeyedSubscript:@"isWithinHoldOffPeriod"];
            [v3 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
            v17 = *(a1 + 48);
            v18 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
            [v17 replaceObjectAtIndex:objc_msgSend(v18 withObject:{"intValue"), v3}];

            v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v19 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
              v20 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
              v21 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
              v22 = [v3 objectForKeyedSubscript:@"bundleSubType"];
              *buf = 138413058;
              v74 = v19;
              v75 = 2112;
              v76 = v20;
              v77 = 2112;
              v78 = v21;
              v79 = 2112;
              v80 = v22;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Contact was suppressed from Recent tab since there is a visible suggestion with same contactID in the hold off period. SuggestionID:%@, BundleID:%@, startDate:%@,subType:%@", buf, 0x2Au);

              a1 = v65;
            }
          }
        }

LABEL_13:
        v23 = [v3 objectForKeyedSubscript:@"rankingCategory"];
        v24 = [v23 intValue];

        if (v24 != 3)
        {
          v25 = *(a1 + 40);
          v26 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
          [v25 setObject:v26 forKey:v7];
        }
      }

      v68 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      if (!v68)
      {
LABEL_17:

        break;
      }
    }
  }

  v27 = phoneSensedWalkingVariants;
  v28 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  if ([v27 containsObject:v28])
  {
  }

  else
  {
    v29 = visitSubtypeVariants;
    v30 = [v3 objectForKeyedSubscript:@"bundleSubType"];
    LODWORD(v29) = [v29 containsObject:v30];

    if (!v29)
    {
      goto LABEL_44;
    }
  }

  v31 = *(*(*(a1 + 56) + 8) + 40);
  v32 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if ([v31 containsObject:v32])
  {
    v33 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
    [v33 floatValue];
    v35 = v34;

    if (v35 == 0.0)
    {
      [v3 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v3 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
      [v3 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
      [v3 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v36 = *(a1 + 48);
      v37 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
      [v36 replaceObjectAtIndex:objc_msgSend(v37 withObject:{"intValue"), v3}];

      v38 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
        v40 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
        v41 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
        v42 = [v3 objectForKeyedSubscript:@"bundleSubType"];
        *buf = 138413058;
        v74 = v39;
        v75 = 2112;
        v76 = v40;
        v77 = 2112;
        v78 = v41;
        v79 = 2112;
        v80 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Phone-sensed walk or outing bundle was suppressed from Recent tab since it shares the same place(s) with other bundle(s) with higher goodness score from the same day. SuggestionID:%@, BundleID:%@, startDate:%@,subType:%@", buf, 0x2Au);
      }

      goto LABEL_42;
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 64) + 8) + 24) >= 1)
  {
    v43 = phoneSensedWalkingVariants;
    v44 = [v3 objectForKeyedSubscript:@"bundleSubType"];
    if ([v43 containsObject:v44])
    {
      v45 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
      if ([v45 isEqualToSet:emptyStringSet])
      {
        v46 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
        [v46 floatValue];
        v48 = v47;

        if (v48 == 0.0)
        {
          [v3 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v3 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
          [v3 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
          [v3 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v49 = *(a1 + 48);
          v50 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
          [v49 replaceObjectAtIndex:objc_msgSend(v50 withObject:{"intValue"), v3}];

          v51 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
            v53 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
            v54 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
            *buf = 138412802;
            v74 = v52;
            v75 = 2112;
            v76 = v53;
            v77 = 2112;
            v78 = v54;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Phone-sensed walk with no location was suppressed from Recent tab since there is other unsuppressed walking suggestion with higher goodness score. SuggestionID:%@, BundleID:%@, startDate:%@", buf, 0x20u);
          }

          goto LABEL_42;
        }

        goto LABEL_36;
      }
    }
  }

LABEL_36:
  v55 = phoneSensedWalkingVariants;
  v56 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  LODWORD(v55) = [v55 containsObject:v56];

  if (!v55)
  {
    goto LABEL_42;
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  v57 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (([v57 isEqualToSet:emptyStringSet] & 1) == 0)
  {

    goto LABEL_41;
  }

  v58 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v58 floatValue];
  v60 = v59;

  if (v60 > 0.0)
  {
LABEL_41:
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

LABEL_42:
  v61 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v62 = [v61 isEqualToSet:emptyStringSet];

  if ((v62 & 1) == 0)
  {
    v63 = *(*(*(a1 + 56) + 8) + 40);
    v64 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
    [v63 addObject:v64];
  }

LABEL_44:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_717(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = phoneSensedWalkingVariants;
  v5 = [v3 objectForKeyedSubscript:@"bundleSubType"];
  if (([v4 containsObject:v5] & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = [v3 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v7 = v6;
  if (v6 != emptyStringSet)
  {

LABEL_4:
    goto LABEL_5;
  }

  v8 = [v3 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v8 floatValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    [v3 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v3 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
    [v3 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecentTab"];
    [v3 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v11 = *(a1 + 32);
    v12 = [v3 objectForKeyedSubscript:@"rankingDictionaryIndex"];
    [v11 replaceObjectAtIndex:objc_msgSend(v12 withObject:{"intValue"), v3}];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 objectForKeyedSubscript:@"suggestionIdentifier"];
      v15 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
      v16 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Phone-sensed walking with no destination or photo got suppressed from Recent tab since richer walking bundle was found in the same day. SuggestionID:%@, BundleID:%@, startDate:%@", &v17, 0x20u);
    }
  }

LABEL_5:
}

uint64_t __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleStartDate"];
  v5 = [v4 isAfterDate:*(a1 + 32)];

  v6 = [v3 objectForKeyedSubscript:@"bundleStartDate"];

  LODWORD(a1) = [v6 isBeforeDate:*(a1 + 40)];
  return v5 & a1;
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v3 intValue] != 8)
  {
    v4 = [v7 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    v5 = [v4 isEqualToSet:emptyStringSet];

    if (v5)
    {
      goto LABEL_5;
    }

    v6 = *(a1 + 32);
    v3 = [v7 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    [v6 addObjectsFromArray:v3];
  }

LABEL_5:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v7 = [v5 objectForKeyedSubscript:?];
  v198 = v5;
  v196 = a1;
  if ([v6 containsObject:v7])
  {
  }

  else
  {
    v8 = *(*(*(a1 + 72) + 8) + 40);
    v9 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
    LODWORD(v8) = [v8 containsObject:v9];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [v198 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v198 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
  [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isDuplicated"];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v12 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    v13 = [v198 objectForKeyedSubscript:@"rankingScore"];
    [v13 floatValue];
    *buf = 138412802;
    v206 = v11;
    v207 = 2112;
    v208 = v12;
    v209 = 2048;
    v210 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Bundle got rejected since it shares suggestionID(%@) or bundleID(%@) with the other bundle with higher ranking score: %.3f", buf, 0x20u);
  }

LABEL_7:
  v15 = v198;
  v16 = [v198 objectForKeyedSubscript:?];
  if ([v16 intValue] == 11)
  {
    v17 = [v198 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v18 = [v17 intValue];

    if (v18 != 4)
    {
      v19 = v196;
      v20 = *(*(*(v196 + 80) + 8) + 40);
      v21 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      LODWORD(v20) = [v20 containsObject:v21];

      if (v20)
      {
        [v198 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
        [v198 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
        [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isDuplicated"];
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v24 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          *buf = 138412546;
          v206 = v23;
          v207 = 2112;
          v208 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Evergreen bundle got rejected since it is the same type as the other evergreen bundle: suggestionID %@ bundleID %@", buf, 0x16u);
        }

        v19 = v196;
      }

      else
      {
        ++*(*(*(v196 + 88) + 8) + 24);
      }

      v25 = *(*(*(v19 + 80) + 8) + 40);
      v15 = v198;
      v26 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      [v25 addObject:v26];
    }
  }

  else
  {
  }

  v27 = [v15 objectForKeyedSubscript:@"bundleSubType"];
  v28 = [v27 intValue];

  v29 = v198;
  if (v28 == 802)
  {
    v194 = a3;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    obj = [v198 objectForKeyedSubscript:@"allStateOfMindIdentifiersSet"];
    v30 = [obj countByEnumeratingWithState:&v200 objects:v204 count:16];
    v31 = v196;
    if (v30)
    {
      v32 = v30;
      v33 = *v201;
      v34 = @"visibilityCategoryForUI";
      v35 = @"rankingCategory";
      v36 = @"isDuplicated";
      v37 = &off_10036B938;
      do
      {
        v38 = 0;
        v197 = v32;
        do
        {
          if (*v201 != v33)
          {
            objc_enumerationMutation(obj);
          }

          if ([*(v31 + 32) containsObject:*(*(&v200 + 1) + 8 * v38)])
          {
            [v29 setObject:v37 forKeyedSubscript:v34];
            [v29 setObject:&off_10036BC98 forKeyedSubscript:v35];
            [v29 setObject:&off_10036BCB0 forKeyedSubscript:v36];
            v39 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              [v29 objectForKeyedSubscript:@"suggestionIdentifier"];
              v40 = v33;
              v41 = v36;
              v42 = v35;
              v43 = v34;
              v45 = v44 = v37;
              v46 = [v29 objectForKeyedSubscript:@"bundleIdentifier"];
              [v29 objectForKeyedSubscript:@"bundleStartDate"];
              v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412802;
              v206 = v45;
              v207 = 2112;
              v208 = v46;
              v209 = 2112;
              v210 = v47;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Standalone emotion bundle got suppressed from both tabs since the emotion is contained in another bundle. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);

              v29 = v198;
              v31 = v196;

              v37 = v44;
              v34 = v43;
              v35 = v42;
              v36 = v41;
              v33 = v40;
              v32 = v197;
            }
          }

          v38 = v38 + 1;
        }

        while (v32 != v38);
        v32 = [obj countByEnumeratingWithState:&v200 objects:v204 count:16];
      }

      while (v32);
    }

    a3 = v194;
  }

  [v29 objectForKeyedSubscript:?];
  v49 = v48 = v29;
  if ([v49 intValue] != 8)
  {
    goto LABEL_32;
  }

  v50 = [v48 objectForKeyedSubscript:@"rankingCategory"];
  if ([v50 isEqual:&off_10036BC98])
  {

LABEL_32:
    goto LABEL_33;
  }

  v79 = [v48 objectForKeyedSubscript:@"stateOfMindLoggedIn3pApp"];
  if ([v79 BOOLValue])
  {
  }

  else
  {
    v80 = [v48 objectForKeyedSubscript:@"stateOfMindLoggedInJournalApp"];
    v81 = [v80 BOOLValue];

    if (!v81)
    {
      goto LABEL_33;
    }
  }

  [v48 setObject:&off_10036BC98 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v48 setObject:&off_10036BA28 forKeyedSubscript:@"rankingCategory"];
LABEL_33:
  v51 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  if ([v51 intValue] == 802)
  {
    v52 = [v48 objectForKeyedSubscript:@"rankingCategory"];
    v53 = [v52 isEqual:&off_10036BC98];

    if ((v53 & 1) == 0)
    {
      [v48 setObject:&off_10036BC98 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v48 setObject:&off_10036BA28 forKeyedSubscript:@"rankingCategory"];
    }
  }

  else
  {
  }

  v54 = [v48 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v55 = &OBJC_IVAR____TtC8momentsd16ServerConnection_connection;
  v56 = &OBJC_IVAR____TtC8momentsd16ServerConnection_connection;
  if ([v54 intValue] == 1)
  {

    v57 = v196;
  }

  else
  {
    v58 = [v48 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v59 = [v58 intValue];

    v57 = v196;
    if (v59 != 2)
    {
      [v48 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      goto LABEL_166;
    }
  }

  v60 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  if ([v60 intValue] == 202)
  {
    v61 = *(v57 + 176);

    if ((v61 & 1) == 0)
    {
      [v198 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v198 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
      [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
LABEL_93:

LABEL_94:
        v48 = v198;
LABEL_95:
        v57 = v196;
        goto LABEL_166;
      }

      v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v63;
      v207 = 2112;
      v208 = v64;
      v209 = 2112;
      v210 = v65;
      v66 = "Weekly summary bundle got suppressed from Recommended tab since workout routine with the same workout types exists. SuggestionID:%@, bundleID:%@, startDate:%@";
LABEL_92:
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, v66, buf, 0x20u);

      goto LABEL_93;
    }
  }

  else
  {
  }

  if (*(v196 + 176) == 1)
  {
    v67 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    if ([v67 intValue] == 201)
    {
      v68 = [v198 objectForKeyedSubscript:@"bundleStartDate"];
      if ([v68 isAfterDate:*(v196 + 40)])
      {
        v69 = [v198 objectForKeyedSubscript:@"bundleEndDate"];
        v70 = [v69 isBeforeDate:*(v196 + 48)];

        v55 = &OBJC_IVAR____TtC8momentsd16ServerConnection_connection;
        if (v70)
        {
          v71 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
          v72 = [v71 BOOLValue];

          if (v72)
          {
            v73 = &off_10036B938;
          }

          else
          {
            v73 = &off_10036BC98;
          }

          if (v72)
          {
            v74 = &off_10036BC98;
          }

          else
          {
            v74 = &off_10036BA28;
          }

          [v198 setObject:v73 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:v74 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
          [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v75 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            v77 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleStartDate"];
            v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v206 = v76;
            v207 = 2112;
            v208 = v77;
            v209 = 2112;
            v210 = v78;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Workout bundle got suppressed from Recommended tab since weekly workout summary is shown on Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
          }

          goto LABEL_94;
        }

        goto LABEL_65;
      }

      v55 = &OBJC_IVAR____TtC8momentsd16ServerConnection_connection;
    }
  }

LABEL_65:
  v82 = v55[192];
  v83 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  if (![v82 containsObject:v83])
  {
LABEL_77:

    goto LABEL_78;
  }

  v84 = *(*(*(v196 + 96) + 8) + 40);
  v85 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
  if (([v84 containsObject:v85] & 1) == 0)
  {

    goto LABEL_77;
  }

  v86 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v86 floatValue];
  v88 = v87;

  if (v88 == 0.0)
  {
    v89 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v90 = [v89 BOOLValue];

    if (v90)
    {
      v91 = &off_10036B938;
    }

    else
    {
      v91 = &off_10036BC98;
    }

    if (v90)
    {
      v92 = &off_10036BC98;
    }

    else
    {
      v92 = &off_10036BA28;
    }

    [v198 setObject:v91 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v92 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      goto LABEL_93;
    }

    v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v63;
    v207 = 2112;
    v208 = v64;
    v209 = 2112;
    v210 = v65;
    v66 = "Workout bundle got suppressed from Recommended tab since it has the same workout type(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@";
    goto LABEL_92;
  }

LABEL_78:
  v93 = visitSubtypeVariants;
  v94 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  v95 = [v93 containsObject:v94];
  if ((v95 & 1) == 0)
  {
    v93 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    if ([v93 intValue] != 105)
    {
      goto LABEL_97;
    }
  }

  v96 = *(*(*(v196 + 104) + 8) + 40);
  v97 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (![v96 containsObject:v97])
  {

    if (v95)
    {
LABEL_98:

      goto LABEL_99;
    }

LABEL_97:

    goto LABEL_98;
  }

  v98 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v98 floatValue];
  v100 = v99;

  if ((v95 & 1) == 0)
  {
  }

  if (v100 == 0.0)
  {
    v101 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v102 = [v101 BOOLValue];

    if (v102)
    {
      v103 = &off_10036B938;
    }

    else
    {
      v103 = &off_10036BC98;
    }

    if (v102)
    {
      v104 = &off_10036BC98;
    }

    else
    {
      v104 = &off_10036BA28;
    }

    [v198 setObject:v103 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v104 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      goto LABEL_93;
    }

    v63 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v64 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v63;
    v207 = 2112;
    v208 = v64;
    v209 = 2112;
    v210 = v65;
    v66 = "Visit bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle. SuggestionID:%@, bundleID:%@, startDate:%@";
    goto LABEL_92;
  }

LABEL_99:
  v105 = [v198 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v105 intValue] != 10)
  {
LABEL_105:

    v57 = v196;
    goto LABEL_106;
  }

  v106 = *(*(*(v196 + 104) + 8) + 40);
  v107 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (([v106 containsObject:v107] & 1) == 0)
  {

    goto LABEL_105;
  }

  v108 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v108 floatValue];
  v110 = v109;

  v57 = v196;
  if (v110 == 0.0)
  {
    [v198 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v112;
      v207 = 2112;
      v208 = v113;
      v209 = 2112;
      v210 = v114;
      v115 = "Thematic summary bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle. SuggestionID:%@, bundleID:%@, startDate:%@";
LABEL_144:
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, v115, buf, 0x20u);

      v57 = v196;
      goto LABEL_145;
    }

    goto LABEL_145;
  }

LABEL_106:
  v48 = v198;
  v116 = [v198 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v116 intValue] == 3)
  {
    v117 = *(*(*(v57 + 112) + 8) + 40);
    v118 = [v198 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    LODWORD(v117) = [v117 containsObject:v118];

    if (v117)
    {
      v119 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
      if ([v119 BOOLValue])
      {

        v120 = &off_10036BC98;
        v121 = &off_10036B938;
      }

      else
      {
        v143 = [v198 objectForKeyedSubscript:@"bundleSubType"];
        v144 = [v143 intValue];

        if (v144 == 303)
        {
          v121 = &off_10036B938;
        }

        else
        {
          v121 = &off_10036BC98;
        }

        if (v144 == 303)
        {
          v120 = &off_10036BC98;
        }

        else
        {
          v120 = &off_10036BA28;
        }
      }

      v57 = v196;
      [v198 setObject:v121 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v198 setObject:v120 forKeyedSubscript:@"rankingCategory"];
      [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
      [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
      v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        goto LABEL_145;
      }

      v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v112;
      v207 = 2112;
      v208 = v113;
      v209 = 2112;
      v210 = v114;
      v115 = "Contact bundle got suppressed from Recommended tab since it shares the same contact id(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@";
      goto LABEL_144;
    }
  }

  else
  {
  }

  v122 = phoneSensedWalkingVariants;
  v123 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  LODWORD(v122) = [v122 containsObject:v123];

  if (!v122)
  {
    v139 = [v198 objectForKeyedSubscript:@"bundleSubType"];
    v140 = [v139 intValue];

    if (v140 == 401)
    {
      v57 = v196;
      if (*(*(*(v196 + 144) + 8) + 24) == 1)
      {
        [v198 setObject:&off_10036BC98 forKeyedSubscript:@"visibilityCategoryForUI"];
        [v198 setObject:&off_10036BA28 forKeyedSubscript:@"rankingCategory"];
        [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
        v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          [v198 objectForKeyedSubscript:@"bundleStartDate"];
          v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412802;
          v206 = v112;
          v207 = 2112;
          v208 = v113;
          v209 = 2112;
          v210 = v114;
          v115 = "Daily SongOnrepeat bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
          goto LABEL_144;
        }

LABEL_145:

        v48 = v198;
        goto LABEL_166;
      }

      ++*(*(*(v196 + 128) + 8) + 24);
      v145 = [NSNumber numberWithUnsignedInteger:?];
      v48 = v198;
      [v198 setObject:v145 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

      v146 = *(v196 + 144);
    }

    else
    {
      v141 = [v198 objectForKeyedSubscript:@"bundleSubType"];
      v142 = [v141 intValue];

      if (v142 == 402)
      {
        v57 = v196;
        if (*(*(*(v196 + 152) + 8) + 24) == 1)
        {
          [v198 setObject:&off_10036BC98 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:&off_10036BA28 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleStartDate"];
            v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v206 = v112;
            v207 = 2112;
            v208 = v113;
            v209 = 2112;
            v210 = v114;
            v115 = "Daily PlayedSong bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        ++*(*(*(v196 + 128) + 8) + 24);
        v160 = [NSNumber numberWithUnsignedInteger:?];
        v48 = v198;
        [v198 setObject:v160 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

        v146 = *(v196 + 152);
      }

      else
      {
        v147 = [v198 objectForKeyedSubscript:@"bundleSubType"];
        v148 = [v147 intValue];

        if (v148 != 403)
        {
          v161 = [v198 objectForKeyedSubscript:@"bundleInterfaceType"];
          v162 = [v161 intValue];

          if (v162 == 11)
          {
            [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
            goto LABEL_95;
          }

          v189 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          v57 = v196;
          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            v191 = *(*(*(v196 + 128) + 8) + 24);
            v192 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
            [v198 objectForKeyedSubscript:@"bundleIdentifier"];
            v193 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 134218498;
            v206 = v191;
            v207 = 2112;
            v208 = v192;
            v209 = 2112;
            v210 = v193;
            _os_log_debug_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEBUG, "Ordinal rank %lu:  SuggestionID:%@, bundleID:%@", buf, 0x20u);

            v57 = v196;
          }

          ++*(*(*(v57 + 128) + 8) + 24);
          v190 = [NSNumber numberWithUnsignedInteger:?];
          v48 = v198;
          [v198 setObject:v190 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

          ++*(*(*(v57 + 168) + 8) + 24);
          goto LABEL_166;
        }

        v57 = v196;
        if (*(*(*(v196 + 160) + 8) + 24) == 1)
        {
          [v198 setObject:&off_10036BC98 forKeyedSubscript:@"visibilityCategoryForUI"];
          [v198 setObject:&off_10036BA28 forKeyedSubscript:@"rankingCategory"];
          [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v111 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (!os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            goto LABEL_145;
          }

          v112 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
          v113 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
          [v198 objectForKeyedSubscript:@"bundleStartDate"];
          v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412802;
          v206 = v112;
          v207 = 2112;
          v208 = v113;
          v209 = 2112;
          v210 = v114;
          v115 = "Daily PlayedPodCast bundle was suppressed from Recommended tab since the same type already exists in Recommended tab. SuggestionID:%@, bundleID:%@, startDate:%@";
          goto LABEL_144;
        }

        ++*(*(*(v196 + 128) + 8) + 24);
        v163 = [NSNumber numberWithUnsignedInteger:?];
        v48 = v198;
        [v198 setObject:v163 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

        v146 = *(v196 + 160);
      }
    }

    *(*(v146 + 8) + 24) = 1;
    goto LABEL_166;
  }

  v124 = *(*(*(v196 + 104) + 8) + 40);
  v125 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  if (![v124 containsObject:v125])
  {
    goto LABEL_122;
  }

  v126 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v126 floatValue];
  v128 = v127;

  v57 = v196;
  if (v128 == 0.0)
  {
    v129 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
    v130 = [v129 BOOLValue];

    if (v130)
    {
      v131 = &off_10036B938;
    }

    else
    {
      v131 = &off_10036BC98;
    }

    if (v130)
    {
      v132 = &off_10036BC98;
    }

    else
    {
      v132 = &off_10036BA28;
    }

    [v198 setObject:v131 forKeyedSubscript:@"visibilityCategoryForUI"];
    [v198 setObject:v132 forKeyedSubscript:@"rankingCategory"];
    [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
    [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v125 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
    {
      v133 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
      v134 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
      [v198 objectForKeyedSubscript:@"bundleStartDate"];
      v135 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v206 = v133;
      v207 = 2112;
      v208 = v134;
      v209 = 2112;
      v210 = v135;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_INFO, "Phone sensed bundle got suppressed from Recommended tab since it shared the same place(s) with more highly ranked bundle and it does not have any photo. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
    }

LABEL_122:

    v57 = v196;
  }

  if (!*(*(*(v57 + 120) + 8) + 24))
  {
    goto LABEL_126;
  }

  v136 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v137 = v136;
  if (v136 != emptyStringSet)
  {

    v57 = v196;
    goto LABEL_126;
  }

  v149 = [v198 objectForKeyedSubscript:@"numPhotoAssetsResourcesNormalized"];
  [v149 floatValue];
  v151 = v150;

  v57 = v196;
  if (v151 != 0.0)
  {
LABEL_126:
    ++*(*(*(v57 + 120) + 8) + 24);
    ++*(*(*(v57 + 128) + 8) + 24);
    v138 = [NSNumber numberWithUnsignedInteger:?];
    v48 = v198;
    [v198 setObject:v138 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

    if (![*(*(*(v57 + 136) + 8) + 40) count])
    {
      objc_storeStrong((*(*(v57 + 136) + 8) + 40), a2);
    }

    goto LABEL_166;
  }

  v152 = [v198 objectForKeyedSubscript:@"isCoarseGranularitySummaryKey"];
  v153 = [v152 BOOLValue];

  if (v153)
  {
    v154 = &off_10036B938;
  }

  else
  {
    v154 = &off_10036BC98;
  }

  if (v153)
  {
    v155 = &off_10036BC98;
  }

  else
  {
    v155 = &off_10036BA28;
  }

  [v198 setObject:v154 forKeyedSubscript:@"visibilityCategoryForUI"];
  [v198 setObject:v155 forKeyedSubscript:@"rankingCategory"];
  [v198 setObject:&off_10036BCB0 forKeyedSubscript:@"isPseudoDupInRecommendedTab"];
  [v198 setObject:&off_10036BCC8 forKeyedSubscript:@"ordinalRankInRecommendedTab"];
  v156 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
  {
    v157 = [v198 objectForKeyedSubscript:@"suggestionIdentifier"];
    v158 = [v198 objectForKeyedSubscript:@"bundleIdentifier"];
    [v198 objectForKeyedSubscript:@"bundleStartDate"];
    v159 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412802;
    v206 = v157;
    v207 = 2112;
    v208 = v158;
    v209 = 2112;
    v210 = v159;
    _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "Phone-sensed walking bundle got suppressed from Recommended tab since it has the same workout type(s) with the other bundle with higher ranking score. SuggestionID:%@, bundleID:%@, startDate:%@", buf, 0x20u);
  }

  v48 = v198;
  v57 = v196;
LABEL_166:
  [*(v57 + 56) setObject:v48 atIndexedSubscript:a3];
  v164 = *(*(*(v57 + 64) + 8) + 40);
  [v48 objectForKeyedSubscript:@"bundleIdentifier"];
  v166 = v165 = v57;
  [v164 addObject:v166];

  v167 = *(*(*(v165 + 72) + 8) + 40);
  v168 = [v48 objectForKeyedSubscript:@"suggestionIdentifier"];
  [v167 addObject:v168];

  v169 = visitSubtypeVariants;
  v170 = [v48 objectForKeyedSubscript:@"bundleSubType"];
  v171 = [v169 containsObject:v170];
  if (v171)
  {
    v172 = 0;
    v173 = 0;
  }

  else
  {
    v169 = [v48 objectForKeyedSubscript:@"bundleSubType"];
    if ([v169 intValue] == 105)
    {
      v172 = 0;
      v173 = 0;
    }

    else
    {
      v187 = phoneSensedWalkingVariants;
      v188 = [v48 objectForKeyedSubscript:@"bundleSubType"];
      if ([v187 containsObject:v188])
      {
        v197 = v188;
        v173 = 0;
        v172 = 1;
      }

      else
      {
        v56 = [v48 objectForKeyedSubscript:@"bundleSuperType"];
        if ([v56 intValue] != 10)
        {

          goto LABEL_179;
        }

        v197 = v188;
        v172 = 1;
        v173 = 1;
      }
    }
  }

  v174 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
  v175 = [v174 isEqualToSet:emptyStringSet];

  if (!v173)
  {
    if (!v172)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  if (v172)
  {
LABEL_174:
  }

LABEL_175:
  if ((v171 & 1) == 0)
  {
  }

  if ((v175 & 1) == 0)
  {
    v176 = *(*(*(v196 + 104) + 8) + 40);
    v170 = [v198 objectForKeyedSubscript:@"allPlaceNamesSet"];
    [v176 addObject:v170];
LABEL_179:
  }

  v177 = workoutSubtypeVariants;
  v178 = v198;
  v179 = [v198 objectForKeyedSubscript:@"bundleSubType"];
  if ([v177 containsObject:v179])
  {
    v180 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
    v181 = [v180 isEqualToSet:emptyStringSet];

    if (v181)
    {
      goto LABEL_184;
    }

    v182 = *(*(*(v196 + 96) + 8) + 40);
    v179 = [v198 objectForKeyedSubscript:@"workoutTypesSet"];
    [v182 addObject:v179];
  }

  v178 = v198;
LABEL_184:
  v183 = [v178 objectForKeyedSubscript:@"bundleSuperType"];
  if ([v183 intValue] != 3)
  {
LABEL_187:

    v178 = v198;
    goto LABEL_188;
  }

  v184 = [v178 objectForKeyedSubscript:@"allContactIdentifiersSet"];
  v185 = [v184 isEqualToSet:emptyStringSet];

  if ((v185 & 1) == 0)
  {
    v186 = *(*(*(v196 + 112) + 8) + 40);
    v183 = [v178 objectForKeyedSubscript:@"allContactIdentifiersSet"];
    [v186 addObject:v183];
    goto LABEL_187;
  }

LABEL_188:
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_722(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"bundleInterfaceType"];
  if ([v6 intValue] == 11)
  {
    v7 = [v5 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v8 = [v7 intValue];

    if (v8 != 4 && ++*(*(*(a1 + 40) + 8) + 24) > *(a1 + 48))
    {
      [v5 setObject:&off_10036B938 forKeyedSubscript:@"visibilityCategoryForUI"];
      [v5 setObject:&off_10036BC98 forKeyedSubscript:@"rankingCategory"];
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Evergreen bundle got rejected because allowable evergreen count is reached: %@", &v10, 0xCu);
      }

      [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
    }
  }

  else
  {
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_732(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
  if (([v6 containsObject:v7] & 1) != 0 && (objc_msgSend(v5, "objectForKeyedSubscript:", @"rankingScore"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);

    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:@"rankingScore"];
      [v10 doubleValue];
      v12 = v11;

      [*(*(*(a1 + 48) + 8) + 40) doubleValue];
      v14 = v13 + -0.001;
      if (v12 <= v13 + -0.001)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13 + -0.001;
      }

      v16 = [NSNumber numberWithDouble:v15];
      v17 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      [v17 setObject:v16 forKeyedSubscript:@"rankingScore"];

      v18 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v5 objectForKeyedSubscript:@"suggestionIdentifier"];
        v20 = [NSNumber numberWithDouble:v12];
        v21 = [NSNumber numberWithDouble:v14];
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Lowering rank of suggestion: %@, from value: %@ to value: %@", &v22, 0x20u);
      }
    }
  }

  else
  {
  }
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_733(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
  if (v5)
  {
    v6 = v5;
    v7 = [v11 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
    v8 = [v7 intValue];

    if (v8 != 100000)
    {
      v9 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
      v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      [v10 setObject:v9 forKeyedSubscript:@"ordinalRankInRecommendedTab"];

      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (void)_mergeScoresToBundles:(id)a3 usingScore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 != [v8 count])
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleRanking *)v7 _mergeScoresToBundles:v8 usingScore:v10];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOEventBundleRanking.m" lineNumber:2569 description:{@"Mismatch between bundle count %lu and score array count %lu (in %s:%d)", objc_msgSend(v7, "count"), objc_msgSend(v8, "count"), "-[MOEventBundleRanking _mergeScoresToBundles:usingScore:]", 2569}];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v38)
  {
    v37 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v12 = 0;
    v36 = *v40;
    v29 = self;
    v30 = v8;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = [v8 objectAtIndexedSubscript:v12];
        v16 = [v15 mutableCopy];

        v17 = [v16 objectForKeyedSubscript:@"bundleInterfaceType"];
        v18 = [v17 intValue];

        if (v18 == 11)
        {
          ++v37;
        }

        else
        {
          v22 = [v16 objectForKeyedSubscript:@"visibilityCategoryForUI"];
          v23 = [v22 intValue];

          if (v23 > 2)
          {
            if (v23 == 3)
            {
              ++v33;
            }

            else if (v23 == 4)
            {
              ++v34;
            }
          }

          else if (v23 == 1)
          {
            ++v31;
          }

          else if (v23 == 2)
          {
            ++v32;
          }
        }

        [v16 removeObjectForKey:@"bundleInterfaceType"];
        [v16 removeObjectForKey:@"bundleSubType"];
        [v16 removeObjectForKey:@"bundleSuperType"];
        [v16 removeObjectForKey:@"elapsedDaysFromBundleEndDate"];
        [v16 removeObjectForKey:@"rankingDictionaryIndex"];
        [v16 removeObjectForKey:@"bundleIdentifier"];
        [v16 removeObjectForKey:@"suggestionIdentifier"];
        [v16 removeObjectForKey:@"allPlaceNamesSet"];
        [v16 removeObjectForKey:@"workoutTypesSet"];
        [v16 removeObjectForKey:@"allContactIdentifiersSet"];
        [v16 removeObjectForKey:@"allStateOfMindIdentifiersSet"];
        [v16 removeObjectForKey:@"numAnomalyEventsNormalized"];
        [v16 removeObjectForKey:@"numPhotoAssetsResourcesNormalized"];
        [v16 removeObjectForKey:@"numMediaAssetsResourcesNormalized"];
        [v16 removeObjectForKey:@"isCoarseGranularitySummaryKey"];
        [v16 removeObjectForKey:@"bundleStartDate"];
        [v16 removeObjectForKey:@"bundleEndDate"];
        [v16 removeObjectForKey:@"stateOfMindLoggedIn3pApp"];
        [v16 removeObjectForKey:@"stateOfMindLoggedInJournalApp"];
        v19 = [(MOEventBundleRanking *)self _checkAndUpdateNumericLimits:v16];
        v20 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v14 bundleIdentifier];
          v25 = [v14 suggestionID];
          *buf = 134218498;
          v44 = v12;
          v45 = 2112;
          v46 = v24;
          v47 = 2112;
          v48 = v25;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Bundle index %lu, BundleID %@, suggestionID %@", buf, 0x20u);

          self = v29;
          v8 = v30;
        }

        v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v19;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "RankingDict %@", buf, 0xCu);
        }

        [v14 setRankingDictionary:v19];
        v13 = v13 + 1;
        ++v12;
      }

      while (v38 != v13);
      v26 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
      v38 = v26;
    }

    while (v26);
  }

  else
  {
    v37 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
  }

  v27 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [obj count];
    *buf = 134219264;
    v44 = v28;
    v45 = 2048;
    v46 = v31;
    v47 = 2048;
    v48 = v32;
    v49 = 2048;
    v50 = v33;
    v51 = 2048;
    v52 = v34;
    v53 = 2048;
    v54 = v37;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Added ranking dictionaries to bundle array: Num totalBundles=%lu, NumSensedBundlesEligibleForBothTabs=%lu,NumSensedBundlesRecommendedOnly=%lu, NumSensedBundlesRecentOnly=%lu, numSensedBundlesRejected=%lu, numEvergreenBundles=%lu  ", buf, 0x3Eu);
  }
}

- (void)_submitEventBundleRankingAnalytics:(id)a3 withRankingInput:(id)a4 andSubmissionDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 count];
  if (v12 != [v10 count])
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }

    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MOEventBundleRanking.m" lineNumber:2634 description:{@"Mismatch between score dict and input dict sizes (in %s:%d)", "-[MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:]", 2634}];
  }

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v304[0] = [v9 count];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%lu bundle rankings and inputs are set to be submitted to CoreAnalytics.", buf, 0xCu);
  }

  v260 = +[NSCalendar currentCalendar];
  v261 = v11;
  v16 = [v260 components:764 fromDate:v11];
  v276 = [v16 year];
  v278 = [v16 month];
  v282 = [v16 day];
  v283 = [v16 hour];
  v259 = v16;
  v284 = [v16 minute];
  v17 = [(MOConfigurationManagerBase *)self->_configurationManager getTrialExperimentIdentifiers];
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v301 = 0u;
  obj = v10;
  v286 = [obj countByEnumeratingWithState:&v298 objects:v302 count:16];
  v288 = v17;
  if (v286)
  {
    v18 = 0;
    v274 = *v299;
    do
    {
      v19 = 0;
      do
      {
        if (*v299 != v274)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v298 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [v9 objectAtIndexedSubscript:v18];
        v23 = objc_opt_new();
        v24 = [NSNumber numberWithInteger:v276];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"submissionTimeYear" andValue:v24];

        v25 = [NSNumber numberWithInteger:v278];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"submissionTimeMonth" andValue:v25];

        v26 = [NSNumber numberWithInteger:v282];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"submissionTimeDay" andValue:v26];

        v27 = [NSNumber numberWithInteger:v283];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"submissionTimeHour" andValue:v27];

        v28 = [NSNumber numberWithInteger:v284];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"submissionTimeMinute" andValue:v28];

        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"scalingFactorForAnalytics" andValue:&off_10036E9E0];
        v29 = [v20 bundleIdentifier];
        v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 hash]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleId" andValue:v30];

        v31 = [v20 suggestionIdentifier];
        v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 hash]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"suggestionId" andValue:v32];

        v17 = v288;
        if (v288)
        {
          v33 = [v288 experimentId];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"trialExperimentId" andValue:v33];

          v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v288 deploymentId]);
          v35 = [v34 stringValue];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"trialDeploymentId" andValue:v35];

          v17 = v288;
          v36 = [v288 treatmentId];
          [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"trialTreatmentId" andValue:v36];
        }

        v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 suggestionIsDeleted]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isDeleted" andValue:v37];

        v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 suggestionIsSelected]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isSelected" andValue:v38];

        v39 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 suggestionQuickAddEntry]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"quickAddEntry" andValue:v39];

        [v20 viewCountNormalized];
        *&v41 = v40 * 10000.0;
        v42 = [NSNumber numberWithFloat:v41];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"viewCountNormalized" andValue:v42];

        v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 journalEntryIsCreated]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"journalEntryIsCreated" andValue:v43];

        v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 journalEntryIsEdited]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"journalEntryIsEdited" andValue:v44];

        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 journalEntryIsCancelled]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"journalEntryIsCancelled" andValue:v45];

        v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 journalEntryIsDeleted]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"journalEntryIsDeleted" andValue:v46];

        [v20 bundleRecencyDaysElapsed];
        v47 = [NSNumber numberWithFloat:?];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleRecencyDaysElapsed" andValue:v47];

        v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 bundleInterfaceType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleInterfaceType" andValue:v48];

        v49 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 bundleSubType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleSubType" andValue:v49];

        v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 bundleSuperType]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleSuperType" andValue:v50];

        [v20 numAnomalyEventsNormalized];
        *&v52 = v51 * 10000.0;
        v53 = [NSNumber numberWithFloat:v52];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numAnomalyEventsNormalized" andValue:v53];

        [v20 numTrendEventsNormalized];
        *&v55 = v54 * 10000.0;
        v56 = [NSNumber numberWithFloat:v55];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numTrendEventsNormalized" andValue:v56];

        [v20 numRoutineEventsNormalized];
        *&v58 = v57 * 10000.0;
        v59 = [NSNumber numberWithFloat:v58];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numRoutineEventsNormalized" andValue:v59];

        [v20 numStateOfMindEventsNormalized];
        *&v61 = v60 * 10000.0;
        v62 = [NSNumber numberWithFloat:v61];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numStateOfMindEventsNormalized" andValue:v62];

        [v20 numUniqueResourceTypesNormalized];
        *&v64 = v63 * 10000.0;
        v65 = [NSNumber numberWithFloat:v64];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numUniqueResourceTypesNormalized" andValue:v65];

        [v20 numValueTypeResourcesNormalized];
        *&v67 = v66 * 10000.0;
        v68 = [NSNumber numberWithFloat:v67];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numValueTypeResourcesNormalized" andValue:v68];

        [v20 numPhotoAssetsResourcesNormalized];
        *&v70 = v69 * 10000.0;
        v71 = [NSNumber numberWithFloat:v70];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numPhotoAssetsResourcesNormalized" andValue:v71];

        [v20 numMediaTypeResourcesNormalized];
        *&v73 = v72 * 10000.0;
        v74 = [NSNumber numberWithFloat:v73];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numMediaTypeResourcesNormalized" andValue:v74];

        [v20 numWebLinkTypeResourcesNormalized];
        *&v76 = v75 * 10000.0;
        v77 = [NSNumber numberWithFloat:v76];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numWebLinkTypeResourcesNormalized" andValue:v77];

        [v20 numInterfaceTagTypeResourcesNormalized];
        *&v79 = v78 * 10000.0;
        v80 = [NSNumber numberWithFloat:v79];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numInterfaceTagTypeResourcesNormalized" andValue:v80];

        [v20 numMapItemTypeResourcesNormalized];
        *&v82 = v81 * 10000.0;
        v83 = [NSNumber numberWithFloat:v82];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numMapItemTypeResourcesNormalized" andValue:v83];

        [v20 numAppTypeResourcesNormalized];
        *&v85 = v84 * 10000.0;
        v86 = [NSNumber numberWithFloat:v85];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numAppTypeResourcesNormalized" andValue:v86];

        [v20 numWorkoutRingAssetsNormalized];
        *&v88 = v87 * 10000.0;
        v89 = [NSNumber numberWithFloat:v88];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numWorkoutRingAssetsNormalized" andValue:v89];

        [v20 numWorkoutIconAssetsNormalized];
        *&v91 = v90 * 10000.0;
        v92 = [NSNumber numberWithFloat:v91];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numWorkoutIconAssetsNormalized" andValue:v92];

        [v20 numWorkoutRouteMapAssetsNormalized];
        *&v94 = v93 * 10000.0;
        v95 = [NSNumber numberWithFloat:v94];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"numWorkoutRouteMapAssetsNormalized" andValue:v95];

        [v20 isBundleActionSpecific];
        *&v97 = v96 * 10000.0;
        v98 = [NSNumber numberWithFloat:v97];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isBundleActionSpecificGranular" andValue:v98];

        [v20 isBundlePlaceTypeSpecific];
        *&v100 = v99 * 10000.0;
        v101 = [NSNumber numberWithFloat:v100];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isBundlePlaceTypeSpecificGranular" andValue:v101];

        [v20 isBundleTimeTagSpecific];
        *&v103 = v102 * 10000.0;
        v104 = [NSNumber numberWithFloat:v103];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isBundleTimeTagSpecificGranular" andValue:v104];

        [v20 labelSpecificityNormalized];
        *&v106 = v105 * 10000.0;
        v107 = [NSNumber numberWithFloat:v106];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"labelSpecificityNormalized" andValue:v107];

        [v20 labelQualityScore];
        *&v109 = v108 * 10000.0;
        v110 = [NSNumber numberWithFloat:v109];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"labelQualityScore" andValue:v110];

        [v20 peopleDensityWeightedAverageNormalized];
        *&v112 = v111 * 10000.0;
        v113 = [NSNumber numberWithFloat:v112];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"pDensityWeightedAverageNormalized" andValue:v113];

        v114 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 isWorkVisit]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isWorkVisit" andValue:v114];

        v115 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 isShortVisit]);
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"isShortVisit" andValue:v115];

        v116 = [v22 objectForKeyedSubscript:@"richnessScore"];
        [v116 floatValue];
        *&v118 = v117 * 10000.0;
        v119 = [NSNumber numberWithFloat:v118];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"richnessScore" andValue:v119];

        v120 = [v22 objectForKeyedSubscript:@"distinctnessScore"];
        [v120 floatValue];
        *&v122 = v121 * 10000.0;
        v123 = [NSNumber numberWithFloat:v122];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"distinctnessScore" andValue:v123];

        v124 = [v22 objectForKeyedSubscript:@"heuristicsScore"];
        [v124 floatValue];
        *&v126 = v125 * 10000.0;
        v127 = [NSNumber numberWithFloat:v126];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"heuristicsScore" andValue:v127];

        v128 = [v22 objectForKeyedSubscript:@"qualityScore"];
        [v128 floatValue];
        *&v130 = v129 * 10000.0;
        v131 = [NSNumber numberWithFloat:v130];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"qualityScore" andValue:v131];

        v132 = [v22 objectForKeyedSubscript:@"viewCountBasedScoreAdjustment"];
        [v132 floatValue];
        *&v134 = v133 * 10000.0;
        v135 = [NSNumber numberWithFloat:v134];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"viewCountBasedScoreAdjustment" andValue:v135];

        v136 = [v22 objectForKeyedSubscript:@"baseScore"];
        [v136 floatValue];
        *&v138 = v137 * 10000.0;
        v139 = [NSNumber numberWithFloat:v138];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"baseScore" andValue:v139];

        v140 = [v22 objectForKeyedSubscript:@"engagementScore"];
        [v140 floatValue];
        *&v142 = v141 * 10000.0;
        v143 = [NSNumber numberWithFloat:v142];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"engagementScore" andValue:v143];

        v144 = [v22 objectForKeyedSubscript:@"diversityCoefficient"];
        [v144 floatValue];
        *&v146 = v145 * 10000.0;
        v147 = [NSNumber numberWithFloat:v146];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"diversityCoefficient" andValue:v147];

        v148 = [v22 objectForKeyedSubscript:@"decayFactor"];
        [v148 floatValue];
        *&v150 = v149 * 10000.0;
        v151 = [NSNumber numberWithFloat:v150];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"decayFactor" andValue:v151];

        v152 = [v22 objectForKeyedSubscript:@"rankingScore"];
        [v152 floatValue];
        *&v154 = v153 * 10000.0;
        v155 = [NSNumber numberWithFloat:v154];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"rankingScore" andValue:v155];

        v156 = [v22 objectForKeyedSubscript:@"bundleGoodnessScore"];
        [v156 floatValue];
        *&v158 = v157 * 10000.0;
        v159 = [NSNumber numberWithFloat:v158];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"bundleGoodnessScore" andValue:v159];

        v160 = [v22 objectForKeyedSubscript:@"rankingCategory"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"rankingCategory" andValue:v160];

        v161 = [v22 objectForKeyedSubscript:@"visibilityCategoryForUI"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"visibilityCategoryForUI" andValue:v161];

        v162 = [v22 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
        [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v23 withKey:@"ordinalRankInRecommendedTab" andValue:v162];

        if (v23)
        {
          v293 = _NSConcreteStackBlock;
          v294 = 3221225472;
          v295 = __94__MOEventBundleRanking__submitEventBundleRankingAnalytics_withRankingInput_andSubmissionDate___block_invoke;
          v296 = &unk_10033ADD8;
          v297 = v23;
          AnalyticsSendEventLazy();
          v163 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleRanking _submitEventBundleRankingAnalytics:v292 withRankingInput:? andSubmissionDate:?];
          }

          v164 = v297;
        }

        else
        {
          v164 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            [MOEventBundleRanking _submitEventBundleRankingAnalytics:buf withRankingInput:v304 andSubmissionDate:v164];
          }
        }

        objc_autoreleasePoolPop(v21);
        v19 = v19 + 1;
        ++v18;
      }

      while (v286 != v19);
      v286 = [obj countByEnumeratingWithState:&v298 objects:v302 count:16];
    }

    while (v286);
  }

  v165 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
  {
    *v290 = 0;
    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_INFO, "Completed individual Ranking CoreAnalytics submission.", v290, 2u);
  }

  v166 = objc_opt_new();
  v167 = [NSNumber numberWithInteger:v276];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"submissionTimeYear" andValue:v167];

  v168 = [NSNumber numberWithInteger:v278];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"submissionTimeMonth" andValue:v168];

  v169 = [NSNumber numberWithInteger:v282];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"submissionTimeDay" andValue:v169];

  v170 = [NSNumber numberWithInteger:v283];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"submissionTimeHour" andValue:v170];

  v171 = [NSNumber numberWithInteger:v284];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"submissionTimeMinute" andValue:v171];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"scalingFactorForAnalytics" andValue:&off_10036E9E0];
  if (v17)
  {
    v172 = [v17 experimentId];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"trialExperimentId" andValue:v172];

    v173 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 deploymentId]);
    v174 = [v173 stringValue];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"trialDeploymentId" andValue:v174];

    v175 = [v17 treatmentId];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"trialTreatmentId" andValue:v175];
  }

  v176 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"totalBundleCount" andValue:v176];

  v271 = [NSSortDescriptor sortDescriptorWithKey:@"ordinalRankInRecommendedTab" ascending:1];
  v270 = [NSArray arrayWithObject:?];
  v177 = [v9 sortedArrayUsingDescriptors:?];
  v178 = [NSPredicate predicateWithFormat:@"%K IN %@", @"visibilityCategoryForUI", &off_10036E190];
  v287 = [v177 filteredArrayUsingPredicate:v178];

  v179 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v287 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"recommendedSuggestionCount" andValue:v179];

  v180 = [NSPredicate predicateWithFormat:@"%K == %lu", @"bundleInterfaceType", 11];

  v269 = [v9 filteredArrayUsingPredicate:v180];
  v181 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v269 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"evergreenBundleCount" andValue:v181];

  v182 = [NSPredicate predicateWithFormat:@"%K == %lu", @"bundleInterfaceType", 10];

  v268 = [v9 filteredArrayUsingPredicate:v182];
  v183 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v268 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"photoMemoryBundleCount" andValue:v183];

  v184 = [NSPredicate predicateWithFormat:@"%K IN %@", @"visibilityCategoryForUI", &off_10036E1A8];

  v185 = [v9 filteredArrayUsingPredicate:v184];
  v186 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v185 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"suggestionCountInRecentTab" andValue:v186];

  v187 = [NSPredicate predicateWithFormat:@"%K <= 1", @"elapsedDaysFromBundleEndDate"];

  v266 = [v185 filteredArrayUsingPredicate:v187];
  v188 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v266 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"suggestionCountInRecenTabFromPast1Day" andValue:v188];

  v189 = [NSPredicate predicateWithFormat:@"%K <= 3", @"elapsedDaysFromBundleEndDate"];

  v265 = [v185 filteredArrayUsingPredicate:v189];
  v190 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v265 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"suggestionCountInRecenTabFromPast3Days" andValue:v190];

  v191 = [NSPredicate predicateWithFormat:@"%K <= 7", @"elapsedDaysFromBundleEndDate"];

  v267 = v185;
  v264 = v191;
  v263 = [v185 filteredArrayUsingPredicate:v191];
  v192 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v263 count]);
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v166 withKey:@"suggestionCountInRecenTabFromPast7Days" andValue:v192];

  v277 = objc_opt_new();
  v275 = objc_opt_new();
  v273 = objc_opt_new();
  v193 = objc_opt_new();
  v194 = objc_opt_new();
  v195 = objc_opt_new();
  v196 = objc_opt_new();
  v272 = v166;
  if ([v287 count] < 3)
  {
    v285 = 0;
  }

  else
  {
    v197 = 0;
    v285 = 0;
    do
    {
      v198 = v193;
      v199 = v194;
      v279 = v196;
      v200 = [v287 objectAtIndexedSubscript:v197];
      v201 = [v200 objectForKeyedSubscript:@"bundleInterfaceType"];

      v202 = [v287 objectAtIndexedSubscript:v197];
      v193 = [v202 objectForKeyedSubscript:@"bundleSubType"];

      v203 = [v287 objectAtIndexedSubscript:v197];
      v204 = [v203 objectForKeyedSubscript:@"bundleSuperType"];

      v195 = v201;
      v205 = [v287 objectAtIndexedSubscript:v197];
      v196 = [v205 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      if ([v201 intValue] == 10)
      {
        ++v285;
      }

      else
      {
        [v277 addObject:v193];
        [v275 addObject:v204];
        [v273 addObject:v196];
      }

      v194 = v204;
      ++v197;
    }

    while (v197 != 3);
    v206 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v277 count]);
    v166 = v272;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop3" andValue:v206];

    v207 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v275 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop3" andValue:v207];

    v208 = [v273 valueForKeyPath:@"@avg.self"];
    [v208 floatValue];
    *&v210 = v209 * 10000.0;
    v211 = [NSNumber numberWithFloat:v210];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"averageBundleAgeInTop3" andValue:v211];

    v212 = [v273 valueForKeyPath:@"@max.self"];
    [v212 floatValue];
    *&v214 = v213 * 10000.0;
    v215 = [NSNumber numberWithFloat:v214];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"maxBundleAgeInTop3" andValue:v215];

    v216 = [NSNumber numberWithUnsignedInteger:v285];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"numPhotoMemoriesInTop3" andValue:v216];
  }

  v217 = v288;
  if ([v287 count] < 5)
  {
    v223 = v193;
    v237 = v261;
  }

  else
  {
    for (i = 3; i != 5; ++i)
    {
      v219 = v194;
      v280 = v196;
      v220 = [v287 objectAtIndexedSubscript:i];
      v221 = [v220 objectForKeyedSubscript:@"bundleInterfaceType"];

      v195 = v221;
      v222 = [v287 objectAtIndexedSubscript:i];
      v223 = [v222 objectForKeyedSubscript:@"bundleSubType"];

      v224 = [v287 objectAtIndexedSubscript:i];
      v194 = [v224 objectForKeyedSubscript:@"bundleSuperType"];

      v225 = [v287 objectAtIndexedSubscript:i];
      v196 = [v225 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      if ([v195 intValue] == 10)
      {
        ++v285;
      }

      else
      {
        [v277 addObject:v223];
        [v275 addObject:v194];
        [v273 addObject:v196];
      }

      v193 = v223;
    }

    v226 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v277 count]);
    v166 = v272;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop5" andValue:v226];

    v227 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v275 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop5" andValue:v227];

    v228 = [v273 valueForKeyPath:@"@avg.self"];
    [v228 floatValue];
    *&v230 = v229 * 10000.0;
    v231 = [NSNumber numberWithFloat:v230];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"averageBundleAgeInTop5" andValue:v231];

    v232 = [v273 valueForKeyPath:@"@max.self"];
    [v232 floatValue];
    *&v234 = v233 * 10000.0;
    v235 = [NSNumber numberWithFloat:v234];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"maxBundleAgeInTop5" andValue:v235];

    v236 = [NSNumber numberWithUnsignedInteger:v285];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"numPhotoMemoriesInTop5" andValue:v236];

    v237 = v261;
    v217 = v288;
  }

  if ([v287 count] >= 0xA)
  {
    for (j = 5; j != 10; ++j)
    {
      v239 = v223;
      v240 = v194;
      v281 = v196;
      v241 = [v287 objectAtIndexedSubscript:j];
      v242 = [v241 objectForKeyedSubscript:@"bundleInterfaceType"];

      v195 = v242;
      v243 = [v287 objectAtIndexedSubscript:j];
      v223 = [v243 objectForKeyedSubscript:@"bundleSubType"];

      v244 = [v287 objectAtIndexedSubscript:j];
      v194 = [v244 objectForKeyedSubscript:@"bundleSuperType"];

      v245 = [v287 objectAtIndexedSubscript:j];
      v196 = [v245 objectForKeyedSubscript:@"elapsedDaysFromBundleEndDate"];

      if ([v195 intValue] == 10)
      {
        ++v285;
      }

      else
      {
        [v277 addObject:v223];
        [v275 addObject:v194];
        [v273 addObject:v196];
      }
    }

    v246 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v277 count]);
    v166 = v272;
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSubTypeCountForSensedBundlesInTop10" andValue:v246];

    v247 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v275 count]);
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"uniqueBundleSuperTypeCountForSensedBundlesInTop10" andValue:v247];

    v248 = [v273 valueForKeyPath:@"@avg.self"];
    [v248 floatValue];
    *&v250 = v249 * 10000.0;
    v251 = [NSNumber numberWithFloat:v250];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"averageBundleAgeInTop10" andValue:v251];

    v252 = [v273 valueForKeyPath:@"@max.self"];
    [v252 floatValue];
    *&v254 = v253 * 10000.0;
    v255 = [NSNumber numberWithFloat:v254];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"maxBundleAgeInTop10" andValue:v255];

    v256 = [NSNumber numberWithUnsignedInteger:v285];
    [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v272 withKey:@"numPhotoMemoriesInTop10" andValue:v256];

    v237 = v261;
    v217 = v288;
  }

  if (v166)
  {
    v289 = v166;
    AnalyticsSendEventLazy();
    v257 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }

    v258 = v289;
  }

  else
  {
    v258 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking _submitEventBundleRankingAnalytics:withRankingInput:andSubmissionDate:];
    }
  }
}

- (void)updateEngagementScoreParamsUsingBFGS
{
  v2 = __chkstk_darwin(self, a2);
  for (i = 0; i != 16; ++i)
  {
    v4 = v2[6];
    v5 = [NSNumber numberWithUnsignedInteger:i + 1];
    v6 = [v4 objectForKeyedSubscript:v5];
    [v6 floatValue];
    *(v74 + i) = v7;
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v2[6];
    v72 = 138412290;
    v73 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Engagement params before optimization %@", &v72, 0xCu);
  }

  __B = -1.0;
  [v2 _setToIdentityMatrix:&v72 forNumRows:16];
  [v2 _computeGradient:v74 initialParams:v74 Update:v71];
  [v2 _setToIdentityMatrix:v70 forNumRows:16];
  v66 = v74[4];
  v67 = v74[5];
  v68 = v74[6];
  v69 = v74[7];
  v62 = v74[0];
  v63 = v74[1];
  v10 = 2;
  v64 = v74[2];
  v65 = v74[3];
  while (1)
  {
    [v2 _calculateNormSquare:v71];
    if (v11 <= 1.0e-10 || v10 > 0x63)
    {
      break;
    }

    vDSP_vsmulD(v70, 1, &__B, &v60, 1, 0x100uLL);
    vDSP_mmulD(&v60, 1, v71, 1, v59, 1, 0x10uLL, 1uLL, 0x10uLL);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = __60__MOEventBundleRanking_updateEngagementScoreParamsUsingBFGS__block_invoke;
    v40[3] = &unk_10033E820;
    v40[4] = &v41;
    v40[5] = &v45;
    [v2 _lineSearch:&v62 initialParams:v74 With:v59 And:v71 handler:v40];
    if (*(v42 + 24) == 1)
    {
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(v54[0]) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Exited BFGS as linesearch hit max iteration count", v54, 2u);
      }

      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);
      return;
    }

    vDSP_vsmulD(v59, 1, v46 + 3, v58, 1, 0x10uLL);
    vDSP_vaddD(&v62, 1, v58, 1, v57, 1, 0x10uLL);
    [v2 _computeGradient:v57 initialParams:v74 Update:v56];
    vDSP_vsubD(v71, 1, v56, 1, v55, 1, 0x10uLL);
    __C = 0.0;
    vDSP_mmulD(v55, 1, v58, 1, &__C, 1, 1uLL, 1uLL, 0x10uLL);
    v12 = 1.0 / __C;
    v38 = 1.0 / __C;
    if (COERCE__INT64(fabs(1.0 / __C)) >= 0x7FF0000000000000)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v54[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Exited BFGS as r is not finite", v54, 2u);
      }
    }

    else
    {
      vDSP_mmulD(v58, 1, v55, 1, v54, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v54, 1, &v38, v54, 1, 0x100uLL);
      vDSP_vsubD(v54, 1, &v72, 1, v53, 1, 0x100uLL);
      vDSP_mmulD(v55, 1, v58, 1, v54, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v54, 1, &v38, v54, 1, 0x100uLL);
      vDSP_vsubD(v54, 1, &v72, 1, v52, 1, 0x100uLL);
      vDSP_mmulD(v53, 1, v70, 1, __A, 1, 0x10uLL, 0x10uLL, 0x10uLL);
      vDSP_mmulD(__A, 1, v52, 1, v70, 1, 0x10uLL, 0x10uLL, 0x10uLL);
      vDSP_mmulD(v58, 1, v58, 1, v50, 1, 0x10uLL, 0x10uLL, 1uLL);
      vDSP_vsmulD(v50, 1, &v38, v50, 1, 0x100uLL);
      vDSP_vaddD(v70, 1, v50, 1, v70, 1, 0x100uLL);
      v71[4] = v56[4];
      v71[5] = v56[5];
      v71[6] = v56[6];
      v71[7] = v56[7];
      v71[0] = v56[0];
      v71[1] = v56[1];
      v71[2] = v56[2];
      v71[3] = v56[3];
      v65 = v57[3];
      v64 = v57[2];
      v63 = v57[1];
      v62 = v57[0];
      v69 = v57[7];
      v68 = v57[6];
      v67 = v57[5];
      v66 = v57[4];
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
    ++v10;
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return;
    }
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking updateEngagementScoreParamsUsingBFGS];
  }

  v15 = objc_opt_new();
  v16 = 0;
  v17 = 0.0;
  do
  {
    v18 = *(&v62 + v16);
    v19 = [NSNumber numberWithDouble:v18];
    [v15 addObject:v19];

    v20 = fabs(v18);
    if (v20 >= v17)
    {
      v17 = v20;
    }

    v16 += 8;
  }

  while (v16 != 128);
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v60 = 138412290;
    v61 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Engagement params after optimization before normalization %@", &v60, 0xCu);
  }

  if (v17 >= 2.22507386e-308 && v17 <= 1.79769313e308)
  {
    v23 = objc_opt_new();
    v31 = &v62;
    for (j = 1; j != 17; ++j)
    {
      v33 = *v31 / v17;
      *&v33 = v33;
      v34 = [NSNumber numberWithFloat:v33];
      v35 = [NSNumber numberWithUnsignedInteger:j];
      [v23 setObject:v34 forKeyedSubscript:v35];

      ++v31;
    }

    objc_storeStrong(v2 + 6, v23);
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = v2[6];
      v60 = 138412290;
      v61 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Engagement params after optimization after normalization %@", &v60, 0xCu);
    }
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventBundleRanking *)v2 + 6 updateEngagementScoreParamsUsingBFGS:v23];
    }
  }
}

uint64_t __60__MOEventBundleRanking_updateEngagementScoreParamsUsingBFGS__block_invoke(uint64_t result, int a2, double a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)_computeGradient:(double *)a3 initialParams:(double *)a4 Update:(double *)a5
{
  v9 = 0;
  v10 = *(a3 + 5);
  v11 = *(a3 + 3);
  v34 = *(a3 + 4);
  v35 = v10;
  v12 = *(a3 + 5);
  v13 = *(a3 + 7);
  v36 = *(a3 + 6);
  v37 = v13;
  v14 = *(a3 + 1);
  v31[0] = *a3;
  v31[1] = v14;
  v15 = *(a3 + 3);
  v17 = *a3;
  v16 = *(a3 + 1);
  v32 = *(a3 + 2);
  v33 = v15;
  v27 = v34;
  v28 = v12;
  v18 = *(a3 + 7);
  v29 = v36;
  v30 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v32;
  v26 = v11;
  do
  {
    *(v31 + v9) = *(v31 + v9) + 0.000001;
    *(&v23 + v9) = *(&v23 + v9) + -0.000001;
    [(MOEventBundleRanking *)self _generateBPROptUsing:v31 initialParams:a4, v23, v24, v25, v26, v27, v28, v29, v30];
    v20 = v19;
    [(MOEventBundleRanking *)self _generateBPROptUsing:&v23 initialParams:a4];
    a5[v9 / 8] = (v20 - v21) / 0.000002;
    v22 = a3[v9 / 8];
    *(v31 + v9) = v22;
    *(&v23 + v9) = v22;
    v9 += 8;
  }

  while (v9 != 128);
}

- (double)_computeBPROptForPairs:(double *)a3 withTotalBundleCountsForInterfaceTypesHigherTier:(id)a4 WithTotalBundleCountsForInterfaceTypesLowerTier:(id)a5 bprOpt:(double)a6 pairWiseMult:(float)a7
{
  v11 = a4;
  v12 = a5;
  if ([v11 count] && objc_msgSend(v12, "count"))
  {
    v51 = a3;
    v52 = v12;
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v50 = v11;
    v15 = v11;
    obj = [v15 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (obj)
    {
      v53 = *v71;
      do
      {
        for (i = 0; i != obj; i = i + 1)
        {
          if (*v71 != v53)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v70 + 1) + 8 * i);
          v18 = [v15 objectForKeyedSubscript:v17];
          v19 = [v18 intValue];

          if (v19 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v51[[v17 intValue] - 1]);
              [v13 addObject:v21];

              ++v20;
              v22 = [v15 objectForKeyedSubscript:v17];
              v23 = [v22 intValue];
            }

            while (v20 < v23);
          }
        }

        obj = [v15 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (obj);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v24 = v52;
    obja = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (obja)
    {
      v54 = *v67;
      do
      {
        for (j = 0; j != obja; j = j + 1)
        {
          if (*v67 != v54)
          {
            objc_enumerationMutation(v24);
          }

          v26 = *(*(&v66 + 1) + 8 * j);
          v27 = [v24 objectForKeyedSubscript:v26];
          v28 = [v27 intValue];

          if (v28 >= 1)
          {
            v29 = 0;
            do
            {
              v30 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v51[[v26 intValue] - 1]);
              [v14 addObject:v30];

              ++v29;
              v31 = [v24 objectForKeyedSubscript:v26];
              v32 = [v31 intValue];
            }

            while (v29 < v32);
          }
        }

        obja = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (obja);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    objb = v13;
    v33 = [objb countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v63;
      v36 = a7;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(objb);
          }

          v38 = *(*(&v62 + 1) + 8 * k);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v39 = v14;
          v40 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v59;
            do
            {
              for (m = 0; m != v41; m = m + 1)
              {
                if (*v59 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v58 + 1) + 8 * m);
                [v38 doubleValue];
                v46 = v45;
                [v44 doubleValue];
                v48 = exp(-(v46 - v47));
                a6 = a6 + log(1.0 / (v48 + 1.0)) * v36;
              }

              v41 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v41);
          }
        }

        v34 = [objb countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v34);
    }

    v11 = v50;
    v12 = v52;
  }

  return a6;
}

- (double)_generateBPROptUsing:(double *)a3 initialParams:(double *)a4
{
  v7 = 0;
  v8 = 0.0;
  do
  {
    bprRegularizationFactor = self->_bprRegularizationFactor;
    v10 = [NSNumber numberWithUnsignedInteger:v7 + 1];
    v11 = [(NSDictionary *)bprRegularizationFactor objectForKeyedSubscript:v10];
    [v11 floatValue];
    v13 = a3[v7] - a4[v7];
    v8 = v8 + -(v13 * v12) * v13;

    ++v7;
  }

  while (v7 != 16);
  v14 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"journalWasWritten"];
  v15 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"journalEntryWasCreatedWithNoWriting"];
  v16 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"suggestionWasViewedButNotEngaged"];
  v17 = [(NSDictionary *)self->_interfaceTypeCountFromSuggestionEngagementDict objectForKeyedSubscript:@"suggestionWasDeleted"];
  v18 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarthest"];
  [v18 floatValue];
  LODWORD(v20) = v19;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v8 pairWiseMult:v20];
  v22 = v21;

  v23 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarther"];
  [v23 floatValue];
  LODWORD(v25) = v24;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v16 bprOpt:v22 pairWiseMult:v25];
  v27 = v26;

  v28 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFarther"];
  [v28 floatValue];
  LODWORD(v30) = v29;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v15 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v27 pairWiseMult:v30];
  v32 = v31;

  v33 = [(NSDictionary *)self->_engagementScoreParameterDict objectForKeyedSubscript:@"pairWiseFar"];
  [v33 floatValue];
  LODWORD(v35) = v34;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v14 WithTotalBundleCountsForInterfaceTypesLowerTier:v15 bprOpt:v32 pairWiseMult:v35];
  v37 = v36;

  v38 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFar"];
  [v38 floatValue];
  LODWORD(v40) = v39;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v15 WithTotalBundleCountsForInterfaceTypesLowerTier:v16 bprOpt:v37 pairWiseMult:v40];
  v42 = v41;

  v43 = [(NSMutableDictionary *)self->_pairWiseWeights objectForKeyedSubscript:@"pairWiseFar"];
  [v43 floatValue];
  LODWORD(v45) = v44;
  [(MOEventBundleRanking *)self _computeBPROptForPairs:a3 withTotalBundleCountsForInterfaceTypesHigherTier:v16 WithTotalBundleCountsForInterfaceTypesLowerTier:v17 bprOpt:v42 pairWiseMult:v45];
  v47 = v46;

  return -v47;
}

- (double)_calculateNormSquare:(double *)a3
{
  __C = 0.0;
  vDSP_dotprD(a3, 1, a3, 1, &__C, 0x10uLL);
  return __C;
}

- (void)_setToIdentityMatrix:(double *)a3 forNumRows:(unint64_t)a4
{
  if (a4)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      for (i = 0; i != a4; ++i)
      {
        if (v4 == i)
        {
          v7 = 1.0;
        }

        else
        {
          v7 = 0.0;
        }

        a3[v5 + i] = v7;
      }

      ++v4;
      v5 += i;
    }

    while (v4 != a4);
  }
}

- (void)_lineSearch:(double *)a3 initialParams:(double *)a4 With:(double *)a5 And:(double *)a6 handler:(id)a7
{
  v12 = a7;
  __B = 1.0;
  [(MOEventBundleRanking *)self _generateBPROptUsing:a3 initialParams:a4];
  v14 = v13;
  v15 = 1;
  vDSP_vsmulD(a5, 1, &__B, __C, 1, 0x10uLL);
  vDSP_vaddD(a3, 1, __C, 1, v26, 1, 0x10uLL);
  [(MOEventBundleRanking *)self _computeGradient:v26 initialParams:a4 Update:__A];
  v16 = 0;
  while (1)
  {
    [(MOEventBundleRanking *)self _generateBPROptUsing:v26 initialParams:a4];
    v18 = v17;
    v23 = 0.0;
    vDSP_mmulD(a6, 1, a5, 1, &v23, 1, 1uLL, 1uLL, 0x10uLL);
    v19 = v14 + v23 * 0.0001 * __B;
    v22 = 0.0;
    vDSP_mmulD(__A, 1, a5, 1, &v22, 1, 1uLL, 1uLL, 0x10uLL);
    if (v18 <= v19 && v22 > v23 * 0.9)
    {
      break;
    }

    __B = __B * 0.5;
    vDSP_vsmulD(a5, 1, &__B, __C, 1, 0x10uLL);
    vDSP_vaddD(a3, 1, __C, 1, v26, 1, 0x10uLL);
    [(MOEventBundleRanking *)self _computeGradient:v26 initialParams:a4 Update:__A];
    v16 = v15++ > 0x63;
    if (v15 == 101)
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MOEventBundleRanking _lineSearch:initialParams:With:And:handler:];
      }

      v16 = 1;
      break;
    }
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleRanking _lineSearch:initialParams:With:And:handler:];
  }

  (v12)[2](v12, v16, __B);
}

- (id)_getDefaultFallbackFactorDict
{
  v5[0] = @"decayRate";
  v5[1] = @"decayRateAfterViewed";
  v6[0] = &off_10036E9F0;
  v6[1] = &off_10036EA00;
  v5[2] = @"weightForNumAnamolyEventsNormalized";
  v5[3] = @"weightForNumTrendEventsNormalized";
  v6[2] = &off_10036EA10;
  v6[3] = &off_10036EA10;
  v5[4] = @"weightForNumRoutineEventsNormalized";
  v5[5] = @"weightForNumStateOfMindEventsNormalized";
  v6[4] = &off_10036EA20;
  v6[5] = &off_10036E900;
  v5[6] = @"weightForLabelQualityScore";
  v5[7] = @"weightForTimeCorrelationScore";
  v6[6] = &off_10036E8E0;
  v6[7] = &off_10036E8E0;
  v5[8] = @"richnessScoreScalingParameter";
  v5[9] = @"bundleScoreScalingParameter";
  v6[8] = &off_10036E8C0;
  v6[9] = &off_10036E8C0;
  v5[10] = @"bundleScoreConstant";
  v6[10] = &off_10036E8E0;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:11];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)identifyRepetitiveSignificantContactBundlesFromBundles:(id)a3 precedingSignificantContactBundles:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke;
    v132[3] = &unk_10033ADB0;
    v8 = objc_opt_new();
    v133 = v8;
    [v6 enumerateObjectsUsingBlock:v132];
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    v101 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [v6 count];
      v12 = [v101 count];
      v13 = [v7 count];
      *buf = 138413058;
      v138 = v10;
      v139 = 2048;
      v140 = v11;
      v141 = 2048;
      v142 = v12;
      v143 = 2048;
      v144 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@, event bundle count, %lu, contact bundle count, %lu, preceding contact bundle count, %lu", buf, 0x2Au);

      v8 = v101;
    }

    v102 = v6;

    if ([v7 count])
    {
      [v8 addObjectsFromArray:v7];
    }

    v100 = v7;
    v14 = [v8 allObjects];
    v15 = [NSMutableArray arrayWithArray:v14];

    v99 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v150 = v99;
    v16 = [NSArray arrayWithObjects:&v150 count:1];
    [v15 sortUsingDescriptors:v16];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    v104 = a2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [v15 count];
      v20 = [v102 firstObject];
      v21 = [v20 startDate];
      v22 = [v102 lastObject];
      v23 = [v22 startDate];
      *buf = 138413058;
      v138 = v18;
      v139 = 2048;
      v140 = v19;
      v141 = 2112;
      v142 = v21;
      v143 = 2112;
      v144 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@, merged contact bundle count, %lu, first bundle start date, %@, last bundle start date, %@", buf, 0x2Au);

      a2 = v104;
    }

    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_775;
    v131[3] = &__block_descriptor_40_e30_v32__0__MOEventBundle_8Q16_B24l;
    v131[4] = a2;
    [v15 enumerateObjectsUsingBlock:v131];
    v24 = [v15 firstObject];
    v25 = [v24 startDate];
    v26 = [NSDate firstSaturdayBeforeReferenceDate:v25];

    v27 = objc_opt_new();
    v28 = [v15 lastObject];
    v29 = [v28 endDate];
    v30 = v26;
    LODWORD(v26) = [v26 isBeforeDate:v29];

    if (v26)
    {
      do
      {
        v31 = v30;
        v32 = objc_autoreleasePoolPush();
        v33 = [v30 dateByAddingTimeInterval:604800.0];
        v34 = v33;
        if (v30)
        {
          if (v33)
          {
            v35 = v30;
            v36 = v34;
            v37 = [v35 isBeforeDate:v34];
            v34 = v36;
            if (v37)
            {
              v38 = [[NSDateInterval alloc] initWithStartDate:v31 endDate:v36];
              [v27 addObject:v38];

              v34 = v36;
            }
          }
        }

        v30 = v34;

        objc_autoreleasePoolPop(v32);
        v39 = [v15 lastObject];
        v40 = [v39 endDate];
        v41 = [v30 isBeforeDate:v40];
      }

      while ((v41 & 1) != 0);
    }

    v98 = v30;
    v111 = objc_opt_new();
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = v27;
    v106 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
    if (v106)
    {
      v42 = 0;
      v105 = *v128;
      do
      {
        v43 = 0;
        do
        {
          if (*v128 != v105)
          {
            objc_enumerationMutation(obj);
          }

          v112 = *(*(&v127 + 1) + 8 * v43);
          context = objc_autoreleasePoolPush();
          v44 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v86 = NSStringFromSelector(a2);
            v87 = [v112 startDate];
            v88 = [v112 endDate];
            *buf = 138412802;
            v138 = v86;
            v139 = 2112;
            v140 = v87;
            v141 = 2112;
            v142 = v88;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%@, interval startDate, %@, interval endDate, %@", buf, 0x20u);
          }

          v110 = v43;

          v45 = objc_opt_new();
          while (v42 < [v15 count])
          {
            v46 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v107 = NSStringFromSelector(a2);
              v108 = [v15 objectAtIndexedSubscript:v42];
              v75 = [v108 bundleIdentifier];
              v76 = [v15 objectAtIndexedSubscript:v42];
              v77 = [v76 startDate];
              v78 = [v15 objectAtIndexedSubscript:v42];
              v79 = [v78 summarizationGranularity];
              v80 = [v45 count];
              *buf = 138413570;
              v138 = v107;
              v139 = 2048;
              v140 = v42;
              v141 = 2112;
              v142 = v75;
              v143 = 2112;
              v144 = v77;
              v145 = 2048;
              v146 = v79;
              v147 = 2048;
              v148 = v80;
              _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@, bundle idx, %lu, identifier, %@, startDate, %@, summarizationGranularity, %lu, contactIdentifierList count, %lu", buf, 0x3Eu);

              a2 = v104;
            }

            v126[0] = _NSConcreteStackBlock;
            v126[1] = 3221225472;
            v126[2] = __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_777;
            v126[3] = &__block_descriptor_48_e22_v24__0__NSString_8_B16l;
            v126[4] = a2;
            v126[5] = v42;
            [v45 enumerateObjectsUsingBlock:v126];
            v47 = [v15 objectAtIndexedSubscript:v42];
            v48 = [v47 summarizationGranularity];

            if (v48 == 1)
            {
              v49 = [v15 objectAtIndexedSubscript:v42];
              v50 = [v49 startDate];
              v51 = [v112 endDate];
              v52 = [v50 isAfterDate:v51];

              if (v52)
              {
                break;
              }

              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v53 = [v15 objectAtIndexedSubscript:v42];
              v54 = [v53 persons];

              v55 = [v54 countByEnumeratingWithState:&v122 objects:v136 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v123;
                while (2)
                {
                  for (i = 0; i != v56; i = i + 1)
                  {
                    if (*v123 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = [*(*(&v122 + 1) + 8 * i) contactIdentifier];
                    v60 = [v45 containsObject:v59];

                    if (v60)
                    {
                      v62 = [v15 objectAtIndexedSubscript:v42];
                      v63 = [v62 bundleIdentifier];
                      v64 = [v63 UUIDString];
                      [v111 addObject:v64];

                      v61 = 1;
                      goto LABEL_38;
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v122 objects:v136 count:16];
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }

                v61 = 0;
              }

              else
              {
                v61 = 0;
              }

LABEL_38:

              v65 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                v81 = NSStringFromSelector(a2);
                v82 = [v15 objectAtIndexedSubscript:v42];
                v83 = [v82 bundleIdentifier];
                v84 = v83;
                *buf = 138413058;
                v85 = @"NO";
                if (v61)
                {
                  v85 = @"YES";
                }

                v138 = v81;
                v139 = 2048;
                v140 = v42;
                v141 = 2112;
                v142 = v83;
                v143 = 2112;
                v144 = v85;
                _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%@, bundle idx, %lu, identifier, %@, repetitiveBundle, %@", buf, 0x2Au);
              }

              if ((v61 & 1) == 0)
              {
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v66 = [v15 objectAtIndexedSubscript:v42];
                v67 = [v66 persons];

                v68 = [v67 countByEnumeratingWithState:&v118 objects:v135 count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v119;
                  do
                  {
                    for (j = 0; j != v69; j = j + 1)
                    {
                      if (*v119 != v70)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v72 = *(*(&v118 + 1) + 8 * j);
                      v73 = [v72 contactIdentifier];

                      if (v73)
                      {
                        v74 = [v72 contactIdentifier];
                        [v45 addObject:v74];
                      }
                    }

                    v69 = [v67 countByEnumeratingWithState:&v118 objects:v135 count:16];
                  }

                  while (v69);
                }
              }
            }

            ++v42;
          }

          objc_autoreleasePoolPop(context);
          v43 = v110 + 1;
        }

        while ((v110 + 1) != v106);
        v106 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
      }

      while (v106);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = v102;
    v89 = [v113 countByEnumeratingWithState:&v114 objects:v134 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v115;
      do
      {
        for (k = 0; k != v90; k = k + 1)
        {
          if (*v115 != v91)
          {
            objc_enumerationMutation(v113);
          }

          v93 = *(*(&v114 + 1) + 8 * k);
          v94 = [v93 bundleIdentifier];
          v95 = [v94 UUIDString];
          v96 = [v111 containsObject:v95];

          if (v96)
          {
            v97 = &__kCFBooleanTrue;
          }

          else
          {
            v97 = &__kCFBooleanFalse;
          }

          [v93 addMetaDataForRankForKey:@"isRepetitiveContact" value:v97];
        }

        v90 = [v113 countByEnumeratingWithState:&v114 objects:v134 count:16];
      }

      while (v90);
    }

    v6 = v102;
    v7 = v100;
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 interfaceType] == 4)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_775(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(*(a1 + 32));
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, bundle, %@", &v8, 0x20u);
  }
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_777(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_777_cold_1(a1);
  }
}

- (id)_getDefaultRichnessWeightDict
{
  v2 = objc_opt_new();
  for (i = 0; i != 18; ++i)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (i <= 0x10)
    {
      v6 = off_10033E958[i];
      v7 = off_10033E9E0[i];
      [v4 setObject:off_10033E8D0[i] forKey:@"RankingRichnessPrimaryPriorityScoreKey"];
      [v5 setObject:v6 forKey:@"RankingRichnessSecondaryPriorityScoreKey"];
      [v5 setObject:v7 forKey:@"RankingRichnessAuxiliaryPriorityScoreKey"];
    }

    v8 = [MOResource getStringTypeForResources:i];
    [v2 setObject:v5 forKey:v8];
  }

  v15[0] = @"RankingRichnessPrimaryPriorityScoreKey";
  v15[1] = @"RankingRichnessSecondaryPriorityScoreKey";
  v16[0] = &off_10036EA30;
  v16[1] = &off_10036EA30;
  v15[2] = @"RankingRichnessAuxiliaryPriorityScoreKey";
  v16[2] = &off_10036EA30;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v2 setObject:v9 forKey:@"NumUniqueResourceTypesNormalizedKey"];
  v13[0] = @"RankingRichnessPrimaryPriorityScoreKey";
  v13[1] = @"RankingRichnessSecondaryPriorityScoreKey";
  v14[0] = &off_10036EA30;
  v14[1] = &off_10036EA30;
  v13[2] = @"RankingRichnessAuxiliaryPriorityScoreKey";
  v14[2] = &off_10036EA30;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v2 setObject:v10 forKey:@"NumWorkoutRouteMapAssets"];
  v11 = [v2 copy];

  return v11;
}

- (id)_checkAndUpdateNumericLimits:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:{v11, v17}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        [v12 doubleValue];
        if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          [v12 doubleValue];
LABEL_12:
          v15 = [v3 objectForKeyedSubscript:v11];
          [v4 setObject:v15 forKeyedSubscript:v11];

          goto LABEL_13;
        }

        v14 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = v17;
          v23 = v11;
          _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Value is either infinite or NaN for key %@", buf, 0xCu);
        }

        [v4 setObject:&off_10036E760 forKeyedSubscript:v11];
LABEL_13:
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [(MOEventBundleRanking *)self rankingAlgorithmVersion];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"kMORankingAlgorithmVersion" andValue:v4];

  v5 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__35;
  v36[4] = __Block_byref_object_dispose__35;
  v37 = 0;
  v6 = [(MOEventBundleRanking *)self staticModelParameterMatrix];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __34__MOEventBundleRanking_dictionary__block_invoke;
  v33[3] = &unk_10033E888;
  v35 = v36;
  v7 = v5;
  v34 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v33];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"staticModelParameterMatrix" andValue:v7];
  v8 = objc_opt_new();
  v9 = [(MOEventBundleRanking *)self dynamicModelParameterDict];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __34__MOEventBundleRanking_dictionary__block_invoke_2;
  v30[3] = &unk_10033E888;
  v32 = v36;
  v10 = v8;
  v31 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v30];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"dynamicModelParameterDict" andValue:v10];
  v11 = [(MOEventBundleRanking *)self heuristicsParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"heuristicsParameterDict" andValue:v11];

  v12 = [(MOEventBundleRanking *)self engagementScoreParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"engagementScoreParameterDict" andValue:v12];

  [(MOEventBundleRanking *)self engagementScoreWeight];
  v13 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"engagementScoreWeight" andValue:v13];

  v14 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"rankingScoreThresholdDict" andValue:v14];

  [(MOEventBundleRanking *)self frequencyPenalty];
  v15 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"frequencyPenaltyCoefficient" andValue:v15];

  v16 = [(MOEventBundleRanking *)self curationParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"curationParameterDict" andValue:v16];

  v17 = [(MOEventBundleRanking *)self evergreenEngagementScoreParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"evergreenEngagementScoreParameterDict" andValue:v17];

  v18 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v3 withKey:@"viewCountBasedAdjustmentParameterDict" andValue:v18];

  v19 = objc_opt_new();
  v20 = [(MOEventBundleRanking *)self bprRegularizationFactor];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __34__MOEventBundleRanking_dictionary__block_invoke_3;
  v27[3] = &unk_10033E8B0;
  v29 = v36;
  v27[4] = self;
  v21 = v3;
  v28 = v21;
  [v20 enumerateKeysAndObjectsUsingBlock:v27];

  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"bprRegularizationFactor" andValue:v19];
  v22 = [(MOEventBundleRanking *)self pairWiseWeights];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"pairWiseWeights" andValue:v22];

  v23 = [(MOEventBundleRanking *)self richnessWeightsDict];
  [(MOEventBundleRanking *)self safeSavePropertyToDictionary:v21 withKey:@"richnessWeightsDict" andValue:v23];

  v24 = v28;
  v25 = v21;

  _Block_object_dispose(v36, 8);

  return v25;
}

void __34__MOEventBundleRanking_dictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) setObject:v8 forKey:*(*(*(a1 + 40) + 8) + 40)];
}

void __34__MOEventBundleRanking_dictionary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) setObject:v8 forKey:*(*(*(a1 + 40) + 8) + 40)];
}

void __34__MOEventBundleRanking_dictionary__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = +[MOEventBundle getInterfaceTypeString:superType:](MOEventBundle, "getInterfaceTypeString:superType:", [a2 intValue], 0);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) safeSavePropertyToDictionary:*(a1 + 40) withKey:*(*(*(a1 + 48) + 8) + 40) andValue:v8];
}

- (void)safeSavePropertyToDictionary:(id)a3 withKey:(id)a4 andValue:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    [a3 setObject:v8 forKey:v7];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [MOEventBundleRanking safeSavePropertyToDictionary:withKey:andValue:];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  frequencyPenalty = self->_frequencyPenalty;
  v8 = a3;
  *&v5 = frequencyPenalty;
  v6 = [NSNumber numberWithFloat:v5];
  [v8 encodeObject:v6 forKey:@"frequencyPenaltyCoefficient"];

  v7 = [NSNumber numberWithDouble:self->_recommendedTabVisitFIThreshold];
  [v8 encodeObject:v7 forKey:@"recommendedTabVisitFIThreshold"];

  [v8 encodeObject:self->_richnessWeightsDict forKey:@"richnessWeightsDict"];
  [v8 encodeObject:self->_staticModelParameterMatrix forKey:@"staticModelParameterMatrix"];
  [v8 encodeObject:self->_dynamicModelParameterDict forKey:@"dynamicModelParameterDict"];
  [v8 encodeObject:self->_heuristicsParameterDict forKey:@"heuristicsParameterDict"];
  [v8 encodeObject:self->_engagementScoreParameterDict forKey:@"engagementScoreParameterDict"];
  [v8 encodeObject:self->_rankingScoreThresholdDict forKey:@"rankingScoreThresholdDict"];
  [v8 encodeObject:self->_viewCountBasedAdjustmentParameterDict forKey:@"viewCountBasedAdjustmentParameterDict"];
  [v8 encodeObject:self->_interfaceTypeCountFromSuggestionEngagementDict forKey:@"interfaceTypeCountFromSuggestionEngagement"];
  [v8 encodeObject:self->_bprRegularizationFactor forKey:@"bprRegularizationFactor"];
  [v8 encodeObject:self->_pairWiseWeights forKey:@"pairWiseWeights"];
  [v8 encodeObject:self->_evergreenEngagementScoreParameterDict forKey:@"evergreenEngagementScoreParameterDict"];
  [v8 encodeObject:self->_curationParameterDict forKey:@"curationParameterDict"];
}

- (MOEventBundleRanking)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MOConfigurationManagerBase);
  v6 = [(MOEventBundleRanking *)self initWithConfigurationManager:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frequencyPenaltyCoefficient"];
    [v7 floatValue];
    v6->_frequencyPenalty = v8;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recommendedTabVisitFIThreshold"];
    [v9 doubleValue];
    v6->_recommendedTabVisitFIThreshold = v10;

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"richnessWeightsDict"];
    richnessWeightsDict = v6->_richnessWeightsDict;
    v6->_richnessWeightsDict = v14;

    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v16, v17, objc_opt_class(), 0];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"staticModelParameterMatrix"];
    staticModelParameterMatrix = v6->_staticModelParameterMatrix;
    v6->_staticModelParameterMatrix = v19;

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v21, v22, objc_opt_class(), 0];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"dynamicModelParameterDict"];
    dynamicModelParameterDict = v6->_dynamicModelParameterDict;
    v6->_dynamicModelParameterDict = v24;

    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v26, v27, objc_opt_class(), 0];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"heuristicsParameterDict"];
    heuristicsParameterDict = v6->_heuristicsParameterDict;
    v6->_heuristicsParameterDict = v29;

    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"engagementScoreParameterDict"];
    engagementScoreParameterDict = v6->_engagementScoreParameterDict;
    v6->_engagementScoreParameterDict = v34;

    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [NSSet setWithObjects:v36, v37, objc_opt_class(), 0];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"rankingScoreThresholdDict"];
    rankingScoreThresholdDict = v6->_rankingScoreThresholdDict;
    v6->_rankingScoreThresholdDict = v39;

    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = [NSSet setWithObjects:v41, v42, objc_opt_class(), 0];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"viewCountBasedAdjustmentParameterDict"];
    viewCountBasedAdjustmentParameterDict = v6->_viewCountBasedAdjustmentParameterDict;
    v6->_viewCountBasedAdjustmentParameterDict = v44;

    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = [NSSet setWithObjects:v46, v47, objc_opt_class(), 0];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"interfaceTypeCountFromSuggestionEngagement"];
    interfaceTypeCountFromSuggestionEngagementDict = v6->_interfaceTypeCountFromSuggestionEngagementDict;
    v6->_interfaceTypeCountFromSuggestionEngagementDict = v49;

    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [NSSet setWithObjects:v51, v52, objc_opt_class(), 0];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"bprRegularizationFactor"];
    bprRegularizationFactor = v6->_bprRegularizationFactor;
    v6->_bprRegularizationFactor = v54;

    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = [NSSet setWithObjects:v56, v57, objc_opt_class(), 0];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"pairWiseWeights"];
    pairWiseWeights = v6->_pairWiseWeights;
    v6->_pairWiseWeights = v59;

    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [NSSet setWithObjects:v61, v62, objc_opt_class(), 0];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"evergreenEngagementScoreParameterDict"];
    evergreenEngagementScoreParameterDict = v6->_evergreenEngagementScoreParameterDict;
    v6->_evergreenEngagementScoreParameterDict = v64;

    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [NSSet setWithObjects:v66, v67, objc_opt_class(), 0];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"curationParameterDict"];
    curationParameterDict = v6->_curationParameterDict;
    v6->_curationParameterDict = v69;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOEventBundleRanking alloc];
  v5 = [(MOEventBundleRanking *)self configurationManager];
  v6 = [(MOEventBundleRanking *)v4 initWithConfigurationManager:v5];

  if (v6)
  {
    [(MOEventBundleRanking *)self frequencyPenalty];
    [(MOEventBundleRanking *)v6 setFrequencyPenalty:?];
    [(MOEventBundleRanking *)self recommendedTabVisitFIThreshold];
    [(MOEventBundleRanking *)v6 setRecommendedTabVisitFIThreshold:?];
    v7 = [(MOEventBundleRanking *)self richnessWeightsDict];
    v8 = [v7 copy];
    [(MOEventBundleRanking *)v6 setRichnessWeightsDict:v8];

    v9 = [(MOEventBundleRanking *)self staticModelParameterMatrix];
    v10 = [v9 copy];
    [(MOEventBundleRanking *)v6 setStaticModelParameterMatrix:v10];

    v11 = [(MOEventBundleRanking *)self dynamicModelParameterDict];
    v12 = [v11 copy];
    [(MOEventBundleRanking *)v6 setDynamicModelParameterDict:v12];

    v13 = [(MOEventBundleRanking *)self heuristicsParameterDict];
    v14 = [v13 copy];
    [(MOEventBundleRanking *)v6 setHeuristicsParameterDict:v14];

    v15 = [(MOEventBundleRanking *)self engagementScoreParameterDict];
    v16 = [v15 copy];
    [(MOEventBundleRanking *)v6 setEngagementScoreParameterDict:v16];

    v17 = [(MOEventBundleRanking *)self rankingScoreThresholdDict];
    v18 = [v17 copy];
    [(MOEventBundleRanking *)v6 setRankingScoreThresholdDict:v18];

    v19 = [(MOEventBundleRanking *)self viewCountBasedAdjustmentParameterDict];
    v20 = [v19 copy];
    [(MOEventBundleRanking *)v6 setViewCountBasedAdjustmentParameterDict:v20];

    v21 = [(MOEventBundleRanking *)self interfaceTypeCountFromSuggestionEngagementDict];
    v22 = [v21 copy];
    [(MOEventBundleRanking *)v6 setInterfaceTypeCountFromSuggestionEngagementDict:v22];

    v23 = [(MOEventBundleRanking *)self bprRegularizationFactor];
    v24 = [v23 copy];
    [(MOEventBundleRanking *)v6 setBprRegularizationFactor:v24];

    v25 = [(MOEventBundleRanking *)self pairWiseWeights];
    v26 = [v25 copy];
    [(MOEventBundleRanking *)v6 setPairWiseWeights:v26];

    v27 = [(MOEventBundleRanking *)self evergreenEngagementScoreParameterDict];
    v28 = [v27 copy];
    [(MOEventBundleRanking *)v6 setEvergreenEngagementScoreParameterDict:v28];

    v29 = [(MOEventBundleRanking *)self curationParameterDict];
    v30 = [v29 copy];
    [(MOEventBundleRanking *)v6 setCurationParameterDict:v30];
  }

  return v6;
}

- (void)updateTripMetaDataForRank:(id)a3
{
  v5 = a3;
  v6 = [v5 places];
  v7 = [v6 count];

  if (v7)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [v5 places];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (!v9)
    {
LABEL_24:

      goto LABEL_25;
    }

    v10 = v9;
    v37 = v5;
    v11 = *v41;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 endDate];
        if (v17)
        {
          v18 = v17;
          v19 = [v16 startDate];

          if (v19)
          {
            v20 = [v16 endDate];
            v21 = [v16 startDate];
            [v20 timeIntervalSinceDate:v21];
            v23 = v22;

            [v16 distanceToHomeInMiles];
            *&v24 = v24;
            if (*&v24 >= 0.0)
            {
              [v16 distanceToHomeInMiles];
              *&v27 = v27;
              [v16 distanceToHomeInMiles];
              *&v28 = v28;
              v14 = v14 + *&v28 * v23;
            }

            else
            {
              v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v45 = "[MOEventBundleRanking updateTripMetaDataForRank:]";
                v46 = 1024;
                v47 = 3572;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Trip bundle distanceToHomeInMiles is negative (in %s:%d)", buf, 0x12u);
              }

              v26 = +[NSAssertionHandler currentHandler];
              [v26 handleFailureInMethod:a2 object:self file:@"MOEventBundleRanking.m" lineNumber:3572 description:{@"Trip bundle distanceToHomeInMiles is negative (in %s:%d)", "-[MOEventBundleRanking updateTripMetaDataForRank:]", 3572}];
            }

            [v16 familiarityIndexLOI];
            *&v29 = v29;
            if (*&v29 == -1.0)
            {
              v31 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                [(MOEventBundleRanking *)&v38 updateTripMetaDataForRank:v39];
              }
            }

            else
            {
              [v16 familiarityIndexLOI];
              *&v30 = v30;
              v13 = v13 + *&v30 * v23;
            }

            v12 = v23 + v12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);

    v5 = v37;
    if (v12 > 0.0)
    {
      *&v32 = v14 / v12;
      v33 = [NSNumber numberWithFloat:v32];
      [v37 addMetaDataForRankForKey:@"DistanceToHome" value:v33];

      *&v34 = v12;
      v35 = [NSNumber numberWithFloat:v34];
      [v37 addMetaDataForRankForKey:@"VisitDuration" value:v35];

      *&v36 = v13 / v12;
      v8 = [NSNumber numberWithFloat:v36];
      [v37 addMetaDataForRankForKey:@"FamiliarityIndex" value:v8];
      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)setHolidayTuningParameters
{
  v3 = [(MOEventBundleRanking *)self loadHolidayTuningParameterJSONFromFilePath];
  [(MOEventBundleRanking *)self setHolidayTuningParameters:v3];
}

- (id)loadHolidayTuningParameterJSONFromFilePath
{
  v11 = 0;
  v2 = [NSData dataWithContentsOfFile:@"/System/Library/Moments/HolidayTuningParameters.json" options:0 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v7 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking loadHolidayTuningParameterJSONFromFilePath];
    }

    goto LABEL_13;
  }

  v10 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:&v10];
  v7 = v10;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  v5 = v8;
  if (!v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleRanking loadHolidayTuningParameterJSONFromFilePath];
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = @"/System/Library/Moments/HolidayTuningParameters.json";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The holiday tuning parameter json file was successfully read from path, %@", buf, 0xCu);
  }

LABEL_14:

  return v6;
}

- (void)_fillHeuristicsInfoForRanking:(void *)a1 forBundle:.cold.1(void *a1)
{
  v1 = [a1 metaDataForRank];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_fillHeuristicsInfoForRanking:(void *)a1 forBundle:.cold.2(void *a1)
{
  [a1 numFamilyNormalized];
  [a1 numKidsNormalized];
  [a1 numFriendsNormalized];
  [a1 numCoworkersNormalized];
  [a1 numPetsNormalized];
  [a1 numOtherPersonsNormalized];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x3Eu);
}

- (void)_fillRichnessInfoForRanking:(void *)a1 forBundle:.cold.1(void *a1)
{
  v1 = [a1 evergreenType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (double)initWithConfigurationManager:(uint64_t)a3 .cold.1(float *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, a2, a3, "EngagementScoreWeight is set to %f", a5, a6, a7, a8, 0);
  return result;
}

- (void)initWithConfigurationManager:(uint64_t)a1 .cold.2(uint64_t a1, float *a2)
{
  v7 = *a2;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (double)initWithConfigurationManager:(uint64_t)a3 .cold.3(float *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, a2, a3, "User onboarding date is not available. Setting elapsedDaysSinceOnboardingDate to %.3f for default behavior", a5, a6, a7, a8, 0);
  return result;
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:withMinRecommendedBundleCountRequirement:.cold.4()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_calculateRankingScore:withMinRecommendedBundleCountRequirement:.cold.7()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.8(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 3.852e-34);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.9(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 3.852e-34);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

- (void)_calculateRankingScore:(uint64_t)a1 withMinRecommendedBundleCountRequirement:(uint64_t)a2 .cold.10(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 3.852e-34);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_11(v3, v4, v5, v6);
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_706_cold_1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __88__MOEventBundleRanking__calculateRankingScore_withMinRecommendedBundleCountRequirement___block_invoke_710_cold_1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_mergeScoresToBundles:(NSObject *)a3 usingScore:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218754;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  v9 = 2080;
  v10 = "[MOEventBundleRanking _mergeScoresToBundles:usingScore:]";
  v11 = 1024;
  v12 = 2569;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Mismatch between bundle count %lu and score array count %lu (in %s:%d)", &v5, 0x26u);
}

- (void)_submitEventBundleRankingAnalytics:(uint8_t *)buf withRankingInput:(void *)a2 andSubmissionDate:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = @"com.apple.Moments.MOEventBundleRanking";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CA payload (%@) is nil. Skip submission", buf, 0xCu);
}

void __114__MOEventBundleRanking_identifyRepetitiveSignificantContactBundlesFromBundles_precedingSignificantContactBundles___block_invoke_777_cold_1(uint64_t a1)
{
  v2 = NSStringFromSelector(*(a1 + 32));
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)loadHolidayTuningParameterJSONFromFilePath
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end