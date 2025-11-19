@interface OpensAppIntentDispatcher
- (NSString)bundleIdentifier;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation OpensAppIntentDispatcher

- (NSString)bundleIdentifier
{
  v2 = type metadata accessor for AppIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  AppIntentSpecification.app.getter();
  AppIdentifier.bundleIdentifier.getter();

  (*(v3 + 8))(v6, v2);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (void)performWithCompletionHandler:(id)a3
{
  v5 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10006DC60;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10006DC70;
  v13[5] = v12;

  sub_1000241A0(0, 0, v8, &unk_10006DC80, v13);
}

@end