@interface SDDeferrableOperation
- (SDDeferrableOperation)init;
- (SDDeferrableOperation)initWithIdentifier:(id)a3 queue:(id)a4 operation:(id)a5;
- (id)returnPreventUntilDate;
- (void)pushPreventionDateForReason:(id)a3 newDate:(id)a4;
- (void)scheduleOperation;
@end

@implementation SDDeferrableOperation

- (SDDeferrableOperation)initWithIdentifier:(id)a3 queue:(id)a4 operation:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = a4;
  v12 = sub_10042CA04(v7, v9, v11, sub_10042C9FC, v10);

  return v12;
}

- (void)pushPreventionDateForReason:(id)a3 newDate:(id)a4
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  sub_100427BBC(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)scheduleOperation
{
  v2 = self;
  sub_100428AA8();
}

- (id)returnPreventUntilDate
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  sub_10000FF90(self + v7, v6, &qword_10097A7F0, &unk_1007FB600);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (SDDeferrableOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end