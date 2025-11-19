uint64_t start()
{
  if (!setiopolicy_np(9, 0, 1))
  {
    v0 = _IOHIDLogCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_100000904(v0);
    }
  }

  v1 = IOHIDEventSystemCreate();
  if (!v1)
  {
    sub_100000A30();
    goto LABEL_18;
  }

  v2 = v1;
  if (!IOHIDEventSystemOpen())
  {
    sub_1000009D8();
LABEL_17:
    CFRelease(v2);
LABEL_18:
    exit(1);
  }

  v3 = IORegistryEntryFromPath(kIOMainPortDefault, "IOService:/IOResources/IOHIDSystem");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"HIDParameters", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        CFDictionaryRemoveValue(v6, @"HIDKeyboardModifierMappingPairs");
        IOHIDEventSystemSetProperty();
      }

      CFRelease(v6);
    }

    IOObjectRelease(v4);
  }

  *policy_info = 0xFE000100FF0001;
  if (task_policy_set(mach_task_self_, 8u, policy_info, 2u))
  {
    sub_100000980();
    goto LABEL_17;
  }

  CFRunLoopRun();
  return 0;
}

void sub_1000008E4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100000904(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "setiopolicy_np returned error: %#x\n", v1, 8u);
}

void sub_100000980()
{
  v0 = _IOHIDLogCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000008E4(&_mh_execute_header, v1, v2, "Failed to set HIDEventSystem QOS\n", v3, v4, v5, v6, 0);
  }
}

void sub_1000009D8()
{
  v0 = _IOHIDLogCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000008E4(&_mh_execute_header, v1, v2, "Failed to open HIDEventSystem\n", v3, v4, v5, v6, 0);
  }
}

void sub_100000A30()
{
  v0 = _IOHIDLogCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000008E4(&_mh_execute_header, v1, v2, "Failed to create HIDEventSystem\n", v3, v4, v5, v6, 0);
  }
}