@interface HTProcessLaunchExitRecord
+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)hang endTime:(unint64_t)time;
+ (void)fetchProcessRecords;
- (HTProcessLaunchExitRecord)initWithCoder:(id)coder;
- (HTProcessLaunchExitRecord)initWithInfo:(id)info pid:(int)pid spawnTimestamp:(unint64_t)timestamp exitTimestamp:(unint64_t)exitTimestamp exitReasonCode:(unint64_t)code exitReasonNamespace:(unsigned __int8)namespace jetsam_priority:(unsigned __int16)jetsam_priority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HTProcessLaunchExitRecord

- (HTProcessLaunchExitRecord)initWithInfo:(id)info pid:(int)pid spawnTimestamp:(unint64_t)timestamp exitTimestamp:(unint64_t)exitTimestamp exitReasonCode:(unint64_t)code exitReasonNamespace:(unsigned __int8)namespace jetsam_priority:(unsigned __int16)jetsam_priority
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = HTProcessLaunchExitRecord;
  v17 = [(HTProcessLaunchExitRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processName, info);
    v18->_pid = pid;
    v18->_spawnTimestamp = timestamp;
    v18->_exitTimestamp = exitTimestamp;
    v18->_exitReasonCode = code;
    v18->_exitReasonNamespace = namespace;
    v18->_jetsam_priority = jetsam_priority;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  coderCopy = coder;
  [coderCopy encodeObject:processName forKey:@"processName"];
  [coderCopy encodeInt64:self->_pid forKey:@"pid"];
  [coderCopy encodeInt64:self->_spawnTimestamp forKey:@"spawnTimestamp"];
  [coderCopy encodeInt64:self->_exitTimestamp forKey:@"exitTimestamp"];
  [coderCopy encodeInt64:self->_exitReasonCode forKey:@"exitReasonCode"];
  [coderCopy encodeInt:self->_exitReasonNamespace forKey:@"exitReasonNamespace"];
  [coderCopy encodeInt:self->_jetsam_priority forKey:@"jetsamPriority"];
}

- (HTProcessLaunchExitRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
  v6 = [coderCopy decodeInt64ForKey:@"pid"];
  v7 = [coderCopy decodeInt64ForKey:@"spawnTimestamp"];
  v8 = [coderCopy decodeInt64ForKey:@"exitTimestamp"];
  v9 = [coderCopy decodeInt64ForKey:@"exitReasonCode"];
  v10 = [coderCopy decodeIntForKey:@"exitReasonNamespace"];
  v11 = [coderCopy decodeIntForKey:@"jetsamPriority"];

  LOWORD(v14) = v11;
  v12 = [(HTProcessLaunchExitRecord *)self initWithInfo:v5 pid:v6 spawnTimestamp:v7 exitTimestamp:v8 exitReasonCode:v9 exitReasonNamespace:v10 jetsam_priority:v14];

  return v12;
}

+ (void)fetchProcessRecords
{
  if (qword_100090450 != -1)
  {
    sub_100040520();
  }

  v2 = _launch_service_stats_copy_impl();
  if (v2)
  {
    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = strerror(v2);
      sub_100040534(v4, buf, v2, v3);
    }
  }

  else
  {
    v5 = sub_100001684();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "launch_service_stats_copy() returned %u records", buf, 8u);
    }

    v3 = objc_alloc_init(NSMutableArray);
    [qword_100090458 addObjectsFromArray:v3];
    v6 = os_transaction_create();
    [qword_100090458 setTransaction:v6];

    v7 = +[HTPrefs sharedPrefs];
    v8 = dispatch_time(0, 1000000 * [v7 runloopHangTimeoutDurationMSec] + 30000000000);

    timer = [qword_100090458 timer];
    dispatch_source_set_timer(timer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
  }
}

+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)hang endTime:(unint64_t)time
{
  v45 = objc_alloc_init(NSMutableArray);
  v43 = objc_alloc_init(NSMutableArray);
  v44 = objc_alloc_init(NSMutableArray);
  v5 = sub_100001684();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v61 = sub_10000B548(hang);
    v62 = 2048;
    v63 = sub_10000B548(time);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getProcessExitsAndLaunchesDuringHang: called with windown [%.0f - %.0f]ms", buf, 0x16u);
  }

  +[HTProcessLaunchExitRecord fetchProcessRecords];
  v47 = +[NSDate now];
  v46 = mach_absolute_time();
  v6 = &stru_100090000;
  if ([qword_100090458 count])
  {
    v7 = 0;
    v8 = 1;
    v9 = &selRef_setValue_forKey_;
    v10 = &MGGetBoolAnswer_ptr;
    do
    {
      v11 = [*&v6[17].__opaque[16] objectAtIndex:v7];
      if ([v11 exitTimestamp] >= hang)
      {
        v12 = 0;
      }

      else
      {
        v12 = hang - [v11 exitTimestamp];
      }

      sharedPrefs = [v9 + 396 sharedPrefs];
      v14 = sub_10000B5E4([sharedPrefs runloopHangTimeoutDurationMSec] + 30000);

      if (v14 >= v12)
      {
        v74[0] = @"processName";
        processName = [v11 processName];
        v75[0] = processName;
        v74[1] = @"processID";
        v55 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 pid]);
        v75[1] = v55;
        v74[2] = @"spawnTimestamp";
        dateFormatter = [*&v6[17].__opaque[16] dateFormatter];
        v53 = sub_10000B420([v11 spawnTimestamp], v47, v46);
        v54 = dateFormatter;
        v52 = [dateFormatter stringFromDate:?];
        v75[2] = v52;
        v74[3] = @"exitTimestamp";
        dateFormatter2 = [*&v6[17].__opaque[16] dateFormatter];
        v50 = sub_10000B420([v11 exitTimestamp], v47, v46);
        v51 = dateFormatter2;
        v49 = [dateFormatter2 stringFromDate:?];
        v75[3] = v49;
        v74[4] = @"relativeSpawnTimeToHangStart";
        spawnTimestamp = [v11 spawnTimestamp];
        v26 = v10[267];
        spawnTimestamp2 = [v11 spawnTimestamp];
        if (spawnTimestamp <= hang)
        {
          [v26 stringWithFormat:@"-%.3lfs", sub_10000B590(hang - spawnTimestamp2)];
        }

        else
        {
          [v26 stringWithFormat:@"%.3lfs", sub_10000B590(spawnTimestamp2 - hang)];
        }
        v28 = ;
        v75[4] = v28;
        v74[5] = @"relativeExitTimeToHangStart";
        exitTimestamp = [v11 exitTimestamp];
        v30 = v10[267];
        exitTimestamp2 = [v11 exitTimestamp];
        if (exitTimestamp <= hang)
        {
          [v30 stringWithFormat:@"-%.3lfs", sub_10000B590(hang - exitTimestamp2)];
        }

        else
        {
          [v30 stringWithFormat:@"%.3lfs", sub_10000B590(exitTimestamp2 - hang)];
        }
        v32 = ;
        hangCopy = hang;
        v75[5] = v32;
        v74[6] = @"processUptime";
        v34 = [v10[267] stringWithFormat:@"%.3lfs", sub_10000B590(objc_msgSend(v11, "exitTimestamp") - objc_msgSend(v11, "spawnTimestamp"))];
        v75[6] = v34;
        v74[7] = @"exitReasonCode";
        v35 = sub_10001A3C0([v11 exitReasonNamespace], objc_msgSend(v11, "exitReasonCode"));
        v75[7] = v35;
        v74[8] = @"exitReasonNamespace";
        v36 = sub_100019534([v11 exitReasonNamespace]);
        v75[8] = v36;
        v74[9] = @"jetsamPriority";
        v37 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v11 jetsam_priority]);
        v75[9] = v37;
        v15 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:10];

        hang = hangCopy;
        if ([v11 exitTimestamp] < hangCopy || (v38 = objc_msgSend(v11, "exitTimestamp"), v39 = v43, v38 >= time))
        {
          if ([v11 exitTimestamp] >= time)
          {
            v39 = v44;
          }

          else
          {
            v39 = v45;
          }
        }

        [v39 addObject:v15];
        v6 = &stru_100090000;
        v9 = &selRef_setValue_forKey_;
        v10 = &MGGetBoolAnswer_ptr;
      }

      else
      {
        v15 = sub_100001684();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sharedPrefs2 = [v9 + 396 sharedPrefs];
          v16 = sub_10000B5E4([sharedPrefs2 runloopHangTimeoutDurationMSec] + 30000);
          processName2 = [v11 processName];
          v18 = [v11 pid];
          hangCopy2 = hang;
          exitTimestamp3 = [v11 exitTimestamp];
          exitReasonCode = [v11 exitReasonCode];
          exitReasonNamespace = [v11 exitReasonNamespace];
          *buf = 134219522;
          v61 = *&v12;
          v62 = 2048;
          v63 = *&v16;
          v10 = &MGGetBoolAnswer_ptr;
          v64 = 2112;
          v65 = processName2;
          v66 = 1024;
          v67 = v18;
          v6 = &stru_100090000;
          v68 = 2048;
          v69 = exitTimestamp3;
          hang = hangCopy2;
          v70 = 2048;
          v71 = exitReasonCode;
          v72 = 1024;
          v73 = exitReasonNamespace;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "excluding process exit record, timediff (%llu) > %llu, processName %@, pid %d, exitTimestamp %llu, exitReasonCode %llu, exitReasonNamespace %u", buf, 0x40u);

          v9 = &selRef_setValue_forKey_;
        }
      }

      v7 = v8;
    }

    while ([*&v6[17].__opaque[16] count] > v8++);
  }

  v58[0] = @"exitedDuringHang";
  v58[1] = @"exitedBeforeHang";
  v59[0] = v43;
  v59[1] = v45;
  v58[2] = @"exitedAfterHang";
  v59[2] = v44;
  v41 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];

  return v41;
}

@end