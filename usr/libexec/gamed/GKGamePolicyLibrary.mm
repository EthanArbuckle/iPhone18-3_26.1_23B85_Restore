@interface GKGamePolicyLibrary
+ (id)create;
- (void)appsWith:(NSArray *)with completionHandler:(id)handler;
- (void)registerInstalledGamesDidChangeHandler:(id)handler;
- (void)warmupWithCompletionHandler:(id)handler;
@end

@implementation GKGamePolicyLibrary

+ (id)create
{
  v2 = sub_100278E84();

  return v2;
}

- (void)appsWith:(NSArray *)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = with;
  v7[3] = v6;
  v7[4] = self;
  withCopy = with;
  selfCopy = self;

  sub_10028022C(&unk_1002C9EB0, v7);
}

- (void)registerInstalledGamesDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10027ADC4(sub_10027BA48, v5);
}

- (void)warmupWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_10028022C(&unk_1002C9EA0, v5);
}

@end