@interface RemotePrimer
- (_TtC14softposreaderd12RemotePrimer)init;
- (void)dealloc;
@end

@implementation RemotePrimer

- (void)dealloc
{
  sub_10000CCE4(self + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance, v9);
  v3 = v10;
  v4 = v11;
  sub_10000BE18(v9, v10);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_isPOS);
  v6 = *(v4 + 32);
  selfCopy = self;
  v6(v5, v3, v4);
  sub_10000959C(v9);
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for RemotePrimer();
  [(RemotePrimer *)&v8 dealloc];
}

- (_TtC14softposreaderd12RemotePrimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end