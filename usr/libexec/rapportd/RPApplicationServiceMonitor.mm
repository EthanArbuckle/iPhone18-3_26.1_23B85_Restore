@interface RPApplicationServiceMonitor
+ (_TtC8rapportd27RPApplicationServiceMonitor)shared;
- (BOOL)isServiceAvailableFor:(id)for serviceIdentifier:(id)identifier;
- (id)payloadFor:(id)for serviceIdentifier:(id)identifier;
- (void)activate;
- (void)deregisterForNotificationsWithIdentifier:(id)identifier;
- (void)discoverAndPublish;
- (void)invalidate;
- (void)registerForNotificationsWithIdentifier:(id)identifier changeHandler:(id)handler;
@end

@implementation RPApplicationServiceMonitor

+ (_TtC8rapportd27RPApplicationServiceMonitor)shared
{
  if (qword_1001D8DE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001DA6D8;

  return v3;
}

- (id)payloadFor:(id)for serviceIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  selfCopy = self;
  os_unfair_lock_lock(v5 + 4);
  sub_1000FEE6C();
  os_unfair_lock_unlock(v5 + 4);

  v7 = 0;
  if (v11 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000C5928(v10, v11);
    v7 = isa;
  }

  return v7;
}

- (void)registerForNotificationsWithIdentifier:(id)identifier changeHandler:(id)handler
{
  v5 = _Block_copy(handler);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  selfCopy = self;
  os_unfair_lock_lock(v6 + 4);
  sub_1000FEE6C();
  os_unfair_lock_unlock(v6 + 4);
}

- (void)deregisterForNotificationsWithIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  selfCopy = self;
  os_unfair_lock_lock(v4 + 4);
  sub_1000FEE6C();
  os_unfair_lock_unlock(v4 + 4);
}

- (BOOL)isServiceAvailableFor:(id)for serviceIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  selfCopy = self;
  os_unfair_lock_lock(v5 + 4);
  sub_1000FEDE0(&v8);
  os_unfair_lock_unlock(v5 + 4);
  LOBYTE(self) = v8;

  return self;
}

- (void)activate
{
  selfCopy = self;
  sub_1000F67DC();
}

- (void)invalidate
{
  selfCopy = self;
  sub_1000F6C04();
}

- (void)discoverAndPublish
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = ObjectType;
  selfCopy = self;
  v11 = sub_1000C1E34(0, 0, v7, &unk_10014BB48, v9);
  v12 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask) = v11;
}

@end