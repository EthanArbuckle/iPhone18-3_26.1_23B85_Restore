@interface SwiftDataStore
- (BOOL)hasGracePeriod:(id)a3;
- (id)getGracePeriodStartDate:(id)a3;
- (void)createGracePeriod:(id)a3;
- (void)purge;
- (void)startGracePeriod:(id)a3;
@end

@implementation SwiftDataStore

- (void)purge
{

  sub_100014BD4();
}

- (BOOL)hasGracePeriod:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1000142C0(v3, v5);

  if (v6)
  {
  }

  return v6 != 0;
}

- (void)createGracePeriod:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (sub_1000142C0(v4, v6))
  {
  }

  else
  {
    v7 = type metadata accessor for GracePeriod();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_100013868(v4, v6);
    (*(*self->_TtCs12_SwiftObject_opaque + 88))(v10);
    sub_100015F58(&qword_10005CEC0);
    dispatch thunk of ModelContext.insert<A>(_:)();

    sub_10001496C();
  }
}

- (void)startGracePeriod:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10001520C(v3, v5);
}

- (id)getGracePeriodStartDate:(id)a3
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v18 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_1000142C0(v7, v9);

  if (v10)
  {
    v18[1] = v10;
    swift_getKeyPath();
    sub_100015F58(&qword_10005CED8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100015F58(&qword_10005CEC0);
    sub_100016384(&qword_10005C030, &qword_10005C038);
    PersistentModel.getValue<A>(forKey:)();

    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v6, 1, v11);
    v14 = 0;
    if (v13 != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v12 + 8))(v6, v11);
      v14 = isa;
    }
  }

  else
  {

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v14 = 0;
  }

  return v14;
}

@end