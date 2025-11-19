@interface RDCoreDataCoreSpotlightDelegate
+ (void)deleteAllIndicesIfVersionOutdatedWithCompletionHandler:(id)a3;
- (id)attributeSetForObject:(id)a3;
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4;
- (id)protectionClass;
- (void)deleteAllIndicesWithCompletionHandler:(id)a3;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4;
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

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1001EBC64(v4);

  return v6;
}

+ (void)deleteAllIndicesIfVersionOutdatedWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
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

- (void)deleteAllIndicesWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1001F57B8(sub_10003FE58, v5);
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_1001F599C(v7, v6);
  sub_10003E114(v7);
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  sub_1001F5BB4(v6, v5, v7);
  sub_10003E114(v5);
}

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate_shouldStart) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  return [(RDCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:a3 coordinator:a4];
}

@end