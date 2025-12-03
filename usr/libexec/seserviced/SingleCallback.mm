@interface SingleCallback
- (_TtC10seserviced14SingleCallback)init;
- (void)invoke:(id)invoke;
@end

@implementation SingleCallback

- (void)invoke:(id)invoke
{
  v4 = _Block_copy(invoke);
  v5 = *(**(&self->super.isa + OBJC_IVAR____TtC10seserviced14SingleCallback_invoked) + 136);
  selfCopy = self;
  v6 = v5();
  v7 = 0;
  atomic_compare_exchange_strong(v6, &v7, 1u);
  if (!v7)
  {
    v4[2](v4);
  }

  _Block_release(v4);
}

- (_TtC10seserviced14SingleCallback)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10seserviced14SingleCallback_invoked;
  sub_100068FC4(&qword_100504A58, &unk_10040FA00);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SingleCallback *)&v7 init];
}

@end