@interface _DASActivityRuntimeAllocationInfo
- (id)description;
- (id)initActivityRuntimeAllocationInfo:(id)a3 allocatedRuntime:(double)a4 utilizedRuntime:(double)a5 reallocatedDuration:(double)a6;
@end

@implementation _DASActivityRuntimeAllocationInfo

- (id)initActivityRuntimeAllocationInfo:(id)a3 allocatedRuntime:(double)a4 utilizedRuntime:(double)a5 reallocatedDuration:(double)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = _DASActivityRuntimeAllocationInfo;
  v12 = [(_DASActivityRuntimeAllocationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, a3);
    v13[2] = a4;
    v13[4] = a5;
    v13[5] = a6;
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