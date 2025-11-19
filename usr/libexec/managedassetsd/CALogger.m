@interface CALogger
+ (void)initializeTimeBase:(BOOL)a3;
+ (void)logAssetTaskMeasurements:(unint64_t)a3 assetState:(unint64_t)a4 elapsed:(double)a5 error:(id)a6;
+ (void)logWithCoreAnalytics:(const char *)a3 client:(id *)a4 startTS:(unint64_t)a5 error:(id)a6;
+ (void)logWithCoreAnalytics:(const char *)a3 clientBundle:(id)a4 startTS:(unint64_t)a5 error:(id)a6;
@end

@implementation CALogger

+ (void)initializeTimeBase:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A868;
  v3[3] = &unk_100115FD8;
  v3[4] = a1;
  v4 = a3;
  if (qword_1001293C8 != -1)
  {
    dispatch_once(&qword_1001293C8, v3);
  }
}

+ (void)logWithCoreAnalytics:(const char *)a3 client:(id *)a4 startTS:(unint64_t)a5 error:(id)a6
{
  v9 = a6;
  v10 = v9;
  if (byte_100127CC8 == 1)
  {
    if (v9)
    {
      v11 = [v9 code];
    }

    else
    {
      v11 = 0;
    }

    v12 = mach_continuous_time();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AA68;
    block[3] = &unk_100116018;
    v13 = *&a4->var0[4];
    v15 = *a4->var0;
    v16 = v13;
    block[4] = a3;
    block[5] = v11;
    block[6] = (*&qword_100127CC0 * (v12 - a5));
    dispatch_async(qword_1001293D0, block);
  }
}

+ (void)logWithCoreAnalytics:(const char *)a3 clientBundle:(id)a4 startTS:(unint64_t)a5 error:(id)a6
{
  v7 = a4;
  v8 = a6;
  v9 = v8;
  if (byte_100127CC8 == 1)
  {
    if (v8)
    {
      [v8 code];
    }

    mach_continuous_time();
    v10 = v7;
    AnalyticsSendEventLazy();
  }
}

+ (void)logAssetTaskMeasurements:(unint64_t)a3 assetState:(unint64_t)a4 elapsed:(double)a5 error:(id)a6
{
  v6 = a6;
  v7 = v6;
  if (byte_100127CC8 == 1)
  {
    if (v6)
    {
      [v6 code];
    }

    AnalyticsSendEventLazy();
  }
}

@end