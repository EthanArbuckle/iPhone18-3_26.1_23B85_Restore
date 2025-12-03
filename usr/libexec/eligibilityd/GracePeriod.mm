@interface GracePeriod
- (NSDate)startDate;
- (NSString)name;
- (void)setName:(id)name;
- (void)setStartDate:(id)date;
@end

@implementation GracePeriod

- (NSString)name
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0);
  PersistentModel.getValue<A>(forKey:)();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (NSDate)startDate
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v13 - v5;
  v13[1] = self;
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0);
  sub_100016384(&qword_10005C030, &qword_10005C038);
  PersistentModel.getValue<A>(forKey:)();

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v6, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setStartDate:(id)date
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v12 - v7;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v12[1] = self;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v12[-2] = self;
  v12[-1] = v8;
  sub_100015F58(&qword_10005CED8);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100006A80(v8, &qword_10005BD00, "^/");
}

@end