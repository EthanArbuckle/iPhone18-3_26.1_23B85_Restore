@interface CategorizationManager
+ (CategorizationManager)sharedInstance;
- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion;
- (void)isPersonalDomainWith:(id)with completion:(id)completion;
- (void)predictCommerceEmailWith:(id)with completion:(id)completion;
@end

@implementation CategorizationManager

+ (CategorizationManager)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static CategorizationManager.sharedInstance;

  return v3;
}

- (void)predictCommerceEmailWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  withCopy = with;
  selfCopy = self;
  specialized CategorizationManager.predictCommerceEmail(with:completion:)(withCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)isPersonalDomainWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized CategorizationManager.isPersonalDomain(with:completion:)(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized CategorizationManager.isCategorizationSupported(forLocale:completion:)(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end