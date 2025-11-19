@interface RDMergePolicy
+ (id)defaultMergePolicy;
- (BOOL)resolveConflicts:(id)a3 error:(id *)a4;
@end

@implementation RDMergePolicy

+ (id)defaultMergePolicy
{
  v2 = [objc_allocWithZone(a1) initWithMergeType:2];

  return v2;
}

- (BOOL)resolveConflicts:(id)a3 error:(id *)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100490C3C(v5);

  return 1;
}

@end