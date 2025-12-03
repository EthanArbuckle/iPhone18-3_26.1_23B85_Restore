@interface CLLivePlaceContextRoutineMonitorAdapter
- (CLLivePlaceContextRoutineMonitorAdapter)initWithLivePlaceContext:(void *)context;
- (void)onPeriodicPlaceInferenceUpdates:(id)updates;
@end

@implementation CLLivePlaceContextRoutineMonitorAdapter

- (CLLivePlaceContextRoutineMonitorAdapter)initWithLivePlaceContext:(void *)context
{
  v7.receiver = self;
  v7.super_class = CLLivePlaceContextRoutineMonitorAdapter;
  v4 = [(CLLivePlaceContextRoutineMonitorAdapter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_livePlaceUpdater = context;
    [(CLLivePlaceContextRoutineMonitorAdapter *)v4 setValid:1];
  }

  return v5;
}

- (void)onPeriodicPlaceInferenceUpdates:(id)updates
{
  if (qword_1025D47A0 != -1)
  {
    sub_101881844();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    livePlaceUpdater = self->_livePlaceUpdater;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = livePlaceUpdater;
    v12 = 1026;
    v13 = [updates count];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive onPeriodicPlaceInferenceUpdates, livePlaceUpdater:%{public}p, mapItems:%{public}d}", v7, 0x22u);
  }

  sub_100417D9C(self->_livePlaceUpdater, updates);
}

@end