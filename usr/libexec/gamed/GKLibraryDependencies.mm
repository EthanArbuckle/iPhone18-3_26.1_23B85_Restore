@interface GKLibraryDependencies
+ (GKLibraryDependencies)shared;
- (GKGamePolicyLibrary)gamePolicyLibrary;
- (GKLibraryDependenciesDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation GKLibraryDependencies

+ (GKLibraryDependencies)shared
{
  v2 = sub_1001ADAF8();

  return v2;
}

- (GKLibraryDependenciesDelegate)delegate
{
  v2 = sub_1001ADC18();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001ADC88();
}

- (GKGamePolicyLibrary)gamePolicyLibrary
{
  v2 = sub_1001ADD04();

  return v2;
}

@end