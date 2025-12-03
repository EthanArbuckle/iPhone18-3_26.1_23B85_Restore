@interface WAPerPeerPopulator
- (_TtC14wifianalyticsd18WAPerPeerPopulator)init;
- (_TtC14wifianalyticsd18WAPerPeerPopulator)initWithQueue:(id)queue;
- (id)sampleTrackedPeers;
- (void)updateTrackedPeers:(id)peers predicates:(id)predicates;
@end

@implementation WAPerPeerPopulator

- (_TtC14wifianalyticsd18WAPerPeerPopulator)init
{
  sharedObject = [objc_opt_self() sharedObject];
  if (!sharedObject)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC14wifianalyticsd18WAPerPeerPopulator_apple80211;
  v5 = sharedObject;
  getInfraApple80211 = [sharedObject getInfraApple80211];

  *(&self->super.isa + v4) = getInfraApple80211;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC14wifianalyticsd18WAPerPeerPopulator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_1000106CC(queueCopy);

  return v4;
}

- (void)updateTrackedPeers:(id)peers predicates:(id)predicates
{
  if (peers)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_100005BE8(&qword_10010D518, &qword_1000A9068);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10.value._rawValue = v5;
  v10.is_nil = v6;
  WAPerPeerPopulator.updateTrackedPeers(_:predicates:)(v10, v8);
}

- (id)sampleTrackedPeers
{
  selfCopy = self;
  v3 = WAPerPeerPopulator.sampleTrackedPeers()();

  return v3;
}

@end