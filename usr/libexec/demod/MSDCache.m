@interface MSDCache
+ (id)sharedInstance;
- (BOOL)checkIfFileIsInContainer:(id)a3 container:(id)a4;
- (BOOL)containerExist:(id)a3;
- (BOOL)createContainer:(id)a3;
- (BOOL)deleteContainer:(id)a3;
- (BOOL)deleteDataBlob:(id)a3;
- (BOOL)moveFile:(id)a3 toLocation:(id)a4 fromContainer:(id)a5 error:(id)a6;
- (BOOL)storeDataBlob:(id)a3 withContainerIdentifier:(id)a4;
- (MSDCache)init;
- (id)retrieveDataBlob:(id)a3;
@end

@implementation MSDCache

+ (id)sharedInstance
{
  if (qword_1001A5690 != -1)
  {
    sub_1000CDAEC();
  }

  v3 = qword_1001A5688;

  return v3;
}

- (MSDCache)init
{
  v7.receiver = self;
  v7.super_class = MSDCache;
  v2 = [(MSDCache *)&v7 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(MSDCache *)v2 setFileManager:v3];

    v4 = +[MSDTargetDevice sharedInstance];
    [(MSDCache *)v2 setDevice:v4];

    v5 = v2;
  }

  return v2;
}

- (BOOL)createContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDCache *)v5 fileManager];
  v7 = [v6 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage"];

  if ((v7 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "creating container:%{public}@", &v16, 0xCu);
    }

    v9 = [(MSDCache *)v5 device];
    [v9 manageDemoVolume:@"Setup"];
  }

  v10 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v4];
  v11 = [(MSDCache *)v5 fileManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = +[MSDHelperAgent sharedInstance];
    v13 = [v14 prepareWorkDirectory:v10 writableByNonRoot:1];
  }

  objc_sync_exit(v5);
  return v13;
}

- (BOOL)containerExist:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDCache *)v5 fileManager];
  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v4];
  v8 = [v6 fileExistsAtPath:v7];

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)deleteContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v4];
  v7 = [(MSDCache *)v5 fileManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v12 = sub_100063B64();
    sub_1000CDB00(v12);
    v10 = 0;
  }

  else
  {
    v9 = +[MSDHelperAgent sharedInstance];
    v10 = [v9 removeWorkDirectory:v6];
  }

  objc_sync_exit(v5);
  return v10;
}

- (BOOL)checkIfFileIsInContainer:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v7];
  v10 = [v9 stringByAppendingPathComponent:v6];
  v11 = [(MSDCache *)v8 fileManager];
  v12 = [v11 fileExistsAtPath:v10];

  objc_sync_exit(v8);
  return v12;
}

- (BOOL)moveFile:(id)a3 toLocation:(id)a4 fromContainer:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  v15 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v12];
  v16 = [v15 stringByAppendingPathComponent:v10];
  v17 = [(MSDCache *)v14 fileManager];
  v21 = v13;
  v18 = [v17 moveItemAtPath:v16 toPath:v11 error:&v21];
  v19 = v21;

  objc_sync_exit(v14);
  return v18;
}

- (BOOL)storeDataBlob:(id)a3 withContainerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v7];
  v10 = [(MSDCache *)v8 fileManager];
  v11 = [v10 fileExistsAtPath:v9];

  if ((v11 & 1) == 0 && ![(MSDCache *)v8 createContainer:v7])
  {
    v15 = sub_100063B64();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDB94(v7, v15);
    }

    goto LABEL_10;
  }

  if ([v6 length] >= 0x400000)
  {
    v15 = sub_100063B64();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDC0C(v16, [v6 length], v15);
    }

LABEL_10:

    v13 = 0;
    v12 = @"PersistentDataBlob";
    goto LABEL_5;
  }

  v12 = [v9 stringByAppendingPathComponent:@"PersistentDataBlob"];
  v13 = [v6 writeToFile:v12 atomically:1];
LABEL_5:

  objc_sync_exit(v8);
  return v13;
}

- (id)retrieveDataBlob:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v4];
  v7 = [(MSDCache *)v5 fileManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [v6 stringByAppendingPathComponent:@"PersistentDataBlob"];
    v10 = [(MSDCache *)v5 fileManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v12 = [NSData dataWithContentsOfFile:v9];
      goto LABEL_8;
    }
  }

  else
  {
    v13 = sub_100063B64();
    sub_1000CDC54(v13);
    v9 = @"PersistentDataBlob";
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "persistent data blob file does not exist:%{public}@", &v16, 0xCu);
  }

  v12 = 0;
LABEL_8:

  objc_sync_exit(v5);

  return v12;
}

- (BOOL)deleteDataBlob:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v4];
  v7 = [(MSDCache *)v5 fileManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [(MSDCache *)v5 fileManager];
    v13 = 0;
    v10 = [v9 removeItemAtPath:v6 error:&v13];
    v11 = v13;
  }

  else
  {
    v11 = sub_100063B64();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDCE8(v11);
    }

    v10 = 0;
  }

  objc_sync_exit(v5);
  return v10;
}

@end