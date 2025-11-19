@interface _DASDaemonLogger
+ (id)inferCarryStatusXPCCriteria;
+ (id)logForCategory:(id)a3;
+ (id)signpostForCategory:(id)a3;
+ (unint64_t)makeIDForString:(id)a3 forLog:(id)a4;
+ (unint64_t)removeIDForString:(id)a3;
+ (void)initialize;
@end

@implementation _DASDaemonLogger

+ (void)initialize
{
  if (qword_10020B7D8 != -1)
  {
    sub_10012B960();
  }
}

+ (id)logForCategory:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&dword_10020B800);
  v4 = [qword_10020B7E8 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = os_log_create("com.apple.duetactivityscheduler", [v3 UTF8String]);
  }

  [qword_10020B7E8 setObject:v4 forKeyedSubscript:v3];
  os_unfair_lock_unlock(&dword_10020B800);

  return v4;
}

+ (id)signpostForCategory:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&dword_10020B800);
  v4 = [qword_10020B7F0 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = os_log_create("com.apple.dasd.signpost", [v3 UTF8String]);
  }

  os_unfair_lock_unlock(&dword_10020B800);

  return v4;
}

+ (unint64_t)makeIDForString:(id)a3 forLog:(id)a4
{
  v5 = a3;
  v6 = os_signpost_id_generate(a4);
  os_unfair_lock_lock(&dword_10020B800);
  v7 = [NSNumber numberWithUnsignedLongLong:v6];
  [qword_10020B7F8 setObject:v7 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&dword_10020B800);
  return v6;
}

+ (unint64_t)removeIDForString:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&dword_10020B800);
  v4 = [qword_10020B7F8 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedLongLongValue];
    [qword_10020B7F8 removeObjectForKey:v3];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&dword_10020B800);

  return v6;
}

+ (id)inferCarryStatusXPCCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, 1000);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);

  return v2;
}

@end