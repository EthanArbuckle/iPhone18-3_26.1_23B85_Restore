@interface _APRSBiomeAppKillEventWriter
+ (id)sharedInstance;
- (_APRSBiomeAppKillEventWriter)init;
@end

@implementation _APRSBiomeAppKillEventWriter

+ (id)sharedInstance
{
  if (qword_10020B428 != -1)
  {
    sub_100120EBC();
  }

  v3 = qword_10020B430;

  return v3;
}

- (_APRSBiomeAppKillEventWriter)init
{
  v9.receiver = self;
  v9.super_class = _APRSBiomeAppKillEventWriter;
  v2 = [(_APRSBiomeAppKillEventWriter *)&v9 init];
  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006F7F8;
    v7[3] = &unk_1001B6D80;
    v8 = os_log_create("com.apple.aprs", "appResume.AppKillWriter");
    v3 = v8;
    v4 = [RBSProcessMonitor monitorWithConfiguration:v7];
    appKillMonitor = v2->_appKillMonitor;
    v2->_appKillMonitor = v4;
  }

  return v2;
}

@end