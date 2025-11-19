@interface CLNetworkLocationProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetIsBroadConnection;
- (CLNetworkLocationProviderAdapter)init;
- (int)syncgetBestMatchLocation:(CLDaemonLocation *)a3 forCell:(const void *)a4;
- (int)syncgetQueryLocationsForCells:(const void *)a3 useCache:(BOOL)a4;
- (int)syncgetQueryNearbys:(const CLDaemonLocation *)a3 forFenceKeys:(const void *)a4;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchQueryLocationsForWifis:(id)a3 useCache:(BOOL)a4 piggyback:(BOOL)a5 config:(id)a6 withReply:(id)a7;
- (void)resetRetryCounters:(id)a3;
- (void)setCurrentReachability:(int)a3;
- (void)setLocation_CDMA:(id)a3 forCell:(id)a4;
- (void)setLocation_GSM:(id)a3 forCell:(id)a4;
- (void)setLocation_LTE:(id)a3 forCell:(id)a4;
- (void)setLocation_NR:(id)a3 forCell:(id)a4;
- (void)setLocation_SCDMA:(id)a3 forCell:(id)a4;
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
  v2 = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_100234858(v2);
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

- (void)doAsync:(id)a3
{
  v4 = [(CLNetworkLocationProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLNetworkLocationProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)setLocation_GSM:(id)a3 forCell:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
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
  (*(a4 + 2))(&v7, a4);
  sub_1006C19C4(v6);
}

- (void)setLocation_SCDMA:(id)a3 forCell:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
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
  (*(a4 + 2))(&v7, a4);
  sub_1006C1F68(v6);
}

- (void)setLocation_CDMA:(id)a3 forCell:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
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
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee];
  (*(a4 + 2))(v7, a4);
  sub_1006C253C(v6, v7);
}

- (void)setLocation_LTE:(id)a3 forCell:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
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
  (*(a4 + 2))(&v7, a4);
  sub_1006C2D48(v6);
}

- (void)setLocation_NR:(id)a3 forCell:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
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
  (*(a4 + 2))(&v7, a4);
  sub_1006C3484(v6);
}

- (int)syncgetQueryNearbys:(const CLDaemonLocation *)a3 forFenceKeys:(const void *)a4
{
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_1006C3D98(v6, a3, a4);
}

- (void)setCurrentReachability:(int)a3
{
  v3 = *(**([(CLNetworkLocationProviderAdapter *)self adaptee]+ 56) + 32);

  v3();
}

- (void)resetRetryCounters:(id)a3
{
  v4 = [(CLNetworkLocationProviderAdapter *)self adaptee];
  v5 = [a3 UTF8String];

  sub_10010DA40(v4, v5);
}

- (int)syncgetBestMatchLocation:(CLDaemonLocation *)a3 forCell:(const void *)a4
{
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_100080270(v6, a4, a3);
}

- (int)syncgetQueryLocationsForCells:(const void *)a3 useCache:(BOOL)a4
{
  v4 = a4;
  v6 = [(CLNetworkLocationProviderAdapter *)self adaptee];

  return sub_1006C41E4(v6, a3, v4);
}

- (void)fetchQueryLocationsForWifis:(id)a3 useCache:(BOOL)a4 piggyback:(BOOL)a5 config:(id)a6 withReply:(id)a7
{
  v10 = a4;
  v12 = [(CLNetworkLocationProviderAdapter *)self adaptee];
  (*(a3 + 2))(v16, a3);
  (*(a6 + 2))(v14, a6);
  v13 = sub_1006CF1D8(v12, qword_101C89020, qword_101C89050, qword_101C89038, qword_101C89068, qword_101C89080, v16, v10, a5, v14);
  (*(a7 + 2))(a7, v13);
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