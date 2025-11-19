@interface FinderStateTrampoline
- (_TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline)init;
- (void)disableFinderModeWithCompletion:(id)a3;
- (void)enableFinderModeWithCompletion:(id)a3;
- (void)fetchFinderState:(id)a3;
- (void)setActiveCache:(int64_t)a3 completion:(id)a4;
- (void)start;
- (void)stateInfoWithCompletion:(id)a3;
@end

@implementation FinderStateTrampoline

- (void)start
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (void)enableFinderModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = self;
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10001F280(v6 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v10);
  v8 = v11;
  v9 = v12;
  sub_1000035D0(v10, v11);
  (*(v9 + 8))(sub_10026AE30, v5, v8, v9);
  sub_100007BAC(v10);
}

- (void)disableFinderModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = self;
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10001F280(v6 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v10);
  v8 = v11;
  v9 = v12;
  sub_1000035D0(v10, v11);
  (*(v9 + 16))(sub_10026AE30, v5, v8, v9);
  sub_100007BAC(v10);
}

- (void)fetchFinderState:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1010430AC(sub_100011168, v5);
}

- (void)stateInfoWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_10001F280(self + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v11);
  v6 = v12;
  v7 = v13;
  sub_1000035D0(v11, v12);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001BC108;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);
  v10 = self;

  v9(sub_100F98AC8, v8, v6, v7);

  sub_100007BAC(v11);
}

- (void)setActiveCache:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_101043390(a3, sub_10001E370, v7);
}

- (_TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end