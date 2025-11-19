@interface RDDaemonController
- (_TtC7remindd18RDDaemonController)init;
- (id)syncDebugPerformerWithErrorHandler:(id)a3;
- (void)asyncDebugPerformerWithReason:(id)a3 loadHandler:(id)a4 errorHandler:(id)a5;
@end

@implementation RDDaemonController

- (id)syncDebugPerformerWithErrorHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  v6 = sub_1005566EC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);

  return v6;
}

- (void)asyncDebugPerformerWithReason:(id)a3 loadHandler:(id)a4 errorHandler:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(swift_allocObject() + 16) = v8;
  v10 = self;
  sub_100556868(sub_1002A8A6C, v9, sub_10003FE58);
}

- (_TtC7remindd18RDDaemonController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end