@interface NearbyAgent
- (NSString)description;
- (_TtC17proximitycontrold11NearbyAgent)init;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation NearbyAgent

- (void)setInterruptionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001042DC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_interruptionHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_interruptionHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_interruptionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10002689C(v8);
}

- (void)setInvalidationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100104014;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10002689C(v8);
}

- (void)setDispatchQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue);
  *(self + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue) = queue;
  queueCopy = queue;
}

- (_TtC17proximitycontrold11NearbyAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100133114(sub_100104000, v5);
}

- (void)invalidate
{
  selfCopy = self;
  sub_100134F64();
}

- (NSString)description
{
  selfCopy = self;
  sub_10013A2FC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end