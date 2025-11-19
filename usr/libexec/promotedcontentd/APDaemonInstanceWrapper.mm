@interface APDaemonInstanceWrapper
- (APConfigSystemBackgroundTask)configSystemRequestTask;
- (APConfigurationStorage)configurationStorage;
- (APDaemonInstanceWrapper)init;
- (APMigrationContext)migrationContext;
- (void)setConfigSystemRequestTask:(id)a3;
- (void)setConfigurationStorage:(id)a3;
- (void)setMigrationContext:(id)a3;
@end

@implementation APDaemonInstanceWrapper

- (APMigrationContext)migrationContext
{
  v2 = self;
  v3 = DaemonInstanceWrapper.migrationContext.getter();

  return v3;
}

- (void)setMigrationContext:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext) = a3;
  v3 = a3;
}

- (APConfigurationStorage)configurationStorage
{
  v2 = self;
  v3 = DaemonInstanceWrapper.configurationStorage.getter();

  return v3;
}

- (void)setConfigurationStorage:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage) = a3;
  v3 = a3;
}

- (APConfigSystemBackgroundTask)configSystemRequestTask
{
  v2 = self;
  v3 = DaemonInstanceWrapper.configSystemRequestTask.getter();

  return v3;
}

- (void)setConfigSystemRequestTask:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask);
  *(&self->super.isa + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask) = a3;
  v3 = a3;
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