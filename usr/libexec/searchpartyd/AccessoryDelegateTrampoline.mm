@interface AccessoryDelegateTrampoline
- (_TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline)init;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties;
@end

@implementation AccessoryDelegateTrampoline

- (void)accessoryConnectionDetached:(id)detached
{
  if (detached)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1008D528C(v4, v6);
}

- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties
{
  propertiesCopy = properties;
  if (changed)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (!propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v8 = 0;
  if (properties)
  {
LABEL_3:
    propertiesCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  sub_1008D5888(v6, v8, propertiesCopy);
}

- (_TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  swift_weakInit();
  v10 = OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue;
  type metadata accessor for WorkItemQueue();
  v11 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  UUID.init()();
  *(&self->super.isa + v10) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(AccessoryDelegateTrampoline *)&v13 init];
}

@end