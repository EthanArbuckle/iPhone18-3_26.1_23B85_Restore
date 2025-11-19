@interface OSIAlarmMonitor
- (OSIAlarmMonitor)init;
- (id)nextAlarmFireDateBetweenDate:(id)a3 andDate:(id)a4;
@end

@implementation OSIAlarmMonitor

- (OSIAlarmMonitor)init
{
  v6.receiver = self;
  v6.super_class = OSIAlarmMonitor;
  v2 = [(OSIAlarmMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTAlarmManager);
    alarmManager = v2->_alarmManager;
    v2->_alarmManager = v3;
  }

  return v2;
}

- (id)nextAlarmFireDateBetweenDate:(id)a3 andDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    [v7 timeIntervalSinceDate:v6];
    if (v10 <= 0.0)
    {
      v9 = 0;
    }

    else
    {
      v11 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v8];
      v12 = [(MTAlarmManager *)self->_alarmManager nextAlarmsInRange:v11 maxCount:64 includeSleepAlarm:1];
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_10000321C;
      v23 = sub_100003550;
      v24 = 0;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100010054;
      v16[3] = &unk_100094C98;
      v18 = &v19;
      v13 = dispatch_semaphore_create(0);
      v17 = v13;
      v14 = [v12 addCompletionBlock:v16];
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      v9 = v20[5];

      _Block_object_dispose(&v19, 8);
    }
  }

  return v9;
}

@end