@interface JPKIXPCServer
+ (uint64_t)kickOff;
@end

@implementation JPKIXPCServer

+ (uint64_t)kickOff
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_100501B48 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B578;
  v3 = *(qword_10051B578 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer_serviceName);
  v4 = *(qword_10051B578 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer_serviceName + 8);
  *(swift_allocObject() + 16) = v2;

  v5 = v2;
  static XPCListener.InitializationOptions.none.getter();
  v6 = type metadata accessor for XPCListener();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v10 = *&v5[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_listener];
  *&v5[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_listener] = v9;
}

@end