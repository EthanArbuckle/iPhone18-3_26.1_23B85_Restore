@interface RDDebounceableCKDatabaseNotification
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)subscriptionOwnerUserRecordName;
- (_TtC7remindd36RDDebounceableCKDatabaseNotification)init;
- (_TtC7remindd36RDDebounceableCKDatabaseNotification)initWithDatabaseScope:(int64_t)a3 subscriptionOwnerUserRecordName:(id)a4;
- (int64_t)hash;
- (void)setSubscriptionOwnerUserRecordName:(id)a3;
@end

@implementation RDDebounceableCKDatabaseNotification

- (NSString)subscriptionOwnerUserRecordName
{
  v2 = *(self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  v3 = *(self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setSubscriptionOwnerUserRecordName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  v6 = *(self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (_TtC7remindd36RDDebounceableCKDatabaseNotification)initWithDatabaseScope:(int64_t)a3 subscriptionOwnerUserRecordName:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope) = a3;
  v7 = (self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  *v7 = v6;
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RDDebounceableCKDatabaseNotification();
  return [(RDDebounceableCKDatabaseNotification *)&v10 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10014E960(v8);

  sub_1000050A4(v8, &qword_100939ED0, &qword_100791B10);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope);
  v3 = self;
  v4 = Int.hashValue.getter();
  v5 = *(v3 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  v6 = *(v3 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8);

  v7 = String.hashValue.getter();

  return v7 ^ v4;
}

- (NSString)description
{
  v2 = self;
  sub_10014EBB8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC7remindd36RDDebounceableCKDatabaseNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end