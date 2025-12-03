@interface SDAirDropEndpointService
- (_TtC16DaemoniOSLibrary24SDAirDropEndpointService)init;
- (id)addClient:(id)client;
- (id)endpointsChangedHandler;
- (void)nearFieldDidTap;
- (void)removeClientWithToken:(id)token;
- (void)screenStateChangedWithNotification:(id)notification;
- (void)setEndpointsChangedHandler:(id)handler;
@end

@implementation SDAirDropEndpointService

- (void)screenStateChangedWithNotification:(id)notification
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  selfCopy = self;
  sub_1002B3098(0, 0, v7, &unk_100805120, v14);

  (*(v9 + 8))(v12, v8);
}

- (id)endpointsChangedHandler
{
  if (*(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10047FD54;
    v5[3] = &unk_1008E3150;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEndpointsChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1004984F0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  v8 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  v9 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8);
}

- (id)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  v6 = sub_10047FEF8(clientCopy);

  return v6;
}

- (void)removeClientWithToken:(id)token
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_1009735E0;
  tokenCopy = token;
  selfCopy = self;
  v13 = tokenCopy;
  v14 = selfCopy;
  if (v10 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v16 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v14;

  sub_1002B3098(0, 0, v8, &unk_100805158, v17);
}

- (void)nearFieldDidTap
{
  selfCopy = self;
  sub_100495278();
}

- (_TtC16DaemoniOSLibrary24SDAirDropEndpointService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end