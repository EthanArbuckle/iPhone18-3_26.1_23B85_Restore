@interface MOAnnotationManager
- (MOAnnotationManager)initWithUniverse:(id)a3;
- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5;
@end

@implementation MOAnnotationManager

- (MOAnnotationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MOAnnotationManager;
  v6 = [(MOAnnotationManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, a3);
    fUniverse = v7->_fUniverse;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(MODaemonUniverse *)fUniverse getService:v10];
    timeZoneManager = v7->_timeZoneManager;
    v7->_timeZoneManager = v11;
  }

  return v7;
}

- (void)performAnnotationWithEvents:(id)a3 withPatternEvents:(id)a4 handler:(id)a5
{
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MOAnnotationManager performAnnotationWithEvents:v7 withPatternEvents:? handler:?];
  }

  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"MOAnnotationManager.m" lineNumber:36 description:{@"Use the derived class (in %s:%d)", "-[MOAnnotationManager performAnnotationWithEvents:withPatternEvents:handler:]", 36}];
}

- (void)performAnnotationWithEvents:(os_log_t)log withPatternEvents:handler:.cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOAnnotationManager performAnnotationWithEvents:withPatternEvents:handler:]";
  v3 = 1024;
  v4 = 36;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Use the derived class (in %s:%d)", &v1, 0x12u);
}

@end