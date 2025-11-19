@interface RemoteProvisionReader
- (_TtC14softposreaderd21RemoteProvisionReader)init;
- (void)cancelProvisionWithReply:(id)a3;
- (void)checkStatusWithReply:(id)a3;
- (void)provisionCardWithParameters:(id)a3 delegate:(id)a4 reply:(id)a5;
@end

@implementation RemoteProvisionReader

- (void)provisionCardWithParameters:(id)a3 delegate:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 16];
  v11 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance), v10);
  v12 = *(v11 + 8);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  v12(v13, a4, sub_10018A9C0, v9, v10, v11);

  swift_unknownObjectRelease();
}

- (void)cancelProvisionWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance), v5);
  v7 = *(v6 + 16);
  v8 = self;
  v7(v5, v6);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)checkStatusWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 16];
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance), v6);
  v8 = *(v7 + 24);
  v9 = self;
  v8(sub_10018A9E0, v5, v6, v7);
}

- (_TtC14softposreaderd21RemoteProvisionReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end