@interface CAFDNowPlayingAgent
- (_TtC13caraccessoryd19CAFDNowPlayingAgent)initWithCarManager:(id)a3;
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)mediaSourceService:(id)a3 didUpdateCurrentFrequency:(unsigned int)a4;
- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4;
- (void)nowPlayingService:(id)a3 didUpdateCurrentMediaSourceIdentifier:(id)a4;
- (void)nowPlayingService:(id)a3 didUpdatePlaybackState:(unsigned __int8)a4;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFDNowPlayingAgent

- (_TtC13caraccessoryd19CAFDNowPlayingAgent)initWithCarManager:(id)a3
{
  v3 = a3;
  v4 = specialized CAFDNowPlayingAgent.init(carManager:)(v3);

  return v4;
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(v4);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDNowPlayingAgent.accessoryDidUpdate(_:receivedAllValues:)(v6, a4);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFDNowPlayingAgent.carManager(_:didUpdateCurrentCar:)(a4);
}

- (void)nowPlayingService:(id)a3 didUpdateCurrentMediaSourceIdentifier:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = self;
  v12[4] = closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)partial apply;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = &block_descriptor_162;
  v10 = _Block_copy(v12);
  v11 = self;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v7, v8);

  v9 = *(&v6->super.super.isa + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v13[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v13[3] = &block_descriptor_127;
  v11 = _Block_copy(v13);
  v12 = v6;

  [v9 addOperationWithBlock:v11];
  _Block_release(v11);
}

- (void)nowPlayingService:(id)a3 didUpdatePlaybackState:(unsigned __int8)a4
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v9[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_120;
  v7 = _Block_copy(v9);
  v8 = self;

  [v5 addOperationWithBlock:v7];
  _Block_release(v7);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDNowPlayingAgent.serviceDidUpdate(_:receivedAllValues:)(v6, a4);
}

- (void)mediaSourceService:(id)a3 didUpdateCurrentFrequency:(unsigned int)a4
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v9[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_113;
  v7 = _Block_copy(v9);
  v8 = self;

  [v5 addOperationWithBlock:v7];
  _Block_release(v7);
}

@end