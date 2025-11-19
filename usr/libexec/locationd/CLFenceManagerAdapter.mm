@interface CLFenceManagerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetFences:(void *)a3 forKey:(id)a4;
- (BOOL)syncgetHasMonitoredFences:(id)a3;
- (CLFenceManagerAdapter)init;
- (void)adaptee;
- (void)addFence:(id)a3;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)getFencesForBundleID:(id)a3 withReply:(id)a4;
- (void)removeFence:(id)a3;
- (void)requestChangeFencesStateMatchingHandoffTags:(id)a3 forDeviceID:(id)a4;
- (void)requestRegionState:(id)a3;
- (void)setIsSimulatingLocation:(BOOL)a3;
- (void)simulateFenceWithBundleID:(id)a3 andFenceID:(id)a4 eventType:(unsigned __int8)a5 atLocation:(id)a6;
@end

@implementation CLFenceManagerAdapter

+ (BOOL)isSupported
{
  if (qword_10265B070 != -1)
  {
    sub_101961784();
  }

  return byte_10265B068;
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
  if (qword_10265B060 != -1)
  {
    sub_101961018();
  }

  return qword_10265B058;
}

- (CLFenceManagerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLFenceManagerAdapter;
  return [(CLFenceManagerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLFenceManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLFenceManagerClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1008BE200([(CLFenceManagerAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10196102C();
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
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLFenceManagerAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)addFence:(id)a3
{
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_1008BE4E8(v4, v5);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

- (void)removeFence:(id)a3
{
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_1008BFE6C(v4, v5);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

- (void)requestRegionState:(id)a3
{
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_1008C0090(v4, v5);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

- (void)requestChangeFencesStateMatchingHandoffTags:(id)a3 forDeviceID:(id)a4
{
  v6 = [(CLFenceManagerAdapter *)self adaptee]+ 112;

  sub_100CAEC70(v6, a3, a4);
}

- (BOOL)syncgetHasMonitoredFences:(id)a3
{
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(&__p, [a3 UTF8String]);
  v5 = sub_100CAF89C(v4 + 112);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return v5;
}

- (BOOL)syncgetFences:(void *)a3 forKey:(id)a4
{
  v6 = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_100CAE590(v6 + 112, __p, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (void)simulateFenceWithBundleID:(id)a3 andFenceID:(id)a4 eventType:(unsigned __int8)a5 atLocation:(id)a6
{
  if (a5 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (a5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(v25, [a3 UTF8String]);
  sub_10000EC00(v23, [a4 UTF8String]);
  if (a6)
  {
    [a6 clientLocation];
  }

  else
  {
    v19 = 0u;
    memset(v20, 0, 28);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v21[6] = v18;
  v21[7] = v19;
  v22[0] = v20[0];
  *(v22 + 12) = *(v20 + 12);
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v17;
  v21[0] = v12;
  v21[1] = v13;
  sub_1008C08F8(v11, v25, v23, v10, v21);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

- (void)setIsSimulatingLocation:(BOOL)a3
{
  v4 = [(CLFenceManagerAdapter *)self adaptee];
  v4[3882] = a3;
  v5 = (v4 + 344);

  sub_100C89364(v5, a3);
}

- (void)getFencesForBundleID:(id)a3 withReply:(id)a4
{
  v6 = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [a3 UTF8String]);
  sub_1008C0D98(v6, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

@end