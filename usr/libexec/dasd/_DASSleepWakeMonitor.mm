@interface _DASSleepWakeMonitor
+ (id)sharedMonitorWithDaemon:(id)a3;
@end

@implementation _DASSleepWakeMonitor

+ (id)sharedMonitorWithDaemon:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101810;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B8B8 != -1)
  {
    dispatch_once(&qword_10020B8B8, block);
  }

  v3 = qword_10020B8C0;

  return v3;
}

@end