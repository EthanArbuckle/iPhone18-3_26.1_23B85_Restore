@interface AccessoryDescriptionParser
- (_TtC14dockaccessoryd26AccessoryDescriptionParser)init;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation AccessoryDescriptionParser

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (i)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  parserCopy = parser;
  selfCopy = self;
  sub_1001F4E90(v11, v13, v14);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (i)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_1001F5418(parserCopy, v10, v12);
}

- (_TtC14dockaccessoryd26AccessoryDescriptionParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end