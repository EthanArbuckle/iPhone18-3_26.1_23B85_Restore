@interface MORankingParamsMO
+ (void)_updateRankingParamsMO:(id)a3 with:(id)a4 forEvergreenScore:(BOOL)a5;
- (id)rankingParams;
@end

@implementation MORankingParamsMO

- (id)rankingParams
{
  v3 = objc_alloc_init(MORankingParams);
  v4 = [(MORankingParamsMO *)self engagementScoreParamsUpdateDate];
  [(MORankingParams *)v3 setEngagementScoreParamsUpdateDate:v4];

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
  v5 = [(MORankingParamsMO *)self evergreenEngagementScoreParamsUpdateDate];
  [(MORankingParams *)v3 setEvergreenEngagementScoreParamsUpdateDate:v5];

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

+ (void)_updateRankingParamsMO:(id)a3 with:(id)a4 forEvergreenScore:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[NSDate date];
  if (v5)
  {
    [v8 setEvergreenEngagementScoreParamsUpdateDate:v9];

    v10 = [v7 evergreenEngagementScoreParameterDict];
    v11 = [v10 objectForKeyedSubscript:@"WISDOM"];
    [v11 floatValue];
    [v8 setWisdomEvergreenTypeEngagementWeight:?];

    v12 = [v7 evergreenEngagementScoreParameterDict];
    v13 = [v12 objectForKeyedSubscript:@"GRATITUDE"];
    [v13 floatValue];
    [v8 setGratitudeEvergreenTypeEngagementWeight:?];

    v14 = [v7 evergreenEngagementScoreParameterDict];
    v15 = [v14 objectForKeyedSubscript:@"KINDNESS"];
    [v15 floatValue];
    [v8 setKindnessEvergreenTypeEngagementWeight:?];

    v16 = [v7 evergreenEngagementScoreParameterDict];
    v17 = [v16 objectForKeyedSubscript:@"PURPOSE"];
    [v17 floatValue];
    [v8 setPurposeEvergreenTypeEngagementWeight:?];

    v18 = [v7 evergreenEngagementScoreParameterDict];
    v19 = [v18 objectForKeyedSubscript:@"RESILIENCE"];
    [v19 floatValue];
    [v8 setResilienceEvergreenTypeEngagementWeight:?];

    v51 = [v7 evergreenEngagementScoreParameterDict];

    v20 = [v51 objectForKeyedSubscript:@"CREATIVITY"];
    [v20 floatValue];
    [v8 setCreativityEvergreenTypeEngagementWeight:?];
  }

  else
  {
    [v8 setEngagementScoreParamsUpdateDate:v9];

    v21 = [v7 dynamicModelParameterDict];
    v22 = [v21 objectForKeyedSubscript:&off_10036A3C0];
    [v22 floatValue];
    [v8 setActivityInterfaceTypeEngagementWeight:?];

    v23 = [v7 dynamicModelParameterDict];
    v24 = [v23 objectForKeyedSubscript:&off_10036A3D8];
    [v24 floatValue];
    [v8 setOutingInterfaceTypeEngagementWeight:?];

    v25 = [v7 dynamicModelParameterDict];
    v26 = [v25 objectForKeyedSubscript:&off_10036A3F0];
    [v26 floatValue];
    [v8 setPhotoMomentInterfaceTypeEngagementWeight:?];

    v27 = [v7 dynamicModelParameterDict];
    v28 = [v27 objectForKeyedSubscript:&off_10036A408];
    [v28 floatValue];
    [v8 setSignificantContactInterfaceTypeEngagementWeight:?];

    v29 = [v7 dynamicModelParameterDict];
    v30 = [v29 objectForKeyedSubscript:&off_10036A420];
    [v30 floatValue];
    [v8 setYourMediaInterfaceTypeEngagementWeight:?];

    v31 = [v7 dynamicModelParameterDict];
    v32 = [v31 objectForKeyedSubscript:&off_10036A438];
    [v32 floatValue];
    [v8 setYourSharedContentInterfaceTypeEngagementWeight:?];

    v33 = [v7 dynamicModelParameterDict];
    v34 = [v33 objectForKeyedSubscript:&off_10036A450];
    [v34 floatValue];
    [v8 setYourTimeAtHomeInterfaceTypeEngagementWeight:?];

    v35 = [v7 dynamicModelParameterDict];
    v36 = [v35 objectForKeyedSubscript:&off_10036A468];
    [v36 floatValue];
    [v8 setTopicsOfInterestInterfaceTypeEngagementWeight:?];

    v37 = [v7 dynamicModelParameterDict];
    v38 = [v37 objectForKeyedSubscript:&off_10036A480];
    [v38 floatValue];
    [v8 setTrendInterfaceTypeEngagementWeight:?];

    v39 = [v7 dynamicModelParameterDict];
    v40 = [v39 objectForKeyedSubscript:&off_10036A498];
    [v40 floatValue];
    [v8 setPhotoMemoryInterfaceTypeEngagementWeight:?];

    v41 = [v7 dynamicModelParameterDict];
    v42 = [v41 objectForKeyedSubscript:&off_10036A4B0];
    [v42 floatValue];
    [v8 setEvergreenInterfaceTypeEngagementWeight:?];

    v43 = [v7 dynamicModelParameterDict];
    v44 = [v43 objectForKeyedSubscript:&off_10036A4C8];
    [v44 floatValue];
    [v8 setTimeContextInterfaceTypeEngagementWeight:?];

    v45 = [v7 dynamicModelParameterDict];
    v46 = [v45 objectForKeyedSubscript:&off_10036A4E0];
    [v46 floatValue];
    [v8 setTripInterfaceTypeEngagementWeight:?];

    v47 = [v7 dynamicModelParameterDict];
    v48 = [v47 objectForKeyedSubscript:&off_10036A4F8];
    [v48 floatValue];
    [v8 setStateOfMindInterfaceTypeEngagementWeight:?];

    v49 = [v7 dynamicModelParameterDict];
    v50 = [v49 objectForKeyedSubscript:&off_10036A510];
    [v50 floatValue];
    [v8 setClusteringInterfaceTypeEngagementWeight:?];

    v51 = [v7 dynamicModelParameterDict];

    v20 = [v51 objectForKeyedSubscript:&off_10036A528];
    [v20 floatValue];
    [v8 setThematicSummaryInterfaceTypeEngagementWeight:?];
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