@interface RDCoreDataCoreSpotlightDelegate
+ (void)deleteAllIndicesIfVersionOutdatedWithCompletionHandler:(id)handler;
- (id)attributeSetForObject:(id)object;
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator;
- (id)protectionClass;
- (void)deleteAllIndicesWithCompletionHandler:(id)handler;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation RDCoreDataCoreSpotlightDelegate

- (id)protectionClass
{
  v2 = static NSFileProtectionType.rem_spotlightIndexFileProtection.getter();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_1001EBC64(objectCopy);

  return v6;
}

+ (void)deleteAllIndicesIfVersionOutdatedWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_10003FE60;
  }

  else
  {
    v4 = 0;
  }

  sub_1001F6A10(v3, v4);

  sub_10003E114(v3);
}

- (void)deleteAllIndicesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1001F57B8(sub_10003FE58, v5);
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10018ADB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1001F599C(v7, v6);
  sub_10003E114(v7);
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_100189728;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_1001F5BB4(v6, v5, v7);
  sub_10003E114(v5);
}

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate_shouldStart) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  return [(RDCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:description coordinator:coordinator];
}

@end