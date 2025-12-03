@interface CLFenceManagerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetFences:(void *)fences forKey:(id)key;
- (BOOL)syncgetHasMonitoredFences:(id)fences;
- (CLFenceManagerAdapter)init;
- (void)adaptee;
- (void)addFence:(id)fence;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)getFencesForBundleID:(id)d withReply:(id)reply;
- (void)removeFence:(id)fence;
- (void)requestChangeFencesStateMatchingHandoffTags:(id)tags forDeviceID:(id)d;
- (void)requestRegionState:(id)state;
- (void)setIsSimulatingLocation:(BOOL)location;
- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location;
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

- (void)doAsync:(id)async
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLFenceManagerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)addFence:(id)fence
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  (*(fence + 2))(v5, fence);
  sub_1008BE4E8(adaptee, v5);
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

- (void)removeFence:(id)fence
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  (*(fence + 2))(v5, fence);
  sub_1008BFE6C(adaptee, v5);
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

- (void)requestRegionState:(id)state
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  (*(state + 2))(v5, state);
  sub_1008C0090(adaptee, v5);
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

- (void)requestChangeFencesStateMatchingHandoffTags:(id)tags forDeviceID:(id)d
{
  v6 = [(CLFenceManagerAdapter *)self adaptee]+ 112;

  sub_100CAEC70(v6, tags, d);
}

- (BOOL)syncgetHasMonitoredFences:(id)fences
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(&__p, [fences UTF8String]);
  v5 = sub_100CAF89C(adaptee + 112);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return v5;
}

- (BOOL)syncgetFences:(void *)fences forKey:(id)key
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [key UTF8String]);
  sub_100CAE590(adaptee + 112, __p, fences);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location
{
  if (type == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (type)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(v25, [d UTF8String]);
  sub_10000EC00(v23, [iD UTF8String]);
  if (location)
  {
    [location clientLocation];
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
  sub_1008C08F8(adaptee, v25, v23, v10, v21);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

- (void)setIsSimulatingLocation:(BOOL)location
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  adaptee[3882] = location;
  v5 = (adaptee + 344);

  sub_100C89364(v5, location);
}

- (void)getFencesForBundleID:(id)d withReply:(id)reply
{
  adaptee = [(CLFenceManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [d UTF8String]);
  sub_1008C0D98(adaptee, __p, reply);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

@end