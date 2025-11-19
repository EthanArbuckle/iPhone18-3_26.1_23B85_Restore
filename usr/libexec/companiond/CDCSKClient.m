@interface CDCSKClient
- (OS_dispatch_queue)dispatchQueue;
- (_TtC10companiond11CDCSKClient)init;
- (_TtC10companiond11CDCSKClient)initWithBluetoothDevice:(id)a3 discoveryType:(int)a4;
- (id)setupNotNeededHandler;
- (void)activate;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)setSetupNotNeededHandler:(id)a3;
@end

@implementation CDCSKClient

- (OS_dispatch_queue)dispatchQueue
{
  v3 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDispatchQueue:(id)a3
{
  v5 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setSetupNotNeededHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_100025C1C(v7);
}

- (_TtC10companiond11CDCSKClient)initWithBluetoothDevice:(id)a3 discoveryType:(int)a4
{
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone) = 0;
  v7 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  sub_100025DE4();
  v8 = a3;
  *(self + v7) = static OS_dispatch_queue.main.getter();
  v9 = (self + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_bluetoothDevice) = v8;
  *(self + OBJC_IVAR____TtC10companiond11CDCSKClient_discoveryType) = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CDCSKClient();
  return [(CDCSKClient *)&v11 init];
}

- (void)activate
{
  v2 = self;
  CDCSKClient.activate()();
}

- (void)invalidate
{
  v2 = self;
  CDCSKClient.invalidate()();
}

- (_TtC10companiond11CDCSKClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end