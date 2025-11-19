@interface AccessoryDescriptionParser
- (_TtC14dockaccessoryd26AccessoryDescriptionParser)init;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation AccessoryDescriptionParser

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  sub_1001F4E90(v11, v13, v14);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = a3;
  v14 = self;
  sub_1001F5418(v13, v10, v12);
}

- (_TtC14dockaccessoryd26AccessoryDescriptionParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end