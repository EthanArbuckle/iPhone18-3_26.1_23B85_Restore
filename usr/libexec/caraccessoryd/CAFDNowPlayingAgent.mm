@interface CAFDNowPlayingAgent
- (_TtC13caraccessoryd19CAFDNowPlayingAgent)initWithCarManager:(id)manager;
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)mediaSourceService:(id)service didUpdateCurrentFrequency:(unsigned int)frequency;
- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork;
- (void)nowPlayingService:(id)service didUpdateCurrentMediaSourceIdentifier:(id)identifier;
- (void)nowPlayingService:(id)service didUpdatePlaybackState:(unsigned __int8)state;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDNowPlayingAgent

- (_TtC13caraccessoryd19CAFDNowPlayingAgent)initWithCarManager:(id)manager
{
  managerCopy = manager;
  v4 = specialized CAFDNowPlayingAgent.init(carManager:)(managerCopy);

  return v4;
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(accessoriesCopy);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDNowPlayingAgent.accessoryDidUpdate(_:receivedAllValues:)(updateCopy, values);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  specialized CAFDNowPlayingAgent.carManager(_:didUpdateCurrentCar:)(car);
}

- (void)nowPlayingService:(id)service didUpdateCurrentMediaSourceIdentifier:(id)identifier
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
  selfCopy = self;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork
{
  artworkCopy = artwork;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v7, v8);

  v9 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = selfCopy;
  v13[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v13[3] = &block_descriptor_127;
  v11 = _Block_copy(v13);
  v12 = selfCopy;

  [v9 addOperationWithBlock:v11];
  _Block_release(v11);
}

- (void)nowPlayingService:(id)service didUpdatePlaybackState:(unsigned __int8)state
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
  selfCopy = self;

  [v5 addOperationWithBlock:v7];
  _Block_release(v7);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDNowPlayingAgent.serviceDidUpdate(_:receivedAllValues:)(updateCopy, values);
}

- (void)mediaSourceService:(id)service didUpdateCurrentFrequency:(unsigned int)frequency
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
  selfCopy = self;

  [v5 addOperationWithBlock:v7];
  _Block_release(v7);
}

@end