@interface SDNearbyPeerPaymentReceiverCoordinator
+ (BOOL)nearbyReceiverIsEligible;
+ (id)verifyReceiverEligibility;
- (SDNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)metadata;
- (void)nearbyReceiverRequiresConfirmationWithContactID:(id)d completion:(id)completion;
- (void)recipientMetadataWithContactID:(id)d completion:(id)completion;
@end

@implementation SDNearbyPeerPaymentReceiverCoordinator

+ (id)verifyReceiverEligibility
{
  if ([self nearbyReceiverIsEligible])
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NSError alloc] initWithDomain:@"NearbyPeerPaymentError" code:1 userInfo:0];
  }

  return v2;
}

+ (BOOL)nearbyReceiverIsEligible
{
  v2 = sub_10013041C();

  return [v2 nearbyReceiverIsEligible];
}

- (SDNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = SDNearbyPeerPaymentReceiverCoordinator;
  v5 = [(SDNearbyPeerPaymentReceiverCoordinator *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(sub_10013041C()) initWithSenderMetadata:metadataCopy];
    coordinator = v5->_coordinator;
    v5->_coordinator = v6;
  }

  return v5;
}

- (void)recipientMetadataWithContactID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  coordinator = [(SDNearbyPeerPaymentReceiverCoordinator *)self coordinator];
  [coordinator recipientMetadataWithContactID:dCopy completion:completionCopy];
}

- (void)nearbyReceiverRequiresConfirmationWithContactID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  coordinator = [(SDNearbyPeerPaymentReceiverCoordinator *)self coordinator];
  [coordinator nearbyReceiverRequiresConfirmationWithContactID:dCopy completionHandler:completionCopy];
}

@end