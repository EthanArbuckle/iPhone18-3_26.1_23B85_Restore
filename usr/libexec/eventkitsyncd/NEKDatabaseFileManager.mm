@interface NEKDatabaseFileManager
- (id)pairingID;
- (id)pairingStorePath;
- (id)syncStateDBPathFor:(id)a3;
@end

@implementation NEKDatabaseFileManager

- (id)syncStateDBPathFor:(id)a3
{
  v4 = a3;
  v5 = [(NEKDatabaseFileManager *)self pairingStorePath];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByAppendingPathComponent:@"EventKitSync"];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if ((v9 & 1) == 0)
    {
      v10 = +[NSFileManager defaultManager];
      [v10 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v11 = [v7 stringByAppendingPathComponent:v4];
  }

  else
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100071F64(v12);
    }

    v11 = 0;
  }

  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100071FA8(v11, v13);
  }

  return v11;
}

- (id)pairingID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100036EC4;
  v10 = sub_100036ED4;
  v11 = 0;
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100036EDC;
  v5[3] = &unk_1000B5678;
  v5[4] = &v6;
  [v2 waitForPairingStorePathPairingID:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)pairingStorePath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100036EC4;
  v10 = sub_100036ED4;
  v11 = 0;
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037040;
  v5[3] = &unk_1000B5678;
  v5[4] = &v6;
  [v2 waitForPairingStorePathPairingID:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end