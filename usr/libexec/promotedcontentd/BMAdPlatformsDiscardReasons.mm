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
  bundleID = [(BMAdPlatformsDiscardReasons *)self bundleID];
  brandIdentifier = [(BMAdPlatformsDiscardReasons *)self brandIdentifier];
  displayOrder = [(BMAdPlatformsDiscardReasons *)self displayOrder];
  searchTerms = [(BMAdPlatformsDiscardReasons *)self searchTerms];
  v9 = [NSString stringWithFormat:@"reason: %@\nplacement: %@\nbundleID: %@\nbrandIdentifier: %llu\ndisplayOrder: %d\nsearchTerms: %@\n", v3, v4, bundleID, brandIdentifier, displayOrder, searchTerms];

  return v9;
}

@end