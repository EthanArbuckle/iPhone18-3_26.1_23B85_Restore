@interface APDaemonInstanceWrapper
- (APConfigSystemBackgroundTask)configSystemRequestTask;
- (APConfigurationStorage)configurationStorage;
- (APDaemonInstanceWrapper)init;
- (APMigrationContext)migrationContext;
- (void)setConfigSystemRequestTask:(id)task;
- (void)setConfigurationStorage:(id)storage;
- (void)setMigrationContext:(id)context;
@end

@implementation APDaemonInstanceWrapper

- (APMigrationContext)migrationContext
{
  selfCopy = self;
  v3 = DaemonInstanceWrapper.migrationContext.getter();

  return v3;
}

- (void)setMigrationContext:(id)context
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext) = context;
  contextCopy = context;
}

- (APConfigurationStorage)configurationStorage
{
  selfCopy = self;
  v3 = DaemonInstanceWrapper.configurationStorage.getter();

  return v3;
}

- (void)setConfigurationStorage:(id)storage
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage) = storage;
  storageCopy = storage;
}

- (APConfigSystemBackgroundTask)configSystemRequestTask
{
  selfCopy = self;
  v3 = DaemonInstanceWrapper.configSystemRequestTask.getter();

  return v3;
}

- (void)setConfigSystemRequestTask:(id)task
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask) = task;
  taskCopy = task;
}

- (APDaemonInstanceWrapper)init
{
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext) = 0;
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage) = 0;
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonInstanceWrapper();
  return [(APDaemonInstanceWrapper *)&v3 init];
}

@end