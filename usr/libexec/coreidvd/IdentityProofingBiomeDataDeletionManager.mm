@interface IdentityProofingBiomeDataDeletionManager
- (void)pruneUserProofingStream;
@end

@implementation IdentityProofingBiomeDataDeletionManager

- (void)pruneUserProofingStream
{
  v2 = [[BMRestrictedStream alloc] initWithIdentifier:@"UserProofingMetadata"];
  [v2 pruneWithPredicateBlock:&stru_1007F8278];
}

@end