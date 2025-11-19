@interface DewConfiguration
- (_TtC13transparencyd16DewConfiguration)init;
- (_TtC13transparencyd16DewConfiguration)initWithSettings:(id)a3;
@end

@implementation DewConfiguration

- (_TtC13transparencyd16DewConfiguration)initWithSettings:(id)a3
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DewGlobalOverrides();
  v6 = swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + 16) = sub_1000031DC(&_swiftEmptyArrayStorage);
  *(v6 + 24) = 0;
  v7 = (*(ObjectType + 104))(v6, a3);
  v8 = *((swift_isaMask & self->super.isa) + 0x30);
  v9 = *((swift_isaMask & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v7;
}

- (_TtC13transparencyd16DewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end