@interface RDDebouncerWithCKDatabaseNotification
- (_TtC7remindd37RDDebouncerWithCKDatabaseNotification)init;
- (_TtC7remindd37RDDebouncerWithCKDatabaseNotification)initWithDebouncingInterval:(double)interval queue:(id)queue handler:(id)handler;
- (double)debouncingInterval;
- (void)fire:(id)fire completion:(id)completion;
- (void)setDebouncingInterval:(double)interval;
@end

@implementation RDDebouncerWithCKDatabaseNotification

- (double)debouncingInterval
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7remindd37RDDebouncerWithCKDatabaseNotification_debouncer);
  selfCopy = self;
  v4 = sub_1004434C4();

  return v4;
}

- (void)setDebouncingInterval:(double)interval
{
  selfCopy = self;
  sub_10014EDE8(interval);
}

- (_TtC7remindd37RDDebouncerWithCKDatabaseNotification)initWithDebouncingInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *v14 = interval;
  memset(&v14[1], 0, 24);
  v15 = 0;
  queueCopy = queue;
  *(&self->super.isa + OBJC_IVAR____TtC7remindd37RDDebouncerWithCKDatabaseNotification_debouncer) = sub_1004427F4(0, 0, v14, queueCopy, sub_10014F5C4, v9);
  v13.receiver = self;
  v13.super_class = type metadata accessor for RDDebouncerWithCKDatabaseNotification();
  v11 = [(RDDebouncerWithCKDatabaseNotification *)&v13 init];

  return v11;
}

- (void)fire:(id)fire completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for RDDebounceableCKDatabaseNotification();
  sub_10014F688(&unk_100943CF0, v6, type metadata accessor for RDDebounceableCKDatabaseNotification);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = sub_10014F5BC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(&self->super.isa + OBJC_IVAR____TtC7remindd37RDDebouncerWithCKDatabaseNotification_debouncer);
  selfCopy = self;
  sub_10043C6EC(v7, v9, v8);

  sub_10003E114(v9);
}

- (_TtC7remindd37RDDebouncerWithCKDatabaseNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end