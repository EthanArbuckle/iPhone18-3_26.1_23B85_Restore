@interface RemoteConfigurator
- (_TtC14softposreaderd18RemoteConfigurator)init;
- (void)installWithToken:(id)a3 launchSEStorageSheet:(BOOL)a4 seStorageSheetBundleID:(id)a5 seStorageSheetSceneID:(id)a6 delegate:(id)a7 reply:(id)a8;
- (void)statusWithToken:(id)a3 options:(int64_t)a4 reply:(id)a5;
@end

@implementation RemoteConfigurator

- (void)installWithToken:(id)a3 launchSEStorageSheet:(BOOL)a4 seStorageSheetBundleID:(id)a5 seStorageSheetSceneID:(id)a6 delegate:(id)a7 reply:(id)a8
{
  v24 = a4;
  v12 = _Block_copy(a8);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v13;
  if (a5)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v14;
    if (a6)
    {
LABEL_3:
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a6 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    v25 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v19 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 16];
  v18 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v19);
  v20 = *(v18 + 16);
  swift_unknownObjectRetain();
  v21 = self;
  v20(v23, v26, v24, a7, v22, v25, v15, a6, sub_10018D094, v17, v19, v18);
  swift_unknownObjectRelease();
}

- (void)statusWithToken:(id)a3 options:(int64_t)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 16];
  v12 = *&self->instance[OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v11);
  v13 = *(v12 + 32);
  v15 = self;
  v13(v8, v10, a4, v11, v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7[2](v7, isa, 0);

  _Block_release(v7);
}

- (_TtC14softposreaderd18RemoteConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end