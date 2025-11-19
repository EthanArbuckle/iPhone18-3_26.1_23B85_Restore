@interface DPCBasePolicy
- (DPCBasePolicy)init;
- (DPCStateMachine)stateMachine;
- (void)invalidateAbsenceEvent;
- (void)scheduleSendAbsenceEvent;
@end

@implementation DPCBasePolicy

- (DPCBasePolicy)init
{
  v9.receiver = self;
  v9.super_class = DPCBasePolicy;
  v2 = [(DPCBasePolicy *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.watchpresenced.fireQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[DPCTelemetry sharedInstance];
    [(DPCBasePolicy *)v2 setTelemetry:v7];
  }

  return v2;
}

- (void)invalidateAbsenceEvent
{
  absenceEventBlock = self->_absenceEventBlock;
  if (absenceEventBlock)
  {
    dispatch_block_cancel(absenceEventBlock);
    v4 = self->_absenceEventBlock;
    self->_absenceEventBlock = 0;
  }
}

- (void)scheduleSendAbsenceEvent
{
  [(DPCBasePolicy *)self invalidateAbsenceEvent];
  v3 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Kicking off Absence Event timer.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100001E84;
  v13 = &unk_100010508;
  objc_copyWeak(&v15, buf);
  v14 = self;
  v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v10);
  absenceEventBlock = self->_absenceEventBlock;
  self->_absenceEventBlock = v4;

  v6 = [DPCDefaults sharedInstance:v10];
  v7 = [v6 NSNumberForDefault:@"DPCDefaultsHoldOffSec"];
  [v7 floatValue];
  v9 = dispatch_time(0, (v8 * 1000000000.0) + 1);
  dispatch_after(v9, self->_queue, self->_absenceEventBlock);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (DPCStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end