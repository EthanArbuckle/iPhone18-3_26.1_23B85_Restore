@interface InitialSyncServerController
- (_TtC14NanoPhotosSync27InitialSyncServerController)init;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
@end

@implementation InitialSyncServerController

- (_TtC14NanoPhotosSync27InitialSyncServerController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;

  sub_10002421C(sessionCopy);
}

@end