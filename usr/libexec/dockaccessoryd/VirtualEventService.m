@interface VirtualEventService
- (BOOL)setOutputEvent:(id)a3 forService:(id)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5;
- (id)copyEventMatching:(id)a3 forService:(id)a4;
- (id)propertyForKey:(id)a3 forService:(id)a4;
- (void)dealloc;
- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5;
@end

@implementation VirtualEventService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService);
  *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService) = 0;
  v3 = self;

  v4.receiver = v3;
  v4.super_class = type metadata accessor for VirtualEventService();
  [(VirtualEventService *)&v4 dealloc];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5
{
  if (a3)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    swift_unknownObjectRetain();
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095808(v6);
  sub_1001D4CC0(v7);
  return 0;
}

- (id)propertyForKey:(id)a3 forService:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_unknownObjectRetain();
  v8 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001D46A4(v5, v7, v18);

  sub_100095808(v17);
  v9 = v19;
  if (v19)
  {
    v10 = sub_1000A09E0(v18, v19);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100095808(v18);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyEventMatching:(id)a3 forService:(id)a4
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095808(v5);
  return 0;
}

- (BOOL)setOutputEvent:(id)a3 forService:(id)a4
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095808(v5);
  return 0;
}

- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();
  v7 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001D4AD8(a3);

  sub_100095808(v8);
}

@end