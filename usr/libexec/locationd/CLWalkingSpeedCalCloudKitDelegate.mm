@interface CLWalkingSpeedCalCloudKitDelegate
- (BOOL)convertDataBlob:(id)blob toBoundStatement:(const void *)statement;
- (CLWalkingSpeedCalCloudKitDelegate)initWithWalkingSpeedCalRecorderDb:(void *)db;
- (id)convertStatementToDataBlobs:(const void *)blobs;
@end

@implementation CLWalkingSpeedCalCloudKitDelegate

- (CLWalkingSpeedCalCloudKitDelegate)initWithWalkingSpeedCalRecorderDb:(void *)db
{
  v5.receiver = self;
  v5.super_class = CLWalkingSpeedCalCloudKitDelegate;
  result = [(CLWalkingSpeedCalCloudKitDelegate *)&v5 init];
  if (result)
  {
    result->fWalkingSpeedCalDb = db;
  }

  return result;
}

- (id)convertStatementToDataBlobs:(const void *)blobs
{
  v7 = 0;
  fWalkingSpeedCalDb = self->fWalkingSpeedCalDb;
  if (fWalkingSpeedCalDb && !sub_100970954(fWalkingSpeedCalDb, blobs, &v7))
  {
    if (qword_1025D4430 != -1)
    {
      sub_10191E238();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "convertToDataBlobWithCode failed", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191E260();
    }
  }

  return v7;
}

- (BOOL)convertDataBlob:(id)blob toBoundStatement:(const void *)statement
{
  fWalkingSpeedCalDb = self->fWalkingSpeedCalDb;
  if (fWalkingSpeedCalDb)
  {
    v5 = *statement == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v7 = sub_100970BC8(fWalkingSpeedCalDb, blob, &v12);
    v8 = sub_100008880(*statement);
    if (v8)
    {
      v9 = !v7;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      LOBYTE(v7) = 1;
      if (sub_1001A3BD4(v8, 1, *&v12) && sub_1001A3BD4(v10, 2, *(&v12 + 1)) && sub_1001A3BD4(v10, 3, *&v13) && sub_1001A3BD4(v10, 4, *(&v13 + 1)) && sub_1001A3BD4(v10, 5, *&v14))
      {
        sub_1001A3BD4(v10, 6, *(&v14 + 1));
      }
    }
  }

  return v7;
}

@end