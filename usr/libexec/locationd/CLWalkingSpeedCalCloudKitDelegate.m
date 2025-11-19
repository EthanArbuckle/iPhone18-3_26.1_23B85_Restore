@interface CLWalkingSpeedCalCloudKitDelegate
- (BOOL)convertDataBlob:(id)a3 toBoundStatement:(const void *)a4;
- (CLWalkingSpeedCalCloudKitDelegate)initWithWalkingSpeedCalRecorderDb:(void *)a3;
- (id)convertStatementToDataBlobs:(const void *)a3;
@end

@implementation CLWalkingSpeedCalCloudKitDelegate

- (CLWalkingSpeedCalCloudKitDelegate)initWithWalkingSpeedCalRecorderDb:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLWalkingSpeedCalCloudKitDelegate;
  result = [(CLWalkingSpeedCalCloudKitDelegate *)&v5 init];
  if (result)
  {
    result->fWalkingSpeedCalDb = a3;
  }

  return result;
}

- (id)convertStatementToDataBlobs:(const void *)a3
{
  v7 = 0;
  fWalkingSpeedCalDb = self->fWalkingSpeedCalDb;
  if (fWalkingSpeedCalDb && !sub_100970954(fWalkingSpeedCalDb, a3, &v7))
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

- (BOOL)convertDataBlob:(id)a3 toBoundStatement:(const void *)a4
{
  fWalkingSpeedCalDb = self->fWalkingSpeedCalDb;
  if (fWalkingSpeedCalDb)
  {
    v5 = *a4 == 0;
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
    v7 = sub_100970BC8(fWalkingSpeedCalDb, a3, &v12);
    v8 = sub_100008880(*a4);
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