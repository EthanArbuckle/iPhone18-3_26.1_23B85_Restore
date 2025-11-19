@interface GKFairPlaySessionProvider
- (void)fairPlaySessionWithStoreBag:(GKStoreBag *)a3 reporter:(GKReporter *)a4 completionHandler:(id)a5;
@end

@implementation GKFairPlaySessionProvider

- (void)fairPlaySessionWithStoreBag:(GKStoreBag *)a3 reporter:(GKReporter *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;

  sub_10028022C(&unk_1002C8578, v9);
}

@end