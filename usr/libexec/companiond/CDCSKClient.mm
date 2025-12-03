@interface CDCSKClient
- (OS_dispatch_queue)dispatchQueue;
- (_TtC10companiond11CDCSKClient)init;
- (_TtC10companiond11CDCSKClient)initWithBluetoothDevice:(id)device discoveryType:(int)type;
- (id)setupNotNeededHandler;
- (void)activate;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
- (void)setSetupNotNeededHandler:(id)handler;
@end

@implementation CDCSKClient

- (OS_dispatch_queue)dispatchQueue
{
  v3 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDispatchQueue:(id)queue
{
  v5 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = queue;
  queueCopy = queue;
}

- (id)setupNotNeededHandler
{
  v2 = (self + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100025F68;
    aBlock[3] = &unk_10008AD88;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSetupNotNeededHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000265AC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_100025C1C(v7);
}

- (_TtC10companiond11CDCSKClient)initWithBluetoothDevice:(id)device discoveryType:(int)type
{
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone) = 0;
  v7 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  sub_100025DE4();
  deviceCopy = device;
  *(self + v7) = static OS_dispatch_queue.main.getter();
  v9 = (self + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_bluetoothDevice) = deviceCopy;
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_discoveryType) = type;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CDCSKClient();
  return [(CDCSKClient *)&v11 init];
}

- (void)activate
{
  selfCopy = self;
  CDCSKClient.activate()();
}

- (void)invalidate
{
  selfCopy = self;
  CDCSKClient.invalidate()();
}

- (_TtC10companiond11CDCSKClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end