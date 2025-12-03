@interface APBatchesCounter
- (APBatchesCounter)initWithFileManager:(id)manager startDirectory:(id)directory;
- (int64_t)count;
@end

@implementation APBatchesCounter

- (APBatchesCounter)initWithFileManager:(id)manager startDirectory:(id)directory
{
  managerCopy = manager;
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = APBatchesCounter;
  v9 = [(APBatchesCounter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileManager, manager);
    objc_storeStrong(&v10->_startDirectory, directory);
  }

  return v10;
}

- (int64_t)count
{
  fileManager = [(APBatchesCounter *)self fileManager];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  startDirectory = [(APBatchesCounter *)self startDirectory];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335F9C;
  v7[3] = &unk_10047E870;
  v7[4] = &v8;
  [fileManager dfsWithStartPath:startDirectory nodeCallback:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end