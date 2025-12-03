@interface _DASActivityRuntimeAllocationInfo
- (id)description;
- (id)initActivityRuntimeAllocationInfo:(id)info allocatedRuntime:(double)runtime utilizedRuntime:(double)utilizedRuntime reallocatedDuration:(double)duration;
@end

@implementation _DASActivityRuntimeAllocationInfo

- (id)initActivityRuntimeAllocationInfo:(id)info allocatedRuntime:(double)runtime utilizedRuntime:(double)utilizedRuntime reallocatedDuration:(double)duration
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = _DASActivityRuntimeAllocationInfo;
  v12 = [(_DASActivityRuntimeAllocationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, info);
    v13[2] = runtime;
    v13[4] = utilizedRuntime;
    v13[5] = duration;
  }

  return v13;
}

- (id)description
{
  activityName = self->_activityName;
  v4 = [NSNumber numberWithDouble:self->_allocatedRuntime];
  v5 = [NSNumber numberWithDouble:self->_utilizedRuntime];
  v6 = [NSNumber numberWithDouble:self->_reallocatedDuration];
  v7 = [NSString stringWithFormat:@"<Activity:%@ Allocated:%@ Utilized:%@ Reallocated:%@>", activityName, v4, v5, v6];

  return v7;
}

@end