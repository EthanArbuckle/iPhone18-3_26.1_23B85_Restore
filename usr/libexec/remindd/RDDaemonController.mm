@interface RDDaemonController
- (_TtC7remindd18RDDaemonController)init;
- (id)syncDebugPerformerWithErrorHandler:(id)handler;
- (void)asyncDebugPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation RDDaemonController

- (id)syncDebugPerformerWithErrorHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  v6 = sub_1005566EC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);

  return v6;
}

- (void)asyncDebugPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(errorHandler);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(swift_allocObject() + 16) = v8;
  selfCopy = self;
  sub_100556868(sub_1002A8A6C, v9, sub_10003FE58);
}

- (_TtC7remindd18RDDaemonController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end