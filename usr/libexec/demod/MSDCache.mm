@interface MSDCache
+ (id)sharedInstance;
- (BOOL)checkIfFileIsInContainer:(id)container container:(id)a4;
- (BOOL)containerExist:(id)exist;
- (BOOL)createContainer:(id)container;
- (BOOL)deleteContainer:(id)container;
- (BOOL)deleteDataBlob:(id)blob;
- (BOOL)moveFile:(id)file toLocation:(id)location fromContainer:(id)container error:(id)error;
- (BOOL)storeDataBlob:(id)blob withContainerIdentifier:(id)identifier;
- (MSDCache)init;
- (id)retrieveDataBlob:(id)blob;
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

- (BOOL)createContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileManager = [(MSDCache *)selfCopy fileManager];
  v7 = [fileManager fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage"];

  if ((v7 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = containerCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "creating container:%{public}@", &v16, 0xCu);
    }

    device = [(MSDCache *)selfCopy device];
    [device manageDemoVolume:@"Setup"];
  }

  v10 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  fileManager2 = [(MSDCache *)selfCopy fileManager];
  v12 = [fileManager2 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = +[MSDHelperAgent sharedInstance];
    v13 = [v14 prepareWorkDirectory:v10 writableByNonRoot:1];
  }

  objc_sync_exit(selfCopy);
  return v13;
}

- (BOOL)containerExist:(id)exist
{
  existCopy = exist;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileManager = [(MSDCache *)selfCopy fileManager];
  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:existCopy];
  v8 = [fileManager fileExistsAtPath:v7];

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)deleteContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

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

  objc_sync_exit(selfCopy);
  return v10;
}

- (BOOL)checkIfFileIsInContainer:(id)container container:(id)a4
{
  containerCopy = container;
  v7 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v7];
  v10 = [v9 stringByAppendingPathComponent:containerCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v12 = [fileManager fileExistsAtPath:v10];

  objc_sync_exit(selfCopy);
  return v12;
}

- (BOOL)moveFile:(id)file toLocation:(id)location fromContainer:(id)container error:(id)error
{
  fileCopy = file;
  locationCopy = location;
  containerCopy = container;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  v16 = [v15 stringByAppendingPathComponent:fileCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v21 = errorCopy;
  v18 = [fileManager moveItemAtPath:v16 toPath:locationCopy error:&v21];
  v19 = v21;

  objc_sync_exit(selfCopy);
  return v18;
}

- (BOOL)storeDataBlob:(id)blob withContainerIdentifier:(id)identifier
{
  blobCopy = blob;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:identifierCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v11 = [fileManager fileExistsAtPath:v9];

  if ((v11 & 1) == 0 && ![(MSDCache *)selfCopy createContainer:identifierCopy])
  {
    v15 = sub_100063B64();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDB94(identifierCopy, v15);
    }

    goto LABEL_10;
  }

  if ([blobCopy length] >= 0x400000)
  {
    v15 = sub_100063B64();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDC0C(v16, [blobCopy length], v15);
    }

LABEL_10:

    v13 = 0;
    v12 = @"PersistentDataBlob";
    goto LABEL_5;
  }

  v12 = [v9 stringByAppendingPathComponent:@"PersistentDataBlob"];
  v13 = [blobCopy writeToFile:v12 atomically:1];
LABEL_5:

  objc_sync_exit(selfCopy);
  return v13;
}

- (id)retrieveDataBlob:(id)blob
{
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:blobCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [v6 stringByAppendingPathComponent:@"PersistentDataBlob"];
    fileManager2 = [(MSDCache *)selfCopy fileManager];
    v11 = [fileManager2 fileExistsAtPath:v9];

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

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)deleteDataBlob:(id)blob
{
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:blobCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

  if (v8)
  {
    fileManager2 = [(MSDCache *)selfCopy fileManager];
    v13 = 0;
    v10 = [fileManager2 removeItemAtPath:v6 error:&v13];
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

  objc_sync_exit(selfCopy);
  return v10;
}

@end