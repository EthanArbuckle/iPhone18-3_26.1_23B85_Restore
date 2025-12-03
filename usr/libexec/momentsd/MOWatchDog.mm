@interface MOWatchDog
- (BOOL)setCadenceSeconds:(float)seconds;
- (MOWatchDog)initWithName:(id)name cadenceInSeconds:(float)seconds andHandler:(id)handler;
- (void)_cancel;
- (void)_pet;
- (void)cancel;
- (void)dealloc;
- (void)pet;
@end

@implementation MOWatchDog

- (void)pet
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __17__MOWatchDog_pet__block_invoke;
  v4[3] = &unk_1003379D8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __17__MOWatchDog_pet__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _pet];
    WeakRetained = v2;
  }
}

- (void)_pet
{
  OUTLINED_FUNCTION_2_2();
  [*(v1 + 8) UTF8String];
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __20__MOWatchDog_cancel__block_invoke;
  v4[3] = &unk_1003379D8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __20__MOWatchDog_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancel];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_cancel
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (MOWatchDog)initWithName:(id)name cadenceInSeconds:(float)seconds andHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = MOWatchDog;
  v10 = [(MOWatchDog *)&v27 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    nameCopy = [NSString stringWithFormat:@"MOWatchDog:%@", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);
    v17 = *(v10 + 4);
    *(v10 + 4) = v16;

    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v10 + 4));
    v19 = *(v10 + 3);
    *(v10 + 3) = v18;

    objc_initWeak(&location, v10);
    v20 = *(v10 + 3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __55__MOWatchDog_initWithName_cadenceInSeconds_andHandler___block_invoke;
    handler[3] = &unk_1003379D8;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(*(v10 + 3));
    *&v21 = seconds;
    [v10 setCadenceSeconds:v21];
    v22 = v10;
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__MOWatchDog_initWithName_cadenceInSeconds_andHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityWatchDog);
    v5 = v4;
    if (v3 >= 18)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __55__MOWatchDog_initWithName_cadenceInSeconds_andHandler___block_invoke_cold_1();
      }

      v26[0] = @"Name";
      v13 = [v2[1] copy];
      v27[0] = v13;
      v26[1] = @"SuccessiveWarningCount";
      v14 = [NSNumber numberWithInt:*(v2 + 5)];
      v26[2] = @"Fatal";
      v27[1] = v14;
      v27[2] = &off_1003696B8;
      v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
      AnalyticsSendEvent();

      exit(255);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2[1] UTF8String];
      v7 = *(v2 + 4);
      v8 = *(v2 + 5);
      *buf = 134218754;
      v19 = v2;
      v20 = 2080;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Watch dog [0x%p:%s] was not petted on time; [%f] seconds elapsed, this happened %i time(s) before!", buf, 0x26u);
    }

    ++*(v2 + 5);
    v9 = [v2[1] copy];
    v17[0] = v9;
    v16[1] = @"SuccessiveWarningCount";
    v10 = [NSNumber numberWithInt:*(v2 + 5)];
    v16[2] = @"Fatal";
    v17[1] = v10;
    v17[2] = &off_1003696D0;
    v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    AnalyticsSendEvent();

    v12 = v2[5];
    if (v12)
    {
      v12[2](v12, *(v2 + 5));
    }
  }
}

- (BOOL)setCadenceSeconds:(float)seconds
{
  if (seconds <= 0.0)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityWatchDog);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MOWatchDog *)v4 setCadenceSeconds:seconds];
    }
  }

  else
  {
    self->_cadenceSeconds = seconds;
    [(MOWatchDog *)self pet];
  }

  return seconds > 0.0;
}

void __55__MOWatchDog_initWithName_cadenceInSeconds_andHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(v1);
  OUTLINED_FUNCTION_0_12();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "Watch dog [0x%p:%s] died of no petting - Exiting process!", v2, 0x16u);
}

- (void)setCadenceSeconds:(os_log_t)log .cold.1(os_log_t log, float a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid cadence value %f", &v2, 0xCu);
}

@end