@interface RecipeOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation RecipeOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName:a3];

  return v3;
}

@end