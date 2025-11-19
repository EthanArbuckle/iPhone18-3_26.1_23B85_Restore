@interface _DASSystemWorkloadRecorder
+ (id)sharedInstance;
+ (unint64_t)bucketizedWorkload:(unint64_t)a3;
- (BOOL)recordWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 error:(id *)a5;
- (_DASSystemWorkloadRecorder)init;
- (void)sendToPPS:(id)a3;
@end

@implementation _DASSystemWorkloadRecorder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062344;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B2F0 != -1)
  {
    dispatch_once(&qword_10020B2F0, block);
  }

  v2 = qword_10020B2E8;

  return v2;
}

- (_DASSystemWorkloadRecorder)init
{
  v9.receiver = self;
  v9.super_class = _DASSystemWorkloadRecorder;
  v2 = [(_DASSystemWorkloadRecorder *)&v9 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"systemWorkloadRecorder"];
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.duetactivityscheduler.systemWorkloadRecorder", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (unint64_t)bucketizedWorkload:(unint64_t)a3
{
  result = 100000;
  if (a3 > 0x186A0)
  {
    return 120000;
  }

  if (a3 <= 0x13880)
  {
    result = 80000;
    if (a3 <= 0xFDE8)
    {
      if (a3 <= 0xC350)
      {
        if (a3 <= 0x9C40)
        {
          if (a3 <= 0x7530)
          {
            if (a3 <= 0x4E20)
            {
              if (a3 <= 0x2710)
              {
                if (a3 <= 0x1388)
                {
                  if (a3 <= 0x7D0)
                  {
                    if (a3 <= 0x1F4)
                    {
                      if (a3 <= 0x64)
                      {
                        if (a3)
                        {
                          return 100;
                        }

                        else
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        return 500;
                      }
                    }

                    else
                    {
                      return 2000;
                    }
                  }

                  else
                  {
                    return 5000;
                  }
                }

                else
                {
                  return 10000;
                }
              }

              else
              {
                return 20000;
              }
            }

            else
            {
              return 30000;
            }
          }

          else
          {
            return 40000;
          }
        }

        else
        {
          return 50000;
        }
      }

      else
      {
        return 65000;
      }
    }
  }

  return result;
}

- (BOOL)recordWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 error:(id *)a5
{
  v8 = [NSMutableDictionary dictionary:a3];
  v9 = [NSNumber numberWithUnsignedInteger:a4];
  [v8 setObject:v9 forKeyedSubscript:@"WorkloadType"];

  v10 = [NSNumber numberWithUnsignedInteger:[_DASSystemWorkloadRecorder bucketizedWorkload:a3]];
  [v8 setObject:v10 forKeyedSubscript:@"Size"];

  [(_DASSystemWorkloadRecorder *)self sendToPPS:v8];
  return 1;
}

- (void)sendToPPS:(id)a3
{
  v3 = a3;
  v4 = +[_DASPPSDataManager sharedInstance];
  [v4 sendDataToPPS:v3 subsystem:@"BackgroundProcessing" category:@"WorkloadInformation"];
}

@end