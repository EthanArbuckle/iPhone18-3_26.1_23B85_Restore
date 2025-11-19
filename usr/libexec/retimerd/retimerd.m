void *sub_100000A10(void *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  *a1 = &off_10000C4C0;
  a1[1] = v3;
  a1[2] = 0;
  return a1;
}

void *sub_100000A6C(void *result, uint64_t a2)
{
  *result = &off_10000C4C0;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t sub_100000A90(uint64_t a1, io_object_t object)
{
  *a1 = &off_10000C4C0;
  IOObjectRetain(object);
  *(a1 + 8) = 0;
  *(a1 + 16) = object;
  *(a1 + 20) = 0;
  return a1;
}

void *sub_100000AE4(void *a1)
{
  *a1 = &off_10000C4C0;
  sub_100000B3C(a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  return a1;
}

uint64_t sub_100000B3C(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOConnectRelease(v2);
    *(a1 + 20) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100000B94(uint64_t a1, uint64_t a2)
{
  *a1 = &off_10000C4C0;
  *(a1 + 8) = CFStringCreateCopy(kCFAllocatorDefault, *(a2 + 8));
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  IOObjectRetain(v4);
  v5 = *(a2 + 20);
  *(a1 + 20) = v5;
  IOConnectAddRef(v5);
  return a1;
}

uint64_t sub_100000C0C(uint64_t a1)
{
  MatchingService = *(a1 + 16);
  if (!MatchingService)
  {
    v3 = IOServiceMatching("AppleTypeCRetimer");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"atcrt-name", *(a1 + 8));
    CFDictionaryAddValue(v3, @"IOPropertyMatch", Mutable);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    *(a1 + 16) = MatchingService;
    if (!MatchingService)
    {
      return 56;
    }
  }

  v5 = mach_task_self_;

  return IOServiceOpen(MatchingService, v5, 0, (a1 + 20));
}

uint64_t sub_100000CEC(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 0, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100000D64(uint64_t a1, BOOL *a2)
{
  outputCnt = 1;
  v2 = *(a1 + 20);
  if (!v2)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v2, 1u, 0, 0, &output, &outputCnt);
  *a2 = output == 1;
  return result;
}

uint64_t sub_100000DF8(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 3u, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100000E70(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 2u, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

__CFArray *sub_100000EE4()
{
  existing = 0;
  v0 = IOServiceMatching("AppleTypeCRetimer");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v0, &existing);
  if (MatchingServices)
  {
    v2 = __stderrp;
    v3 = mach_error_string(MatchingServices);
    fprintf(v2, "ERROR: failed to get matching services: %s\n", v3);
    return 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = IOIteratorNext(existing);
      if (v5)
      {
        v6 = v5;
        do
        {
          CFProperty = IORegistryEntryCreateCFProperty(v6, @"atcrt-name", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v8 = CFProperty;
            CFArrayAppendValue(Mutable, CFProperty);
            CFRelease(v8);
            IOObjectRelease(v6);
          }

          else
          {
            fprintf(__stderrp, "ERROR: failed to get %s property from a %s node\n", "atcrt-name", "AppleTypeCRetimer");
          }

          v6 = IOIteratorNext(existing);
        }

        while (v6);
      }

      IOObjectRelease(existing);
      v11.length = CFArrayGetCount(Mutable);
      v11.location = 0;
      CFArraySortValues(Mutable, v11, &_CFStringCompare, 0);
    }

    else
    {
      fwrite("ERROR: failed to allocate an array\n", 0x23uLL, 1uLL, __stderrp);
    }
  }

  return Mutable;
}

uint64_t sub_100001098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  input[0] = a2;
  input[1] = a4;
  outputCnt = 1;
  v4 = *(a1 + 20);
  if (!v4)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v4, 4u, input, 2u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t sub_10000112C(uint64_t a1, uint64_t a2, void *outputStruct, size_t a4, uint64_t a5)
{
  input[0] = a2;
  input[1] = a5;
  v7 = a4;
  v5 = *(a1 + 20);
  if (v5)
  {
    return IOConnectCallMethod(v5, 5u, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100001200(uint64_t a1, uint64_t *a2)
{
  outputCnt = 1;
  v2 = *(a1 + 20);
  if (!v2)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v2, 7u, 0, 0, &output, &outputCnt);
  *a2 = output;
  return result;
}

double sub_10000132C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = @"AP";
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = @"Faulting task stack frame is not available.";
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

double sub_100001368(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = @"Faulting task stack frame is not available.";
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

size_t sub_100001390(const __CFDictionary *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(a1, @"section-name");
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFStringGetTypeID()))
    {
      v8 = CFDictionaryGetValue(a1, @"section-signature");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFStringGetTypeID())
        {
          if (CFStringCompare(v9, @"Cver", 0) || CFStringCompare(v6, @"Version Section", 0))
          {
            if (CFStringCompare(v9, @"Ctim", 0) || CFStringCompare(v6, @"Time Section", 0))
            {
              if (CFStringCompare(v9, @"CrgM", 0) || CFStringCompare(v6, @"Register Frame Section", 0))
              {
                if (CFStringCompare(v9, @"Ccst", 0) || CFStringCompare(v6, @"Callstack Section", 0))
                {
                  result = CFStringCompare(v9, @"Crtk", 0);
                  if (!result)
                  {
                    result = CFStringCompare(v6, @"Task List Section", 0);
                    if (!result)
                    {
                      result = sub_1000016A0(a1, @"tasks");
                      a2[10] = result;
                    }
                  }
                }

                else
                {
                  a2[9] = sub_1000016A0(a1, @"stack");
                  result = sub_100001638(a1, @"stack-description");
                  a2[8] = result;
                }
              }

              else
              {
                result = sub_100001638(a1, @"registers");
                a2[7] = result;
              }
            }

            else
            {
              result = sub_100001638(a1, @"time");
              a2[6] = result;
            }
          }

          else
          {
            a2[5] = sub_100001638(a1, @"uuid");
            result = sub_100001638(a1, @"version");
            a2[4] = result;
          }

          return result;
        }
      }

      v12 = __stderrp;
      v13 = "Invalid crash log section signature\n";
      v14 = 36;
    }

    else
    {
      v12 = __stderrp;
      v13 = "Invalid crash log section name\n";
      v14 = 31;
    }
  }

  else
  {
    v12 = __stderrp;
    v13 = "Invalid crash log section\n";
    v14 = 26;
  }

  return fwrite(v13, v14, 1uLL, v12);
}

const __CFString *sub_100001638(const __CFDictionary *a1, const void *a2)
{
  TypeID = CFStringGetTypeID();
  result = sub_100001820(a1, a2, TypeID);
  if (result)
  {

    return CFStringCreateCopy(kCFAllocatorDefault, result);
  }

  return result;
}

const __CFArray *sub_1000016A0(const __CFDictionary *a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  result = sub_100001820(a1, a2, TypeID);
  if (result)
  {

    return CFArrayCreateCopy(kCFAllocatorDefault, result);
  }

  return result;
}

void sub_100001708(const __CFDictionary *a1, uint64_t a2)
{
  Count = CFDictionaryGetCount(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count, a1);
  Value = CFDictionaryGetValue(a1, @"data");
  BytePtr = CFDataGetBytePtr(Value);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (CFDataGetLength(Value) >= 1)
  {
    v9 = 0;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%02x", BytePtr[v9++]);
    }

    while (v9 < CFDataGetLength(Value));
  }

  CFDictionaryReplaceValue(MutableCopy, @"data", Mutable);
  CFArrayAppendValue(*(a2 + 88), MutableCopy);
  CFRelease(MutableCopy);

  CFRelease(Mutable);
}

const void *sub_100001820(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFGetTypeID(Value) != a3)
  {
    return 0;
  }

  return v5;
}

CFStringRef sub_100001860(uint64_t a1)
{
  valuePtr = 0;
  CFNumberGetValue(*(a1 + 8), kCFNumberCharType, &valuePtr);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
  v3 = sub_100001C2C(a1 + 24, *(a1 + 16));
  CFArrayAppendValue(Mutable, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (valuePtr == 1)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      v5 = sub_100001C2C(v4, *(a1 + 16));
      CFArrayAppendValue(Mutable, v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  sub_100005F98(v21, "log-version", "1.0");
  sub_1000060E0(v22, "accessory_type", "rtm");
  if (valuePtr == 1)
  {
    v6 = "rtm2,1";
  }

  else
  {
    v6 = "rtm1,1";
  }

  sub_10000612C(&v23, "accessory_machine_config", v6);
  if (Mutable)
  {
    CFRetain(Mutable);
    cf = Mutable;
    v7 = CFGetTypeID(Mutable);
    if (v7 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  sub_100005FE4(&v24, "crashlogs");
  if (cf)
  {
    CFRetain(cf);
  }

  v25 = cf;
  __p[0] = v21;
  __p[1] = 4;
  v9 = sub_10000237C(__p);
  v10 = 0;
  v19 = v9;
  do
  {
    v11 = *(&v25 + v10);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(&v24 + v10);
    if (v12)
    {
      CFRelease(v12);
    }

    v10 -= 16;
  }

  while (v10 != -64);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v22[1] = 0;
  sub_100002890(v9, 0, 0, v21, __p);
  sub_100005EE4(v21);
  if (v17 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = CFStringCreateWithCString(kCFAllocatorDefault, v13, 0x8000100u);
  if ((v17 & 0x80000000) == 0)
  {
    if (!v9)
    {
      return v14;
    }

    goto LABEL_33;
  }

  operator delete(__p[0]);
  if (v9)
  {
LABEL_33:
    CFRelease(v9);
  }

  return v14;
}

void sub_100001B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  sub_100002348(&a16);
  while (v21 != &a21)
  {
    v21 -= 16;
    sub_100001E38(v21);
  }

  _Unwind_Resume(a1);
}

__CFDictionary *sub_100001C2C(uint64_t a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8)
  {
    CFDictionaryAddValue(v6, @"stack", v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFDictionaryAddValue(v7, @"stack-description", v9);
  }

  if (a2)
  {
    CFDictionaryAddValue(v5, @"instance_name", a2);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    CFDictionaryAddValue(v5, @"panic", v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    CFDictionaryAddValue(v5, @"crashlog-version", v11);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    CFDictionaryAddValue(v5, @"exception", v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFDictionaryAddValue(v5, @"version", v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFDictionaryAddValue(v5, @"uuid", v14);
  }

  if (v7)
  {
    CFDictionaryAddValue(v5, @"call-stack", v7);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFDictionaryAddValue(v5, @"registers", v15);
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    CFDictionaryAddValue(v5, @"tasks", v16);
  }

  if (*a1)
  {
    CFDictionaryAddValue(Mutable, @"core", *a1);
  }

  if (v5)
  {
    CFDictionaryAddValue(Mutable, @"crashlog", v5);
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    CFDictionaryAddValue(Mutable, @"memory-sections", v17);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

uint64_t sub_100001E38(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

__CFString *sub_100001E7C(void *a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v3 = a1[5];
  v4 = a1[8];
  CFStringAppendFormat(Mutable, 0, @"%@\n%@\n!UUID: %@\nTime: %@\n\n", v3, a1[7], v4, a1[9]);
  CFStringAppend(Mutable, @"Faulting task stack frame:\n\n");
  CFStringAppendFormat(Mutable, 0, @"%@\n\n", a1[10]);
  CFStringAppendFormat(Mutable, 0, @"%@\n", a1[11]);
  CFStringAppend(Mutable, @"    ");
  v5 = a1[12];
  v9.length = CFArrayGetCount(v5);
  v9.location = 0;
  CFArrayApplyFunction(v5, v9, sub_100002004, Mutable);
  CFStringAppend(Mutable, @"\n\n");
  CFStringAppend(Mutable, @"RTKit Task List:\n\n");
  v6 = a1[13];
  v10.length = CFArrayGetCount(v6);
  v10.location = 0;
  CFArrayApplyFunction(v6, v10, sub_100002038, Mutable);
  CFStringAppend(Mutable, @"Other memory sections:\n\n");
  v7 = a1[14];
  v11.length = CFArrayGetCount(v7);
  v11.location = 0;
  CFArrayApplyFunction(v7, v11, sub_100002114, Mutable);
  return Mutable;
}

void sub_100002038(const __CFDictionary *a1, __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"description");
  v5 = CFDictionaryGetValue(a1, @"stack");
  CFStringAppendFormat(a2, 0, @"%@\n", Value);
  if (v5)
  {
    CFStringAppend(a2, @"    ");
    v7.length = CFArrayGetCount(v5);
    v7.location = 0;
    CFArrayApplyFunction(v5, v7, sub_100002004, a2);
    CFStringAppend(a2, @"\n");
  }

  CFStringAppend(a2, @"\n");
}

void sub_100002114(const __CFDictionary *a1, __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"id");
  v5 = CFDictionaryGetValue(a1, @"address");
  v6 = CFDictionaryGetValue(a1, @"size");
  v7 = CFDictionaryGetValue(a1, @"data");
  valuePtr = 0;
  v8 = 0;
  if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4))
  {
    if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
    {
      if (CFNumberGetValue(v6, kCFNumberIntType, &v8))
      {
        CFStringAppendFormat(a2, 0, @"Section %d: %d bytes at 0x%x\n\n", HIDWORD(valuePtr), v8, valuePtr);
        if (v7)
        {
          CFStringAppendFormat(a2, 0, @"%@\n", v7);
        }
      }
    }
  }

  CFStringAppend(a2, @"\n");
}

uint64_t sub_100002230(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_100002280(v2);
    operator delete();
  }

  sub_100002280(a1 + 24);
  return a1;
}

uint64_t sub_100002280(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
  }

  return a1;
}

const void **sub_100002348(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFDictionaryRef sub_10000237C(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_100002630(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  sub_100002630(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_1000026D0();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_100002778(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          sub_1000026D0();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_100002778(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_1000025D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void *sub_100002630(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100002778(result, a2);
    }

    sub_1000026D0();
  }

  return result;
}

void sub_1000026E8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002744(exception, a1);
}

std::logic_error *sub_100002744(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002778(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000027C0();
}

void sub_1000027C0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

const void **sub_1000027F4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100002828(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000285C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100002890(CFDictionaryRef theDict@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = 1;
  *(a5 + 23) = 1;
  *a5 = 123;
  sub_10000414C(&v72, theDict);
  sub_10000414C(&v66, theDict);
  v67 = (v69 - v68) >> 3;
  while (1)
  {
    if (v72 && v73 != (v75 - v74) >> 3)
    {
      v11 = v66;
      goto LABEL_8;
    }

    v11 = v66;
    if (!v66 || v67 == (v69 - v68) >> 3)
    {
      break;
    }

LABEL_8:
    if (v72 == v11 && v73 == v67)
    {
      break;
    }

    if (v10)
    {
      if (a3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      std::string::append(a5, ",");
      if (a3)
      {
        std::string::append(a5, " ");
        goto LABEL_25;
      }
    }

    sub_10000326C(&__b, a2 + 2, 32);
    v12 = std::string::insert(&__b, 0, "\n");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v60 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v60 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v60 >= 0)
    {
      v15 = HIBYTE(v60);
    }

    else
    {
      v15 = __p[1];
    }

    std::string::append(a5, v14, v15);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }

LABEL_25:
    sub_10000331C(&v72, __p);
    v17 = 0;
    if (__p[0])
    {
      v16 = CFGetTypeID(__p[0]);
      if (v16 == CFStringGetTypeID())
      {
        v17 = 1;
      }
    }

    if (__p[1])
    {
      CFRelease(__p[1]);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v17)
    {
      sub_10000331C(&v72, &cf);
      if (!cf.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      sub_100004CF4(cf.__r_.__value_.__l.__data_, &v63);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v63;
      }

      else
      {
        v18 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v63.__r_.__value_.__l.__size_;
      }

      sub_1000033E8(v18, size);
      v20 = std::string::insert(&v64, 0, "");
      v21 = *&v20->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&__b, " : ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v60 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v60 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if (v60 >= 0)
      {
        v25 = HIBYTE(v60);
      }

      else
      {
        v25 = __p[1];
      }

      std::string::append(a5, v24, v25);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (cf.__r_.__value_.__l.__size_)
      {
        CFRelease(cf.__r_.__value_.__l.__size_);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      sub_10000331C(&v72, &__b);
      sub_100005DC4(v78, a4);
      sub_1000037D8(&__b.__r_.__value_.__l.__size_, a2 + 2, a3, v78, __p);
      if (v60 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v60 >= 0)
      {
        v27 = HIBYTE(v60);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::append(a5, v26, v27);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005EE4(v78);
      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRelease(__b.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!*(a4 + 24))
      {
        v50 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v50, "Error, not a json style CFDictionary");
      }

      sub_10000331C(&v72, &__b);
      v28 = __b.__r_.__value_.__r.__words[0];
      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRetain(__b.__r_.__value_.__l.__data_);
      }

      v57 = 0;
      v58 = v28;
      v29 = *(a4 + 24);
      if (!v29)
      {
        sub_100005E5C();
      }

      (*(*v29 + 48))(__p);
      if (v57)
      {
        CFRelease(v57);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRelease(__b.__r_.__value_.__l.__data_);
      }

      v30 = SHIBYTE(v60);
      if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
      {
        v30 = __p[1];
        if (!__p[1])
        {
LABEL_145:
          v52 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v52, "Error, not a json style CFDictionary");
        }

        v31 = __p[0];
      }

      else
      {
        if (!HIBYTE(v60))
        {
          goto LABEL_145;
        }

        v31 = __p;
      }

      sub_1000033E8(v31, v30);
      v32 = std::string::insert(&v55, 0, "");
      v33 = *&v32->__r_.__value_.__l.__data_;
      cf.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&cf.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v34 = std::string::append(&cf, " : ");
      v35 = *&v34->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      if ((v62 & 0x80u) == 0)
      {
        v36 = v61;
      }

      else
      {
        v36 = v61[0];
      }

      if ((v62 & 0x80u) == 0)
      {
        v37 = v62;
      }

      else
      {
        v37 = v61[1];
      }

      sub_1000033E8(v36, v37);
      if ((v54 & 0x80u) == 0)
      {
        v38 = v53;
      }

      else
      {
        v38 = v53[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v39 = v54;
      }

      else
      {
        v39 = v53[1];
      }

      v40 = std::string::append(&v63, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v64, "");
      v43 = *&v42->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __b.__r_.__value_.__l.__size_;
      }

      std::string::append(a5, p_b, v45);
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = 0;
    ++v73;
  }

  if ((a3 & 1) == 0)
  {
    sub_10000326C(&__b, a2, 32);
    v46 = std::string::insert(&__b, 0, "\n");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v60 = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if (v60 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0];
    }

    if (v60 >= 0)
    {
      v49 = HIBYTE(v60);
    }

    else
    {
      v49 = __p[1];
    }

    std::string::append(a5, v48, v49);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a5, "}");
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_100003014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  sub_1000040F0(&a63);
  sub_1000040F0((v64 - 192));
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10000326C(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004134();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_10000331C(void *a1@<X0>, void *a2@<X8>)
{
  sub_100004314(a1, &cf);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a2 = v3;
  v4 = v7;
  if (v7)
  {
    CFRetain(v7);
    v5 = v7;
    a2[1] = v4;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    a2[1] = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_1000033A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t sub_1000033E8(char *a1, uint64_t a2)
{
  sub_10000440C(v13);
  v4 = v14;
  *(&v14 + *(v14 - 24) + 8) = *(&v14 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v14 + *(v4 - 24) + 8) = *(&v14 + *(v4 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v5 = &v14 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((&v14 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v18);
  }

  *(v5 + 36) = 48;
  while (a2)
  {
    v7 = *a1;
    if (v7 <= 0xB)
    {
      switch(v7)
      {
        case 8u:
          v8 = "\\b";
          break;
        case 9u:
          v8 = "\\t";
          break;
        case 0xAu:
          v8 = "\\n";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (*a1 > 0x21u)
    {
      v8 = "\\\";
      if (v7 != 92)
      {
        if (v7 != 34)
        {
LABEL_17:
          if (v7 == 127 || v7 - 1 <= 0x1E)
          {
            v9 = sub_100004874(&v14, "\\u", 2);
            *(v9 + *(*v9 - 24) + 24) = 4;
            v10 = *a1;
            std::ostream::operator<<();
          }

          else
          {
            LOBYTE(v18.__locale_) = v7;
            sub_100004874(&v14, &v18, 1);
          }

          goto LABEL_23;
        }

        v8 = "\\"";
      }
    }

    else if (v7 == 12)
    {
      v8 = "\\f";
    }

    else
    {
      if (v7 != 13)
      {
        goto LABEL_17;
      }

      v8 = "\\r";
    }

    sub_100004874(&v14, v8, 2);
LABEL_23:
    ++a1;
    --a2;
  }

  std::stringbuf::str();
  v14 = v11;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100003794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000037D8(const __CFString **a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  if (!v8)
  {
    goto LABEL_44;
  }

  v11 = CFGetTypeID(v8);
  TypeID = CFBooleanGetTypeID();
  v13 = *a1;
  if (v11 == TypeID)
  {
    if (v13)
    {
      if (!sub_1000052C8(v13))
      {
        *(a5 + 23) = 5;
        strcpy(a5, "false");
        return;
      }

      *(a5 + 23) = 4;
      v14 = 1702195828;
      goto LABEL_52;
    }

    goto LABEL_104;
  }

  if (!v13)
  {
    goto LABEL_44;
  }

  v15 = CFGetTypeID(v13);
  v16 = CFNumberGetTypeID();
  v17 = *a1;
  if (v15 != v16)
  {
    if (v17)
    {
      v20 = CFGetTypeID(v17);
      if (v20 == CFStringGetTypeID())
      {
        *(&v72.__r_.__value_.__s + 23) = 1;
        LOWORD(v72.__r_.__value_.__l.__data_) = 34;
        if (!*a1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        sub_100004CF4(*a1, &v70);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v70;
        }

        else
        {
          v21 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        sub_1000033E8(v21, size);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__l.__size_;
        }

        v25 = std::string::append(&v72, p_p, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v66, "");
        v28 = *&v27->__r_.__value_.__l.__data_;
        *(a5 + 16) = *(&v27->__r_.__value_.__l + 2);
        *a5 = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        return;
      }

      if (*a1)
      {
        v29 = CFGetTypeID(*a1);
        v30 = CFArrayGetTypeID();
        v31 = *a1;
        if (v29 == v30)
        {
          sub_100005DC4(v74, a4);
          sub_100004F74(a2, v31, a3, v74, a5);
          v32 = v74;
LABEL_101:
          sub_100005EE4(v32);
          return;
        }

        if (v31)
        {
          v57 = CFGetTypeID(*a1);
          v58 = CFDictionaryGetTypeID();
          v31 = *a1;
          if (v57 == v58)
          {
            sub_100005DC4(v73, a4);
            sub_100002890(v31);
            v32 = v73;
            goto LABEL_101;
          }
        }

LABEL_45:
        v33 = CFGetTypeID(v31);
        if (v33 == CFNullGetTypeID() || !*a1)
        {
          *(a5 + 23) = 4;
          v14 = 1819047278;
LABEL_52:
          *a5 = v14;
          *(a5 + 4) = 0;
          return;
        }

        if (!*(a4 + 24))
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Error, not a json style CFDictionary");
          goto LABEL_105;
        }

        v65 = 0;
        sub_100005EA8(&v64, a1);
        sub_100004064(a4);
        sub_1000027F4(&v64);
        sub_1000027F4(&v65);
        v34 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v34 = v66.__r_.__value_.__l.__size_;
          if (v66.__r_.__value_.__l.__size_)
          {
            v35 = v66.__r_.__value_.__r.__words[0];
            goto LABEL_55;
          }
        }

        else if (*(&v66.__r_.__value_.__s + 23))
        {
          v35 = &v66;
LABEL_55:
          sub_1000033E8(v35, v34);
          v36 = std::string::insert(&v63, 0, "{ ");
          v37 = *&v36->__r_.__value_.__l.__data_;
          v70.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
          *&v70.__r_.__value_.__l.__data_ = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          v38 = std::string::append(&v70, " : ");
          v39 = *&v38->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          if ((v69 & 0x80u) == 0)
          {
            v40 = &v67;
          }

          else
          {
            v40 = v67;
          }

          if ((v69 & 0x80u) == 0)
          {
            v41 = v69;
          }

          else
          {
            v41 = v68;
          }

          sub_1000033E8(v40, v41);
          if ((v62 & 0x80u) == 0)
          {
            v42 = v61;
          }

          else
          {
            v42 = v61[0];
          }

          if ((v62 & 0x80u) == 0)
          {
            v43 = v62;
          }

          else
          {
            v43 = v61[1];
          }

          v44 = std::string::append(&__p, v42, v43);
          v45 = *&v44->__r_.__value_.__l.__data_;
          v72.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v72.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v72, " }");
          v47 = *&v46->__r_.__value_.__l.__data_;
          *(a5 + 16) = *(&v46->__r_.__value_.__l + 2);
          *a5 = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_96;
          }

          v48 = v63.__r_.__value_.__r.__words[0];
LABEL_95:
          operator delete(v48);
LABEL_96:
          sub_1000040AC(&v66);
          return;
        }

        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 34;
        if ((v69 & 0x80u) == 0)
        {
          v49 = &v67;
        }

        else
        {
          v49 = v67;
        }

        if ((v69 & 0x80u) == 0)
        {
          v50 = v69;
        }

        else
        {
          v50 = v68;
        }

        sub_1000033E8(v49, v50);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v70;
        }

        else
        {
          v51 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v52 = v70.__r_.__value_.__l.__size_;
        }

        v53 = std::string::append(&__p, v51, v52);
        v54 = *&v53->__r_.__value_.__l.__data_;
        v72.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v72.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&v72, "");
        v56 = *&v55->__r_.__value_.__l.__data_;
        *(a5 + 16) = *(&v55->__r_.__value_.__l + 2);
        *a5 = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        v48 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_95;
      }
    }

LABEL_44:
    v31 = 0;
    goto LABEL_45;
  }

  if (!v17)
  {
    goto LABEL_104;
  }

  v18 = sub_1000055F0(v17);
  if (vabds_f32(floorf(v18), v18) < 0.00000011921)
  {
    if (*a1)
    {
      v19 = sub_100005958(*a1);

      std::to_string(a5, v19);
      return;
    }

LABEL_104:
    v59 = __cxa_allocate_exception(0x10uLL);
    sub_100002338(v59);
LABEL_105:
  }

  std::to_string(a5, v18);
}

uint64_t sub_100004064(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100005E5C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1000040AC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000040F0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10000414C(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    sub_1000041D0((a1 + 16), Count);
    sub_1000041D0(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void sub_1000041D0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_100004200(a1, a2 - v2);
  }
}

void sub_100004200(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1000026D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100002778(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *sub_100004314@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 0x8000000000000000) != 0 || (v4 = result, v5 = result[2], v3 >= (result[3] - v5) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000043D8(exception, "DictionaryRef_iterator iterator out of range.");
  }

  v6 = *(v5 + 8 * v3);
  if (v6)
  {
    result = CFRetain(*(v5 + 8 * v3));
    v3 = v4[1];
  }

  v7 = v4[5];
  v8 = *(v7 + 8 * v3);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v3));
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

std::logic_error *sub_1000043D8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void (__cdecl ***sub_10000440C(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_1000046B0((a1 + 3), 24);
  return a1;
}

void sub_100004688(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000046B0(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000476C(a1);
  return a1;
}

void sub_100004744(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000476C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_100004874(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100004A1C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000049B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100004994);
}

uint64_t sub_100004A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_10000326C(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100004B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100004BA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

_BYTE *sub_100004CF4@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100004D9C(exception);
  }

  return sub_100004DAC(a1, a2);
}

_BYTE *sub_100004DAC@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return sub_100004EBC(a2, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    sub_10000326C(a2, maxBufLen, 0);
    if ((a2[23] & 0x80u) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_100004EA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100004EBC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004134();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

std::string *sub_100004F74@<X0>(size_t __len@<X1>, const __CFArray *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 23) = 1;
  *a5 = 91;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v11 = CFArrayGetCount(a2);
    if (Count)
    {
      if (v11)
      {
        v12 = 0;
        v13 = v11 - 1;
        v14 = 1;
        while (1)
        {
          if (v14)
          {
            if ((a3 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else
          {
            std::string::append(a5, ",");
            if (!a3)
            {
LABEL_10:
              sub_10000326C(&__b, __len + 2, 32);
              v15 = std::string::insert(&__b, 0, "\n");
              v16 = *&v15->__r_.__value_.__l.__data_;
              v29 = v15->__r_.__value_.__r.__words[2];
              *__p = v16;
              v15->__r_.__value_.__l.__size_ = 0;
              v15->__r_.__value_.__r.__words[2] = 0;
              v15->__r_.__value_.__r.__words[0] = 0;
              if (v29 >= 0)
              {
                v17 = __p;
              }

              else
              {
                v17 = __p[0];
              }

              if (v29 >= 0)
              {
                v18 = HIBYTE(v29);
              }

              else
              {
                v18 = __p[1];
              }

              std::string::append(a5, v17, v18);
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__b.__r_.__value_.__l.__data_);
              }

              goto LABEL_20;
            }

            std::string::append(a5, " ");
          }

LABEL_20:
          sub_100005D00(a2, v12, &__b);
          sub_100005DC4(v30, a4);
          sub_1000037D8(__p, &__b, __len + 2, a3, v30);
          if (v29 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          if (v29 >= 0)
          {
            v20 = HIBYTE(v29);
          }

          else
          {
            v20 = __p[1];
          }

          std::string::append(a5, v19, v20);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005EE4(v30);
          if (__b.__r_.__value_.__r.__words[0])
          {
            CFRelease(__b.__r_.__value_.__l.__data_);
          }

          if (Count - 1 != v12)
          {
            v14 = 0;
            if (v13 != v12++)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    sub_10000326C(&__b, __len, 32);
    v22 = std::string::insert(&__b, 0, "\n");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v29 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (v29 >= 0)
    {
      v25 = HIBYTE(v29);
    }

    else
    {
      v25 = __p[1];
    }

    std::string::append(a5, v24, v25);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a5, "]");
}

void sub_100005214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000052C8(const __CFBoolean *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    return v3 & 1;
  }

  v4 = CFNumberGetTypeID();
  if (v4 != CFGetTypeID(a1) || (v3 = sub_100005388(a1), (v3 & 0x100) == 0))
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100004D9C(exception);
  }

  return v3 & 1;
}

uint64_t sub_100005388(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

float sub_1000055F0(const __CFNumber *a1)
{
  v1 = sub_100005660(a1);
  if ((v1 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100004D9C(exception);
  }

  return *&v1;
}

uint64_t sub_100005660(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = sub_10000571C(a1);
  }

  else
  {
    v3 = sub_1000056B8(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t sub_1000056B8(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = COERCE_UNSIGNED_INT(CFBooleanGetValue(a1));
    v4 = &_mh_execute_header;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

unint64_t sub_10000571C(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_24;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_22;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v16 = SLOBYTE(valuePtr);
      goto LABEL_20;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16 = SLOWORD(valuePtr);
LABEL_20:
      v17 = v16;
      goto LABEL_25;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_24:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_22;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_22;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_26;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_22;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_22:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_25:
      v9 = LODWORD(v17);
LABEL_26:
      v18 = v9 | &_mh_execute_header;
      if (!Value)
      {
        v18 = 0;
      }

      v19 = v18 & &_mh_execute_header;
      break;
    default:
      v19 = 0;
      LODWORD(v18) = 0;
      break;
  }

  return v18 | v19;
}

const __CFBoolean *sub_100005958(const __CFNumber *a1)
{
  result = sub_1000059C4(a1);
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100004D9C(exception);
  }

  return result;
}

const __CFBoolean *sub_1000059C4(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return sub_100005A80(a1);
  }

  else
  {
    return sub_100005A1C(a1);
  }
}

const __CFBoolean *sub_100005A1C(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return CFBooleanGetValue(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100005A80(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

CFTypeRef sub_100005D00@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100005DB4(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a3 = v7;
  return result;
}

uint64_t sub_100005DC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_100005E5C()
{
  exception = __cxa_allocate_exception(8uLL);
}

void *sub_100005EA8(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_100005EE4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **sub_100005F64(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFStringRef *sub_100005F98(CFStringRef *a1, char *a2, char *a3)
{
  v5 = sub_100005FE4(a1, a2);
  sub_100005FE4(v5 + 1, a3);
  return a1;
}

CFStringRef *sub_100005FE4(CFStringRef *a1, char *a2)
{
  sub_100004EBC(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000060A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100002828(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFStringRef *sub_1000060E0(CFStringRef *a1, char *a2, char *a3)
{
  v5 = sub_100005FE4(a1, a2);
  sub_100005FE4(v5 + 1, a3);
  return a1;
}

CFStringRef *sub_10000612C(CFStringRef *a1, char *a2, char *a3)
{
  v5 = sub_100005FE4(a1, a2);
  sub_100005FE4(v5 + 1, a3);
  return a1;
}

void sub_100006178(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  CFArrayApplyFunction(v2, v4, sub_100001708, v1);
}

uint64_t sub_1000061A8(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  v3 = MatchingService;
  if (!MatchingService || !IOObjectConformsTo(MatchingService, "AppleTypeCRetimerReporter"))
  {
    IOObjectRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t start(int a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start\n", buf, 2u);
  }

  if (a1 == 3)
  {
    v4 = *(a2 + 8);
    if (!strcmp(v4, "handle"))
    {
      v5 = atoll(*(a2 + 16));
      sub_100006420(v5);
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 == 2)
    {
      if (!strcmp(*(a2 + 8), "report"))
      {
        xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_10000C4F8);
        CFRunLoopRun();
      }

      goto LABEL_13;
    }

    if ((a1 - 3) > 1)
    {
      goto LABEL_13;
    }

    v4 = *(a2 + 8);
  }

  if (!strcmp(v4, "show"))
  {
    sub_100006C1C(a2, a1);
  }

LABEL_13:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "done\n", v7, 2u);
  }

  return 0;
}

void sub_100006368(id a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a2, "IOMatchLaunchServiceID");
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = uint64;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "entry_id = 0x%llx\n", &v3, 0xCu);
  }

  sub_100006420(uint64);
}

uint64_t sub_100006420(uint64_t a1)
{
  parent = 0;
  v1 = sub_1000061A8(a1);
  v2 = v1;
  if (v1)
  {
    v3 = sub_100006B30(v1);
    if (v3)
    {
      v4 = sub_100001860(v3);
      v5 = sub_1000065FC(v4);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "failed";
        if (v5)
        {
          v6 = "succeeded";
        }

        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "writing log for submission %s\n", buf, 0xCu);
      }

      if (!IORegistryEntryGetParentEntry(v2, "IOService", &parent))
      {
        if (IOObjectConformsTo(parent, "AppleTypeCRetimer"))
        {
          operator new();
        }
      }

      sub_100001364(v3);
      operator delete();
    }

    v1 = 0;
  }

  IOObjectRelease(v1);
  return IOObjectRelease(v2);
}

uint64_t sub_1000065FC(void *a1)
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:1];
  v12 = kOSALogOptionOverrideFilePrefix;
  v13 = @"RetimerCrash";
  v2 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000678C;
  v9[3] = &unk_10000C520;
  v3 = v1;
  v10 = v3;
  v4 = [OSALog createForSubmission:@"305" metadata:0 options:v2 error:&v11 writing:v9];
  v5 = v11;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

const __CFArray *sub_100006798(uint64_t a1, const __CFDictionary *a2)
{
  TypeID = CFNumberGetTypeID();
  *a1 = sub_100001820(a2, @"assert_id", TypeID);
  v5 = CFNumberGetTypeID();
  *(a1 + 8) = sub_100001820(a2, @"retimer_version", v5);
  v6 = CFStringGetTypeID();
  *(a1 + 16) = sub_100001820(a2, @"instance_name", v6);
  v7 = CFDictionaryGetTypeID();
  result = sub_100001820(a2, @"crashlog", v7);
  if (result)
  {
    v9 = result;
    v10 = CFArrayGetTypeID();
    result = sub_100001820(a2, @"memory_sections", v10);
    if (result)
    {
      result = sub_10000692C((a1 + 24), v9, result);
      if (result)
      {
        valuePtr = 0;
        CFNumberGetValue(*(a1 + 8), kCFNumberCharType, &valuePtr);
        if (valuePtr == 1)
        {
          v11 = CFDictionaryGetTypeID();
          if (sub_100001820(a2, @"phy_crashlog", v11))
          {
            operator new();
          }
        }

        return 1;
      }
    }
  }

  return result;
}

BOOL sub_10000692C(void *a1, const __CFDictionary *a2, const __CFArray *a3)
{
  TypeID = CFDataGetTypeID();
  v7 = sub_100001820(a2, @"data", TypeID);
  if (v7)
  {
    v8 = RTBuddyCrashlogDecode();
    if (v8)
    {
      v9 = v8;
      a1[1] = sub_100001638(v8, @"crashlog-version");
      a1[2] = sub_100001638(v9, @"panic");
      a1[3] = sub_100001638(v9, @"exception");
      v10 = CFArrayGetTypeID();
      v11 = sub_100001820(v9, @"sections", v10);
      if (v11)
      {
        v12 = v11;
        v18.length = CFArrayGetCount(v11);
        v18.location = 0;
        CFArrayApplyFunction(v12, v18, sub_100001390, a1);
      }

      Count = CFArrayGetCount(a3);
      a1[11] = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
      v14 = CFArrayGetCount(a3);
      sub_100006178(v14);
      CFRelease(v9);
    }

    else
    {
      v15 = CFArrayGetCount(a3);
      a1[11] = CFArrayCreateMutable(kCFAllocatorDefault, v15, &kCFTypeArrayCallBacks);
      v16 = CFArrayGetCount(a3);
      sub_100006178(v16);
    }
  }

  return v7 != 0;
}

uint64_t sub_100006A98(uint64_t a1, int a2)
{
  v3 = sub_1000061A8(a1);
  v4 = v3;
  if (v3)
  {
    v5 = sub_100006B30(v3);
    if (v5)
    {
      v6 = v5;
      if (a2)
      {
        v7 = sub_100001860(v5);
      }

      else
      {
        v7 = sub_100001E7C(v5);
      }

      v8 = v7;
      CFShow(v7);
      CFRelease(v8);
      sub_100001364(v6);
      operator delete();
    }
  }

  return IOObjectRelease(v4);
}

uint64_t sub_100006B30(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"report", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    v3 = CFGetTypeID(CFProperty);
    if (v3 == CFDictionaryGetTypeID())
    {
      sub_10000128C();
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_100006C1C(uint64_t a1, int a2)
{
  v4 = atoll(*(a1 + 16));
  v5 = a2 == 4 && strcmp(*(a1 + 24), "json") == 0;
  return sub_100006A98(v4, v5);
}

void sub_100006C84(void *a1, uint64_t a2)
{
  if (!(**a1)(a1) && !sub_100000E70(a1, a2))
  {
    sub_100000B3C(a1);
  }

  sub_100000B90(a1);
  operator delete();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}