@interface CLMotionStateMediatorAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLMotionStateMediatorAdapter)init;
- (id)syncgetActivityOverride;
- (void)adaptee;
- (void)addClient:(id)client prepareSessionEndForSessionType:(int64_t)type;
- (void)beginService;
- (void)beginWorkoutSession:(WorkoutSettings *)session withOverview:(id)overview enableWorkoutChangeDetection:(BOOL)detection;
- (void)currentWorkoutActiveStateWithReply:(id)reply;
- (void)didExitGeoFence;
- (void)didTimeoutGeoFence;
- (void)didUpdateWeather:(id)weather;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)endWorkoutSession:(WorkoutSettings *)session;
- (void)lastKnownIndoorOutdoorStateWithReply:(id)reply;
- (void)onOutdoorUpdate:(id)update;
- (void)onVisit:(id)visit;
- (void)pauseWorkout:(WorkoutSettings *)workout;
- (void)registerForWorkoutSessionUpdates:(id)updates;
- (void)removeClient:(id)client prepareSessionEndForSessionType:(int64_t)type;
- (void)resumeWorkout:(WorkoutSettings *)workout;
- (void)setCurrentWorkoutType:(WorkoutSettings *)type isManualTransition:(BOOL)transition;
- (void)setWorkoutSuggestedStopTimeout:(double)timeout;
- (void)triggerWorkoutLocationEventForTesting:(int64_t)testing withReply:(id)reply;
- (void)unregisterForWorkoutSessionUpdates:(id)updates;
- (void)updateWorkoutReminderMuteSetting:(int64_t)setting mute:(BOOL)mute;
- (void)userDismissedWorkoutAlert;
- (void)workoutSnapshotWithReply:(id)reply;
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

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
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

- (void)doAsync:(id)async
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLMotionStateMediatorAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)onOutdoorUpdate:(id)update
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];
  (*(update + 2))(v5, update);
  sub_1000C5F7C(adaptee, v5);
}

- (void)onVisit:(id)visit
{
  v4 = *([(CLMotionStateMediatorAdapter *)self adaptee]+ 1049);
  if (v4)
  {

    sub_100C1BE60(v4, visit);
  }
}

- (void)didUpdateWeather:(id)weather
{
  v4 = *([(CLMotionStateMediatorAdapter *)self adaptee]+ 1049);
  if (v4)
  {

    sub_100C1BA34(v4, weather);
  }
}

- (void)addClient:(id)client prepareSessionEndForSessionType:(int64_t)type
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687D14(adaptee, client, type);
}

- (void)removeClient:(id)client prepareSessionEndForSessionType:(int64_t)type
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687EA4(adaptee, client, type);
}

- (void)setWorkoutSuggestedStopTimeout:(double)timeout
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006880BC(adaptee, timeout);
}

- (void)userDismissedWorkoutAlert
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006881D0(adaptee);
}

- (void)triggerWorkoutLocationEventForTesting:(int64_t)testing withReply:(id)reply
{
  v5 = sub_100D36564([(CLMotionStateMediatorAdapter *)self adaptee]+ 6648, testing);
  v6 = *(reply + 2);
  if (v5)
  {
    v7 = 100;
  }

  else
  {
    v7 = 108;
  }

  v6(reply, v7);
}

- (void)lastKnownIndoorOutdoorStateWithReply:(id)reply
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = adaptee[632];
  v6 = *(adaptee + 1266);
  (*(reply + 2))(reply, &v5);
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

- (void)registerForWorkoutSessionUpdates:(id)updates
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006888B0(adaptee, updates);
}

- (void)unregisterForWorkoutSessionUpdates:(id)updates
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100688998(adaptee, updates);
}

- (void)beginWorkoutSession:(WorkoutSettings *)session withOverview:(id)overview enableWorkoutChangeDetection:(BOOL)detection
{
  detectionCopy = detection;
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];
  (*(overview + 2))(v9, overview);
  sub_100688B14(adaptee, session->var0, v9, detectionCopy);
  sub_100106180(v11);
  if (v10 < 0)
  {
    operator delete(v9[2]);
  }
}

- (void)setCurrentWorkoutType:(WorkoutSettings *)type isManualTransition:(BOOL)transition
{
  transitionCopy = transition;
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689098(adaptee, type->var0, transitionCopy);
}

- (void)endWorkoutSession:(WorkoutSettings *)session
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100687390(adaptee, session->var0);
}

- (void)pauseWorkout:(WorkoutSettings *)workout
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689280(adaptee, workout->var0);
}

- (void)resumeWorkout:(WorkoutSettings *)workout
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_1006893C0(adaptee, workout->var0);
}

- (void)currentWorkoutActiveStateWithReply:(id)reply
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
  (*(reply + 2))(reply, v4, v12, v5);
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

- (void)workoutSnapshotWithReply:(id)reply
{
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];
  v5 = *(adaptee + 10072);
  v12[12] = *(adaptee + 10056);
  v12[13] = v5;
  v12[14] = *(adaptee + 10088);
  v6 = *(adaptee + 10008);
  v12[8] = *(adaptee + 9992);
  v12[9] = v6;
  v7 = *(adaptee + 10040);
  v12[10] = *(adaptee + 10024);
  v12[11] = v7;
  v8 = *(adaptee + 9944);
  v12[4] = *(adaptee + 9928);
  v12[5] = v8;
  v9 = *(adaptee + 9976);
  v12[6] = *(adaptee + 9960);
  v12[7] = v9;
  v10 = *(adaptee + 9880);
  v12[0] = *(adaptee + 9864);
  v12[1] = v10;
  v11 = *(adaptee + 9912);
  v12[2] = *(adaptee + 9896);
  v12[3] = v11;
  (*(reply + 2))(reply, v12);
}

- (void)updateWorkoutReminderMuteSetting:(int64_t)setting mute:(BOOL)mute
{
  muteCopy = mute;
  adaptee = [(CLMotionStateMediatorAdapter *)self adaptee];

  sub_100689A04(adaptee, setting, muteCopy);
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