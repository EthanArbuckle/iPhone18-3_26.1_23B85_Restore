@interface GKGamePolicyLibrary
+ (id)create;
- (void)appsWith:(NSArray *)a3 completionHandler:(id)a4;
- (void)registerInstalledGamesDidChangeHandler:(id)a3;
- (void)warmupWithCompletionHandler:(id)a3;
@end

@implementation GKGamePolicyLibrary

+ (id)create
{
  v2 = sub_100278E84();

  return v2;
}

- (void)appsWith:(NSArray *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10028022C(&unk_1002C9EB0, v7);
}

- (void)registerInstalledGamesDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10027ADC4(sub_10027BA48, v5);
}

- (void)warmupWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_10028022C(&unk_1002C9EA0, v5);
}

@end