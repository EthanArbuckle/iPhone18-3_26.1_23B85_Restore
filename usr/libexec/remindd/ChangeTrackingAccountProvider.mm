@interface ChangeTrackingAccountProvider
- (NSString)accountDescription;
- (NSString)accountID;
- (_TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider)init;
- (_TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider)init;
- (id)loggingDescription;
- (void)setAccountDescription:(id)description;
- (void)setAccountID:(id)d;
- (void)setRem_accountObjectID:(id)d;
@end

@implementation ChangeTrackingAccountProvider

- (NSString)accountID
{
  v2 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID);
  v3 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setAccountID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  v6 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setRem_accountObjectID:(id)d
{
  v4 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID);
  *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID) = d;
  dCopy = d;
}

- (NSString)accountDescription
{
  if (*(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription);
    v3 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccountDescription:(id)description
{
  if (description)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  v7 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (id)loggingDescription
{
  selfCopy = self;
  sub_100206864();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID) = 0;
  v5 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  *v5 = 0;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ChangeTrackingAccountProvider *)&v7 init];
}

- (_TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end