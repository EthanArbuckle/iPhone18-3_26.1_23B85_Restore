@interface PowerTableAssetStore
+ (BOOL)directoryExistsAtPath:(id)a3;
+ (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)commitStagedAsset:(id)a3;
- (BOOL)rejectStagedAsset:(id)a3;
- (BOOL)stageAsset:(id)a3;
- (BOOL)unstageStagedAsset:(id)a3;
- (PowerTableAssetStore)initWithSubsystem:(int64_t)a3;
- (id)loadAssetWithIdentifier:(id)a3 state:(int64_t)a4;
- (id)pathForAsset:(id)a3;
- (id)pathForAssetWithIdentifier:(id)a3 state:(int64_t)a4;
- (void)activate;
- (void)dealloc;
- (void)loadState;
- (void)log;
- (void)purgeAsset:(id)a3;
- (void)refresh;
- (void)saveState;
@end

@implementation PowerTableAssetStore

- (PowerTableAssetStore)initWithSubsystem:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PowerTableAssetStore;
  result = [(PowerTableAssetStore *)&v5 init];
  if (result)
  {
    result->_subsystem = a3;
  }

  return result;
}

- (void)activate
{
  subsystem = self->_subsystem;
  if (subsystem)
  {
    if (subsystem != 1)
    {
      goto LABEL_6;
    }

    v4 = @"/private/var/db/ConnectivityPowerTableUpdates/Consumer/BT";
    v5 = @"/private/var/db/ConnectivityPowerTableUpdates/BT";
  }

  else
  {
    v4 = @"/private/var/db/ConnectivityPowerTableUpdates/Consumer/WiFi";
    v5 = @"/private/var/db/ConnectivityPowerTableUpdates/WiFi";
  }

  storePath = self->_storePath;
  self->_storePath = &v5->isa;

  stateDirPath = self->_stateDirPath;
  self->_stateDirPath = &v4->isa;

LABEL_6:
  v8 = [(NSString *)self->_stateDirPath stringByAppendingPathComponent:@"State.plist"];
  statePlistPath = self->_statePlistPath;
  self->_statePlistPath = v8;

  v10 = [(NSString *)self->_storePath stringByAppendingPathComponent:@"Latest.plist"];
  latestPlistPath = self->_latestPlistPath;
  self->_latestPlistPath = v10;

  [(PowerTableAssetStore *)self loadState];

  [(PowerTableAssetStore *)self refresh];
}

- (BOOL)stageAsset:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v86 = v7;
    v87 = 2114;
    v88 = v8;
    v89 = 2114;
    v90 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  if ([(NSString *)v5 subsystem]!= self->_subsystem)
  {
    v50 = sub_100025204();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      v31 = 0;
      v30 = 0;
      v48 = 0;
      v17 = 0;
LABEL_31:
      v22 = 0;
LABEL_49:

      v44 = 0;
      v47 = v17;
      goto LABEL_26;
    }

    v51 = [objc_opt_class() description];
    NSStringFromSelector(a2);
    v53 = v52 = v5;
    v54 = [PowerTableAsset subsystemAsString:[(NSString *)v52 subsystem]];
    *buf = 138543874;
    v86 = v51;
    v87 = 2114;
    v88 = v53;
    v89 = 2112;
    v90 = v54;
    v55 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_51:
    _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v55, buf, 0x20u);

    v5 = v52;
    goto LABEL_30;
  }

  if ([(NSString *)v5 state])
  {
    v50 = sub_100025204();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v51 = [objc_opt_class() description];
    NSStringFromSelector(a2);
    v53 = v52 = v5;
    v54 = [PowerTableAsset stateAsString:[(NSString *)v52 state]];
    *buf = 138543874;
    v86 = v51;
    v87 = 2114;
    v88 = v53;
    v89 = 2112;
    v90 = v54;
    v55 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_51;
  }

  if ([objc_opt_class() directoryExistsAtPath:self->_stateDirPath])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    stateDirPath = self->_stateDirPath;
    *buf = 138543874;
    v86 = v11;
    v87 = 2114;
    v88 = v12;
    v89 = 2114;
    v90 = stateDirPath;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating %{public}@", buf, 0x20u);
  }

  v14 = +[NSFileManager defaultManager];
  v15 = self->_stateDirPath;
  v82 = 0;
  v16 = [v14 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v82];
  v17 = v82;

  if ((v16 & 1) == 0)
  {
    v50 = sub_100025204();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v66 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      v68 = v67 = v5;
      v69 = self->_stateDirPath;
      *buf = 138544130;
      v86 = v66;
      v87 = 2114;
      v88 = v68;
      v89 = 2114;
      v90 = v69;
      v91 = 2114;
      v92 = v17;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create %{public}@: %{public}@", buf, 0x2Au);

      v5 = v67;
    }

    v31 = 0;
    v30 = 0;
    v48 = 0;
    goto LABEL_31;
  }

  v18 = +[NSFileManager defaultManager];
  v95 = NSFilePosixPermissions;
  v96 = &off_10006D8D8;
  v19 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  v20 = self->_stateDirPath;
  v81 = v17;
  v21 = [v18 setAttributes:v19 ofItemAtPath:v20 error:&v81];
  v9 = v81;

  if ((v21 & 1) == 0)
  {
    v50 = sub_100025204();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v70 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      v72 = v71 = v5;
      v73 = self->_stateDirPath;
      *buf = 138544130;
      v86 = v70;
      v87 = 2114;
      v88 = v72;
      v89 = 2114;
      v90 = v73;
      v91 = 2114;
      v92 = v9;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", buf, 0x2Au);

      v5 = v71;
    }

    v31 = 0;
    v30 = 0;
    v48 = 0;
    v22 = 0;
    v17 = v9;
    goto LABEL_49;
  }

LABEL_11:
  v22 = [(PowerTableAssetStore *)self stagedAsset];

  aSelector = a2;
  if (v22)
  {
    v23 = [(PowerTableAssetStore *)self stagedAsset];
    v22 = [(PowerTableAssetStore *)self pathForAsset:v23];

    v24 = sub_100025204();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [objc_opt_class() description];
      v26 = NSStringFromSelector(a2);
      *buf = 138543874;
      v86 = v25;
      v87 = 2114;
      v88 = v26;
      v89 = 2114;
      v90 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v27 = +[NSFileManager defaultManager];
    v80 = v9;
    v28 = [v27 removeItemAtPath:v22 error:&v80];
    v17 = v80;

    if ((v28 & 1) == 0)
    {
      v50 = sub_100025204();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v63 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        v65 = v64 = v5;
        *buf = 138544130;
        v86 = v63;
        v87 = 2114;
        v88 = v65;
        v89 = 2114;
        v90 = v22;
        v91 = 2114;
        v92 = v17;
        _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);

        v5 = v64;
      }

      v31 = 0;
      v30 = 0;
      v48 = 0;
      goto LABEL_49;
    }

    v9 = v17;
  }

  v29 = [(NSString *)v5 assetByChangingState:1];
  v76 = v5;
  v30 = [(PowerTableAssetStore *)self pathForAsset:v5];
  v75 = v29;
  v31 = [(PowerTableAssetStore *)self pathForAsset:v29];
  if ([objc_opt_class() directoryExistsAtPath:v31])
  {
    v32 = sub_100025204();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [objc_opt_class() description];
      v34 = NSStringFromSelector(aSelector);
      *buf = 138543874;
      v86 = v33;
      v87 = 2114;
      v88 = v34;
      v89 = 2114;
      v90 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v35 = +[NSFileManager defaultManager];
    v79 = v9;
    v36 = [v35 removeItemAtPath:v31 error:&v79];
    v17 = v79;

    if ((v36 & 1) == 0)
    {
      v50 = sub_100025204();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v56 = [objc_opt_class() description];
        v57 = NSStringFromSelector(aSelector);
        *buf = 138544130;
        v86 = v56;
        v87 = 2114;
        v88 = v57;
        v89 = 2114;
        v90 = v31;
        v91 = 2114;
        v92 = v17;
        v58 = "%{public}@::%{public}@: failed to remove %{public}@: %{public}@";
        v59 = v50;
        v60 = 42;
        goto LABEL_53;
      }

LABEL_47:
      v5 = v76;
LABEL_48:
      v48 = v75;
      goto LABEL_49;
    }

    v9 = v17;
  }

  v37 = sub_100025204();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [objc_opt_class() description];
    v39 = NSStringFromSelector(aSelector);
    *buf = 138544130;
    v86 = v38;
    v87 = 2114;
    v88 = v39;
    v89 = 2114;
    v90 = v30;
    v91 = 2114;
    v92 = v31;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: copying %{public}@ -> %{public}@", buf, 0x2Au);
  }

  v40 = +[NSFileManager defaultManager];
  v78 = v9;
  v41 = [v40 copyItemAtPath:v30 toPath:v31 error:&v78];
  v17 = v78;

  if ((v41 & 1) == 0)
  {
    v50 = sub_100025204();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v56 = [objc_opt_class() description];
      v57 = NSStringFromSelector(aSelector);
      *buf = 138544386;
      v86 = v56;
      v87 = 2114;
      v88 = v57;
      v89 = 2114;
      v90 = v30;
      v91 = 2114;
      v92 = v31;
      v93 = 2114;
      v94 = v17;
      v58 = "%{public}@::%{public}@: failed to copy %{public}@ -> %{public}@: %{public}@";
      v59 = v50;
      v60 = 52;
LABEL_53:
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, v58, buf, v60);

      goto LABEL_47;
    }

    goto LABEL_47;
  }

  v42 = v22;
  v43 = +[NSFileManager defaultManager];
  v83 = NSFilePosixPermissions;
  v84 = &off_10006D8D8;
  v44 = 1;
  v45 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v77 = v17;
  v46 = [v43 setAttributes:v45 ofItemAtPath:v31 error:&v77];
  v47 = v77;

  if ((v46 & 1) == 0)
  {
    v50 = sub_100025204();
    v5 = v76;
    v22 = v42;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v61 = [objc_opt_class() description];
      v62 = NSStringFromSelector(aSelector);
      *buf = 138544130;
      v86 = v61;
      v87 = 2114;
      v88 = v62;
      v89 = 2114;
      v90 = v31;
      v91 = 2114;
      v92 = v47;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", buf, 0x2Au);

      v5 = v76;
    }

    v17 = v47;
    goto LABEL_48;
  }

  v5 = v76;
  v48 = v75;
  v22 = v42;
LABEL_26:
  [(PowerTableAssetStore *)self setStagedAsset:?];
  [(PowerTableAssetStore *)self saveState];
  [(PowerTableAssetStore *)self log];

  return v44;
}

- (BOOL)commitStagedAsset:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", &v12, 0x20u);
  }

  if ([v5 subsystem] != self->_subsystem)
  {
    sub_10002D7B0(self, a2, v5);
LABEL_9:
    v10 = 0;
    goto LABEL_6;
  }

  if ([v5 state] != 1)
  {
    sub_10002D8B8(self, a2, v5);
    goto LABEL_9;
  }

  v9 = [v5 assetByChangingState:2];
  [(PowerTableAssetStore *)self setActiveAsset:v9];

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v10 = 1;
LABEL_6:
  [(PowerTableAssetStore *)self refresh];

  return v10;
}

- (BOOL)rejectStagedAsset:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  if ([v5 subsystem] != self->_subsystem)
  {
    v22 = sub_100025204();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v19 = 0;
      v13 = 0;
      v9 = 0;
LABEL_19:

      v20 = 0;
      goto LABEL_12;
    }

    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    v25 = +[PowerTableAsset subsystemAsString:](PowerTableAsset, "subsystemAsString:", [v5 subsystem]);
    *buf = 138543874;
    v31 = v23;
    v32 = 2114;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    v26 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);

    goto LABEL_16;
  }

  if ([v5 state] != 1)
  {
    v22 = sub_100025204();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    v25 = +[PowerTableAsset stateAsString:](PowerTableAsset, "stateAsString:", [v5 state]);
    *buf = 138543874;
    v31 = v23;
    v32 = 2114;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    v26 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_21;
  }

  v9 = [v5 assetByChangingState:3];
  v10 = [(PowerTableAssetStore *)self rejectedAssets];

  if (v10)
  {
    v11 = [(PowerTableAssetStore *)self rejectedAssets];
    v12 = [v11 setByAddingObject:v9];
    [(PowerTableAssetStore *)self setRejectedAssets:v12];
  }

  else
  {
    v11 = [NSSet setWithObject:v9];
    [(PowerTableAssetStore *)self setRejectedAssets:v11];
  }

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v13 = [(PowerTableAssetStore *)self pathForAsset:v5];
  v14 = sub_100025204();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    *buf = 138543874;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
  }

  v17 = +[NSFileManager defaultManager];
  v29 = 0;
  v18 = [v17 removeItemAtPath:v13 error:&v29];
  v19 = v29;

  if ((v18 & 1) == 0)
  {
    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = [objc_opt_class() description];
      v28 = NSStringFromSelector(a2);
      *buf = 138544130;
      v31 = v27;
      v32 = 2114;
      v33 = v28;
      v34 = 2114;
      v35 = v13;
      v36 = 2114;
      v37 = v19;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_19;
  }

  v20 = 1;
LABEL_12:
  [(PowerTableAssetStore *)self refresh];

  return v20;
}

- (BOOL)unstageStagedAsset:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  if ([v5 subsystem] != self->_subsystem)
  {
    v18 = sub_100025204();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v15 = 0;
      v9 = 0;
LABEL_16:

      v16 = 0;
      goto LABEL_9;
    }

    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v21 = +[PowerTableAsset subsystemAsString:](PowerTableAsset, "subsystemAsString:", [v5 subsystem]);
    *buf = 138543874;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v22 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v22, buf, 0x20u);

    goto LABEL_13;
  }

  if ([v5 state] != 1)
  {
    v18 = sub_100025204();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v21 = +[PowerTableAsset stateAsString:](PowerTableAsset, "stateAsString:", [v5 state]);
    *buf = 138543874;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v22 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_18;
  }

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v9 = [(PowerTableAssetStore *)self pathForAsset:v5];
  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
  }

  v13 = +[NSFileManager defaultManager];
  v25 = 0;
  v14 = [v13 removeItemAtPath:v9 error:&v25];
  v15 = v25;

  if ((v14 & 1) == 0)
  {
    v18 = sub_100025204();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_opt_class() description];
      v24 = NSStringFromSelector(a2);
      *buf = 138544130;
      v27 = v23;
      v28 = 2114;
      v29 = v24;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  v16 = 1;
LABEL_9:
  [(PowerTableAssetStore *)self refresh];

  return v16;
}

- (void)purgeAsset:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  if (v5)
  {
    v9 = [v5 state];
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v12 = [(PowerTableAssetStore *)self rejectedAssets];
          v13 = [v12 mutableCopy];

          [v13 removeObject:v5];
          if ([v13 count])
          {
            v14 = [v13 copy];
            [(PowerTableAssetStore *)self setRejectedAssets:v14];
          }

          else
          {
            [(PowerTableAssetStore *)self setRejectedAssets:0];
          }
        }

        goto LABEL_26;
      }

      v17 = [(PowerTableAssetStore *)self activeAsset];
      v18 = [v17 isEqual:v5];

      if (v18)
      {
        [(PowerTableAssetStore *)self setActiveAsset:0];
      }
    }

    else
    {
      if (!v9)
      {
        v15 = [(PowerTableAssetStore *)self availableAsset];
        v16 = [v15 isEqual:v5];

        if (v16)
        {
          [(PowerTableAssetStore *)self setAvailableAsset:0];
        }

        goto LABEL_26;
      }

      if (v9 != 1)
      {
LABEL_26:
        [(PowerTableAssetStore *)self saveState];
        [(PowerTableAssetStore *)self log];
        goto LABEL_27;
      }

      v10 = [(PowerTableAssetStore *)self stagedAsset];
      v11 = [v10 isEqual:v5];

      if (v11)
      {
        [(PowerTableAssetStore *)self setStagedAsset:0];
      }
    }

    v19 = [(PowerTableAssetStore *)self pathForAsset:v5];
    v20 = sub_100025204();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      *buf = 138543874;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v23 = +[NSFileManager defaultManager];
    v29 = 0;
    v24 = [v23 removeItemAtPath:v19 error:&v29];
    v25 = v29;

    if ((v24 & 1) == 0)
    {
      v26 = sub_100025204();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [objc_opt_class() description];
        v28 = NSStringFromSelector(a2);
        *buf = 138544130;
        v31 = v27;
        v32 = 2114;
        v33 = v28;
        v34 = 2114;
        v35 = v19;
        v36 = 2114;
        v37 = v25;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (id)pathForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 state];

  v7 = [(PowerTableAssetStore *)self pathForAssetWithIdentifier:v5 state:v6];

  return v7;
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = [objc_opt_class() subsystemAsString:self->_subsystem];
    storePath = self->_storePath;
    stateDirPath = self->_stateDirPath;
    v26 = 138544386;
    v27 = v5;
    v28 = 2114;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    v32 = 2114;
    v33 = storePath;
    v34 = 2114;
    v35 = stateDirPath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: subsystem %@, store %{public}@, state %{public}@", &v26, 0x34u);
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v13 = [(PowerTableAssetStore *)self availableAsset];
    v26 = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: available %{public}@", &v26, 0x20u);
  }

  v14 = sub_100025204();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v17 = [(PowerTableAssetStore *)self stagedAsset];
    v26 = 138543874;
    v27 = v15;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: staged %{public}@", &v26, 0x20u);
  }

  v18 = sub_100025204();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v21 = [(PowerTableAssetStore *)self activeAsset];
    v26 = 138543874;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    v30 = 2114;
    v31 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active %{public}@", &v26, 0x20u);
  }

  v22 = sub_100025204();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    v25 = [(PowerTableAssetStore *)self rejectedAssets];
    v26 = 138543874;
    v27 = v23;
    v28 = 2114;
    v29 = v24;
    v30 = 2114;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: rejected %{public}@", &v26, 0x20u);
  }
}

- (id)pathForAssetWithIdentifier:(id)a3 state:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4 <= 3)
    {
      v4 = [*(&self->super.isa + qword_1000364E8[a4]) stringByAppendingPathComponent:v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)fileExistsAtPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v12];

  if ((v6 & 1) == 0)
  {
    v9 = sub_100025204();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      v7 = 0;
      goto LABEL_4;
    }

    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ does not exist", buf, 0x20u);
LABEL_7:

    goto LABEL_9;
  }

  if (v12 == 1)
  {
    v9 = sub_100025204();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@ is a directory", buf, 0x20u);
    goto LABEL_7;
  }

  v7 = 1;
LABEL_4:

  return v7;
}

+ (BOOL)directoryExistsAtPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v12];

  if ((v6 & 1) == 0)
  {
    v9 = sub_100025204();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      v7 = 0;
      goto LABEL_4;
    }

    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ does not exist", buf, 0x20u);
LABEL_7:

    goto LABEL_9;
  }

  if ((v12 & 1) == 0)
  {
    v9 = sub_100025204();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@ is not a directory", buf, 0x20u);
    goto LABEL_7;
  }

  v7 = 1;
LABEL_4:

  return v7;
}

- (void)dealloc
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v8, 0x16u);
  }

  v6 = abort_report_np();
  [(PowerTableAssetStore *)v6 availableAsset];
}

- (void)refresh
{
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100004654();
    v7 = NSStringFromSelector(v6);
    v8 = [PowerTableAsset subsystemAsString:self->_subsystem];
    v33 = 138543874;
    v34 = v2;
    v35 = 2114;
    v36 = v7;
    v37 = 2112;
    v38 = v8;
    sub_10001B0E8(&_mh_execute_header, v5, v9, "%{public}@::%{public}@: %@", &v33);
  }

  if (![objc_opt_class() directoryExistsAtPath:self->_storePath] || !objc_msgSend(objc_opt_class(), "fileExistsAtPath:", self->_latestPlistPath))
  {
    goto LABEL_17;
  }

  v10 = [[NSDictionary alloc] initWithContentsOfFile:self->_latestPlistPath];
  if (!v10)
  {
    v24 = sub_100025204();
    if (sub_10001B0D0(v24))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v29 = sub_100004654();
      v30 = NSStringFromSelector(v29);
      latestPlistPath = self->_latestPlistPath;
      v33 = 138543874;
      v34 = v2;
      sub_10001B148();
      sub_10001B160(&_mh_execute_header, v5, v32, "%{public}@::%{public}@: failed to read %{public}@", &v33);
    }

LABEL_17:
    v23 = 0;
    v18 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"latestAssetSubDir"];
  v13 = sub_100025204();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = self->_latestPlistPath;
    v33 = 138544386;
    v34 = v14;
    sub_10001B148();
    v39 = 2112;
    v40 = @"latestAssetSubDir";
    v41 = v17;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %@=%{public}@", &v33, 0x34u);
  }

  if (!v12)
  {
    v23 = 0;
    v18 = 0;
    goto LABEL_13;
  }

  v18 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v12 state:0];
  if (!v18)
  {
LABEL_25:
    v23 = 0;
    goto LABEL_13;
  }

  v19 = [(PowerTableAssetStore *)self activeAsset];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [objc_opt_class() description];
      v27 = NSStringFromSelector(a2);
      sub_10001B100();
      v28 = "%{public}@::%{public}@: latest already active";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v28, &v33, 0x16u);
    }

LABEL_24:

    goto LABEL_25;
  }

  v21 = [(PowerTableAssetStore *)self rejectedAssets];
  v22 = [v21 containsObject:v18];

  if (v22)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [objc_opt_class() description];
      v27 = NSStringFromSelector(a2);
      sub_10001B100();
      v28 = "%{public}@::%{public}@: latest already rejected";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v23 = v18;
  v18 = v23;
LABEL_13:
  [(PowerTableAssetStore *)self setAvailableAsset:v23];
  [(PowerTableAssetStore *)self log];
}

- (id)loadAssetWithIdentifier:(id)a3 state:(int64_t)a4
{
  v11 = a3;
  v12 = &airship_ch_interface_close_ptr;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = sub_100025204();
    if (!sub_10001B0D0(v28))
    {
LABEL_26:
      sub_10001AFF4();
      v236 = 0;
      v237 = 0;
      v15 = 0;
      v238 = 0;
LABEL_33:
      v22 = 0;
      goto LABEL_21;
    }

    v29 = [objc_opt_class() description];
    v37 = sub_10001B03C(v29, v30, v31, v32, v33, v34, v35, v36, v200, v209, v218, a2);
    v38 = NSStringFromSelector(v37);
    sub_10001AFC4();
    v39 = "%{public}@::%{public}@: identifier has wrong type";
LABEL_55:
    _os_log_error_impl(&_mh_execute_header, &airship_ch_interface_close_ptr, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);

    v12 = &airship_ch_interface_close_ptr;
    goto LABEL_26;
  }

  v13 = [(PowerTableAssetStore *)self pathForAssetWithIdentifier:v11 state:a4];
  if (!v13)
  {
    v40 = sub_100025204();
    if (!sub_10001B0D0(v40))
    {
      goto LABEL_26;
    }

    v98 = [objc_opt_class() description];
    v106 = sub_10001B03C(v98, v99, v100, v101, v102, v103, v104, v105, v200, v209, v218, a2);
    v38 = NSStringFromSelector(v106);
    sub_10001AFC4();
    v39 = "%{public}@::%{public}@: no path";
    goto LABEL_55;
  }

  v8 = v13;
  v237 = v13;
  if (![objc_opt_class() directoryExistsAtPath:v13])
  {
    sub_10001AFF4();
    v236 = 0;
    v15 = 0;
    v238 = 0;
LABEL_29:
    v22 = 0;
    goto LABEL_22;
  }

  v6 = [v8 stringByAppendingPathComponent:@"Info.plist"];
  v238 = v6;
  if (![objc_opt_class() fileExistsAtPath:v6])
  {
    sub_10001AFF4();
    v236 = 0;
    v15 = 0;
    goto LABEL_29;
  }

  v14 = [[NSDictionary alloc] initWithContentsOfFile:v6];
  if (!v14)
  {
    v41 = sub_100025204();
    if (sub_10001B0D0(v41))
    {
      v107 = [objc_opt_class() description];
      v115 = sub_10001B03C(v107, v108, v109, v110, v111, v112, v113, v114, v200, v209, v218, a2);
      NSStringFromSelector(v115);
      v117 = v116 = v11;
      sub_10001AFC4();
      v242 = v118;
      v243 = v6;
      sub_10001B160(&_mh_execute_header, &airship_ch_interface_close_ptr, v119, "%{public}@::%{public}@: failed to read %{public}@", buf);

      v11 = v116;
      v12 = &airship_ch_interface_close_ptr;
    }

    sub_10001AFF4();
    v236 = 0;
    v15 = 0;
    goto LABEL_33;
  }

  v15 = v14;
  v239 = v11;
  v7 = [v14 mutableCopy];
  [v7 removeObjectForKey:@"PowerTableVersionInfoDict"];
  v16 = sub_100025204();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138544130;
    v241 = v17;
    sub_10001B068();
    v243 = v6;
    v244 = v18;
    v245 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %{public}@", buf, 0x2Au);
  }

  v4 = @"assetVersion";
  v19 = [v15 objectForKey:@"assetVersion"];
  v236 = v7;
  if (!v19)
  {
    v42 = sub_100025204();
    if (sub_10001B0D0(v42))
    {
      v120 = [objc_opt_class() description];
      v128 = sub_10001B03C(v120, v121, v122, v123, v124, v125, v126, v127, v200, v209, v218, a2);
      v129 = NSStringFromSelector(v128);
      sub_10001AFA4();
      v243 = @"assetVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v130, v131, "%{public}@::%{public}@: %@ missing from %{public}@", v132, v133, v134, v135, v204, v213, v222, aSelectora, v7, v237, v6, v239, buf[0]);
    }

    sub_10001AFF4();
    goto LABEL_53;
  }

  v5 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = sub_100025204();
    if (sub_10001B0D0(v43))
    {
      v136 = [objc_opt_class() description];
      v144 = sub_10001B03C(v136, v137, v138, v139, v140, v141, v142, v143, v200, v209, v218, a2);
      v145 = NSStringFromSelector(v144);
      sub_10001AFA4();
      v243 = @"assetVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v146, v147, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v148, v149, v150, v151, v205, v214, v223, aSelectorb, v7, v237, v6, v239, buf[0]);
    }

    v4 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_53;
  }

  v6 = [v15 objectForKey:@"_MinOSRestoreVersion"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v96 = sub_100025204();
      if (sub_10001B0D0(v96))
      {
        v168 = [objc_opt_class() description];
        v176 = sub_10001B03C(v168, v169, v170, v171, v172, v173, v174, v175, v200, v209, v218, a2);
        v177 = NSStringFromSelector(v176);
        sub_10001AFA4();
        v243 = @"_MinOSRestoreVersion";
        sub_10001B00C();
        sub_10001B01C(&_mh_execute_header, v178, v179, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v180, v181, v182, v183, v207, v216, v225, aSelectorf, v7, v237, v238, v239, buf[0]);
      }

      v4 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_53;
    }
  }

  v7 = [v15 objectForKey:@"_MaxOSRestoreVersion"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = sub_100025204();
      if (sub_10001B0D0(v97))
      {
        v184 = [objc_opt_class() description];
        v192 = sub_10001B03C(v184, v185, v186, v187, v188, v189, v190, v191, v200, v209, v218, a2);
        v193 = NSStringFromSelector(v192);
        sub_10001AFA4();
        v243 = @"_MaxOSRestoreVersion";
        sub_10001B00C();
        sub_10001B01C(&_mh_execute_header, v194, v195, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v196, v197, v198, v199, v208, v217, v226, aSelectorh, v236, v237, v238, v239, buf[0]);

        goto LABEL_59;
      }

LABEL_52:
      v4 = 0;
      v8 = 0;
      goto LABEL_53;
    }
  }

  v20 = [v15 objectForKey:@"_MinOSVersion"];
  if (!v20)
  {
    v44 = sub_100025204();
    if (sub_10001B0D0(v44))
    {
      v45 = [objc_opt_class() description];
      v53 = sub_10001B03C(v45, v46, v47, v48, v49, v50, v51, v52, v200, v209, v218, a2);
      v54 = NSStringFromSelector(v53);
      sub_10001AFA4();
      v243 = @"_MinOSVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v55, v56, "%{public}@::%{public}@: %@ missing from %{public}@", v57, v58, v59, v60, v201, v210, v219, aSelectorc, v236, v237, v238, v239, buf[0]);

LABEL_59:
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  v8 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = sub_100025204();
    if (!sub_10001B0D0(v61))
    {
LABEL_45:
      v4 = 0;
LABEL_53:
      v22 = 0;
      goto LABEL_20;
    }

    v62 = [objc_opt_class() description];
    v70 = sub_10001B03C(v62, v63, v64, v65, v66, v67, v68, v69, v200, v209, v218, a2);
    v71 = NSStringFromSelector(v70);
    sub_10001AFA4();
    v243 = @"_MinOSVersion";
    sub_10001B00C();
    sub_10001B01C(&_mh_execute_header, v72, v73, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v74, v75, v76, v77, v202, v211, v220, aSelectord, v236, v237, v238, v239, buf[0]);

LABEL_57:
    goto LABEL_45;
  }

  v21 = [v15 objectForKey:@"_MaxOSVersion"];
  if (!v21)
  {
    v78 = sub_100025204();
    if (!sub_10001B0D0(v78))
    {
      goto LABEL_45;
    }

    v152 = [objc_opt_class() description];
    v160 = sub_10001B03C(v152, v153, v154, v155, v156, v157, v158, v159, v200, v209, v218, a2);
    v161 = NSStringFromSelector(v160);
    sub_10001AFA4();
    v243 = @"_MaxOSVersion";
    sub_10001B00C();
    sub_10001B01C(&_mh_execute_header, v162, v163, "%{public}@::%{public}@: %@ missing from %{public}@", v164, v165, v166, v167, v206, v215, v224, aSelectorg, v236, v237, v238, v239, buf[0]);

    goto LABEL_57;
  }

  v4 = v21;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v79 = sub_100025204();
    if (sub_10001B0D0(v79))
    {
      v80 = [objc_opt_class() description];
      v88 = sub_10001B03C(v80, v81, v82, v83, v84, v85, v86, v87, v200, v209, v218, a2);
      v89 = NSStringFromSelector(v88);
      sub_10001AFA4();
      v243 = @"_MaxOSVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v90, v91, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v92, v93, v94, v95, v203, v212, v221, aSelectore, v236, v237, v238, v239, buf[0]);
    }

    goto LABEL_53;
  }

  v11 = v239;
  v22 = [[PowerTableAsset alloc] initWithSubsystem:self->_subsystem identifier:v239 version:v5 state:a4 firstSupportedBuild:v6 lastSupportedBuild:v7 firstSupportedOS:v8 lastSupportedOS:v4];
  v12 = sub_100025204();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    *buf = 138543874;
    v241 = v23;
    sub_10001B068();
    v243 = v22;
    sub_10001B0E8(&_mh_execute_header, v12, v25, "%{public}@::%{public}@: %{public}@", buf);

LABEL_20:
    v11 = v239;
  }

LABEL_21:

LABEL_22:
  v26 = v22;

  return v22;
}

- (void)loadState
{
  v8 = buf;
  v9 = sub_100025204();
  v10 = &off_100036000;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v11 = sub_100004654();
    v3 = NSStringFromSelector(v11);
    v12 = [PowerTableAsset subsystemAsString:self->_subsystem];
    *buf = 138543874;
    v37 = v2;
    v38 = 2114;
    v39 = v3;
    v40 = 2112;
    v41 = v12;
    sub_10001B0E8(&_mh_execute_header, v9, v13, "%{public}@::%{public}@: %@", buf);
  }

  if ([objc_opt_class() directoryExistsAtPath:self->_stateDirPath] && objc_msgSend(objc_opt_class(), "fileExistsAtPath:", self->_statePlistPath))
  {
    v9 = [[NSDictionary alloc] initWithContentsOfFile:self->_statePlistPath];
    v14 = sub_100025204();
    v15 = v14;
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        v16 = sub_100004654();
        v17 = NSStringFromSelector(v16);
        statePlistPath = self->_statePlistPath;
        *buf = 138544130;
        v37 = v2;
        sub_10001B130(v17, statePlistPath);
        v42 = v19;
        v43 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %{public}@", buf, 0x2Au);
      }

      v2 = [v9 objectForKey:@"activeAssetSubDir"];
      if (v2)
      {
        v3 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v2 state:2];
        LOBYTE(a2) = v3 == 0;
      }

      else
      {
        v3 = 0;
        LOBYTE(a2) = 0;
      }

      v5 = [v9 objectForKey:@"stagedAssetSubDir"];
      if (v5)
      {
        v8 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v5 state:1];
        LOBYTE(a2) = (v8 == 0) | a2;
      }

      else
      {
        v8 = 0;
      }

      v4 = [v9 objectForKey:@"rejectedAssetSubDirs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_29;
      }

      v10 = objc_alloc_init(NSMutableSet);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v4;
      v20 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        v28 = v5;
        v29 = v3;
        v30 = v2;
        v22 = *v32;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v15);
            }

            v24 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:*(*(&v31 + 1) + 8 * i) state:3];
            if (v24)
            {
              [v10 addObject:v24];
            }

            else
            {
              LOBYTE(a2) = 1;
            }
          }

          v21 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v21);
        v4 = v15;
        v3 = v29;
        v2 = v30;
        v5 = v28;
      }

      else
      {
        v4 = v15;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_opt_class() description];
        a2 = NSStringFromSelector(a2);
        v26 = self->_statePlistPath;
        *buf = 138543874;
        v37 = v9;
        sub_10001B130(a2, v26);
        sub_10001B160(&_mh_execute_header, v15, v27, "%{public}@::%{public}@: failed to read %{public}@", buf);
      }

      sub_10001B0A0();
    }
  }

  else
  {
    sub_10001B0A0();
  }

LABEL_29:
  [(PowerTableAssetStore *)self setStagedAsset:v8];
  [sub_10001B19C() setActiveAsset:?];
  if ([v10 count])
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  [(PowerTableAssetStore *)self setRejectedAssets:v25];
  if (a2)
  {
    [(PowerTableAssetStore *)self saveState];
  }
}

- (void)saveState
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v2 = NSStringFromSelector(a2);
    v6 = [PowerTableAsset subsystemAsString:self->_subsystem];
    *buf = 138543874;
    v172 = v5;
    v173 = 2114;
    v174 = v2;
    v175 = 2112;
    v176 = v6;
    sub_10001B0E8(&_mh_execute_header, v4, v7, "%{public}@::%{public}@: %@", buf);
  }

  if (![objc_opt_class() directoryExistsAtPath:self->_storePath])
  {
    v38 = 0;
    v8 = 0;
    goto LABEL_40;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [(PowerTableAssetStore *)self activeAsset];

  if (v9)
  {
    v10 = [(PowerTableAssetStore *)self activeAsset];
    v2 = [v10 identifier];
    [sub_10001B19C() setObject:? forKey:?];
  }

  v11 = [(PowerTableAssetStore *)self stagedAsset];

  if (v11)
  {
    v12 = [(PowerTableAssetStore *)self stagedAsset];
    v2 = [v12 identifier];
    [sub_10001B19C() setObject:? forKey:?];
  }

  v13 = [(PowerTableAssetStore *)self rejectedAssets];

  if (v13)
  {
    v13 = objc_alloc_init(NSMutableArray);
    *v163 = 0u;
    v164 = 0u;
    *v165 = 0u;
    v166 = 0u;
    v2 = [(PowerTableAssetStore *)self rejectedAssets];
    v14 = [v2 countByEnumeratingWithState:v163 objects:v179 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v164;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v164 != v16)
          {
            objc_enumerationMutation(v2);
          }

          v18 = [*(v163[1] + 8 * i) identifier];
          [v13 addObject:v18];
        }

        v15 = [v2 countByEnumeratingWithState:v163 objects:v179 count:16];
      }

      while (v15);
    }

    [v8 setObject:v13 forKey:@"rejectedAssetSubDirs"];
  }

  v19 = sub_100025204();
  if (sub_10001B1C8(v19))
  {
    v20 = [objc_opt_class() description];
    v28 = sub_10001B190(v20, v21, v22, v23, v24, v25, v26, v27, aSelectora);
    v29 = NSStringFromSelector(v28);
    HIDWORD(v172) = HIDWORD(v2);
    v173 = 2114;
    v174 = v29;
    v175 = 2114;
    v176 = v8;
    sub_10001B048(&_mh_execute_header, v30, v31, "%{public}@::%{public}@: %{public}@", v32, v33, v34, v35, aSelectorb, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, 2u);
  }

  v36 = [v8 count];
  v37 = [objc_opt_class() directoryExistsAtPath:self->_stateDirPath];
  if (v36)
  {
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v60 = sub_100025204();
      if (sub_10001B1C8(v60))
      {
        v61 = [objc_opt_class() description];
        v69 = sub_10001B190(v61, v62, v63, v64, v65, v66, v67, v68, aSelectora);
        v70 = NSStringFromSelector(v69);
        stateDirPath = self->_stateDirPath;
        sub_10001B0C4();
        *(v72 + 4) = v2;
        sub_10001AFDC(v73);
        sub_10001B048(&_mh_execute_header, v74, v75, "%{public}@::%{public}@: creating %{public}@", v76, v77, v78, v79, aSelectord, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, buf[0]);
      }

      v2 = +[NSFileManager defaultManager];
      v80 = self->_stateDirPath;
      v161 = 0;
      v81 = [v2 createDirectoryAtPath:v80 withIntermediateDirectories:1 attributes:0 error:&v161];
      v36 = v161;

      if ((v81 & 1) == 0)
      {
        v140 = sub_100025204();
        if (!sub_10001B178(v140))
        {
          goto LABEL_27;
        }

        v123 = [objc_opt_class() description];
        v124 = NSStringFromSelector(aSelectora);
        v141 = self->_stateDirPath;
        sub_10001B0C4();
        *(v142 + 4) = v123;
        sub_10001AFDC(v143);
        v177 = v144;
        *(v145 + 34) = v36;
        v133 = "%{public}@::%{public}@: failed to create %{public}@: %{public}@";
        goto LABEL_42;
      }

      v2 = +[NSFileManager defaultManager];
      v169 = NSFilePosixPermissions;
      v170 = &off_10006D8D8;
      v82 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
      v83 = self->_stateDirPath;
      v160 = v36;
      v84 = [v2 setAttributes:v82 ofItemAtPath:v83 error:&v160];
      v38 = v160;

      if ((v84 & 1) == 0)
      {
        v146 = sub_100025204();
        if (!sub_10001B178(v146))
        {
LABEL_49:
          v36 = v38;
          goto LABEL_27;
        }

        v110 = [objc_opt_class() description];
        v111 = NSStringFromSelector(aSelectora);
        v147 = self->_stateDirPath;
        sub_10001B0C4();
        *(v148 + 4) = v110;
        sub_10001AFDC(v149);
        v177 = v150;
        *(v151 + 34) = v38;
LABEL_51:
        sub_10001B1A8(&_mh_execute_header, v115, v116, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", v117, v118, v119, v120, aSelectora, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, buf[0]);

        goto LABEL_49;
      }
    }

    v85 = sub_100025204();
    if (sub_10001B1C8(v85))
    {
      v86 = [objc_opt_class() description];
      v94 = sub_10001B190(v86, v87, v88, v89, v90, v91, v92, v93, aSelectora);
      v95 = NSStringFromSelector(v94);
      statePlistPath = self->_statePlistPath;
      sub_10001B0C4();
      *(v97 + 4) = v2;
      sub_10001AFDC(v98);
      sub_10001B048(&_mh_execute_header, v99, v100, "%{public}@::%{public}@: writing %{public}@", v101, v102, v103, v104, aSelectore, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, buf[0]);
    }

    v2 = [NSURL fileURLWithPath:self->_statePlistPath];
    v159 = v38;
    v105 = [sub_10001B19C() writeToURL:? error:?];
    v36 = v38;

    if (v105)
    {
      v2 = +[NSFileManager defaultManager];
      v167 = NSFilePosixPermissions;
      v168 = &off_10006D8F0;
      v106 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
      v107 = self->_statePlistPath;
      v158 = v36;
      v108 = [v2 setAttributes:v106 ofItemAtPath:v107 error:&v158];
      v38 = v158;

      if (v108)
      {
        goto LABEL_40;
      }

      v109 = sub_100025204();
      if (!sub_10001B178(v109))
      {
        goto LABEL_49;
      }

      v110 = [objc_opt_class() description];
      v111 = NSStringFromSelector(aSelectora);
      v112 = self->_statePlistPath;
      sub_10001B0C4();
      *(v113 + 4) = v110;
      sub_10001AFDC(v114);
      v177 = v121;
      *(v122 + 34) = v38;
      goto LABEL_51;
    }

    v134 = sub_100025204();
    if (sub_10001B178(v134))
    {
      v123 = [objc_opt_class() description];
      v124 = NSStringFromSelector(aSelectora);
      v135 = self->_statePlistPath;
      sub_10001B0C4();
      *(v136 + 4) = v123;
      sub_10001AFDC(v137);
      v177 = v138;
      *(v139 + 34) = v36;
      v133 = "%{public}@::%{public}@: failed to write %{public}@: %{public}@";
      goto LABEL_42;
    }
  }

  else
  {
    if (!v37)
    {
      v38 = 0;
      goto LABEL_40;
    }

    v39 = sub_100025204();
    if (sub_10001B1C8(v39))
    {
      v40 = [objc_opt_class() description];
      v48 = sub_10001B190(v40, v41, v42, v43, v44, v45, v46, v47, aSelectora);
      v49 = NSStringFromSelector(v48);
      v50 = self->_stateDirPath;
      *buf = 138543874;
      v172 = v2;
      sub_10001B118(v49);
      sub_10001B048(&_mh_execute_header, v51, v52, "%{public}@::%{public}@: removing %{public}@", v53, v54, v55, v56, aSelectorc, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, buf[0]);
    }

    v2 = +[NSFileManager defaultManager];
    v57 = self->_stateDirPath;
    v162 = 0;
    v58 = [v2 removeItemAtPath:v57 error:&v162];
    v36 = v162;

    if (v58)
    {
      goto LABEL_28;
    }

    v59 = sub_100025204();
    if (sub_10001B178(v59))
    {
      v123 = [objc_opt_class() description];
      v124 = NSStringFromSelector(aSelectora);
      v125 = self->_stateDirPath;
      *buf = 138544130;
      v172 = v123;
      sub_10001B118(v124);
      v177 = v132;
      v178 = v36;
      v133 = "%{public}@::%{public}@: failed to remove %{public}@: %{public}@";
LABEL_42:
      sub_10001B1A8(&_mh_execute_header, v126, v127, v133, v128, v129, v130, v131, aSelectora, v158, v159, v160, v161, v162, v163[0], v163[1], v164, *(&v164 + 1), v165[0], v165[1], v166, *(&v166 + 1), v167, v168, v169, v170, buf[0]);
    }
  }

LABEL_27:

LABEL_28:
  v38 = v36;
LABEL_40:
}

@end