@interface _DASViewfinderPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASViewfinderPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
@end

@implementation _DASViewfinderPolicy

- (id)initializeTriggers
{
  v5 = @"identifier";
  v6 = @"com.apple.das.viewfinder.statuschanged";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];

  return v3;
}

- (_DASViewfinderPolicy)init
{
  v13.receiver = self;
  v13.super_class = _DASViewfinderPolicy;
  v2 = [(_DASViewfinderPolicy *)&v13 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Viewfinder Policy";

    v5 = [(_DASViewfinderPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.dasd.viewfinderpolicy", v7);
    queue = v3->_queue;
    v3->_queue = v8;

    v10 = +[FigCameraViewfinder cameraViewfinder];
    viewFinder = v3->_viewFinder;
    v3->_viewFinder = v10;

    [(FigCameraViewfinder *)v3->_viewFinder setDelegate:v3 queue:v3->_queue];
    [(FigCameraViewfinder *)v3->_viewFinder startWithOptions:0];
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011825C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B970 != -1)
  {
    dispatch_once(&qword_10020B970, block);
  }

  v2 = qword_10020B978;

  return v2;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 isContinuedProcessingTask])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    v4 = v5 < _DASSchedulingPriorityUserInitiated;
  }

  return v4;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  if (self->_viewfinderIsActive)
  {
    v5 = 33;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Viewfinder Policy"];
  LOBYTE(v7) = self->_viewfinderIsActive;
  [(_DASPolicyResponseRationale *)v6 addRationaleForCondition:@"viewfinderActive" withRequiredValue:0.0 withCurrentValue:v7];
  [(_DASPolicyResponseRationale *)v6 setResponseOptions:[(_DASPolicyResponseRationale *)v6 responseOptions]| self->_viewfinderIsActive];
  v8 = [_DASPolicyResponse policyResponseWithDecision:v5 validityDuration:v6 rationale:0x384uLL];

  return v8;
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  self->_viewfinderIsActive = 1;
  v4 = [_DASDaemonLogger logForCategory:@"viewfinder", a4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trigger: /device/system/viewfinderActive is now [1]", v7, 2u);
  }

  v5 = +[_DASDaemon sharedInstance];
  v8 = @"com.apple.das.viewfinder.statuschanged";
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v5 handleTriggersBatched:v6];
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  self->_viewfinderIsActive = 0;
  v4 = [_DASDaemonLogger logForCategory:@"viewfinder", a4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trigger: /device/system/viewfinderActive is now [0]", v7, 2u);
  }

  v5 = +[_DASDaemon sharedInstance];
  v8 = @"com.apple.das.viewfinder.statuschanged";
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v5 handleTriggersBatched:v6];
}

@end