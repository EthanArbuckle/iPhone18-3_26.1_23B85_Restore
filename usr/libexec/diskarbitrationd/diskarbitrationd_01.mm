void sub_1000100A0(void *value, __CFDictionary *a2)
{
  sub_10000FA6C(a2, value);
  v3 = CFDictionaryGetValue(a2, @"DARequestDisk");
  v4 = sub_100007688(v3, 1, 0);
  sub_100013B38(v4);

  CFRelease(a2);
}

void sub_100010100(int a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"DARequestDisk");
  if (a1)
  {
    v7 = sub_100007980(kCFAllocatorDefault, a1 | 0xC000u);
    sub_10000FA6C(theDict, v7);
    CFRelease(v7);
  }

  else
  {
    v10 = CFDictionaryGetValue(theDict, @"DARequestArgument3");
    if (a2)
    {
      v11 = v10;
      if (v10)
      {
        if (sub_10000B684(v10, @"-s="))
        {
          goto LABEL_3;
        }

        sub_10000729C(Value, a2);
        sub_100007400(Value, @"DAVolumePath", a2);
        if (sub_10000B684(v11, @"update"))
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10000729C(Value, a2);
        sub_100007400(Value, @"DAVolumePath", a2);
      }

      sub_10000DAB8(Value, @"DAVolumePath");
    }
  }

LABEL_3:
  if (a1)
  {
    v8 = a1 | 0xC000;
  }

  else
  {
    v8 = 0;
  }

  sub_10000F810(theDict, v8);
  sub_100017E44(Value, 1, 0);
  v9 = sub_100007688(Value, 1, 0);
  sub_100013B38(v9);

  CFRelease(theDict);
}

void sub_100010278(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"DARequestDisk");
  v5 = Value;
  if (a1)
  {
    sub_100009EE0("renamed disk, id = %@, failure.", Value);
    sub_100009EE0("unable to rename %@ (status code 0x%08X).", v5, a1);
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFDictionaryGetValue(theDict, @"DARequestArgument2");
    if (!sub_100005CC4(v5, @"DAVolumeName", v8))
    {
LABEL_18:
      CFRelease(v7);
      goto LABEL_19;
    }

    sub_100007400(v5, @"DAVolumeName", v8);
    CFArrayAppendValue(v7, @"DAVolumeName");
    v9 = sub_100007058(v5, @"DAVolumePath");
    if (sub_100007058(v5, @"DAVolumeLifsURL"))
    {
      bzero(v20, 0x878uLL);
      v10 = sub_1000096F8(v9);
      if (v10)
      {
        v11 = v10;
        if (!sub_100009418(v10, v20, 2))
        {
          v12 = CFStringCreateWithCString(kCFAllocatorDefault, v21, 0x8000100u);
          if (v12)
          {
            v13 = v12;
            sub_100007400(v5, @"DAVolumeLifsURL", v12);
            CFArrayAppendValue(v7, @"DAVolumeLifsURL");
            CFRelease(v13);
          }
        }

        free(v11);
      }
    }

    v14 = CFURLGetString(v9);
    v15 = CFEqual(v14, @"file:///");
    v16 = sub_10000BDCC();
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_10000729C(v5, v16);
LABEL_16:
        CFRelease(v17);
      }
    }

    else if (v16)
    {
      sub_10000729C(v5, v16);
      sub_100007400(v5, @"DAVolumePath", v17);
      CFArrayAppendValue(v7, @"DAVolumePath");
      goto LABEL_16;
    }

    sub_10000DAB8(v5, v7);
    goto LABEL_18;
  }

LABEL_19:
  sub_100009EE0("renamed disk, id = %@, success.", v5);
LABEL_20:
  if (a1)
  {
    v18 = a1 | 0xC000;
  }

  else
  {
    v18 = 0;
  }

  sub_10000F810(theDict, v18);
  sub_100017E44(v5, 1, 0);
  v19 = sub_100007688(v5, 1, 0);
  sub_100013B38(v19);
  CFRelease(theDict);
}

CFIndex sub_100010528(const __CFString *a1, uint64_t a2, _DWORD *a3)
{
  *buffer = 0;
  v6.location = 0;
  v6.length = 2;
  result = CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, buffer, 4, 0);
  if (*buffer != 21318)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_100010594(uint64_t a1)
{
  v2 = sub_100007058(a1, @"DAMediaBlockSize");
  v3 = sub_100009698(v2);
  if (v3)
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3, 0x9B19DF7AuLL);
    if (v5)
    {
      v6 = v5;
      v7 = sub_10000703C(a1, 1);
      v8 = open(v7, 0);
      if (v8 != -1)
      {
        v9 = v8;
        read(v8, v6, v4);
        close(v9);
      }

      free(v6);
    }
  }

  return 0;
}

void sub_10001062C(int a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"DARequestDisk");

  sub_10000DD48(Value, sub_100010680, theDict);
}

void sub_100010680(const void *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if ((sub_100002408(theDict, @"DARequestArgument1") & 0x80000) == 0)
    {
      CFDictionarySetValue(theDict, @"DARequestDissenter", a1);
    }

    if (sub_1000079F8(a1) == -119865599)
    {
      CFDictionarySetValue(theDict, @"DARequestDissenter", a1);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"DARequestDisk");
  v5 = sub_100007688(Value, 1, 0);
  sub_100013B38(v5);

  CFRelease(theDict);
}

const __CFDictionary *sub_100010734(const __CFDictionary *a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  result = CFDictionaryGetValue(a1, @"DARequestDissenter");
  if (!Value)
  {
    return result;
  }

  v10 = result;
  if (result)
  {
    v6 = sub_1000079F8(result) & 0x3FFF;
  }

  if (a4)
  {
    v11 = *(a4 + 16) != 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_10:
    v12 = -1;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = 0;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_6:
  v12 = sub_1000079D8(v10);
  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = *(a4 + 8);
LABEL_12:

  return sub_100005998(v6, Value, v11, v12, a3 != 0, v13);
}

uint64_t sub_100010820(uint64_t a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(*a1, @"DARequestDisk");
  v4 = sub_100007058(Value, @"DAVolumePath");
  v5 = sub_1000096F8(v4);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  if ((sub_100002408(v2, @"DARequestArgument1") & 0x80000) != 0)
  {
    *(a1 + 16) = 1;
    v7 = 0x80000;
  }

  else
  {
    v7 = 0;
  }

  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v8 = unmount(v6, v7);
  if (v8 == -1)
  {
    v8 = *__error();
    if (v8 == 16)
    {
      v15 = 1;
      v16 = 0;
      v14 = 4;
      sub_100009EE0("invoking sysctl(vfs.generic.print_busy_vnodes) to enable busy vnodes %@", Value);
      v10 = sysctlbyname("vfs.generic.print_busy_vnodes", &v16, &v14, &v15, 4uLL);
      if (v10)
      {
        v11 = v10;
        v12 = __error();
        sub_100009EE0("sysctl(vfs.generic.print_busy_vnodes) failed with %x %d", *v12, v11);
        v8 = 16;
      }

      else
      {
        sub_100009EE0("invoking unmount after enabling busy vnodes %@", Value);
        v8 = unmount(v6, v7);
        if (v8 == -1)
        {
          v8 = *__error();
        }

        sysctlbyname("vfs.generic.print_busy_vnodes", 0, 0, &v16, 4uLL);
      }
    }
  }

  *(a1 + 8) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v9;
  free(v6);
  return v8;
}

void sub_1000109BC(uint64_t a1, CFDictionaryRef *a2)
{
  v4 = *a2;
  Value = CFDictionaryGetValue(*a2, @"DARequestDisk");
  if (sub_100007058(Value, @"DAVolumeUUID"))
  {
    v6 = qword_1000292D8;
    v7 = sub_100007058(Value, @"DAVolumeUUID");
    if (CFDictionaryGetValue(v6, v7))
    {
      v8 = sub_100007058(Value, @"DAVolumeUUID");
      sub_100009EE0("removed volume from danglingVolumeList, id = %@, success.", v8);
      v9 = qword_1000292D8;
      v10 = sub_100007058(Value, @"DAVolumeUUID");
      CFDictionaryRemoveValue(v9, v10);
    }
  }

  if (!a1)
  {
    sub_100010734(v4, 0, 0, a2);
LABEL_14:
    v20 = sub_100007058(Value, @"DAVolumePath");
    if (!sub_100009514(qword_1000292D0, v20))
    {
      nullsub_4(v20);
    }

    sub_10000729C(Value, 0);
    sub_100009EE0("unmounted disk, id = %@, success.", Value);
    if (sub_100007058(Value, @"DAMediaPath"))
    {
      sub_100007400(Value, @"DAVolumePath", 0);
      sub_10000DAB8(Value, @"DAVolumePath");
    }

    else
    {
      sub_100009EE0("removed disk, id = %@.", Value);
      sub_10000DB74(Value);
      sub_100007400(Value, @"DAVolumePath", 0);
      sub_100007688(Value, 0x10000000, 1);
      sub_100009604(qword_100029280, Value);
    }

    sub_10000F88C(v4, 0);
    goto LABEL_20;
  }

  v24 = 0;
  v11 = getmntinfo(&v24, 2);
  v12 = v11;
  if (v11 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 2168 * v11;
    while (1)
    {
      v16 = sub_100009BF0(&v24[v13 / 0x878]);
      v17 = sub_100006C18(Value);
      v18 = sub_100006C18(Value);
      v19 = strlen(v18);
      if (!strncmp(v16, v17, v19 + 1))
      {
        break;
      }

      ++v14;
      v13 += 2168;
      if (v15 == v13)
      {
        goto LABEL_13;
      }
    }
  }

  if (v14 == v12)
  {
LABEL_13:
    sub_100001950(" %@ is not mounted. Ignore the umount error %d", Value, a1);
    goto LABEL_14;
  }

  v22 = CFDictionaryGetValue(v4, @"DARequestDissenter");
  if (!v22)
  {
    sub_100009EE0("unmounted disk, id = %@, failure.", Value);
    sub_100009E58("unable to unmount %@ (status code 0x%08X).", Value, a1);
    v23 = sub_100007980(kCFAllocatorDefault, 49168);
    sub_10000FA6C(v4, v23);
    CFRelease(v23);
    sub_1000183CC(sub_100010D1C, a2, sub_1000109BC, a2);
    return;
  }

  sub_10000F88C(v4, v22);
  sub_100010734(v4, a1, 0, a2);
LABEL_20:
  sub_100017E44(Value, 1, 0);
  v21 = sub_100007688(Value, 1, 0);
  sub_100013B38(v21);
  CFRelease(v4);
  free(a2);
}

uint64_t sub_100010D1C(CFDictionaryRef *a1)
{
  v1 = *a1;
  Value = CFDictionaryGetValue(*a1, @"DARequestDisk");
  v3 = sub_100007058(Value, @"DAVolumePath");
  v4 = sub_1000096F8(v3);
  if (v4)
  {
    v5 = v4;
    buffer = 0;
    proc_listpidspath(1u, 0, v4, 3u, &buffer, 4);
    if (buffer)
    {
      v6 = CFDictionaryGetValue(v1, @"DARequestDissenter");
      sub_100007A18(v6, buffer);
    }

    free(v5);
  }

  return 0xFFFFFFFFLL;
}

const void *sub_100010DBC(const char *a1)
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v4);
    v6 = sub_100006C18(ValueAtIndex);
    if (!strcmp(v6, a1))
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void sub_100010E40()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100010EB8, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = sub_100017F28();
  byte_100029318 = v1;
  if (v1)
  {
    v2 = " Device is unlocked";
  }

  else
  {
    v2 = " Device is locked";
  }

  sub_100009EE0(v2);
}

void sub_100010EB8()
{
  v0 = sub_100017F28();
  byte_100029318 = v0;
  v1 = "un";
  if (!v0)
  {
    v1 = "";
  }

  sub_100009EE0("Lock notification received - device is %slocked", v1);
  if (byte_100029318 == 1)
  {
    if (qword_100029198 != -1)
    {
      sub_10001B388();
    }

    v2 = qword_1000291A0;

    dispatch_async(v2, &stru_1000254B0);
  }
}

void sub_100010F68(int a1, io_iterator_t iterator)
{
  v2 = iterator;
  v3 = IOIteratorNext(iterator);
  if (!v3)
  {
    goto LABEL_44;
  }

  v4 = v3;
  v5 = @"DAVolumeMountable";
  v6 = kCFBooleanTrue;
  v7 = kCFBooleanFalse;
  v8 = &qword_100029280;
  v35 = v2;
  do
  {
    v9 = sub_10001152C(v4);
    if (v9)
    {
      v10 = v9;
      sub_1000115B0(v4);
      if (sub_100007058(v10, v5) == v6 && sub_100007058(v10, @"DAMediaLeaf") == v7)
      {
        sub_10000DCF0(v10, 0);
      }

      goto LABEL_43;
    }

    *notification = 0;
    v11 = v8;
    IOServiceAddInterestNotification(qword_1000292B0, v4, "IOBusyInterest", sub_100011A38, 0, &notification[1]);
    notification[0] = 0;
    IOServiceAddInterestNotification(qword_1000292B0, v4, "IOGeneralInterest", sub_100011A38, 0, notification);
    v12 = sub_100005D24(kCFAllocatorDefault, v4);
    if (!v12)
    {
      goto LABEL_39;
    }

    v13 = v12;
    if (sub_100009514(*v8, v12))
    {
      v14 = sub_100003964(*v8, v13);
      sub_100011B08(v14, 0);
      if (sub_100009514(*v8, v13))
      {
        sub_10001B39C();
      }
    }

    if (notification[1])
    {
      sub_100007258(v13, notification[1]);
    }

    if (notification[0])
    {
      sub_100007644(v13, notification[0]);
    }

    if (!sub_100007078(v13, 1))
    {
      goto LABEL_20;
    }

    v15 = sub_100007078(v13, 1);
    if (!strncmp(v15, "/dev/disk", 9uLL))
    {
      goto LABEL_20;
    }

    v16 = sub_10000703C(v13, 1);
    v17 = sub_100007078(v13, 1);
    if (link(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = sub_10000703C(v13, 0);
    v19 = sub_100007078(v13, 0);
    if (link(v18, v19))
    {
      v20 = sub_100007078(v13, 1);
      unlink(v20);
LABEL_19:
      v21 = sub_100007078(v13, 1);
      sub_100009E58("unable to link %@ to %s.", v13, v21);
      sub_1000072E0(v13, 1, 0);
      sub_1000072E0(v13, 0, 0);
    }

LABEL_20:
    v22 = sub_100007058(v13, @"DAMediaContent");
    if (!CFEqual(v22, @"41504653-0000-11AA-AA11-00306543ECAC"))
    {
      goto LABEL_30;
    }

    v23 = v7;
    v24 = v5;
    sub_100017E44(v13, 16, 1);
    parent = 0;
    v25 = sub_100007050(v13);
    IORegistryEntryGetParentEntry(v25, "IOService", &parent);
    v26 = parent;
    if (!parent)
    {
      goto LABEL_29;
    }

    while (1)
    {
      if (!IOObjectConformsTo(v26, "IOMedia"))
      {
        goto LABEL_26;
      }

      v27 = CFGetAllocator(v13);
      CFProperty = IORegistryEntryCreateCFProperty(v26, @"BSD Unit", v27, 0);
      if (!CFProperty)
      {
        goto LABEL_26;
      }

      v29 = CFProperty;
      valuePtr = 0;
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
      v30 = valuePtr;
      if (v30 != sub_100007094(v13))
      {
        break;
      }

      CFRelease(v29);
LABEL_26:
      IORegistryEntryGetParentEntry(v26, "IOService", &parent);
      IOObjectRelease(v26);
      v26 = parent;
      parent = 0;
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    v31 = CFGetAllocator(v13);
    v32 = IORegistryEntryCreateCFProperty(v26, @"BSD Name", v31, 0);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *buffer = 0u;
    v41 = 0u;
    CFStringGetCString(v32, buffer, 128, 0x8000100u);
    __strlcpy_chk();
    __strlcat_chk();
    sub_1000076A4(v13, __s1);
    IOObjectRelease(v26);
    CFRelease(v29);
LABEL_29:
    v5 = v24;
    v7 = v23;
    v6 = kCFBooleanTrue;
LABEL_30:
    if (sub_100017C34(v13, 16) && sub_100017C34(v13, 4))
    {
      sub_100007688(v13, 0x40000, 1);
    }

    sub_100009EE0("created disk, id = %@.", v13);
    sub_100017E44(v13, 0x10000, 0);
    CFArrayInsertValueAtIndex(*v11, 0, v13);
    v33 = malloc_type_malloc(0x10uLL, 0x10200405A9B18D6uLL);
    if (v33)
    {
      v34 = v33;
      v33[1] = v13;
      CFRetain(v13);
      sub_1000183CC(sub_10000CC1C, v34, sub_10000CC24, v34);
    }

    if (sub_100007058(v13, @"DADeviceInternal") == v7 || sub_100007058(v13, @"DAMediaRemovable") == v6)
    {
      sub_100001BF0();
    }

    CFRelease(v13);
    v8 = v11;
LABEL_39:
    if (notification[1])
    {
      IOObjectRelease(notification[1]);
    }

    v2 = v35;
    if (notification[0])
    {
      IOObjectRelease(notification[0]);
    }

LABEL_43:
    IOObjectRelease(v4);
    v4 = IOIteratorNext(v2);
  }

  while (v4);
LABEL_44:
  sub_100013B38();
}

const void *sub_10001152C(io_object_t a1)
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v4);
    v6 = sub_100007050(ValueAtIndex);
    if (IOObjectIsEqualTo(v6, a1))
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void sub_1000115B0(io_object_t a1)
{
  v2 = sub_10001152C(a1);
  if (v2)
  {
    v3 = v2;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      properties = 0;
      v6 = CFGetAllocator(v3);
      IORegistryEntryCreateCFProperties(a1, &properties, v6, 0);
      if (properties)
      {
        Value = CFDictionaryGetValue(properties, @"Content");
        if (sub_100005CC4(v3, @"DAMediaContent", Value))
        {
          sub_100007400(v3, @"DAMediaContent", Value);
          CFArrayAppendValue(v5, @"DAMediaContent");
        }

        v8 = CFDictionaryGetValue(properties, @"Ejectable");
        if (sub_100005CC4(v3, @"DAMediaEjectable", v8))
        {
          sub_100007400(v3, @"DAMediaEjectable", v8);
          CFArrayAppendValue(v5, @"DAMediaEjectable");
        }

        v9 = CFDictionaryGetValue(properties, @"Leaf");
        if (sub_100005CC4(v3, @"DAMediaLeaf", v9))
        {
          sub_100007400(v3, @"DAMediaLeaf", v9);
          CFArrayAppendValue(v5, @"DAMediaLeaf");
        }

        v10 = CFDictionaryGetValue(properties, @"Preferred Block Size");
        if (sub_100005CC4(v3, @"DAMediaBlockSize", v10))
        {
          sub_100007400(v3, @"DAMediaBlockSize", v10);
          CFArrayAppendValue(v5, @"DAMediaBlockSize");
        }

        v11 = CFDictionaryGetValue(properties, @"Removable");
        if (sub_100005CC4(v3, @"DAMediaRemovable", v11))
        {
          sub_100007400(v3, @"DAMediaRemovable", v11);
          CFArrayAppendValue(v5, @"DAMediaRemovable");
        }

        v12 = CFDictionaryGetValue(properties, @"Size");
        if (sub_100005CC4(v3, @"DAMediaSize", v12))
        {
          sub_100007400(v3, @"DAMediaSize", v12);
          CFArrayAppendValue(v5, @"DAMediaSize");
        }

        v13 = CFDictionaryGetValue(properties, @"UUID");
        if (v13)
        {
          v14 = sub_10000416C(kCFAllocatorDefault, v13);
          if (v14)
          {
            v15 = v14;
            if (sub_100005CC4(v3, @"DAMediaUUID", v14))
            {
              sub_100007400(v3, @"DAMediaUUID", v15);
              CFArrayAppendValue(v5, @"DAMediaUUID");
            }

            CFRelease(v15);
          }
        }

        v16 = CFDictionaryGetValue(properties, @"Whole");
        if (sub_100005CC4(v3, @"DAMediaWhole", v16))
        {
          sub_100007400(v3, @"DAMediaWhole", v16);
          CFArrayAppendValue(v5, @"DAMediaWhole");
        }

        v17 = CFDictionaryGetValue(properties, @"Writable");
        if (sub_100005CC4(v3, @"DAMediaWritable", v17))
        {
          sub_100007400(v3, @"DAMediaWritable", v17);
          CFArrayAppendValue(v5, @"DAMediaWritable");
        }

        v18 = malloc_type_malloc(0x10uLL, 0x10200405A9B18D6uLL);
        if (v18)
        {
          v19 = v18;
          v18[1] = v3;
          CFRetain(v3);
          sub_1000183CC(sub_10000CC1C, v19, sub_10000CC24, v19);
        }

        v20 = IORegistryEntrySearchCFProperty(a1, "IOService", @"AppleTDMLocked", kCFAllocatorDefault, 3u);
        if (sub_100005CC4(v3, @"DADeviceTDMLocked", v20))
        {
          sub_100007400(v3, @"DADeviceTDMLocked", v20);
          CFArrayAppendValue(v5, @"DADeviceTDMLocked");
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (CFArrayGetCount(v5))
        {
          sub_100009EE0("updated disk, id = %@.", v3);
          if (sub_1000029AC(v3, 0x80000))
          {
            sub_10000DAB8(v3, v5);
          }
        }

        CFRelease(properties);
      }

      CFRelease(v5);
    }
  }
}

void sub_100011A38(uint64_t a1, io_object_t a2, int a3, uint64_t a4)
{
  if (a3 == -536870608)
  {

    sub_1000115B0(a2);
  }

  else if (a3 == -536870624)
  {
    v5 = sub_10001152C(a2);
    if (v5)
    {
      v6 = v5;
      if (a4)
      {
        Current = CFAbsoluteTimeGetCurrent();

        sub_100007250(v6, Current);
      }

      else
      {
        sub_100010F68(v5, dword_1000292A4);
        sub_100007250(v6, 0.0);

        sub_100013B38();
      }
    }
  }
}

void sub_100011B08(uint64_t a1, io_iterator_t a2)
{
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (a1)
  {
    v4 = sub_100007050(a1);
  }

  else
  {
    v4 = IOIteratorNext(a2);
  }

  v5 = v4;
  if (v4)
  {
    v27 = -1;
    do
    {
      v6 = sub_10001152C(v5);
      if (!v6)
      {
        if (a1)
        {
          sub_10001B3C8();
        }

        sub_100010F68(0, dword_1000292A4);
        v6 = sub_10001152C(v5);
        if (!v6)
        {
          goto LABEL_36;
        }
      }

      v7 = v6;
      sub_100009EE0("removed disk, id = %@.", v6);
      if (sub_100007058(v7, @"DAVolumePath") && sub_100007058(v7, @"DAVolumeUUID"))
      {
        v8 = qword_1000292D8;
        v9 = sub_100007058(v7, @"DAVolumeUUID");
        v10 = sub_100007058(v7, @"DAVolumePath");
        CFDictionarySetValue(v8, v9, v10);
        v11 = sub_100007058(v7, @"DAVolumeUUID");
        v12 = sub_100007058(v7, @"DAVolumePath");
        sub_100009EE0(" added volume id = %@  mountpath %@ to danglingVolumeList.", v11, v12);
      }

      if (sub_100007078(v7, 1))
      {
        v13 = sub_100007078(v7, 1);
        unlink(v13);
      }

      if (sub_100007078(v7, 0))
      {
        v14 = sub_100007078(v7, 0);
        unlink(v14);
      }

      sub_10000DDB0(v7);
      if (sub_1000029AC(v7, 0x80000))
      {
        sub_10000DB74(v7);
      }

      if (sub_1000029AC(v7, 0x40000))
      {
        sub_100007688(v7, 0x80000, 1);
        sub_10000DD28(v7, 0x80000u, 0);
        v15 = sub_100007058(v7, @"DAVolumeMountable");
        if (sub_100007058(v7, @"DAVolumePath"))
        {
          if (v15 != kCFBooleanFalse && sub_100007058(v7, @"DAMediaWritable") == kCFBooleanTrue)
          {
            v16 = sub_100007058(v7, @"DAVolumePath");
            v17 = sub_1000070A4(v7);
            v18 = sub_1000096F8(v16);
            if (!v18)
            {
              goto LABEL_25;
            }

            v19 = v18;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            memset(v29, 0, sizeof(v29));
            if (sub_100009418(v18, v29, 2))
            {
              free(v19);
LABEL_25:
              v20 = sub_100002A20(v7);
              if (v27 == -1 || v27 == sub_100007094(v7))
              {
                v21 = theArray;
              }

              else
              {
                nullsub_4(theArray);
                v21 = theArray;
              }

              CFArrayAppendValue(v21, v20);
              v27 = sub_100007094(v7);
              goto LABEL_30;
            }

            v26 = v30;
            v22 = sub_1000096F8(v17);
            if (v22)
            {
              v23 = v22;
              v24 = strnlen(v58, 0x400uLL);
              v25 = strncasecmp(v58, v23, v24);
              free(v23);
              if (v25)
              {
                free(v19);
                goto LABEL_30;
              }
            }

            free(v19);
            if ((v26 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }
      }

LABEL_30:
      sub_100005730(v7);
      if (sub_100007058(v7, @"DAMediaWhole") == kCFBooleanTrue)
      {
        sub_100017E44(v7, 16, 0);
        sub_100017E44(v7, 2, 0);
        sub_100017E44(v7, 4, 0);
      }

      sub_100007688(v7, 0x10000000, 1);
      if (sub_100007058(v7, @"DADeviceInternal") == kCFBooleanFalse || sub_100007058(v7, @"DAMediaRemovable") == kCFBooleanTrue)
      {
        sub_100003910();
        sub_1000139C0();
      }

      sub_100009604(qword_100029280, v7);
      if (a1)
      {
        break;
      }

LABEL_36:
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  if (CFArrayGetCount(theArray))
  {
    nullsub_4(theArray);
  }

  CFRelease(theArray);
  sub_100013B38();
}

void sub_100012010(int a1)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1)
  {
    v2 = sub_100001DA8(a1);
    if (v2)
    {

      sub_10001373C(v2);
    }
  }
}

uint64_t sub_100012084(int a1)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v2 = sub_100001DA8(a1)) != 0)
  {
    v3 = v2;
    sub_1000014A4("%@ -> %s", v2, qword_1000292F0);
    sub_100001950("  removed session, id = %@.", v3);
    v4 = sub_100002E30(v3);
    if (v4)
    {
      CFArrayRemoveAllValues(v4);
    }

    v5 = sub_100002BE4(v3);
    if (v5)
    {
      CFArrayRemoveAllValues(v5);
    }

    sub_10000DE9C(v3);
    sub_100002BEC(v3, 0x10000000, 1);
    if (!sub_10001370C(v3))
    {
      sub_100003910();
      sub_1000139C0();
    }

    sub_100009604(qword_100029308, v3);
    return 0;
  }

  else
  {
    sub_100001950("unable to release session, id = ? [?]:%d.", a1);
    return 4175036419;
  }
}

uint64_t sub_10001218C(int a1, const char *a2, vm_address_t *a3, unsigned int *a4)
{
  if (!a1 || (v8 = sub_100001DA8(a1)) == 0)
  {
    sub_1000014A4("? [?]:%d -> %s");
LABEL_9:
    v13 = 4175036419;
    sub_100001950("unable to copy disk description, id = %s (status code 0x%08X).", a2, -119930877);
    return v13;
  }

  v9 = v8;
  v10 = sub_100010DBC(a2);
  if (!v10 || (v11 = sub_100002A20(v10)) == 0 || (v12 = sub_100002EB8(v11, a4), (*a3 = v12) == 0))
  {
    sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
    sub_1000014A4("%@ -> %s", v9, qword_1000292F0);
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_100012278(int a1, const char *a2, _DWORD *a3)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v6 = sub_100001DA8(a1)) != 0 && (sub_1000014A4("%@ -> %s", v6, qword_1000292F0), (v7 = sub_100010DBC(a2)) != 0))
  {
    v8 = v7;
    v9 = sub_100007114(v7);
    *a3 = v9;
    sub_100001950("  got disk options, id = %@, options = 0x%08X.", v8, v9);
    return 0;
  }

  else
  {
    v10 = 4175036419;
    sub_100001950("unable to get disk options, id = %s (status code 0x%08X).", a2, -119930877);
  }

  return v10;
}

uint64_t sub_10001233C(int a1, const char *a2, _DWORD *a3)
{
  v3 = 4175036419;
  if (a1)
  {
    if (sub_100001DA8(a1))
    {
      v6 = sub_100010DBC(a2);
      if (v6)
      {
        v3 = 0;
        *a3 = sub_100007138(v6);
      }
    }
  }

  return v3;
}

uint64_t sub_100012398(int a1, const char *a2, _DWORD *a3)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v6 = sub_100001DA8(a1)) != 0 && (sub_1000014A4("%@ -> %s", v6, qword_1000292F0), (v7 = sub_100010DBC(a2)) != 0))
  {
    v8 = v7;
    v9 = sub_100002E30(v7);
    *a3 = v9 != 0;
    v10 = "false";
    if (v9)
    {
      v10 = "true";
    }

    sub_100001950("  got disk claim state, id = %@, claimed = %s.", v8, v10);
    return 0;
  }

  else
  {
    v11 = 4175036419;
    sub_100001950("unable to get disk claim state, id = %s (status code 0x%08X).", a2, -119930877);
  }

  return v11;
}

uint64_t sub_100012478(int a1, const char *a2, int a3, _OWORD *a4)
{
  v8 = 4175036419;
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (!a1)
  {
    goto LABEL_15;
  }

  v9 = sub_100001DA8(a1);
  if (!v9)
  {
    goto LABEL_15;
  }

  sub_1000014A4("%@ -> %s", v9, qword_1000292F0);
  v10 = sub_100010DBC(a2);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v12;
  audit_token_to_euid(&atoken);
  v13 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v13;
  audit_token_to_egid(&atoken);
  v14 = sub_100014F2C();
  if (v14)
  {
    v8 = v14;
LABEL_15:
    sub_100001950("unable to set disk adoption, id = %s (status code 0x%08X).", a2, v8);
    return v8;
  }

  if (sub_10000BDD4(v11, 1) == 1)
  {
    v15 = a4[1];
    *atoken.val = *a4;
    *&atoken.val[4] = v15;
    if (audit_token_to_euid(&atoken))
    {
LABEL_14:
      v8 = 4175036425;
      goto LABEL_15;
    }
  }

  v16 = a4[1];
  *atoken.val = *a4;
  *&atoken.val[4] = v16;
  if (!sub_1000016A8(&atoken, @"com.apple.private.diskarbitrationd.disk_set_adoption"))
  {
    sub_100009EAC("Client attempted to set disk adoption without entitlement");
    goto LABEL_14;
  }

  v17 = "true";
  if (!a3)
  {
    v17 = "false";
  }

  sub_100001950("  set disk adoption, id = %@, adoption = %s.", v11, v17);
  v8 = sub_10000CB1C(v11, a3);
  if (v8)
  {
    goto LABEL_15;
  }

  return v8;
}

uint64_t sub_100012618(int a1, const char *a2, uint64_t a3, int a4)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v8 = sub_100001DA8(a1)) != 0 && (sub_1000014A4("%@ -> %s", v8, qword_1000292F0), (v9 = sub_100010DBC(a2)) != 0))
  {
    v10 = v9;
    v11 = "true";
    if (!a4)
    {
      v11 = "false";
    }

    sub_100001950("  set disk options, id = %@, options = 0x%08X, value = %s.", v9, a3, v11);
    sub_100007628(v10, a3, a4);
    return 0;
  }

  else
  {
    v12 = 4175036419;
    sub_100001950("unable to set disk options, id = %s (status code 0x%08X).", a2, -119930877);
  }

  return v12;
}

uint64_t sub_10001270C(int a1, const char *a2)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v4 = sub_100001DA8(a1)) != 0 && (v5 = v4, sub_1000014A4("%@ -> %s", v4, qword_1000292F0), (v6 = sub_100010DBC(a2)) != 0) && (v7 = v6, (v8 = sub_100002E30(v6)) != 0) && sub_1000029A0(v8) == v5)
  {
    sub_100001950("  unclaimed disk, id = %@.", v7);
    sub_100007334(v7, 0);
    return 0;
  }

  else
  {
    v9 = 4175036419;
    sub_100001950("unable to unclaim disk, id = %s (status code 0x%08X).", a2, -119930877);
  }

  return v9;
}

uint64_t sub_1000127E8(int a1, signed int a2, _OWORD *a3, const char *a4, uint64_t a5, const UInt8 *a6, unsigned int a7, const UInt8 *a8, unsigned int a9, uint64_t a10, uint64_t a11, _OWORD *a12)
{
  v20 = a12[1];
  v21 = 4175036425;
  *atoken.val = *a12;
  *&atoken.val[4] = v20;
  if (!audit_token_to_euid(&atoken))
  {
    v22 = a12[1];
    *atoken.val = *a12;
    *&atoken.val[4] = v22;
    if (sub_1000016A8(&atoken, @"com.apple.private.diskarbitrationd.user_audit_token"))
    {
      v23 = a3[1];
      *atoken.val = *a3;
      *&atoken.val[4] = v23;
      return sub_1000128CC(a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, &atoken);
    }
  }

  return v21;
}

uint64_t sub_1000128CC(int a1, signed int a2, const char *a3, uint64_t a4, const UInt8 *a5, unsigned int a6, const UInt8 *a7, unsigned int a8, uint64_t a9, uint64_t a10, _OWORD *a11)
{
  v18 = a10;
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (!a1 || (v19 = sub_100001DA8(a1)) == 0 || (v20 = v19, sub_1000014A4("%@ -> %s", v19, qword_1000292F0), (v70 = sub_100010DBC(a3)) == 0))
  {
    v23 = 4175036419;
LABEL_8:
    v24 = sub_1000023C4(a2);
    sub_100001950("unable to queue solicitation, id = %016llX:%016llX, kind = %s, disk = %s (status code 0x%08X).", a9, v18, v24, a3, v23);
    return v23;
  }

  sub_1000014A4("%@ -> %s", v20, qword_1000292F0);
  if (a5)
  {
    v21 = sub_1000099FC(kCFAllocatorDefault, a5, a6);
    if (a7)
    {
LABEL_6:
      v22 = sub_1000099FC(kCFAllocatorDefault, a7, a8);
      goto LABEL_12;
    }
  }

  else
  {
    v21 = 0;
    if (a7)
    {
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_12:
  v26 = sub_10000224C(kCFAllocatorDefault, v20, a9, a10, a2, 0, 0, 0);
  v69 = a4;
  v27 = a4;
  v28 = a11[1];
  *atoken.val = *a11;
  *&atoken.val[4] = v28;
  v29 = audit_token_to_euid(&atoken);
  v30 = a11[1];
  *atoken.val = *a11;
  *&atoken.val[4] = v30;
  v31 = audit_token_to_egid(&atoken);
  v32 = v21;
  v33 = sub_10000E4DC(kCFAllocatorDefault, a2, v70, v27, v21, v22, v29, v31, v26);
  if (v33)
  {
    v34 = v33;
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        v40 = a11[1];
        *atoken.val = *a11;
        *&atoken.val[4] = v40;
        audit_token_to_euid(&atoken);
        v41 = a11[1];
        *atoken.val = *a11;
        *&atoken.val[4] = v41;
        audit_token_to_egid(&atoken);
        goto LABEL_29;
      }

      v37 = a11;
      if (a2 != 13)
      {
        if (a2 == 17 && !sub_1000136E0(v20))
        {
          v23 = 4175036425;
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a2 != 5)
      {
        if (a2 != 7)
        {
          if (a2 != 10)
          {
LABEL_31:
            sub_10000DFEC(v34);
            v42 = sub_1000023C4(a2);
            sub_100009EE0("  %@ queued solicitation, id = %016llX:%016llX, kind = %s, disk = %@, options = 0x%08X.", v20, a9, a10, v42, v70, v69);
            v23 = 0;
            goto LABEL_32;
          }

          v35 = a11[1];
          *atoken.val = *a11;
          *&atoken.val[4] = v35;
          v36 = audit_token_to_pid(&atoken);
          if (v36 == getpid())
          {
            sub_100009DDC("_kDADiskProbe authorized ourself");
            goto LABEL_31;
          }

          v57 = sub_1000136E0(v20);
          v58 = *a11;
          v59 = a11[1];
          if (v57)
          {
            v23 = 0;
          }

          else
          {
            v23 = 4175036425;
          }

          *atoken.val = *a11;
          *&atoken.val[4] = v59;
          v60 = audit_token_to_pid(&atoken);
          sub_100009DDC("_kDADiskProbe checking request from pid %u, replying %d", v60, v23);
LABEL_30:
          if (v23)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v43 = a11[1];
        *atoken.val = *a11;
        *&atoken.val[4] = v43;
        audit_token_to_euid(&atoken);
        v44 = a11[1];
        *atoken.val = *a11;
        *&atoken.val[4] = v44;
        audit_token_to_egid(&atoken);
        v23 = sub_100014F2C();
        if (!v23)
        {
          v45 = sub_100007058(v70, @"DAMediaContent");
          if (!CFEqual(v45, @"C12A7328-F81F-11D2-BA4B-00A0C93EC93B") || (v46 = a11[1], *atoken.val = *a11, *&atoken.val[4] = v46, !audit_token_to_euid(&atoken)) || (v47 = a11[1], *atoken.val = *a11, *&atoken.val[4] = v47, v48 = audit_token_to_euid(&atoken), v48 == sub_100007138(v70)))
          {
            if (!v32)
            {
              goto LABEL_31;
            }

            v49 = CFURLCreateWithString(kCFAllocatorDefault, v32, 0);
            if (!v49)
            {
              goto LABEL_31;
            }

            v50 = v49;
            memset(&v73, 0, sizeof(v73));
            v51 = sub_1000096F8(v49);
            cf = v50;
            if (v51)
            {
              v52 = 4175036419;
              v67 = v51;
              if ((v69 & 2) != 0)
              {
                __strlcpy_chk();
LABEL_58:
                v61 = a11[1];
                *v72.val = *a11;
                *&v72.val[4] = v61;
                if (audit_token_to_euid(&v72))
                {
                  if (fstatat(-2, &atoken, &v73, 2048))
                  {
                    v52 = *__error() | 0xC000u;
                  }

                  else
                  {
                    v62 = a11[1];
                    *v72.val = *a11;
                    *&v72.val[4] = v62;
                    v63 = audit_token_to_euid(&v72);
                    if (v63 == v73.st_uid)
                    {
                      v52 = 0;
                    }

                    else
                    {
                      v52 = 4175036425;
                    }
                  }
                }

                else
                {
                  v52 = 0;
                }

                free(v67);
                goto LABEL_66;
              }

              if (realpath_DARWIN_EXTSN(v51, &atoken))
              {
                v53 = strlen(&atoken);
                v54 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, &atoken, v53, 1u);
                if (v54)
                {
                  v55 = v54;
                  v56 = CFURLGetString(v54);
                  sub_10000FB00(v34, v56);
                  CFRelease(v55);
                }

                goto LABEL_58;
              }
            }

            else
            {
              v52 = 4175036419;
            }

LABEL_66:
            v64 = a11[1];
            *v72.val = *a11;
            *&v72.val[4] = v64;
            if (audit_token_to_euid(&v72))
            {
              v65 = a11[1];
              *v72.val = *a11;
              *&v72.val[4] = v65;
              v66 = audit_token_to_euid(&v72);
              if (v66 == sub_100007138(v70))
              {
                v52 = v52;
              }

              else
              {
                v52 = 4175036425;
              }
            }

            CFRelease(cf);
            v23 = v52;
            goto LABEL_30;
          }

          v23 = 4175036424;
        }

LABEL_32:
        CFRelease(v34);
        if (!v26)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v37 = a11;
    }

    v38 = v37[1];
    *atoken.val = *v37;
    *&atoken.val[4] = v38;
    audit_token_to_euid(&atoken);
    v39 = v37[1];
    *atoken.val = *v37;
    *&atoken.val[4] = v39;
    audit_token_to_egid(&atoken);
LABEL_29:
    v23 = sub_100014F2C();
    goto LABEL_30;
  }

  v23 = 4175036419;
  if (v26)
  {
LABEL_33:
    CFRelease(v26);
  }

LABEL_34:
  if (v32)
  {
    CFRelease(v32);
  }

  v18 = a10;
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    goto LABEL_8;
  }

  return v23;
}

uint64_t sub_100012F0C(int a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, const UInt8 *a6, unsigned int a7, int a8)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v16 = sub_100001DA8(a1)) != 0)
  {
    sub_1000014A4("%@ -> %s", v16, qword_1000292F0);
    if (a6)
    {
      a6 = sub_1000099FC(kCFAllocatorDefault, a6, a7);
    }

    if (!sub_10000D534(a6, a8))
    {
      v17 = sub_1000023C4(a4);
      sub_100001950("  dispatched response, id = %016llX:%016llX, kind = %s, disk = %s, orphaned.", a2, a3, v17, a5);
    }

    if (a6)
    {
      CFRelease(a6);
    }

    return 0;
  }

  else
  {
    v18 = 4175036419;
    sub_100001950("unable to dispatch response, id = %016llX:%016llX, disk = %s (status code 0x%08X).", a2, a3, a5, -119930877);
  }

  return v18;
}

uint64_t sub_100013030(int a1)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v2 = sub_100001DA8(a1)) != 0)
  {
    v3 = v2;
    sub_1000014A4("%@ -> %s", v2, qword_1000292F0);
    sub_100001950("  set keepalive, id = %@.", v3);
    sub_100013790(v3, 1);
    sub_100003910();
    sub_1000139C0();
    return 0;
  }

  else
  {
    v4 = 4175036419;
    sub_100001950("unable to set keep alive,  (status code 0x%08X).", -119930877);
  }

  return v4;
}

uint64_t sub_1000130E4(int a1, uint64_t a2, uint64_t a3)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v6 = sub_100001DA8(a1)) != 0 && (v7 = v6, sub_1000014A4("%@ -> %s", v6, qword_1000292F0), (v8 = sub_10000224C(kCFAllocatorDefault, v7, a2, a3, 0, 0, 0, 0)) != 0))
  {
    v9 = v8;
    sub_10000E2D0(v8);
    sub_100013798(v7, v9);
    sub_100001950("  unregistered callback, id = %016llX:%016llX.", a2, a3);
    CFRelease(v9);
    return 0;
  }

  else
  {
    v10 = 4175036419;
    sub_100001950("unable to unregister callback, id = %016llX:%016llX (status code 0x%08X).", a2, a3, -119930877);
  }

  return v10;
}

void sub_1000131E4(uint64_t a1)
{
  v2 = sub_100006C20(kCFAllocatorDefault, a1);
  if (v2)
  {
    v3 = v2;
    sub_100009EE0("created disk, id = %@.", v2);
    if ((*(a1 + 67) & 0x40) != 0)
    {
      v4 = strrchr((a1 + 1112), 64);
      if (!strncmp(v4 + 1, "/dev/disk", 9uLL))
      {
        v5 = sub_100010DBC(v4 + 1);
        if (v5)
        {
          if (!sub_1000029AC(v5, 32))
          {
            sub_100007688(v3, 32, 0);
          }
        }
      }
    }

    CFArrayInsertValueAtIndex(qword_100029280, 0, v3);

    CFRelease(v3);
  }
}

void sub_1000132D0()
{
  v8 = 0;
  v0 = getmntinfo(&v8, 2);
  if (v0 >= 1)
  {
    v1 = 0;
    v2 = 2168 * v0;
    do
    {
      v3 = sub_100009BF0(&v8[v1 / 0x878]);
      v4 = sub_100010DBC(v3);
      if (v4)
      {
        v5 = v4;
        if (!sub_100007058(v4, @"DAVolumePath"))
        {
          if (sub_100007058(v5, @"DAVolumeMountable") == kCFBooleanFalse)
          {
            sub_10000DCF0(v5, 0);
          }

          sub_10000DD0C(v5, 0);
        }
      }

      else
      {
        v6 = v8;
        v7 = &v8[v1 / 0x878];
        if (strncmp(v8[v1 / 0x878].f_mntfromname, "/dev/disk", 9uLL) && (v7->f_flags & 0x20) == 0 && strcmp(v6[v1 / 0x878].f_fstypename, "devfs"))
        {
          sub_1000131E4(v7);
          sub_100013B38();
        }
      }

      v1 += 2168;
    }

    while (v2 != v1);
  }
}

void sub_100013410()
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count >= 1)
  {
    v1 = Count;
    for (i = 0; i != v1; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, i);
      if (sub_100007058(ValueAtIndex, @"DAVolumePath"))
      {
        sub_10000DD0C(ValueAtIndex, 0);
      }
    }
  }
}

void sub_10001349C(id a1)
{
  qword_1000291A0 = dispatch_workloop_create_inactive("DAServer");
  dispatch_set_qos_class_fallback();
  v1 = qword_1000291A0;

  dispatch_activate(v1);
}

uint64_t sub_1000134E8()
{
  if (dword_1000291A8 || (result = bootstrap_check_in(bootstrap_port, "com.apple.DiskArbitration.diskarbitrationd", &dword_1000291A8), dword_1000291A8))
  {
    if (qword_100029198 != -1)
    {
      sub_10001B388();
    }

    qword_1000291B0 = dispatch_mach_create_f();

    return dispatch_mach_connect();
  }

  return result;
}

void sub_1000135AC(id a1)
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count >= 1)
  {
    v2 = Count;
    for (i = 0; i != v2; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, i);
      if (sub_100007058(ValueAtIndex, @"DAVolumeMountable") == kCFBooleanTrue && !sub_10000BDD4(ValueAtIndex, 2) && sub_10000BDD4(ValueAtIndex, 0) && !sub_100007058(ValueAtIndex, @"DAVolumePath"))
      {
        sub_10000DC90(ValueAtIndex, 0, 0, 0, @"automatic");
      }

      if (sub_1000029AC(ValueAtIndex, 8))
      {
        sub_100007688(ValueAtIndex, 0x40000, 0);
        sub_10000DCF0(ValueAtIndex, 0);
      }
    }
  }
}

uint64_t sub_100013714()
{
  result = _CFRuntimeRegisterClass();
  qword_1000291B8 = result;
  return result;
}

void sub_10001373C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    dispatch_mach_cancel();
    dispatch_release(*(a1 + 56));
    *(a1 + 56) = 0;
  }
}

uint64_t sub_100013774(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 36) = *(result + 36) & ~a2 | v3;
  return result;
}

void sub_100013798(uint64_t a1, const __CFDictionary *a2)
{
  Count = CFArrayGetCount(*(a1 + 48));
  if (Count >= 1)
  {
    v5 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v5 - 2);
      v7 = sub_1000029BC(ValueAtIndex);
      if (v7 == sub_1000029BC(a2))
      {
        v8 = sub_100002AFC(ValueAtIndex);
        if (v8 == sub_100002AFC(a2))
        {
          CFArrayRemoveValueAtIndex(*(a1 + 48), v5 - 2);
        }
      }

      --v5;
    }

    while (v5 > 1);
  }

  v9 = CFArrayGetCount(*(a1 + 40));
  if (v9 >= 1)
  {
    v10 = v9 + 1;
    do
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 40), v10 - 2);
      v12 = sub_1000029BC(v11);
      if (v12 == sub_1000029BC(a2))
      {
        v13 = sub_100002AFC(v11);
        if (v13 == sub_100002AFC(a2))
        {
          CFArrayRemoveValueAtIndex(*(a1 + 40), v10 - 2);
        }
      }

      --v10;
    }

    while (v10 > 1);
  }
}

void sub_1000138B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    mach_port_deallocate(mach_task_self_, v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = mach_task_self_;

    mach_port_mod_refs(v7, v6, 1u, -1);
  }
}

CFStringRef sub_10001395C(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<DASession %p [%p]>{id = %s [%d]:%d}", a1, v3, *(a1 + 24), *(a1 + 32), *(a1 + 64));
}

void sub_1000139C0()
{
  v0 = byte_100028408;
  v1 = sub_100003958();
  sub_100009EE0("__DASetIdleTimer %d %x", v0, v1);
  if (!sub_100003958() && byte_100028408 == 1)
  {
    qword_100029320 = CFAbsoluteTimeGetCurrent();
    if (!byte_1000292A0)
    {
      sub_100009EE0("Idle timer started ");
      byte_1000292A0 = 1;
      v2 = dispatch_time(0, 20000000000);
      v3 = sub_1000018C8();

      dispatch_after(v2, v3, &stru_100025550);
    }
  }
}

void sub_100013A98(id a1)
{
  sub_100009EE0("__DAIdleTimerCallback fired");
  byte_1000292A0 = 0;
  if (byte_100028408 == 1 && !sub_100003958())
  {
    v1 = *&qword_100029320 + 20.0;
    if (v1 < CFAbsoluteTimeGetCurrent())
    {
      sub_100009EE0("__DAIdleTimerCallback exiting");
      exit(0);
    }

    sub_1000139C0();
  }
}

void sub_100013B38()
{
  if (byte_100028408)
  {
    sub_100001BF0();
  }

  byte_100028408 = 0;
  v0 = sub_1000018C8();

  dispatch_async_f(v0, 0, sub_100013B94);
}

void sub_100013B94()
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count < 1)
  {
    v3 = 1;
  }

  else
  {
    v1 = Count;
    v2 = 0;
    v3 = 1;
    v4 = kCFAbsoluteTimeIntervalSince1904;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v2);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = sub_100007060(ValueAtIndex);
        v8 = v7;
        if (v7 == 0.0)
        {
          if (sub_100007058(v6, @"DAMediaWhole") == kCFBooleanTrue)
          {
            sub_100017E44(v6, 4, 1);
          }
        }

        else
        {
          v8 = v7 + 10.0;
        }

        if (v8 == 0.0 || v8 < CFAbsoluteTimeGetCurrent())
        {
          if (sub_100007058(v6, @"DAMediaWhole") == kCFBooleanTrue)
          {
            sub_100017E44(v6, 2, 1);
          }
        }

        else
        {
          v3 = 0;
          if (v8 + 1.0 < v4)
          {
            v4 = v8 + 1.0;
          }
        }
      }

      ++v2;
    }

    while (v1 != v2);
    if (kCFAbsoluteTimeIntervalSince1904 > v4 && CFAbsoluteTimeGetCurrent() < v4)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = dispatch_time(0, 1000000000 * (v4 - Current));
      v11 = sub_1000018C8();
      dispatch_after(v10, v11, &stru_100025590);
    }
  }

  v12 = CFArrayGetCount(qword_100029280);
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    v68 = v12;
    v15 = &byte_100028D48[696];
    do
    {
      v16 = CFArrayGetValueAtIndex(qword_100029280, v14);
      if (!sub_1000029AC(v16, 1))
      {
        if (sub_1000029AC(v16, 0x10000))
        {
          if (sub_1000029AC(v16, 0x20000))
          {
            if (sub_1000029AC(v16, 0x40000))
            {
              if (sub_1000029AC(v16, 0x80000))
              {
                if (!qword_100029278)
                {
                  if (sub_100007058(v16, @"DAMediaType"))
                  {
                    v17 = sub_100007058(v16, @"DAMediaSize");
                    if (v17)
                    {
                      if (!sub_100009698(v17) && !sub_100017C34(v16, 0x10000))
                      {
                        if (sub_10000CD48(v16))
                        {
                          sub_10000DB84(v16, 0, 0);
                        }

                        sub_100017E44(v16, 0x10000, 1);
                      }
                    }
                  }
                }

                goto LABEL_23;
              }

              sub_100007688(v16, 0x80000, 1);
              sub_10000D8FC(v16);
              sub_100013B38(v40);
            }

            else
            {
              if (byte_100029288)
              {
                goto LABEL_23;
              }

              if (sub_100007058(v16, @"DAVolumeUUID"))
              {
                v32 = qword_1000292D8;
                v33 = sub_100007058(v16, @"DAVolumeUUID");
                Value = CFDictionaryGetValue(v32, v33);
                bzero(&v70, 0x878uLL);
                if (Value)
                {
                  if (CFURLGetFileSystemRepresentation(Value, 1u, buffer, 1024))
                  {
                    if (!statfs(buffer, &v70))
                    {
                      v35 = strlen(off_100028400);
                      if (!strncmp(v70.f_mntonname, off_100028400, v35))
                      {
                        sub_100009EE0("dangling mountpoint present ignore mountpoint %@", v16);
                        goto LABEL_23;
                      }
                    }
                  }
                }
              }

              if (sub_1000029AC(v16, 2))
              {
                v36 = CFArrayGetCount(qword_100029280);
                if (v36 < 1)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = 0;
                  while (1)
                  {
                    v38 = CFArrayGetValueAtIndex(qword_100029280, v37);
                    v39 = sub_100007094(v16);
                    if (v39 == sub_100007094(v38) && (!sub_1000029AC(v38, 0x10000) || !sub_1000029AC(v38, 0x40000) && !sub_1000029AC(v38, 2)))
                    {
                      break;
                    }

                    if (v36 == ++v37)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                if (v37 == v36)
                {
LABEL_71:
                  sub_1000144F0(v16);
                }

                v3 = 0;
                goto LABEL_51;
              }

              sub_1000144F0(v16);
            }
          }

          else
          {
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if (Mutable)
            {
              v20 = Mutable;
              v21 = qword_100029308;
              v22 = CFArrayGetCount(qword_100029308);
              if (v22 >= 1)
              {
                v23 = v22;
                for (i = 0; i != v23; ++i)
                {
                  v25 = CFArrayGetValueAtIndex(v21, i);
                  v26 = sub_100002BE4(v25);
                  v27 = CFArrayGetCount(v26);
                  if (v27 >= 1)
                  {
                    v28 = v27;
                    for (j = 0; j != v28; ++j)
                    {
                      v30 = CFArrayGetValueAtIndex(v26, j);
                      if (sub_1000023E8(v30) == 9)
                      {
                        CFArrayAppendValue(v20, v30);
                      }
                    }
                  }
                }
              }

              v71.length = CFArrayGetCount(v20);
              v71.location = 0;
              CFArraySortValues(v20, v71, sub_100014B7C, 0);
              CFRetain(v16);
              sub_100007378(v16, v20);
              sub_100007688(v16, 0x20000, 1);
              v31 = sub_100007688(v16, 1, 1);
              sub_100014BB8(v31, v16);
              CFRelease(v20);
              v3 = 0;
              v13 = v68;
LABEL_51:
              v15 = byte_100028D48 + 696;
              goto LABEL_23;
            }
          }
        }

        else
        {
          if (v15[448] == 1)
          {
            sub_100016BD8();
            sub_100017044();
            sub_10001745C();
            v15[448] = 0;
          }

          if (!sub_100017C90(v16, 1))
          {
            CFRetain(v16);
            sub_100007688(v16, 0x10000, 1);
            sub_100007688(v16, 1, 1);
            sub_100017E44(v16, 1, 1);
            v18 = sub_1000076E0(v16);
            sub_10000CEF0(v16, v18, sub_10001455C, v16);
          }
        }
      }

      v3 = 0;
LABEL_23:
      ++v14;
    }

    while (v14 != v13);
  }

  v41 = CFArrayGetCount(qword_1000292F8);
  if (v41)
  {
    v42 = v41;
    v43 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    if (v43)
    {
      v44 = v43;
      if (v42 >= 1)
      {
        for (k = 0; k < v42; ++k)
        {
          v46 = CFArrayGetValueAtIndex(qword_1000292F8, k);
          if (v46)
          {
            v47 = v46;
            v48 = sub_10000E7CC(v46);
            if (v48)
            {
              v49 = sub_10000F9D0(v47);
              if (v49)
              {
                v50 = v49;
                v51 = CFArrayGetCount(v49);
                if (v51 >= 1)
                {
                  v52 = v51;
                  v53 = 0;
                  while (1)
                  {
                    v54 = CFArrayGetValueAtIndex(v50, v53);
                    v55 = sub_10000E7CC(v54);
                    if (CFSetContainsValue(v44, v55))
                    {
                      break;
                    }

                    if (v52 == ++v53)
                    {
                      goto LABEL_85;
                    }
                  }

                  CFSetContainsValue(v44, v48);
LABEL_96:
                  if (v48)
                  {
                    v57 = sub_10000F9D0(v47);
                    if (v57)
                    {
                      v58 = v57;
                      v59 = CFArrayGetCount(v57);
                      if (v59 >= 1)
                      {
                        v60 = v59;
                        for (m = 0; m != v60; ++m)
                        {
                          v62 = CFArrayGetValueAtIndex(v58, m);
                          v63 = sub_10000E7CC(v62);
                          CFSetSetValue(v44, v63);
                        }
                      }
                    }

                    CFSetSetValue(v44, v48);
                  }

                  continue;
                }
              }

LABEL_85:
              if (CFSetContainsValue(v44, v48))
              {
                goto LABEL_96;
              }
            }

            else if (k)
            {
              break;
            }

            if (sub_10000E7D8(v47) == 7 && byte_1000291C0 != 0)
            {
              sub_100016BD8();
              sub_100017044();
              sub_10001745C();
              byte_1000291C0 = 0;
            }

            if (!sub_10000E614(v47))
            {
              goto LABEL_96;
            }

            CFArrayRemoveValueAtIndex(qword_1000292F8, k);
            --v42;
            --k;
          }
        }
      }

      CFRelease(v44);
    }
  }

  else if (v3)
  {
    byte_1000291C0 = 1;
    if (!byte_100028408)
    {
      sub_100003910();
      byte_100028408 = 1;
      sub_1000139C0();
    }

    sub_10000DD90();
    if (qword_100029268)
    {
      v64 = CFArrayGetCount(qword_100029280);
      if (v64 >= 1)
      {
        v65 = v64;
        for (n = 0; n != v65; ++n)
        {
          v67 = CFArrayGetValueAtIndex(qword_100029280, n);
          if (sub_100007058(v67, @"DAMediaWhole") == kCFBooleanTrue && !sub_100017C34(v67, 0x10000))
          {
            if (sub_10000CD48(v67))
            {
              sub_100005C6C(v67);
            }

            sub_100017E44(v67, 0x10000, 1);
          }

          if (sub_100007058(v67, @"DAVolumePath") && !sub_1000029AC(v67, 0x100000))
          {
            if (sub_1000029AC(v67, 2) && sub_1000029AC(v67, 16) && !sub_100002E30(v67))
            {
              sub_100005C98(v67);
            }

            sub_100007688(v67, 0x100000, 1);
          }
        }
      }
    }
  }
}

uint64_t sub_1000144F0(uint64_t a1)
{
  sub_100007688(a1, 0x40000, 1);
  v2 = sub_10000BDD4(a1, 2);
  if (!v2)
  {
    v2 = sub_10000DC90(a1, 0, 0, 0, @"automatic");
  }

  return sub_100013B38(v2);
}

void sub_10001455C(int a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, void *a7)
{
  sub_100007444(a7, a2);
  sub_100007688(a7, 2, 0);
  sub_100007688(a7, 4, 0);
  if (a1)
  {
    v14 = 0;
    v15 = 8;
LABEL_25:
    sub_100007688(a7, v15, 1);
    goto LABEL_26;
  }

  v14 = sub_100007DE8(a2);
  if (v14 && sub_100007E40(a2))
  {
    sub_100009EE0("staged fsmodule, id = %@, with %@, success.", a7, v14);
    v14 = sub_100014F34(v14);
  }

  sub_100007688(a7, 8, 0);
  v16 = sub_100007058(a7, @"DAMediaContent");
  if (v16 && CFEqual(v16, @"7C3457EF-0000-11AA-AA11-00306543ECAC") && sub_100007058(a7, @"DADeviceInternal") == kCFBooleanFalse)
  {
    sub_100007688(a7, 128, 1);
  }

  v17 = sub_100007058(a7, @"DAMediaWritable");
  if (sub_100017C34(a7, 16))
  {
    v18 = a3 < 64;
  }

  else
  {
    v18 = 1;
  }

  if (v18 && v17 != kCFBooleanFalse && a3 != 0 || kCFBooleanTrue == kCFBooleanFalse)
  {
    v15 = 2;
    goto LABEL_25;
  }

LABEL_26:
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v23 = Mutable;
    if (v14)
    {
      v24 = &kCFBooleanTrue;
    }

    else
    {
      v24 = &kCFBooleanFalse;
    }

    v25 = *v24;
    if (sub_100005CC4(a7, @"DAVolumeMountable", *v24))
    {
      sub_100007400(a7, @"DAVolumeMountable", v25);
      CFArrayAppendValue(v23, @"DAVolumeMountable");
    }

    if (sub_100005CC4(a7, @"DAVolumeKind", v14))
    {
      sub_100007400(a7, @"DAVolumeKind", v14);
      CFArrayAppendValue(v23, @"DAVolumeKind");
    }

    if (sub_100005CC4(a7, @"DAVolumeName", a4))
    {
      sub_100007400(a7, @"DAVolumeName", a4);
      CFArrayAppendValue(v23, @"DAVolumeName");
    }

    if (sub_100005CC4(a7, @"DAVolumeType", a5))
    {
      sub_100007400(a7, @"DAVolumeType", a5);
      CFArrayAppendValue(v23, @"DAVolumeType");
    }

    if (sub_100005CC4(a7, @"DAVolumeUUID", a6))
    {
      sub_100007400(a7, @"DAVolumeUUID", a6);
      CFArrayAppendValue(v23, @"DAVolumeUUID");
    }

    if (CFArrayGetCount(v23) && sub_1000029AC(a7, 0x80000))
    {
      sub_10000DAB8(a7, v23);
    }

    CFRelease(v23);
  }

  if (!sub_1000029AC(a7, 0x40000))
  {
    v45 = 0;
    v27 = getmntinfo(&v45, 2);
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = 2168 * v27;
      do
      {
        v30 = sub_100009BF0(&v45[v28 / 0x878]);
        v31 = sub_100006C18(a7);
        if (!strcmp(v30, v31))
        {
          if (!sub_100007058(a7, @"DAVolumeUUID") || (v37 = qword_1000292D8, v38 = sub_100007058(a7, @"DAVolumeUUID"), !CFDictionaryGetValue(v37, v38)))
          {
            v40 = strlen(v45[v28 / 0x878].f_mntonname);
            v41 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v45[v28 / 0x878].f_mntonname, v40, 1u);
            if (v41)
            {
              v42 = v41;
              sub_10000729C(a7, v41);
              sub_100007400(a7, @"DAVolumePath", v42);
              CFRelease(v42);
            }

            if (v45[v28 / 0x878].f_mntonname[0] == 47 && !v45[v28 / 0x878].f_mntonname[1])
            {
              v43 = sub_10000BDCC();
              if (v43)
              {
                v44 = v43;
                sub_10000729C(a7, v43);
                CFRelease(v44);
              }

              sub_100007688(a7, 16, 1);
              sub_100007688(a7, 32, 1);
            }

            sub_100007688(a7, 2, 0);
            sub_100007688(a7, 4, 0);
            break;
          }

          v39 = sub_100007058(a7, @"DAVolumeUUID");
          sub_100009EE0("dangling device present ignore mountpoint %@", v39);
        }

        else
        {
          v32 = &v45[v28 / 0x878];
          if (!strcmp(v45[v28 / 0x878].f_fstypename, "lifs") && !strncmp(v32->f_mntfromname, "apfs", 4uLL))
          {
            v33 = sub_100009D04(v32, __s2, 1024);
            v34 = sub_10000703C(a7, 0);
            if (!v33 && !strcmp(v34, __s2))
            {
              v35 = sub_100006C20(kCFAllocatorDefault, &v45[v28 / 0x878]);
              if (v35)
              {
                v36 = v35;
                sub_100009EE0("created disk, id = %@.", v35);
                CFArrayInsertValueAtIndex(qword_100029280, 0, v36);
                CFRelease(v36);
              }

              sub_100007688(a7, 2, 0);
              sub_100007688(a7, 4, 0);
              sub_100007688(a7, 0x40000, 1);
            }
          }
        }

        v28 += 2168;
      }

      while (v29 != v28);
    }
  }

  sub_100017E44(a7, 1, 0);
  v26 = sub_100007688(a7, 1, 0);
  sub_100013B38(v26);
  CFRelease(a7);
}

uint64_t sub_100014B7C(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v3 = sub_100004518(a1);
  v4 = sub_100004518(a2);
  if (v3 >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_100014BB8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_100002BE4(a2);
  if (CFArrayGetCount(v3))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(v3, 0);
    sub_10000D9DC(v2, ValueAtIndex, sub_100014BB8, v2);
    v2 = ValueAtIndex;
  }

  else
  {
    sub_100007688(v2, 1, 0);
    sub_100007378(v2, 0);
    sub_100013B38(v5);
  }

  CFRelease(v2);
}

uint64_t sub_100014EFC()
{
  result = objc_opt_class();
  if (result)
  {
    byte_100028409 = 0;
  }

  return result;
}

CFStringRef sub_100014F34(const __CFString *a1)
{
  range.location = 0;
  range.length = 0;
  v2 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, @"_");
  v6.length = CFStringGetLength(a1);
  v6.location = 0;
  CFStringFindCharacterFromSet(a1, v2, v6, 0, &range);
  v7.length = range.location;
  v7.location = 0;
  v3 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v7);
  CFRelease(v2);
  return v3;
}

void sub_100014FD0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  *(v4 + 16) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000150F4;
  v7[3] = &unk_1000255B8;
  v7[4] = v4;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);
    v8.length = CFArrayGetCount(*(v4 + 24));
    v8.location = 0;
    CFArrayAppendArray(v6, v5, v8);
    CFRelease(*(v4 + 24));
    *(v4 + 24) = 0;
  }

  sub_10001526C(0xFFFFFFFFLL, 0xFFFFFFFFLL, 0, 0, 0, v4);
  if (*a2)
  {
    CFRelease(*a2);
  }

  free(a2);
}

void sub_1000150F4(uint64_t a1, const __CFDictionary *a2)
{
  v3 = sub_100007D5C(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100007DE8(v3);
    if (!CFEqual(v5, @"hfs_fskit"))
    {
      v6 = sub_100007DE8(v4);
      if (!CFEqual(v6, @"apfs_fskit"))
      {
        v7 = sub_100007DE8(v4);
        sub_100001950(" created filesystem, id = %@. %@", v4, v7);
        v8 = sub_100007E30(v4);
        if (v8)
        {
          v9 = v8;
          Count = CFDictionaryGetCount(v8);
          v11 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
          CFDictionaryGetKeysAndValues(v9, 0, v11);
          if (Count >= 1)
          {
            v12 = v11;
            do
            {
              MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *v12);
              if (MutableCopy)
              {
                v14 = MutableCopy;
                CFDictionarySetValue(MutableCopy, @"DAFileSystem", v4);
                CFArrayAppendValue(*(*(a1 + 32) + 16), v14);
                CFRelease(v14);
              }

              ++v12;
              --Count;
            }

            while (Count);
          }

          free(v11);
        }
      }
    }

    CFRelease(v4);
  }
}

void sub_10001526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFUUID *a5, void *a6)
{
  v12 = a6[4];
  v13 = sub_1000070A4(v12);
  PathComponent = CFURLCopyLastPathComponent(v13);
  v14 = (sub_100007058(v12, @"DAMediaRemovable") != kCFBooleanTrue || sub_100007058(v12, @"DADeviceInternal")) && sub_100007058(v12, @"DADeviceInternal") != kCFBooleanTrue;
  v15 = a6[6];
  if (!a1)
  {
    v24 = sub_100007DE8(a6[6]);
    sub_100009EE0("probed disk, id = %@, with %@, success.", a6[4], v24);
    if (*a6)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v37 = v14;
  v39 = a2;
  if (v15)
  {
    v16 = sub_100007DE8(v15);
    sub_100009EE0("probed disk, id = %@, with %@, failure.", a6[4], v16);
    if (a1 != -2)
    {
      sub_100009E58("unable to probe %@ (status code 0x%08X).", a6[4], a1);
    }

    CFRelease(a6[6]);
    a6[6] = 0;
  }

  v40 = a4;
  v41 = a5;
  if (CFArrayGetCount(a6[2]) < 1)
  {
LABEL_16:
    a4 = v40;
    a5 = v41;
    a2 = v39;
    if (*a6)
    {
      if (!v15)
      {
LABEL_26:
        (*a6)(a1, a6[6], a2, a3, a4, a5, a6[1]);
        goto LABEL_27;
      }

LABEL_20:
      v25 = 0;
      if (!a1)
      {
        v26 = a6[6];
        if (v26)
        {
          v25 = sub_100017F50(v26, a5);
        }
      }

      v27 = a6[4];
      if (v27)
      {
        sub_100007688(v27, 256, 1);
        v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        sub_100004DAC(a1, v25, v12, v28 - a6[7], a2);
        if (a1)
        {
          sub_100007688(v12, 256, 0);
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v29 = a6[2];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = a6[4];
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = a6[6];
    if (v31)
    {
      CFRelease(v31);
    }

    free(a6);
    return;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a6[2], 0);
    Value = CFDictionaryGetValue(ValueAtIndex, @"DAFileSystem");
    if (Value)
    {
      v19 = Value;
      v20 = CFDictionaryGetValue(ValueAtIndex, @"FSMediaProperties");
      v21 = sub_100007DE8(v19);
      if (v20)
      {
        v22 = v21;
        matches = 0;
        v23 = sub_100007050(v12);
        IOServiceMatchPropertyTable(v23, v20, &matches);
        if (matches)
        {
          break;
        }
      }
    }

    CFArrayRemoveValueAtIndex(a6[2], 0);
    if (CFArrayGetCount(a6[2]) <= 0)
    {
      goto LABEL_16;
    }
  }

  if (CFDictionaryGetValue(ValueAtIndex, @"autodiskmount") == kCFBooleanFalse)
  {
    sub_100007688(v12, 16, 0);
    sub_100007688(v12, 32, 0);
  }

  sub_100009EE0("probed disk, id = %@, with %@, ongoing.", v12, v22);
  CFRetain(v19);
  a6[6] = v19;
  CFArrayRemoveValueAtIndex(a6[2], 0);
  if (sub_100007E40(v19))
  {
    v32 = sub_100007DFC(v19);
    sub_100015C50(PathComponent, v32, v37, sub_10001526C, a6);
  }

  else
  {
    v33 = a6[5];
    if (v33)
    {
      v34 = sub_10000703C(v33, 1);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_1000070A4(a6[4]);
    v36 = sub_10000703C(a6[4], 1);
    sub_1000083BC(v19, v35, v36, v34, sub_10001526C, a6, v37);
  }
}

uint64_t sub_10001563C(uint64_t a1)
{
  v2 = +[FSClient sharedInstance];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000158BC;
  v25 = sub_1000158CC;
  v26 = objc_alloc_init(NSMutableArray);
  v3 = dispatch_group_create();
  v4 = *(a1 + 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 501;
  }

  v6 = objc_alloc_init(FSAuditToken);
  v7 = [v6 tokenWithRuid:v5];

  dispatch_group_enter(v3);
  if (v7 && v2)
  {
    [v7 audit_token];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000158D4;
    v11[3] = &unk_100025608;
    v13 = &v17;
    v14 = &v21;
    v15 = v5;
    v12 = v3;
    [v2 installedExtensionsForUser:v16 replyHandler:v11];
  }

  else
  {
    sub_100009E58("Unable to retrieve FSModules for uid %u: infrastructure issues", v5);
    dispatch_group_leave(v3);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v18[3])
  {
    *a1 = CFRetain(v22[5]);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(v8 + 32);
      if (v9)
      {
        if (sub_1000029AC(*(v8 + 32), 8))
        {
          sub_100007688(v9, 256, 1);
          sub_100004DAC(35, 0, v9, 0, -1);
          sub_100007688(v9, 256, 0);
        }
      }
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v21, 8);
  return 0;
}

void sub_100015894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000158BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000158D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    sub_100009E58("Unable to retrieve FSModules for uid %u: %@", *(a1 + 56), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100015988;
    v4[3] = &unk_1000255E0;
    v4[4] = *(a1 + 48);
    [a2 enumerateObjectsUsingBlock:v4];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100015988(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 attributes];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSString alloc];
  v6 = [v3 objectForKeyedSubscript:@"FSShortName"];
  v7 = [v5 initWithFormat:@"%@_fskit", v6];

  v8 = [v3 objectForKeyedSubscript:@"FSSupportsBlockResources"];
  v9 = v8;
  if (v7)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && [v8 BOOLValue])
  {
    [v4 setValue:v7 forKey:kCFBundleNameKey];
    v11 = [NSNumber numberWithBool:1];
    [v4 setValue:v11 forKey:@"FSIsFSModule"];

    [v4 setValue:&off_100027A98 forKey:@"FSImplementation"];
    v12 = [v16 bundleIdentifier];
    [v4 setValue:v12 forKey:@"FSBundleID"];

    v13 = [v3 objectForKeyedSubscript:@"FSMediaTypes"];
    v14 = [v3 objectForKeyedSubscript:@"FSPersonalities"];
    v15 = v14;
    if (v13 && v14)
    {
      [v4 setValue:v13 forKey:@"FSMediaTypes"];
      [v4 setValue:v15 forKey:@"FSPersonalities"];
      sub_100009DDC("Found FSModule: %@", v4);
    }

    else
    {
      sub_100009E58("FSModule missing information");

      v4 = 0;
    }
  }

  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

_DWORD *sub_100015BC0(int a1, uint64_t a2)
{
  result = malloc_type_malloc(0x18uLL, 0x10E0040F5622EBCuLL);
  if (result)
  {
    *result = 0;
    result[2] = a1;
    *(result + 2) = a2;

    return sub_1000183CC(sub_10001563C, result, sub_100014FD0, result);
  }

  return result;
}

void sub_100015C50(const void *a1, const void *a2, char a3, void (*a4)(uint64_t, uint64_t, void, void, void, uint64_t), uint64_t a5)
{
  if (byte_100028409)
  {
    v9 = 2;
    v10 = 2;
LABEL_3:
    a4(v9, v10, 0, 0, 0, a5);
    CFRelease(a2);

    CFRelease(a1);
    return;
  }

  v12 = malloc_type_malloc(0x40uLL, 0x10E00405BC55978uLL);
  if (!v12)
  {
    v9 = 12;
    v10 = 12;
    goto LABEL_3;
  }

  *v12 = a1;
  v12[1] = a2;
  *(v12 + 16) = a3;
  *(v12 + 20) = 0;
  *(v12 + 36) = 0;
  *(v12 + 28) = 0;
  *(v12 + 11) = 0;
  v12[6] = a4;
  v12[7] = a5;

  sub_1000183CC(sub_100015D68, v12, sub_100016264, v12);
}

uint64_t sub_100015D68(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v4 = dispatch_group_create();
  group = dispatch_group_create();
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_1000158BC;
  v44[4] = sub_1000158CC;
  v45 = 0;
  v23 = +[FSClient sharedInstance];
  v5 = [FSBlockDeviceResource proxyResourceForBSDName:v2];
  v6 = objc_alloc_init(FSAuditToken);
  v7 = [v6 tokenWithRuid:501];

  [v5 setLimited:1];
  dispatch_group_enter(v4);
  if (v7)
  {
    [v7 audit_token];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000162E8;
  v38[3] = &unk_100025630;
  v40 = &v46;
  v41 = a1;
  v8 = v4;
  v39 = v8;
  [v23 probeResource:v5 usingBundle:v3 auditToken:&v42 replyHandler:v38];
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v47 + 6);
  if (!v9)
  {
    [v5 setLimited:0];
    dispatch_group_enter(v8);
    if (v7)
    {
      [v7 audit_token];
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000163A0;
    v32 = &unk_100025658;
    v35 = &v46;
    v36 = a1;
    v33 = v8;
    v34 = v5;
    v37 = v3;
    v21 = v34;
    [v23 probeResource:? usingBundle:? auditToken:? replyHandler:?];
    dispatch_group_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(v47 + 6);
    if (!v9)
    {
      if (*(a1 + 16) == 1)
      {
        v14 = objc_alloc_init(FSDATaskMessage);
        v11 = [FSMessageReceiver receiverWithDelegate:v14];
        v12 = [v11 getConnection];
        v10 = objc_alloc_init(FSTaskOptionsBundle);
        v15 = [FSTaskOption optionWithoutValue:@"q"];
        [v10 addOption:v15];

        dispatch_group_enter(group);
        [(FSDATaskMessage *)v14 setDispatch_group:group];
        dispatch_group_enter(group);
        if (v7)
        {
          [v7 audit_token];
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100016608;
        v24[3] = &unk_1000256C0;
        v28 = a1;
        v13 = v14;
        v25 = v13;
        v27 = v44;
        v17 = group;
        v26 = v17;
        [v23 checkResource:v21 usingBundle:v3 options:v10 auditToken:&v42 connection:v12 replyHandler:v24];
        dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
        v18 = [(FSDATaskMessage *)v13 exitError];

        if (v18)
        {
          v19 = [(FSDATaskMessage *)v13 exitError];
          *(a1 + 5) = [v19 code];
        }

        v20 = [(FSDATaskMessage *)v13 exitError];
        sub_100009EE0("FSKit check of resource %@ exited with error %@ %d", v21, v20, *(a1 + 5));

        v9 = *(v47 + 6);
        goto LABEL_15;
      }

      v9 = 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_16:

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  return v9;
}

void sub_100016240(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100016264(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    v3(a1, *(a2 + 20), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 56));
  }

  CFRelease(*(a2 + 8));
  CFRelease(*a2);
  v4 = *(a2 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  free(a2);
}

void sub_1000162E8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 code];
  }

  else if (v10 && (v8 = [v10 result], v8 <= 3))
  {
    v7 = dword_1000202D0[v8];
  }

  else
  {
    v7 = 5;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9)
  {
    *(*(a1 + 48) + 20) = v9;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000163A0(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 code];
    goto LABEL_11;
  }

  if (v23)
  {
    v6 = [v23 result];
    v7 = *(*(a1 + 48) + 8);
    if (!v6)
    {
      v8 = 2;
      goto LABEL_10;
    }

    if (v6 == 3)
    {
      *(v7 + 24) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
  }

  v8 = 5;
LABEL_10:
  *(v7 + 24) = v8;
LABEL_11:
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9)
  {
    *(*(a1 + 56) + 20) = v9;
    dispatch_group_leave(*(a1 + 32));
    goto LABEL_26;
  }

  v10 = [*(a1 + 40) devicePath];
  v11 = _FSCopyNameForVolumeFormatAtNode(v10);

  if (v11)
  {
    *(*(a1 + 56) + 32) = v11;
  }

  v12 = [v23 name];

  if (v12)
  {
    v13 = [v23 name];
    v14 = [v13 hasPrefix:&stru_100027490];

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v15 = [v23 name];
      v16 = [NSCharacterSet characterSetWithCharactersInString:&stru_100027490];
      v12 = [v15 stringByTrimmingCharactersInSet:v16];

      if (v12)
      {
        v17 = [(__CFString *)v12 length];
        v18 = v12;
        if (v17)
        {
          goto LABEL_23;
        }
      }
    }
  }

  if ([*(a1 + 64) hasSuffix:@"msdos"])
  {
    v18 = @"NO NAME";
  }

  else
  {
    v18 = @"Untitled";
  }

LABEL_23:
  *(*(a1 + 56) + 24) = CFRetain(v18);
  v19 = [v23 containerID];

  if (v19)
  {
    v20 = [v23 containerID];
    v21 = [v20 uuid];
    v22 = [v21 description];
    *(*(a1 + 56) + 40) = CFUUIDCreateFromString(kCFAllocatorDefault, v22);
  }

  dispatch_group_leave(*(a1 + 32));

LABEL_26:
}

void sub_100016608(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    *(*(a1 + 56) + 20) = [v6 code];
    sub_100009EE0("check resource handler called with error %@", v7);
    [*(a1 + 32) completed:v7 replyHandler:&stru_100025698];
  }

  else
  {
    *(*(a1 + 56) + 20) = 0;
    sub_100009EE0("check resource handler called with error %@", 0);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000166DC(const void *a1, const void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = malloc_type_malloc(0x20uLL, 0xE0040ED91EDF5uLL);
  if (v8)
  {
    *v8 = a1;
    v8[1] = a2;
    v8[2] = a3;
    v8[3] = a4;

    sub_1000183CC(sub_1000167A4, v8, sub_100016AC4, v8);
  }

  else
  {
    a3(12, a4);
    CFRelease(a2);

    CFRelease(a1);
  }
}

uint64_t sub_1000167A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v3 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000158BC;
  v30[4] = sub_1000158CC;
  v31 = 0;
  v4 = +[FSClient sharedInstance];
  v5 = [FSBlockDeviceResource proxyResourceForBSDName:v1 isWritable:1];
  v6 = objc_alloc_init(FSDATaskMessage);
  v7 = [FSMessageReceiver receiverWithDelegate:v6];
  v8 = [v7 getConnection];
  v9 = objc_alloc_init(FSTaskOptionsBundle);
  v10 = [FSTaskOption optionWithoutValue:@"y"];
  [v9 addOption:v10];

  v11 = objc_alloc_init(FSAuditToken);
  v12 = [v11 tokenWithRuid:501];

  dispatch_group_enter(v3);
  [(FSDATaskMessage *)v6 setDispatch_group:v3];
  dispatch_group_enter(v3);
  if (v12)
  {
    [v12 audit_token];
  }

  else
  {
    memset(v29, 0, sizeof(v29));
  }

  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100016B18;
  v24 = &unk_100025708;
  v27 = &v32;
  v13 = v6;
  v25 = v13;
  v28 = v30;
  v14 = v3;
  v26 = v14;
  [v4 checkResource:v5 usingBundle:v2 options:v9 auditToken:v29 connection:v8 replyHandler:&v21];
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = [(FSDATaskMessage *)v13 exitError];
  sub_100009EE0("FSKit check of resource %@ exited with error %@", v5, v15, v21, v22, v23, v24);

  if (!*(v33 + 6))
  {
    v16 = [(FSDATaskMessage *)v13 exitError];

    if (v16)
    {
      v17 = [(FSDATaskMessage *)v13 exitError];
      v18 = [v17 code];
      *(v33 + 6) = v18;
    }
  }

  v19 = *(v33 + 6);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  return v19;
}

void sub_100016AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_100016AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v3(a1, *(a2 + 24));
  }

  CFRelease(*(a2 + 8));
  CFRelease(*a2);

  free(a2);
}

void sub_100016B18(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  sub_100009EE0("check resource handler called with error %@", v6);
  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v6 code];
    [*(a1 + 32) completed:v6 replyHandler:&stru_1000256E0];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100016BD8()
{
  memset(&v3, 0, sizeof(v3));
  memset(&v2, 0, sizeof(v2));
  if (stat("/System/Library/Filesystems", &v3))
  {
    qword_1000291C8 = 0;
    qword_1000291D0 = 0;
  }

  if (stat("/Library/Filesystems", &v2))
  {
    xmmword_1000291D8 = 0uLL;
  }

  if (qword_1000291C8 == v3.st_mtimespec.tv_sec)
  {
    tv_nsec = v3.st_mtimespec.tv_nsec;
    if (qword_1000291D0 == v3.st_mtimespec.tv_nsec)
    {
      if (xmmword_1000291D8 == v2.st_mtimespec.tv_sec)
      {
        tv_nsec = qword_1000291D0;
        if (*(&xmmword_1000291D8 + 1) == v2.st_mtimespec.tv_nsec)
        {
          return;
        }
      }

      else
      {
        tv_nsec = qword_1000291D0;
      }
    }
  }

  else
  {
    tv_nsec = v3.st_mtimespec.tv_nsec;
  }

  qword_1000291C8 = v3.st_mtimespec.tv_sec;
  qword_1000291D0 = tv_nsec;
  xmmword_1000291D8 = v2.st_mtimespec;
  CFArrayRemoveAllValues(qword_100029290);
  CFArrayRemoveAllValues(qword_100029298);
  sub_100016D44("/System/Library/Filesystems");
  sub_100016D44("/Library/Filesystems");
  v1 = qword_100029298;
  v4.length = CFArrayGetCount(qword_100029298);
  v4.location = 0;
  CFArraySortValues(v1, v4, sub_100016FBC, 0);
}

void sub_100016D44(const char *a1)
{
  v2 = strlen(a1);
  v3 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, a1, v2, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = opendir(a1);
    if (v5)
    {
      v6 = v5;
      sub_1000014A4("filesystems have been refreshed.");
      v7 = readdir(v6);
      if (v7)
      {
        v8 = v7;
        do
        {
          v9 = strlen(v8->d_name) + 18;
          if (v9 >= 22 && !strcmp(v8 + v9, ".fs"))
          {
            if (byte_100028409)
            {
              goto LABEL_12;
            }

            if (!strcmp(v8->d_name, "msdos.fs") && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
            {
              _os_feature_enabled_impl();
              sub_100009EE0("Skipping msdos.fs as %s pref is on");
            }

            else
            {
              if (strcmp(v8->d_name, "exfat.fs") || !_os_feature_enabled_impl())
              {
LABEL_12:
                v10 = strlen(v8->d_name);
                v11 = CFURLCreateFromFileSystemRepresentationRelativeToBase(kCFAllocatorDefault, v8->d_name, v10, 1u, v4);
                if (v11)
                {
                  v12 = v11;
                  v13 = sub_100007C74(kCFAllocatorDefault, v11);
                  if (v13)
                  {
                    v14 = v13;
                    sub_100001950("  created filesystem, id = %@.", v13);
                    CFArrayAppendValue(qword_100029290, v14);
                    v15 = sub_100007E30(v14);
                    if (v15)
                    {
                      CFDictionaryApplyFunction(v15, sub_100018150, v14);
                    }

                    CFRelease(v14);
                  }

                  CFRelease(v12);
                }

                goto LABEL_21;
              }

              sub_100009EE0("Skipping exfat.fs as FSKitModulesProbe pref is on");
            }
          }

LABEL_21:
          v8 = readdir(v6);
        }

        while (v8);
      }

      closedir(v6);
    }

    CFRelease(v4);
  }
}

CFComparisonResult sub_100016FBC(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"FSProbeOrder");
  v4 = CFDictionaryGetValue(a2, @"FSProbeOrder");
  if (!Value)
  {
    return 1;
  }

  if (!v4)
  {
    return -1;
  }

  return CFNumberCompare(Value, v4, 0);
}

uint64_t sub_100017044()
{
  memset(&v27, 0, sizeof(v27));
  result = stat("/etc/fstab", &v27);
  if (result)
  {
    v1 = 0;
    qword_1000291E8 = 0;
    qword_1000291F0 = 0;
  }

  else
  {
    v1 = qword_1000291E8;
  }

  if (v1 != v27.st_mtimespec.tv_sec)
  {
    tv_nsec = v27.st_mtimespec.tv_nsec;
    goto LABEL_8;
  }

  tv_nsec = v27.st_mtimespec.tv_nsec;
  if (qword_1000291F0 != v27.st_mtimespec.tv_nsec)
  {
LABEL_8:
    qword_1000291E8 = v27.st_mtimespec.tv_sec;
    qword_1000291F0 = tv_nsec;
    CFArrayRemoveAllValues(qword_1000292B8);
    result = sub_100002F88();
    if (!result)
    {
      return result;
    }

    v3 = sub_100002F44();
    if (!v3)
    {
      return sub_1000034B8();
    }

    v4 = v3;
    while (1)
    {
      v5 = v4[4];
      if (*v5 == 115 && v5[1] == 119 && !v5[2])
      {
        goto LABEL_46;
      }

      __stringp = *v4;
      strsep(&__stringp, "=");
      if (!__stringp)
      {
        goto LABEL_46;
      }

      v6 = CFStringCreateWithCString(kCFAllocatorDefault, __stringp, 0x8000100u);
      if (!v6)
      {
        goto LABEL_46;
      }

      v7 = v6;
      v8 = *v4;
      if (!strcmp(*v4, "UUID"))
      {
        v9 = sub_10000416C(kCFAllocatorDefault, v7);
      }

      else if (!strcmp(v8, "LABEL"))
      {
        v9 = CFRetain(v7);
      }

      else
      {
        if (strcmp(v8, "DEVICE"))
        {
          goto LABEL_44;
        }

        v9 = sub_100003D54(kCFAllocatorDefault, v7);
      }

      v10 = v9;
      if (v9)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v12 = Mutable;
          v13 = CFStringCreateMutable(kCFAllocatorDefault, 0);
          if (v13)
          {
            v14 = v13;
            v28 = v4[3];
            v15 = strsep(&v28, ",");
            if (v15)
            {
              v16 = v15;
              v17 = 0;
              do
              {
                v18 = v17;
                v17 = kCFBooleanTrue;
                if (strcmp(v16, "auto"))
                {
                  v17 = kCFBooleanFalse;
                  if (strcmp(v16, "noauto"))
                  {
                    CFStringAppendCString(v14, v16, 0x8000100u);
                    CFStringAppendCString(v14, ",", 0x8000100u);
                    v17 = v18;
                  }
                }

                v16 = strsep(&v28, ",");
              }

              while (v16);
              if (v17)
              {
                CFDictionarySetValue(v12, @"DAMountAutomatic", v17);
              }
            }

            if (CFStringGetLength(v14))
            {
              CFStringTrim(v14, @",");
              CFDictionarySetValue(v12, @"DAMountOptions", v14);
            }

            CFRelease(v14);
          }

          v19 = v4[1];
          if (strcmp(v19, "none"))
          {
            v20 = strlen(v19);
            v21 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v19, v20, 1u);
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(v12, @"DAMountPath", v21);
              CFRelease(v22);
            }
          }

          v23 = v4[2];
          if (strcmp(v23, "auto"))
          {
            v24 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(v12, @"DAProbeKind", v24);
              CFRelease(v25);
            }
          }

          CFDictionarySetValue(v12, @"DAProbeID", v10);
          CFRelease(v10);
          CFRelease(v7);
          CFArrayAppendValue(qword_1000292B8, v12);
          v26 = v12;
          goto LABEL_45;
        }

        CFRelease(v10);
      }

LABEL_44:
      v26 = v7;
LABEL_45:
      CFRelease(v26);
LABEL_46:
      v4 = sub_100002F44();
      if (!v4)
      {
        return sub_1000034B8();
      }
    }
  }

  return result;
}

uint64_t sub_10001745C()
{
  memset(&v14, 0, sizeof(v14));
  result = stat("/var/db/volinfo.database", &v14);
  if (result)
  {
    v1 = 0;
    qword_1000291F8 = 0;
    qword_100029200 = 0;
  }

  else
  {
    v1 = qword_1000291F8;
  }

  if (v1 != v14.st_mtimespec.tv_sec)
  {
    tv_nsec = v14.st_mtimespec.tv_nsec;
    goto LABEL_8;
  }

  tv_nsec = v14.st_mtimespec.tv_nsec;
  if (qword_100029200 != v14.st_mtimespec.tv_nsec)
  {
LABEL_8:
    qword_1000291F8 = v14.st_mtimespec.tv_sec;
    qword_100029200 = tv_nsec;
    CFArrayRemoveAllValues(qword_1000292C0);
    result = sub_1000035A8();
    if (!result)
    {
      return result;
    }

    v3 = sub_100003564();
    if (!v3)
    {
      return sub_100003650();
    }

    v4 = v3;
    while (1)
    {
      v5 = CFStringCreateWithCString(kCFAllocatorDefault, *v4, 0x8000100u);
      if (v5)
      {
        break;
      }

LABEL_25:
      v4 = sub_100003564();
      if (!v4)
      {
        return sub_100003650();
      }
    }

    v6 = v5;
    v7 = sub_100007B58(kCFAllocatorDefault, v5);
    if (v7)
    {
      v8 = v7;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v10 = Mutable;
        v11 = CFStringCreateMutable(kCFAllocatorDefault, 0);
        if (v11)
        {
          v12 = v11;
          if (v4[1])
          {
            v13 = @"owners";
          }

          else
          {
            v13 = @"noowners";
          }

          CFStringAppend(v11, v13);
          CFStringAppend(v12, @",");
          if (CFStringGetLength(v12))
          {
            CFStringTrim(v12, @",");
            CFDictionarySetValue(v10, @"DAMountOptions", v12);
          }

          CFRelease(v12);
        }

        CFDictionarySetValue(v10, @"DAProbeID", v8);
        CFRelease(v8);
        CFRelease(v6);
        CFArrayAppendValue(qword_1000292C0, v10);
        goto LABEL_24;
      }

      CFRelease(v8);
    }

    v10 = v6;
LABEL_24:
    CFRelease(v10);
    goto LABEL_25;
  }

  return result;
}

void sub_100017674()
{
  memset(&v53, 0, sizeof(v53));
  memset(&v52, 0, sizeof(v52));
  if (stat("/Library/Preferences/SystemConfiguration/autodiskmount.plist", &v53))
  {
    qword_100029208 = 0;
    qword_100029210 = 0;
  }

  if (stat("/Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist", &v52))
  {
    xmmword_100029218 = 0uLL;
  }

  if (qword_100029208 == v53.st_mtimespec.tv_sec)
  {
    tv_nsec = v53.st_mtimespec.tv_nsec;
    if (qword_100029210 == v53.st_mtimespec.tv_nsec)
    {
      if (xmmword_100029218 == v52.st_mtimespec.tv_sec)
      {
        tv_nsec = qword_100029210;
        if (*(&xmmword_100029218 + 1) == v52.st_mtimespec.tv_nsec)
        {
          return;
        }
      }

      else
      {
        tv_nsec = qword_100029210;
      }
    }
  }

  else
  {
    tv_nsec = v53.st_mtimespec.tv_nsec;
  }

  qword_100029208 = v53.st_mtimespec.tv_sec;
  qword_100029210 = tv_nsec;
  xmmword_100029218 = v52.st_mtimespec;
  CFDictionaryRemoveAllValues(qword_1000292C8);
  v1 = SCPreferencesCreate(kCFAllocatorDefault, @"autodiskmount", @"autodiskmount.plist");
  if (v1)
  {
    v2 = v1;
    Value = SCPreferencesGetValue(v1, @"AutomountDisksWithoutUserLogin");
    if (Value == kCFBooleanTrue)
    {
      v4 = kCFBooleanFalse;
      CFDictionarySetValue(qword_1000292C8, @"DAMountDeferExternal", kCFBooleanFalse);
    }

    else
    {
      if (Value != kCFBooleanFalse)
      {
LABEL_17:
        CFRelease(v2);
        goto LABEL_18;
      }

      CFDictionarySetValue(qword_1000292C8, @"DAMountDeferExternal", kCFBooleanFalse);
      v4 = kCFBooleanTrue;
    }

    CFDictionarySetValue(qword_1000292C8, @"DAMountDeferRemovable", v4);
    CFDictionarySetValue(qword_1000292C8, @"DAMountTrustExternal", kCFBooleanTrue);
    goto LABEL_17;
  }

LABEL_18:
  v5 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.DiskArbitration.diskarbitrationd", @"com.apple.DiskArbitration.diskarbitrationd.plist");
  if (v5)
  {
    v6 = v5;
    v7 = SCPreferencesGetValue(v5, @"DAMountDeferExternal");
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountDeferExternal", v8);
      }
    }

    v10 = SCPreferencesGetValue(v6, @"DAMountDeferInternal");
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountDeferInternal", v11);
      }
    }

    v13 = SCPreferencesGetValue(v6, @"DAMountDeferRemovable");
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountDeferRemovable", v14);
      }
    }

    v16 = SCPreferencesGetValue(v6, @"DAMountTrustExternal");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountTrustExternal", v17);
      }
    }

    v19 = SCPreferencesGetValue(v6, @"DAMountTrustInternal");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountTrustInternal", v20);
      }
    }

    v22 = SCPreferencesGetValue(v6, @"DAMountTrustRemovable");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountTrustRemovable", v23);
      }
    }

    v25 = SCPreferencesGetValue(v6, @"DAAutoMountDisable");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAAutoMountDisable", v26);
      }
    }

    v28 = SCPreferencesGetValue(v6, @"DAEnableUserFSMountExternal");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAEnableUserFSMountExternal", v29);
      }
    }

    v31 = SCPreferencesGetValue(v6, @"DAEnableUserFSMountInternal");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAEnableUserFSMountInternal", v32);
      }
    }

    v34 = SCPreferencesGetValue(v6, @"DAEnableUserFSMountRemovable");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAEnableUserFSMountRemovable", v35);
      }
    }

    v37 = SCPreferencesGetValue(v6, @"DAMountMethod");
    if (v37)
    {
      v38 = v37;
      v39 = CFGetTypeID(v37);
      if (v39 == CFStringGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountMethod", v38);
      }
    }

    v40 = SCPreferencesGetValue(v6, @"DADisableEjectNotification");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DADisableEjectNotification", v41);
      }
    }

    v43 = SCPreferencesGetValue(v6, @"DADisableUnreadableNotification");
    if (v43)
    {
      v44 = v43;
      v45 = CFGetTypeID(v43);
      if (v45 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DADisableUnreadableNotification", v44);
      }
    }

    v46 = SCPreferencesGetValue(v6, @"DADisableUnrepairableNotification");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DADisableUnrepairableNotification", v47);
      }
    }

    v49 = SCPreferencesGetValue(v6, @"DAMountAlwaysRepair");
    if (v49)
    {
      v50 = v49;
      v51 = CFGetTypeID(v49);
      if (v51 == CFBooleanGetTypeID())
      {
        CFDictionarySetValue(qword_1000292C8, @"DAMountAlwaysRepair", v50);
      }
    }

    CFRelease(v6);
  }
}

void *sub_100017C34(uint64_t a1, int a2)
{
  result = sub_100007058(a1, @"DAMediaBSDUnit");
  if (result)
  {
    result = CFDictionaryGetValue(qword_100029310, result);
    if (result)
    {
      return ((*CFDataGetMutableBytePtr(result) & a2) != 0);
    }
  }

  return result;
}

uint64_t sub_100017C90(uint64_t a1, int a2)
{
  if (sub_100017C34(a1, a2))
  {
    return 1;
  }

  result = sub_100007050(a1);
  entry = result;
  if (result)
  {
    v5 = 0;
    v6 = 3;
    do
    {
      v7 = v5;
      do
      {
        iterator = 0;
        IORegistryEntryCreateIterator(entry, "IOService", v6, &iterator);
        if (!iterator)
        {
          break;
        }

        v8 = IOIteratorNext(iterator);
        if (v8)
        {
          IOObjectRelease(v8);
        }

        v9 = IOIteratorNext(iterator);
        if (v9)
        {
          v10 = v9;
          do
          {
            if (IOObjectConformsTo(v10, "IOMedia"))
            {
              CFProperty = IORegistryEntryCreateCFProperty(v10, @"BSD Unit", kCFAllocatorDefault, 0);
              if (CFProperty)
              {
                v12 = CFProperty;
                Value = CFDictionaryGetValue(qword_100029310, CFProperty);
                if (Value && (*CFDataGetMutableBytePtr(Value) & a2) != 0)
                {
                  CFRelease(v12);
                  IOObjectRelease(v10);
                  IOObjectRelease(iterator);
                  return 1;
                }

                CFRelease(v12);
              }
            }

            else if ((v7 & 1) == 0 && IOObjectConformsTo(v10, "IOBlockStorageDevice"))
            {
              IORegistryIteratorExitEntry(iterator);
            }

            IOObjectRelease(v10);
            v10 = IOIteratorNext(iterator);
          }

          while (v10);
        }

        IsValid = IOIteratorIsValid(iterator);
        IOObjectRelease(iterator);
      }

      while (!IsValid);
      result = 0;
      v5 = 1;
      v6 = 1;
    }

    while ((v7 & 1) == 0);
  }

  return result;
}

void sub_100017E44(uint64_t a1, int a2, int a3)
{
  v5 = sub_100007058(a1, @"DAMediaBSDUnit");
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(qword_100029310, v5);
    if (Value)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(Value);
      if (a3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      *MutableBytePtr = *MutableBytePtr & ~a2 | v9;
    }

    else
    {
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 4);
      if (Mutable)
      {
        v11 = Mutable;
        v12 = CFDataGetMutableBytePtr(Mutable);
        if (a3)
        {
          v13 = a2;
        }

        else
        {
          v13 = 0;
        }

        *v12 = v13;
        CFDictionarySetValue(qword_100029310, v6, v11);

        CFRelease(v11);
      }
    }
  }
}

const __CFString *sub_100017F50(uint64_t a1, const __CFUUID *a2)
{
  v3 = sub_100007DE8(a1);
  if (CFStringHasSuffix(v3, @"_fskit"))
  {
    v4 = sub_100014F34(v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
    v4 = v3;
  }

  if (CFStringCompare(v4, @"MSDOS", 1uLL) == kCFCompareEqualTo)
  {
    if (a2)
    {
      v7 = CFUUIDCreateString(kCFAllocatorDefault, a2);
      v8 = CFStringCompare(v7, @"0E239BC6-F960-3107-89CF-1C97F78BB46B", 1uLL);
      CFRelease(v7);
      if (v8 == kCFCompareEqualTo)
      {
        v3 = @"msdos-efi";
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t sub_100018014(uint64_t a1, const __CFString *a2)
{
  v3 = sub_100007050(a1);
  v4 = IORegistryEntrySearchCFProperty(v3, "IOService", @"Role", kCFAllocatorDefault, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID() && (Count = CFArrayGetCount(v5), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      v11 = CFGetTypeID(ValueAtIndex);
      if (v11 == CFStringGetTypeID())
      {
        v12 = 1;
        if (CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  CFRelease(v5);
  return v12;
}

uint64_t sub_100018100(uint64_t a1)
{
  v1 = sub_100007050(a1);
  v2 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Role", kCFAllocatorDefault, 0);
  if (!v2)
  {
    return 1;
  }

  CFRelease(v2);
  return 0;
}

void sub_100018150(int a1, CFDictionaryRef theDict, const void *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"DAFileSystem", a3);
    CFArrayAppendValue(qword_100029298, v5);

    CFRelease(v5);
  }
}

uint64_t sub_1000181D4()
{
  if (dword_100029228)
  {
    goto LABEL_6;
  }

  if (!mach_port_allocate(mach_task_self_, 1u, &dword_100029228) && !mach_port_insert_right(mach_task_self_, dword_100029228, dword_100029228, 0x14u))
  {
    port_info = 1;
    mach_port_set_attributes(mach_task_self_, dword_100029228, 1, &port_info, 1u);
  }

  if (dword_100029228)
  {
LABEL_6:
    sub_1000018C8();
    qword_100029230 = dispatch_mach_create_f();
    dispatch_mach_connect();
  }

  return qword_100029230;
}

void sub_1000182B0(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    pthread_mutex_lock(&stru_100028470);
    v3 = qword_100029238;
    if (qword_100029238)
    {
      v4 = 0;
      do
      {
        while (1)
        {
          v5 = v3;
          if (*v3 != 1)
          {
            sub_10001B478();
          }

          if (*(v3 + 16))
          {
            break;
          }

          v3 = *(v3 + 8);
          v4 = v5;
          if (!v3)
          {
            goto LABEL_14;
          }
        }

        if (v4)
        {
          v6 = (v4 + 8);
        }

        else
        {
          v6 = &qword_100029238;
        }

        *v6 = *(v3 + 8);
        pthread_mutex_unlock(&stru_100028470);
        v7 = *(v5 + 32);
        if (v7)
        {
          v7(*(v5 + 20), *(v5 + 40));
        }

        free(v5);
        pthread_mutex_lock(&stru_100028470);
        v4 = 0;
        v3 = qword_100029238;
      }

      while (qword_100029238);
    }

LABEL_14:
    pthread_mutex_unlock(&stru_100028470);

    mach_msg_destroy(msg);
  }
}

uint64_t sub_1000183CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (!dword_100029228)
  {
    sub_10001B4A4();
  }

  v11 = 0;
  pthread_mutex_lock(&stru_100028470);
  v8 = pthread_create(&v11, 0, sub_1000184C4, 0);
  if (!v8)
  {
    v9 = malloc_type_malloc(0x40uLL, 0x10A0040B699CF8BuLL);
    if (v9)
    {
      *v9 = 1;
      v9[1] = qword_100029238;
      *(v9 + 16) = 0;
      *(v9 + 5) = 0;
      v9[3] = v11;
      v9[4] = a3;
      v9[5] = a4;
      v9[6] = a1;
      v9[7] = a2;
      qword_100029238 = v9;
    }
  }

  result = pthread_mutex_unlock(&stru_100028470);
  if (a3)
  {
    if (v8)
    {
      return a3(71, a4);
    }
  }

  return result;
}

uint64_t sub_1000184C4()
{
  pthread_mutex_lock(&stru_100028470);
  v0 = qword_100029238;
  if (qword_100029238)
  {
    while (1)
    {
      if (*v0 != 1)
      {
        sub_10001B4D0();
      }

      v1 = *(v0 + 24);
      v2 = pthread_self();
      if (pthread_equal(v1, v2))
      {
        break;
      }

      v0 = *(v0 + 8);
      if (!v0)
      {
        goto LABEL_5;
      }
    }

    pthread_mutex_unlock(&stru_100028470);
    *(v0 + 20) = (*(v0 + 48))(*(v0 + 56));
    pthread_mutex_lock(&stru_100028470);
    *(v0 + 16) = 1;
    pthread_mutex_unlock(&stru_100028470);
    v3 = dispatch_mach_msg_create();
    dispatch_mach_send();
    dispatch_release(v3);
  }

  else
  {
LABEL_5:
    pthread_mutex_unlock(&stru_100028470);
  }

  v4 = pthread_self();
  pthread_detach(v4);
  return 0;
}

uint64_t sub_1000185D0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 <= 0x10)
  {
    return *(&off_1000257C8 + 5 * v1 + 5);
  }

  else
  {
    return 0;
  }
}

const char *sub_1000185FC(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), (v4 - 1065) < 0xFFFFFBFF) || ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr((result + 40), 0, v4 - 40)) == 0))
  {
    *(a2 + 32) = -304;
LABEL_11:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777473;
  result = sub_10001218C(*(v3 + 3), v3 + 40, (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_11;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

const char *sub_1000186EC(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = sub_100012278(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

const char *sub_1000187AC(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = sub_10001233C(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

const char *sub_10001886C(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = sub_100012398(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t sub_10001892C(const char *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(a1 + 1);
    if (v6 - 1069 >= 0xFFFFFBFF)
    {
      v7 = *(a1 + 9);
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 44 >= v7 && v6 == v8 + 44)
        {
          if (v6 >= 0x428)
          {
            v10 = 1064;
          }

          else
          {
            v10 = v6;
          }

          if (memchr((a1 + 40), 0, v10 - 40))
          {
            v11 = &a1[(v6 + 3) & 0xFFC];
            if (*v11 || *(v11 + 1) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *(a1 + 3);
              v13 = *&a1[v8 + 40];
              v14 = *(v11 + 36);
              v15[0] = *(v11 + 20);
              v15[1] = v14;
              result = sub_100012478(v12, a1 + 40, v13, v15);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100018A30(const char *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    LODWORD(v6) = *(a1 + 1);
    if ((v6 - 1073) >= 0xFFFFFBFF)
    {
      v7 = *(a1 + 9);
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 48 >= v7 && v6 == v8 + 48)
        {
          if (v6 >= 0x428)
          {
            v6 = 1064;
          }

          else
          {
            v6 = v6;
          }

          if (memchr((a1 + 40), 0, v6 - 40))
          {
            result = sub_100012618(*(a1 + 3), a1 + 40, *&a1[v8 + 40], *&a1[v8 + 44]);
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

const char *sub_100018AF0(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = sub_10001270C(*(v3 + 3), v3 + 40);
    *(a2 + 32) = result;
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

void sub_100018B90(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1133 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 76);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 108 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 108)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 40);
  if (v9 != *(v8 + 84) || (v10 = v8 - 1024, v11 = *(a1 + 56), v11 != *(v8 + 88)))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x450)
  {
    v12 = 1104;
  }

  else
  {
    v12 = v5;
  }

  if (!memchr((a1 + 80), 0, v12 - 80))
  {
    goto LABEL_2;
  }

  v13 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v13 && *(v13 + 4) > 0x1Fu)
  {
    v14 = *(a1 + 12);
    v15 = *(a1 + 68);
    v16 = *(v10 + 1104);
    v17 = *(a1 + 28);
    v18 = *(a1 + 44);
    v19 = *(v10 + 1116);
    v20 = *(v10 + 1124);
    v21 = *(v13 + 36);
    v22[0] = *(v13 + 20);
    v22[1] = v21;
    *(a2 + 32) = sub_1000128CC(v14, v15, (a1 + 80), v16, v17, v9, v18, v11, v19, v20, v22);
    mig_deallocate(*(a1 + 44), *(a1 + 56));
    *(a1 + 44) = 0;
    *(a1 + 56) = 0;
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    goto LABEL_4;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
LABEL_4:
  *(a2 + 24) = NDR_record;
}

void sub_100018D48(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1165 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 108);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 140 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 140)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 40);
  if (v9 != *(v8 + 116) || (v10 = v8 - 1024, v11 = *(a1 + 56), v11 != *(v8 + 120)))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x470)
  {
    v12 = 1136;
  }

  else
  {
    v12 = v5;
  }

  if (!memchr((a1 + 112), 0, v12 - 112))
  {
    goto LABEL_2;
  }

  v13 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v13 && *(v13 + 4) > 0x1Fu)
  {
    v14 = *(a1 + 12);
    v15 = *(a1 + 68);
    v16 = *(v10 + 1136);
    v17 = *(a1 + 28);
    v18 = *(a1 + 44);
    v19 = *(v10 + 1148);
    v20 = *(v10 + 1156);
    v21 = *(a1 + 88);
    v24[0] = *(a1 + 72);
    v24[1] = v21;
    v22 = *(v13 + 36);
    v23[0] = *(v13 + 20);
    v23[1] = v22;
    *(a2 + 32) = sub_1000127E8(v14, v15, v24, (a1 + 112), v16, v17, v9, v18, v11, v19, v20, v23);
    mig_deallocate(*(a1 + 44), *(a1 + 56));
    *(a1 + 44) = 0;
    *(a1 + 56) = 0;
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    goto LABEL_4;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
LABEL_4:
  *(a2 + 24) = NDR_record;
}

void sub_100018F10(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1113 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 76);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v3 = -304;
  if (v5 - 88 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 88)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 40);
  if (v9 != *(v8 + 80))
  {
LABEL_16:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x450)
  {
    v10 = 1104;
  }

  else
  {
    v10 = v5;
  }

  if (!memchr((a1 + 80), 0, v10 - 80))
  {
    goto LABEL_2;
  }

  *(a2 + 32) = sub_100012F0C(*(a1 + 12), *(a1 + 52), *(a1 + 60), *(a1 + 68), (a1 + 80), *(a1 + 28), v9, *(v8 + 84));
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
}

_DWORD *sub_100019038(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100012084(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_100019094(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = sub_100013030(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000190EC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1000130E4(*(result + 12), *(result + 32), *(result + 40));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_100019150(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if (v4 <= 0x10 && (v5 = *(&off_1000257C8 + 5 * v4 + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _FSGetTypeInfoFromStatfs(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  if (!sub_1000192E8((a1 + 72)))
  {
    __strlcpy_chk();
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = a1 + 1112;
  v9 = strstr((a1 + 1112), "://");
  if (!v9)
  {
    return 22;
  }

  if (&v9[-v8] >= 0xF)
  {
    v10 = 15;
  }

  else
  {
    v10 = &v9[-v8];
  }

  __memcpy_chk();
  __source[v10] = 0;
  if (a2)
  {
LABEL_9:
    strlcpy(a2, __source, a3);
  }

LABEL_10:
  result = 0;
  if (a4)
  {
    *a4 = *(a1 + 68);
  }

  return result;
}

uint64_t _FSGetTypeInfoForPath(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  memset(v8, 0, 512);
  if (statfs_ext() == -1)
  {
    return *__error();
  }

  else
  {
    return _FSGetTypeInfoFromStatfs(v8, a2, a3, a4);
  }
}

uint64_t _FSGetTypeInfoForFileDescriptor(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  memset(v8, 0, 512);
  if (fstatfs_ext() == -1)
  {
    return *__error();
  }

  else
  {
    return _FSGetTypeInfoFromStatfs(v8, a2, a3, a4);
  }
}

uint64_t _FSGetLocationFromStatfs(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (sub_1000192E8((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

uint64_t _FSGetLocationForPath(uint64_t a1, char *a2, size_t a3)
{
  memset(v6, 0, 512);
  if (statfs_ext() == -1)
  {
    return *__error();
  }

  else
  {
    return _FSGetLocationFromStatfs(v6, a2, a3);
  }
}

uint64_t _FSGetLocationForFileDescriptor(uint64_t a1, char *a2, size_t a3)
{
  memset(v6, 0, 512);
  if (fstatfs_ext() == -1)
  {
    return *__error();
  }

  else
  {
    return _FSGetLocationFromStatfs(v6, a2, a3);
  }
}

const __CFArray *FSCopyFormatNameForFSType(const __CFArray *result, __int16 a2, int a3, int a4)
{
  v57 = a2;
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = CFStringCreateWithFormat(0, 0, @"%d%@%d");
  _os_nospin_lock_lock();
  v8 = &byte_100028D48[696];
  if (qword_100029248)
  {
    Value = CFDictionaryGetValue(qword_100029248, v7);
    _os_nospin_lock_unlock();
    if (Value)
    {
LABEL_72:
      CFRelease(v7);
      v49 = CFGetTypeID(Value);
      if (v49 == CFStringGetTypeID())
      {
        return CFRetain(Value);
      }

      v50 = CFGetTypeID(Value);
      if (v50 != CFDictionaryGetTypeID())
      {
        return CFRetain(Value);
      }

      v51 = 8 * CFDictionaryGetCount(Value);
      __chkstk_darwin();
      v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v51 >= 0x200)
      {
        v53 = 512;
      }

      else
      {
        v53 = v51;
      }

      bzero(&v54 - v52, v53);
      __chkstk_darwin();
      bzero(&v54 - v52, v53);
      CFDictionaryGetKeysAndValues(Value, (&v54 - v52), (&v54 - v52));
      return CFRetain(*(&v54 - v52));
    }
  }

  else
  {
    _os_nospin_lock_unlock();
  }

  result = qword_100029250;
  if (qword_100029250)
  {
    goto LABEL_7;
  }

  result = CFCopySearchPathForDirectoriesInDomains();
  if (result)
  {
    v16 = result;
    Count = CFArrayGetCount(result);
    Mutable = CFArrayCreateMutable(0, Count, 0);
    if (Mutable)
    {
      v55 = v7;
      LODWORD(v54) = a4;
      if (CFArrayGetCount(v16) < 1)
      {
LABEL_25:
        qword_100029250 = CFArrayCreateCopy(0, Mutable);
      }

      else
      {
        v19 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
          v21 = CFGetTypeID(ValueAtIndex);
          if (v21 == CFURLGetTypeID())
          {
            if (!CFURLGetFileSystemRepresentation(ValueAtIndex, 0, v60, 1025))
            {
              break;
            }
          }

          else
          {
            v22 = CFGetTypeID(ValueAtIndex);
            if (v22 != CFStringGetTypeID())
            {
              break;
            }

            CFStringGetCString(ValueAtIndex, v60, 1025, 0x8000100u);
          }

          __strlcat_chk();
          v23 = CFStringCreateWithCString(0, v60, 0x8000100u);
          if (!v23)
          {
            break;
          }

          v24 = v23;
          v25 = CFURLCreateWithFileSystemPath(0, v23, kCFURLPOSIXPathStyle, 1u);
          if (v25)
          {
            CFArrayAppendValue(Mutable, v25);
          }

          CFRelease(v24);
          if (++v19 >= CFArrayGetCount(v16))
          {
            goto LABEL_25;
          }
        }
      }

      v7 = v55;
      v8 = byte_100028D48 + 696;
    }

    CFRelease(Mutable);
    CFRelease(v16);
    result = qword_100029250;
    if (qword_100029250)
    {
LABEL_7:
      if (CFArrayGetCount(result) < 1)
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_65;
      }

      v55 = v7;
      v10 = 0;
      while (1)
      {
        v11 = CFArrayGetValueAtIndex(qword_100029250, v10);
        v12 = CFStringCreateWithFormat(0, 0, @"%@.fs", v6);
        v13 = CFURLCreateWithFileSystemPathRelativeToBase(0, v12, kCFURLPOSIXPathStyle, 1u, v11);
        v14 = CFBundleCreate(0, v13);
        CFRelease(v12);
        CFRelease(v13);
        if (v14)
        {
          break;
        }

        if (++v10 >= CFArrayGetCount(qword_100029250))
        {
          v14 = 0;
          v15 = 1;
          v7 = v55;
          v8 = byte_100028D48 + 696;
          goto LABEL_65;
        }
      }

      InfoDictionary = CFBundleGetInfoDictionary(v14);
      v27 = InfoDictionary;
      if (a3)
      {
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v14, @"FSPersonalities");
        v29 = CFDictionaryGetValue(v27, @"FSPersonalities");
        if (ValueForInfoDictionaryKey)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        v8 = byte_100028D48 + 696;
        if (!v30)
        {
          goto LABEL_39;
        }

        v15 = 0;
      }

      else
      {
        v29 = CFDictionaryGetValue(InfoDictionary, @"FSPersonalities");
        v8 = byte_100028D48 + 696;
        if (v29)
        {
          ValueForInfoDictionaryKey = v29;
LABEL_39:
          v31 = v29;
          v32 = CFDictionaryGetCount(v29);
          v7 = v55;
          if (v32 >= 1)
          {
            v33 = v32;
            v61 = 0;
            memset(v60, 0, sizeof(v60));
            v59 = 0;
            memset(v58, 0, sizeof(v58));
            if (v32 < 6)
            {
              v35 = v58;
              v34 = v60;
            }

            else
            {
              v34 = malloc_type_malloc(8 * v32, 0x6004044C4A2DFuLL);
              v35 = malloc_type_malloc(8 * v33, 0x6004044C4A2DFuLL);
            }

            v54 = v35;
            CFDictionaryGetKeysAndValues(v31, v35, v34);
            v36 = CFNumberCreate(0, kCFNumberSInt16Type, &v57);
            v37 = 0;
            v56 = 0;
            while (CFDictionaryGetValueIfPresent(v34[v37], @"FSSubType", &v56) != 1 || CFNumberCompare(v36, v56, 0))
            {
              if (v33 == ++v37)
              {
                CFRelease(v36);
                v38 = v54;
LABEL_51:
                v39 = v38[v33 - 1];
                goto LABEL_53;
              }
            }

            v39 = v54[v37];
            v38 = v54;
            CFRelease(v36);
            if (!v39)
            {
              goto LABEL_51;
            }

LABEL_53:
            v40 = CFDictionaryGetValue(ValueForInfoDictionaryKey, v39);
            if (v40)
            {
              v41 = v40;
              Value = CFDictionaryGetValue(v40, @"FSName");
              v42 = CFDictionaryGetValue(v41, @"FSEncryptionName");
              v8 = byte_100028D48 + 696;
              if (Value)
              {
                v43 = v42;
                if (v42)
                {
                  v44 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  if (v44)
                  {
                    v45 = v44;
                    CFDictionarySetValue(v44, Value, v43);
                    Value = v45;
LABEL_59:
                    v8 = &byte_100028D48[696];
                    goto LABEL_60;
                  }

                  Value = 0;
                }
              }

LABEL_60:
              if (v34 != v60)
              {
                free(v34);
              }

              if (v38 != v58)
              {
                free(v38);
              }

              v15 = 0;
              v7 = v55;
              if (Value)
              {
                goto LABEL_68;
              }

              goto LABEL_65;
            }

            Value = 0;
            goto LABEL_59;
          }

          v15 = 0;
LABEL_65:
          v46 = qword_100029258;
          if (!qword_100029258)
          {
            MainBundle = CFBundleGetMainBundle();
            v46 = CFBundleCopyLocalizedString(MainBundle, @"Unknown", @"Unknown", 0);
            qword_100029258 = v46;
          }

          Value = CFStringCreateWithFormat(0, 0, @"%@ (%@)", v46, v6);
LABEL_68:
          _os_nospin_lock_lock();
          v48 = *(v8 + 73);
          if (!v48)
          {
            v48 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            *(v8 + 73) = v48;
          }

          CFDictionarySetValue(v48, v7, Value);
          _os_nospin_lock_unlock();
          if ((v15 & 1) == 0)
          {
            CFRelease(v14);
          }

          goto LABEL_72;
        }

        v15 = 0;
      }

      v7 = v55;
      goto LABEL_65;
    }
  }

  return result;
}

const __CFArray *sub_100019EF0(const __CFURL *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 0;
  }

  memset(v9, 0, 512);
  v6 = 0;
  if (statfs_ext() || _FSGetTypeInfoFromStatfs(v9, cStr, 0x10uLL, &v6))
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x600u);
  if (_FSGetLocationFromStatfs(v9, v10, 0x400uLL))
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    GetFSEncryptionStatus(v10, &v7, 1, 0);
    v3 = FSCopyFormatNameForFSType(v5, v6, a2, v7);
  }

  CFRelease(v5);
  return v3;
}

const __CFArray *_FSCopyLocalizedNameForVolumeFormatAtNode(const __CFString *a1)
{
  v5 = 0;
  if (CFStringGetCString(a1, buffer, 1025, 0x8000100u) != 1)
  {
    return 0;
  }

  cStr[0] = 0;
  GetFSEncryptionStatus(buffer, cStr, 1, 0);
  v1 = cStr[0];
  *cStr = 0;
  v7 = 0;
  if (!getfstype(buffer, cStr, &v5))
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(0, cStr, 0x600u);
  v3 = FSCopyFormatNameForFSType(v2, v5, 1, v1);
  CFRelease(v2);
  return v3;
}

uint64_t getfstype(const char *a1, uint64_t a2, int *a3)
{
  if (is_apfs(a1, a3))
  {
    *(a2 + 4) = 0;
    v6 = 1936093281;
  }

  else if (is_hfs(a1, a3))
  {
    v6 = 7562856;
  }

  else
  {
    result = is_msdos(a1, a3);
    if (!result)
    {
      return result;
    }

    *(a2 + 4) = 115;
    v6 = 1868854125;
  }

  *a2 = v6;
  return 1;
}

const __CFArray *_FSCopyNameForVolumeFormatAtNode(const __CFString *a1)
{
  v5 = 0;
  if (CFStringGetCString(a1, buffer, 1025, 0x8000100u) != 1)
  {
    return 0;
  }

  cStr[0] = 0;
  GetFSEncryptionStatus(buffer, cStr, 1, 0);
  v1 = cStr[0];
  *cStr = 0;
  v7 = 0;
  if (!getfstype(buffer, cStr, &v5))
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(0, cStr, 0x600u);
  v3 = FSCopyFormatNameForFSType(v2, v5, 0, v1);
  CFRelease(v2);
  return v3;
}

BOOL is_apfs(const char *a1, _DWORD *a2)
{
  v4 = 6;
  if (strncmp(a1, "/dev/r", 6uLL))
  {
    if (!strncmp(a1, "/dev/", 5uLL))
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = IOBSDNameMatching(kIOMasterPortDefault, 0, &a1[v4]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  v8 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume");
  v9 = v8 != 0;
  if (v8)
  {
    if (a2)
    {
      *a2 = 1;
    }

    v10 = IORegistryEntrySearchCFProperty(v7, "IOService", @"CaseSensitive", kCFAllocatorDefault, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFEqual(v10, kCFBooleanTrue);
      if (a2 && v12)
      {
        *a2 = 0;
      }

      CFRelease(v11);
    }
  }

  IOObjectRelease(v7);
  return v9;
}

uint64_t is_hfs(const char *a1, int *a2)
{
  *a2 = -1;
  v14 = 0;
  v3 = open(a1, 4, 0);
  if (v3 >= 1)
  {
    v4 = v3;
    if (ioctl(v3, 0x40046418uLL, &v14) == -1)
    {
      v5 = 512;
      v14 = 512;
    }

    else
    {
      v5 = v14;
      if (v14 > 0x10000)
      {
        goto LABEL_11;
      }
    }

    v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (!v7)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    v8 = v7;
    if (readdisk(v4, 0x400uLL, 0x200uLL, v14, v7) < 0x200)
    {
      goto LABEL_9;
    }

    v10 = *v8;
    if (v10 == 17474)
    {
      if (v8[62] == 11080)
      {
        v11 = ((bswap32(v8[14]) >> 16) << 9) + bswap32(*(v8 + 5)) * (bswap32(v8[63]) >> 16);
        if (readdisk(v4, v11 + 1024, 0x200uLL, v14, v8) < 0x200)
        {
          goto LABEL_9;
        }

        v10 = *v8;
      }

      else
      {
        v11 = 0;
        v10 = 17474;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = __rev16(v10);
    if (v12 == 16964)
    {
      v13 = 128;
      goto LABEL_39;
    }

    if (v12 == 18520)
    {
      if (v8[1] != 1280)
      {
        goto LABEL_9;
      }
    }

    else if (v12 != 18475 || v8[1] != 1024)
    {
      goto LABEL_9;
    }

    if (*(v8 + 3) && (v8[3] & 0x20) != 0)
    {
      *a2 = 1;
    }

    if (v10 != 22600)
    {
LABEL_37:
      if ((*a2 & 0x80000000) == 0)
      {
LABEL_40:
        v6 = 1;
        goto LABEL_10;
      }

      v13 = 0;
LABEL_39:
      *a2 = v13;
      goto LABEL_40;
    }

    if (readdisk(v4, v11 + bswap32(*(v8 + 10)) * bswap32(*(v8 + 72)), 0x78uLL, v14, v8) >= 0x78)
    {
      if (v8[17] == 1026 && *(v8 + 51) == 188)
      {
        if (*a2 == 1)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_9:
    v6 = 0;
LABEL_10:
    free(v8);
LABEL_12:
    close(v4);
    return v6;
  }

  return 0;
}

uint64_t is_msdos(const char *a1, int *a2)
{
  v22 = 0;
  *a2 = -1;
  v4 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    v6 = open(a1, 4, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      if (ioctl(v6, 0x40046418uLL, &v22) == -1)
      {
        v8 = 512;
        v22 = 512;
      }

      else
      {
        v8 = v22;
        if (v22 > 0x800)
        {
          goto LABEL_14;
        }
      }

      if (readdisk(v7, 0, 0x200uLL, v8, v5) >= 0x200)
      {
        v11 = *v5;
        if (v11 == 233 || v11 == 235 && v5[2] == 144)
        {
          v12 = *(v5 + 11);
          if (v12 >= 0x200)
          {
            v9 = 0;
            if (v12 > 0x800)
            {
              goto LABEL_15;
            }

            v10.i32[0] = *(v5 + 11);
            v14 = vcnt_s8(v10);
            v14.i16[0] = vaddlv_u8(v14);
            if (v14.i32[0] > 1u)
            {
              goto LABEL_15;
            }

            v15 = v5[13];
            if ((v15 ^ (v15 - 1)) > (v15 - 1))
            {
              v16 = *(v5 + 11);
              if (!*(v5 + 11))
              {
                v16 = *(v5 + 9);
              }

              v17 = *(v5 + 19);
              v18 = (v12 - 1 + 32 * *(v5 + 17)) / v12;
              if (!*(v5 + 19))
              {
                v17 = *(v5 + 8);
              }

              v19 = (v17 - (v18 + *(v5 + 7) + v16 * v5[16])) / v15;
              v9 = 1;
              if (v19 < 0xFFF5)
              {
                v20 = 1;
              }

              else
              {
                v20 = 2;
              }

              if (v19 >= 0xFF5)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              *a2 = v21;
              goto LABEL_15;
            }
          }
        }
      }

LABEL_14:
      v9 = 0;
LABEL_15:
      free(v5);
      close(v7);
      return v9;
    }

    free(v5);
  }

  return 0;
}

uint64_t readdisk(int a1, unint64_t a2, size_t a3, size_t a4, void *a5)
{
  v10 = a2 / a4;
  v11 = (a3 + a2) / a4 - a2 / a4;
  v12 = v11 + 1;
  v13 = v11 == -1;
  v14 = malloc_type_malloc((v11 + 1) * a4, 0x59959B6CuLL);
  if (v13)
  {
    v15 = 0;
LABEL_10:
    memcpy(a5, &v14[a2 - v10 * a4], a3);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    while (pread(a1, &v14[v15], a4, (v16 + v10) * a4) == a4 || a4 == -1)
    {
      v15 += a4;
      if (++v16 >= v12)
      {
        goto LABEL_10;
      }
    }
  }

  free(v14);
  return v15;
}

uint64_t GetFSEncryptionStatus(char *a1, char *a2, char a3, _DWORD *a4)
{
  *entry = 0;
  if (!a2)
  {
    return 22;
  }

  v8 = sub_10001AB18(a1, &entry[1]);
  if (!v8)
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (is_apfs(a1, 0) && (v9 = IORegistryEntryCreateCFProperty(entry[1], @"Encrypted", kCFAllocatorDefault, 0)) != 0)
    {
      v10 = v9;
      if (CFBooleanGetValue(v9) == 1)
      {
        v11 = strlen(a1);
        v12 = &a1[v11];
        v13 = &a1[v11 - 1];
        if (v13 < a1 || (v14 = *v13 - 48, v14 > 9))
        {
          v18 = -1;
        }

        else
        {
          v15 = 0;
          v16 = &a1[v11 - 2];
          v17 = 1;
          do
          {
            v13 = v16;
            v15 += v17 * v14;
            if (v16 < a1)
            {
              break;
            }

            v17 *= 10;
            --v16;
            v14 = *v13 - 48;
          }

          while (v14 <= 9);
          v18 = v15 - 1;
          v12 = v13 + 1;
        }

        if (v13 > a1 && *v13 == 115)
        {
          if (*(v12 - 2) == 47)
          {
            v20 = -1;
          }

          else
          {
            v20 = v18;
          }
        }

        else
        {
          v20 = -1;
        }

        if (IORegistryEntryGetParentEntry(entry[1], "IOService", entry))
        {
          v19 = 0;
        }

        else
        {
          if (IOObjectConformsTo(entry[0], "AppleAPFSContainer"))
          {
            if (sub_10001ABE8(entry[0], v20))
            {
              if (a4)
              {
                *a4 |= 2u;
              }

              v19 = 1;
            }

            else
            {
              v19 = a3 ^ 1;
            }
          }

          else
          {
            v19 = 0;
          }

          IOObjectRelease(entry[0]);
        }

        if (a4)
        {
          CFProperty = IORegistryEntryCreateCFProperty(entry[1], @"EncryptionRolling", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v22 = CFProperty;
            if (CFBooleanGetValue(CFProperty) == 1)
            {
              *a4 |= 4u;
              CFRelease(v22);
            }
          }
        }
      }

      else
      {
        v19 = 0;
      }

      *a2 = v19;
      CFRelease(v10);
    }

    else
    {
      *a2 = 0;
    }
  }

  if (entry[1])
  {
    IOObjectRelease(entry[1]);
  }

  return v8;
}

uint64_t sub_10001AB18(char *__s1, io_service_t *a2)
{
  result = 22;
  if (__s1 && a2)
  {
    *a2 = 0;
    if (!strncmp(__s1, "/dev/", 5uLL))
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }

    v6 = &__s1[v5];
    if (!strncmp(v6, "rdisk", 5uLL))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = IOBSDNameMatching(kIOMasterPortDefault, 0, v7);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v8, @"IOProviderClass", @"IOMedia");
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v9);
      result = 0;
      *a2 = MatchingService;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

BOOL sub_10001ABE8(io_service_t a1, int a2)
{
  connect = 0;
  outputStruct = 0;
  outputStructCnt = 2;
  result = 1;
  if (!IOServiceOpen(a1, mach_task_self_, 0, &connect))
  {
    inputStruct = a2;
    v3 = IOConnectCallStructMethod(connect, 0x13u, &inputStruct, 4uLL, &outputStruct, &outputStructCnt);
    IOServiceClose(connect);
    if (!v3 && (outputStruct != 1 || (outputStruct & 0x100) != 0))
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetDiskImageEncryptionStatus(char *a1, BOOL *a2)
{
  entry = 0;
  v2 = 22;
  if (a1 && a2)
  {
    v2 = sub_10001AB18(a1, &entry);
    if (!v2)
    {
      v4 = IORegistryEntrySearchCFProperty(entry, "IOService", @"image-encrypted", kCFAllocatorDefault, 3u);
      if (v4)
      {
        *a2 = v4 == kCFBooleanTrue;
        CFRelease(v4);
      }

      else
      {
        *a2 = 0;
      }
    }

    if (entry)
    {
      IOObjectRelease(entry);
    }
  }

  return v2;
}

uint64_t _FSGetMediaEncryptionStatusAtPath(char *a1, _BYTE *a2, _DWORD *a3)
{
  v9 = 0;
  result = 22;
  if (a1)
  {
    if (a2)
    {
      result = GetFSEncryptionStatus(a1, &v9 + 1, 0, a3);
      if (!result)
      {
        if (a3 || (v9 & 0x100) == 0)
        {
          DiskImageEncryptionStatus = GetDiskImageEncryptionStatus(a1, &v9);
          v7 = v9;
          if (!DiskImageEncryptionStatus && a3 && (v9 & 1) != 0)
          {
            *a3 |= 1u;
            v7 = 1;
          }
        }

        else
        {
          v7 = 0;
        }

        result = 0;
        *a2 = (HIBYTE(v9) | v7) & 1;
      }
    }
  }

  return result;
}

uint64_t _FSGetMediaEncryptionStatus(const __CFString *a1, _BYTE *a2, _DWORD *a3)
{
  if (CFStringGetCString(a1, buffer, 1025, 0x8000100u))
  {
    return _FSGetMediaEncryptionStatusAtPath(buffer, a2, a3);
  }

  else
  {
    return 22;
  }
}

void sub_10001AF28(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%{public}s", &v2, 0xCu);
}

void sub_10001AFA0(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s", &v2, 0xCu);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}