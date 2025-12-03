@interface CLNetworkLocationProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetIsBroadConnection;
- (CLNetworkLocationProviderAdapter)init;
- (int)syncgetBestMatchLocation:(CLDaemonLocation *)location forCell:(const void *)cell;
- (int)syncgetQueryLocationsForCells:(const void *)cells useCache:(BOOL)cache;
- (int)syncgetQueryNearbys:(const CLDaemonLocation *)nearbys forFenceKeys:(const void *)keys;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchQueryLocationsForWifis:(id)wifis useCache:(BOOL)cache piggyback:(BOOL)piggyback config:(id)config withReply:(id)reply;
- (void)resetRetryCounters:(id)counters;
- (void)setCurrentReachability:(int)reachability;
- (void)setLocation_CDMA:(id)a forCell:(id)cell;
- (void)setLocation_GSM:(id)m forCell:(id)cell;
- (void)setLocation_LTE:(id)e forCell:(id)cell;
- (void)setLocation_NR:(id)r forCell:(id)cell;
- (void)setLocation_SCDMA:(id)a forCell:(id)cell;
@end

@implementation CLNetworkLocationProviderAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (BOOL)syncgetIsBroadConnection
{
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_100234858(adaptee);
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
  if (qword_102658F70 != -1)
  {
    sub_10190B4AC();
  }

  return qword_102658F68;
}

- (CLNetworkLocationProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLNetworkLocationProviderAdapter;
  return [(CLNetworkLocationProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLNetworkLocationProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLNetworkLocationProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1006C1748([(CLNetworkLocationProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10190B4C0();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)async
{
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLNetworkLocationProviderAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)setLocation_GSM:(id)m forCell:(id)cell
{
  if (m)
  {
    [m clientLocation];
  }

  else
  {
    v14 = 0u;
    memset(v15, 0, 28);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  LODWORD(v16[1]) = DWORD2(v15[0]);
  *(&v16[1] + 4) = *(v15 + 12);
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee:v7];
  (*(cell + 2))(&v7, cell);
  sub_1006C19C4(v6);
}

- (void)setLocation_SCDMA:(id)a forCell:(id)cell
{
  if (a)
  {
    [a clientLocation];
  }

  else
  {
    v14 = 0u;
    memset(v15, 0, 28);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  LODWORD(v16[1]) = DWORD2(v15[0]);
  *(&v16[1] + 4) = *(v15 + 12);
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee:v7];
  (*(cell + 2))(&v7, cell);
  sub_1006C1F68(v6);
}

- (void)setLocation_CDMA:(id)a forCell:(id)cell
{
  if (a)
  {
    [a clientLocation];
  }

  else
  {
    v14 = 0u;
    memset(v15, 0, 28);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
  }

  v22 = v13;
  v23 = v14;
  v24[0] = v15[0];
  *(v24 + 12) = *(v15 + 12);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16 = *v7;
  v17 = v8;
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];
  (*(cell + 2))(v7, cell);
  sub_1006C253C(adaptee, v7);
}

- (void)setLocation_LTE:(id)e forCell:(id)cell
{
  if (e)
  {
    [e clientLocation];
  }

  else
  {
    v14 = 0u;
    memset(v15, 0, 28);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  LODWORD(v16[1]) = DWORD2(v15[0]);
  *(&v16[1] + 4) = *(v15 + 12);
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee:v7];
  (*(cell + 2))(&v7, cell);
  sub_1006C2D48(v6);
}

- (void)setLocation_NR:(id)r forCell:(id)cell
{
  if (r)
  {
    [r clientLocation];
  }

  else
  {
    v14 = 0u;
    memset(v15, 0, 28);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  LODWORD(v16[1]) = DWORD2(v15[0]);
  *(&v16[1] + 4) = *(v15 + 12);
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee:v7];
  (*(cell + 2))(&v7, cell);
  sub_1006C3484(v6);
}

- (int)syncgetQueryNearbys:(const CLDaemonLocation *)nearbys forFenceKeys:(const void *)keys
{
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_1006C3D98(adaptee, nearbys, keys);
}

- (void)setCurrentReachability:(int)reachability
{
  v3 = *(**([(CLNetworkLocationProviderAdapter *)self adaptee]+ 56) + 32);

  v3();
}

- (void)resetRetryCounters:(id)counters
{
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];
  uTF8String = [counters UTF8String];

  sub_10010DA40(adaptee, uTF8String);
}

- (int)syncgetBestMatchLocation:(CLDaemonLocation *)location forCell:(const void *)cell
{
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_100080270(adaptee, cell, location);
}

- (int)syncgetQueryLocationsForCells:(const void *)cells useCache:(BOOL)cache
{
  cacheCopy = cache;
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_1006C41E4(adaptee, cells, cacheCopy);
}

- (void)fetchQueryLocationsForWifis:(id)wifis useCache:(BOOL)cache piggyback:(BOOL)piggyback config:(id)config withReply:(id)reply
{
  cacheCopy = cache;
  adaptee = [(CLNetworkLocationProviderAdapter *)self adaptee];
  (*(wifis + 2))(v16, wifis);
  (*(config + 2))(v14, config);
  v13 = sub_1006CF1D8(adaptee, qword_101C89020, qword_101C89050, qword_101C89038, qword_101C89068, qword_101C89080, v16, cacheCopy, piggyback, v14);
  (*(reply + 2))(reply, v13);
  if (v15 < 0)
  {
    operator delete(v14[1]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

@end