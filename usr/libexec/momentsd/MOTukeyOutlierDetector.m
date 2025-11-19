@interface MOTukeyOutlierDetector
- (BOOL)fitData:(id)a3;
- (MOTukeyOutlierDetector)init;
- (id)_testDatum:(id)a3;
- (id)sortData:(id)a3;
- (id)testData:(id)a3;
@end

@implementation MOTukeyOutlierDetector

- (MOTukeyOutlierDetector)init
{
  v3.receiver = self;
  v3.super_class = MOTukeyOutlierDetector;
  return [(MOTukeyOutlierDetector *)&v3 init];
}

- (id)sortData:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"value" ascending:1];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v3 sortUsingDescriptors:v5];

  return v3;
}

- (BOOL)fitData:(id)a3
{
  v5 = a3;
  v6 = [[MOAnalyticsStats alloc] initWithTimeSeries:v5];
  trainDataStats = self->_trainDataStats;
  self->_trainDataStats = v6;

  self->_valid = 0;
  if ([v5 count])
  {
    v8 = [v5 count];
    v9 = [(MOTukeyOutlierDetector *)self sortData:v5];
    v10 = v8;
    v11 = [v9 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v8, 2uLL)}];
    [v11 value];
    self->_q1 = v12;

    v13 = [v9 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v8, 1uLL)}];
    [v13 value];
    self->_q2 = v14;

    v15 = [v9 objectAtIndexedSubscript:(v10 * 0.75)];
    [v15 value];
    self->_q3 = v16;

    v17 = self->_q3 - self->_q1;
    self->_iqr = v17;
    if (v17 > 0.0)
    {
      self->_valid = 1;
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      valid = self->_valid;
      q1 = self->_q1;
      q2 = self->_q2;
      q3 = self->_q3;
      iqr = self->_iqr;
      v27 = 138413570;
      v28 = v19;
      v29 = 2048;
      v30 = valid;
      v31 = 2048;
      v32 = q1;
      v33 = 2048;
      v34 = q2;
      v35 = 2048;
      v36 = q3;
      v37 = 2048;
      v38 = iqr;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@, valid, %lu, q1, %f, q2, %f, q3, %f, iqr, %f", &v27, 0x3Eu);
    }

    v25 = self->_valid;
  }

  else
  {
    v25 = self->_valid;
  }

  return v25;
}

- (id)testData:(id)a3
{
  v4 = a3;
  v5 = [[MOAnalyticsStats alloc] initWithTimeSeries:v4];
  testDataStats = self->_testDataStats;
  self->_testDataStats = v5;

  if (self->_valid)
  {
    v7 = [(MOTukeyOutlierDetector *)self sortData:v4];
    v8 = [v7 objectAtIndexedSubscript:{vcvtd_n_f64_u64(objc_msgSend(v4, "count"), 1uLL)}];
    v9 = [(MOTukeyOutlierDetector *)self _testDatum:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_testDatum:(id)a3
{
  v5 = a3;
  if (self->_valid)
  {
    v6 = objc_opt_new();
    iqr = self->_iqr;
    v8 = self->_q1 + iqr * -1.5;
    v9 = self->_q3 + iqr * 1.5;
    v10 = [v5 date];
    [v6 setDate:v10];

    [v5 value];
    [v6 setActual:?];
    [v5 value];
    [v6 setScore:v11 - self->_q2];
    [v5 value];
    if (v12 >= v8)
    {
      [v5 value];
      v13 = v9 < v14;
    }

    else
    {
      v13 = 1;
    }

    [v6 setOutlier:v13];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      valid = self->_valid;
      [v5 value];
      v19 = v18;
      [v6 score];
      v22 = 138413570;
      v23 = v16;
      v24 = 2048;
      v25 = valid;
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@, valid, %lu, lower, %f, upper, %f, value, %f, score, %f", &v22, 0x3Eu);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end