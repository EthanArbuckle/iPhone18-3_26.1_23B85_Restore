@interface LaunchWarningDB
- (BOOL)setupSchema;
- (_TtC17online_auth_agent15LaunchWarningDB)init;
- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)a3;
- (void)setupPermissions;
@end

@implementation LaunchWarningDB

- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)a3
{
  v4 = sub_100043004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042FA4();
  sub_100042F84(v9);
  v11 = v10;
  v12 = type metadata accessor for LaunchWarningDB();
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(SQLDB *)&v15 initWithDatabaseURL:v11];

  (*(v5 + 8))(v8, v4);
  return v13;
}

- (BOOL)setupSchema
{
  v2 = self;
  v3 = sub_100016508();

  return v3 & 1;
}

- (void)setupPermissions
{
  v3 = sub_100043004();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(SQLDB *)v8 dbURL];
  sub_100042FA4();

  sub_100042FC4();
  (*(v4 + 8))(v7, v3);
  v10 = sub_100043374();

  sub_100003284((v10 + 32));
}

- (_TtC17online_auth_agent15LaunchWarningDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end