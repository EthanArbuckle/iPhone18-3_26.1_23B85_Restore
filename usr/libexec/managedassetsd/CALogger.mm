@interface CALogger
+ (void)initializeTimeBase:(BOOL)base;
+ (void)logAssetTaskMeasurements:(unint64_t)measurements assetState:(unint64_t)state elapsed:(double)elapsed error:(id)error;
+ (void)logWithCoreAnalytics:(const char *)analytics client:(id *)client startTS:(unint64_t)s error:(id)error;
+ (void)logWithCoreAnalytics:(const char *)analytics clientBundle:(id)bundle startTS:(unint64_t)s error:(id)error;
@end

@implementation CALogger

+ (void)initializeTimeBase:(BOOL)base
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A868;
  v3[3] = &unk_100115FD8;
  v3[4] = self;
  baseCopy = base;
  if (qword_1001293C8 != -1)
  {
    dispatch_once(&qword_1001293C8, v3);
  }
}

+ (void)logWithCoreAnalytics:(const char *)analytics client:(id *)client startTS:(unint64_t)s error:(id)error
{
  errorCopy = error;
  v10 = errorCopy;
  if (byte_100127CC8 == 1)
  {
    if (errorCopy)
    {
      code = [errorCopy code];
    }

    else
    {
      code = 0;
    }

    v12 = mach_continuous_time();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AA68;
    block[3] = &unk_100116018;
    v13 = *&client->var0[4];
    v15 = *client->var0;
    v16 = v13;
    block[4] = analytics;
    block[5] = code;
    block[6] = (*&qword_100127CC0 * (v12 - s));
    dispatch_async(qword_1001293D0, block);
  }
}

+ (void)logWithCoreAnalytics:(const char *)analytics clientBundle:(id)bundle startTS:(unint64_t)s error:(id)error
{
  bundleCopy = bundle;
  errorCopy = error;
  v9 = errorCopy;
  if (byte_100127CC8 == 1)
  {
    if (errorCopy)
    {
      [errorCopy code];
    }

    mach_continuous_time();
    v10 = bundleCopy;
    AnalyticsSendEventLazy();
  }
}

+ (void)logAssetTaskMeasurements:(unint64_t)measurements assetState:(unint64_t)state elapsed:(double)elapsed error:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (byte_100127CC8 == 1)
  {
    if (errorCopy)
    {
      [errorCopy code];
    }

    AnalyticsSendEventLazy();
  }
}

@end