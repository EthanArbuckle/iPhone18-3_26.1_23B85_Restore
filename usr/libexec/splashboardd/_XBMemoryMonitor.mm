@interface _XBMemoryMonitor
- (_XBMemoryMonitor)init;
- (id)_getProcessMemoryUsed;
- (void)_publishMemoryReportForPressureType:(id)type;
- (void)_setupProcessMemoryPressureMonitor;
- (void)recordMemoryForBundleID:(id)d;
@end

@implementation _XBMemoryMonitor

- (_XBMemoryMonitor)init
{
  v7.receiver = self;
  v7.super_class = _XBMemoryMonitor;
  v2 = [(_XBMemoryMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = [[NSMutableArray alloc] initWithCapacity:10];
    accessLock_memoryRecords = v3->_accessLock_memoryRecords;
    v3->_accessLock_memoryRecords = v4;

    [(_XBMemoryMonitor *)v3 _setupProcessMemoryPressureMonitor];
  }

  return v3;
}

- (void)recordMemoryForBundleID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v6 = [(NSMutableArray *)self->_accessLock_memoryRecords count];
  if (v6 >= 11)
  {
    sub_1000060C4(a2, self);
  }

  _getProcessMemoryUsed = [(_XBMemoryMonitor *)self _getProcessMemoryUsed];
  if (_getProcessMemoryUsed)
  {
    if (v6 == 10)
    {
      [(NSMutableArray *)self->_accessLock_memoryRecords removeObjectAtIndex:0];
    }

    if (!dCopy)
    {
      dCopy = @"<nil>";
    }

    v14[0] = @"bundleID";
    v14[1] = @"memory";
    v15[0] = dCopy;
    v15[1] = _getProcessMemoryUsed;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [(NSMutableArray *)self->_accessLock_memoryRecords addObject:v8];
    v9 = sub_1000010B0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138543618;
      v11 = _getProcessMemoryUsed;
      v12 = 2114;
      v13 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Recorded process memory: %{public}@ Bytes while processing bundleID: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    v8 = sub_1000010B0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100006138(dCopy, v8);
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_setupProcessMemoryPressureMonitor
{
  self->_memoryPressureStatus = 1;
  v3 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x31uLL, &_dispatch_main_q);
  memoryPressureSource = self->_memoryPressureSource;
  self->_memoryPressureSource = v3;

  v5 = self->_memoryPressureSource;
  if (v5)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000057B0;
    handler[3] = &unk_10000C730;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(self->_memoryPressureSource);
  }
}

- (void)_publishMemoryReportForPressureType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(SDRDiagnosticReporter);
  v6 = [v5 signatureWithDomain:@"SplashBoard" type:@"MemoryPressure" subType:typeCopy detectedProcess:@"splashboardd" triggerThresholdValues:0];
  v14 = kSymptomDiagnosticActionGetNetworkInfo;
  v15 = &__kCFBooleanFalse;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableArray *)self->_accessLock_memoryRecords copy];
  os_unfair_lock_unlock(&self->_accessLock);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000059E4;
  v11[3] = &unk_10000C7D0;
  v12 = typeCopy;
  v13 = v8;
  v9 = v8;
  v10 = typeCopy;
  [v5 snapshotWithSignature:v6 duration:v9 events:0 payload:v7 actions:v11 reply:0.0];
}

- (id)_getProcessMemoryUsed
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 93;
  if (task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSNumber numberWithUnsignedLongLong:v8];
  }

  return v2;
}

@end