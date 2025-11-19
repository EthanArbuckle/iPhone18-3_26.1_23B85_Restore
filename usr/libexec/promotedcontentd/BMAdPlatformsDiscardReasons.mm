@interface BMAdPlatformsDiscardReasons
- (id)description;
@end

@implementation BMAdPlatformsDiscardReasons

- (id)description
{
  [(BMAdPlatformsDiscardReasons *)self discardReason];
  v3 = BMAdPlatformsDiscardReasonsDiscardReasonAsString();
  [(BMAdPlatformsDiscardReasons *)self placement];
  v4 = BMAdPlatformsDiscardReasonsPlacementAsString();
  v5 = [(BMAdPlatformsDiscardReasons *)self bundleID];
  v6 = [(BMAdPlatformsDiscardReasons *)self brandIdentifier];
  v7 = [(BMAdPlatformsDiscardReasons *)self displayOrder];
  v8 = [(BMAdPlatformsDiscardReasons *)self searchTerms];
  v9 = [NSString stringWithFormat:@"reason: %@\nplacement: %@\nbundleID: %@\nbrandIdentifier: %llu\ndisplayOrder: %d\nsearchTerms: %@\n", v3, v4, v5, v6, v7, v8];

  return v9;
}

@end