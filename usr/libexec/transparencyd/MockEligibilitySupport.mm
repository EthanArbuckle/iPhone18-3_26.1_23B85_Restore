@interface MockEligibilitySupport
- (NSURL)databaseDir;
- (_TtC13transparencyd22MockEligibilitySupport)init;
- (id)eligibilityContainerPathAndReturnError:(id *)error;
- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler;
- (void)setDatabaseDir:(id)dir;
@end

@implementation MockEligibilitySupport

- (NSURL)databaseDir
{
  v3 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  sub_1000AB050(self + v7, v6, &qword_100382DC0, &unk_1002D5BC0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (void)setDatabaseDir:(id)dir
{
  v5 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (dir)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  selfCopy = self;
  sub_1000EB698(v8, self + v11);
  swift_endAccess();
}

- (_TtC13transparencyd22MockEligibilitySupport)init
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(self + OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_iCloudAnalyticsFlag) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MockEligibilitySupport();
  return [(MockEligibilitySupport *)&v6 init];
}

- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002D78F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002D7900;
  v13[5] = v12;
  selfCopy = self;
  sub_1000EAE9C(0, 0, v8, &unk_1002D7910, v13);
}

- (id)eligibilityContainerPathAndReturnError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v10 = sub_1000EB5A8(8);
  v12 = v11;
  v13 = Data.base64EncodedString(options:)(0);
  sub_1000956CC(v10, v12);
  (*((swift_isaMask & *selfCopy) + 0x98))(v13._countAndFlagsBits, v13._object);

  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v5 + 8))(v8, v4);

  return v16;
}

@end