void sub_10053F264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10053F27C(uint64_t a1)
{
  v3 = *(a1 + 568);
  *(a1 + 568) = v3 + 1;
  if (!v3)
  {
    v6[7] = v1;
    v6[8] = v2;
    v5 = sub_100017F4C();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10053F9B4;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v5, v6);
  }
}

uint64_t sub_10053F320(__n128 *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[32].n128_u64[1];
  if (v4)
  {
    (*(*v4 + 64))(v4, a2);
    if (_os_feature_enabled_impl())
    {
      sub_10000801C(v6);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 13);
    }

    else
    {
      (*(*a1[32].n128_u64[1] + 16))(a1[32].n128_u64[1]);
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_10053F420(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v6 = 0;
  v2 = *(a1 + 520);
  if (v2)
  {
    (*(*v2 + 56))(v2, &v6);
    v3 = *(a1 + 520);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v6;
    *(a1 + 520) = 0;
    if (v4)
    {
      sub_10053F27C(a1);
    }
  }

  return sub_1000088CC(v7);
}

void sub_10053F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F4E8(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  return sub_1000088CC(v3);
}

void sub_10053F554(uint64_t a1, int *a2)
{
  v15 = 0u;
  v16 = 0u;
  sub_1000DEB5C(a1, &v15);
  v4 = a2[2];
  if (v4)
  {
    v5 = v4 == DWORD2(v15);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(a1 + 536) = v4;
    v6 = *(a2 + 12);
    if (*(a2 + 12))
    {
      v8 = v6 == BYTE12(v15);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v7 = v6 == BYTE12(v15);
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
LABEL_16:
    *(a1 + 540) = v6;
LABEL_17:
    sub_10053F6F8(a1, 4);
  }

  v9 = a2[4];
  if (v9 && v9 != v16)
  {
    *(a1 + 544) = v9;
    v10 = *(a2 + 20);
    if (!*(a2 + 20) || v10 == BYTE4(v16))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v10 = *(a2 + 20);
  if (*(a2 + 20) && v10 != BYTE4(v16))
  {
LABEL_25:
    *(a1 + 548) = v10;
LABEL_26:
    sub_10053F6F8(a1, 2);
  }

  v11 = a2[6];
  if (v11 && v11 != DWORD2(v16))
  {
    *(a1 + 552) = v11;
    v12 = *(a2 + 28);
    if (!*(a2 + 28) || v12 == BYTE12(v16))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v12 = *(a2 + 28);
  if (*(a2 + 28) && v12 != BYTE12(v16))
  {
LABEL_34:
    *(a1 + 556) = v12;
LABEL_35:
    sub_10053F6F8(a1, 8);
  }

  v13 = *a2;
  if (!*a2 || v13 == v15)
  {
    v14 = *(a2 + 4);
    if (!*(a2 + 4) || v14 == BYTE4(v15))
    {
      return;
    }

    goto LABEL_43;
  }

  *(a1 + 528) = v13;
  v14 = *(a2 + 4);
  if (*(a2 + 4) && v14 != BYTE4(v15))
  {
LABEL_43:
    *(a1 + 532) = v14;
  }

  sub_10053F27C(a1);
}

void sub_10053F6F8(_DWORD *a1, int a2)
{
  v3 = 13;
  if (a2 > 3)
  {
    v5 = 30;
    if (a2 == 4)
    {
      v3 = 28;
    }

    else
    {
      v3 = 13;
    }

    v4 = a2 == 8;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    v4 = a2 == 2;
    v5 = 29;
LABEL_8:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = a1[132];
      v10 = a1[134];
      v11 = a1[136];
      v12 = a1[138];
      v13 = a1[140];
      *buf = 136447490;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Component battery changed: device %{public}s, S %d%%, L %d%%, R %d%%, Cs %d%%, Cm %d%%", buf, 0x2Au);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v14 = sub_100017F4C();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10053FBAC;
    v15[3] = &unk_100ADF940;
    v15[4] = a1;
    v16 = v6;
    sub_10000CA94(v14, v15);
    return;
  }

  sub_10053F27C(a1);
}

uint64_t sub_10053F8E4(unsigned int *a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v4 = a1[132];
      goto LABEL_15;
    }

    if (a2 == 2)
    {
      v4 = a1[136];
      goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 16:
        v4 = a1[140];
        goto LABEL_15;
      case 8:
        v4 = a1[138];
        goto LABEL_15;
      case 4:
        v4 = a1[134];
        goto LABEL_15;
    }
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840CA8();
  }

  v4 = 0xFFFFFFFFLL;
LABEL_15:
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10053F9B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, v1);
  v2 = v1[35].n128_u32[2];
  if (v2)
  {
    v1[35].n128_u32[2] = 0;
    v14 = 0;
    v3 = v1[32].n128_u64[1];
    if (v3)
    {
      (*(*v3 + 56))(v3, &v14);
    }

    v4 = v1[33].n128_u32[0];
    v5 = v1[33].n128_u32[2];
    v6 = v1[34].n128_u32[0];
    v7 = v1[34].n128_u32[2];
    v8 = v1[35].n128_u32[0];
    sub_10000801C(v15);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v1, __p);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 136448002;
      v17 = v10;
      v18 = 1024;
      v19 = v14;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 1024;
      v31 = v2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Battery changed: device %{public}s, I %d%%, S %d%%, L %d%%, R %d%%, Cs %d%%, Cm %d%%, CP %d", buf, 0x36u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, v1, 13);
  }

  return sub_1000088CC(v15);
}

void sub_10053FB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053FBAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v3 = off_100B508E8;
  v4 = *(a1 + 40);

  return sub_10056B15C(v3, v2, v4);
}

uint64_t sub_10053FC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, a1);
    *a2 = *(a1 + 528);
    *(a2 + 4) = *(a1 + 532) == 1;
    *(a2 + 16) = *(a1 + 536);
    *(a2 + 20) = *(a1 + 540) == 1;
    *(a2 + 8) = *(a1 + 544);
    *(a2 + 12) = *(a1 + 548) == 1;
    *(a2 + 24) = *(a1 + 552);
    *(a2 + 28) = *(a1 + 556) == 1;
    *(a2 + 32) = *(a1 + 560);
    *(a2 + 36) = *(a1 + 564) == 1;
    sub_1000088CC(v5);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840D18();
    }

    return 3;
  }
}

id sub_10053FCFC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1352);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_10053FD5C(uint64_t a1, int *a2)
{
  existing = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100840D54();
  }

  v4 = IOServiceMatching([@"IOAppleBluetoothHIDDriver" UTF8String]);
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"IOAppleBluetoothHIDDriver", existing), result))
  {
    v6 = IOServiceMatching([@"AppleDeviceManagementHIDEventService" UTF8String]);
    if (IOServiceGetMatchingServices(kIOMainPortDefault, v6, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"AppleDeviceManagementHIDEventService", existing), result))
    {
      v7 = IOServiceMatching([@"IOBluetoothHIDDriver" UTF8String]);
      if (IOServiceGetMatchingServices(kIOMainPortDefault, v7, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"IOBluetoothHIDDriver", existing), result))
      {
        if (!sub_10053C9C8(a1))
        {
          return 1;
        }

        v8 = sub_1005402C4(a1);
        *a2 = v8;
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v12 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "getBatteryLevel- Battery level for controller is %d", buf, 8u);
          v8 = *a2;
        }

        return v8 <= 0;
      }
    }
  }

  return result;
}

uint64_t sub_10053FF40(uint64_t a1, int *a2, void *a3, io_iterator_t a4)
{
  v7 = a3;
  v8 = [NSData dataWithBytes:a1 + 128 length:6];
  while (1)
  {
    v9 = IOIteratorNext(a4);
    v10 = v9;
    if (!v9)
    {
      v12 = 1;
      goto LABEL_18;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v9, @"BD_ADDR", kCFAllocatorDefault, 0);
    if ([CFProperty isEqual:v8])
    {
      break;
    }

    IOObjectRelease(v10);
  }

  v13 = IORegistryEntryCreateCFProperty(v10, @"BatteryPercent", kCFAllocatorDefault, 0);
  if (v13)
  {
    goto LABEL_10;
  }

  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = CFProperty;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HID battery fetch failed for hid %@ as it doesn't exist in IORegistry", buf, 0xCu);
  }

  v13 = IORegistryEntryCreateCFProperty(v10, @"BatteryPercent", kCFAllocatorDefault, 0);
  if (v13)
  {
LABEL_10:
    *a2 = [v13 unsignedIntValue];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, buf);
      v16 = v30 >= 0 ? buf : *buf;
      v17 = *a2;
      *__p = 136446466;
      *&__p[4] = v16;
      v23 = 1024;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HID Battery percentage for device %{public}s is %d", __p, 0x12u);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(*buf);
      }
    }

    IOObjectRelease(v10);
    v12 = 0;
  }

  else
  {
    IOObjectRelease(v10);
    v12 = 1;
  }

LABEL_18:
  IOObjectRelease(a4);
  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E5A58(a1, __p);
    v20 = v25 >= 0 ? __p : *__p;
    v21 = *a2;
    *buf = 136446722;
    *&buf[4] = v20;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v21;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "HID Battery fetch battery level for hid %{public}s with status 0x%x, level: %d", buf, 0x18u);
    if (v25 < 0)
    {
      operator delete(*__p);
    }
  }

  if (v12 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E5A58(a1, buf);
    sub_100840D94();
  }

  return v12;
}

id sub_1005402C4(uint64_t a1)
{
  v1 = IOHIDEventSystemClientCreate();
  v2 = &off_100B338D0;
  v3 = IOHIDEventSystemClientCopyServices(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_21;
  }

  Count = CFArrayGetCount(v3);
  if (!Count)
  {
    goto LABEL_20;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
    v8 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"SerialNumber");
    if (v8)
    {
      break;
    }

LABEL_18:
    if (Count == ++v6)
    {
      v2 = &off_100B338D0;
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@":"];
  sub_1000BE6F8((a1 + 128), __p);
  if (v18 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [NSString stringWithUTF8String:v10];
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  else if (!v9)
  {
    goto LABEL_16;
  }

  if (!v11 || [v11 caseInsensitiveCompare:v9])
  {
    goto LABEL_16;
  }

  v14 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"BatteryCapacity");
  *&v15 = [v14 intValue];
  v2 = [NSNumber numberWithFloat:v15];

LABEL_20:
  CFRelease(v4);
LABEL_21:
  CFRelease(v1);
  v12 = [v2 intValue];

  return v12;
}

uint64_t sub_100540560(_DWORD *a1, unsigned int a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1);
  if (a2 >= 0x65)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840DF4();
    }

    return sub_1000088CC(v9);
  }

  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = 132;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_21;
      }

      v6 = 136;
    }

LABEL_15:
    v7 = a1[v6];
    a1[v6] = a2;
    if (v7 != a2)
    {
      if (_os_feature_enabled_impl())
      {
        if (a3 != 1 && a3 != 16)
        {
          sub_10053F6F8(a1, a3);
        }
      }

      else
      {
        sub_10053F27C(a1);
      }
    }

    return sub_1000088CC(v9);
  }

  switch(a3)
  {
    case 4:
      v6 = 134;
      goto LABEL_15;
    case 8:
      v6 = 138;
      goto LABEL_15;
    case 16:
      v6 = 140;
      goto LABEL_15;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840CA8();
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005406CC(_DWORD *a1, int a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = 133;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      v6 = 137;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v6 = 135;
        break;
      case 8:
        v6 = 139;
        break;
      case 16:
        v6 = 141;
        break;
      default:
LABEL_17:
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100840CA8();
        }

        goto LABEL_19;
    }
  }

  v7 = LOBYTE(a1[v6]);
  LOBYTE(a1[v6]) = a2;
  if (v7 == a2)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  if (_os_feature_enabled_impl())
  {
    sub_10053F6F8(a1, a3);
  }

  else
  {
    sub_10053F27C(a1);
  }

  v8 = 1;
LABEL_20:
  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_100540800(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 572) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540848(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 572);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540890(__n128 *a1, int a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v6 = a1[36].n128_u32[0];
  v7 = v6 & ~a3 | a3 & a2;
  a1[36].n128_u32[0] = v7;
  if (v7 != v6)
  {
    sub_10000801C(v10);
    v8 = sub_1000BE4B4();
    (*(*v8 + 1536))(v8, a1, a1[36].n128_u32[0]);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 4102);
  }

  return sub_1000088CC(v10);
}

uint64_t sub_10054097C(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136446210;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device %{public}s supports phonebook sync", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 650) = 1;
  return sub_1000088CC(v7);
}

void sub_100540A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540A94(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 651);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540ADC(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phonebook sync %s for device %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 651) = a2;
  return sub_1000088CC(v10);
}

void sub_100540BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540C18(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 652);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540C60(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 652) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540CA8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 653);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540CF0(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 653) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540D38(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 654);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540D80(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v5 = "unselected";
    if (a2)
    {
      v5 = "selected";
    }

    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phonebook privacy %s for device %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 654) = a2;
  return sub_1000088CC(v10);
}

void sub_100540EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540EBC(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 656) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540F04(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 656);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540F4C(uint64_t a1, __int16 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 658) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540F94(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 658);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540FDC(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 860) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100541024(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 860);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054106C(void *a1, _DWORD **a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1);
  v4 = a1[94];
  a1[95] = v4;
  v5 = *a2;
  if (*a2 != a2[1])
  {
    v6 = (a1 + 94);
    do
    {
      v7 = a1[96];
      if (v4 >= v7)
      {
        v8 = *v6;
        v9 = v4 - *v6;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_1000C7698();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_10036F560((a1 + 94), v13);
        }

        *(4 * v10) = *v5;
        v4 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = a1[94];
        a1[94] = 0;
        a1[95] = v4;
        a1[96] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v4 = *v5;
        v4 += 4;
      }

      a1[95] = v4;
      ++v5;
    }

    while (v5 != a2[1]);
  }

  v15 = sub_100432498();
  (*(*v15 + 24))(v15);
  return sub_1000088CC(v17);
}

uint64_t sub_1005411F4(uint64_t a1, unsigned int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 752);
  if (a2 >= ((*(a1 + 760) - v4) >> 2))
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v4 + 4 * a2);
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100541260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  sub_1003A5D88(a2, (a1 + 752));
  return sub_1000088CC(v5);
}

uint64_t sub_1005412C4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 751);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Read fMapEnabled : %d", v5, 8u);
  }

  return *(a1 + 751);
}

uint64_t sub_100541370(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 751);
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set mapEnabled %d -> %d", v9, 0xEu);
  }

  *(a1 + 751) = a2;
  if (a2)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 1392) = *(a1 + 1392) & 0xFFFFFFDF | v6;
  v7 = *sub_1000BE4B4();
  return (*(v7 + 392))();
}

uint64_t sub_100541494(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 512) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005414DC(uint64_t a1, _DWORD *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *a2 = *(a1 + 512);
  sub_1000088CC(v5);
  return 0;
}

BOOL sub_10054152C(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1);
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  *&v18.__r_.__value_.__l.__data_ = xmmword_1008A9EE0;
  LOWORD(v18.__r_.__value_.__r.__words[2]) = 626;
  sub_100551540(&v14, &v18, 9);
  if ((*(a1 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 248))
    {
      goto LABEL_13;
    }

LABEL_5:
    v2 = std::string::basic_string(&v18, (a1 + 240), 0, 3uLL, &v13);
    if (!std::string::compare(v2, "BMW"))
    {
      v3 = 1;
    }

    else
    {
      std::string::basic_string(&v13, (a1 + 240), 0, 3uLL, &v17);
      v3 = std::string::compare(&v13, "MB ") == 0;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else if (!v3)
    {
      goto LABEL_13;
    }

    v4 = 1;
    v5 = v15[0];
    goto LABEL_23;
  }

  if (*(a1 + 263))
  {
    goto LABEL_5;
  }

LABEL_13:
  v5 = v15[0];
  if (!v15[0])
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 1132);
  v7 = v15;
  v8 = v15[0];
  do
  {
    v9 = *(v8 + 26);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *(v8 + 8 * v11);
  }

  while (v8);
  if (v7 == v15 || *(v7 + 13) > v6)
  {
LABEL_21:
    v7 = v15;
  }

  v4 = v7 != v15;
LABEL_23:
  sub_10000CEDC(&v14, v5);
  sub_1000088CC(v16);
  return v4;
}

void sub_1005416D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  if (*(v5 - 25) < 0)
  {
    operator delete(*(v5 - 48));
  }

  sub_10000CEDC(va, v9);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100541720(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  if ((*(a1 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 248))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 263))
  {
    goto LABEL_23;
  }

  std::string::basic_string(&__p, (a1 + 240), 0, 4uLL, &v14);
  v2 = std::string::compare(&__p, "Audi");
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else if (!v2)
  {
    goto LABEL_15;
  }

  std::string::basic_string(&__p, (a1 + 240), 0, 9uLL, &v14);
  v4 = std::string::compare(&__p, "bluetouch");
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
LABEL_11:
    std::string::basic_string(&__p, (a1 + 240), 0, 3uLL, &v14);
    v6 = std::string::compare(&__p, "BMW");
    v7 = v6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else if (!v6)
    {
      goto LABEL_23;
    }

    std::string::basic_string(&__p, (a1 + 240), 0, 5uLL, &v14);
    v9 = std::string::compare(&__p, "Parrot");
    v10 = v9;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!v9)
      {
        goto LABEL_23;
      }

LABEL_21:
      std::string::basic_string(&__p, (a1 + 240), 0, 5uLL, &v14);
      std::string::compare(&__p, "TomTom");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_23;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

LABEL_15:
  v8 = 1;
LABEL_24:
  sub_1000088CC(v13);
  return v8;
}

void sub_1005418DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541900(uint64_t a1, int *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  if ((*(a1 + 263) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 263))
    {
      goto LABEL_9;
    }

LABEL_5:
    std::string::basic_string(&__p, (a1 + 240), 0, 9uLL, &v13);
    v4 = std::string::compare(&__p, "bluetouch");
    v5 = v4;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
LABEL_7:
      std::string::basic_string(&__p, (a1 + 240), 0, 3uLL, &v13);
      v6 = std::string::compare(&__p, "BMW");
      v7 = v6;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else if (v6)
      {
        goto LABEL_9;
      }

      v9 = 33;
LABEL_14:
      *a2 = v9;
      v8 = 1;
      goto LABEL_15;
    }

    v9 = 25;
    goto LABEL_14;
  }

  if (*(a1 + 248))
  {
    goto LABEL_5;
  }

LABEL_9:
  v8 = 0;
LABEL_15:
  sub_1000088CC(v12);
  return v8;
}

void sub_100541A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541A24(uint64_t a1, std::string **a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1);
  v4 = (a1 + 1232);
  if ((a1 + 1232) != a2)
  {
    sub_1000DFCBC((a1 + 1232), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3) >= 2)
  {
    v5 = 1;
    v6 = 24;
    do
    {
      if (qword_100B50950 != -1)
      {
        sub_100840E64();
      }

      v7 = off_100B50948;
      memset(v17, 0, sizeof(v17));
      sub_10003E428(v17, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
      LOBYTE(v7) = sub_10034A4D4(v7, v17, v5);
      v16[0] = v17;
      sub_1000161FC(v16);
      if ((v7 & 1) == 0)
      {
        std::string::assign((*v4 + v6), "");
      }

      ++v5;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3) > v5);
  }

  memset(v16, 0, sizeof(v16));
  if (sub_1000DFC04(a1, v16))
  {
    v8 = *(a1 + 1232);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - v8) >> 3) >= 2)
    {
      v9 = 1;
      v10 = 1;
      do
      {
        if (v9 != 5)
        {
          if (qword_100B50950 != -1)
          {
            sub_100840E64();
          }

          v11 = off_100B50948;
          memset(v15, 0, sizeof(v15));
          sub_10003E428(v15, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
          LOBYTE(v11) = sub_10034A4D4(v11, v15, v9);
          v19 = v15;
          sub_1000161FC(&v19);
          v8 = *v4;
          if ((v11 & 1) == 0)
          {
            std::string::operator=((v8 + v10 * 24), &v16[0][v10]);
            v8 = *v4;
          }
        }

        ++v9;
        ++v10;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - v8) >> 3) > v9);
    }
  }

  v12 = sub_1000BE4B4();
  memset(v14, 0, sizeof(v14));
  sub_10003E428(v14, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
  (*(*v12 + 944))(v12, a1, v14);
  v19 = v14;
  sub_1000161FC(&v19);
  v19 = v16;
  sub_1000161FC(&v19);
  return sub_1000088CC(v18);
}

void sub_100541D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541D78(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a2 <= 2)
  {
    v3 = byte_1008A9EF2[a2];
  }

  else
  {
    v3 = 0;
  }

  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100541DD8(uint64_t a1, std::string *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (*(a1 + 1279) < 0)
  {
    if (*(a1 + 1264))
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!*(a1 + 1279))
  {
    goto LABEL_5;
  }

LABEL_3:
  std::string::operator=(a2, (a1 + 1256));
  v4 = 1;
LABEL_6:
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100541E60(uint64_t a1, const std::string *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  std::string::operator=((a1 + 1256), a2);
  v4 = sub_1000BE4B4();
  if (*(a1 + 1279) < 0)
  {
    sub_100008904(__p, *(a1 + 1256), *(a1 + 1264));
  }

  else
  {
    *__p = *(a1 + 1256);
    v7 = *(a1 + 1272);
  }

  (*(*v4 + 960))(v4, a1, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1000088CC(v8);
}

void sub_100541F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100541F64(uint64_t a1, char a2, __int16 a3, int a4, __int16 a5, char a6, uint64_t a7, int a8, const std::string *a9)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1);
  *(a1 + 1280) = a2;
  *(a1 + 1282) = a3;
  *(a1 + 1284) = a4;
  *(a1 + 1288) = a5;
  *(a1 + 1290) = a6;
  *(a1 + 1296) = a7;
  *(a1 + 1304) = a8;
  std::string::operator=((a1 + 1312), a9);
  v17 = sub_1000BE4B4();
  v19[0] = *(a1 + 1280);
  *(v19 + 12) = *(a1 + 1292);
  if (*(a1 + 1335) < 0)
  {
    sub_100008904(__p, *(a1 + 1312), *(a1 + 1320));
  }

  else
  {
    *__p = *(a1 + 1312);
    v21 = *(a1 + 1328);
  }

  (*(*v17 + 976))(v17, a1, v19);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1000088CC(v22);
}

void sub_1005420A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1005420D0(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_100530768(v2, a1);
}

uint64_t sub_100542124(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_1005307E0(v2, a1);
}

uint64_t sub_100542178(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = sub_1005307E0(off_100B50F60, a1);
  v3 = 0;
  if (v2)
  {
    do
    {
      v3 += v2 & 1;
      v4 = v2 > 1;
      v2 >>= 1;
    }

    while (v4);
  }

  return v3;
}

uint64_t sub_1005421E4(uint64_t result, int a2)
{
  *(result + 1376) = a2;
  *(result + 1380) = 1;
  return result;
}

void sub_1005421F4(uint64_t a1, int a2, char a3)
{
  if (!a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1);
    *(a1 + 1396) = 1;
    *buf = 0;
    sub_100016250(buf);
    v6 = *&buf[4];
    *(a1 + 1400) = *buf;
    *(a1 + 1408) = v6;
    *(a1 + 1397) = a3;
    *(a1 + 1448) = 0;
    sub_10000801C(__p);
    sub_10053E21C(a1);
    sub_1000088CC(__p);
  }

  v7 = qword_100BCE8D8;
  if (os_signpost_enabled(qword_100BCE8D8))
  {
    sub_1000E5A58(a1, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446466;
    *&buf[4] = v8;
    v12 = 1024;
    v13 = a2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "ACL connected for device %{public}s with result:%d", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10054234C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054236C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1496) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005423B4(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100840E8C();
  }

  if (*(off_100B50A98 + 60))
  {
    v36 = 0;
    sub_1000216B4(&v36);
    *(a5 + 54) = sub_10024132C(a1 + 128);
    sub_100022214(&v36);
    *a5 = a3;
    *(a5 + 44) = a2;
    *(a5 + 48) = a4;
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    *(a5 + 52) = sub_10056D61C(off_100B508E8);
    if (qword_100B508B0 != -1)
    {
      sub_100840EA0();
    }

    v10 = sub_100029630(off_100B508A8);
    *(a5 + 53) = [v10 count];

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    *(a5 + 64) = *(off_100B508E8 + 75);
    v35[0] = 0;
    v35[1] = 0;
    sub_100007F88(v35, a1 + 64);
    v11 = (a5 + 4);
    if (*(a1 + 748) == 1 && (v12 = *(a1 + 708), *(a5 + 20) = *(a1 + 724), *v11 = v12, *(a1 + 749) == 1))
    {
      v13 = *(a1 + 728);
      *(a5 + 40) = *(a1 + 744);
      *(a5 + 24) = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(a5 + 56) = *(a1 + 1384);
    *(a5 + 72) = sub_100542124(a1);
    *(a5 + 76) = sub_1005420D0(a1);
    v16 = *(a1 + 1392);
    *(a5 + 88) = v16;
    *(a5 + 80) = 0;
    if (*(a1 + 1380) == 1)
    {
      *(a5 + 80) = *(a1 + 1376);
      *(a5 + 81) = *(a1 + 1388);
    }

    *(a5 + 88) = v16;
    v17 = sub_1000DFB74(a1, 0x20u);
    *(a5 + 98) = v17 == 4;
    if (v14)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *a5;
        v20 = *(a5 + 44);
        v21 = *(a5 + 48);
        v22 = *(a5 + 52);
        v23 = *(a5 + 53);
        v24 = *(a5 + 54);
        v25 = *(a5 + 56);
        v26 = *(a5 + 64);
        v27 = *(a5 + 72);
        v28 = *(a5 + 76);
        v29 = *(a5 + 80);
        v30 = *(a5 + 81);
        v31 = *(a5 + 88);
        *buf = 67113474;
        v38 = v19;
        v39 = 1042;
        *v40 = 20;
        *&v40[4] = 2098;
        *&v40[6] = a5 + 4;
        *&v40[14] = 1042;
        *&v40[16] = 20;
        v41 = 2098;
        v42 = a5 + 24;
        v43 = 1024;
        v44 = v20;
        v45 = 1024;
        v46 = v21;
        v47 = 1024;
        v48 = v22;
        v49 = 1024;
        v50 = v23;
        v51 = 1024;
        v52 = v24;
        v53 = 1024;
        v54 = v25;
        v55 = 2048;
        v56 = v26;
        v57 = 1024;
        v58 = v27;
        v59 = 1024;
        v60 = v28;
        v61 = 1024;
        v62 = v29;
        v63 = 1024;
        v64 = v30;
        v65 = 2048;
        v66 = v31;
        v67 = 1024;
        v68 = v17 == 4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Contextual Metric - {0x%x, %{public}.20P, %{public}.20P, 0x%x, %d, %d, %d, %d, 0x%x, 0x%llx, 0x%x, 0x%x, %d, %d, 0x%llx, %d}", buf, 0x7Eu);
      }

      v32 = [NSData dataWithBytes:a5 + 4 length:20];
      v33 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v38 = 20;
        v39 = 2098;
        *v40 = v11;
        *&v40[8] = 2112;
        *&v40[10] = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Contextual Metric primary hash %{public}.20P    data hash %@", buf, 0x1Cu);
      }
    }

    sub_1000088CC(v35);
    sub_10002249C(&v36);
  }

  else
  {
    v15 = qword_100BCE8D8;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stack is not ready, not generating contextual metric", buf, 2u);
      return 0;
    }
  }

  return v14;
}

void sub_1005427D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000088CC(&a10);
  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100542814(uint64_t a1, int a2)
{
  *(a1 + 794) = a2 != 0;
  v2 = *(*sub_1000BE4B4() + 408);

  return v2();
}

uint64_t sub_10054288C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a1, __p);
    v5 = __p[0];
    v6 = "No";
    if (v10 >= 0)
    {
      v5 = __p;
    }

    if (a2)
    {
      v6 = "Yes";
    }

    *buf = 136446466;
    v12 = v5;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting device %{public}s to allow sco for turn by turn: %s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 655) = a2;
  v7 = sub_1000BE4B4();
  return (*(*v7 + 424))(v7, a1, *(a1 + 655));
}

uint64_t sub_1005429CC(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 662);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Last AVRCP version is %d", buf, 8u);
  }

  v4 = *(a1 + 662);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100542A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 440))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 662) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542B90(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 668);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 488))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 668) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP Controller version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542CD4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 670);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 504))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 670) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100542D9C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 672);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 520))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 672) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP Target version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542EE0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 674);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 536))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 674) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100542FA8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 676);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 552))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 676) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting Handsfree version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005430EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 678);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100543134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 568))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 678) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_1005431B4(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 584))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 680) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting A2DP Sink version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005432B4(uint64_t a1, __int16 a2)
{
  v6 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 600))(v3, a1, &v6);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 682) = v6;
  return sub_1000088CC(v5);
}

uint64_t sub_100543338(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 616))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 684) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting MAP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543438(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 632))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 686) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting Object Push version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543538(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 648))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 688) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting PNP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543638(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 664))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 690) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting SerialPort version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543738(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 680))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 692) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting HID version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543838(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 696))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 694) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting GATT version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543938(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 712))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 696) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting WIAP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543A38(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 728))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 698) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVDTP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543B38(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4();
  (*(*v3 + 744))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 700) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVCTP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543C38(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 704);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100543C80(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 704) = a2;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting Firmware version to %d", buf, 8u);
  }

  return sub_1000088CC(v6);
}

__n128 sub_100543D4C(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 748);
  if (a2)
  {
    if (v3)
    {
      result = *(a1 + 708);
      a2[1].n128_u32[0] = *(a1 + 724);
      *a2 = result;
    }
  }

  return result;
}

__n128 sub_100543D7C(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 749);
  if (a2)
  {
    if (v3)
    {
      result = *(a1 + 728);
      a2[1].n128_u32[0] = *(a1 + 744);
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_100543DA4(uint64_t a1)
{
  v136[0] = 0;
  v136[1] = 0;
  sub_100007F88(v136, a1 + 64);
  *__p = 0u;
  v242 = 0u;
  memset(v240, 0, sizeof(v240));
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  memset(v229, 0, sizeof(v229));
  v227 = 0u;
  v228 = 0u;
  *v134 = 0u;
  v135 = 0u;
  sub_10057C6A8(v134, 0);
  v226 = 0;
  v225 = 0u;
  memset(v224, 0, sizeof(v224));
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  sub_1000DE474(&v218 + 1);
  BYTE2(v219) = 0;
  BYTE4(v219) = 0;
  BYTE2(v221) = 0;
  BYTE4(v221) = 0;
  HIDWORD(v224[2]) = 0;
  v220 = 0uLL;
  *(&v219 + 1) = 0;
  LOBYTE(v221) = 0;
  *(&v221 + 1) = 0;
  v222 = 0uLL;
  LOBYTE(v223) = 0;
  *(&v223 + 1) = 0;
  memset(v224, 0, 19);
  LOBYTE(v224[3]) = 1;
  *(&v224[3] + 6) = 0;
  *(&v224[3] + 1) = 0;
  v224[5] = 0;
  v225 = 0uLL;
  LOBYTE(v226) = 0;
  *(&v226 + 2) = 0;
  if (*(a1 + 750) == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Identification - metric has already been updated", buf, 2u);
    }

    goto LABEL_228;
  }

  v3 = (a1 + 1132);
  v4 = *(a1 + 1132);
  if (v4 == 76 && (v5 = *(a1 + 1136) - 8194, v5 <= 0x2D) && ((1 << v5) & 0x200020037F9BLL) != 0 || *(a1 + 1125) == 1 && (*(a1 + 1145) & 0x10) != 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1);
    v6 = *(a1 + 704);
    sub_1000088CC(buf);
    if (!v6)
    {
      v18 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_228;
      }

      sub_1000E5A58(a1, buf);
      v19 = buf[23] >= 0 ? buf : *buf;
      LODWORD(v216) = 136446210;
      *(&v216 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device firmware version not yet known for device %{public}s. Waiting until firmware version comes in.", &v216, 0xCu);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_228;
      }

      v17 = *buf;
LABEL_35:
      operator delete(v17);
      goto LABEL_228;
    }

    v4 = *v3;
  }

  if (v4 == 76 && (v7 = *(a1 + 1136) - 8194, v7 <= 0x2D) && ((1 << v7) & 0x200020037F9BLL) != 0 || *(a1 + 1125) == 1 && (*(a1 + 1145) & 0x10) != 0 || *(a1 + 1433) == 1 && *(a1 + 1434) == 1 && (sub_1000295DC(a1) & 1) != 0)
  {
    sub_1000DEEA4(a1, buf);
    if (SBYTE7(v242) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    *&v242 = *&buf[16];
    v8 = *(a1 + 1128);
    if (v8 == 2)
    {
      v9 = 1452;
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_39;
      }

      v9 = 76;
    }

    if (*v3 == v9)
    {
      LOWORD(v227) = 2560;
      v20 = 39;
LABEL_42:
      BYTE2(v227) = v20;
      v21 = BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if (SBYTE7(v242) < 0)
      {
        v21 = __p[1];
      }

      buf[0] = 13;
      v23 = sub_100545740(v22, &v21[v22], buf);
      v24 = __p + BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v25 = __p;
      }

      else
      {
        v24 = __p[0] + __p[1];
        v25 = __p[0];
      }

      std::string::erase(__p, v23 - v25, v24 - v23);
      v26 = BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      if (SBYTE7(v242) < 0)
      {
        v26 = __p[1];
      }

      buf[0] = 10;
      v28 = sub_100545740(v27, &v26[v27], buf);
      v29 = __p + BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v30 = __p;
      }

      else
      {
        v29 = __p[0] + __p[1];
        v30 = __p[0];
      }

      std::string::erase(__p, v28 - v30, v29 - v28);
      v31 = BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      if (SBYTE7(v242) < 0)
      {
        v31 = __p[1];
      }

      buf[0] = 44;
      v33 = sub_100545740(v32, &v31[v32], buf);
      v34 = __p + BYTE7(v242);
      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v34 = __p[0] + __p[1];
        v35 = __p[0];
      }

      std::string::erase(__p, v33 - v35, v34 - v33);
      sub_10000801C(v136);
      sub_1000E2FE4(a1, &v227 + 2, &v227 + 8, &v227 + 3);
      v133 = 0;
      sub_1000216B4(&v133);
      if (sub_10023DD84(a1 + 128, &v230, &v230 + 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100840EC8();
      }

      sub_100022214(&v133);
      sub_100007FB8(v136);
      sub_1005379CC(a1, &v229[1] + 3);
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v36 = *(a1 + 694);
      sub_1000088CC(buf);
      WORD5(v227) = v36;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v37 = *(a1 + 696);
      sub_1000088CC(buf);
      WORD6(v227) = v37;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v38 = *(a1 + 684);
      sub_1000088CC(buf);
      HIWORD(v227) = v38;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v39 = *(a1 + 676);
      sub_1000088CC(buf);
      LOWORD(v228) = v39;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v40 = *(a1 + 678);
      sub_1000088CC(buf);
      WORD1(v228) = v40;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v41 = *(a1 + 680);
      sub_1000088CC(buf);
      WORD2(v228) = v41;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v42 = *(a1 + 682);
      sub_1000088CC(buf);
      WORD3(v228) = v42;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v43 = *(a1 + 668);
      sub_1000088CC(buf);
      WORD4(v228) = v43;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v44 = *(a1 + 670);
      sub_1000088CC(buf);
      WORD5(v228) = v44;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v45 = *(a1 + 688);
      sub_1000088CC(buf);
      WORD6(v228) = v45;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v46 = *(a1 + 686);
      sub_1000088CC(buf);
      HIWORD(v228) = v46;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v47 = *(a1 + 690);
      sub_1000088CC(buf);
      LOWORD(v229[0]) = v47;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v48 = *(a1 + 692);
      sub_1000088CC(buf);
      WORD1(v229[0]) = v48;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v49 = *(a1 + 698);
      sub_1000088CC(buf);
      WORD2(v229[0]) = v49;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v50 = *(a1 + 700);
      sub_1000088CC(buf);
      WORD3(v229[0]) = v50;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v51 = *(a1 + 704);
      sub_1000088CC(buf);
      DWORD2(v229[1]) = v51;
      v52 = *(a1 + 1128);
      if (*(a1 + 1124) == 1)
      {
        *(v229 + 12) = *v3;
        v53 = *(a1 + 1140);
        DWORD2(v229[0]) = v52;
        DWORD1(v229[1]) = v53;
      }

      BYTE3(v227) = 0;
      if (v52 == 2)
      {
        v54 = 1452;
      }

      else
      {
        if (v52 != 1)
        {
          goto LABEL_76;
        }

        v54 = 76;
      }

      if (*v3 == v54)
      {
LABEL_81:
        if (HIDWORD(v229[1]))
        {
          if ((WORD6(v229[1]) & 0x400) != 0 && (BYTE12(v229[1]) & 0x28) != 0)
          {
            HIDWORD(v229[1]) &= 0xFF001FFF;
          }

          v56 = BYTE7(v232);
          if (SBYTE7(v232) < 0)
          {
            v56 = DWORD2(v231);
          }

          v57 = HIBYTE(v233);
          if (v233 < 0)
          {
            v57 = v233;
          }

          v58 = v56 + v57;
          v59 = BYTE7(v235);
          if (SBYTE7(v235) < 0)
          {
            v59 = DWORD2(v234);
          }

          v60 = v58 + v59 + 80;
          v61 = malloc_type_calloc(v60, 1uLL, 0x100004077774924uLL);
          v62 = v61;
          *v61 = v227;
          v63 = v228;
          v64 = v229[0];
          v65 = v230;
          *(v61 + 3) = v229[1];
          *(v61 + 4) = v65;
          *(v61 + 1) = v63;
          *(v61 + 2) = v64;
          if ((SBYTE7(v232) & 0x80u) == 0)
          {
            v66 = &v231;
          }

          else
          {
            v66 = v231;
          }

          if ((SBYTE7(v232) & 0x80u) == 0)
          {
            v67 = BYTE7(v232);
          }

          else
          {
            v67 = *(&v231 + 1);
          }

          memcpy(v61 + 80, v66, v67);
          v68 = BYTE7(v232);
          if (SBYTE7(v232) < 0)
          {
            v68 = DWORD2(v231);
          }

          v69 = v68 + 80;
          if (v233 >= 0)
          {
            v70 = &v232 + 8;
          }

          else
          {
            v70 = *(&v232 + 1);
          }

          if (v233 >= 0)
          {
            v71 = HIBYTE(v233);
          }

          else
          {
            v71 = v233;
          }

          memcpy(&v62[v68 + 80], v70, v71);
          v72 = HIBYTE(v233);
          if (v233 < 0)
          {
            v72 = v233;
          }

          v73 = (v72 + v69);
          if ((SBYTE7(v235) & 0x80u) == 0)
          {
            v74 = &v234;
          }

          else
          {
            v74 = v234;
          }

          if ((SBYTE7(v235) & 0x80u) == 0)
          {
            v75 = BYTE7(v235);
          }

          else
          {
            v75 = *(&v234 + 1);
          }

          memcpy(&v62[v73], v74, v75);
          CC_SHA1(v62, v60, &v240[3]);
          v76 = sub_10000E92C();
          if (((*(*v76 + 160))(v76) & 1) == 0)
          {
            v77 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name due to release version", buf, 2u);
            }

            if (SBYTE7(v242) < 0)
            {
              *__p[0] = 0;
              __p[1] = 0;
            }

            else
            {
              LOBYTE(__p[0]) = 0;
              BYTE7(v242) = 0;
            }
          }

          v78 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *&buf[4] = v60;
            *&buf[8] = 1040;
            *&buf[10] = v60;
            *&buf[14] = 2098;
            *&buf[16] = &v227;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Identification - raw serialized data dump of length %d {%{public}.*P}", buf, 0x18u);
            v78 = qword_100BCE8D8;
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            if ((SBYTE7(v242) & 0x80u) == 0)
            {
              v79 = __p;
            }

            else
            {
              v79 = __p[0];
            }

            v80 = v231;
            if ((SBYTE7(v232) & 0x80u) == 0)
            {
              v80 = &v231;
            }

            v81 = *(&v235 + 1);
            if (v236 >= 0)
            {
              v81 = &v235 + 8;
            }

            if (v233 >= 0)
            {
              v82 = &v232 + 8;
            }

            else
            {
              v82 = *(&v232 + 1);
            }

            v83 = &v234;
            if (SBYTE7(v235) < 0)
            {
              v83 = v234;
            }

            if ((SBYTE7(v238) & 0x80u) == 0)
            {
              v84 = &v237;
            }

            else
            {
              v84 = v237;
            }

            v85 = &v238 + 8;
            if (v239 < 0)
            {
              v85 = *(&v238 + 1);
            }

            *&buf[4] = 20;
            *&buf[20] = 3;
            v139 = &v227;
            v141 = v79;
            v143 = WORD2(v227);
            v145 = BYTE8(v227);
            v147 = WORD3(v227);
            *&buf[18] = 1042;
            v148 = 1042;
            v152 = 1042;
            v149 = 8;
            v153 = 8;
            *&buf[8] = 2098;
            v138 = 2098;
            v150 = 2098;
            v154 = 2098;
            v159 = WORD5(v227);
            v163 = HIWORD(v227);
            v167 = WORD1(v228);
            v171 = WORD3(v228);
            v175 = WORD5(v228);
            v179 = HIWORD(v228);
            v183 = WORD1(v229[0]);
            v187 = WORD3(v229[0]);
            v191 = HIDWORD(v229[0]);
            v195 = DWORD1(v229[1]);
            v199 = BYTE3(v227);
            v201 = v80;
            v203 = v81;
            v151 = &v230;
            v155 = &v230 + 8;
            v207 = v83;
            v209 = v84;
            v211 = v85;
            v215 = BYTE8(v242);
            v157 = HIDWORD(v229[1]);
            v161 = WORD6(v227);
            v165 = v228;
            v169 = WORD2(v228);
            v173 = WORD4(v228);
            v177 = WORD6(v228);
            v181 = LOWORD(v229[0]);
            v185 = WORD2(v229[0]);
            v189 = DWORD2(v229[0]);
            v193 = v229[1];
            v197 = DWORD2(v229[1]);
            v205 = v82;
            v140 = 2082;
            v200 = 2082;
            v202 = 2082;
            v204 = 2082;
            v206 = 2082;
            v208 = 2082;
            v210 = 2082;
            v212 = 2082;
            v86 = v240[0];
            if (v240[2] >= 0)
            {
              v86 = v240;
            }

            v213 = v86;
            v142 = 1024;
            v144 = 1024;
            v146 = 1024;
            v156 = 1024;
            v158 = 1024;
            v160 = 1024;
            v162 = 1024;
            v164 = 1024;
            v166 = 1024;
            v168 = 1024;
            v170 = 1024;
            v172 = 1024;
            v174 = 1024;
            v176 = 1024;
            v178 = 1024;
            v180 = 1024;
            v182 = 1024;
            v184 = 1024;
            v186 = 1024;
            v188 = 1024;
            v190 = 1024;
            v192 = 1024;
            v194 = 1024;
            v196 = 1024;
            v198 = 1024;
            v214 = 1024;
            *buf = 68299266;
            *&buf[10] = &v240[3];
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Identification - generating metric {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", buf, 0x12Eu);
          }

          free(v62);
          *(a1 + 708) = *&v240[3];
          *(a1 + 724) = v240[5];
          v87 = sub_1000BE4B4();
          if ((*(*v87 + 56))(v87, a1, a1 + 708))
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100840F38();
            }
          }

          else
          {
            *(a1 + 748) = 1;
            v88 = sub_1000BE4B4();
            if ((*(*v88 + 88))(v88, a1, &v227, 80) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100840F74();
            }

            v89 = BYTE7(v232);
            if (SBYTE7(v232) < 0)
            {
              v89 = *(&v231 + 1);
            }

            if (v89)
            {
              v90 = sub_1000BE4B4();
              (*(*v90 + 104))(v90, a1, &v231);
            }

            v91 = HIBYTE(v236);
            if (v236 < 0)
            {
              v91 = v236;
            }

            if (v91)
            {
              v92 = sub_1000BE4B4();
              (*(*v92 + 120))(v92, a1, &v235 + 8);
            }

            v93 = HIBYTE(v233);
            if (v233 < 0)
            {
              v93 = v233;
            }

            if (v93)
            {
              v94 = sub_1000BE4B4();
              (*(*v94 + 136))(v94, a1, &v232 + 8);
            }

            v95 = BYTE7(v235);
            if (SBYTE7(v235) < 0)
            {
              v95 = *(&v234 + 1);
            }

            if (v95)
            {
              v96 = sub_1000BE4B4();
              (*(*v96 + 152))(v96, a1, &v234);
            }

            v97 = BYTE7(v238);
            if (SBYTE7(v238) < 0)
            {
              v97 = *(&v237 + 1);
            }

            if (v97)
            {
              v98 = sub_1000BE4B4();
              (*(*v98 + 168))(v98, a1, &v237);
            }

            v99 = HIBYTE(v239);
            if (v239 < 0)
            {
              v99 = v239;
            }

            if (v99)
            {
              v100 = sub_1000BE4B4();
              (*(*v100 + 184))(v100, a1, &v238 + 8);
            }

            v101 = HIBYTE(v240[2]);
            if (v240[2] < 0)
            {
              v101 = v240[1];
            }

            if (v101)
            {
              v102 = sub_1000BE4B4();
              (*(*v102 + 200))(v102, a1, v240);
            }

            v103 = sub_10000E92C();
            if ((*(*v103 + 8))(v103) && (WORD1(v229[0]) || ((v104 = sub_100537D2C(a1), BYTE3(v227)) ? (v105 = 1) : (v105 = v104), v105 == 1)))
            {
              v106 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v107 = sub_10000E92C();
                v108 = (*(*v107 + 8))(v107);
                v109 = WORD1(v229[0]);
                v110 = sub_100537D2C(a1);
                *buf = 67109632;
                *&buf[4] = v108;
                *&buf[8] = 1024;
                *&buf[10] = v109;
                *&buf[14] = 1024;
                *&buf[16] = v110;
                _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Identification - routing friendly name: internal %d, hid %d, carkit %d", buf, 0x14u);
              }
            }

            else
            {
              v111 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v112 = sub_10000E92C();
                v113 = (*(*v112 + 8))(v112);
                v114 = WORD1(v229[0]);
                v115 = sub_100537D2C(a1);
                *buf = 67109632;
                *&buf[4] = v113;
                *&buf[8] = 1024;
                *&buf[10] = v114;
                *&buf[14] = 1024;
                *&buf[16] = v115;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name: internal %d, hid %d, carkit %d", buf, 0x14u);
              }

              if (SBYTE7(v242) < 0)
              {
                *__p[0] = 0;
                __p[1] = 0;
              }

              else
              {
                LOBYTE(__p[0]) = 0;
                BYTE7(v242) = 0;
              }
            }

            sub_10057C6D0(v134, SBYTE3(v227));
            sub_10057C70C(v134, SWORD2(v227));
            sub_10057C70C(v134, SWORD3(v227));
            sub_10057C6D0(v134, SBYTE8(v227));
            sub_10057C70C(v134, SWORD5(v227));
            sub_10057C70C(v134, SWORD6(v227));
            sub_10057C70C(v134, SHIWORD(v227));
            sub_10057C70C(v134, v228);
            sub_10057C70C(v134, SWORD1(v228));
            sub_10057C70C(v134, SWORD2(v228));
            sub_10057C70C(v134, SWORD3(v228));
            sub_10057C70C(v134, SWORD4(v228));
            sub_10057C70C(v134, SWORD5(v228));
            sub_10057C70C(v134, SWORD6(v228));
            sub_10057C70C(v134, SHIWORD(v228));
            sub_10057C70C(v134, v229[0]);
            sub_10057C70C(v134, SWORD1(v229[0]));
            sub_10057C70C(v134, SWORD2(v229[0]));
            sub_10057C70C(v134, SWORD3(v229[0]));
            sub_10057C75C(v134, DWORD2(v229[0]));
            sub_10057C75C(v134, HIDWORD(v229[0]));
            sub_10057C75C(v134, DWORD2(v229[1]));
            sub_10057C75C(v134, HIDWORD(v229[1]));
            sub_10057C6B8(v134, &v230, 8);
            sub_10057C6B8(v134, &v230 + 8, 8);
            if (v233 >= 0)
            {
              v116 = &v232 + 8;
            }

            else
            {
              v116 = *(&v232 + 1);
            }

            if (v233 >= 0)
            {
              v117 = HIBYTE(v233);
            }

            else
            {
              v117 = v233;
            }

            sub_10057C6B8(v134, v116, v117);
            sub_10000C704(buf, v134[1], v135 - v134[1]);
            v118 = sub_10000C5F8(buf);
            sub_10000C704(&v216, v134[1], v135 - v134[1]);
            v119 = sub_10000C5E0(&v216);
            CC_SHA1(v118, v119, &v240[5] + 4);
            *&v216 = &off_100AE0A78;
            if (*(&v216 + 1))
            {
              sub_10000C808(*(&v216 + 1));
            }

            *buf = &off_100AE0A78;
            if (*&buf[8])
            {
              sub_10000C808(*&buf[8]);
            }

            v120 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 20;
              *&buf[8] = 2098;
              *&buf[10] = &v240[5] + 4;
              _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Identification - Secondary hash {%{public}.20P}", buf, 0x12u);
              v120 = qword_100BCE8D8;
            }

            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              sub_10000C704(&v216, v134[1], v135 - v134[1]);
              v121 = sub_10000C5E0(&v216);
              sub_10000C704(&v131, v134[1], v135 - v134[1]);
              v122 = sub_10000C5F8(&v131);
              *buf = 68157954;
              *&buf[4] = v121;
              *&buf[8] = 2098;
              *&buf[10] = v122;
              _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Identification - Raw buffer to create secondary hash {%{public}.*P}", buf, 0x12u);
              v131 = &off_100AE0A78;
              if (v132)
              {
                sub_10000C808(v132);
              }

              *&v216 = &off_100AE0A78;
              if (*(&v216 + 1))
              {
                sub_10000C808(*(&v216 + 1));
              }
            }

            *(a1 + 728) = *(&v240[5] + 4);
            *(a1 + 744) = HIDWORD(v240[7]);
            v123 = sub_1000BE4B4();
            if ((*(*v123 + 72))(v123, a1, a1 + 728))
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100840FB0();
              }
            }

            else
            {
              *(a1 + 749) = 1;
            }

            *(a1 + 750) = 1;
            if (sub_100537D80(a1, WORD2(v227)) && (v124 = sub_10000E92C(), (*(*v124 + 8))(v124)))
            {
              v125 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a1, buf);
                v126 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v216) = 136446210;
                *(&v216 + 4) = v126;
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Identification - skipping Core Analytics metric upload for automation dongle %{public}s", &v216, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }
            }

            else
            {
              v127 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a1, buf);
                v128 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v216) = 136446210;
                *(&v216 + 4) = v128;
                _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Identification - submitting Core Analytics metric upload for device %{public}s", &v216, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              sub_10000801C(v136);
              v129 = sub_10000F034();
              (*(*v129 + 232))(v129, &v227);
            }
          }
        }

        else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100840FEC();
        }

        sub_10002249C(&v133);
        goto LABEL_228;
      }

LABEL_76:
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v55 = *(a1 + 176);
      sub_1000088CC(buf);
      if ((v55 == 22 || v55 == 17) && sub_100536A18(a1, &v218) && v223 == 1)
      {
        std::string::operator=((&v235 + 8), (&v223 + 8));
      }

      goto LABEL_81;
    }

LABEL_39:
    if (sub_10053D3E0(a1))
    {
      LOWORD(v227) = -1;
      v20 = -1;
    }

    else
    {
      LOWORD(v227) = *(a1 + 128);
      v20 = *(a1 + 130);
    }

    goto LABEL_42;
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, &v216);
    v11 = v217;
    v12 = v216;
    v13 = *(a1 + 1433);
    v14 = *(a1 + 1434);
    v15 = sub_1000295DC(a1);
    v16 = &v216;
    *buf = 136446978;
    if (v11 < 0)
    {
      v16 = v12;
    }

    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v14;
    v138 = 1024;
    LODWORD(v139) = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Identification - 3rd Party Device  %{public}s. Waiting until all criteria is met. Product Name Update:%d SDP Query Complete:%d Paired:%d", buf, 0x1Eu);
    if (v217 < 0)
    {
      v17 = v216;
      goto LABEL_35;
    }
  }

LABEL_228:
  if (SHIBYTE(v224[1]) < 0)
  {
    operator delete(*(&v223 + 1));
  }

  if (SHIBYTE(v222) < 0)
  {
    operator delete(*(&v221 + 1));
  }

  if (SHIBYTE(v220) < 0)
  {
    operator delete(*(&v219 + 1));
  }

  nullsub_21(&v218 + 1);
  if (v134[1])
  {
    *&v135 = v134[1];
    operator delete(v134[1]);
  }

  sub_1000E3D14(&v227);
  return sub_1000088CC(v136);
}

void sub_1005455BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10002249C(&a21);
  sub_100320BE8(&a70);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  sub_1000E3D14(&STACK[0x280]);
  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100545740(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_1005457A8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 660);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005457F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4();
  (*(*v4 + 760))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 660) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100545870(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 296))(v2))
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, a1);
    v3 = *(a1 + 176);
    sub_1000088CC(v5);
    if (v3 == 25 || (*(a1 + 785) & 1) != 0)
    {
      return 1;
    }
  }

  if (*(a1 + 1432))
  {
    return 1;
  }

  else
  {
    return (*(a1 + 784) >> 1) & 1;
  }
}

void sub_100545910(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000DEEA4(a1, &__p);
    v3 = v26 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Start identification for %s", buf, 0xCu);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v25 = 0;
  sub_100007F88(&__p, a1);
  v4 = *(a1 + 176);
  sub_1000088CC(&__p);
  if (v4 != 25 && (*(a1 + 784) & 0x302) == 0)
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v10 = "HIDIdentification - Not a mouse/TP. Wait for sniff param update";
      v11 = v12;
      goto LABEL_20;
    }
  }

  else
  {
    if (*(a1 + 784) & 2) != 0 || (v6 = sub_10000C798(), ((*(*v6 + 296))(v6)))
    {
      v7 = 1;
    }

    else if ((*(a1 + 785) & 3) != 0)
    {
      v7 = 0;
    }

    else
    {
      memset(buf, 0, 20);
      v16 = *(a1 + 748);
      if (v16 == 1)
      {
        *&buf[16] = *(a1 + 724);
        *buf = *(a1 + 708);
      }

      v17 = *(a1 + 263);
      if (v17 < 0)
      {
        v17 = *(a1 + 248);
      }

      if (!v17)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100841028();
        }

        operator new();
      }

      __p = 0;
      v25 = 0;
      v26 = 0;
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056DB18((a1 + 240), &__p);
      v18 = __p;
      v19 = v16 ^ 1;
      if (__p == v25)
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0 && (*__p == *buf ? (v20 = *(__p + 1) == *&buf[8]) : (v20 = 0), v20 ? (v21 = *(__p + 4) == *&buf[16]) : (v21 = 0), v21))
      {
        *(a1 + 1432) = 1;
        v22 = qword_100BCE8D8;
        v7 = 0;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Device found in allowlist", v23, 2u);
          v7 = 0;
          v18 = __p;
        }
      }

      else
      {
        v7 = 2;
      }

      if (v18)
      {
        v25 = v18;
        operator delete(v18);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v8 = qword_100BCE8D8;
      v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v7 == 2)
      {
        if (v9)
        {
          LOWORD(__p) = 0;
          v10 = "HIDIdentification - Classic HID Device behavior is unknown. Wait for sniff param update";
          v11 = v8;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &__p, 2u);
        }
      }

      else
      {
        if (v9)
        {
          sub_1000DEEA4(a1, &__p);
          if (v26 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 67109378;
          *&buf[4] = v7;
          *&buf[8] = 2080;
          *&buf[10] = p_p;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Set classic HID device behavior : %u for %s", buf, 0x12u);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p);
          }
        }

        sub_10053D06C(a1, v7);
      }
    }

    else
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a1, &__p);
        v14 = v26 >= 0 ? &__p : __p;
        *buf = 67109378;
        *&buf[4] = v7;
        *&buf[8] = 2080;
        *&buf[10] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Set classic HID device behavior : %u for %s", buf, 0x12u);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p);
        }
      }

      sub_10053D06C(a1, v7);
    }
  }
}

void sub_100545E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_100545E40(uint64_t a1, int a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 352))(v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_10000C798();
    v5 = (*(*v6 + 360))(v6);
  }

  v7 = 0;
  if (_os_feature_enabled_impl() && v5)
  {
    if (sub_10000C5F8(a1 + 1064))
    {
      v7 = sub_100545870(a1) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  if (*(a1 + 1124) == 1 && a2 != 0)
  {
    *buf = 0;
    v22 = 0uLL;
    *__p = xmmword_1008A9EF8;
    v20 = unk_1008A9F08;
    sub_10055193C(buf, __p, 4uLL);
    v9 = *buf;
    v10 = *buf;
    if (*buf != v22)
    {
      v10 = *buf;
      while (*v10 != ((*(a1 + 1132) << 16) | (*(a1 + 1128) << 32) | *(a1 + 1136)))
      {
        if (++v10 == v22)
        {
          goto LABEL_26;
        }
      }
    }

    if (v10 == v22)
    {
LABEL_26:
      a2 = 1;
    }

    else
    {
      v11 = qword_100BCE8D8;
      a2 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        if ((SBYTE7(v20) & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v17 = 136446210;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Overriding behavior for known good device %{public}s", &v17, 0xCu);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }

        a2 = 0;
        v9 = *buf;
      }
    }

    if (v9)
    {
      *&v22 = v9;
      operator delete(v9);
    }
  }

  if (v7)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(a1, __p);
      if ((SBYTE7(v20) & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 67109378;
      *&buf[4] = a2;
      LOWORD(v22) = 2080;
      *(&v22 + 2) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Update classic HID device behavior to %d for %s", buf, 0x12u);
      if (SBYTE7(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10053D06C(a1, a2);
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    v16 = [NSNotification notificationWithName:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];
    [v15 postNotification:v16];
  }
}

void sub_100546168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005461A4(__n128 *a1, unsigned __int32 a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[49].n128_u32[3];
  a1[49].n128_u32[3] = a2;
  v5 = sub_1000BE4B4();
  (*(*v5 + 840))(v5, a1, a1[49].n128_u32[3]);
  if (v4 != a2)
  {
    sub_10000801C(v7);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 11);
  }

  return sub_1000088CC(v7);
}

BOOL sub_100546280(__n128 *a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1);
  v4 = a1[50].n128_u32[2];
  a1[50].n128_u32[2] = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v14 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v17 = a2;
    v18 = 2082;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Smart Route enabled setting is set to %d for Device %{public}s", buf, 0x12u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000BE4B4();
  (*(*v7 + 888))(v7, a1, a2);
  if (v4 != a2)
  {
    sub_10000801C(v15);
    if (_os_feature_enabled_impl())
    {
      v8 = sub_10000C798();
      v9 = (*(*v8 + 416))(v8) ^ 1;
      if (!a2)
      {
        LOBYTE(v9) = 1;
      }

      if ((v9 & 1) == 0)
      {
        if (qword_100B50950 != -1)
        {
          sub_100840E64();
        }

        v10 = off_100B50948;
        v11 = sub_1005464F8(a1);
        sub_100331844(v10, a1, 54, v11, 1u);
      }
    }

    if (qword_100B50950 != -1)
    {
      sub_100840E64();
    }

    sub_100331844(off_100B50948, a1, 32, a2, 1u);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 7);
  }

  sub_1000088CC(v15);
  return v4 != a2;
}

void sub_1005464D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005464F8(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 416))(v2))
  {
    if (qword_100B508F0 != -1)
    {
      sub_1000E2FD0();
    }

    if (*(off_100B508E8 + 304) == 1 && *(a1 + 808) == 1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v4 = sub_10000C798();
    if ((*(*v4 + 456))(v4))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_100546604(__n128 *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C23E0(a1, __p);
    v4 = v9;
    v5 = __p[0];
    v6 = sub_1000E2E8C(a1);
    v7 = __p;
    if (v4 < 0)
    {
      v7 = v5;
    }

    *buf = 136446466;
    v11 = v7;
    v12 = 1024;
    v13 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Smart Route Supported was updated by SR daemon, updating device: “%{public}s” (state = %d)", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  return sub_10056B15C(off_100B508E8, a1, 17);
}

void sub_100546724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100546748(__n128 *a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = a1[50].n128_u32[3];
  a1[50].n128_u32[3] = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v10 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v13 = a2;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Spatial Audio Allowed is set to %d for Device %{public}s", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000BE4B4();
  (*(*v7 + 912))(v7, a1, a2);
  if (v4 != a2)
  {
    sub_10000801C(v11);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 12);
  }

  return sub_1000088CC(v11);
}

void sub_1005468D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005468F0(__n128 *a1, int a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  v6 = a1[50].n128_u8[4];
  a1[50].n128_u8[4] = a2;
  v7 = qword_100BCE8D8;
  if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT) || ((sub_1000E5A58(a1, __p), v12 >= 0) ? (v8 = __p) : (v8 = __p[0]), *buf = 67109378, v15 = a2, v16 = 2082, v17 = v8, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IED enabled setting is set to %d for Device %{public}s", buf, 0x12u), (v12 & 0x80000000) == 0))
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (a3)
  {
LABEL_7:
    v9 = sub_1000BE4B4();
    (*(*v9 + 872))(v9, a1, a1[50].n128_u8[4]);
  }

LABEL_8:
  if (v6 != a2)
  {
    sub_10000801C(v13);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 9);
  }

  return sub_1000088CC(v13);
}

void sub_100546A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100546AA8(__n128 *a1, unsigned __int32 a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = a1[51].n128_u32[0];
  a1[51].n128_u32[0] = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v10 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v13 = a2;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Listening Mode is set to %d for Device %{public}s", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000BE4B4();
  (*(*v7 + 928))(v7, a1, a1[51].n128_u32[0]);
  if (v4 != a2)
  {
    sub_10000801C(v11);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v11);
}

void sub_100546C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100546C50(uint64_t a1, unsigned int a2)
{
  if (a2 <= 8 && ((1 << a2) & 0x117) != 0)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, __p);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v12 = v8;
      v13 = 1024;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Device %{public}s with Invalid Listening Mode Configs %d", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a2 != 4 && a2 != 8 && a2 > 2;
}

uint64_t sub_100546D6C(__n128 *a1, unsigned __int32 a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = a1[51].n128_u32[1];
  a1[51].n128_u32[1] = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v10 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v13 = a2;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Listening Mode Configs is set to %d for Device %{public}s", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000BE4B4();
  (*(*v7 + 992))(v7, a1, a1[51].n128_u32[1]);
  if (v4 != a2)
  {
    sub_10000801C(v11);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v11);
}

void sub_100546EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100546F14(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 824) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100546F5C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 825) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100546FA4(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 828) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1008))(v4, a1, *(a1 + 828));
  return sub_1000088CC(v6);
}

uint64_t sub_100547038(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 832) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1024))(v4, a1, *(a1 + 832));
  return sub_1000088CC(v6);
}

uint64_t sub_1005470CC(__n128 *a1, unsigned __int32 a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[52].n128_u32[1];
  a1[52].n128_u32[1] = a2;
  v5 = sub_1000BE4B4();
  (*(*v5 + 1040))(v5, a1, a1[52].n128_u32[1]);
  if (v4 != a2)
  {
    sub_10000801C(v7);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 16);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005471A8(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 840) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1056))(v4, a1, *(a1 + 840));
  return sub_1000088CC(v6);
}

uint64_t sub_10054723C(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 844) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1072))(v4, a1, *(a1 + 844));
  return sub_1000088CC(v6);
}

uint64_t sub_1005472D0(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 848) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1088))(v4, a1, a2);
  return sub_1000088CC(v6);
}

uint64_t sub_100547364(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 849) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005473AC(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 850) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005473F4(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 852) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054743C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 856) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100547484(uint64_t a1, char a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 864) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1104))(v4, a1, *(a1 + 864));
  return sub_1000088CC(v6);
}

uint64_t sub_100547518(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 868) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1120))(v4, a1, *(a1 + 868));
  return sub_1000088CC(v6);
}

uint64_t sub_1005475AC(__n128 *a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[54].n128_u8[12];
  a1[54].n128_u8[12] = a2;
  v5 = sub_1000BE4B4();
  (*(*v5 + 1168))(v5, a1, a1[54].n128_u8[12]);
  if (v4 != a2)
  {
    sub_10000801C(v7);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100547688(__n128 *a1, unsigned __int32 a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[54].n128_u32[2];
  a1[54].n128_u32[2] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v7);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  v5 = sub_1000BE4B4();
  (*(*v5 + 1136))(v5, a1, a1[54].n128_u32[2]);
  return sub_1000088CC(v7);
}

uint64_t sub_10054775C(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[55].n128_u32[0];
  a1[55].n128_u32[0] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005477F8(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[55].n128_u32[1];
  a1[55].n128_u32[1] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547894(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 888) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005478DC(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[55].n128_u32[3];
  a1[55].n128_u32[3] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547978(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 916) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005479C0(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[56].n128_u32[0];
  a1[56].n128_u32[0] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547A5C(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[57].n128_u32[0];
  a1[57].n128_u32[0] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547AF8(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[58].n128_u32[0];
  a1[58].n128_u32[0] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547B94(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[58].n128_u32[3];
  a1[58].n128_u32[3] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547C30(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[59].n128_u32[2];
  a1[59].n128_u32[2] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547CCC(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[59].n128_u32[3];
  a1[59].n128_u32[3] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547D68(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[60].n128_u32[0] != a2)
  {
    a1[60].n128_u32[0] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547E04(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[57].n128_u32[2] != a2)
  {
    a1[57].n128_u32[2] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547EA0(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[57].n128_u32[3] != a2)
  {
    a1[57].n128_u32[3] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547F3C(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[58].n128_u32[2] != a2)
  {
    a1[58].n128_u32[2] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547FD8(__n128 *a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[59].n128_u32[0];
  a1[59].n128_u32[0] = a2;
  v5 = sub_1000BE4B4();
  (*(*v5 + 1184))(v5, a1, a2);
  if (v4 != a2)
  {
    sub_10000801C(v7);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005480B4(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[59].n128_u32[1] != a2)
  {
    a1[59].n128_u32[1] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548150(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[56].n128_u32[1];
  a1[56].n128_u32[1] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005481EC(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[56].n128_u32[2] != a2)
  {
    a1[56].n128_u32[2] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548288(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[56].n128_u32[3] != a2)
  {
    a1[56].n128_u32[3] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548324(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[58].n128_u32[1];
  a1[58].n128_u32[1] = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005483C0(uint64_t a1, char a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1016) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1240))(v4, a1, *(a1 + 1016));
  return sub_1000088CC(v6);
}

uint64_t sub_100548454(uint64_t a1, char a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1032) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1256))(v4, a1, *(a1 + 1032));
  return sub_1000088CC(v6);
}

uint64_t sub_1005484E8(uint64_t a1, char a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1041) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1288))(v4, a1, *(a1 + 1041));
  return sub_1000088CC(v6);
}

uint64_t sub_10054857C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1020);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005485C4(uint64_t a1, _DWORD *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1020) = *a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1280))(v4, a1, a1 + 1020);
  return sub_1000088CC(v6);
}

void sub_10054865C(__n128 *a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v12[0] = 0;
    v12[1] = 0;
    sub_100007F88(v12, a1);
    v4 = a1[65].n128_u8[5];
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v11 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = "Off";
      if (a1[65].n128_u8[5])
      {
        v8 = "On";
      }

      else
      {
        v8 = "Off";
      }

      *buf = 136446722;
      if (a2)
      {
        v7 = "On";
      }

      v14 = v6;
      v15 = 2082;
      v16 = v8;
      v17 = 2082;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Temporary Managed Pairing Mode for Device %{public}s: Changing Mode %{public}s -> %{public}s", buf, 0x20u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    a1[65].n128_u8[5] = a2;
    v9 = sub_1000BE4B4();
    (*(*v9 + 1320))(v9, a1, a1[65].n128_u8[5]);
    if (v4 != a2)
    {
      sub_10000801C(v12);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 15);
    }

    sub_1000088CC(v12);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100841064();
  }
}

void sub_100548850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100548870(unsigned __int8 *a1, int a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v4 = a1[1046];
  v5 = (a2 ^ 1) & v4;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Off";
    if (v4)
    {
      v8 = "On";
    }

    else
    {
      v8 = "Off";
    }

    if (a2)
    {
      v7 = "On";
    }

    *buf = 136315650;
    v14 = v8;
    v15 = 2080;
    v16 = v7;
    if (v5)
    {
      v9 = "Yes";
    }

    else
    {
      v9 = "No";
    }

    v17 = 2080;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Changing Mode %s -> %s, trigger Magic Pairing: %s", buf, 0x20u);
  }

  a1[1046] = a2;
  v10 = sub_1000BE4B4();
  (*(*v10 + 1336))(v10, a1, a1[1046]);
  if (v5)
  {
    if (qword_100B50950 != -1)
    {
      sub_100840E64();
    }

    sub_1003337DC(off_100B50948, a1);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100548A1C(__n128 *a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = a1[65].n128_u8[7];
  a1[65].n128_u8[7] = a2;
  if (v4 != a2)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v12 = v6;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ownership changed: device %{public}s, state %d", buf, 0x12u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10000801C(v10);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 8);
  }

  return sub_1000088CC(v10);
}

void sub_100548B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100548B84(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  *(a1 + 976) = *(a1 + 968);
  *(a1 + 1000) = *(a1 + 992);
  *(a1 + 1498) = 0;
  v2 = sub_1000BE4B4();
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(a1 + 968);
  v4 = *(a1 + 976);
  if (v4 != v3)
  {
    if (v4 - v3 >= 0)
    {
      operator new();
    }

    sub_1000C7698();
  }

  (*(*v2 + 1200))(v2, a1, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v5 = sub_1000BE4B4();
  sub_1003A5D88(v7, (a1 + 992));
  (*(*v5 + 1216))(v5, a1, v7);
  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return sub_1000088CC(v11);
}

void sub_100548CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100548D28(__n128 *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  a1[93].n128_u8[10] = 1;
  sub_10000801C(v3);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 31);
  return sub_1000088CC(v3);
}

uint64_t sub_100548DB8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1498);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100548E00(uint64_t a1, int a2, int a3)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1);
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 7;
  }

  v7 = *(a1 + 968);
  v8 = *(a1 + 976) - v7;
  v9 = (v6 >> 3);
  if (v8 <= v9)
  {
    buf[0] = 0;
    sub_10041F894((a1 + 968), (v9 + 1) - v8, buf);
    v7 = *(a1 + 968);
  }

  v10 = *(v7 + v9);
  v11 = a2 - (v6 & 0xF8);
  if (((1 << v11) & v10) == a3 << v11)
  {
    if (v8 > v9)
    {
      return sub_1000088CC(v23);
    }
  }

  else
  {
    *(v7 + v9) = v10 ^ (1 << v11);
  }

  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v13 = v22 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v25 = v13;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setAACPCapabilityBit: Writing device %{public}s, bit %d, value %d", buf, 0x18u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = sub_1000BE4B4();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = *(a1 + 968);
  v16 = *(a1 + 976);
  if (v16 != v15)
  {
    if (v16 - v15 >= 0)
    {
      operator new();
    }

    sub_1000C7698();
  }

  (*(*v14 + 1200))(v14, a1, &v18);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return sub_1000088CC(v23);
}

uint64_t sub_100549080(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 0xFF)
  {
    v5 = result;
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, result);
    v6 = *(v5 + 992);
    if (a2 >= ((*(v5 + 1000) - v6) >> 2))
    {
      if (!a3)
      {
        return sub_1000088CC(v11);
      }

      v10 = 0;
      sub_10041DCD4((v5 + 992), a2 + 1, &v10);
      v7 = (*(v5 + 992) + 4 * a2);
      if (*v7 == a3)
      {
LABEL_8:
        v8 = sub_1000BE4B4();
        sub_1003A5D88(__p, (v5 + 992));
        (*(*v8 + 1216))(v8, v5, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return sub_1000088CC(v11);
      }
    }

    else
    {
      v7 = (v6 + 4 * a2);
      if (*v7 == a3)
      {
        return sub_1000088CC(v11);
      }
    }

    *v7 = a3;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1005491CC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 812);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549214(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 824);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054925C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 825);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005492A4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 828);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005492EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 832);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549334(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 840);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054937C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 844);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005493C4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 848);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054940C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 852);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549454(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 864);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054949C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 868);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005494E4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 880);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054952C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 888);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549574(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 896);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005495BC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 900);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549604(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 904);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054964C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 908);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549694(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 912);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005496DC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 928);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549724(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 932);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054976C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 940);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005497B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 952);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005497FC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 956);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549844(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 960);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054988C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 916);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005498D4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 920);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054991C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 924);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549964(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 936);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005499AC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 944);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005499F4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 948);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549A3C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 856);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 968);
  v5 = *(a1 + 976);
  if (v5 != v4)
  {
    sub_1000C9104(a2, v5 - v4);
  }

  return sub_1000088CC(v7);
}

id sub_100549B24(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    goto LABEL_26;
  }

  v22 = 0;
  do
  {
    if (*v7 != a1)
    {
      sub_1000C23E0(*v7, __p);
      if (v26 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v9 = [NSString stringWithCString:v8 encoding:4];
      if (v26 < 0)
      {
        operator delete(*__p);
      }

      v10 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 138412546;
        *&__p[4] = v9;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Name: %@, Localized Name: %@", __p, 0x16u);
      }

      if ([v9 length] && objc_msgSend(v9, "hasPrefix:", v5))
      {
        if ([v5 isEqualToString:v9])
        {
          v11 = 1;
        }

        else
        {
          v21 = [NSString stringWithFormat:@"^%@ #\\d*$", v5];
          v12 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:? error:?];
          if ([v12 numberOfMatchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}] == 1)
          {
            v13 = +[NSCharacterSet decimalDigitCharacterSet];
            v14 = [v13 invertedSet];
            v15 = [v9 componentsSeparatedByCharactersInSet:v14];
            v16 = [v15 componentsJoinedByString:&stru_100B0F9E0];

            v11 = [v16 intValue];
          }

          else
          {
            v11 = 0;
          }
        }

        v17 = v22;
        if (v11 > v22)
        {
          v17 = v11;
        }

        v22 = v17;
      }

      v6 = a3[1];
    }

    ++v7;
  }

  while (v7 != v6);
  if (v22 <= 0)
  {
LABEL_26:
    v19 = v5;
  }

  else
  {
    v18 = [NSString stringWithFormat:@" #%d", (v22 + 1)];
    v19 = [v5 stringByAppendingString:v18];
  }

  return v19;
}

void sub_100549EB0(uint64_t a1)
{
  if (*(a1 + 1132) != 76 || ((v2 = *(a1 + 1136) - 8194, v3 = v2 > 0x2D, v4 = (1 << v2) & 0x200020037F9BLL, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    if (*(a1 + 1125) != 1 || (*(a1 + 1145) & 0x10) == 0 && (*(a1 + 1157) & 2) == 0)
    {
      return;
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  memset(&v33, 0, sizeof(v33));
  sub_1000C23E0(a1, &v33);
  if (!std::string::compare(&v33, "AirPods"))
  {
    v13 = sub_100438B14(@"AIRPODS", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
LABEL_41:
    v10 = v14;

    goto LABEL_42;
  }

  if (!std::string::compare(&v33, "Powerbeats³"))
  {
    v13 = sub_100438B14(@"POWERBEATS3", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "Beats Solo³"))
  {
    v13 = sub_100438B14(@"SOLO3", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "Beatsˣ") || !std::string::compare(&v33, "BeatsX"))
  {
    v13 = sub_100438B14(@"BEATSX", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "Beats Studio³"))
  {
    v13 = sub_100438B14(@"BEATSSTUDIO3", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "Beats Studio Pro"))
  {
    v10 = @"Beats Studio Pro";
    goto LABEL_42;
  }

  if (!std::string::compare(&v33, "Powerbeats Pro"))
  {
    v13 = sub_100438B14(@"POWERBEATSPRO", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "Solo Pro"))
  {
    v13 = sub_100438B48(@"SOLOPRO", @"Headsets");
    v14 = [NSString stringWithFormat:@"%@", v13];
    goto LABEL_41;
  }

  if (!std::string::compare(&v33, "AirPods Pro"))
  {
    v10 = @"AirPods Pro";
  }

  else if (!std::string::compare(&v33, "AirPods Max"))
  {
    v10 = @"AirPods Max";
  }

  else if (!std::string::compare(&v33, "Beats Studio Buds"))
  {
    v10 = @"Beats Studio Buds";
  }

  else
  {
    if (std::string::compare(&v33, "Beats Studio Buds +"))
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v7 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, &__p);
          if (v32 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v9 = &v33;
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = v33.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = p_p;
          *&buf[12] = 2080;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set user-defined name for Apple Audio Device: %s to: %s", buf, 0x16u);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p);
          }
        }

        sub_100007E30(&__p, "");
        *v37 = 0;
        sub_100016250(v37);
        *buf = *v37;
        *&buf[8] = *&v37[4];
        sub_100538494(a1, &__p, buf);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }

        v10 = 0;
        sub_100538D30(a1, &v33, 0);
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v10 = 0;
      }

      goto LABEL_75;
    }

    v10 = @"Beats Studio Buds +";
  }

LABEL_42:
  if (sub_100432410())
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    v15 = sub_100432410();
    (*(*v15 + 112))(&__p);
    if (SHIBYTE(v32) < 0)
    {
      if (v31)
      {
        v16 = __p;
        goto LABEL_49;
      }
    }

    else if (HIBYTE(v32))
    {
      v16 = &__p;
LABEL_49:
      v17 = [NSString stringWithUTF8String:v16];
      v18 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Name prefix: %@, Device type: %@", buf, 0x16u);
      }

      v19 = sub_100438B14(@"APPLE_AUDIO_DEVICE_NAME", v10);
      v29 = 0;
      v11 = [NSString stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@" error:&v29, v17, v10];
      v20 = v29;

      if (!v11)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008410A0();
        }

        v11 = 0;
        v12 = v17;
        goto LABEL_73;
      }

      v12 = v17;
LABEL_56:
      v22 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Localized name: %@", buf, 0xCu);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100841114();
      }

      sub_10009DB3C(off_100B50F80, &v34);
      v26 = 0;
      __dst = 0;
      v28 = 0;
      if (v35 != v34)
      {
        sub_1000080CC(&v26, (v35 - v34) >> 3);
      }

      v20 = sub_100549B24(a1, v11, &v26);
      if (v26)
      {
        __dst = v26;
        operator delete(v26);
      }

      memset(buf, 0, sizeof(buf));
      v23 = v20;
      sub_100007E30(buf, [v20 UTF8String]);
      v24 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v25 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v25 = *buf;
        }

        *v37 = 136315138;
        *&v37[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Renaming device to: %s", v37, 0xCu);
      }

      sub_100538D30(a1, buf, 1);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_73:

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_75;
    }

    v21 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No name prefix", buf, 2u);
    }

    v11 = v10;
    v12 = 0;
    goto LABEL_56;
  }

  sub_10054A8E4(a1);
  v11 = 0;
  v12 = 0;
LABEL_75:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_10054A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10054A8E4(uint64_t a1)
{
  sub_10053781C(a1, v11);
  if (v12 < 0)
  {
    if (v11[1])
    {
      operator delete(v11[0]);
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  if (*(a1 + 1132) == 76 && ((v2 = *(a1 + 1136) - 8194, v3 = v2 > 0x2D, v4 = (1 << v2) & 0x200020037F9BLL, !v3) ? (v5 = v4 == 0) : (v5 = 1), !v5) || *(a1 + 1125) == 1 && ((*(a1 + 1145) & 0x10) != 0 || (*(a1 + 1157) & 2) != 0))
  {
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v6 = *(a1 + 784);
    if (v12 < 0)
    {
      operator delete(v11[0]);
      if ((v6 & 1) == 0)
      {
        return;
      }
    }

    else if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10054AA44;
  v8[3] = &unk_100AFC338;
  v9 = objc_alloc_init(CBUserController);
  v10 = a1;
  v7 = v9;
  [v7 getCurrentUserGivenNameWithCompletion:v8];
}

void sub_10054AA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_1000DEEA4(*(a1 + 40), __p);
  if (v26 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = *__p;
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  if (v26 < 0)
  {
    operator delete(*__p);
  }

  v6 = [v3 length];
  if (v3 && v6)
  {
    v7 = sub_100438B14(@"APPLE_DEVICE_NAME", v5);
    v21 = 0;
    v8 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:&v21, v3, v5];
    v9 = v21;

    if (v8)
    {
      if (qword_100B50F88 != -1)
      {
        sub_100841114();
      }

      sub_10009DB3C(off_100B50F80, &v22);
      v10 = *(a1 + 40);
      __dst = 0;
      v20 = 0;
      v18 = 0;
      if (v23 != v22)
      {
        sub_1000080CC(&v18, (v23 - v22) >> 3);
      }

      v11 = sub_100549B24(v10, v8, &v18);
      if (v18)
      {
        __dst = v18;
        operator delete(v18);
      }

      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
        v14 = [v11 UTF8String];
        *__p = 136315138;
        *&__p[4] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bluetooth device name is auto updated to %s", __p, 0xCu);
      }

      v15 = *(a1 + 40);
      v16 = v11;
      sub_100007E30(__p, [v11 UTF8String]);
      sub_100538D30(v15, __p, 1);
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v17 = qword_100BCE8D8;
      if (v9 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "stringWithValidatedFormat failed for APPLE_DEVICE_NAME: %@", __p, 0xCu);
        v17 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1008411BC();
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084113C();
    }

    v11 = 0;
    v8 = 0;
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_10054AD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10054AE4C(uint64_t result, int a2)
{
  if (a2 && *(result + 424) != a2)
  {
    *(result + 424) = a2;
    v2 = *(*sub_1000BE4B4() + 1360);

    return v2();
  }

  return result;
}

uint64_t sub_10054AED0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 428);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054AF18(uint64_t a1, float a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1180) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1392))(v4, a1, *(a1 + 1180));
  return sub_1000088CC(v6);
}

float sub_10054AFB4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1180);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054B004(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1208) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054B04C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1208);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054B094(uint64_t a1, char **a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  if ((a1 + 1184) != a2)
  {
    sub_1003A5C5C((a1 + 1184), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  v4 = sub_1000BE4B4();
  sub_1003A5D88(__p, (a1 + 1184));
  (*(*v4 + 1408))(v4, a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return sub_1000088CC(v7);
}

void sub_10054B15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10054B188(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 1336);
  if (v4 != a2)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v9 = v4;
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating powerUISmartChargingState from %lu->%lu", buf, 0x16u);
    }

    *(a1 + 1336) = a2;
  }

  return sub_1000088CC(v7);
}

void sub_10054B26C(uint64_t a1, void *a2)
{
  v4 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  if (!v4 || ([*(a1 + 1344) isEqualToDate:v4] & 1) == 0)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 1344);
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating powerUISmartChargingDeadline from %@->%@", buf, 0x16u);
    }

    objc_storeStrong((a1 + 1344), a2);
  }

  sub_1000088CC(v7);
}

void sub_10054B370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10054B398(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1336);
  sub_1000088CC(v4);
  return v2;
}

id sub_10054B3E0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1344);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_10054B440(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 432);
  v3 = &off_100AE0A78;
  v4 = 0;
  sub_10000AE20(a1 + 496, &v3);
  v3 = &off_100AE0A78;
  if (v4)
  {
    sub_10000C808(v4);
  }

  return sub_1000088CC(v5);
}

void sub_10054B4C0(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_10000C808(a3);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10054B4E8(unsigned __int8 *a1, unsigned int a2)
{
  v4 = *a1;
  v5 = v4 | (a1[1] << 8);
  if (v5 == 76 || v5 == 19456)
  {
    v7 = 3;
    v8 = 2;
  }

  else
  {
    if (v4 != 76)
    {
      v9 = 0;
      goto LABEL_25;
    }

    v7 = 2;
    v8 = 1;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithUnsignedShort:76];
  [v9 setObject:v10 forKey:@"kCBMsgArgVID"];

  [v9 setObject:&off_100B338E8 forKey:@"kCBMsgArgVIDSource"];
  v11 = a1[v8];
  v12 = [NSNumber numberWithUnsignedChar:a1[v8]];
  [v9 setObject:v12 forKey:@"CBCentralManagerScanOptionMatchingRuleTypeKey"];
  v13 = v8 + 1;

  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 0;
          v15 = "Warning: Received Apple EIR 3rd party advertising data - not processed";
          v16 = &v20;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

    if (a2 <= v7)
    {
      goto LABEL_25;
    }

    if (a2 == 20)
    {
      v17 = [NSData dataWithBytes:&a1[v13] length:16];
      [v9 setObject:v17 forKey:@"ServiceUUIDHash"];
    }

    else
    {
      v17 = [[NSString alloc] initWithBytes:&a1[v13] length:a2 - v7 encoding:4];
      if (v17)
      {
        [v9 setObject:v17 forKey:@"kCBMsgArgModelIdentifier"];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v11 == 3)
  {
    v17 = [NSNumber numberWithUnsignedChar:a1[v13]];
    [v9 setObject:v17 forKey:@"kCBMsgArgColorID"];
    goto LABEL_24;
  }

  if (v11 == 7)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v15 = "Warning: Received Apple EIR ProxPairing data - not processed";
      v16 = &v19;
      goto LABEL_16;
    }
  }

LABEL_25:

  return v9;
}

BOOL sub_10054B7C4(uint64_t a1, void *a2, unsigned int a3)
{
  __s2 = 0;
  v38 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v36 = 0;
  v35 = 0;
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, a1 + 432);
  v6 = sub_10000C5E0(a1 + 496);
  if (v6 == a3)
  {
    v7 = sub_10000C5F8(a1 + 496);
    if (!memcmp(a2, v7, v6))
    {
      v9 = 0;
      goto LABEL_50;
    }
  }

  if (!a3 || sub_10024AD40(a2, 255, __n, &__n[1]) || sub_10000C5E0(a1 + 496) && (v28 = sub_10000C5F8(a1 + 496), sub_10024AD40(v28, 255, &v38, &__s2)))
  {
    v8 = 0;
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  if (__n[0] != v38)
  {
    v8 = 1;
    goto LABEL_6;
  }

  v9 = memcmp(*&__n[1], __s2, __n[0]) != 0;
  v8 = 1;
LABEL_7:
  v10 = sub_10000C798();
  if (v8 & (*(*v10 + 416))(v10) & v9)
  {
    v11 = sub_10054B4E8(*&__n[1], __n[0]);
    NSLog(@"Received EIR dict: %@", v11);
    if (v11)
    {
      v12 = [v11 valueForKey:@"kCBMsgArgVID"];
      v13 = [v11 valueForKey:@"kCBMsgArgVIDSource"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v13 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v12 unsignedShortValue];
          v14 = [v13 unsignedCharValue];
          v15 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a1, __p);
            v16 = __p;
            if (v33 < 0)
            {
              v16 = __p[0];
            }

            *buf = 136447234;
            *&buf[4] = v16;
            *&buf[12] = 1024;
            *&buf[14] = v14;
            *&buf[18] = 1024;
            *v41 = v30;
            *&v41[4] = 1024;
            v42 = 0;
            v43 = 1024;
            v44 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setEIRData %{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10053D890(a1, v14, v30, 0, 0);
        }
      }

      v17 = [v11 valueForKey:@"kCBMsgArgColorID"];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_10054AE4C(a1, [v17 unsignedCharValue]);
        }
      }

      v18 = [v11 valueForKey:@"kCBMsgArgModelIdentifier"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          v20 = v19;
          sub_100007E30(&__str, [v19 UTF8String]);
          std::string::operator=((a1 + 392), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_10000C704(buf, a2, a3);
  sub_10000AE20(a1 + 496, buf);
  *buf = &off_100AE0A78;
  if (*&buf[8])
  {
    sub_10000C808(*&buf[8]);
  }

  if (a3)
  {
    v21 = sub_10024AD40(a2, 16, &v35, &v36);
    v22 = v35;
    if (!v21 && v35)
    {
      if (!v36)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm", 6726, "(uint8_t *)newDeviceIdData");
      }

      if (v35 <= 1u)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm");
        v23 = 0;
      }

      else
      {
        v23 = *v36;
        if (v35 > 3u)
        {
          v24 = *(v36 + 1);
          if (v35 > 5u)
          {
            v25 = *(v36 + 2);
            if (v35 >= 8u)
            {
              v26 = *(v36 + 3);
LABEL_49:
              sub_10053D890(a1, v23, v24, v25, v26);
              goto LABEL_50;
            }

LABEL_48:
            v26 = 0;
            goto LABEL_49;
          }

LABEL_47:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm");
          v25 = 0;
          goto LABEL_48;
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm");
      v24 = 0;
      goto LABEL_47;
    }

    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *&buf[4] = v22;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      *&buf[14] = 1024;
      *&buf[16] = v38;
      *v41 = 1024;
      *&v41[2] = __n[0];
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid newDeviceIdDataLength:%d, dataLength:%d, oldManufacturerDataLength:%d, newManufacturerDataLength:%d skipping setDeviceId", buf, 0x1Au);
    }
  }

LABEL_50:
  sub_1000088CC(v34);
  return v9;
}

BOOL sub_10054BE34(uint64_t a1, void *a2, _BYTE *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 432);
  v6 = sub_10000C5E0(a1 + 496);
  v7 = sub_10004B788(a1 + 496, a2, v6);
  *a3 = v7;
  v8 = v7 != 0;
  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_10054BEC0(uint64_t a1, _BYTE *a2)
{
  v21 = 0;
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 432);
  if (!sub_10000C5E0(a1 + 496))
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v4 = sub_10000C5F8(a1 + 496);
  if (sub_10024AD40(v4, 255, &v20, &v21) || !v21 || !v20)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Could not get the EIR manufacturer data", __p, 2u);
    }

    goto LABEL_27;
  }

  if (*v21 && v21[1] != 76)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device %{public}s is not an Apple device", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_27;
  }

  v5 = 0;
  v6 = 1;
  if (*v21 != 76)
  {
    v6 = 2;
  }

  v7 = &v21[v6];
  v21 = v7;
  v8 = *v7;
  while (v8 == 1)
  {
    v9 = v5;
    do
    {
      v5 = v9;
      v10 = v7[v9];
      v9 = (v9 + 1);
    }

    while (v10);
    v8 = 0;
    if (v20 <= v5)
    {
      goto LABEL_27;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  if (v7[v5 + 1] < 3u)
  {
    goto LABEL_27;
  }

  v12 = &v7[(v5 + 2)];
  if (*v12 != 2)
  {
    goto LABEL_27;
  }

  *a2 = v12[1];
  v13 = 1;
LABEL_28:
  sub_1000088CC(v19);
  return v13;
}

void sub_10054C0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054C108(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = 0;
  v26 = 0;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 432);
  if (!sub_10000C5E0(a1 + 496))
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v24 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136446210;
      v29 = v16;
      v17 = "No EIR for device %{public}s";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_34:
    v20 = 0;
    goto LABEL_35;
  }

  v6 = sub_10000C5F8(a1 + 496);
  if (sub_10024AD40(v6, 255, &v26, &v27) || !v27 || !v26)
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Could not get the EIR manufacturer data", __p, 2u);
    }

    goto LABEL_34;
  }

  v7 = *v27;
  if (*v27 && v7 != 76 && v27[1] != 76)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v24 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136446210;
      v29 = v21;
      v17 = "Device %{public}s is not an Apple device";
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  v8 = 0;
  v9 = v7 == 76;
  v10 = 1;
  if (!v9)
  {
    v10 = 2;
  }

  v11 = &v27[v10];
  v27 = v11;
  v12 = *v11;
  while (v12 == 1)
  {
    v13 = v8;
    do
    {
      v8 = v13;
      v14 = v11[v13];
      v13 = (v13 + 1);
    }

    while (v14);
    v12 = 0;
    if (v26 <= v8)
    {
      goto LABEL_34;
    }
  }

  if (v12 != 2)
  {
    goto LABEL_34;
  }

  v19 = v11[v8 + 1];
  if (v19 < 3 || v11[(v8 + 2)] != 2)
  {
    goto LABEL_34;
  }

  v20 = sub_100570558(&v11[(v8 + 4)], (v19 - 4), a2, a3);
LABEL_35:
  sub_1000088CC(v25);
  return v20;
}

void sub_10054C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054C3DC(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_100007F88(v40, a1);
  if (!*(a1 + 608))
  {
    a5 = 0;
    goto LABEL_81;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v33 = xmmword_1008A9EC0;
  v12 = sub_10053BFB4(a1, &v33, 0x200u, &__p);
  v13 = __p;
  if (!v12 || v35 - __p != 16)
  {
    goto LABEL_76;
  }

  if (*__p == 1)
  {
    v31 = *(__p + 2);
    if (__p != v35)
    {
      do
      {
        v32 = 0uLL;
        v32 = *v13;
        sub_10037D4F4(&v32);
        ++v13;
      }

      while (v13 != v35);
      v13 = __p;
    }

    v35 = v13;
    if (v31)
    {
      __s2 = a2;
      v14 = 0;
      if (a4)
      {
        v15 = a6 == 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = !v15 && a5 != 0;
      v29 = v17;
      while (1)
      {
        v18 = v37;
        if (v37 != v38)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v18;
            sub_10037D4F4(&v32);
            ++v18;
          }

          while (v18 != v38);
          v13 = __p;
          v38 = v37;
          if (__p != v35)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v13;
              sub_10037D4F4(&v32);
              ++v13;
            }

            while (v13 != v35);
            v13 = __p;
          }
        }

        v35 = v13;
        if (!sub_10053BFB4(a1, &v33, 2 * v14 + 513, &v37) || (sub_10053BFB4(a1, &v33, 2 * v14 + 514, &__p) & 1) == 0)
        {
          goto LABEL_74;
        }

        v20 = v37;
        v19 = v38;
        if (v38 - v37 != 16)
        {
          break;
        }

        v13 = __p;
        v21 = v35;
        if (v35 - __p != 16)
        {
          break;
        }

        if (*v37 != 4 || *__p != 4)
        {
          if (v37 != v38)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        if (*(v37 + 1) != a3)
        {
          if (v37 != v38)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        v28 = *(__p + 1);
        v27 = *(__p + 1);
        if (memcmp(*(v37 + 1), __s2, a3))
        {
          if (v20 != v19)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        if (v29)
        {
          v23 = *a5;
          v24 = v28 + v23 + 2;
          if (v24 <= a6)
          {
            *(a4 + v23) = v28;
            v25 = (*a5 + 2);
            *a5 = v25;
            memcpy((a4 + v25), v27, v28);
            v24 = *a5 + v28;
          }
        }

        else
        {
          if (!a5)
          {
            if (v20 != v19)
            {
              do
              {
                v32 = *v20;
                sub_10037D4F4(&v32);
                ++v20;
              }

              while (v20 != v38);
              v20 = v37;
              v13 = __p;
              v21 = v35;
            }

            v38 = v20;
            if (v13 == v21)
            {
              a5 = 1;
              goto LABEL_77;
            }

            do
            {
              v32 = *v13;
              sub_10037D4F4(&v32);
              ++v13;
            }

            while (v13 != v35);
            a5 = 1;
            goto LABEL_75;
          }

          v24 = v28 + *a5 + 2;
        }

        *a5 = v24;
        if (v20 != v19)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v20;
            sub_10037D4F4(&v32);
            ++v20;
          }

          while (v20 != v38);
          v20 = v37;
          v13 = __p;
          v21 = v35;
        }

        v38 = v20;
        if (v13 != v21)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
LABEL_43:
          v13 = __p;
        }

LABEL_44:
        v35 = v13;
        if (++v14 == v31)
        {
          goto LABEL_82;
        }
      }

      if (v37 != v38)
      {
        do
        {
          v32 = 0uLL;
          v32 = *v20;
          sub_10037D4F4(&v32);
          ++v20;
        }

        while (v20 != v38);
        v20 = v37;
      }

      v38 = v20;
      v13 = __p;
      if (__p == v35)
      {
        goto LABEL_44;
      }

      do
      {
        v32 = 0uLL;
        v32 = *v13;
        sub_10037D4F4(&v32);
        ++v13;
      }

      while (v13 != v35);
      goto LABEL_43;
    }

LABEL_82:
    if (a5)
    {
      a5 = *a5 != 0;
    }

    goto LABEL_77;
  }

  if (__p != v35)
  {
    do
    {
      v32 = *v13;
      sub_10037D4F4(&v32);
      ++v13;
    }

    while (v13 != v35);
LABEL_74:
    a5 = 0;
LABEL_75:
    v13 = __p;
  }

  else
  {
LABEL_76:
    a5 = 0;
  }

LABEL_77:
  if (v13)
  {
    v35 = v13;
    operator delete(v13);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

LABEL_81:
  sub_1000088CC(v40);
  return a5;
}

void sub_10054C97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_1000088CC(v23 - 96);
  _Unwind_Resume(a1);
}

void sub_10054C9F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *a2;
  if ((v6 - 6) < 2)
  {
    if (*(a2 + 1))
    {
      v9 = 0;
      do
      {
        sub_10054C9F4(a1, *(a2 + 1) + 16 * v9++, a3);
      }

      while (*(a2 + 1) > v9);
    }
  }

  else if (v6 == 3)
  {
    v10 = xmmword_1008A9ED0;
    if (sub_10037E730(a2, &v10))
    {
      *(a1 + 584) = 1;
    }
  }

  else if (v6 == 1 && *(a1 + 584) == 1)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 2);
      LODWORD(v10) = 67109376;
      DWORD1(v10) = v8;
      WORD4(v10) = 1024;
      *(&v10 + 10) = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating RFCOMM channel from %d -> %d ", &v10, 0xEu);
    }

    *(a1 + 584) = 0;
    *(a2 + 2) = a3;
  }
}

uint64_t sub_10054CB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1);
  v6 = *(a1 + 592);
  if (v6 != (a1 + 600))
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 600))
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18[0] = 0;
    v18[1] = 0;
    sub_10041F568(&v17, (v6 + 5));
    v10 = v18[0];
    if (v18[0])
    {
      v11 = v18;
      v12 = v18[0];
      do
      {
        v13 = *(v12 + 32);
        v14 = v13 >= 4;
        v15 = v13 < 4;
        if (v14)
        {
          v11 = v12;
        }

        v12 = *(v12 + 8 * v15);
      }

      while (v12);
      if (v11 != v18 && *(v11 + 8) <= 4u)
      {
        sub_10054C9F4(a1, v11 + 40, a3);
        v10 = v18[0];
      }
    }

    sub_10000CEDC(&v17, v10);
  }

LABEL_20:
  *(a1 + 584) = 0;
  sub_1000088CC(v19);
  return 0;
}

void sub_10054CC7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  sub_10000CEDC(va, v5);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10054CCA8(uint64_t a1, void *a2)
{
  v3 = a1;
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, a1);
  v4 = *(v3 + 592);
  v5 = (v3 + 600);
  if (v4 == (v3 + 600))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v25 = v3 + 600;
    v26 = v3;
    do
    {
      v38 = 0uLL;
      v38 = *v4[4];
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v7 = sub_10053BFB4(v3, &v38, 4u, &v35);
      v8 = v35;
      if (v7)
      {
        v9 = v36;
        if (v35 != v36)
        {
          do
          {
            v10 = *(v8 + 1);
            if ((v10 & 1) == 0 && *(v8 + 1))
            {
              v11 = 0;
              v12 = (v8[1] + 8);
              do
              {
                v13 = *v12;
                v12 += 8;
                if (v13 == 3)
                {
                  v33[0] = 0;
                  v33[1] = 0;
                  v34 = 0;
                  sub_100007E30(v33, "RFCOMM ServiceClass: ");
                  memset(&v32, 0, sizeof(v32));
                  if (v38.n128_u8[0] == 3)
                  {
                    if (v38.n128_u16[1] > 4u)
                    {
                      v14 = sub_100302240(v38.n128_u64[1]);
                    }

                    else
                    {
                      v14 = sub_10030253C(v38.n128_u32[2]);
                    }

                    std::string::assign(&v32, v14);
                  }

                  v29 = 0;
                  v30 = 0;
                  v31 = 0;
                  sub_100007E30(&v29, "\n");
                  __p[0] = 0;
                  __p[1] = 0;
                  v28 = 0;
                  sub_10053B318(v33, &v32.__r_.__value_.__l.__data_, &v40);
                  if (v31 >= 0)
                  {
                    v15 = &v29;
                  }

                  else
                  {
                    v15 = v29;
                  }

                  if (v31 >= 0)
                  {
                    v16 = HIBYTE(v31);
                  }

                  else
                  {
                    v16 = v30;
                  }

                  v17 = std::string::append(&v40, v15, v16);
                  v18 = *&v17->__r_.__value_.__l.__data_;
                  v28 = v17->__r_.__value_.__r.__words[2];
                  *__p = v18;
                  v17->__r_.__value_.__l.__size_ = 0;
                  v17->__r_.__value_.__r.__words[2] = 0;
                  v17->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v40.__r_.__value_.__l.__data_);
                  }

                  v19 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = __p;
                    if (v28 < 0)
                    {
                      v20 = __p[0];
                    }

                    LODWORD(v40.__r_.__value_.__l.__data_) = 136315138;
                    *(v40.__r_.__value_.__r.__words + 4) = v20;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s", &v40, 0xCu);
                  }

                  sub_10054D098(a2, &v38);
                  if (SHIBYTE(v28) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v31) < 0)
                  {
                    operator delete(v29);
                  }

                  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v32.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v34) < 0)
                  {
                    operator delete(v33[0]);
                  }

                  v6 = (v6 + 1);
                }

                v11 += 2;
              }

              while (v11 < v10);
              v9 = v36;
            }

            v8 += 2;
          }

          while (v8 != v9);
          v8 = v35;
        }

        v5 = v25;
        v3 = v26;
        if (v8 != v9)
        {
          do
          {
            v33[0] = 0;
            v33[1] = 0;
            *v33 = *v8;
            sub_10037D4F4(v33);
            v8 += 2;
          }

          while (v8 != v36);
          v8 = v35;
        }
      }

      if (v8)
      {
        v36 = v8;
        operator delete(v8);
      }

      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v23 = *v22 == v4;
          v4 = v22;
        }

        while (!v23);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }

  sub_1000088CC(v39);
  return v6;
}

__n128 sub_10054D098(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100551A0C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

id sub_10054D124(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = [*(a1 + 1368) copy];
  sub_1000088CC(v4);

  return v2;
}

id sub_10054D198(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 1368);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"kCBMsgArgPSM", v12}];
        v9 = v8;
        if (v8 && [v8 intValue] == a2)
        {
          v10 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

id sub_10054D334(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 1368);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"kCBMsgArgRFCOMMChannelID", v12}];
        v9 = v8;
        if (v8 && [v8 intValue] == a2)
        {
          v10 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

uint64_t sub_10054D4E0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 368);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054D528(uint64_t a1, _DWORD *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 368) = *a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 376))(v4, a1, a1 + 368);
  return sub_1000088CC(v6);
}

uint64_t sub_10054D5C0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v5 = 0;
  sub_100016250(&v5);
  v2 = SWORD2(v5);
  *(a1 + 376) = v5;
  *(a1 + 384) = v2;
  return sub_1000088CC(v4);
}

void sub_10054D618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054D62C(uint64_t a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 384) + (1000 * a2);
  v8[0] = v4 / 0x3E8 + *(a1 + 376);
  v8[1] = v4 % 0x3E8;
  v5 = sub_100306E3C(v8);
  sub_1000088CC(v7);
  return !v5;
}

void sub_10054D6C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054D6D8(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1434) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054D720(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  ++*(a1 + 1439);
  return sub_1000088CC(v3);
}

uint64_t sub_10054D76C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 1439) = 0;
  return sub_1000088CC(v3);
}

uint64_t sub_10054D7B0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1439);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054D7F8(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v2 = *(a1 + 1440);
  if (v2 || (v3 = sub_100017F4C(), v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8)), *(a1 + 1440) = v4, handler[0] = _NSConcreteStackBlock, handler[1] = 3221225472, handler[2] = sub_10054D9E8, handler[3] = &unk_100ADF8F8, handler[4] = a1, dispatch_source_set_event_handler(v4, handler), (v2 = *(a1 + 1440)) != 0))
  {
    ++*(a1 + 1464);
    ++*(a1 + 1448);
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v10 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 67109378;
      v14 = 300;
      v15 = 2082;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Start Scan Core Page Scan backoff timer of %d seconds for device %{public}s", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 1440);
    }

    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v2, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(a1 + 1440));
  }

  return sub_1000088CC(v12);
}

void sub_10054D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054D9E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(v1 + 1472);
  return sub_10054D9FC(v1);
}

uint64_t sub_10054D9FC(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1);
  *(a1 + 1439) = 0;
  sub_1000088CC(__p);
  v2 = *(a1 + 1440);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping Scan Core Page Scan backoff timer for device %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 1440);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 1440));
    *(a1 + 1440) = 0;
  }

  return sub_1000088CC(v8);
}

void sub_10054DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054DB4C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1440) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054DB9C(uint64_t a1, int a2)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  if (qword_100B50910 != -1)
  {
    sub_1008406F4();
  }

  sub_1005BBEEC(off_100B50908, a2);
  return sub_1000088CC(v4);
}

uint64_t sub_10054DC18(uint64_t a1, unsigned int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1);
  v4 = *(a1 + 1488);
  if (v4 || (v5 = sub_100017F4C(), v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8)), *(a1 + 1488) = v6, handler[0] = _NSConcreteStackBlock, handler[1] = 3221225472, handler[2] = sub_10054DDE4, handler[3] = &unk_100ADF8F8, handler[4] = a1, dispatch_source_set_event_handler(v6, handler), (v4 = *(a1 + 1488)) != 0))
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting connection request watchdog timer for %{public}s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(a1 + 1488);
    }

    v9 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v4, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(a1 + 1488));
  }

  return sub_1000088CC(v14);
}

void sub_10054DDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054DDEC(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v3 = v7 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stalled connection request for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  dispatch_release(*(a1 + 1488));
  *(a1 + 1488) = 0;
  sub_10000801C(v8);
  if (qword_100B50AC0 != -1)
  {
    sub_10084123C();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10054E14C;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_100592E70(off_100B50AB8, v5);
  return sub_1000088CC(v8);
}

void sub_10054DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054DF84(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v2 = *(a1 + 1488);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping connection request watchdog timer for %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 1488);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 1488));
    *(a1 + 1488) = 0;
  }

  return sub_1000088CC(v8);
}

void sub_10054E098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054E0B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1488) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E104(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1528);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E14C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B50AC0 != -1)
  {
    sub_100841264();
  }

  v2 = off_100B50AB8;

  return sub_100590DE8(v2, v1);
}

uint64_t sub_10054E1A0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1496);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E1E8(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1497) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054E230(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1497);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E278(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting device %{public}s ", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  if (*(a1 + 263) < 0)
  {
    **(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  else
  {
    *(a1 + 240) = 0;
    *(a1 + 263) = 0;
  }

  if (*(a1 + 303) < 0)
  {
    **(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else
  {
    *(a1 + 280) = 0;
    *(a1 + 303) = 0;
  }

  *(a1 + 312) = 0u;
  sub_10000CEDC(a1 + 328, *(a1 + 336));
  *(a1 + 328) = a1 + 336;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 760) = *(a1 + 752);
  LODWORD(__p[0]) = -1;
  sub_10036F480((a1 + 752), __p);
  sub_100536730(a1);
  *(a1 + 650) = 16842752;
  *(a1 + 654) = 0;
  *(a1 + 751) = 0;
  *(a1 + 1380) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  *(a1 + 1420) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1415) = 0;
  sub_10054B440(a1);
  sub_10053F420(a1);
  sub_10053CB68(a1);
  *(a1 + 796) = 0xFFFF00000000;
  *(a1 + 804) = 1;
  *(a1 + 808) = xmmword_1008A9E90;
  *(a1 + 828) = xmmword_1008A9E80;
  *(a1 + 844) = 0;
  *(a1 + 848) = 2;
  *(a1 + 850) = 0;
  *(a1 + 852) = 80;
  sub_100548B84(a1);
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 876) = 0;
  *(a1 + 868) = 0;
  *(a1 + 892) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 940) = xmmword_1008A49A0;
  *(a1 + 956) = 0;
  sub_1000E3B80((a1 + 1232));
  *(a1 + 1498) = 0;
  *(a1 + 424) = 0;
  *(a1 + 1180) = -1082130432;
  *(a1 + 1192) = *(a1 + 1184);
  *(a1 + 1208) = 0;
  *(a1 + 1049) = 1;
  *(a1 + 1051) = 0;
  *(a1 + 1053) = -1;
  *(a1 + 1056) = 0;
  *(a1 + 1428) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 660) = 1;
  *(a1 + 649) = 1;
  *(a1 + 1176) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1020) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 748) = 0;
  *(a1 + 750) = 0;
  *(a1 + 1433) = 0;
  *(a1 + 704) = 0;
  *(a1 + 694) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 1036) = 0;
  *(a1 + 1044) = 0;
  *(a1 + 1212) = 0u;
  sub_10054D9FC(a1);
  *(a1 + 1448) = 0;
  *(a1 + 1499) = 0;
  *(a1 + 1436) = 0;
  *(a1 + 1572) = 0;
  *(a1 + 576) = 0;
  *(a1 + 1484) = 0;
  *(a1 + 1452) = 0u;
  *(a1 + 1468) = 0u;
  if (*(a1 + 1567) < 0)
  {
    **(a1 + 1544) = 0;
    *(a1 + 1552) = 0;
  }

  else
  {
    *(a1 + 1544) = 0;
    *(a1 + 1567) = 0;
  }

  return sub_1000088CC(v7);
}

void sub_10054E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054E600(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 240);
    if (*(a1 + 263) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 128), buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v4 = buf;
    }

    else
    {
      v4 = *buf;
    }

    *v60 = 136446210;
    *&v60[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Address: %{public}s", v60, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v2 = qword_100BCE8D8;
  }

  v5 = a1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10056CB30((a1 + 176));
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Type: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
    v5 = a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (v5 + 200);
    if (*(v5 + 223) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Default name: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v5 + 152);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    RSSI: %d", buf, 8u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v5 + 1176);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \tderivedFromLE: %d", buf, 8u);
    v2 = qword_100BCE8D8;
  }

  if (*(v5 + 512) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_10051A3CC((v5 + 512));
    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Accessory state: %{public}s", buf, 0xCu);
    v2 = qword_100BCE8D8;
    v5 = a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Supported services:", buf, 2u);
  }

  v11 = *(v5 + 328);
  v12 = (v5 + 336);
  if (v11 != (v5 + 336))
  {
    do
    {
      v13 = *(v11 + 8);
      *v60 = *(v11 + 7);
      if (v13 >= 2)
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_1005948F8(v60);
          if (v13 == 3)
          {
            v16 = "- Likely";
          }

          else
          {
            v16 = "";
          }

          *buf = 136446466;
          *&buf[4] = v15;
          if (v13 == 2)
          {
            v16 = "- Unlikely";
          }

          *&buf[12] = 2082;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s %{public}s", buf, 0x16u);
        }
      }

      v17 = v11[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1;
    if (*(a1 + 650))
    {
      v22 = "Yes";
    }

    else
    {
      v22 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:    Supports phonebook sync: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  else
  {
    v21 = a1;
  }

  if (*(v21 + 650) == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 651))
      {
        v23 = "Yes";
      }

      else
      {
        v23 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync enabled: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 652))
      {
        v24 = "Yes";
      }

      else
      {
        v24 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync recents: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 653))
      {
        v25 = "Yes";
      }

      else
      {
        v25 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync favorites: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 654))
      {
        v26 = "Yes";
      }

      else
      {
        v26 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync user permission: %{public}s", buf, 0xCu);
    }

    *&v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    *__p = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v140 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_100007AD0(buf);
    for (i = *(a1 + 752); i != *(a1 + 760); i += 4)
    {
      v28 = std::ostream::operator<<();
      sub_100007774(v28);
    }

    v29 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v30 = v60[23] >= 0 ? v60 : *v60;
      *v158 = 136315138;
      v159 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump:       Sync group ID(s): %s", v158, 0xCu);
      if ((v60[23] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }
    }

    *&buf[16] = v31;
    if (SHIBYTE(v144) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(&v140);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v20 = qword_100BCE8D8;
    v21 = a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 655))
    {
      v32 = "Yes";
    }

    else
    {
      v32 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tAllow sco for turn by turn enabled: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007E30(buf, off_100AFC518[*(v21 + 1572)]);
    if ((buf[23] & 0x80u) == 0)
    {
      v33 = buf;
    }

    else
    {
      v33 = *buf;
    }

    *v60 = 136446210;
    *&v60[4] = v33;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tCarPlay type: %{public}s", v60, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v20 = qword_100BCE8D8;
    v21 = a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 1045))
    {
      v34 = "Yes";
    }

    else
    {
      v34 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tTemporary Managed Pairing Mode: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 1016))
    {
      v35 = "is";
    }

    else
    {
      v35 = "is not";
    }

    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:  Device %s guest device", buf, 0xCu);
  }

  if (*(v21 + 1016) == 1)
  {
    v36 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(v21 + 1020);
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "statedump:  Guest device last seen %d", buf, 8u);
    }
  }

  sub_10053AD54(v21);
  v38 = sub_1000BE4B4();
  result = (*(*v38 + 816))(v38, a1);
  if (*(a1 + 748) == 1)
  {
    *v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    *__p = 0u;
    v140 = 0u;
    v141 = 0u;
    memset(buf, 0, sizeof(buf));
    v40 = sub_1000BE4B4();
    if ((*(*v40 + 80))(v40, a1, buf, 80))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100841278();
      }
    }

    else if (HIDWORD(v141))
    {
      v41 = sub_10000E92C();
      if ((*(*v41 + 160))(v41))
      {
        sub_1000DEEA4(a1, v60);
        if (SBYTE7(v157) < 0)
        {
          operator delete(v156[0]);
        }

        *v156 = *v60;
        *&v157 = *&v60[16];
      }

      else
      {
        v42 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name in statedump. Release version with no profile installed.", v60, 2u);
        }
      }

      v43 = sub_1000BE4B4();
      (*(*v43 + 96))(v43, a1);
      v44 = sub_1000BE4B4();
      (*(*v44 + 112))(v44, a1, &v147 + 8);
      v45 = sub_1000BE4B4();
      (*(*v45 + 128))(v45, a1, &v144 + 8);
      v46 = sub_1000BE4B4();
      (*(*v46 + 144))(v46, a1, &v146);
      v47 = sub_1000BE4B4();
      (*(*v47 + 160))(v47, a1, &v149);
      v48 = sub_1000BE4B4();
      (*(*v48 + 176))(v48, a1, &v150 + 8);
      v49 = sub_1000BE4B4();
      (*(*v49 + 192))(v49, a1, &v152);
      v50 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 68157954;
        *&v60[4] = 152;
        *&v60[8] = 2098;
        *&v60[10] = buf;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Identification - raw dump {%{public}.*P}", v60, 0x12u);
        v50 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        if ((SBYTE7(v157) & 0x80u) == 0)
        {
          v51 = v156;
        }

        else
        {
          v51 = v156[0];
        }

        if ((SBYTE7(v144) & 0x80u) == 0)
        {
          v52 = __p;
        }

        else
        {
          v52 = __p[0];
        }

        if (v148 >= 0)
        {
          v53 = &v147 + 8;
        }

        else
        {
          v53 = *(&v147 + 1);
        }

        v54 = *(&v144 + 1);
        if (v145 >= 0)
        {
          v54 = &v144 + 8;
        }

        if ((SBYTE7(v147) & 0x80u) == 0)
        {
          v55 = &v146;
        }

        else
        {
          v55 = v146;
        }

        if ((SBYTE7(v150) & 0x80u) == 0)
        {
          v56 = &v149;
        }

        else
        {
          v56 = v149;
        }

        if (v151 >= 0)
        {
          v57 = &v150 + 8;
        }

        else
        {
          v57 = *(&v150 + 1);
        }

        v58 = v152;
        if ((SBYTE7(v153) & 0x80u) == 0)
        {
          v58 = &v152;
        }

        *&v60[4] = 20;
        *&v60[10] = a1 + 708;
        *&v60[20] = 3;
        v62 = buf;
        v64 = v51;
        v66 = *&buf[4];
        v68 = buf[8];
        v70 = *&buf[6];
        v74 = &v142;
        *&v60[18] = 1042;
        v71 = 1042;
        v75 = 1042;
        v72 = 8;
        v76 = 8;
        *&v60[8] = 2098;
        v61 = 2098;
        v73 = 2098;
        v77 = 2098;
        v78 = &v142 + 8;
        v94 = *&buf[22];
        v98 = *&buf[26];
        v102 = *&buf[30];
        v106 = WORD1(v140);
        v110 = WORD3(v140);
        v114 = HIDWORD(v140);
        v118 = DWORD1(v141);
        v122 = buf[3];
        v124 = v52;
        v126 = v53;
        v130 = v55;
        v132 = v56;
        v134 = v57;
        v138 = BYTE8(v157);
        v80 = HIDWORD(v141);
        v82 = *&buf[10];
        v84 = *&buf[12];
        v86 = *&buf[14];
        v88 = *&buf[16];
        v90 = *&buf[18];
        v92 = *&buf[20];
        v96 = *&buf[24];
        v100 = *&buf[28];
        v104 = v140;
        v108 = WORD2(v140);
        v112 = DWORD2(v140);
        v116 = v141;
        v120 = DWORD2(v141);
        v128 = v54;
        v63 = 2082;
        v123 = 2082;
        v125 = 2082;
        v127 = 2082;
        v129 = 2082;
        v131 = 2082;
        v133 = 2082;
        v135 = 2082;
        v136 = v58;
        v65 = 1024;
        v67 = 1024;
        v69 = 1024;
        v79 = 1024;
        v81 = 1024;
        v83 = 1024;
        v85 = 1024;
        v87 = 1024;
        v89 = 1024;
        v91 = 1024;
        v93 = 1024;
        v95 = 1024;
        v97 = 1024;
        v99 = 1024;
        v101 = 1024;
        v103 = 1024;
        v105 = 1024;
        v107 = 1024;
        v109 = 1024;
        v111 = 1024;
        v113 = 1024;
        v115 = 1024;
        v117 = 1024;
        v119 = 1024;
        v121 = 1024;
        v137 = 1024;
        *v60 = 68299266;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "statedump: Identification - metric dump {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", v60, 0x12Eu);
      }
    }

    return sub_1000E3D14(buf);
  }

  return result;
}

uint64_t sub_10054F768(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  LODWORD(a1) = sub_10024132C(a1 + 128);
  sub_10002249C(&v3);
  return a1 ^ 1;
}

uint64_t sub_10054F7C8(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 1568) != a2)
    {
      v8[0] = 0;
      v8[1] = 0;
      v4 = sub_100007F88(v8, result);
      v3[98].n128_u16[0] = v2;
      sub_10000801C(v4);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, v3, 19);
      v5 = sub_100017F4C();
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10054F8BC;
      v6[3] = &unk_100AEB940;
      v6[4] = v3;
      v7 = v2;
      sub_10000CA94(v5, v6);
      return sub_1000088CC(v8);
    }
  }

  return result;
}

uint64_t sub_10054F8BC()
{
  v0 = *(*sub_1000154A8() + 72);

  return v0();
}

uint64_t sub_10054F920(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (*(a1 + 1125) == 1)
    {
      return (*(a1 + 1158) >> 5) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10054F974(_DWORD *a1)
{
  v1 = a1[282];
  if (v1 == 2)
  {
    v2 = 1452;
  }

  else
  {
    if (v1 != 1)
    {
      return 0;
    }

    v2 = 76;
  }

  if (a1[283] == v2)
  {
    return a1[284] == 8223;
  }

  return 0;
}

uint64_t sub_10054F9BC(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  if (*(a1 + 1435) != a2)
  {
    *(a1 + 1435) = a2;
    sub_10000801C(v4);
    v5 = sub_100017F4C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10054FA80;
    v7[3] = &unk_100AE15D8;
    v7[4] = a1;
    v8 = a2;
    sub_10000CA94(v5, v7);
  }

  return sub_1000088CC(v9);
}

uint64_t sub_10054FA80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  sub_10056B15C(off_100B508E8, v1, 21);
  v2 = *(*sub_1000154A8() + 80);

  return v2();
}

uint64_t sub_10054FB14(__n128 *a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[89].n128_u8[13] != a2)
  {
    a1[89].n128_u8[13] = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 20);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10054FBB0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1576);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054FBF8(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  a1[98].n128_u32[2] = a2;
  sub_10000801C(v5);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 23);
  return sub_1000088CC(v5);
}

uint64_t sub_10054FC88(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1580);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054FCD0(__n128 *a1, unsigned __int32 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  a1[98].n128_u32[3] = a2;
  sub_10000801C(v5);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 22);
  return sub_1000088CC(v5);
}

uint64_t sub_10054FD60(uint64_t a1)
{
  v17 = 0;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  *v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  sub_1000DE474(&v9 + 1);
  BYTE2(v10[0]) = 0;
  BYTE4(v10[0]) = 0;
  BYTE2(v12[0]) = 0;
  BYTE4(v12[0]) = 0;
  DWORD1(v15[1]) = 0;
  v11 = 0uLL;
  v10[1] = 0;
  LOBYTE(v12[0]) = 0;
  v13 = 0uLL;
  v12[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v15, 0, 19);
  __p[1] = 0;
  BYTE8(v15[1]) = 1;
  *(&v15[1] + 14) = 0;
  *(&v15[1] + 9) = 0;
  v16 = 0uLL;
  *(&v15[2] + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 2) = 0;
  v2 = sub_100536A18(a1, &v9);
  v3 = BYTE6(v17);
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v4 = *(a1 + 176);
  sub_1000088CC(v8);
  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  v6 = v4 == 17 || v4 == 22;
  nullsub_21(&v9 + 1);
  return v6 & (v2 & v3 ^ 1u);
}

_DWORD *sub_10054FED8(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a2 = result[273];
  *a3 = result[274];
  *a4 = result[275];
  *a5 = result[276];
  return result;
}

__n128 sub_10054FEFC(uint64_t a1)
{
  *(a1 + 1120) = *(a1 + 1156);
  result = *(a1 + 1124);
  v2 = *(a1 + 1140);
  *(a1 + 1088) = result;
  *(a1 + 1104) = v2;
  return result;
}

uint64_t sub_10054FF18(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    sub_100007E30(__p, off_100AFC518[a2]);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Set CarPlayType : %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 1572) != a2)
  {
    *(a1 + 1572) = a2;
  }

  v6 = sub_1000BE4B4();
  (*(*v6 + 1520))(v6, a1, *(a1 + 1572));
  return sub_1000088CC(v10);
}

void sub_100550060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100550080(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "blockIncomingConnections %d", v8, 8u);
  }

  LOBYTE(v8[0]) = 0;
  sub_1000216B4(v8);
  if (a2)
  {
    v5 = sub_10023E518(a1 + 128);
  }

  else
  {
    v5 = sub_10023E634(a1 + 128);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008412B4();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  sub_10002249C(v8);
  return v6;
}

uint64_t sub_1005501A8(__n128 *a1, unsigned __int8 a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  a1[98].n128_u8[2] = a2;
  if (a3)
  {
    sub_100550250(a1);
  }

  sub_10000801C(v7);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 25);
  return sub_1000088CC(v7);
}

void sub_100550250(uint64_t a1)
{
  v11 = time(0);
  sub_100551C48((a1 + 1584), &v11);
  if (*(a1 + 1624))
  {
    while (1)
    {
      v2 = difftime(v11, *(*(*(a1 + 1592) + ((*(a1 + 1616) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 1616) & 0x1FFLL)));
      v3 = *(a1 + 1624);
      if (v2 < 3600.0)
      {
        break;
      }

      v4 = *(a1 + 1616);
      *(a1 + 1624) = v3 - 1;
      *(a1 + 1616) = v4 + 1;
      sub_100374F94(a1 + 1584, 1);
      if (!*(a1 + 1624))
      {
        return;
      }
    }

    if (v3 >= 0xB)
    {
      v5 = *(a1 + 1124);
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
      if (v5 == 1)
      {
        if (v6)
        {
          sub_100841394(a1);
        }
      }

      else if (v6)
      {
        sub_1008412F0(a1);
      }

      v7 = *(a1 + 1584);
      *(a1 + 1584) = 0u;
      v8 = *(a1 + 1600);
      *(a1 + 1600) = 0u;
      v10[0] = v7;
      v10[1] = v8;
      v9 = *(a1 + 1616);
      *(a1 + 1616) = 0u;
      v10[2] = v9;
      sub_1003617DC(v10);
    }
  }
}