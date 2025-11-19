@interface CLPredictedWalkDistanceCloudKitDelegate
- (BOOL)convertDataBlob:(id)a3 toBoundStatement:(const void *)a4;
- (CLPredictedWalkDistanceCloudKitDelegate)initWithPredictedWalkDistanceBoutRecorderDb:(void *)a3;
- (id)convertStatementToDataBlobs:(const void *)a3;
@end

@implementation CLPredictedWalkDistanceCloudKitDelegate

- (CLPredictedWalkDistanceCloudKitDelegate)initWithPredictedWalkDistanceBoutRecorderDb:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLPredictedWalkDistanceCloudKitDelegate;
  result = [(CLPredictedWalkDistanceCloudKitDelegate *)&v5 init];
  if (result)
  {
    result->fPredictedWalkDistanceBoutDb = a3;
  }

  return result;
}

- (id)convertStatementToDataBlobs:(const void *)a3
{
  v7 = 0;
  fPredictedWalkDistanceBoutDb = self->fPredictedWalkDistanceBoutDb;
  if (fPredictedWalkDistanceBoutDb && !sub_100FFEC74(fPredictedWalkDistanceBoutDb, a3, &v7))
  {
    if (qword_1025D4430 != -1)
    {
      sub_1018809AC();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "convertToDataBlobWithCode failed", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018809D4();
    }
  }

  return v7;
}

- (BOOL)convertDataBlob:(id)a3 toBoundStatement:(const void *)a4
{
  fPredictedWalkDistanceBoutDb = self->fPredictedWalkDistanceBoutDb;
  if (fPredictedWalkDistanceBoutDb)
  {
    v5 = *a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0;
    v16 = 0.0;
    v17 = 0;
    v15 = 0.0;
    v18 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v8 = sub_100FFEF08(fPredictedWalkDistanceBoutDb, a3, &v11);
    v9 = sub_100008880(*a4);
    if (v9)
    {
      if (v8)
      {
        v10 = v9;
        LOBYTE(v8) = 1;
        if (sub_1001A3BD4(v9, 1, v12) && sub_1001A3BD4(v10, 2, v13) && sub_1001452C8(v10, 3, v14) && sub_1001A3BD4(v10, 4, v15) && sub_1001A3BD4(v10, 5, v16) && sub_1001452C8(v10, 6, v17) && sub_1001452C8(v10, 7, SHIDWORD(v17)) && sub_1001452C8(v10, 8, v18) && sub_1001A3BD4(v10, 9, *&v19))
        {
          sub_100073700(v10, 10, SDWORD2(v19));
        }
      }
    }
  }

  return v8;
}

@end