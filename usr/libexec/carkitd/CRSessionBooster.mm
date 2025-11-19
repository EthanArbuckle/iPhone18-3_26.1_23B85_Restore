@interface CRSessionBooster
- (_TtC7carkitd16CRSessionBooster)init;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3;
- (void)connectionRequested;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)startedConnectionAttemptOnTransport:(unint64_t)a3;
@end

@implementation CRSessionBooster

- (void)connectionRequested
{
  v2 = self;
  CRSessionBooster.connectionRequested()();
}

- (_TtC7carkitd16CRSessionBooster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)a3
{
  v4 = self;
  CRSessionBooster.startedConnectionAttempt(on:)(a3);
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3
{
  v4 = self;
  CRSessionBooster.cancelledConnectionAttempt(on:)(a3);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CRSessionBooster.sessionDidConnect(_:)(v4);
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s7carkitd16CRSessionBoosterC7session_9didUpdateySo10CARSessionC_So0G13ConfigurationCtF_0(v6);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CRSessionBooster.sessionDidDisconnect(_:)(v4);
}

@end