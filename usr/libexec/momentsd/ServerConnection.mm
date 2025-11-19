@interface ServerConnection
- (_TtC8momentsd16ServerConnection)init;
- (void)dealloc;
@end

@implementation ServerConnection

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xD0);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ServerConnection();
  [(ServerConnection *)&v4 dealloc];
}

- (_TtC8momentsd16ServerConnection)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8momentsd16ServerConnection_connection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8momentsd16ServerConnection_hasActiveConnection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8momentsd16ServerConnection_activeSandboxHandles) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC8momentsd16ServerConnection_lock;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSRecursiveLock) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for ServerConnection();
  return [(ServerConnection *)&v5 init];
}

@end