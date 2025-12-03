@interface RDPredefinedObjectKey
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC7remindd21RDPredefinedObjectKey)init;
- (int64_t)hash;
@end

@implementation RDPredefinedObjectKey

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100743930(v8);

  sub_1001B2134(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID);
  selfCopy = self;
  v4 = NSObject.hashValue.getter();
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID);
  v6 = NSObject.hashValue.getter();

  return v6 ^ v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_100743B88();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC7remindd21RDPredefinedObjectKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end