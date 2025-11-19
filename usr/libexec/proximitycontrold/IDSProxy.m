@interface IDSProxy
- (_TtC17proximitycontrold8IDSProxy)init;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation IDSProxy

- (_TtC17proximitycontrold8IDSProxy)init
{
  v3 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices;
  KeyPath = swift_getKeyPath();
  v5 = sub_100035D04(&unk_100348F80, &qword_1002833E0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_10006D7D4(KeyPath, 0);

  *(&self->super.isa + v3) = v8;
  v9 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v10 = qword_10038B5B8;
  *(&self->super.isa + v9) = qword_10038B5B8;
  *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_tasks) = &_swiftEmptySetSingleton;
  v13.receiver = self;
  v13.super_class = type metadata accessor for IDSProxy();
  v11 = v10;
  return [(IDSProxy *)&v13 init];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_10017ABB4(v6);
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  if (a4)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_10017AE1C(v6);
}

@end