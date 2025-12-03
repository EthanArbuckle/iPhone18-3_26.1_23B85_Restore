@interface SDAirDropAgentClient
- (NSString)bundleID;
- (OS_nw_agent_client)client;
- (_TtC16DaemoniOSLibrary20SDAirDropAgentClient)init;
- (_TtC16DaemoniOSLibrary20SDAirDropAgentClient)initWithClient:(id)client browseDescriptor:(id)descriptor browseResponse:(id)response;
- (id)browseResponse;
@end

@implementation SDAirDropAgentClient

- (OS_nw_agent_client)client
{
  v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_client);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSString)bundleID
{
  v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID);
  v3 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)browseResponse
{
  v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_browseResponse + 8);
  v5[4] = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_browseResponse);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100531428;
  v5[3] = &unk_1008EE040;
  v3 = _Block_copy(v5);

  return v3;
}

- (_TtC16DaemoniOSLibrary20SDAirDropAgentClient)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16DaemoniOSLibrary20SDAirDropAgentClient)initWithClient:(id)client browseDescriptor:(id)descriptor browseResponse:(id)response
{
  v7 = _Block_copy(response);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_10068479C(client, descriptor, sub_1003CCB40, v8);
}

@end