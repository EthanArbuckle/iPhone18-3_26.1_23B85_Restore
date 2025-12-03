@interface APThirdPartySegmentUpdateLegacyInterface
- (void)addClientToSegments:(id)segments token:(id)token bundleID:(id)d replaceExisting:(BOOL)existing privateSegment:(BOOL)segment;
@end

@implementation APThirdPartySegmentUpdateLegacyInterface

- (void)addClientToSegments:(id)segments token:(id)token bundleID:(id)d replaceExisting:(BOOL)existing privateSegment:(BOOL)segment
{
  segmentCopy = segment;
  existingCopy = existing;
  dCopy = d;
  tokenCopy = token;
  segmentsCopy = segments;
  v14 = [[APThirdPartySegmentUpdateRequester alloc] initWithBundleID:dCopy identifier:tokenCopy segmentIdentifiers:segmentsCopy replaceExisting:existingCopy privateSegment:segmentCopy];

  [(APServerRequester *)v14 makeRequest:&stru_10047DFF0];
}

@end