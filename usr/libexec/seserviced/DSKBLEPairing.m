@interface DSKBLEPairing
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
@end

@implementation DSKBLEPairing

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_10011C594(a3, a4, a5);
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10011CFA0(a4);
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10011D904(a4, a5);
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10011DF34(a4);
}

@end