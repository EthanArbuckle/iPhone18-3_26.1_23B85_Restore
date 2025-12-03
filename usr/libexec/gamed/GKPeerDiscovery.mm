@interface GKPeerDiscovery
- (GKPeerDiscovery)initWithDelegate:(id)delegate localPlayerID:(id)d localPushToken:(id)token;
- (void)sendDataToParticipant:(NSString *)participant deviceID:(NSString *)d data:(NSData *)data completionHandler:(id)handler;
- (void)startListening:(NSDictionary *)listening completionHandler:(id)handler;
@end

@implementation GKPeerDiscovery

- (GKPeerDiscovery)initWithDelegate:(id)delegate localPlayerID:(id)d localPushToken:(id)token
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  tokenCopy = token;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return PeerDiscovery.init(delegate:localPlayerID:localPushToken:)();
}

- (void)startListening:(NSDictionary *)listening completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = listening;
  v7[3] = v6;
  v7[4] = self;
  listeningCopy = listening;

  sub_10028022C(&unk_1002C4D60, v7);
}

- (void)sendDataToParticipant:(NSString *)participant deviceID:(NSString *)d data:(NSData *)data completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = participant;
  v11[3] = d;
  v11[4] = data;
  v11[5] = v10;
  v11[6] = self;
  participantCopy = participant;
  dCopy = d;
  dataCopy = data;

  sub_10028022C(&unk_1002C4D40, v11);
}

@end