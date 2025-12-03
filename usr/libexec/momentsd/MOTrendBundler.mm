@interface MOTrendBundler
- (BOOL)configure:(id)configure;
- (MOTrendBundler)init;
- (MOTrendBundler)initWithPredicate:(id)predicate andAnnotator:(id)annotator;
- (id)processPatternEvents:(id)events withEvents:(id)withEvents;
- (void)setAnnotator:(id)annotator;
- (void)setPredicate:(id)predicate;
@end

@implementation MOTrendBundler

- (MOTrendBundler)init
{
  v8.receiver = self;
  v8.super_class = MOTrendBundler;
  v2 = [(MOTrendBundler *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    configuration = v2->_configuration;
    v2->_configuration = v3;

    predicate = v2->_predicate;
    v2->_predicate = 0;

    annotator = v2->_annotator;
    v2->_annotator = 0;
  }

  return v2;
}

- (MOTrendBundler)initWithPredicate:(id)predicate andAnnotator:(id)annotator
{
  predicateCopy = predicate;
  annotatorCopy = annotator;
  v12.receiver = self;
  v12.super_class = MOTrendBundler;
  v8 = [(MOTrendBundler *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    configuration = v8->_configuration;
    v8->_configuration = v9;

    [(MOTrendBundler *)v8 setPredicate:predicateCopy];
    [(MOTrendBundler *)v8 setAnnotator:annotatorCopy];
  }

  return v8;
}

- (void)setPredicate:(id)predicate
{
  objc_storeStrong(&self->_predicate, predicate);
  predicateCopy = predicate;
  [(MOTrendBundlerPredicate *)self->_predicate configure:self->_configuration];
}

- (void)setAnnotator:(id)annotator
{
  objc_storeStrong(&self->_annotator, annotator);
  annotatorCopy = annotator;
  [(MOTrendBundlerAnnotator *)self->_annotator configure:self->_configuration];
}

- (BOOL)configure:(id)configure
{
  v4 = [configure copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  predicate = self->_predicate;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v7 = [(MOTrendBundlerPredicate *)self->_predicate configure:self->_configuration];
  }

  else
  {
    v7 = 1;
  }

  annotator = self->_annotator;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v7 &= [(MOTrendBundlerAnnotator *)self->_annotator configure:self->_configuration];
  }

  return v7;
}

- (id)processPatternEvents:(id)events withEvents:(id)withEvents
{
  eventsCopy = events;
  withEventsCopy = withEvents;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    trendDetectorName = self->_trendDetectorName;
    *buf = 138412290;
    v28 = trendDetectorName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating trend bundles from events for %@...", buf, 0xCu);
  }

  if (!self->_predicate)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOTrendBundler processPatternEvents:? withEvents:?];
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MOTrendBundler.m" lineNumber:77 description:{@"No trend bundle predicate strategy was defined for %@ (in %s:%d)", self->_trendDetectorName, "-[MOTrendBundler processPatternEvents:withEvents:]", 77}];
  }

  if (!self->_annotator)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOTrendBundler processPatternEvents:? withEvents:?];
    }

    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MOTrendBundler.m" lineNumber:78 description:{@"No trend bundle annotator strategy was defined for %@ (in %s:%d)", self->_trendDetectorName, "-[MOTrendBundler processPatternEvents:withEvents:]", 78}];
  }

  predicate = self->_predicate;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOTrendBundlerPredicate *)self->_predicate reset];
  }

  annotator = self->_annotator;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOTrendBundlerAnnotator *)self->_annotator reset];
  }

  v17 = [(MOTrendBundlerPredicate *)self->_predicate filterEvents:eventsCopy];
  v18 = [(MOTrendBundlerAnnotator *)self->_annotator createTrendBundlesFrom:v17 withEvents:withEventsCopy];

  if (v18 && [v18 count])
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v20 = [v18 count];
    v21 = self->_trendDetectorName;
    *buf = 134218242;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v22 = "Detected %lu trend bundles for %@";
    v23 = v19;
    v24 = 22;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v25 = self->_trendDetectorName;
    *buf = 138412290;
    v28 = v25;
    v22 = "No trend bundles detected for %@";
    v23 = v19;
    v24 = 12;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
LABEL_22:

  return v18;
}

- (void)processPatternEvents:(uint64_t)a1 withEvents:.cold.1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 138412802;
  v4 = v1;
  OUTLINED_FUNCTION_0_4();
  v5 = 77;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "No trend bundle predicate strategy was defined for %@ (in %s:%d)", &v3, 0x1Cu);
}

- (void)processPatternEvents:(uint64_t)a1 withEvents:.cold.2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 138412802;
  v4 = v1;
  OUTLINED_FUNCTION_0_4();
  v5 = 78;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "No trend bundle annotator strategy was defined for %@ (in %s:%d)", &v3, 0x1Cu);
}

@end