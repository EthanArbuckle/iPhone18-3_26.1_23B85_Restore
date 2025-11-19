@interface KTFixupRegistrationUpload
+ (NSString)fixupName;
+ (void)setFixupName:(id)a3;
- (_TtC13transparencyd25KTFixupRegistrationUpload)init;
- (_TtC13transparencyd25KTFixupRegistrationUpload)initWithDependencies:(id)a3;
@end

@implementation KTFixupRegistrationUpload

+ (NSString)fixupName
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (void)setFixupName:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_beginAccess();
  qword_100384FA0 = v3;
  off_100384FA8 = v5;
}

- (_TtC13transparencyd25KTFixupRegistrationUpload)initWithDependencies:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd25KTFixupRegistrationUpload_deps) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for KTFixupRegistrationUpload();
  v4 = a3;
  return [(KTFixupRegistrationUpload *)&v6 init];
}

- (_TtC13transparencyd25KTFixupRegistrationUpload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end