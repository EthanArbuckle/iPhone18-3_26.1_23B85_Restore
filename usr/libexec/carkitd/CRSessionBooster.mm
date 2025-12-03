@interface CRSessionBooster
- (_TtC7carkitd16CRSessionBooster)init;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)connectionRequested;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
@end

@implementation CRSessionBooster

- (void)connectionRequested
{
  selfCopy = self;
  CRSessionBooster.connectionRequested()();
}

- (_TtC7carkitd16CRSessionBooster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  selfCopy = self;
  CRSessionBooster.startedConnectionAttempt(on:)(transport);
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  selfCopy = self;
  CRSessionBooster.cancelledConnectionAttempt(on:)(transport);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  CRSessionBooster.sessionDidConnect(_:)(connectCopy);
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  selfCopy = self;
  _s7carkitd16CRSessionBoosterC7session_9didUpdateySo10CARSessionC_So0G13ConfigurationCtF_0(sessionCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  CRSessionBooster.sessionDidDisconnect(_:)(disconnectCopy);
}

@end