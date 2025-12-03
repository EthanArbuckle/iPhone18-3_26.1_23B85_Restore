@interface NFSecureXPCEventPublisherManager
+ (id)sharedManager;
- (void)invalidate;
- (void)startPublisherWithXPCQueue:(id)queue eventSendQueue:(id)sendQueue;
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

- (void)startPublisherWithXPCQueue:(id)queue eventSendQueue:(id)sendQueue
{
  sendQueueCopy = sendQueue;
  queueCopy = queue;
  wallet = [(NFSecureXPCEventPublisherManager *)self wallet];
  sub_1002344C8(wallet);

  homed = [(NFSecureXPCEventPublisherManager *)self homed];
  sub_1002344C8(homed);

  v10 = [NFSecureXPCEventPublisher alloc];
  if (v10)
  {
    v11 = sub_100234C58(v10, @"com.apple.passd.nf-events", 1, 33, queueCopy, sendQueueCopy);
  }

  else
  {
    v11 = 0;
  }

  [(NFSecureXPCEventPublisherManager *)self setWallet:v11];

  v12 = [NFSecureXPCEventPublisher alloc];
  if (v12)
  {
    v13 = sub_100234C58(v12, @"com.apple.nfcd.xpc.homed.uaevents", 1, 33, queueCopy, sendQueueCopy);
  }

  else
  {
    v13 = 0;
  }

  [(NFSecureXPCEventPublisherManager *)self setHomed:v13];
}

- (void)invalidate
{
  wallet = [(NFSecureXPCEventPublisherManager *)self wallet];
  sub_1002344C8(wallet);

  [(NFSecureXPCEventPublisherManager *)self setWallet:0];
  homed = [(NFSecureXPCEventPublisherManager *)self homed];
  sub_1002344C8(homed);

  [(NFSecureXPCEventPublisherManager *)self setHomed:0];
}

@end