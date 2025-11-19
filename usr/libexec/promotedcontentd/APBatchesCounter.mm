@interface APBatchesCounter
- (APBatchesCounter)initWithFileManager:(id)a3 startDirectory:(id)a4;
- (int64_t)count;
@end

@implementation APBatchesCounter

- (APBatchesCounter)initWithFileManager:(id)a3 startDirectory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = APBatchesCounter;
  v9 = [(APBatchesCounter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileManager, a3);
    objc_storeStrong(&v10->_startDirectory, a4);
  }

  return v10;
}

- (int64_t)count
{
  v3 = [(APBatchesCounter *)self fileManager];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(APBatchesCounter *)self startDirectory];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335F9C;
  v7[3] = &unk_10047E870;
  v7[4] = &v8;
  [v3 dfsWithStartPath:v4 nodeCallback:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end