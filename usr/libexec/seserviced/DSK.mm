@interface DSK
+ (uint64_t)mandatoryInit;
- (void)startWithModule:(int64_t)module;
- (void)stop;
- (void)stopWithModule:(int64_t)module;
@end

@implementation DSK

- (void)startWithModule:(int64_t)module
{
  selfCopy = self;
  sub_1003358D4(module);
}

- (void)stopWithModule:(int64_t)module
{
  selfCopy = self;
  sub_100335F8C(module);
}

- (void)stop
{
  selfCopy = self;
  sub_100336618();
}

+ (uint64_t)mandatoryInit
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = v1[13];
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v8 = v5;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = v1[1];
  result = v10(v4, v0);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v4 = v8;
  v7(v4, v6, v0);
  v12 = v8;
  v13 = _dispatchPreconditionTest(_:)();
  result = v10(v4, v0);
  if ((v13 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  aBlock[4] = sub_1000ED05C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100334E18;
  aBlock[3] = &unk_1004D0FF8;
  v14 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v12, v14);
  _Block_release(v14);
  type metadata accessor for Alisha(0);
  *v4 = v12;
  v7(v4, v6, v0);
  v15 = _dispatchPreconditionTest(_:)();
  result = v10(v4, v0);
  if ((v15 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10022F108();
  *v4 = v12;
  v7(v4, v6, v0);
  v16 = _dispatchPreconditionTest(_:)();
  result = v10(v4, v0);
  if (v16)
  {
    type metadata accessor for LyonCoreAnalytics();
    sub_1002F80D4();
    type metadata accessor for LyonAssetManagerDelegate();
    inited = swift_initStaticObject();
    sub_100238D1C(inited);
    return sub_10009257C();
  }

LABEL_11:
  __break(1u);
  return result;
}

@end