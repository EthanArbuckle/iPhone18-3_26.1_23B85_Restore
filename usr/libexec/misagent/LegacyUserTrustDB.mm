@interface LegacyUserTrustDB
- (BOOL)setupSchema;
- (_TtC8misagent17LegacyUserTrustDB)init;
- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)a3;
- (void)setupPermissions;
@end

@implementation LegacyUserTrustDB

- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)a3
{
  v4 = sub_10001A618();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A5E8();
  sub_10001A5D8(v9);
  v11 = v10;
  v12 = type metadata accessor for LegacyUserTrustDB();
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(SQLDB *)&v15 initWithDatabaseURL:v11];

  (*(v5 + 8))(v8, v4);
  return v13;
}

- (void)setupPermissions
{
  v2 = self;
  sub_100016DC4();
}

- (_TtC8misagent17LegacyUserTrustDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)setupSchema
{
  v2 = self;
  v3 = sub_100018078();

  return v3 & 1;
}

@end