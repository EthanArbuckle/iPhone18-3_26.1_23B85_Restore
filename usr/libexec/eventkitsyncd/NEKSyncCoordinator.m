@interface NEKSyncCoordinator
- (BOOL)okToPerformDeltaSync;
- (NEKSyncCoordinator)initWithEnvironment:(id)a3;
- (id)environment;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
@end

@implementation NEKSyncCoordinator

- (NEKSyncCoordinator)initWithEnvironment:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEKSyncCoordinator;
  v5 = [(NEKSyncCoordinator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.eventkitsync"];
    syncCoordinator = v6->_syncCoordinator;
    v6->_syncCoordinator = v7;

    v6->_shadowLock._os_unfair_lock_opaque = 0;
    v6->_syncRestrictionShadow = [(PSYSyncCoordinator *)v6->_syncCoordinator syncRestriction];
    [(PSYSyncCoordinator *)v6->_syncCoordinator setDelegate:v6];
    v9 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6->_syncCoordinator;
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NEKSyncCoordinator initialized %@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)okToPerformDeltaSync
{
  os_unfair_lock_lock(&self->_shadowLock);
  syncRestrictionShadow = self->_syncRestrictionShadow;
  os_unfair_lock_unlock(&self->_shadowLock);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_ignorePairedSync", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5 || syncRestrictionShadow == 0;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100070E64(v8);
  }

  [(NEKSyncCoordinator *)self setSession:v7];
  v9 = [(NEKSyncCoordinator *)self session];
  v10 = [v9 syncSessionType];

  if (!v10)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = [objc_opt_class() receivedStartSyncNotificationString];
    goto LABEL_7;
  }

  v11 = [(NEKSyncCoordinator *)self session];
  v12 = [v11 syncSessionType];

  if (v12 == 1)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = [objc_opt_class() receivedReunionSyncNotificationString];
LABEL_7:
    v15 = v14;
    [v13 postNotificationName:v14 object:self];
  }
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100070F0C(v5);
  }

  [(NEKSyncCoordinator *)self setSession:0];
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_shadowLock);
  v5 = [v4 syncRestriction];

  self->_syncRestrictionShadow = v5;
  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_syncRestrictionShadow)
    {
      v7 = "LimitPush";
    }

    else
    {
      v7 = "None";
    }

    v8 = 136446210;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restriction is now %{public}s", &v8, 0xCu);
  }

  os_unfair_lock_unlock(&self->_shadowLock);
}

@end