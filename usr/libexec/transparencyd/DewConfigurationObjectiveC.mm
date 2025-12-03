@interface DewConfigurationObjectiveC
- (_TtC13transparencyd26DewConfigurationObjectiveC)init;
- (_TtC13transparencyd26DewConfigurationObjectiveC)initWithSettings:(id)settings;
- (id)dewConfig;
- (void)printAllDescriptions;
- (void)updateDewConfigurationWithData:(id)data;
@end

@implementation DewConfigurationObjectiveC

- (_TtC13transparencyd26DewConfigurationObjectiveC)initWithSettings:(id)settings
{
  swift_unknownObjectRetain();
  v4 = sub_100003D68(settings);
  swift_unknownObjectRelease();
  return v4;
}

- (id)dewConfig
{
  v2 = *((swift_isaMask & self->super.isa) + 0xA0);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)printAllDescriptions
{
  if (qword_10038F730 != -1)
  {
    swift_once();
  }

  (*(*qword_10038F738 + 160))();
}

- (void)updateDewConfigurationWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = (*((swift_isaMask & selfCopy->super.isa) + 0xA0))();
  (*((swift_isaMask & *v9) + 0x80))(v6, v8);

  sub_1000956CC(v6, v8);
}

- (_TtC13transparencyd26DewConfigurationObjectiveC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end