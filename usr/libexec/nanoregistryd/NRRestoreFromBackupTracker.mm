@interface NRRestoreFromBackupTracker
+ (id)sharedInstance;
+ (void)_markFileForFullSync:(id)a3;
- (BOOL)_writeToDisk:(id)a3;
- (BOOL)didRestoredFromBackup;
- (BOOL)isTracked;
- (NRRestoreFromBackupTracker)init;
- (unsigned)lastKnownState;
- (void)refresh;
- (void)stopTracking;
- (void)updateState:(unsigned __int8)a3;
@end

@implementation NRRestoreFromBackupTracker

- (NRRestoreFromBackupTracker)init
{
  v8.receiver = self;
  v8.super_class = NRRestoreFromBackupTracker;
  v2 = [(NRRestoreFromBackupTracker *)&v8 init];
  if (v2)
  {
    v3 = +[NRDataFilePaths _pathToUnpairTriggerFile];
    restoreTrackerPath = v2->_restoreTrackerPath;
    v2->_restoreTrackerPath = v3;

    v5 = [[NRPreferences alloc] initWithDomain:@"com.apple.NanoRegistry"];
    preferences = v2->_preferences;
    v2->_preferences = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1001B3980 != -1)
  {
    sub_100102120();
  }

  v3 = qword_1001B3978;

  return v3;
}

- (BOOL)isTracked
{
  v2 = [(NRPreferences *)self->_preferences objectForKeyedSubscript:@"lastRestoreIdentifier"];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"YES";
      if (!v2)
      {
        v6 = @"NO";
      }

      v8 = 136446466;
      v9 = "[NRRestoreFromBackupTracker isTracked]";
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", &v8, 0x16u);
    }
  }

  return v2 != 0;
}

- (BOOL)didRestoredFromBackup
{
  v3 = [(NRRestoreFromBackupTracker *)self lastKnownState];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:self->_restoreTrackerPath];

  if ((v5 & 1) != 0 || v3)
  {
    v8 = [(NRPreferences *)self->_preferences objectForKeyedSubscript:@"lastRestoreIdentifier"];
    restoreTrackerPath = self->_restoreTrackerPath;
    v19 = 0;
    v11 = [NSString stringWithContentsOfFile:restoreTrackerPath encoding:4 error:&v19];
    v12 = v19;
    if (v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 isEqualToString:v11]^ 1;
    }

    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (v3 > 3)
        {
          v16 = @"NRRestoreTrackerStateUnknown";
        }

        else
        {
          v16 = off_100178880[v3];
        }

        v17 = @"NO";
        *buf = 136447234;
        v21 = "[NRRestoreFromBackupTracker didRestoredFromBackup]";
        if (v9)
        {
          v17 = @"YES";
        }

        v22 = 2114;
        v23 = v8;
        v24 = 2114;
        v25 = v11;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: last known restore id (prefs: %{public}@; file: %{public}@).  Last known state was %@. Returning %@", buf, 0x34u);
      }
    }

    goto LABEL_21;
  }

  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[NRRestoreFromBackupTracker didRestoredFromBackup]";
      v22 = 2112;
      v23 = @"NRRestoreTrackerStateTracking";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s (%@): Tracker file does not exist.", buf, 0x16u);
    }

    LOBYTE(v9) = 1;
LABEL_21:

    return v9;
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (BOOL)_writeToDisk:(id)a3
{
  v4 = a3;
  v5 = [NSURL fileURLWithPath:self->_restoreTrackerPath isDirectory:0];
  v6 = +[NSFileManager defaultManager];
  v7 = +[NRDataFilePaths _pathToNanoRegistryUnpairTriggerFileDirectory];
  v35 = 0;
  v8 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v35];
  v9 = v35;

  v10 = nr_daemon_log();
  v11 = v10;
  if (v8)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v39 = "[NRRestoreFromBackupTracker _writeToDisk:]";
        v40 = 2112;
        v41 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating unpair trigger file with content %@", buf, 0x16u);
      }
    }

    [(NRRestoreFromBackupTracker *)self updateState:1];
    v34 = v9;
    v14 = [v4 writeToURL:v5 atomically:1 encoding:4 error:&v34];
    v15 = v34;

    if (v14)
    {
      v16 = +[NSFileManager defaultManager];
      v36 = NSFileProtectionKey;
      v37 = NSFileProtectionNone;
      v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      restoreTrackerPath = self->_restoreTrackerPath;
      v33 = v15;
      v19 = [v16 setAttributes:v17 ofItemAtPath:restoreTrackerPath error:&v33];
      v20 = v33;

      if ((v19 & 1) == 0)
      {
        v21 = nr_daemon_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

        if (v22)
        {
          v23 = nr_daemon_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10010221C();
          }
        }

        v20 = 0;
      }

      v32 = v20;
      v24 = [v5 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v32];
      v9 = v32;

      if ((v24 & 1) == 0)
      {
        v25 = nr_daemon_log();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (v26)
        {
          v27 = nr_daemon_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100102290();
          }
        }

        v9 = 0;
      }

      [objc_opt_class() _markFileForFullSync:self->_restoreTrackerPath];
      LOBYTE(self) = 1;
    }

    else
    {
      v28 = nr_daemon_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (v29)
      {
        v30 = nr_daemon_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1001021A8();
        }
      }

      LOBYTE(self) = 0;
      v9 = v15;
    }
  }

  else
  {
    LODWORD(self) = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (self)
    {
      self = nr_daemon_log();
      if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
      {
        sub_100102134();
      }

      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (void)refresh
{
  if ([(NRRestoreFromBackupTracker *)self didRestoredFromBackup])
  {
    v3 = os_transaction_create();
    v4 = [(NRPreferences *)self->_preferences objectForKeyedSubscript:@"lastRestoreIdentifier"];
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];

    [(NRRestoreFromBackupTracker *)self updateState:2];
    [(NRPreferences *)self->_preferences setObject:v6 forKeyedSubscript:@"lastRestoreIdentifier"];
    if ([(NRPreferences *)self->_preferences synchronize])
    {
      v7 = [(NRRestoreFromBackupTracker *)self _writeToDisk:v6];
      v8 = nr_daemon_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        if (v9)
        {
          v10 = nr_daemon_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 136446466;
            v20 = "[NRRestoreFromBackupTracker refresh]";
            v21 = 2112;
            v22 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Created unpair trigger file with content %@", &v19, 0x16u);
          }
        }

        v11 = self;
        v12 = 0;
      }

      else
      {
        if (v9)
        {
          v18 = nr_daemon_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 136446466;
            v20 = "[NRRestoreFromBackupTracker refresh]";
            v21 = 2112;
            v22 = v4;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:Reverting back to %@", &v19, 0x16u);
          }
        }

        [(NRPreferences *)self->_preferences setObject:v4 forKeyedSubscript:@"lastRestoreIdentifier"];
        [(NRPreferences *)self->_preferences synchronize];
        v11 = self;
        v12 = 3;
      }

      [(NRRestoreFromBackupTracker *)v11 updateState:v12];
    }

    else
    {
      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = nr_daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100102304(v17);
        }
      }
    }
  }

  else
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (!v14)
    {
      return;
    }

    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446210;
      v20 = "[NRRestoreFromBackupTracker refresh]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Not restored from backup. Not creating a new restore file.", &v19, 0xCu);
    }
  }
}

- (void)stopTracking
{
  v3 = os_transaction_create();
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:self->_restoreTrackerPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    restoreTrackerPath = self->_restoreTrackerPath;
    v16 = 0;
    v8 = [v6 removeItemAtPath:restoreTrackerPath error:&v16];
    v9 = v16;

    if ((v8 & 1) == 0)
    {
      v10 = nr_daemon_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = nr_daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100102388(v9, v12);
        }
      }
    }
  }

  [(NRPreferences *)self->_preferences setObject:0 forKeyedSubscript:@"lastRestoreIdentifier"];
  [(NRPreferences *)self->_preferences synchronize];
  v13 = nr_daemon_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = nr_daemon_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = "[NRRestoreFromBackupTracker stopTracking]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Removed unpair trigger file and pref.", buf, 0xCu);
    }
  }
}

- (void)updateState:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [NSNumber numberWithUnsignedChar:?];
  [(NRPreferences *)self->_preferences setObject:v5 forKeyedSubscript:@"lastRestoreIdentifier_state"];

  [(NRPreferences *)self->_preferences synchronize];
  v6 = nr_daemon_log();
  LODWORD(v5) = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 3)
      {
        v8 = @"NRRestoreTrackerStateUnknown";
      }

      else
      {
        v8 = off_100178880[v3];
      }

      v9 = 136446466;
      v10 = "[NRRestoreFromBackupTracker updateState:]";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v9, 0x16u);
    }
  }
}

- (unsigned)lastKnownState
{
  [(NRPreferences *)self->_preferences synchronize];
  v3 = [(NRPreferences *)self->_preferences objectForKeyedSubscript:@"lastRestoreIdentifier_state"];
  v4 = [v3 unsignedIntValue];

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 > 3u)
      {
        v8 = @"NRRestoreTrackerStateUnknown";
      }

      else
      {
        v8 = off_100178880[v4 & 3];
      }

      v10 = 136446466;
      v11 = "[NRRestoreFromBackupTracker lastKnownState]";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v10, 0x16u);
    }
  }

  return v4;
}

+ (void)_markFileForFullSync:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v10 = [NSException exceptionWithName:@"NPSPrefPlistProtectedUtil" reason:@"Path cannot be nil" userInfo:0];
    objc_exception_throw(v10);
  }

  v4 = v3;
  v5 = open([v3 UTF8String], 2, 0);
  if (v5 != -1)
  {
    v6 = v5;
    fcntl(v5, 51, 1);
    close(v6);
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100102454();
    }
  }
}

@end