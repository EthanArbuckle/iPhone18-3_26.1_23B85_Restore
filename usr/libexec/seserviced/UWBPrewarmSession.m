@interface UWBPrewarmSession
- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)sessionDidStartRunning:(id)a3;
- (void)systemConfigurator:(id)a3 didUpdateResourceUsageLimitExceeded:(BOOL)a4 forSessionConfigurationType:(Class)a5;
- (void)systemConfigurator:(id)a3 didUpdateState:(id)a4;
@end

@implementation UWBPrewarmSession

- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemConfigurator:(id)a3 didUpdateState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10024EE5C(v7);
}

- (void)systemConfigurator:(id)a3 didUpdateResourceUsageLimitExceeded:(BOOL)a4 forSessionConfigurationType:(Class)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = self;
  sub_10024F014(a4);
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100501D90;
  v10 = self;
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
    v14 = *&v10->onInvalidation[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
    (*(&v10->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart))(v13);
  }

  else
  {
    __break(1u);
  }
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = qword_100501D90;
  v12 = a4;
  v13 = self;
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
    v16 = *&v13->onInvalidation[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
    (*(&v13->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation))(v12);
  }

  else
  {
    __break(1u);
  }
}

@end