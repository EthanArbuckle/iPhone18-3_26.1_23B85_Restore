@interface NEKSyncWindow
- (BOOL)_eventInWindow:(id)a3 inStore:(id)a4;
- (BOOL)eventInFuture:(id)a3 inStore:(id)a4;
- (BOOL)eventInWindow:(id)a3 inStore:(id)a4;
- (BOOL)reminderInFuture:(id)a3;
- (BOOL)reminderInWindow:(id)a3;
- (BOOL)shouldSyncBasedOnTime:(double)a3;
- (id)initForFullSync:(BOOL)a3 tinyStore:(id)a4;
- (void)_computeDerived;
- (void)_loadLastSyncWindow;
- (void)_setWindowToNow;
@end

@implementation NEKSyncWindow

- (id)initForFullSync:(BOOL)a3 tinyStore:(id)a4
{
  v5 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = NEKSyncWindow;
  v8 = [(NEKSyncWindow *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_tinyStore, a4);
    v10 = +[SYDevice targetableDevice];
    v11 = [v10 systemBuildVersion];
    v12 = [@"16A0" compare:v11 options:64];
    v13 = 30.0;
    if (v12 == 1)
    {
      v13 = 2.0;
    }

    v14 = vdup_n_s32(v12 == 1);
    v15.i64[0] = v14.u32[0];
    v15.i64[1] = v14.u32[1];
    *&v9->_fwdDaysToSync = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), xmmword_1000A2740, xmmword_1000A2730);
    v9->_dontSyncDays = v13;
    if (v5)
    {
      [(NEKSyncWindow *)v9 _setWindowToNow];
    }

    else
    {
      [(NEKSyncWindow *)v9 _loadLastSyncWindow];
    }

    v16 = sub_10002FC84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      startDate = v9->_startDate;
      endDate = v9->_endDate;
      *buf = 138543874;
      v22 = startDate;
      v23 = 2114;
      v24 = endDate;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Window: start: %{public}@ end: %{public}@, isFullSync: %d", buf, 0x1Cu);
    }
  }

  return v9;
}

- (void)_setWindowToNow
{
  [(NEKSyncWindow *)self _getTestWindowStart];
  v4 = v3;
  Current = CFAbsoluteTimeGetCurrent();
  if (v4 == 0.0)
  {
    v7 = vmlaq_f64(vdupq_lane_s64(*&Current, 0), vdupq_n_s64(0x40AC200000000000uLL), vmulq_f64(*&self->_fwdDaysToSync, xmmword_1000A2750));
    *&self->_spanStart = vextq_s8(v7, v7, 8uLL);
    [(NEKTinyStore *)self->_tinyStore setDoubleValue:@"windowStart" forKey:*&v7.i64[1]];
    [(NEKTinyStore *)self->_tinyStore setDoubleValue:@"windowEnd" forKey:self->_spanEnd];
  }

  else
  {
    self->_spanStart = v4;
    [(NEKSyncWindow *)self _getTestWindowEnd];
    self->_spanEnd = v6;
  }

  [(NEKSyncWindow *)self _computeDerived];
}

- (void)_loadLastSyncWindow
{
  [(NEKSyncWindow *)self _getTestWindowStart];
  if (v3 != 0.0)
  {
    self->_spanStart = v3;
    [(NEKSyncWindow *)self _getTestWindowEnd];
    self->_spanEnd = v4;
    goto LABEL_5;
  }

  [(NEKSyncWindow *)self _getWindowStart];
  self->_spanStart = v5;
  [(NEKSyncWindow *)self _getWindowEnd];
  self->_spanEnd = v6;
  if (self->_spanStart != 0.0 && v6 != 0.0)
  {
LABEL_5:

    [(NEKSyncWindow *)self _computeDerived];
    return;
  }

  v7 = sub_10002FC84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100071CE4(v7);
  }

  [(NEKSyncWindow *)self _setWindowToNow];
}

- (void)_computeDerived
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:self->_spanStart];
  [(NEKSyncWindow *)self setStartDate:v3];

  v4 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:self->_spanEnd];
  [(NEKSyncWindow *)self setEndDate:v4];

  [(NEKSyncWindow *)self _spanNowTime];
  self->_taskCutoff = v5 + -1209600.0;
  v6 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:self->_taskCutoff];
  [(NEKSyncWindow *)self setTaskCutoffDate:v6];

  v7 = +[NSTimeZone defaultTimeZone];
  [(NEKSyncWindow *)self setTimeZone:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)eventInWindow:(id)a3 inStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NEKSyncWindow *)self _eventInWindow:v7 inStore:v6];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (BOOL)_eventInWindow:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 startDate];
    v10 = [v8 endDate];
    v11 = [(NEKSyncWindow *)self startDate];
    v12 = [(NEKSyncWindow *)self endDate];
    v13 = [(NEKSyncWindow *)self timeZone];
    if ([v9 isBefore:v12] && (objc_msgSend(v10, "isAfter:", v11) & 1) != 0 || objc_msgSend(v9, "isBefore:", v11) && (objc_msgSend(v10, "isAfter:", v12) & 1) != 0 || (objc_msgSend(v7, "occurrencesExistInRangeForEvent:startDate:endDate:mustStartInInterval:timezone:", v8, v11, v12, 0, v13) & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v21 = sub_10002FC84();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v8 uniqueId];
        v24 = [v8 eks_debugDesc];
        *buf = 138543618;
        v26 = v22;
        v27 = 2114;
        v28 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Rejected event: %{public}@ %{public}@", buf, 0x16u);
      }

      v14 = 0;
    }

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 completionDate];
    v15 = [(NEKSyncWindow *)self taskCutoffDate];
    v16 = [v9 isBefore:v15];

    if (v16)
    {
      v17 = sub_10002FC84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 uniqueId];
        v19 = [v8 eks_debugDesc];
        *buf = 138543618;
        v26 = v18;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejected reminder: %{public}@ %{public}@", buf, 0x16u);
      }
    }

    v14 = v16 ^ 1;
    goto LABEL_21;
  }

  v8 = sub_10002FC84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 uniqueId];
    *buf = 138543362;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accepting unknown entity: %{public}@", buf, 0xCu);
  }

  v14 = 1;
LABEL_22:

  return v14;
}

- (BOOL)eventInFuture:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    v12 = [v11 endDate];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    if (v14 <= v10)
    {
      v23 = +[NSDate distantFuture];
      os_unfair_lock_lock(&self->_lock);
      v24 = [(NEKSyncWindow *)self timeZone];
      os_unfair_lock_unlock(&self->_lock);
      v15 = [v7 occurrencesExistInRangeForEvent:v11 startDate:v8 endDate:v23 mustStartInInterval:0 timezone:v24];
      if ((v15 & 1) == 0)
      {
        v25 = sub_10002FC84();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v11 uniqueId];
          v27 = [v11 title];
          v31 = 138543618;
          v32 = v26;
          v33 = 2112;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "event not in future: %{public}@ %@", &v31, 0x16u);
        }
      }
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v15 = 1;
    goto LABEL_15;
  }

  v16 = v6;
  v17 = [v16 completionDate];
  v18 = v17;
  if (!v17 || ([v17 timeIntervalSinceReferenceDate], v20 = v19, os_unfair_lock_lock(&self->_lock), -[NEKSyncWindow taskCutoff](self, "taskCutoff"), v22 = v21, os_unfair_lock_unlock(&self->_lock), v20 >= v22))
  {

    goto LABEL_8;
  }

  v29 = sub_10002FC84();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v16 uniqueId];
    v31 = 138543362;
    v32 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "reminder not in future: %{public}@", &v31, 0xCu);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)reminderInWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 completionDate];
  v6 = [(NEKSyncWindow *)self taskCutoffDate];
  v7 = [v5 isBefore:v6];

  if (v7)
  {
    v8 = sub_10002FC84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 daCalendarItemUniqueIdentifier];
      v10 = [v4 eks_debugDesc];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejected reminder: %{public}@ %{public}@", &v12, 0x16u);
    }
  }

  return v7 ^ 1;
}

- (BOOL)reminderInFuture:(id)a3
{
  v4 = a3;
  v5 = [v4 completionDate];
  v6 = v5;
  if (v5 && ([v5 timeIntervalSinceReferenceDate], v8 = v7, os_unfair_lock_lock(&self->_lock), -[NEKSyncWindow taskCutoff](self, "taskCutoff"), v10 = v9, os_unfair_lock_unlock(&self->_lock), v8 < v10))
  {
    v12 = sub_10002FC84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 daCalendarItemUniqueIdentifier];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "reminder not in future: %{public}@", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldSyncBasedOnTime:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NEKSyncWindow *)self _spanNowTime];
  v6 = v5 > a3 || v5 + self->_dontSyncDays * 24.0 * 3600.0 < a3;
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

@end