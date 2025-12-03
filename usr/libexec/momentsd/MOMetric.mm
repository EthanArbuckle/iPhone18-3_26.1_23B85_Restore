@interface MOMetric
+ ($E278B6834D55977C8D8083A775B4AB36)event;
+ (id)binForNumber:(id)number bins:(id)bins;
+ (id)binsFromStart:(id)start toEnd:(id)end gap:(id)gap;
+ (id)metricName;
+ (id)metricNameFromEvent:(id)event;
+ (id)supportedMetricKeys;
- (BOOL)setAllMetrics:(id)metrics error:(id *)error;
- (BOOL)submitMetricsWithError:(id *)error;
- (BOOL)submitMetricsWithError:(id *)error forEvent:(id)event;
- (MOMetric)initWithLoggingEnabled:(BOOL)enabled;
- (NSString)description;
@end

@implementation MOMetric

- (MOMetric)initWithLoggingEnabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = MOMetric;
  v4 = [(MOMetric *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_loggingEnabled = enabled;
    v6 = +[NSMutableDictionary dictionary];
    metrics = v5->_metrics;
    v5->_metrics = v6;

    v5->_submitted = 0;
  }

  return v5;
}

+ (id)metricNameFromEvent:(id)event
{
  var0 = event.var0;
  if (event.var0)
  {
    v3 = [[NSString alloc] initWithCString:_mo_analytics_get_event(&var0) encoding:1];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOMetric metricNameFromEvent:a2];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)metricName
{
  event = [objc_opt_class() event];
  if (event)
  {
    v3 = [[NSString alloc] initWithCString:_mo_analytics_get_event(&event) encoding:1];
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MOMetric metricNameFromEvent:a2];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)binForNumber:(id)number bins:(id)bins
{
  numberCopy = number;
  binsCopy = bins;
  v9 = binsCopy;
  if (!numberCopy)
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[MOMetric binForNumber:bins:];
    }

    v26 = +[NSAssertionHandler currentHandler];
    v27 = v26;
    v28 = @"Invalid parameter not satisfying: number != nil";
    v29 = a2;
    selfCopy2 = self;
    v31 = 86;
    goto LABEL_16;
  }

  if (![binsCopy count])
  {
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[MOMetric binForNumber:bins:];
    }

    v26 = +[NSAssertionHandler currentHandler];
    v27 = v26;
    v28 = @"Invalid parameter not satisfying: bins.count > 0";
    v29 = a2;
    selfCopy2 = self;
    v31 = 87;
LABEL_16:
    [v26 handleFailureInMethod:v29 object:selfCopy2 file:@"MOMetric.m" lineNumber:v31 description:v28];

    v33 = 0;
    goto LABEL_22;
  }

  v10 = [v9 count];
  v11 = v10 - 1;
  if (v10 == 1)
  {
    v24 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = (&v12[v11] >> 1);
      v14 = [v9 objectAtIndexedSubscript:v13];
      [v14 doubleValue];
      v16 = v15;
      [numberCopy doubleValue];
      v18 = v17;

      if (v16 >= v18)
      {
        v19 = [v9 objectAtIndexedSubscript:&v12[v11] >> 1];
        [v19 doubleValue];
        v21 = v20;
        [numberCopy doubleValue];
        v23 = v22;

        if (v21 <= v23)
        {
          break;
        }
      }

      else
      {
        v12 = v13 + 1;
        v13 = v11;
      }

      v11 = v13;
    }

    while (v12 < v13);
    v24 = &v12[v11] >> 1;
  }

  [numberCopy doubleValue];
  v35 = v34;
  v36 = [v9 objectAtIndexedSubscript:v24];
  [v36 doubleValue];
  v38 = v37;

  if (v35 >= v38)
  {
    v39 = v24 + 1;
  }

  else
  {
    v39 = v24;
  }

  v33 = [NSNumber numberWithUnsignedInteger:v39];
LABEL_22:

  return v33;
}

+ (id)binsFromStart:(id)start toEnd:(id)end gap:(id)gap
{
  startCopy = start;
  endCopy = end;
  gapCopy = gap;
  v12 = gapCopy;
  if (!startCopy)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[MOMetric binsFromStart:toEnd:gap:];
    }

    v21 = +[NSAssertionHandler currentHandler];
    v22 = v21;
    v23 = @"Invalid parameter not satisfying: start != nil";
    v24 = a2;
    selfCopy3 = self;
    v26 = 115;
    goto LABEL_16;
  }

  if (!endCopy)
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[MOMetric binsFromStart:toEnd:gap:];
    }

    v21 = +[NSAssertionHandler currentHandler];
    v22 = v21;
    v23 = @"Invalid parameter not satisfying: end != nil";
    v24 = a2;
    selfCopy3 = self;
    v26 = 116;
    goto LABEL_16;
  }

  if (!gapCopy)
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[MOMetric binsFromStart:toEnd:gap:];
    }

    v21 = +[NSAssertionHandler currentHandler];
    v22 = v21;
    v23 = @"Invalid parameter not satisfying: gap != nil";
    v24 = a2;
    selfCopy3 = self;
    v26 = 117;
LABEL_16:
    [v21 handleFailureInMethod:v24 object:selfCopy3 file:@"MOMetric.m" lineNumber:v26 description:v23];

    v13 = 0;
    goto LABEL_17;
  }

  v13 = +[NSMutableArray array];
  [startCopy doubleValue];
  v15 = v14;
  [endCopy doubleValue];
  if (v15 <= v16)
  {
    do
    {
      v17 = [NSNumber numberWithDouble:v15];
      [v13 addObject:v17];

      [v12 doubleValue];
      v15 = v15 + v18;
      [endCopy doubleValue];
    }

    while (v15 <= v19);
  }

LABEL_17:

  return v13;
}

- (BOOL)submitMetricsWithError:(id *)error forEvent:(id)event
{
  var0 = event.var0;
  if (error)
  {
    v7 = [objc_opt_class() metricNameFromEvent:event.var0];
    if (v7)
    {
      if (self->_submitted)
      {
        v8 = [NSString stringWithFormat:@"metric, %@, has already been submitted", v7];
        v46 = NSLocalizedDescriptionKey;
        v47 = v8;
        v9 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v10 = [NSError errorWithDomain:@"MOErrorDomain" code:0 userInfo:v9];

        v11 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [MOMetric submitMetricsWithError:forEvent:];
        }

        v12 = v10;
        *error = v10;

        v13 = 0;
      }

      else
      {
        allKeys = [(NSMutableDictionary *)self->_metrics allKeys];
        v8 = [NSSet setWithArray:allKeys];

        supportedMetricKeys = [objc_opt_class() supportedMetricKeys];
        v20 = [NSSet setWithSet:supportedMetricKeys];

        v13 = [v8 isEqualToSet:v20];
        if (v13)
        {
          if (self->_loggingEnabled)
          {
            v21 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = NSStringFromSelector(a2);
              metrics = self->_metrics;
              *buf = 138412802;
              v39 = v22;
              v40 = 2112;
              v41 = v7;
              v42 = 2112;
              v43 = metrics;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "MO_LOG_INFO: %@, submitting, %@, metrics, %@", buf, 0x20u);
            }
          }

          v24 = [[NSString alloc] initWithCString:_mo_analytics_get_event(&var0) encoding:1];
          v25 = [NSString stringWithFormat:@"com.apple.Moments.%@", v24];
          v26 = self->_metrics;
          AnalyticsSendEvent();

          self->_submitted = 1;
        }

        else
        {
          v27 = [NSMutableSet setWithSet:v8];
          [v27 minusSet:v20];
          v36 = v20;
          v28 = [NSMutableSet setWithSet:v20];
          [v28 minusSet:v8];
          v35 = v27;
          v29 = [NSString stringWithFormat:@"metric keys set does not match with keys that metric, %@, supports.  Extra keys, %@, missing keys, %@", v7, v27, v28];
          v44 = NSLocalizedDescriptionKey;
          v45 = v29;
          v30 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v31 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v30];

          v32 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [MOMetric submitMetricsWithError:forEvent:];
          }

          v33 = v31;
          *error = v31;

          v20 = v36;
        }
      }
    }

    else
    {
      v48 = NSLocalizedDescriptionKey;
      v49 = @"metricName cannot be nil";
      v15 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v8 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v15];

      v16 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOMetric submitMetricsWithError:forEvent:];
      }

      v17 = v8;
      v13 = 0;
      *error = v8;
    }
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOMetric submitMetricsWithError:forEvent:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOMetric.m" lineNumber:131 description:@"Invalid parameter not satisfying: outError"];
    v13 = 0;
  }

  return v13;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  if (error)
  {
    event = [objc_opt_class() event];
    metricName = [objc_opt_class() metricName];
    if (metricName)
    {
      if (self->_submitted)
      {
        v7 = [NSString stringWithFormat:@"metric, %@, has already been submitted", metricName];
        v46 = NSLocalizedDescriptionKey;
        v47 = v7;
        v8 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v9 = [NSError errorWithDomain:@"MOErrorDomain" code:0 userInfo:v8];

        v10 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [MOMetric submitMetricsWithError:forEvent:];
        }

        v11 = v9;
        *error = v9;

        v12 = 0;
      }

      else
      {
        allKeys = [(NSMutableDictionary *)self->_metrics allKeys];
        v7 = [NSSet setWithArray:allKeys];

        supportedMetricKeys = [objc_opt_class() supportedMetricKeys];
        v20 = [NSSet setWithSet:supportedMetricKeys];

        v12 = [v7 isEqualToSet:v20];
        if (v12)
        {
          if (self->_loggingEnabled)
          {
            v21 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = NSStringFromSelector(a2);
              metrics = self->_metrics;
              *buf = 138412802;
              v39 = v22;
              v40 = 2112;
              v41 = metricName;
              v42 = 2112;
              v43 = metrics;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "MO_LOG_INFO: %@, submitting, %@, metrics, %@", buf, 0x20u);
            }
          }

          v24 = [[NSString alloc] initWithCString:_mo_analytics_get_event(&event) encoding:1];
          v25 = [NSString stringWithFormat:@"com.apple.Moments.%@", v24];
          v26 = self->_metrics;
          AnalyticsSendEvent();

          self->_submitted = 1;
        }

        else
        {
          v27 = [NSMutableSet setWithSet:v7];
          [v27 minusSet:v20];
          v36 = v20;
          v28 = [NSMutableSet setWithSet:v20];
          [v28 minusSet:v7];
          v35 = v27;
          v29 = [NSString stringWithFormat:@"metric keys set does not match with keys that metric, %@, supports.  Extra keys, %@, missing keys, %@", metricName, v27, v28];
          v44 = NSLocalizedDescriptionKey;
          v45 = v29;
          v30 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v31 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v30];

          v32 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [MOMetric submitMetricsWithError:forEvent:];
          }

          v33 = v31;
          *error = v31;

          v20 = v36;
        }
      }
    }

    else
    {
      v48 = NSLocalizedDescriptionKey;
      v49 = @"metricName cannot be nil";
      v15 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v7 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v15];

      v16 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOMetric submitMetricsWithError:forEvent:];
      }

      v17 = v7;
      v12 = 0;
      *error = v7;
    }
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOMetric submitMetricsWithError:forEvent:];
    }

    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MOMetric.m" lineNumber:195 description:@"Invalid parameter not satisfying: outError"];

    return 0;
  }

  return v12;
}

- (BOOL)setAllMetrics:(id)metrics error:(id *)error
{
  metricsCopy = metrics;
  v8 = metricsCopy;
  if (error)
  {
    if (metricsCopy)
    {
      metricName = [objc_opt_class() metricName];
      if (metricName)
      {
        allKeys = [v8 allKeys];
        v11 = [NSSet setWithArray:allKeys];

        supportedMetricKeys = [objc_opt_class() supportedMetricKeys];
        v13 = [v11 isSubsetOfSet:supportedMetricKeys];
        if (v13)
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = __32__MOMetric_setAllMetrics_error___block_invoke;
          v29[3] = &unk_100338640;
          v29[4] = self;
          [v8 enumerateKeysAndObjectsUsingBlock:v29];
        }

        else
        {
          v21 = [NSMutableSet setWithSet:v11];
          [v21 minusSet:supportedMetricKeys];
          v28 = v21;
          [NSString stringWithFormat:@"metric keys contains keys that metric, %@, does not support.  Extra keys, %@", metricName, v21];
          v31 = v30 = NSLocalizedDescriptionKey;
          v27 = v31;
          v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v23 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v22];

          v24 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [MOMetric submitMetricsWithError:forEvent:];
          }

          v25 = v23;
          *error = v23;
        }
      }

      else
      {
        v32 = NSLocalizedDescriptionKey;
        v33 = @"cannot set all metrics when metricName is nil";
        v18 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v11 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v18];

        v19 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MOMetric submitMetricsWithError:forEvent:];
        }

        v20 = v11;
        v13 = 0;
        *error = v11;
      }
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOMetric setAllMetrics:error:];
      }

      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MOMetric.m" lineNumber:263 description:@"Invalid parameter not satisfying: metrics"];

      _MOErrorInvalidParameterCreate(@"metrics");
      *error = v13 = 0;
    }
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOMetric submitMetricsWithError:forEvent:];
    }

    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MOMetric.m" lineNumber:262 description:@"Invalid parameter not satisfying: outError"];

    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  metricName = [objc_opt_class() metricName];
  metrics = [(MOMetric *)self metrics];
  v5 = [NSString stringWithFormat:@"name, %@, metrics, %@", metricName, metrics];

  return v5;
}

+ ($E278B6834D55977C8D8083A775B4AB36)event
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)supportedMetricKeys
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = objc_opt_new();

  return v2;
}

+ (void)metricNameFromEvent:(const char *)a1 .cold.1(const char *a1)
{
  v6 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)submitMetricsWithError:forEvent:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end