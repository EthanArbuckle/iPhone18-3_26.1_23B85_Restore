@interface RemoteInspector
- (_TtC14softposreaderd15RemoteInspector)init;
- (void)copyApplicationRecords:(id)a3;
@end

@implementation RemoteInspector

- (void)copyApplicationRecords:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd15RemoteInspector_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd15RemoteInspector_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd15RemoteInspector_instance), v5);
  v7 = *(v6 + 8);
  v8 = self;
  v7(v5, v6);
  sub_10018CA90();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4[2](v4, isa);

  _Block_release(v4);
}

- (_TtC14softposreaderd15RemoteInspector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end