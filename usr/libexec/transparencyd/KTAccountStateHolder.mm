@interface KTAccountStateHolder
- (BOOL)persistAccountChanges:(id)changes;
- (KTAccountStateHolder)initWithFileStorage:(id)storage;
- (id)loadAccountMetadata;
- (void)clearAccountMetadata;
@end

@implementation KTAccountStateHolder

- (KTAccountStateHolder)initWithFileStorage:(id)storage
{
  storageCopy = storage;
  if (storageCopy)
  {
LABEL_4:
    v11.receiver = self;
    v11.super_class = KTAccountStateHolder;
    v7 = [(KTAccountStateHolder *)&v11 init];
    v8 = v7;
    if (v7)
    {
      [(KTAccountStateHolder *)v7 setUrl:storageCopy];
    }

    goto LABEL_11;
  }

  v12 = 0;
  v5 = [TransparencyFileSupport transparencyFilesPath:&v12];
  v6 = v12;
  if (v5)
  {
    storageCopy = [v5 URLByAppendingPathComponent:@"AccountState.pblist"];

    goto LABEL_4;
  }

  if (qword_10039CE78 != -1)
  {
    sub_10026004C();
  }

  v9 = qword_10039CE80;
  if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TransparencyFileSupport transparencyFilesPath: %@", buf, 0xCu);
  }

  storageCopy = 0;
  v8 = 0;
LABEL_11:

  return v8;
}

- (id)loadAccountMetadata
{
  v2 = [(KTAccountStateHolder *)self url];
  v3 = [NSData dataWithContentsOfURL:v2];

  if (v3)
  {
    v8 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      if (qword_10039CE78 != -1)
      {
        sub_100260074();
      }

      v6 = qword_10039CE80;
      if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "loadAccountMetadata failed: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)persistAccountChanges:(id)changes
{
  changesCopy = changes;
  loadAccountMetadata = [(KTAccountStateHolder *)self loadAccountMetadata];
  if (!loadAccountMetadata)
  {
    loadAccountMetadata = objc_alloc_init(KTAccountState);
  }

  v6 = changesCopy[2](changesCopy, loadAccountMetadata);

  v19 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v19];
  v8 = v19;
  if (!v7)
  {
    if (qword_10039CE78 != -1)
    {
      sub_1002600EC();
    }

    v12 = qword_10039CE80;
    if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "persistAccountChanges failed archive: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v9 = [(KTAccountStateHolder *)self url];
  v18 = v8;
  [v7 writeToURL:v9 options:268435457 error:&v18];
  v10 = v18;

  if (v10)
  {
    if (qword_10039CE78 != -1)
    {
      sub_10026009C();
    }

    v11 = qword_10039CE80;
    if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "persistAccountChanges failed write: %@", buf, 0xCu);
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (qword_10039CE78 != -1)
  {
    sub_1002600C4();
  }

  v15 = qword_10039CE80;
  v13 = 1;
  if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [(KTAccountStateHolder *)self url];
    *buf = 138412290;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "wrote account metadata: %@", buf, 0xCu);
  }

LABEL_16:

  return v13;
}

- (void)clearAccountMetadata
{
  if (qword_10039CE78 != -1)
  {
    sub_100260114();
  }

  v3 = qword_10039CE80;
  if (os_log_type_enabled(qword_10039CE80, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = [(KTAccountStateHolder *)self url];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "deleting account metadata: %@", &v8, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [(KTAccountStateHolder *)self url];
  [v6 removeItemAtURL:v7 error:0];
}

@end