@interface MOEventPatternDetector
- (BOOL)configure:(id)configure;
- (MOEventPatternDetector)init;
- (MOEventPatternDetector)initWithPredicate:(id)predicate andFeatureExtractor:(id)extractor andFeatureTransformer:(id)transformer andAnomalyDetector:(id)detector andRoutineDetector:(id)routineDetector andTrendDetector:(id)trendDetector;
- (id)processEvents:(id)events;
- (void)setAnomalyDetector:(id)detector;
- (void)setFeatureExtractor:(id)extractor;
- (void)setFeatureTransformer:(id)transformer;
- (void)setPredicate:(id)predicate;
- (void)setRoutineDetector:(id)detector;
- (void)setTrendDetector:(id)detector;
@end

@implementation MOEventPatternDetector

- (MOEventPatternDetector)init
{
  v12.receiver = self;
  v12.super_class = MOEventPatternDetector;
  v2 = [(MOEventPatternDetector *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    configuration = v2->_configuration;
    v2->_configuration = v3;

    predicate = v2->_predicate;
    v2->_predicate = 0;

    featureExtractor = v2->_featureExtractor;
    v2->_featureExtractor = 0;

    featureTransformer = v2->_featureTransformer;
    v2->_featureTransformer = 0;

    anomalyDetector = v2->_anomalyDetector;
    v2->_anomalyDetector = 0;

    routineDetector = v2->_routineDetector;
    v2->_routineDetector = 0;

    trendDetector = v2->_trendDetector;
    v2->_trendDetector = 0;
  }

  return v2;
}

- (MOEventPatternDetector)initWithPredicate:(id)predicate andFeatureExtractor:(id)extractor andFeatureTransformer:(id)transformer andAnomalyDetector:(id)detector andRoutineDetector:(id)routineDetector andTrendDetector:(id)trendDetector
{
  predicateCopy = predicate;
  extractorCopy = extractor;
  transformerCopy = transformer;
  detectorCopy = detector;
  routineDetectorCopy = routineDetector;
  trendDetectorCopy = trendDetector;
  v24.receiver = self;
  v24.super_class = MOEventPatternDetector;
  v20 = [(MOEventPatternDetector *)&v24 init];
  if (v20)
  {
    v21 = objc_opt_new();
    configuration = v20->_configuration;
    v20->_configuration = v21;

    [(MOEventPatternDetector *)v20 setPredicate:predicateCopy];
    [(MOEventPatternDetector *)v20 setFeatureExtractor:extractorCopy];
    [(MOEventPatternDetector *)v20 setFeatureTransformer:transformerCopy];
    [(MOEventPatternDetector *)v20 setAnomalyDetector:detectorCopy];
    [(MOEventPatternDetector *)v20 setRoutineDetector:routineDetectorCopy];
    [(MOEventPatternDetector *)v20 setTrendDetector:trendDetectorCopy];
  }

  return v20;
}

- (void)setPredicate:(id)predicate
{
  objc_storeStrong(&self->_predicate, predicate);
  predicateCopy = predicate;
  [(MOEventPatternDetectorPredicate *)self->_predicate configure:self->_configuration];
}

- (void)setFeatureExtractor:(id)extractor
{
  objc_storeStrong(&self->_featureExtractor, extractor);
  extractorCopy = extractor;
  [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor configure:self->_configuration];
}

- (void)setFeatureTransformer:(id)transformer
{
  objc_storeStrong(&self->_featureTransformer, transformer);
  transformerCopy = transformer;
  [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer configure:self->_configuration];
}

- (void)setAnomalyDetector:(id)detector
{
  objc_storeStrong(&self->_anomalyDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector configure:self->_configuration];
}

- (void)setRoutineDetector:(id)detector
{
  objc_storeStrong(&self->_routineDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector configure:self->_configuration];
}

- (void)setTrendDetector:(id)detector
{
  objc_storeStrong(&self->_trendDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorTrendDetector *)self->_trendDetector configure:self->_configuration];
}

- (BOOL)configure:(id)configure
{
  v4 = [configure copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  v6 = [(MOEventPatternDetectorPredicate *)self->_predicate configure:self->_configuration];
  v7 = v6 & [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor configure:self->_configuration];
  v8 = [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer configure:self->_configuration];
  v9 = v7 & v8 & [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector configure:self->_configuration];
  v10 = [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector configure:self->_configuration];
  return v9 & v10 & [(MOEventPatternDetectorTrendDetector *)self->_trendDetector configure:self->_configuration];
}

- (id)processEvents:(id)events
{
  eventsCopy = events;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    patternDetectorName = self->_patternDetectorName;
    *buf = 138412290;
    v79 = patternDetectorName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Analyzing events for anomalies for %@...", buf, 0xCu);
  }

  if (!self->_predicate)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:?];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:136 description:{@"No predicate was strategy defined %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 136}];
  }

  if (!self->_featureExtractor)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:?];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:137 description:{@"No feature extractor strategy was defined for %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 137}];
  }

  if (!self->_anomalyDetector && !self->_routineDetector && !self->_trendDetector)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:?];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:138 description:{@"No anomaly/routine/trend strategy was defined for %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 138}];
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Preparing for process for %@", buf, 0xCu);
  }

  predicate = self->_predicate;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorPredicate *)self->_predicate reset];
  }

  featureExtractor = self->_featureExtractor;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor reset];
  }

  featureTransformer = self->_featureTransformer;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer reset];
  }

  anomalyDetector = self->_anomalyDetector;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector reset];
  }

  routineDetector = self->_routineDetector;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector reset];
  }

  trendDetector = self->_trendDetector;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorTrendDetector *)self->_trendDetector reset];
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Filtering relevant event subsets for %@", buf, 0xCu);
  }

  v24 = [(MOEventPatternDetectorPredicate *)self->_predicate filterEvents:eventsCopy];
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Extracting event features for %@", buf, 0xCu);
  }

  v27 = [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor extractFeaturesFromEvents:v24];
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Aggregating events with featureTransformer for %@", buf, 0xCu);
  }

  v30 = self->_featureTransformer;
  if (v30)
  {
    v31 = [(MOEventPatternDetectorFeatureTransformer *)v30 transformFeaturesFromEvents:v24 withFeatures:v27];
    if ([v31 count] != 2)
    {
      v32 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v33 = +[NSAssertionHandler currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:172 description:{@"Wrong NSArray length resulting from transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 172}];
    }

    firstObject = [v31 firstObject];

    if (!firstObject)
    {
      v35 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:173 description:{@"eventsSubset undefined after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 173}];
    }

    firstObject2 = [v31 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v39 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v40 = +[NSAssertionHandler currentHandler];
      [v40 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:174 description:{@"eventsSubset is not an NSArray after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 174}];
    }

    lastObject = [v31 lastObject];

    if (!lastObject)
    {
      v42 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v43 = +[NSAssertionHandler currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:175 description:{@"features undefined after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 175}];
    }

    lastObject2 = [v31 lastObject];
    objc_opt_class();
    v45 = objc_opt_isKindOfClass();

    if ((v45 & 1) == 0)
    {
      v46 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v47 = +[NSAssertionHandler currentHandler];
      [v47 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:176 description:{@"features is not an NSArray after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 176}];
    }

    firstObject3 = [v31 firstObject];

    lastObject3 = [v31 lastObject];

    v50 = [firstObject3 count];
    if (v50 != [lastObject3 count])
    {
      v51 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v52 = +[NSAssertionHandler currentHandler];
      [v52 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:179 description:{@"Mismatch between number of features and number of events after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 179}];
    }

    v27 = lastObject3;
    v24 = firstObject3;
  }

  v53 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Detecting anomalies for %@", buf, 0xCu);
  }

  v55 = [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector extractAnomalyEventsFrom:v24 withFeatures:v27];
  v56 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Detecting routines for %@", buf, 0xCu);
  }

  v58 = [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector extractRoutineEventsFrom:v24 withFeatures:v27];
  v59 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v60 = self->_patternDetectorName;
    *buf = 138412290;
    v79 = v60;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Detecting trends for %@", buf, 0xCu);
  }

  v61 = [(MOEventPatternDetectorTrendDetector *)self->_trendDetector extractTrendEventsFrom:v24 withFeatures:v27];
  v62 = objc_opt_new();
  v63 = v62;
  if (v55)
  {
    [v62 addObjectsFromArray:v55];
  }

  if (v58)
  {
    [v63 addObjectsFromArray:v58];
  }

  if (v61)
  {
    [v63 addObjectsFromArray:v61];
  }

  if (v63 && [v63 count])
  {
    v64 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v77 = [v63 count];
      v76 = [v55 count];
      v65 = v27;
      v66 = eventsCopy;
      v67 = [v58 count];
      v68 = [v61 count];
      v69 = self->_patternDetectorName;
      *buf = 134219010;
      v79 = v77;
      v80 = 2048;
      v81 = v76;
      v82 = 2048;
      v83 = v67;
      eventsCopy = v66;
      v27 = v65;
      v84 = 2048;
      v85 = v68;
      v86 = 2112;
      v87 = v69;
      v70 = "Detected %lu patterns (a=%lu,r=%lu,t=%lu) for %@";
      v71 = v64;
      v72 = 52;
LABEL_81:
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, v70, buf, v72);
    }
  }

  else
  {
    v64 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v73 = self->_patternDetectorName;
      *buf = 138412290;
      v79 = v73;
      v70 = "No patterns detected for %@";
      v71 = v64;
      v72 = 12;
      goto LABEL_81;
    }
  }

  v74 = v63;
  return v63;
}

- (void)processEvents:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)processEvents:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)processEvents:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)processEvents:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end