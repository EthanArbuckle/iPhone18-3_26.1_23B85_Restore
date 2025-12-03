@interface NRGIconVersionTracker
- (BOOL)_appVersionChanged:(id)changed;
- (NRGIconVersionTracker)initWithDelegate:(id)delegate;
- (NRGIconVersionTracking)delegate;
- (id)_activeVersionHistoryURL;
- (id)_noLongerTrackedBundleIDs:(id)ds;
- (id)_readActiveIconVersions;
- (void)_appConduitUpdated;
- (void)_removeActiveIconVersions;
- (void)_withLock:(id)lock;
- (void)_writeActiveIconVersions;
- (void)commit;
- (void)dealloc;
- (void)deviceSwitched;
- (void)reset;
- (void)setVersion:(id)version forBundleID:(id)d;
- (void)start;
- (void)suspend;
@end

@implementation NRGIconVersionTracker

- (NRGIconVersionTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NRGIconVersionTracker;
  v5 = [(NRGIconVersionTracker *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_appConduitNotifyToken = -1;
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
    _readActiveIconVersions = [(NRGIconVersionTracker *)v6 _readActiveIconVersions];
    iconVersionDictionary = v6->_iconVersionDictionary;
    v6->_iconVersionDictionary = _readActiveIconVersions;

    v9 = nrg_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6->_iconVersionDictionary;
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NRGIconVersionTracker initialized, iconVersionDictionary = %@", buf, 0xCu);
    }

    if ([(NSMutableDictionary *)v6->_iconVersionDictionary count])
    {
      [(NRGIconVersionTracker *)v6 start];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(NRGIconVersionTracker *)self suspend];
  v3.receiver = self;
  v3.super_class = NRGIconVersionTracker;
  [(NRGIconVersionTracker *)&v3 dealloc];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000044A0;
  v2[3] = &unk_1000205D0;
  v2[4] = self;
  [(NRGIconVersionTracker *)self _withLock:v2];
}

- (void)suspend
{
  v3 = nrg_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "suspending icon version tracker", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000047F8;
  v4[3] = &unk_1000205D0;
  v4[4] = self;
  [(NRGIconVersionTracker *)self _withLock:v4];
}

- (void)deviceSwitched
{
  v3 = nrg_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "icon version tracker device switched", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000048F8;
  v4[3] = &unk_1000205D0;
  v4[4] = self;
  [(NRGIconVersionTracker *)self _withLock:v4];
}

- (void)setVersion:(id)version forBundleID:(id)d
{
  versionCopy = version;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004A04;
  v9[3] = &unk_1000205F8;
  v9[4] = self;
  dCopy = d;
  v11 = versionCopy;
  v7 = versionCopy;
  v8 = dCopy;
  [(NRGIconVersionTracker *)self _withLock:v9];
}

- (void)commit
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004AF8;
  v2[3] = &unk_1000205D0;
  v2[4] = self;
  [(NRGIconVersionTracker *)self _withLock:v2];
}

- (void)reset
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004BA0;
  v2[3] = &unk_1000205D0;
  v2[4] = self;
  [(NRGIconVersionTracker *)self _withLock:v2];
}

- (void)_appConduitUpdated
{
  v3 = NRGGetActivePairedDevice();
  v4 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v6 = +[NSMutableSet set];
    v7 = +[NSMutableSet set];
    v8 = +[ACXDeviceConnection sharedDeviceConnection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004D94;
    v11[3] = &unk_100020670;
    v12 = v7;
    selfCopy = self;
    v14 = v6;
    v9 = v6;
    v10 = v7;
    [v8 enumerateInstalledApplicationsOnPairedDevice:v3 withBlock:v11];
  }

  else
  {
    v10 = nrg_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ignoring app conduit update as activeDevice %@ does not support the NRDEVICECAPABILITY_STANDALONE_APPS capability", buf, 0xCu);
    }
  }
}

- (id)_noLongerTrackedBundleIDs:(id)ds
{
  dsCopy = ds;
  +[NSMutableSet set];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100005278;
  v12 = v11 = &unk_100020648;
  selfCopy = self;
  v5 = v12;
  [(NRGIconVersionTracker *)self _withLock:&v8];
  [v5 minusSet:{dsCopy, v8, v9, v10, v11}];

  v6 = [v5 copy];

  return v6;
}

- (BOOL)_appVersionChanged:(id)changed
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100005584;
  v22 = sub_100005594;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000559C;
  v14[3] = &unk_100020698;
  v17 = &v18;
  selfCopy = self;
  changedCopy = changed;
  v16 = changedCopy;
  [(NRGIconVersionTracker *)selfCopy _withLock:v14];
  v4 = v19[5];
  bundleShortVersion = [changedCopy bundleShortVersion];
  v6 = [v4 isEqualToString:bundleShortVersion];

  if (v6)
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [changedCopy bundleIdentifier];
      bundleShortVersion2 = [changedCopy bundleShortVersion];
      *buf = 138412546;
      v25 = bundleIdentifier;
      v26 = 2112;
      v27 = bundleShortVersion2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ (%@) version hasn't changed", buf, 0x16u);
    }
  }

  else
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [changedCopy bundleIdentifier];
      v11 = v19[5];
      bundleShortVersion3 = [changedCopy bundleShortVersion];
      *buf = 138412802;
      v25 = bundleIdentifier2;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = bundleShortVersion3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ version changed from %@ to %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v18, 8);
  return v6 ^ 1;
}

- (id)_activeVersionHistoryURL
{
  v2 = +[NRGResourceCache cacheDirPathForPairedDevice];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"%@.archive", @"IconVersionDictionary"];
    v7[0] = v2;
    v7[1] = v3;
    v4 = [NSArray arrayWithObjects:v7 count:2];
    v5 = [NSURL fileURLWithPathComponents:v4];
  }

  else
  {
    v3 = nrg_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100010FC8(v3);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_readActiveIconVersions
{
  v3 = +[NSMutableDictionary dictionary];
  _activeVersionHistoryURL = [(NRGIconVersionTracker *)self _activeVersionHistoryURL];
  if (_activeVersionHistoryURL)
  {
    v5 = [NSData dataWithContentsOfURL:_activeVersionHistoryURL];
    if (v5)
    {
      v6 = objc_opt_class();
      v12 = 0;
      v7 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() fromData:v5 error:&v12];
      v8 = v12;
      if (v7)
      {
        v9 = nrg_framework_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v14 = _activeVersionHistoryURL;
          v15 = 2112;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "loaded icon versions from %@ %@", buf, 0x16u);
        }

        v10 = v3;
        v3 = [v7 mutableCopy];
      }

      else
      {
        v10 = nrg_framework_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100011074();
        }
      }
    }
  }

  return v3;
}

- (void)_writeActiveIconVersions
{
  _activeVersionHistoryURL = [(NRGIconVersionTracker *)self _activeVersionHistoryURL];
  if (_activeVersionHistoryURL)
  {
    iconVersionDictionary = self->_iconVersionDictionary;
    p_iconVersionDictionary = &self->_iconVersionDictionary;
    v13 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:iconVersionDictionary requiringSecureCoding:0 error:&v13];
    v7 = v13;
    if (v7 || !v6)
    {
      v10 = nrg_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000110DC();
      }
    }

    else
    {
      v12 = 0;
      [v6 writeToURL:_activeVersionHistoryURL options:0x10000000 error:&v12];
      v8 = v12;
      if (v8)
      {
        v7 = v8;
        v9 = nrg_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100011144();
        }
      }

      else
      {
        v7 = nrg_daemon_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *p_iconVersionDictionary;
          *buf = 138412546;
          v15 = _activeVersionHistoryURL;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "wrote icon versions to %@ %@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_removeActiveIconVersions
{
  _activeVersionHistoryURL = [(NRGIconVersionTracker *)self _activeVersionHistoryURL];
  v3 = _activeVersionHistoryURL;
  if (_activeVersionHistoryURL)
  {
    v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [_activeVersionHistoryURL fileSystemRepresentation], 4);
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = +[NSFileManager defaultManager];
      v10 = 0;
      [v7 removeItemAtPath:v4 error:&v10];
      v8 = v10;

      if (v8)
      {
        v9 = nrg_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100011224();
        }
      }
    }

    else
    {
      v8 = nrg_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "icon version file does not exit %@", buf, 0xCu);
      }
    }
  }
}

- (NRGIconVersionTracking)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end