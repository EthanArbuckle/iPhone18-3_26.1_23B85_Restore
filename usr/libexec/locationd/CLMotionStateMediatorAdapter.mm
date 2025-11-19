@interface CLMotionStateMediatorAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLMotionStateMediatorAdapter)init;
- (id)syncgetActivityOverride;
- (void)adaptee;
- (void)addClient:(id)a3 prepareSessionEndForSessionType:(int64_t)a4;
- (void)beginService;
- (void)beginWorkoutSession:(WorkoutSettings *)a3 withOverview:(id)a4 enableWorkoutChangeDetection:(BOOL)a5;
- (void)currentWorkoutActiveStateWithReply:(id)a3;
- (void)didExitGeoFence;
- (void)didTimeoutGeoFence;
- (void)didUpdateWeather:(id)a3;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)endWorkoutSession:(WorkoutSettings *)a3;
- (void)lastKnownIndoorOutdoorStateWithReply:(id)a3;
- (void)onOutdoorUpdate:(id)a3;
- (void)onVisit:(id)a3;
- (void)pauseWorkout:(WorkoutSettings *)a3;
- (void)registerForWorkoutSessionUpdates:(id)a3;
- (void)removeClient:(id)a3 prepareSessionEndForSessionType:(int64_t)a4;
- (void)resumeWorkout:(WorkoutSettings *)a3;
- (void)setCurrentWorkoutType:(WorkoutSettings *)a3 isManualTransition:(BOOL)a4;
- (void)setWorkoutSuggestedStopTimeout:(double)a3;
- (void)triggerWorkoutLocationEventForTesting:(int64_t)a3 withReply:(id)a4;
- (void)unregisterForWorkoutSessionUpdates:(id)a3;
- (void)updateWorkoutReminderMuteSetting:(int64_t)a3 mute:(BOOL)a4;
- (void)userDismissedWorkoutAlert;
- (void)workoutSnapshotWithReply:(id)a3;
@end

@implementation CLMotionStateMediatorAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102658690 != -1)
  {
    sub_101900088();
  }

  return qword_102658688;
}

- (CLMotionStateMediatorAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLMotionStateMediatorAdapter;
  return [(CLMotionStateMediatorAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLMotionStateMediatorProtocol outboundProtocol:&OBJC_PROTOCOL___CLMotionStateMediatorClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100687A3C([(CLMotionStateMediatorAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10190009C();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLMotionStateMediatorAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)onOutdoorUpdate:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_1000C5F7C(v4, v5);
}

- (void)onVisit:(id)a3
{
  v4 = *([(CLMotionStateMediatorAdapter *)self adaptee]+ 1049);
  if (v4)
  {

    sub_100C1BE60(v4, a3);
  }
}

- (void)didUpdateWeather:(id)a3
{
  v4 = *([(CLMotionStateMediatorAdapter *)self adaptee]+ 1049);
  if (v4)
  {

    sub_100C1BA34(v4, a3);
  }
}

- (void)addClient:(id)a3 prepareSessionEndForSessionType:(int64_t)a4
{
  v6 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687D14(v6, a3, a4);
}

- (void)removeClient:(id)a3 prepareSessionEndForSessionType:(int64_t)a4
{
  v6 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687EA4(v6, a3, a4);
}

- (void)setWorkoutSuggestedStopTimeout:(double)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006880BC(v4, a3);
}

- (void)userDismissedWorkoutAlert
{
  v2 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006881D0(v2);
}

- (void)triggerWorkoutLocationEventForTesting:(int64_t)a3 withReply:(id)a4
{
  v5 = sub_100D36564([(CLMotionStateMediatorAdapter *)self adaptee]+ 6648, a3);
  v6 = *(a4 + 2);
  if (v5)
  {
    v7 = 100;
  }

  else
  {
    v7 = 108;
  }

  v6(a4, v7);
}

- (void)lastKnownIndoorOutdoorStateWithReply:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = v4[632];
  v6 = *(v4 + 1266);
  (*(a3 + 2))(a3, &v5);
}

- (void)didExitGeoFence
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#gfc didExitGeoFence() received in adapter", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900824();
  }

  sub_1006883FC([(CLMotionStateMediatorAdapter *)self adaptee]);
}

- (void)didTimeoutGeoFence
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#gfc didTimeout() received in adapter", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019009EC();
  }

  sub_1006885A4([(CLMotionStateMediatorAdapter *)self adaptee]);
}

- (id)syncgetActivityOverride
{
  sub_100688718([(CLMotionStateMediatorAdapter *)self adaptee], &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = sub_1006887C0(&v4);
  if (v5)
  {
    sub_100008080(v5);
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  return v2;
}

- (void)registerForWorkoutSessionUpdates:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006888B0(v4, a3);
}

- (void)unregisterForWorkoutSessionUpdates:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100688998(v4, a3);
}

- (void)beginWorkoutSession:(WorkoutSettings *)a3 withOverview:(id)a4 enableWorkoutChangeDetection:(BOOL)a5
{
  v5 = a5;
  v8 = [(CLMotionStateMediatorAdapter *)self adaptee];
  (*(a4 + 2))(v9, a4);
  sub_100688B14(v8, a3->var0, v9, v5);
  sub_100106180(v11);
  if (v10 < 0)
  {
    operator delete(v9[2]);
  }
}

- (void)setCurrentWorkoutType:(WorkoutSettings *)a3 isManualTransition:(BOOL)a4
{
  v4 = a4;
  v6 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689098(v6, a3->var0, v4);
}

- (void)endWorkoutSession:(WorkoutSettings *)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687390(v4, a3->var0);
}

- (void)pauseWorkout:(WorkoutSettings *)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689280(v4, a3->var0);
}

- (void)resumeWorkout:(WorkoutSettings *)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006893C0(v4, a3->var0);
}

- (void)currentWorkoutActiveStateWithReply:(id)a3
{
  v7 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_1006896F0([(CLMotionStateMediatorAdapter *)self adaptee], v12);
  v6[0] = &v7;
  v6[1] = v20;
  v6[2] = &v17;
  sub_1006975E8(v6, v12);
  sub_100666704(v16);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v4 = v7;
  v12[6] = v20[6];
  v12[7] = v20[7];
  v12[8] = v20[8];
  v13 = v21;
  v12[2] = v20[2];
  v12[3] = v20[3];
  v12[4] = v20[4];
  v12[5] = v20[5];
  v12[0] = v20[0];
  v12[1] = v20[1];
  v8 = v17;
  if (SHIBYTE(v19[0]) < 0)
  {
    sub_100007244(&v9, v18, *(&v18 + 1));
  }

  else
  {
    v9 = v18;
    v10 = v19[0];
  }

  sub_1006976A0(v11, &v19[1]);
  v5 = sub_1006897D0(&v8);
  (*(a3 + 2))(a3, v4, v12, v5);
  sub_100666704(v11);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  sub_100666704(&v19[1]);
  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(v18);
  }
}

- (void)workoutSnapshotWithReply:(id)a3
{
  v4 = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = *(v4 + 10072);
  v12[12] = *(v4 + 10056);
  v12[13] = v5;
  v12[14] = *(v4 + 10088);
  v6 = *(v4 + 10008);
  v12[8] = *(v4 + 9992);
  v12[9] = v6;
  v7 = *(v4 + 10040);
  v12[10] = *(v4 + 10024);
  v12[11] = v7;
  v8 = *(v4 + 9944);
  v12[4] = *(v4 + 9928);
  v12[5] = v8;
  v9 = *(v4 + 9976);
  v12[6] = *(v4 + 9960);
  v12[7] = v9;
  v10 = *(v4 + 9880);
  v12[0] = *(v4 + 9864);
  v12[1] = v10;
  v11 = *(v4 + 9912);
  v12[2] = *(v4 + 9896);
  v12[3] = v11;
  (*(a3 + 2))(a3, v12);
}

- (void)updateWorkoutReminderMuteSetting:(int64_t)a3 mute:(BOOL)a4
{
  v4 = a4;
  v6 = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689A04(v6, a3, v4);
}

+ (BOOL)isSupported
{
  if (qword_1026586A0 != -1)
  {
    sub_101901348();
  }

  return byte_102658698;
}

@end