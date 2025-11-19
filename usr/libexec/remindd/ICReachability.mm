@interface ICReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
+ (id)sharedReachabilityForInternetConnection;
- (BOOL)startNotifier;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)a3;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation ICReachability

+ (id)reachabilityWithHostName:(id)a3
{
  v5 = a3;
  v6 = SCNetworkReachabilityCreateWithName(0, [a3 UTF8String]);
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(a1);
    if (v8)
    {
      v8[2] = CFRetain(v7);
      *(v8 + 8) = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  v4 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, a3);
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(a1);
    if (v6)
    {
      v6[2] = CFRetain(v5);
      *(v6 + 8) = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)reachabilityForInternetConnection
{
  v4[1] = 0;
  v4[0] = 528;
  v2 = [a1 reachabilityWithAddress:v4];

  return v2;
}

+ (id)sharedReachabilityForInternetConnection
{
  v2 = qword_100952B58;
  if (!qword_100952B58)
  {
    v3 = +[ICReachability reachabilityForInternetConnection];
    v4 = qword_100952B58;
    qword_100952B58 = v3;

    v2 = qword_100952B58;
  }

  return v2;
}

+ (id)reachabilityForLocalWiFi
{
  v4[1] = 0;
  v4[0] = 0xFEA900000210;
  v2 = [a1 reachabilityWithAddress:v4];
  if (v2)
  {
    v2[8] = 1;
  }

  return v2;
}

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->_reachabilityRef, sub_1000E2FE0, &v7);
  if (v3)
  {
    reachabilityRef = self->_reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode) != 0;
  }

  return v3;
}

- (void)stopNotifier
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode);
  }
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [(ICReachability *)self stopNotifier];
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = ICReachability;
  [(ICReachability *)&v4 dealloc];
}

- (int64_t)networkStatusForFlags:(unsigned int)a3
{
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  LODWORD(v4) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v4) = 0;
  }

  if ((a3 & 4) != 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (int64_t)currentReachabilityStatus
{
  flags = 0;
  if (!SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->_alwaysReturnLocalWiFiStatus)
  {
    return [(ICReachability *)self localWiFiStatusForFlags:flags];
  }

  return [(ICReachability *)self networkStatusForFlags:flags];
}

@end