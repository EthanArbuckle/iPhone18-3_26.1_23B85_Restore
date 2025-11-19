@interface SecureConfigXPCDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000239C(v7);

  return v9 & 1;
}

@end