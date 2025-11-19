@interface NFSecureXPCEventPublisherManager
+ (id)sharedManager;
- (void)invalidate;
- (void)startPublisherWithXPCQueue:(id)a3 eventSendQueue:(id)a4;
@end

@implementation NFSecureXPCEventPublisherManager

+ (id)sharedManager
{
  if (qword_10035D918 != -1)
  {
    dispatch_once(&qword_10035D918, &stru_1003158A8);
  }

  v3 = qword_10035D920;

  return v3;
}

- (void)startPublisherWithXPCQueue:(id)a3 eventSendQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NFSecureXPCEventPublisherManager *)self wallet];
  sub_1002344C8(v8);

  v9 = [(NFSecureXPCEventPublisherManager *)self homed];
  sub_1002344C8(v9);

  v10 = [NFSecureXPCEventPublisher alloc];
  if (v10)
  {
    v11 = sub_100234C58(v10, @"com.apple.passd.nf-events", 1, 33, v7, v6);
  }

  else
  {
    v11 = 0;
  }

  [(NFSecureXPCEventPublisherManager *)self setWallet:v11];

  v12 = [NFSecureXPCEventPublisher alloc];
  if (v12)
  {
    v13 = sub_100234C58(v12, @"com.apple.nfcd.xpc.homed.uaevents", 1, 33, v7, v6);
  }

  else
  {
    v13 = 0;
  }

  [(NFSecureXPCEventPublisherManager *)self setHomed:v13];
}

- (void)invalidate
{
  v3 = [(NFSecureXPCEventPublisherManager *)self wallet];
  sub_1002344C8(v3);

  [(NFSecureXPCEventPublisherManager *)self setWallet:0];
  v4 = [(NFSecureXPCEventPublisherManager *)self homed];
  sub_1002344C8(v4);

  [(NFSecureXPCEventPublisherManager *)self setHomed:0];
}

@end