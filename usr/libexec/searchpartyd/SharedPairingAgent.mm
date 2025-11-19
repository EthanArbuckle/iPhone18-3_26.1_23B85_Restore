@interface SharedPairingAgent
- (_TtC12searchpartyd18SharedPairingAgent)init;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
@end

@implementation SharedPairingAgent

- (_TtC12searchpartyd18SharedPairingAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10104F1E0(a4, a5);
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10104FA0C(a4);
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_10104FEA8(a4, a5);
}

@end