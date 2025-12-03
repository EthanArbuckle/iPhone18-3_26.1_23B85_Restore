@interface GKFairPlaySessionProvider
- (void)fairPlaySessionWithStoreBag:(GKStoreBag *)bag reporter:(GKReporter *)reporter completionHandler:(id)handler;
@end

@implementation GKFairPlaySessionProvider

- (void)fairPlaySessionWithStoreBag:(GKStoreBag *)bag reporter:(GKReporter *)reporter completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = bag;
  v9[3] = reporter;
  v9[4] = v8;
  v9[5] = self;
  bagCopy = bag;
  reporterCopy = reporter;

  sub_10028022C(&unk_1002C8578, v9);
}

@end