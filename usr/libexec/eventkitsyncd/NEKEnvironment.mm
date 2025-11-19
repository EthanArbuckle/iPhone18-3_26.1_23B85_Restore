@interface NEKEnvironment
+ (id)instance;
- (NEKDatabaseFileManager)dbFileManager;
- (NEKEnvironment)init;
- (NEKRecordMap)recordMap;
- (NEKSeenMap)seenMap;
- (NEKSessionAnalytics)analytics;
- (NEKSyncController)syncController;
- (NEKSyncCoordinator)syncCoordinator;
- (NEKTinyStore)tinyStore;
- (NSString)clientName;
- (void)setSyncController:(id)a3;
@end

@implementation NEKEnvironment

- (NEKEnvironment)init
{
  v7.receiver = self;
  v7.super_class = NEKEnvironment;
  v2 = [(NEKEnvironment *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSCondition);
    controllerCondition = v3->_controllerCondition;
    v3->_controllerCondition = v4;
  }

  return v3;
}

- (NEKDatabaseFileManager)dbFileManager
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_dbFileManager)
  {
    v3 = objc_alloc_init(NEKDatabaseFileManager);
    dbFileManager = self->_dbFileManager;
    self->_dbFileManager = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_dbFileManager;

  return v5;
}

- (NEKTinyStore)tinyStore
{
  v3 = [(NEKEnvironment *)self dbFileManager];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_tinyStore)
  {
    v4 = [[NEKTinyStore alloc] initWithDatabaseManager:v3];
    tinyStore = self->_tinyStore;
    self->_tinyStore = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_tinyStore;
  v7 = v6;

  return v6;
}

- (NEKRecordMap)recordMap
{
  v3 = [(NEKEnvironment *)self dbFileManager];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_recordMap)
  {
    v4 = [[NEKRecordMap alloc] initWithDatabaseManager:v3];
    recordMap = self->_recordMap;
    self->_recordMap = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_recordMap;
  v7 = v6;

  return v6;
}

- (NEKSeenMap)seenMap
{
  v3 = [(NEKEnvironment *)self dbFileManager];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_seenMap)
  {
    v4 = [[NEKSeenMap alloc] initWithDatabaseManager:v3];
    seenMap = self->_seenMap;
    self->_seenMap = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_seenMap;
  v7 = v6;

  return v6;
}

- (NEKSyncCoordinator)syncCoordinator
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_syncCoordinator)
  {
    v3 = [[NEKSyncCoordinator alloc] initWithEnvironment:self];
    syncCoordinator = self->_syncCoordinator;
    self->_syncCoordinator = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_syncCoordinator;

  return v5;
}

- (NEKSyncController)syncController
{
  [(NEKEnvironment *)self tinyStore];

  [(NEKEnvironment *)self recordMap];
  [(NSCondition *)self->_controllerCondition lock];
  while (!self->_syncController)
  {
    [(NSCondition *)self->_controllerCondition wait];
  }

  [(NSCondition *)self->_controllerCondition broadcast];
  [(NSCondition *)self->_controllerCondition unlock];
  syncController = self->_syncController;

  return syncController;
}

- (NSString)clientName
{
  v3 = [(NEKEnvironment *)self dbFileManager];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_clientName)
  {
    v4 = [v3 pairingID];
    v5 = [NSString stringWithFormat:@"com.apple.eventkitsync.changeobserver.%@", v4];
    clientName = self->_clientName;
    self->_clientName = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_clientName;
  v8 = v7;

  return v7;
}

- (void)setSyncController:(id)a3
{
  v4 = a3;
  [(NSCondition *)self->_controllerCondition lock];
  syncController = self->_syncController;
  self->_syncController = v4;
  v6 = v4;

  [(NSCondition *)self->_controllerCondition broadcast];
  [(NSCondition *)self->_controllerCondition unlock];
}

- (NEKSessionAnalytics)analytics
{
  v3 = [(NEKEnvironment *)self dbFileManager];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_analytics)
  {
    v4 = [[NEKSessionAnalytics alloc] initWithFileManager:v3];
    analytics = self->_analytics;
    self->_analytics = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_analytics;
  v7 = v6;

  return v6;
}

+ (id)instance
{
  if (qword_1000D1740 != -1)
  {
    sub_10006ED8C();
  }

  v3 = qword_1000D1748;

  return v3;
}

@end