@interface RDContactInteractionAlarmProducer
- (_TtC7remindd33RDContactInteractionAlarmProducer)init;
- (void)dealloc;
@end

@implementation RDContactInteractionAlarmProducer

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken);
  v6 = self;
  if (notify_is_valid_token(v5))
  {
    notify_cancel(*(&self->super.isa + v4));
    *(&self->super.isa + v4) = -1;
  }

  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(RDContactInteractionAlarmProducer *)&v7 dealloc];
}

- (_TtC7remindd33RDContactInteractionAlarmProducer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end