@interface HandoffFeature
- (NSString)description;
- (_TtC17proximitycontrold14HandoffFeature)init;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation HandoffFeature

- (void)setDispatchQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue);
  *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue) = a3;
  v3 = a3;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_invalidationHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_invalidationHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_invalidationHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_interruptionHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_interruptionHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_interruptionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100201174(sub_100104000, v5);
}

- (void)invalidate
{
  v2 = self;
  sub_100201D80();
}

- (_TtC17proximitycontrold14HandoffFeature)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_100201FCC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end