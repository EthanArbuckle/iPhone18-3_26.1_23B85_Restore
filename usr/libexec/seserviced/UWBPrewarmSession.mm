@interface UWBPrewarmSession
- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)sessionDidStartRunning:(id)running;
- (void)systemConfigurator:(id)configurator didUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type;
- (void)systemConfigurator:(id)configurator didUpdateState:(id)state;
@end

@implementation UWBPrewarmSession

- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemConfigurator:(id)configurator didUpdateState:(id)state
{
  configuratorCopy = configurator;
  stateCopy = state;
  selfCopy = self;
  sub_10024EE5C(stateCopy);
}

- (void)systemConfigurator:(id)configurator didUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type
{
  swift_getObjCClassMetadata();
  configuratorCopy = configurator;
  selfCopy = self;
  sub_10024F014(exceeded);
}

- (void)sessionDidStartRunning:(id)running
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100501D90;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v14 = *&selfCopy->onInvalidation[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
    (*(&selfCopy->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart))(v13);
  }

  else
  {
    __break(1u);
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = qword_100501D90;
  errorCopy = error;
  selfCopy = self;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v16 = *&selfCopy->onInvalidation[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
    (*(&selfCopy->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation))(errorCopy);
  }

  else
  {
    __break(1u);
  }
}

@end