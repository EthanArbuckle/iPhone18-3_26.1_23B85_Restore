@interface KTFixupRemoveMacAppSupportFiles
+ (NSString)fixupName;
+ (void)setFixupName:(id)name;
- (_TtC13transparencyd31KTFixupRemoveMacAppSupportFiles)init;
- (_TtC13transparencyd31KTFixupRemoveMacAppSupportFiles)initWithDependencies:(id)dependencies;
@end

@implementation KTFixupRemoveMacAppSupportFiles

+ (NSString)fixupName
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (void)setFixupName:(id)name
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_beginAccess();
  qword_100387A10 = v3;
  off_100387A18 = v5;
}

- (_TtC13transparencyd31KTFixupRemoveMacAppSupportFiles)initWithDependencies:(id)dependencies
{
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd31KTFixupRemoveMacAppSupportFiles_deps) = dependencies;
  v6.receiver = self;
  v6.super_class = type metadata accessor for KTFixupRemoveMacAppSupportFiles();
  dependenciesCopy = dependencies;
  return [(KTFixupRemoveMacAppSupportFiles *)&v6 init];
}

- (_TtC13transparencyd31KTFixupRemoveMacAppSupportFiles)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end