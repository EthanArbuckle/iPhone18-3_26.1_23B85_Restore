@interface NRDataFileHistoryHelpersMigration
+ (BOOL)archiveMigrationRoutingSlip:(id)slip;
+ (BOOL)createClassAFile;
+ (BOOL)hasClassAFile;
+ (BOOL)removeMigrationRoutingSlip;
+ (id)unarchiveMigrationRoutingSlip;
@end

@implementation NRDataFileHistoryHelpersMigration

+ (BOOL)archiveMigrationRoutingSlip:(id)slip
{
  slipCopy = slip;
  v4 = +[NRDataFilePaths pathToNanoRegistryMigrationRoutingSlip];
  v5 = objc_autoreleasePoolPush();
  v6 = [NSKeyedArchiver nr_secureArchivedDataWithRootObject:slipCopy];
  v7 = v6;
  if (!v6)
  {
    v11 = nr_daemon_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (!v12)
    {
      v9 = 0;
      goto LABEL_13;
    }

    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100103418(v4, v13);
    }

    v9 = 0;
    goto LABEL_11;
  }

  v17[0] = 0;
  v8 = [v6 writeToFile:v4 options:268435457 error:v17];
  v9 = v17[0];
  if ((v8 & 1) == 0)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (!v15)
    {
LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v9 nr_safeDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001033D4();
    }

LABEL_11:

    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (id)unarchiveMigrationRoutingSlip
{
  v2 = [NSSet setWithObject:objc_opt_class()];
  v3 = +[NRDataFilePaths pathToNanoRegistryMigrationRoutingSlip];
  v4 = [NSKeyedUnarchiver nr_secureUnarchiveObjectOfClasses:v2 withFile:v3];

  if (!v4)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = +[NRDataFilePaths pathToNanoRegistryMigrationRoutingSlip];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failure loading migration routing slip file %{public}@: Unarchiver returned nil.", &v10, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)removeMigrationRoutingSlip
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[NRDataFilePaths pathToNanoRegistryMigrationRoutingSlip];
  v9 = 0;
  [v2 removeItemAtPath:v3 error:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100103524(v4, v7);
      }
    }
  }

  return v4 == 0;
}

+ (BOOL)createClassAFile
{
  v2 = +[NRDataFilePaths pathToNanoRegistryClassAFile];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    if (!v6)
    {
      v8 = 1;
      goto LABEL_17;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "createClassAFile: File already exists", v14, 2u);
    }

    v8 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "createClassAFile: Class A file does not exist", buf, 2u);
      }
    }

    v7 = [@"Class A file\n" dataUsingEncoding:4];
    v8 = [v7 writeToFile:v2 options:536870913 error:0];
    if ((v8 & 1) == 0)
    {
      v10 = nr_daemon_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = nr_daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "createClassAFile: Failed to create Class A file", v15, 2u);
        }
      }
    }
  }

LABEL_17:
  return v8;
}

+ (BOOL)hasClassAFile
{
  v2 = +[NRDataFilePaths pathToNanoRegistryClassAFile];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NOT ";
      if (v4)
      {
        v8 = "";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Class A file %sfound!", &v10, 0xCu);
    }
  }

  return v4;
}

@end