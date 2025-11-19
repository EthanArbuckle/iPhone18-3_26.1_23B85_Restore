@interface _DASUtils
+ (id)commaDelimitedEntriesFrom:(id)a3;
+ (id)processNameFromPID:(int)a3;
@end

@implementation _DASUtils

+ (id)processNameFromPID:(int)a3
{
  memset(v6, 0, sizeof(v6));
  if (!proc_name(a3, v6, 0x200u))
  {
    v3 = [_DASDaemonLogger logForCategory:@"dasUtils"];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012D440(v3);
    }
  }

  v4 = [NSString stringWithUTF8String:v6];

  return v4;
}

+ (id)commaDelimitedEntriesFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end