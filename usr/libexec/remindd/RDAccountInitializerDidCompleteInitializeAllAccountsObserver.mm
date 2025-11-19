@interface RDAccountInitializerDidCompleteInitializeAllAccountsObserver
- (RDAccountInitializerDidCompleteInitializeAllAccountsObserver)init;
- (RDAccountInitializerDidCompleteInitializeAllAccountsObserver)initWithHandler:(id)a3 queue:(id)a4;
- (void)didCompleteInitializeAllAccounts:(id)a3;
- (void)observe;
- (void)unobserve;
@end

@implementation RDAccountInitializerDidCompleteInitializeAllAccountsObserver

- (RDAccountInitializerDidCompleteInitializeAllAccountsObserver)initWithHandler:(id)a3 queue:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = (self + OBJC_IVAR___RDAccountInitializerDidCompleteInitializeAllAccountsObserver_handler);
  *v8 = sub_10045B59C;
  v8[1] = v7;
  *(&self->super.isa + OBJC_IVAR___RDAccountInitializerDidCompleteInitializeAllAccountsObserver_queue) = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for RDAccountInitializer.DidCompleteInitializeAllAccountsObserver();
  v9 = a4;
  return [(RDAccountInitializerDidCompleteInitializeAllAccountsObserver *)&v11 init];
}

- (void)observe
{
  v3 = objc_opt_self();
  v5 = self;
  v4 = [v3 defaultCenter];
  if (qword_1009361C0 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v5 selector:? name:? object:?];
}

- (void)unobserve
{
  v3 = objc_opt_self();
  v5 = self;
  v4 = [v3 defaultCenter];
  if (qword_1009361C0 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v5 name:qword_100974E90 object:0];
}

- (void)didCompleteInitializeAllAccounts:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100456614(v8);

  (*(v5 + 8))(v8, v4);
}

- (RDAccountInitializerDidCompleteInitializeAllAccountsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end