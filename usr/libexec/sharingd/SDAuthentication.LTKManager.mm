@interface SDAuthentication.LTKManager
- (NSString)description;
- (_TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager)init;
@end

@implementation SDAuthentication.LTKManager

- (_TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  _StringGuts.grow(_:)(45);

  String.append(_:)(*(&selfCopy->super.isa + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localDeviceID));
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

@end