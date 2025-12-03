@interface SecureConfigXPCDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13secureconfigd23SecureConfigXPCDelegate)init;
@end

@implementation SecureConfigXPCDelegate

- (_TtC13secureconfigd23SecureConfigXPCDelegate)init
{
  Logger.init(subsystem:category:)();
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SecureConfigXPCDelegate();
  return [(SecureConfigXPCDelegate *)&v4 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000239C(connectionCopy);

  return v9 & 1;
}

@end