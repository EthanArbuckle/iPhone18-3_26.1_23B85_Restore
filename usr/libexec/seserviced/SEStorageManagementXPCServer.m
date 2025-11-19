@interface SEStorageManagementXPCServer
+ (uint64_t)kickOff;
- (_TtC10seserviced28SEStorageManagementXPCServer)init;
@end

@implementation SEStorageManagementXPCServer

- (_TtC10seserviced28SEStorageManagementXPCServer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_listener) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName);
  *v4 = 0xD000000000000034;
  v4[1] = 0x8000000100464470;
  v5 = (&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey);
  *v5 = 0xD000000000000027;
  v5[1] = 0x80000001004644B0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SEStorageManagementXPCServer *)&v7 init];
}

+ (uint64_t)kickOff
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_1005019E0 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B2E0;
  v3 = *(qword_10051B2E0 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName);
  v4 = *(qword_10051B2E0 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName + 8);
  *(swift_allocObject() + 16) = v2;

  v5 = v2;
  static XPCListener.InitializationOptions.none.getter();
  v6 = type metadata accessor for XPCListener();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v10 = *&v5[OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_listener];
  *&v5[OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_listener] = v9;
}

@end