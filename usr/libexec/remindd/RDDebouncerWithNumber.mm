@interface RDDebouncerWithNumber
- (_TtC7remindd21RDDebouncerWithNumber)init;
- (_TtC7remindd21RDDebouncerWithNumber)initWithDebouncingInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (double)debouncingInterval;
- (void)fire:(id)a3 completion:(id)a4;
- (void)setDebouncingInterval:(double)a3;
@end

@implementation RDDebouncerWithNumber

- (double)debouncingInterval
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7remindd21RDDebouncerWithNumber_debouncer);
  v3 = self;
  v4 = sub_1004434C4();

  return v4;
}

- (void)setDebouncingInterval:(double)a3
{
  v4 = self;
  sub_10014E468(a3);
}

- (_TtC7remindd21RDDebouncerWithNumber)initWithDebouncingInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *v14 = a3;
  memset(&v14[1], 0, 24);
  v15 = 0;
  v10 = a4;
  *(&self->super.isa + OBJC_IVAR____TtC7remindd21RDDebouncerWithNumber_debouncer) = sub_1004427E0(0, 0, v14, v10, sub_10014F6E4, v9);
  v13.receiver = self;
  v13.super_class = type metadata accessor for RDDebouncerWithNumber();
  v11 = [(RDDebouncerWithNumber *)&v13 init];

  return v11;
}

- (void)fire:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_10014F6DC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *(&self->super.isa + OBJC_IVAR____TtC7remindd21RDDebouncerWithNumber_debouncer);
  v10 = self;
  sub_10043BF60(v6, v8, v7);

  sub_10003E114(v8);
}

- (_TtC7remindd21RDDebouncerWithNumber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end