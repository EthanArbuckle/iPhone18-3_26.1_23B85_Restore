@interface WAPerPeerPopulator
- (_TtC14wifianalyticsd18WAPerPeerPopulator)init;
- (_TtC14wifianalyticsd18WAPerPeerPopulator)initWithQueue:(id)a3;
- (id)sampleTrackedPeers;
- (void)updateTrackedPeers:(id)a3 predicates:(id)a4;
@end

@implementation WAPerPeerPopulator

- (_TtC14wifianalyticsd18WAPerPeerPopulator)init
{
  v3 = [objc_opt_self() sharedObject];
  if (!v3)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211;
  v5 = v3;
  v6 = [v3 getInfraApple80211];

  *(&self->super.isa + v4) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC14wifianalyticsd18WAPerPeerPopulator)initWithQueue:(id)a3
{
  v3 = a3;
  v4 = sub_1000106CC(v3);

  return v4;
}

- (void)updateTrackedPeers:(id)a3 predicates:(id)a4
{
  if (a3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_100005BE8(&qword_10010D518, &qword_1000A9068);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  v10.value._rawValue = v5;
  v10.is_nil = v6;
  WAPerPeerPopulator.updateTrackedPeers(_:predicates:)(v10, v8);
}

- (id)sampleTrackedPeers
{
  v2 = self;
  v3 = WAPerPeerPopulator.sampleTrackedPeers()();

  return v3;
}

@end