@interface CLOdometerNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLOdometerNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)querySignificantElevationDeltaFromDate:(id)a3 toDate:(id)a4 withReply:(id)a5;
- (void)registerForCyclingWorkoutDistanceUpdates:(id)a3;
- (void)unregisterForCyclingWorkoutDistanceUpdates:(id)a3;
- (void)updatePhoneWorkoutElevationSubscription:(BOOL)a3;
@end

@implementation CLOdometerNotifierAdapter

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

- (void)doAsync:(id)a3
{
  v4 = [(CLOdometerNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLOdometerNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

+ (BOOL)isSupported
{
  if (qword_1026566F8 != -1)
  {
    sub_10189A488();
  }

  return byte_1026566F0;
}

- (void)querySignificantElevationDeltaFromDate:(id)a3 toDate:(id)a4 withReply:(id)a5
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v8 = [(CLOdometerNotifierAdapter *)self adaptee:0];
  [a3 timeIntervalSinceReferenceDate];
  v10 = v9;
  [a4 timeIntervalSinceReferenceDate];
  sub_1004D2390(v8, &v15, v10, v11);
  v12.n128_u64[0] = *(&v16 + 1);
  if (*(&v16 + 1) == -1.0)
  {
    v13 = *(a5 + 2);

    v13(a5, 0, v12);
  }

  else
  {
    v14 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:&v15];
    (*(a5 + 2))(a5, v14);
  }
}

- (void)updatePhoneWorkoutElevationSubscription:(BOOL)a3
{
  v3 = *(*[(CLOdometerNotifierAdapter *)self adaptee]+ 208);

  v3();
}

- (void)registerForCyclingWorkoutDistanceUpdates:(id)a3
{
  v4 = [(CLOdometerNotifierAdapter *)self adaptee];

  sub_1004D24C4(v4, a3);
}

- (void)unregisterForCyclingWorkoutDistanceUpdates:(id)a3
{
  v4 = [(CLOdometerNotifierAdapter *)self adaptee];

  sub_1004D25AC(v4, a3);
}

@end