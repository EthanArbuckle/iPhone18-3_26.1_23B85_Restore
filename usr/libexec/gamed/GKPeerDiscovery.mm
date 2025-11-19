@interface GKPeerDiscovery
- (GKPeerDiscovery)initWithDelegate:(id)a3 localPlayerID:(id)a4 localPushToken:(id)a5;
- (void)sendDataToParticipant:(NSString *)a3 deviceID:(NSString *)a4 data:(NSData *)a5 completionHandler:(id)a6;
- (void)startListening:(NSDictionary *)a3 completionHandler:(id)a4;
@end

@implementation GKPeerDiscovery

- (GKPeerDiscovery)initWithDelegate:(id)a3 localPlayerID:(id)a4 localPushToken:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return PeerDiscovery.init(delegate:localPlayerID:localPushToken:)();
}

- (void)startListening:(NSDictionary *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;

  sub_10028022C(&unk_1002C4D60, v7);
}

- (void)sendDataToParticipant:(NSString *)a3 deviceID:(NSString *)a4 data:(NSData *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_10028022C(&unk_1002C4D40, v11);
}

@end