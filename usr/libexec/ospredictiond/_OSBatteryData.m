@interface _OSBatteryData
+ (id)sharedInstance;
- (_OSBatteryData)init;
- (id)batteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4;
- (id)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withError:(id *)a5;
- (void)resetState;
@end

@implementation _OSBatteryData

- (_OSBatteryData)init
{
  v10.receiver = self;
  v10.super_class = _OSBatteryData;
  v2 = [(_OSBatteryData *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    dateToWeekdayMedian = v2->_dateToWeekdayMedian;
    v2->_dateToWeekdayMedian = v3;

    v5 = +[NSMutableDictionary dictionary];
    dateToWeekendMedian = v2->_dateToWeekendMedian;
    v2->_dateToWeekendMedian = v5;

    v7 = os_log_create("com.apple.osintelligence", "batteryData");
    log = v2->_log;
    v2->_log = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010344;
  block[3] = &unk_100094818;
  block[4] = a1;
  if (qword_1000B69C8 != -1)
  {
    dispatch_once(&qword_1000B69C8, block);
  }

  v2 = qword_1000B69C0;

  return v2;
}

- (void)resetState
{
  v3 = +[NSMutableDictionary dictionary];
  dateToWeekdayMedian = self->_dateToWeekdayMedian;
  self->_dateToWeekdayMedian = v3;

  v5 = +[NSMutableDictionary dictionary];
  dateToWeekendMedian = self->_dateToWeekendMedian;
  self->_dateToWeekendMedian = v5;

  _objc_release_x1();
}

- (id)batteryLevelByTimeSlot:(unint64_t)a3 dayType:(unint64_t)a4
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10000322C;
  v50 = sub_100003558;
  v51 = +[NSMutableArray array];
  v7 = 0x5A0 / a3;
  if (a3 <= 0x5A0)
  {
    v8 = 0;
    do
    {
      v9 = +[NSMutableArray array];
      [v47[5] addObject:v9];

      ++v8;
    }

    while (v7 > v8);
  }

  v23 = self;
  v24 = a3;
  v25 = a4;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_10000322C;
  v44[4] = sub_100003558;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_10000322C;
  v42[4] = sub_100003558;
  v43 = +[NSMutableArray array];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = -1;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_10000322C;
  v39[4] = sub_100003558;
  v40 = 0;
  v10 = +[NSTimeZone localTimeZone];
  v27 = BiomeLibrary();
  v26 = [v27 Device];
  v11 = [v26 Power];
  v12 = [v11 BatteryLevel];
  v13 = [v12 publisher];
  v14 = BiomeLibrary();
  v15 = [v14 Device];
  v16 = [v15 TimeZone];
  v17 = [v16 publisher];
  v18 = [v13 orderedMergeWithOther:v17 comparator:&stru_100094CB8];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000108D0;
  v38[3] = &unk_100094B80;
  v38[4] = v23;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100010934;
  v28[3] = &unk_100094CE0;
  v30 = v39;
  v28[4] = v23;
  v19 = v10;
  v36 = v24;
  v37 = v7;
  v29 = v19;
  v31 = v44;
  v32 = v42;
  v33 = v41;
  v34 = &v46;
  v35 = v25;
  v20 = [v18 sinkWithCompletion:v38 receiveInput:v28];

  v21 = v47[5];
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  return v21;
}

- (id)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withError:(id *)a5
{
  v9 = +[NSDate date];
  v10 = +[NSCalendar currentCalendar];
  v11 = v10;
  if (a3 == 2)
  {
    v13 = 16;
    v12 = [v10 dateBySettingUnit:16 value:2 ofDate:v9 options:4];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12 = [OSIntelligenceUtilities midnightDateFrom:v9];
    v13 = 8;
LABEL_5:
    v14 = *(&self->super.isa + v13);
    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
LABEL_7:
  v15 = [v14 objectForKeyedSubscript:v12];

  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:v12];
  }

  else
  {
    v26 = a5;
    v27 = v11;
    v17 = [(_OSBatteryData *)self batteryLevelByTimeSlot:a4 dayType:a3];
    v16 = +[NSMutableArray array];
    if ([v17 count])
    {
      v18 = 0;
      do
      {
        v19 = [v17 objectAtIndexedSubscript:v18];
        [OSIntelligenceUtilities medianOf:v19];
        v20 = [NSNumber numberWithDouble:?];
        [v16 setObject:v20 atIndexedSubscript:v18];

        ++v18;
      }

      while ([v17 count] > v18);
    }

    if ([v16 count])
    {
      v21 = 0;
      while (1)
      {
        v22 = [v16 objectAtIndexedSubscript:v21];
        v23 = [v22 integerValue];

        if (v23)
        {
          break;
        }

        if ([v16 count] <= ++v21)
        {
          goto LABEL_16;
        }
      }

      v24 = [v16 copy];
      [v14 setObject:v24 forKeyedSubscript:v12];
    }

    else
    {
LABEL_16:
      *v26 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
    }

    v11 = v27;
  }

  return v16;
}

@end