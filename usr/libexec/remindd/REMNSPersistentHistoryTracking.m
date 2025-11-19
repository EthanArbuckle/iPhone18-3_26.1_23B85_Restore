@interface REMNSPersistentHistoryTracking
- (_TtC7remindd30REMNSPersistentHistoryTracking)init;
- (id)_accountIdentifierForPersistenceStoreID:(id)a3;
- (id)_persistenceStoreForAccountID:(id)a3;
- (id)_persistenceStoresForAccountTypes:(id)a3;
- (void)withManagedObjectContext:(id)a3;
@end

@implementation REMNSPersistentHistoryTracking

- (void)withManagedObjectContext:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1002A85D0(sub_1002A8A6C, v5);
}

- (id)_accountIdentifierForPersistenceStoreID:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController);
  v5 = self;
  v6 = [v4 accountIdentifierForStoreID:a3];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)_persistenceStoreForAccountID:(id)a3
{
  v3 = [*(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController) storeForAccountIdentifier:a3];

  return v3;
}

- (id)_persistenceStoresForAccountTypes:(id)a3
{
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController);
  v5 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v4 storesForAccountTypes:isa];

  if (!v7)
  {
    sub_100293C88();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = Array._bridgeToObjectiveC()().super.isa;
  }

  return v7;
}

- (_TtC7remindd30REMNSPersistentHistoryTracking)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end