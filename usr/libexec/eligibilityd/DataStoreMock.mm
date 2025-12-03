@interface DataStoreMock
- (BOOL)hasGracePeriod:(id)period;
- (DataStoreMock)init;
- (id)getGracePeriodStartDate:(id)date;
- (void)deleteGracePeriod:(id)period;
- (void)insertGracePeriod:(id)period date:(id)date;
- (void)purge;
@end

@implementation DataStoreMock

- (DataStoreMock)init
{
  *(&self->super.isa + OBJC_IVAR___DataStoreMock_dataStorage) = sub_1000125F0(&_swiftEmptyArrayStorage);
  v4.receiver = self;
  v4.super_class = DataStoreMock;
  return [(DataStoreMock *)&v4 init];
}

- (void)purge
{
  selfCopy = self;
  v3 = sub_1000125F0(&_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR___DataStoreMock_dataStorage;
  swift_beginAccess();
  v5 = *(&selfCopy->super.isa + v4);
  *(&selfCopy->super.isa + v4) = v3;
}

- (BOOL)hasGracePeriod:(id)period
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = OBJC_IVAR___DataStoreMock_dataStorage;
  swift_beginAccess();
  if ((*(&self->super.isa + v7))[2])
  {
    selfCopy = self;
    sub_100002F84(v4, v6);
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v10 = 0;
  }

  swift_endAccess();

  return v10 & 1;
}

- (id)getGracePeriodStartDate:(id)date
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_100011938(v8, v10, v7);

  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v7, v12);
    v15 = isa;
  }

  return v15;
}

- (void)insertGracePeriod:(id)period date:(id)date
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100011C2C(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)deleteGracePeriod:(id)period
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_beginAccess();
  selfCopy = self;
  sub_1000114B4(0, v4, v6);
  swift_endAccess();
}

@end