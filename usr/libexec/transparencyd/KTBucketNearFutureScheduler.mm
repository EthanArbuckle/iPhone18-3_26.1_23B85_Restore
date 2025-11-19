@interface KTBucketNearFutureScheduler
+ (id)resultString:(int64_t)a3;
- (_TtC13transparencyd27KTBucketNearFutureScheduler)init;
- (int64_t)triggerWithUseTokens:(double)a3;
- (void)cancel;
- (void)setEventHandler:(id)a3;
- (void)setQoS:(unsigned int)a3;
@end

@implementation KTBucketNearFutureScheduler

+ (id)resultString:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3 || a3 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a3 != 2 && a3 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setEventHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  KTBucketNearFutureScheduler.setEventHandler(_:)(sub_1000F6D64, v5);
}

- (void)setQoS:(unsigned int)a3
{
  v4 = sub_100095820(&qword_100385458, &qword_1002D7C18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = self;
  DispatchQoS.QoSClass.init(rawValue:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000F6848(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*((swift_isaMask & v13->super.isa) + 0x108))(v12);

    (*(v9 + 8))(v12, v8);
  }
}

- (int64_t)triggerWithUseTokens:(double)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue);
  v4 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (void)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13transparencyd27KTBucketNearFutureScheduler_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F6E34;
  *(v5 + 24) = v4;
  v8[4] = sub_1000A0E98;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009EB40;
  v8[3] = &unk_1003217F0;
  v6 = _Block_copy(v8);
  v7 = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC13transparencyd27KTBucketNearFutureScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end