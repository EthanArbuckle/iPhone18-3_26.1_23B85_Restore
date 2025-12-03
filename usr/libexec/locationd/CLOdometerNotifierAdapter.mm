@interface CLOdometerNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLOdometerNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)querySignificantElevationDeltaFromDate:(id)date toDate:(id)toDate withReply:(id)reply;
- (void)registerForCyclingWorkoutDistanceUpdates:(id)updates;
- (void)unregisterForCyclingWorkoutDistanceUpdates:(id)updates;
- (void)updatePhoneWorkoutElevationSubscription:(BOOL)subscription;
@end

@implementation CLOdometerNotifierAdapter

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
  if (qword_1026566E8 != -1)
  {
    sub_10189A2E0();
  }

  return qword_1026566E0;
}

- (CLOdometerNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLOdometerNotifierAdapter;
  return [(CLOdometerNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLOdometerNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLOdometerNotifierClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1004D1FC8([(CLOdometerNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10189A2F4();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)async
{
  adaptee = [(CLOdometerNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLOdometerNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

+ (BOOL)isSupported
{
  if (qword_1026566F8 != -1)
  {
    sub_10189A488();
  }

  return byte_1026566F0;
}

- (void)querySignificantElevationDeltaFromDate:(id)date toDate:(id)toDate withReply:(id)reply
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v8 = [(CLOdometerNotifierAdapter *)self adaptee:0];
  [date timeIntervalSinceReferenceDate];
  v10 = v9;
  [toDate timeIntervalSinceReferenceDate];
  sub_1004D2390(v8, &v15, v10, v11);
  v12.n128_u64[0] = *(&v16 + 1);
  if (*(&v16 + 1) == -1.0)
  {
    v13 = *(reply + 2);

    v13(reply, 0, v12);
  }

  else
  {
    v14 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:&v15];
    (*(reply + 2))(reply, v14);
  }
}

- (void)updatePhoneWorkoutElevationSubscription:(BOOL)subscription
{
  v3 = *(*[(CLOdometerNotifierAdapter *)self adaptee]+ 208);

  v3();
}

- (void)registerForCyclingWorkoutDistanceUpdates:(id)updates
{
  adaptee = [(CLOdometerNotifierAdapter *)self adaptee];

  sub_1004D24C4(adaptee, updates);
}

- (void)unregisterForCyclingWorkoutDistanceUpdates:(id)updates
{
  adaptee = [(CLOdometerNotifierAdapter *)self adaptee];

  sub_1004D25AC(adaptee, updates);
}

@end