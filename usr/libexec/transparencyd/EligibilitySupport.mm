@interface EligibilitySupport
- (BOOL)allowKTEnableByDefault;
- (_TtC13transparencyd18EligibilitySupport)init;
- (id)eligibilityContainerPathAndReturnError:(id *)error;
- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler;
@end

@implementation EligibilitySupport

- (id)eligibilityContainerPathAndReturnError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100007DF8();

  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  return v12;
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
  v12[4] = &unk_1002D7FB8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002D7FC8;
  v13[5] = v12;
  selfCopy = self;
  sub_1000EAE9C(0, 0, v8, &unk_1002D7FD8, v13);
}

- (BOOL)allowKTEnableByDefault
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 3;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return v2 & 1;
}

- (_TtC13transparencyd18EligibilitySupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EligibilitySupport();
  return [(EligibilitySupport *)&v3 init];
}

@end