@interface CategorizationManager
+ (CategorizationManager)sharedInstance;
- (void)isCategorizationSupportedForLocale:(id)a3 completion:(id)a4;
- (void)isPersonalDomainWith:(id)a3 completion:(id)a4;
- (void)predictCommerceEmailWith:(id)a3 completion:(id)a4;
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

- (void)predictCommerceEmailWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized CategorizationManager.predictCommerceEmail(with:completion:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)isPersonalDomainWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized CategorizationManager.isPersonalDomain(with:completion:)(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)isCategorizationSupportedForLocale:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized CategorizationManager.isCategorizationSupported(forLocale:completion:)(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end