@interface SchedulerTrampoline
- (_TtC12searchpartydP33_8F16B571022752B5A0333344EAF60C1619SchedulerTrampoline)init;
- (void)publishImmediatelyWithCompletion:(id)a3;
- (void)schedulePublishWakeWithInformation:(id)a3 completion:(id)a4;
@end

@implementation SchedulerTrampoline

- (void)schedulePublishWakeWithInformation:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_100851F28();
  swift_allocError();
  v5 = _convertErrorToNSError(_:)();
  v4[2](v4, v5);

  _Block_release(v4);
}

- (void)publishImmediatelyWithCompletion:(id)a3
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_1001BC108;
  v11[5] = v9;
  sub_10025EDD4(0, 0, v7, &unk_1013BF5C0, v11);
}

- (_TtC12searchpartydP33_8F16B571022752B5A0333344EAF60C1619SchedulerTrampoline)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SchedulerTrampoline();
  return [(SchedulerTrampoline *)&v3 init];
}

@end