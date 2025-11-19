@interface SDNearbyPeerPaymentReceiverCoordinator
+ (BOOL)nearbyReceiverIsEligible;
+ (id)verifyReceiverEligibility;
- (SDNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3;
- (void)nearbyReceiverRequiresConfirmationWithContactID:(id)a3 completion:(id)a4;
- (void)recipientMetadataWithContactID:(id)a3 completion:(id)a4;
@end

@implementation SDNearbyPeerPaymentReceiverCoordinator

+ (id)verifyReceiverEligibility
{
  if ([a1 nearbyReceiverIsEligible])
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

- (SDNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SDNearbyPeerPaymentReceiverCoordinator;
  v5 = [(SDNearbyPeerPaymentReceiverCoordinator *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(sub_10013041C()) initWithSenderMetadata:v4];
    coordinator = v5->_coordinator;
    v5->_coordinator = v6;
  }

  return v5;
}

- (void)recipientMetadataWithContactID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SDNearbyPeerPaymentReceiverCoordinator *)self coordinator];
  [v8 recipientMetadataWithContactID:v7 completion:v6];
}

- (void)nearbyReceiverRequiresConfirmationWithContactID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SDNearbyPeerPaymentReceiverCoordinator *)self coordinator];
  [v8 nearbyReceiverRequiresConfirmationWithContactID:v7 completionHandler:v6];
}

@end