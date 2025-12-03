@interface _DASRuntimeTracker
- (BOOL)hasValidWindow;
- (NSString)description;
- (double)actualReallocatedRuntime;
- (double)currentRuntime;
- (double)remainingRuntime;
- (id)initRuntimeTrackingGroupWithMaximumRuntime:(double)runtime inGroup:(id)group withWindow:(double)window;
- (void)activityEnded:(id)ended;
- (void)activityStarted:(id)started;
@end

@implementation _DASRuntimeTracker

- (id)initRuntimeTrackingGroupWithMaximumRuntime:(double)runtime inGroup:(id)group withWindow:(double)window
{
  groupCopy = group;
  v18.receiver = self;
  v18.super_class = _DASRuntimeTracker;
  v10 = [(_DASRuntimeTracker *)&v18 init];
  if (v10)
  {
    v11 = [[_DASRunningTracker alloc] initRuntimeTrackerWithMaximumRuntime:runtime];
    runningTracker = v10->_runningTracker;
    v10->_runningTracker = v11;

    activeActivities = v10->_activeActivities;
    v10->_activeActivities = 0;

    v10->_window = window;
    v14 = [groupCopy isEqualToString:off_10020A088[0]];
    v15 = 0;
    if ((v14 & 1) == 0)
    {
      v15 = +[NSDate now];
    }

    startDate = v10->_startDate;
    v10->_startDate = v15;

    objc_storeStrong(&v10->_groupType, group);
  }

  return v10;
}

- (void)activityStarted:(id)started
{
  startedCopy = started;
  activeActivities = self->_activeActivities;
  if (activeActivities)
  {
    v5 = activeActivities;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v6 = self->_activeActivities;
  self->_activeActivities = v5;

  v7 = self->_activeActivities;
  uuid = [startedCopy uuid];
  uUIDString = [uuid UUIDString];
  v10 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:uUIDString];

  if (!v10)
  {
    startDate = [startedCopy startDate];
    v12 = self->_activeActivities;
    uuid2 = [startedCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    [(NSMutableDictionary *)v12 setObject:startDate forKeyedSubscript:uUIDString2];
  }
}

- (void)activityEnded:(id)ended
{
  endedCopy = ended;
  v5 = endedCopy;
  activeActivities = self->_activeActivities;
  if (!activeActivities)
  {
    goto LABEL_4;
  }

  uuid = [endedCopy uuid];
  uUIDString = [uuid UUIDString];
  v9 = [(NSMutableDictionary *)activeActivities objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    [(_DASRunningTracker *)self->_runningTracker updateCurrentRuntimeWithActivity:v5];
    v10 = self->_activeActivities;
    uuid2 = [v5 uuid];
    uUIDString2 = [uuid2 UUIDString];
    [(NSMutableDictionary *)v10 removeObjectForKey:uUIDString2];
  }

  else
  {
LABEL_4:
    v13 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100122C44();
    }
  }
}

- (NSString)description
{
  v3 = [(NSMutableDictionary *)self->_activeActivities copy];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = +[NSDate now];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          if (v13)
          {
            [v6 timeIntervalSinceDate:v13];
            v14 = [NSNumber numberWithDouble:?];
            v15 = [v12 substringToIndex:6];
            [v5 setObject:v14 forKeyedSubscript:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = [NSString stringWithFormat:@"%@, Running Activity %@", self->_runningTracker, v5];

    v4 = v18;
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@", self->_runningTracker];
  }

  return v16;
}

- (double)currentRuntime
{
  [(_DASRunningTracker *)self->_runningTracker currentRuntime];
  v4 = v3;
  v5 = +[NSDate now];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_activeActivities;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_activeActivities objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v10), v14];
        [v11 timeIntervalSinceDate:v5];
        if (v12 < 0.0)
        {
          v4 = v4 - v12;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

- (double)actualReallocatedRuntime
{
  [(_DASRunningTracker *)self->_runningTracker maximumRuntime];
  v4 = v3;
  [(_DASRunningTracker *)self->_runningTracker currentRuntime];
  v6 = v4 - v5;
  [(_DASRunningTracker *)self->_runningTracker reallocatedRuntime];
  if (v6 < result)
  {
    result = v6;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)hasValidWindow
{
  if (self->_window == -1.0)
  {
    return 1;
  }

  v3 = [(NSDate *)self->_startDate dateByAddingTimeInterval:?];
  v4 = +[NSDate now];
  v5 = [v3 laterDate:v4];
  v2 = v5 == v3;

  return v2;
}

- (double)remainingRuntime
{
  [(_DASRunningTracker *)self->_runningTracker maximumRuntime];
  v4 = v3;
  [(_DASRunningTracker *)self->_runningTracker additionalRuntime];
  v6 = v4 + v5;
  [(_DASRunningTracker *)self->_runningTracker reallocatedRuntime];
  v8 = v6 - v7;
  [(_DASRuntimeTracker *)self currentRuntime];
  result = v8 - v9;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

@end