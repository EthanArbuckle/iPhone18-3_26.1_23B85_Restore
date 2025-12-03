@interface RDMergePolicy
+ (id)defaultMergePolicy;
- (BOOL)resolveConflicts:(id)conflicts error:(id *)error;
@end

@implementation RDMergePolicy

+ (id)defaultMergePolicy
{
  v2 = [objc_allocWithZone(self) initWithMergeType:2];

  return v2;
}

- (BOOL)resolveConflicts:(id)conflicts error:(id *)error
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100490C3C(v5);

  return 1;
}

@end