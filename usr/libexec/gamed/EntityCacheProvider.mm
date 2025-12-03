@interface EntityCacheProvider
- (void)deleteAllCachesWithCompletionHandler:(id)handler;
@end

@implementation EntityCacheProvider

- (void)deleteAllCachesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10028022C(&unk_1002C57F8, v5);
}

@end