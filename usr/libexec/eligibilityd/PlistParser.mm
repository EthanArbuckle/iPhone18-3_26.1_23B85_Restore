@interface PlistParser
- (NSArray)domains;
- (PlistParser)init;
- (PlistParser)initWithPlistDictionary:(id)a3 dataStore:(id)a4 error:(id *)a5;
@end

@implementation PlistParser

- (NSArray)domains
{
  v2 = *(self + OBJC_IVAR___PlistParser_domains);
  type metadata accessor for Domain(0);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (PlistParser)initWithPlistDictionary:(id)a3 dataStore:(id)a4 error:(id *)a5
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  return sub_10000C0F4(v6, a4);
}

- (PlistParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end