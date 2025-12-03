@interface MORankingParamsMO
+ (void)_updateRankingParamsMO:(id)o with:(id)with forEvergreenScore:(BOOL)score;
- (id)rankingParams;
@end

@implementation MORankingParamsMO

- (id)rankingParams
{
  v3 = objc_alloc_init(MORankingParams);
  engagementScoreParamsUpdateDate = [(MORankingParamsMO *)self engagementScoreParamsUpdateDate];
  [(MORankingParams *)v3 setEngagementScoreParamsUpdateDate:engagementScoreParamsUpdateDate];

  [(MORankingParamsMO *)self activityInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setActivityInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self outingInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setOutingInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self photoMomentInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setPhotoMomentInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self significantContactInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setSignificantContactInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self yourMediaInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setYourMediaInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self yourSharedContentInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setYourSharedContentInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self yourTimeAtHomeInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setYourTimeAtHomeInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self topicsOfInterestInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setTopicsOfInterestInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self trendInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setTrendInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self photoMemoryInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setPhotoMemoryInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self evergreenInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setEvergreenInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self timeContextInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setTimeContextInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self tripInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setTripInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self stateOfMindInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setStateOfMindInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self clusteringInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setClusteringInterfaceTypeEngagementWeight:?];
  [(MORankingParamsMO *)self thematicSummaryInterfaceTypeEngagementWeight];
  [(MORankingParams *)v3 setThematicSummaryInterfaceTypeEngagementWeight:?];
  [(MORankingParams *)v3 setIsParamsUpdateOnHold:[(MORankingParamsMO *)self isParamsUpdateOnHold]];
  evergreenEngagementScoreParamsUpdateDate = [(MORankingParamsMO *)self evergreenEngagementScoreParamsUpdateDate];
  [(MORankingParams *)v3 setEvergreenEngagementScoreParamsUpdateDate:evergreenEngagementScoreParamsUpdateDate];

  [(MORankingParams *)v3 setIsEvergreenEngagementScoreParamsUpdateOnHold:[(MORankingParamsMO *)self isEvergreenEngagementScoreParamsUpdateOnHold]];
  [(MORankingParamsMO *)self wisdomEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setWisdomEvergreenTypeEngagementWeight:?];
  [(MORankingParamsMO *)self gratitudeEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setGratitudeEvergreenTypeEngagementWeight:?];
  [(MORankingParamsMO *)self kindnessEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setKindnessEvergreenTypeEngagementWeight:?];
  [(MORankingParamsMO *)self purposeEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setPurposeEvergreenTypeEngagementWeight:?];
  [(MORankingParamsMO *)self resilienceEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setResilienceEvergreenTypeEngagementWeight:?];
  [(MORankingParamsMO *)self creativityEvergreenTypeEngagementWeight];
  [(MORankingParams *)v3 setCreativityEvergreenTypeEngagementWeight:?];

  return v3;
}

+ (void)_updateRankingParamsMO:(id)o with:(id)with forEvergreenScore:(BOOL)score
{
  scoreCopy = score;
  withCopy = with;
  oCopy = o;
  v9 = +[NSDate date];
  if (scoreCopy)
  {
    [oCopy setEvergreenEngagementScoreParamsUpdateDate:v9];

    evergreenEngagementScoreParameterDict = [withCopy evergreenEngagementScoreParameterDict];
    v11 = [evergreenEngagementScoreParameterDict objectForKeyedSubscript:@"WISDOM"];
    [v11 floatValue];
    [oCopy setWisdomEvergreenTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict2 = [withCopy evergreenEngagementScoreParameterDict];
    v13 = [evergreenEngagementScoreParameterDict2 objectForKeyedSubscript:@"GRATITUDE"];
    [v13 floatValue];
    [oCopy setGratitudeEvergreenTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict3 = [withCopy evergreenEngagementScoreParameterDict];
    v15 = [evergreenEngagementScoreParameterDict3 objectForKeyedSubscript:@"KINDNESS"];
    [v15 floatValue];
    [oCopy setKindnessEvergreenTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict4 = [withCopy evergreenEngagementScoreParameterDict];
    v17 = [evergreenEngagementScoreParameterDict4 objectForKeyedSubscript:@"PURPOSE"];
    [v17 floatValue];
    [oCopy setPurposeEvergreenTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict5 = [withCopy evergreenEngagementScoreParameterDict];
    v19 = [evergreenEngagementScoreParameterDict5 objectForKeyedSubscript:@"RESILIENCE"];
    [v19 floatValue];
    [oCopy setResilienceEvergreenTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict6 = [withCopy evergreenEngagementScoreParameterDict];

    v20 = [evergreenEngagementScoreParameterDict6 objectForKeyedSubscript:@"CREATIVITY"];
    [v20 floatValue];
    [oCopy setCreativityEvergreenTypeEngagementWeight:?];
  }

  else
  {
    [oCopy setEngagementScoreParamsUpdateDate:v9];

    dynamicModelParameterDict = [withCopy dynamicModelParameterDict];
    v22 = [dynamicModelParameterDict objectForKeyedSubscript:&off_10036A3C0];
    [v22 floatValue];
    [oCopy setActivityInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict2 = [withCopy dynamicModelParameterDict];
    v24 = [dynamicModelParameterDict2 objectForKeyedSubscript:&off_10036A3D8];
    [v24 floatValue];
    [oCopy setOutingInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict3 = [withCopy dynamicModelParameterDict];
    v26 = [dynamicModelParameterDict3 objectForKeyedSubscript:&off_10036A3F0];
    [v26 floatValue];
    [oCopy setPhotoMomentInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict4 = [withCopy dynamicModelParameterDict];
    v28 = [dynamicModelParameterDict4 objectForKeyedSubscript:&off_10036A408];
    [v28 floatValue];
    [oCopy setSignificantContactInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict5 = [withCopy dynamicModelParameterDict];
    v30 = [dynamicModelParameterDict5 objectForKeyedSubscript:&off_10036A420];
    [v30 floatValue];
    [oCopy setYourMediaInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict6 = [withCopy dynamicModelParameterDict];
    v32 = [dynamicModelParameterDict6 objectForKeyedSubscript:&off_10036A438];
    [v32 floatValue];
    [oCopy setYourSharedContentInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict7 = [withCopy dynamicModelParameterDict];
    v34 = [dynamicModelParameterDict7 objectForKeyedSubscript:&off_10036A450];
    [v34 floatValue];
    [oCopy setYourTimeAtHomeInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict8 = [withCopy dynamicModelParameterDict];
    v36 = [dynamicModelParameterDict8 objectForKeyedSubscript:&off_10036A468];
    [v36 floatValue];
    [oCopy setTopicsOfInterestInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict9 = [withCopy dynamicModelParameterDict];
    v38 = [dynamicModelParameterDict9 objectForKeyedSubscript:&off_10036A480];
    [v38 floatValue];
    [oCopy setTrendInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict10 = [withCopy dynamicModelParameterDict];
    v40 = [dynamicModelParameterDict10 objectForKeyedSubscript:&off_10036A498];
    [v40 floatValue];
    [oCopy setPhotoMemoryInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict11 = [withCopy dynamicModelParameterDict];
    v42 = [dynamicModelParameterDict11 objectForKeyedSubscript:&off_10036A4B0];
    [v42 floatValue];
    [oCopy setEvergreenInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict12 = [withCopy dynamicModelParameterDict];
    v44 = [dynamicModelParameterDict12 objectForKeyedSubscript:&off_10036A4C8];
    [v44 floatValue];
    [oCopy setTimeContextInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict13 = [withCopy dynamicModelParameterDict];
    v46 = [dynamicModelParameterDict13 objectForKeyedSubscript:&off_10036A4E0];
    [v46 floatValue];
    [oCopy setTripInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict14 = [withCopy dynamicModelParameterDict];
    v48 = [dynamicModelParameterDict14 objectForKeyedSubscript:&off_10036A4F8];
    [v48 floatValue];
    [oCopy setStateOfMindInterfaceTypeEngagementWeight:?];

    dynamicModelParameterDict15 = [withCopy dynamicModelParameterDict];
    v50 = [dynamicModelParameterDict15 objectForKeyedSubscript:&off_10036A510];
    [v50 floatValue];
    [oCopy setClusteringInterfaceTypeEngagementWeight:?];

    evergreenEngagementScoreParameterDict6 = [withCopy dynamicModelParameterDict];

    v20 = [evergreenEngagementScoreParameterDict6 objectForKeyedSubscript:&off_10036A528];
    [v20 floatValue];
    [oCopy setThematicSummaryInterfaceTypeEngagementWeight:?];
  }
}

+ (void)managedObjectWithObject:(uint64_t)a1 inManagedObjectContext:(NSObject *)a2 forContext:forEvergreenScore:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading ranking core data, %@", &v2, 0xCu);
}

+ (void)managedObjectWithObject:(os_log_t)log inManagedObjectContext:forContext:forEvergreenScore:.cold.2(os_log_t log)
{
  v1 = 136315394;
  v2 = "+[MORankingParamsMO managedObjectWithObject:inManagedObjectContext:forContext:forEvergreenScore:]";
  v3 = 1024;
  v4 = 37;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ranking params array size is 0 (in %s:%d)", &v1, 0x12u);
}

@end