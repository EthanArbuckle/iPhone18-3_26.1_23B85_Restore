@interface _DASDeviceQuery
+ (BOOL)doesDeviceSupportGraphicsFeatureSet:(__CFString *)a3;
+ (BOOL)hasEmbeddedSwap;
+ (BOOL)supportsBackgroundGPU;
+ (id)log;
+ (unint64_t)getPhysicalMemorySize;
@end

@implementation _DASDeviceQuery

+ (id)log
{
  if (qword_10020AF08 != -1)
  {
    sub_10011D6D8();
  }

  v3 = qword_10020AF00;

  return v3;
}

+ (BOOL)supportsBackgroundGPU
{
  if (+[_DASConfig isInternalBuild])
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    if ([v2 BOOLForKey:@"overrideBackgroundGPUSupport"])
    {
      v3 = +[_DASDeviceQuery log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Overriding background GPU support. Unconditionally returning YES", v8, 2u);
      }

      return 1;
    }
  }

  v5 = [_DASDeviceQuery doesDeviceSupportGraphicsFeatureSet:@"APPLE9"];
  v6 = +[_DASDeviceQuery hasEmbeddedSwap];
  v7 = +[_DASDeviceQuery log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device Background GPU signals: supportsGraphicsSet: %{BOOL}d, hasSwap: %{BOOL}d", v8, 0xEu);
  }

  return v5 & v6;
}

+ (BOOL)doesDeviceSupportGraphicsFeatureSet:(__CFString *)a3
{
  v4 = MGCopyAnswer();
  Value = CFDictionaryGetValue(v4, @"GraphicsFeatureSetClass");
  v6 = CFDictionaryGetValue(v4, @"GraphicsFeatureSetFallbacks");
  if (!a3 || !Value)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = 1;
  if (CFStringCompare(Value, a3, 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v7, @":");
    v11.length = CFArrayGetCount(ArrayBySeparatingStrings);
    v11.location = 0;
    v8 = CFArrayContainsValue(ArrayBySeparatingStrings, v11, a3) != 0;
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_8:
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

+ (unint64_t)getPhysicalMemorySize
{
  v4 = 8;
  v5 = 0;
  if (sysctlbyname("hw.memsize_physical", &v5, &v4, 0, 0) != -1)
  {
    return v5;
  }

  v3 = +[_DASDeviceQuery log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10011D6EC(v3);
  }

  return 0;
}

+ (BOOL)hasEmbeddedSwap
{
  v5 = 0;
  v4 = 4;
  if (sysctlbyname("kern.memorystatus_swap_all_apps", &v5, &v4, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  return !v2;
}

@end