@interface APThirdPartySegmentUpdateLegacyInterface
- (void)addClientToSegments:(id)a3 token:(id)a4 bundleID:(id)a5 replaceExisting:(BOOL)a6 privateSegment:(BOOL)a7;
@end

@implementation APThirdPartySegmentUpdateLegacyInterface

- (void)addClientToSegments:(id)a3 token:(id)a4 bundleID:(id)a5 replaceExisting:(BOOL)a6 privateSegment:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[APThirdPartySegmentUpdateRequester alloc] initWithBundleID:v11 identifier:v12 segmentIdentifiers:v13 replaceExisting:v8 privateSegment:v7];

  [(APServerRequester *)v14 makeRequest:&stru_10047DFF0];
}

@end