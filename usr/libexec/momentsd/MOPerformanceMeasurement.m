@interface MOPerformanceMeasurement
- (MOPerformanceMeasurement)initWithName:(id)a3 measureRecentPeak:(BOOL)a4;
- (id)description;
- (void)_addMetricWithKey:(id)a3 name:(id)a4 unit:(id)a5 denominator:(double)a6 pcMetricID:(unint64_t)a7;
- (void)_evaluateEndedSession:(pc_session *)a3 duration:(double)a4;
- (void)dealloc;
- (void)endSession;
- (void)measureBlock:(id)a3;
- (void)startSession;
@end

@implementation MOPerformanceMeasurement

- (MOPerformanceMeasurement)initWithName:(id)a3 measureRecentPeak:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MOPerformanceMeasurement;
  v8 = [(MOPerformanceMeasurement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_session = 0;
    v10 = objc_opt_new();
    [(MOPerformanceMeasurement *)v9 setMetrics:v10];

    objc_storeStrong(&v9->_name, a3);
    v9->_measureRecentPeak = a4;
    [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricExecutionTime" name:@"Execution Time" unit:@"ms" denominator:0 pcMetricID:1.0];
    [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricCPUTime" name:@"CPU Time" unit:@"ms" denominator:0x63707574696D6500 pcMetricID:1000000.0];
    [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricLifetimeMemPeak" name:@"Lifetime Peak" unit:@"MB" denominator:0x6C6966657065616BLL pcMetricID:1000.0];
    [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricDeltaMem" name:@"Mem Delta" unit:@"MB" denominator:0x6D656D64656C7461 pcMetricID:1000.0];
    if (v9->_measureRecentPeak)
    {
      [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricDeltaMemPeak" name:@"Peak Delta" unit:@"MB" denominator:0x7065616B646C7461 pcMetricID:1000.0];
      [(MOPerformanceMeasurement *)v9 _addMetricWithKey:@"MOPerformanceMetricRecentMemPeak" name:@"Recent Peak" unit:@"MB" denominator:0x72636E747065616BLL pcMetricID:1000.0];
    }
  }

  return v9;
}

- (id)description
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v3 = [(MOPerformanceMeasurement *)self name];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n=========== %s ===========\n", [v3 UTF8String]);

  v4 = [(MOPerformanceMeasurement *)self metrics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__MOPerformanceMeasurement_description__block_invoke;
  v7[3] = &unk_100336720;
  v7[4] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__MOPerformanceMeasurement_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v4;
  v6 = [v4 description];
  v7 = [v5 stringByAppendingFormat:@"%s\n", objc_msgSend(v6, "UTF8String")];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)measureBlock:(id)a3
{
  v4 = a3;
  [(MOPerformanceMeasurement *)self startSession];
  v4[2]();
  [(MOPerformanceMeasurement *)self endSession];
}

- (void)startSession
{
  if (+[MOPerformanceMeasurement isEnabled])
  {
    if (self->_session)
    {
      pc_session_end();
      session = self->_session;
      pc_session_destroy();
      startDate = self->_startDate;
      self->_startDate = 0;
      self->_session = 0;
    }

    v5 = pc_session_create();
    if (v5)
    {
      v6 = v5;
      v7 = +[NSProcessInfo processInfo];
      [v7 processIdentifier];
      pc_session_set_procpid();

      if (self->_measureRecentPeak)
      {
        pc_session_add_metric();
        pc_session_add_metric();
      }

      v8 = objc_opt_new();
      v9 = self->_startDate;
      self->_startDate = v8;

      self->_session = v6;

      _pc_session_begin(v6);
    }
  }
}

- (void)endSession
{
  if (self->_session)
  {
    pc_session_end();
    session = self->_session;
    v4 = objc_opt_new();
    [v4 timeIntervalSinceDate:self->_startDate];
    [(MOPerformanceMeasurement *)self _evaluateEndedSession:session duration:?];

    v5 = self->_session;
    pc_session_destroy();
    startDate = self->_startDate;
    self->_startDate = 0;
    self->_session = 0;

    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(MOPerformanceMeasurement *)self description];
      v9 = 136315138;
      v10 = [v8 UTF8String];
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "METRICS: %s", &v9, 0xCu);
    }
  }
}

- (void)dealloc
{
  [(MOPerformanceMeasurement *)self endSession];
  v3.receiver = self;
  v3.super_class = MOPerformanceMeasurement;
  [(MOPerformanceMeasurement *)&v3 dealloc];
}

- (void)_addMetricWithKey:(id)a3 name:(id)a4 unit:(id)a5 denominator:(double)a6 pcMetricID:(unint64_t)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [[MOPerformanceMetric alloc] initWithDisplayName:v12 pcMetricID:a7 unit:v13 denominator:a6];
  v15 = [(MOPerformanceMeasurement *)self metrics];
  [v15 setObject:v14 forKeyedSubscript:v16];
}

- (void)_evaluateEndedSession:(pc_session *)a3 duration:(double)a4
{
  v7 = [(MOPerformanceMeasurement *)self metrics];
  v8 = [v7 objectForKeyedSubscript:@"MOPerformanceMetricExecutionTime"];
  [v8 setRawValue:a4 * 1000.0];

  v9 = [(MOPerformanceMeasurement *)self metrics];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__MOPerformanceMeasurement__evaluateEndedSession_duration___block_invoke;
  v10[3] = &__block_descriptor_40_e46_v32__0__NSString_8__MOPerformanceMetric_16_B24l;
  v10[4] = a3;
  [v9 enumerateKeysAndObjectsUsingBlock:v10];
}

void __59__MOPerformanceMeasurement__evaluateEndedSession_duration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 pcMetricID])
  {
    v5 = *(a1 + 32);
    [v4 pcMetricID];
    if (!pc_session_get_value())
    {
      [v4 setRawValue:0.0];
    }
  }
}

@end