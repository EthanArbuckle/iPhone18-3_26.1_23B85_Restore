@interface _DASRunningTracker
- (double)remainingRuntime;
- (id)description;
- (id)initRuntimeTrackerWithMaximumRuntime:(double)a3;
- (void)updateCurrentRuntimeWithActivity:(id)a3;
@end

@implementation _DASRunningTracker

- (id)initRuntimeTrackerWithMaximumRuntime:(double)a3
{
  v5.receiver = self;
  v5.super_class = _DASRunningTracker;
  result = [(_DASRunningTracker *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 2) = 0;
  }

  return result;
}

- (double)remainingRuntime
{
  result = self->_maximumRuntime + self->_additionalRuntime - self->_reallocatedRuntime - self->_currentRuntime;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)updateCurrentRuntimeWithActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  if (v5)
  {
    v6 = [v4 endTime];
    if (!v6)
    {
      v7 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100122B74();
      }

      v6 = +[NSDate now];
    }

    [v6 timeIntervalSinceDate:v5];
    self->_currentRuntime = v8 + self->_currentRuntime;
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100122BDC();
    }
  }
}

- (id)description
{
  reallocatedRuntime = self->_reallocatedRuntime;
  additionalRuntime = self->_additionalRuntime;
  v5 = [NSNumber numberWithDouble:self->_currentRuntime];
  v6 = [NSNumber numberWithDouble:self->_maximumRuntime];
  v7 = v6;
  if (reallocatedRuntime != 0.0)
  {
    if (additionalRuntime != 0.0)
    {
      v8 = [NSNumber numberWithDouble:self->_additionalRuntime];
      v9 = [NSNumber numberWithDouble:self->_reallocatedRuntime];
      v10 = [NSString stringWithFormat:@"<Current:%@ Allocated:%@ Additional: %@ Reallocated:%@>", v5, v7, v8, v9];

      goto LABEL_9;
    }

    v11 = [NSNumber numberWithDouble:self->_reallocatedRuntime];
    [NSString stringWithFormat:@"<Current:%@ Allocated:%@ Reallocated:%@>", v5, v7, v11];
    goto LABEL_7;
  }

  if (additionalRuntime != 0.0)
  {
    v11 = [NSNumber numberWithDouble:self->_additionalRuntime];
    [NSString stringWithFormat:@"<Current:%@ Allocated:%@ Additional:%@>", v5, v7, v11];
    v10 = LABEL_7:;

    goto LABEL_9;
  }

  v10 = [NSString stringWithFormat:@"<Current:%@ Allocated:%@>", v5, v6];
LABEL_9:

  return v10;
}

@end