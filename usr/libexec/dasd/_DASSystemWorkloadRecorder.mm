@interface _DASSystemWorkloadRecorder
+ (id)sharedInstance;
+ (unint64_t)bucketizedWorkload:(unint64_t)workload;
- (BOOL)recordWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error;
- (_DASSystemWorkloadRecorder)init;
- (void)sendToPPS:(id)s;
@end

@implementation _DASSystemWorkloadRecorder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062344;
  block[3] = &unk_1001B54A0;
  block[4] = self;
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

+ (unint64_t)bucketizedWorkload:(unint64_t)workload
{
  result = 100000;
  if (workload > 0x186A0)
  {
    return 120000;
  }

  if (workload <= 0x13880)
  {
    result = 80000;
    if (workload <= 0xFDE8)
    {
      if (workload <= 0xC350)
      {
        if (workload <= 0x9C40)
        {
          if (workload <= 0x7530)
          {
            if (workload <= 0x4E20)
            {
              if (workload <= 0x2710)
              {
                if (workload <= 0x1388)
                {
                  if (workload <= 0x7D0)
                  {
                    if (workload <= 0x1F4)
                    {
                      if (workload <= 0x64)
                      {
                        if (workload)
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

- (BOOL)recordWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error
{
  v8 = [NSMutableDictionary dictionary:workload];
  v9 = [NSNumber numberWithUnsignedInteger:category];
  [v8 setObject:v9 forKeyedSubscript:@"WorkloadType"];

  v10 = [NSNumber numberWithUnsignedInteger:[_DASSystemWorkloadRecorder bucketizedWorkload:workload]];
  [v8 setObject:v10 forKeyedSubscript:@"Size"];

  [(_DASSystemWorkloadRecorder *)self sendToPPS:v8];
  return 1;
}

- (void)sendToPPS:(id)s
{
  sCopy = s;
  v4 = +[_DASPPSDataManager sharedInstance];
  [v4 sendDataToPPS:sCopy subsystem:@"BackgroundProcessing" category:@"WorkloadInformation"];
}

@end