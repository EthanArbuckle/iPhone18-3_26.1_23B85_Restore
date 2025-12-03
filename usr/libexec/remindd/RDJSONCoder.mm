@interface RDJSONCoder
- (_TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder)init;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt:(int)int forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation RDJSONCoder

- (_TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_key);
  *v3 = 0;
  v3[1] = 0;
  sub_1000F5104(&unk_100943A90, &unk_1007A4300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791300;
  *(v4 + 32) = sub_1001F67C8(_swiftEmptyArrayStorage);
  *(&self->super.super.isa + OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts) = v4;
  *(&self->super.super.isa + OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_arrays) = _swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RDJSONCoder();
  return [(RDJSONCoder *)&v6 init];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v10[3] = sub_10014F63C();
  v10[0] = isa;
  sub_1001E9AEC(v10, v5, v7);

  sub_10000607C(v10);
}

- (void)encodeInt:(int)int forKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v10[3] = sub_10014F63C();
  v10[0] = isa;
  sub_1001E9AEC(v10, v5, v7);

  sub_10000607C(v10);
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v10[3] = sub_10014F63C();
  v10[0] = isa;
  sub_1001E9AEC(v10, v5, v7);

  sub_10000607C(v10);
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v10[3] = sub_10014F63C();
  v10[0] = isa;
  sub_1001E9AEC(v10, v5, v7);

  sub_10000607C(v10);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1001E9CF0(v13, v10, v12);

  sub_1000050A4(v13, &qword_100939ED0, &qword_100791B10);
}

@end