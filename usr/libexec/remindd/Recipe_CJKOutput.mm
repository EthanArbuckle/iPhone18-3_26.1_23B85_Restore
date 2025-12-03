@interface Recipe_CJKOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation Recipe_CJKOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)featureValueForName:(id)name
{
  v3 = [*self->provider featureValueForName:name];

  return v3;
}

@end