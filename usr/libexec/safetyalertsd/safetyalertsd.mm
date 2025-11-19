void sub_100001C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100097AD4;
    v8[3] = &unk_100139F08;
    v10 = v5;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bm,setupMonitoringEvent,event nil}", buf, 0x12u);
    }
  }
}

void sub_100001D80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007EBBC;
    v8[3] = &unk_100139F08;
    v10 = v5;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,setupMonitoringEvent,event nil}", buf, 0x12u);
    }
  }
}

void sub_100001EB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001F40;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_100001F40(v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100001F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 80);
    if (*(v1 + 103) < 0)
    {
      v3 = *v3;
    }

    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chmgr,states, fLocalAreaChannel:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  sub_10000204C(v1 + 128);
  (*(**(v1 + 72) + 56))(*(v1 + 72));
  return sub_100002C6C(v1);
}

void sub_10000204C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100002DB0();
    if (*(v3 + 115))
    {
      v4 = *(v3 + 114);
    }

    else
    {
      v4 = 0;
    }

    v5 = "false";
    if (*(a1 + 41) == 1)
    {
      if (*(a1 + 40))
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }
    }

    else
    {
      v6 = "notSet";
    }

    if (*(a1 + 43) == 1)
    {
      if (*(a1 + 42))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }
    }

    else
    {
      v7 = "notSet";
    }

    if (*(a1 + 9) == 1)
    {
      if (*(a1 + 8))
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }
    }

    else
    {
      v8 = "notSet";
    }

    if (*(a1 + 45) == 1)
    {
      if (*(a1 + 44))
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }
    }

    else
    {
      v9 = "notSet";
    }

    if (*(a1 + 47) == 1)
    {
      if (*(a1 + 46))
      {
        v10 = "true";
      }

      else
      {
        v10 = "false";
      }
    }

    else
    {
      v10 = "notSet";
    }

    if (*(a1 + 49) == 1)
    {
      if (*(a1 + 48))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }
    }

    else
    {
      v11 = "notSet";
    }

    if (*(a1 + 51) == 1)
    {
      if (*(a1 + 50))
      {
        v5 = "true";
      }
    }

    else
    {
      v5 = "notSet";
    }

    v12 = *(a1 + 72);
    v13[0] = 68291331;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = v4;
    v18 = 2082;
    v19 = v6;
    v20 = 2082;
    v21 = v7;
    v22 = 2082;
    v23 = v8;
    v24 = 2082;
    v25 = v9;
    v26 = 2082;
    v27 = v10;
    v28 = 2082;
    v29 = v11;
    v30 = 2082;
    v31 = v5;
    v32 = 2049;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,states, countrySupported:%{public}hhd, lsOn:%{public, location:escape_only}s, telephony:%{public, location:escape_only}s, locAvailable:%{public, location:escape_only}s, fIsAllowedByNetwork:%{public, location:escape_only}s, channelMapAvailable:%{public, location:escape_only}s, isCompanionNearby:%{public, location:escape_only}s, isParticipating:%{public, location:escape_only}s, channelListSize:%{private}lu}", v13, 0x68u);
  }
}

void sub_100002298(uint64_t a1, io_registry_entry_t a2, int a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SABatteryServiceProd,onSABatteryStateChange}", &v8, 0x12u);
  }

  if (a1)
  {
    if (a3 == -536723200)
    {
      sub_1000023E8(a1, a2);
    }
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,pthis is null}", &v8, 0x12u);
    }
  }
}

void sub_1000023E8(uint64_t a1, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"CurrentCapacity", kCFAllocatorDefault, 0);
  v5 = IORegistryEntryCreateCFProperty(entry, @"MaxCapacity", kCFAllocatorDefault, 0);
  v6 = v5;
  if (CFProperty)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = [v5 intValue];
    v10 = [CFProperty intValue];
    v11 = v10;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 100;
    }

    v13 = fmin(v10 * 100.0 / v12, 100.0);
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = IORegistryEntryCreateCFProperty(entry, @"ExternalConnected", kCFAllocatorDefault, 0);
    v16 = v15;
    if (!v15)
    {
      v22 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v37 = 2082;
        *v38 = "";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,connected nil}", buf, 0x12u);
      }

      goto LABEL_52;
    }

    v17 = [v15 BOOLValue];
    v18 = IORegistryEntryCreateCFProperty(entry, @"AdapterDetails", kCFAllocatorDefault, 0);
    v19 = SALogObjectGeneral;
    v33 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v37 = 2082;
        *v38 = "";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,adapterDetails nil}", buf, 0x12u);
      }

      goto LABEL_51;
    }

    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v37 = 2082;
      *v38 = "";
      *&v38[8] = 2113;
      *v39 = v33;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SABatteryServiceProd,adapterDetails, adapterDetails:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v20 = [v33 objectForKeyedSubscript:@"Description"];
    v32 = v20;
    if (v20)
    {
      if ([v20 hasPrefix:@"batt"])
      {
        v21 = 1;
      }

      else if ([v32 hasPrefix:@"usb"])
      {
        v21 = 2;
      }

      else if ([v32 hasPrefix:@"external"])
      {
        v21 = 3;
      }

      else if ([v32 hasSuffix:@"arcas"])
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v30 = v21;
    }

    else
    {
      v30 = 0;
    }

    v31 = [v33 objectForKeyedSubscript:@"FamilyCode"];
    if (v31)
    {
      v29 = 0;
    }

    else
    {
      v29 = [0 intValue];
    }

    v23 = IORegistryEntryCreateCFProperty(entry, @"FullyCharged", kCFAllocatorDefault, 0);
    v24 = v23;
    if (v23)
    {
      v25 = [v23 BOOLValue];
    }

    else
    {
      v26 = SALogObjectGeneral;
      v25 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v37 = 2082;
        *v38 = "";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,cannot find charged status\n}", buf, 0x12u);
        v25 = 0;
      }
    }

    if (*(a1 + 160) == v17)
    {
      v27 = SALogObjectGeneral;
      if (vabdd_f64(*(a1 + 168), v14) <= 10.0)
      {
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68290562;
          *&buf[4] = 0;
          v37 = 2082;
          *v38 = "";
          *&v38[8] = 1026;
          *v39 = v14;
          *&v39[4] = 1026;
          *&v39[6] = v25;
          v40 = 1026;
          v41 = v17;
          v42 = 1026;
          v43 = 0;
          v44 = 1026;
          v45 = v11;
          v46 = 1026;
          v47 = v12;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SABatteryServiceProd,batteryInfo, level:%{public}d, fullyCharged:%{public}hhd, connected:%{public}hhd, wasConnected:%{public}hhd, currentCapacity:%{public}d, maximumCapacity:%{public}d}", buf, 0x36u);
        }

LABEL_50:

LABEL_51:
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {
      v27 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290562;
      *&buf[4] = 0;
      v37 = 2082;
      *v38 = "";
      *&v38[8] = 1026;
      *v39 = v14;
      *&v39[4] = 1026;
      *&v39[6] = v25;
      v40 = 1026;
      v41 = v17;
      v42 = 1026;
      v43 = 0;
      v44 = 1026;
      v45 = v11;
      v46 = 1026;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceProd,batteryInfo, level:%{public}d, fullyCharged:%{public}hhd, connected:%{public}hhd, wasConnected:%{public}hhd, currentCapacity:%{public}d, maximumCapacity:%{public}d}", buf, 0x36u);
    }

    *(a1 + 160) = v17;
    *(a1 + 168) = v14;
    v28 = sub_100002DB0();
    *(v28 + 38) = v17 ^ 1;
    *(v28 + 20) = v14;
    *(v28 + 168) = v25;
    *(v28 + 169) = v17;
    *(v28 + 43) = v30;
    *(v28 + 176) = 0;
    *(v28 + 179) = v35;
    *(v28 + 177) = v34;
    *(v28 + 45) = v29;
    if (*(a1 + 32))
    {
      *buf = v14;
      LOBYTE(v37) = v25;
      HIBYTE(v37) = v17;
      *&v38[2] = v30;
      v38[6] = 0;
      *&v38[7] = v34;
      v38[9] = v35;
      *v39 = v29;
      sub_100035080(a1 + 8, v17 ^ 1);
    }

    goto LABEL_50;
  }

  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v37 = 2082;
    *v38 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SABatteryServiceProd,cannot find current or maximum capacity}", buf, 0x12u);
  }

LABEL_53:
}

void sub_100002ADC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 81);
    *buf = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    LODWORD(v14[0]) = v3;
    WORD2(v14[0]) = 1026;
    *(v14 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,states, fDidReceivePublicToken:%{public}hhd, fDidReceiveToken:%{public}hhd}", buf, 0x1Eu);
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v5 != v6)
  {
    v7 = SALogObjectGeneral;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5;
        if (*(v5 + 23) < 0)
        {
          v8 = *v5;
        }

        *buf = 68289283;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2081;
        v14[0] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,channels, channel:%{private, location:escape_only}s}", buf, 0x1Cu);
        v7 = SALogObjectGeneral;
      }

      v5 += 3;
    }

    while (v5 != v6);
  }
}

void sub_100002C6C(NSObject **a1)
{
  v2 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 180000000000);
  v3 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001EB8;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_after(v2, v3, block);
}

void sub_100002CFC()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#blecore,onWifiStatusChanged}", v1, 0x12u);
  }
}

__int128 *sub_100002DB0()
{
  if ((atomic_load_explicit(qword_10014ACC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_10014ACC0))
  {
    sub_10007A43C();
    __cxa_atexit(sub_10007A4B4, &xmmword_10014ACD0, &_mh_execute_header);
    __cxa_guard_release(qword_10014ACC0);
  }

  return &xmmword_10014ACD0;
}

void sub_100002E2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v9 = [a3 UTF8String];
    }

    else
    {
      v9 = "Unknown__";
    }

    v13 = 68289539;
    *v14 = 2082;
    *&v14[2] = "";
    *&v14[10] = 2081;
    *&v14[12] = v9;
    *&v14[20] = 2113;
    *&v14[22] = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onKeybagLockStatus, name:%{private, location:escape_only}s, userInfo:%{private, location:escape_only}@}", &v13, 0x26u);
  }

  if (a2)
  {
    v10 = sub_100003014();
    v11 = *(a2 + 72);
    v13 = _NSConcreteStackBlock;
    *v14 = 3221225472;
    *&v14[8] = sub_10000313C;
    *&v14[16] = &unk_10013F780;
    *&v14[24] = a2;
    v15 = v10;
    dispatch_async(v11, &v13);
  }

  else
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289026;
      *v14 = 2082;
      *&v14[2] = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,invalidObjectOnLockStatus}", &v13, 0x12u);
    }
  }
}

BOOL sub_100003014()
{
  v0 = MKBGetDeviceLockState();
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289283;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 1025;
    v7 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,isLockedCheck, lockState:%{private}d}", v3, 0x18u);
  }

  return v0 != 0;
}

uint64_t sub_1000030E8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10000313C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000031D8;
  v4[3] = &unk_10013F780;
  v4[4] = v2;
  v5 = *(a1 + 40);
  sub_1000031D8(v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1000031D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v4 = "locked";
    }

    else
    {
      v4 = "unlocked";
    }

    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onLockStatus, status:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  *(sub_100002DB0() + 71) = *(a1 + 40) | 0x100;
  return sub_1000030E8(v2 + 40, *(a1 + 40));
}

void *sub_100003410(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000532C(v8, a3);
  *a1 = off_100138DC0;
  sub_1000052AC(v8);
  *a1 = off_100138CC0;
  v6 = v5;
  a1[1] = v6;
  sub_10000532C((a1 + 2), a3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;

  return a1;
}

void sub_100003514(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v6 != v7)
    {
      if (v4 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      while (1)
      {
        v9 = *(v6 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v6 + 8);
        }

        if (v9 == v5)
        {
          v11 = v10 >= 0 ? v6 : *v6;
          if (!memcmp(v11, v8, v5))
          {
            break;
          }
        }

        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_29;
        }
      }
    }

    if (v6 != v7)
    {
      v13 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a2;
        if (v4 >= 0)
        {
          v14 = a2;
        }

        *buf = 68289283;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,notPulling,noInstruction, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
        LOBYTE(v4) = *(a2 + 23);
      }

      if ((v4 & 0x80) != 0)
      {
        sub_100004CEC(&v59, *a2, a2[1]);
      }

      else
      {
        v59 = *a2;
        v60 = a2[2];
      }

      sub_100003E84(a1, 202, &v59, 0.0);
      if (SHIBYTE(v60) < 0)
      {
        v23 = v59;
        goto LABEL_119;
      }

      return;
    }

LABEL_29:
    v15 = sub_100042820();
    if (*(v15 + 239) < 0)
    {
      sub_100004CEC(&__p, v15[27], v15[28]);
    }

    else
    {
      __p = *(v15 + 27);
      v58 = v15[29];
    }

    v16 = HIBYTE(v58);
    LOBYTE(v17) = HIBYTE(v58);
    v18 = *(&__p + 1);
    if (v58 >= 0)
    {
      v19 = HIBYTE(v58);
    }

    else
    {
      v19 = *(&__p + 1);
    }

    if (!v19)
    {
      v20 = sub_10008E020();
      sub_10008F300(v20, buf);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p);
      }

      v58 = *&buf[16];
      __p = *buf;
      v16 = HIBYTE(*&buf[16]);
      v18 = *&buf[8];
      v17 = HIBYTE(*&buf[16]);
    }

    if ((v17 & 0x80u) == 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    if (!v21)
    {
      v22 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,pullServerUnknown}", buf, 0x12u);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100004CEC(&v55, *a2, a2[1]);
      }

      else
      {
        v55 = *a2;
        v56 = a2[2];
      }

      sub_100003E84(a1, -4, &v55, -1.0);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

      v42 = v55;
      goto LABEL_116;
    }

    if (*(a2 + 23) < 0)
    {
      sub_100004CEC(buf, *a2, a2[1]);
      v16 = HIBYTE(v58);
      v18 = *(&__p + 1);
      LOBYTE(v17) = HIBYTE(v58);
    }

    else
    {
      *buf = *a2;
      *&buf[16] = a2[2];
    }

    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v25 = v16;
    }

    else
    {
      v25 = v18;
    }

    v26 = std::string::insert(buf, 0, p_p, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v54 = v26->__r_.__value_.__r.__words[2];
    v53 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v28 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      v30 = &v53;
      if (v54 < 0)
      {
        v30 = v53;
      }

      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v29;
      v64 = 2081;
      v65 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#pullServiceProd,request, hash:%{private, location:escape_only}s, url:%{private, location:escape_only}s}", buf, 0x26u);
    }

    if (v54 >= 0)
    {
      v31 = &v53;
    }

    else
    {
      v31 = v53;
    }

    v32 = [NSString stringWithUTF8String:v31];
    v33 = [NSURL URLWithString:v32];

    if (!v33)
    {
      v38 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v39 = a2;
        }

        else
        {
          v39 = *a2;
        }

        *buf = 68289283;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,requestNotTriggered,urlUnavailable, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100004CEC(v51, *a2, a2[1]);
      }

      else
      {
        *v51 = *a2;
        v52 = a2[2];
      }

      sub_100003E84(a1, -4, v51, -1.0);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51[0]);
      }

      goto LABEL_114;
    }

    v34 = [[NSMutableURLRequest alloc] initWithURL:v33];
    v35 = v34;
    if (v34)
    {
      [v34 setHTTPMethod:@"GET"];
      [v35 setAllowsCellularAccess:1];
      Current = CFAbsoluteTimeGetCurrent();
      if (Current < 0.0)
      {
        v37 = -1.0;
      }

      else
      {
        v37 = Current;
      }

      if (*(a2 + 23) < 0)
      {
        sub_100004CEC(buf, *a2, a2[1]);
      }

      else
      {
        *buf = *a2;
        *&buf[16] = a2[2];
      }

      v43 = +[NSURLSession sharedSession];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3321888768;
      v46[2] = sub_10000405C;
      v46[3] = &unk_100138D00;
      v46[4] = a1;
      *&v46[5] = v37;
      if ((buf[23] & 0x80000000) != 0)
      {
        sub_100004CEC(&v47, *buf, *&buf[8]);
      }

      else
      {
        v47 = *buf;
        v48 = *&buf[16];
      }

      v44 = [v43 dataTaskWithRequest:v35 completionHandler:v46];

      [v44 setTaskDescription:@"SafetyAlertsPull"];
      [v44 resume];

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47);
      }

      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      v45 = *buf;
    }

    else
    {
      v40 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v41 = a2;
        }

        else
        {
          v41 = *a2;
        }

        *buf = 68289283;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,requestNotTriggered,urlNotAllocated, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100004CEC(v49, *a2, a2[1]);
      }

      else
      {
        *v49 = *a2;
        v50 = a2[2];
      }

      sub_100003E84(a1, -4, v49, -1.0);
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      v45 = v49[0];
    }

    operator delete(v45);
LABEL_113:

LABEL_114:
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_117:
      if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        return;
      }

      v23 = __p;
      goto LABEL_119;
    }

    v42 = v53;
LABEL_116:
    operator delete(v42);
    goto LABEL_117;
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,requestNotTriggered,hashIsEmpty}", buf, 0x12u);
    LOBYTE(v4) = *(a2 + 23);
  }

  if ((v4 & 0x80) != 0)
  {
    sub_100004CEC(&__dst, *a2, a2[1]);
  }

  else
  {
    __dst = *a2;
    v62 = a2[2];
  }

  sub_100003E84(a1, -4, &__dst, -1.0);
  if (SHIBYTE(v62) < 0)
  {
    v23 = __dst;
LABEL_119:
    operator delete(v23);
  }
}

void sub_100003D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(a1);
}

void sub_100003E84(uint64_t a1, uint64_t a2, __int128 *a3, double a4)
{
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_3;
    }
  }

  else if (*(a3 + 23))
  {
LABEL_3:
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3321888768;
    v14[2] = sub_100004AC0;
    v14[3] = &unk_100138D30;
    v14[4] = a1;
    if ((v7 & 0x80000000) != 0)
    {
      sub_100004CEC(&__p, *a3, *(a3 + 1));
    }

    else
    {
      __p = *a3;
      v16 = *(a3 + 2);
    }

    v17 = a4;
    v18 = a2;
    v9 = objc_retainBlock(v14);
    v10 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004C5C;
    block[3] = &unk_100138D68;
    v13 = v9;
    v11 = v9;
    dispatch_async(v10, block);

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v20 = 2082;
    v21 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,callbackWithFailure,hashEmpty}", &buf, 0x12u);
  }
}

void sub_10000405C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.0)
  {
    Current = -1.0;
  }

  v12 = *(a1 + 40);
  v13 = Current < 0.0 || v12 < 0.0;
  v14 = Current - v12;
  if (v13)
  {
    v15 = -1.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v17 = *v17;
    }

    buf = 68289795;
    v54 = 2082;
    v55 = "";
    v56 = 2113;
    v57 = v9;
    v58 = 2081;
    v59 = v17;
    v60 = 2113;
    v61 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#pullServiceProd,responseReceived, error:%{private, location:escape_only}@, hash:%{private, location:escape_only}s, response:%{private, location:escape_only}@}", &buf, 0x30u);
  }

  if (v9)
  {
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v54 = 2082;
      v55 = "";
      v56 = 2113;
      v57 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,response,requestFailed, error:%{private, location:escape_only}@}", &buf, 0x1Cu);
    }

    if (*(a1 + 71) < 0)
    {
      sub_100004CEC(&__dst, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __dst = *(a1 + 48);
      v52 = *(a1 + 64);
    }

    sub_100003E84(v10, -3, &__dst, v15);
    if (SHIBYTE(v52) < 0)
    {
      v28 = __dst;
LABEL_51:
      operator delete(v28);
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v8 statusCode];
    v20 = SALogObjectGeneral;
    v21 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v19 != 200)
    {
      if (v21)
      {
        buf = 68289283;
        v54 = 2082;
        v55 = "";
        v56 = 2049;
        v57 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,responseError, responseCode:%{private}ld}", &buf, 0x1Cu);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100004CEC(__p, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *__p = *(a1 + 48);
        v48 = *(a1 + 64);
      }

      sub_100003E84(v10, v19, __p, v15);
      if (SHIBYTE(v48) < 0)
      {
        v28 = __p[0];
        goto LABEL_51;
      }

      goto LABEL_76;
    }

    if (v21)
    {
      buf = 68289283;
      v54 = 2082;
      v55 = "";
      v56 = 2049;
      v57 = 200;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,responseSuccess, responseCode:%{private}ld}", &buf, 0x1Cu);
    }

    v22 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];
    v23 = v22;
    if (!v22)
    {
      v31 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v32 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v32 = *v32;
        }

        buf = 68289539;
        v54 = 2082;
        v55 = "";
        v56 = 2049;
        v57 = -5;
        v58 = 2081;
        v59 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,responseError,nilResponse, responseCode:%{private}ld, hash:%{private, location:escape_only}s}", &buf, 0x26u);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100004CEC(v45, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v45 = *(a1 + 48);
        v46 = *(a1 + 64);
      }

      sub_100003E84(v10, -5, v45, v15);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45[0]);
      }

      goto LABEL_75;
    }

    v25 = [v22 objectForKey:@"message"];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v25 hasPrefix:@"No alert with ID"])
    {
      v26 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v27 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v27 = *v27;
        }

        buf = 68289539;
        v54 = 2082;
        v55 = "";
        v56 = 2049;
        v57 = -5;
        v58 = 2081;
        v59 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,responseError,hashNotFound, responseCode:%{private}ld, hash:%{private, location:escape_only}s}", &buf, 0x26u);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100004CEC(v43, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v43 = *(a1 + 48);
        v44 = *(a1 + 64);
      }

      sub_100003E84(v10, -5, v43, v15);
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v35 = v43[0];
    }

    else
    {
      if (SACoreTelephonyProd::isAdditionalDetailsPresent(v23, v24))
      {
        v30 = *(v10 + 8);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000048F8;
        v36[3] = &unk_100138CE0;
        v38 = v10;
        v39 = v15;
        v40 = 200;
        v37 = v23;
        dispatch_async(v30, v36);

LABEL_74:
LABEL_75:

        goto LABEL_76;
      }

      v33 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v34 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v34 = *v34;
        }

        buf = 68289539;
        v54 = 2082;
        v55 = "";
        v56 = 2049;
        v57 = 200;
        v58 = 2081;
        v59 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,responseError,noAddlDetails, responseCode:%{private}ld, hash:%{private, location:escape_only}s}", &buf, 0x26u);
      }

      sub_1000048B8((v10 + 48), (a1 + 48));
      if (*(a1 + 71) < 0)
      {
        sub_100004CEC(&v41, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v41 = *(a1 + 48);
        v42 = *(a1 + 64);
      }

      sub_100003E84(v10, 202, &v41, v15);
      if ((SHIBYTE(v42) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v35 = v41;
    }

    operator delete(v35);
    goto LABEL_74;
  }

  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v54 = 2082;
    v55 = "";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,responseError,kResponseCodeMissing}", &buf, 0x12u);
  }

  if (*(a1 + 71) < 0)
  {
    sub_100004CEC(&v49, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v49 = *(a1 + 48);
    v50 = *(a1 + 64);
  }

  sub_100003E84(v10, -2, &v49, v15);
  if (SHIBYTE(v50) < 0)
  {
    v28 = v49;
    goto LABEL_51;
  }

LABEL_76:
}

void sub_1000047EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000048B8(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100004F5C(a1, a2);
  }

  else
  {
    sub_100004EFC(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_1000048F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_1000049EC(v2 + 16, v5, v6, v4);

  objc_autoreleasePoolPop(v3);
}

void sub_1000049EC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = a4;
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_1000053C4();
  }

  (*(*v5 + 48))(v5, &v8, &v7, &v6);
}

_BYTE *sub_100004A80(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_100004CEC(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

void sub_100004AAC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100004AC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSMutableDictionary alloc];
  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [v3 initWithObjectsAndKeys:{v5, @"SafetyAlertMissingForHash", 0}];

  if (v6)
  {
    sub_1000049EC(v2 + 16, *(a1 + 72), v6, *(a1 + 64));
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pullServiceProd,#warning,callbackWithFailure,cantCreateDictionary}", buf, 0x12u);
    }
  }
}

char *sub_100004C1C(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100004CEC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_100004C48(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_100004C5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100004CAC(uint64_t a1)
{
  sub_1000051A0(a1);

  operator delete();
}

void *sub_100004CEC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100004D90();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100004DA8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100004E04(exception, a1);
}

std::logic_error *sub_100004E04(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100004E38()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100004E6C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100004EC8(exception, a1);
}

std::logic_error *sub_100004EC8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_100004EFC(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100004CEC(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100004F5C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000509C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1000050B4(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_10000510C(&v17);
  return v11;
}

void sub_100005088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000510C(va);
  _Unwind_Resume(a1);
}

void sub_1000050B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10000510C(uint64_t a1)
{
  sub_100005144(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100005144(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1000051A0(uint64_t a1)
{
  *a1 = off_100138CC0;
  v3 = (a1 + 48);
  sub_100005208(&v3);
  sub_1000052AC(a1 + 16);

  return a1;
}

void sub_100005208(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000525C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000525C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000052AC(uint64_t a1)
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

uint64_t sub_10000532C(uint64_t a1, uint64_t a2)
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

void sub_1000053C4()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100005410(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_100138DE8;
  v4 = v3;
  *(a1 + 8) = v4;
  sub_10000F2F4(a1 + 24);
  sub_10000F2F4(a1 + 224);
  sub_10000F2F4(a1 + 424);
  sub_10000F2F4(a1 + 624);
  sub_10000F3B8(a1 + 824);
  sub_10000F2F4(a1 + 1024);
  sub_10000F3B8(a1 + 1224);
  sub_10000F3B8(a1 + 1424);
  sub_10000F3B8(a1 + 1624);
  sub_10000F3B8(a1 + 1824);
  *(a1 + 2024) = 0;
  *(a1 + 16) = 0;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,initialized}", v7, 0x12u);
  }

  return a1;
}

uint64_t sub_10000560C(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10000DA70(a1 + 112);
  sub_10000DAF0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_10000DB84(&v3);

  return a1;
}

uint64_t sub_100005680(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10000DC28(a1 + 112);
  sub_10000DCA8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_10000DB84(&v3);

  return a1;
}

void sub_1000056F4(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 < 0.0 || !*(a2 + 24))
  {
    v5 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    v6 = "{msg%{public}.0s:#saBiomeProd,#warning,fetch,invalidArgs,skipping}";
    goto LABEL_8;
  }

  if (*(a1 + 16) == 1)
  {
    v5 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    v6 = "{msg%{public}.0s:#saBiomeProd,#warning,fetch,alreadyInProgress,skipping}";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &buf, 0x12u);
    return;
  }

  (*(*a1 + 32))(a1);
  *(a1 + 16) = 1;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289282;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(buf.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(buf.__r_.__value_.__r.__words[2]) = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch, lookbackSeconds:%{public}d}", &buf, 0x18u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_1000060C4(&buf, "wifiAssoc");
  std::string::operator=((a1 + 192), &buf);
  v10 = Current - a3;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3321888768;
  v35[2] = sub_1000065E0;
  v35[3] = &unk_100138EC8;
  v35[4] = a1;
  *&v35[5] = v10;
  sub_10000F1DC(v36, a2);
  v38 = 0;
  v37[0] = off_100138F50;
  v37[1] = objc_retainBlock(v35);
  v38 = v37;
  sub_10000617C(a1, 1, v37, v10);
  sub_10000F274(v37);
  sub_1000060C4(&buf, "wifiQuality");
  std::string::operator=((a1 + 992), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1000060C4(&buf, "wifiSwitchEnabled");
  std::string::operator=((a1 + 592), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3321888768;
  v31[2] = sub_100006EB4;
  v31[3] = &unk_100138EC8;
  v31[4] = a1;
  *&v31[5] = v10;
  sub_10000F1DC(v32, a2);
  v34 = 0;
  v33[0] = off_100138F50;
  v33[1] = objc_retainBlock(v31);
  v34 = v33;
  sub_100006A50(a1, 1, v33, v10);
  sub_10000F274(v33);
  sub_1000060C4(&buf, "wow");
  std::string::operator=((a1 + 792), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_1000075A0;
  v27[3] = &unk_100138EC8;
  v27[4] = a1;
  *&v27[5] = v10;
  sub_10000F1DC(v28, a2);
  v30 = 0;
  v29[0] = off_100138F50;
  v29[1] = objc_retainBlock(v27);
  v30 = v29;
  sub_10000713C(a1, 1, v29, v10);
  sub_10000F274(v29);
  sub_1000060C4(&buf, "cellAvailability");
  std::string::operator=((a1 + 392), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3321888768;
  v23[2] = sub_1000079D0;
  v23[3] = &unk_100138EC8;
  v23[4] = a1;
  *&v23[5] = v10;
  sub_10000F1DC(v24, a2);
  v26 = 0;
  v25[0] = off_100138F50;
  v25[1] = objc_retainBlock(v23);
  v26 = v25;
  sub_10000780C(a1, 1, v25, v10);
  sub_10000F274(v25);
  sub_1000060C4(&buf, "cellQuality");
  std::string::operator=((a1 + 1392), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1000060C4(&buf, "cellRat");
  std::string::operator=((a1 + 1592), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1000060C4(&buf, "cellRrc");
  std::string::operator=((a1 + 1792), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3321888768;
  v19[2] = sub_100007DFC;
  v19[3] = &unk_100138EC8;
  v19[4] = a1;
  *&v19[5] = v10;
  sub_10000F1DC(v20, a2);
  v22 = 0;
  v21[0] = off_100138F50;
  v21[1] = objc_retainBlock(v19);
  v22 = v21;
  sub_100007C38(a1, 1, v21, v10);
  sub_10000F274(v21);
  sub_1000060C4(&buf, "cellDataSwitch");
  std::string::operator=((a1 + 1192), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_10000850C;
  v15[3] = &unk_100138EC8;
  v15[4] = a1;
  *&v15[5] = v10;
  sub_10000F1DC(v16, a2);
  v18 = 0;
  v17[0] = off_100138F50;
  v17[1] = objc_retainBlock(v15);
  v18 = v17;
  sub_1000080A8(a1, 1, v17, v10);
  sub_10000F274(v17);
  sub_1000060C4(&buf, "apsdConnectivityStatus");
  std::string::operator=((a1 + 1992), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_100008BDC;
  v11[3] = &unk_100138EC8;
  v11[4] = a1;
  *&v11[5] = v10;
  sub_10000F1DC(v12, a2);
  v14 = 0;
  v13[0] = off_100138F50;
  v13[1] = objc_retainBlock(v11);
  v14 = v13;
  sub_100008778(a1, 1, v13, v10);
  sub_10000F274(v13);
  sub_10000F274(v12);
  sub_10000F274(v16);
  sub_10000F274(v20);
  sub_10000F274(v24);
  sub_10000F274(v28);
  sub_10000F274(v32);
  sub_10000F274(v36);
}

void sub_100005F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000F274(va);
  sub_10000F274(v17 + 48);
  sub_10000F274(v16 + 48);
  sub_10000F274(v15 + 48);
  sub_10000F274(v14 + 48);
  sub_10000F274(v13 + 48);
  sub_10000F274(v12 + 48);
  sub_10000F274(v11 + 48);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000060C4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004D90();
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

void sub_10000617C(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 WiFi];
  sub_10000F1DC(v25, a3);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100009914;
  v22[3] = &unk_100138EF8;
  v24 = 0;
  v22[4] = a1;
  v23[0] = off_1001392C0;
  v23[1] = objc_retainBlock(v22);
  v24 = v23;
  v12 = v11;
  if (a2)
  {
    v13 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v13 initWithStartDate:0 endDate:v14 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v16 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v16 initWithStartDate:v14 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v17 = v15;

  if (v17)
  {
    v18 = [v12 publisherWithOptions:v17];
    if (v18)
    {
      *buf = _NSConcreteStackBlock;
      *&v29 = 3321888768;
      *(&v29 + 1) = sub_100011A0C;
      v30 = &unk_100139120;
      v31 = a1;
      sub_10000F1DC(v32, v25);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3321888768;
      v26[2] = sub_100011C04;
      v26[3] = &unk_100139280;
      v26[4] = a1;
      sub_100011EA8(v27, v23);
      v19 = [v18 sinkWithCompletion:buf receiveInput:v26];
      sub_100012078(v27);
      sub_10000F274(v32);
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v29) = 2082;
        *(&v29 + 2) = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", buf, 0x12u);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v29) = 2082;
      *(&v29 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", buf, 0x12u);
    }
  }

  sub_100012078(v23);
  sub_10000F274(v25);
}

void sub_100006534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_100012078(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_1000065E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10000671C;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_10000617C(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_1000066F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_10000671C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 64) - *(v2 + 56)) >> 3);
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,wifiAssocComplete, wifiAssocLen:%{private}d}", buf, 0x18u);
  }

  *(v2 + 32) = 1;
  sub_10000F1DC(v6, a1 + 40);
  sub_100006848(v2, v6);
  return sub_10000F274(v6);
}

uint64_t sub_100006848(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == 1)
  {
    v2 = result;
    if (*(result + 832) == 1 && *(result + 432) == 1 && *(result + 632) == 1 && *(result + 232) == 1 && *(result + 1232) == 1 && *(result + 1432) == 1 && *(result + 1632) == 1 && *(result + 1032) == 1 && *(result + 1832) == 1)
    {
      *(result + 16) = 2;
      if (*(result + 2024) == 1)
      {
        v4 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 68289026;
          v7 = 0;
          v8 = 2082;
          v9 = "";
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,#warning,fetchCompleteButResetTriggered}", &v6, 0x12u);
        }

        v2[2024] = 0;
        (*(*v2 + 32))(v2);
      }

      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetchComplete}", &v6, 0x12u);
      }

      return sub_100009228(a2);
    }
  }

  return result;
}

void sub_100006A50(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 WiFiAvailabilityStatus];
  sub_10000F1DC(v25, a3);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100009BA0;
  v22[3] = &unk_100138EF8;
  v24 = 0;
  v22[4] = a1;
  v23[0] = off_1001394B8;
  v23[1] = objc_retainBlock(v22);
  v24 = v23;
  v12 = v11;
  if (a2)
  {
    v13 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v13 initWithStartDate:0 endDate:v14 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v16 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v16 initWithStartDate:v14 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v17 = v15;

  if (v17)
  {
    v18 = [v12 publisherWithOptions:v17];
    if (v18)
    {
      *buf = _NSConcreteStackBlock;
      *&v29 = 3321888768;
      *(&v29 + 1) = sub_100013B08;
      v30 = &unk_100139120;
      v31 = a1;
      sub_10000F1DC(v32, v25);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3321888768;
      v26[2] = sub_100013D00;
      v26[3] = &unk_100139478;
      v26[4] = a1;
      sub_100013FA4(v27, v23);
      v19 = [v18 sinkWithCompletion:buf receiveInput:v26];
      sub_100014174(v27);
      sub_10000F274(v32);
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v29) = 2082;
        *(&v29 + 2) = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", buf, 0x12u);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v29) = 2082;
      *(&v29 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", buf, 0x12u);
    }
  }

  sub_100014174(v23);
  sub_10000F274(v25);
}

void sub_100006E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_100014174(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_100006EB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100006FF0;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_100006A50(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100006FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100006FF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 864) - *(v2 + 856)) >> 3);
    v5 = -858993459 * ((*(v2 + 464) - *(v2 + 456)) >> 3);
    *buf = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1025;
    v13 = v4;
    v14 = 1025;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,wifiQualityComplete, wifiQualityLen:%{private}d, wifiSwitchLen:%{private}d}", buf, 0x1Eu);
  }

  *(v2 + 832) = 1;
  *(v2 + 432) = 1;
  sub_10000F1DC(v7, a1 + 40);
  sub_100006848(v2, v7);
  return sub_10000F274(v7);
}

void sub_10000713C(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 WakeOnWiFiStatus];
  sub_10000F1DC(v25, a3);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100009504;
  v22[3] = &unk_100138EF8;
  v24 = 0;
  v22[4] = a1;
  v23[0] = off_1001391C8;
  v23[1] = objc_retainBlock(v22);
  v24 = v23;
  v12 = v11;
  if (a2)
  {
    v13 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v13 initWithStartDate:0 endDate:v14 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v16 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v16 initWithStartDate:v14 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v17 = v15;

  if (v17)
  {
    v18 = [v12 publisherWithOptions:v17];
    if (v18)
    {
      *buf = _NSConcreteStackBlock;
      *&v29 = 3321888768;
      *(&v29 + 1) = sub_10001130C;
      v30 = &unk_100139120;
      v31 = a1;
      sub_10000F1DC(v32, v25);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3321888768;
      v26[2] = sub_100011518;
      v26[3] = &unk_100139188;
      v26[4] = a1;
      sub_1000117BC(v27, v23);
      v19 = [v18 sinkWithCompletion:buf receiveInput:v26];
      sub_10001198C(v27);
      sub_10000F274(v32);
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v29) = 2082;
        *(&v29 + 2) = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", buf, 0x12u);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v29) = 2082;
      *(&v29 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", buf, 0x12u);
    }
  }

  sub_10001198C(v23);
  sub_10000F274(v25);
}

void sub_1000074F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_10001198C(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_1000075A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1000076DC;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_10000713C(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_1000076B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_1000076DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 664) - *(v2 + 656)) >> 3);
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,wowComplete, wowLen:%{private}d}", buf, 0x18u);
  }

  *(v2 + 632) = 1;
  sub_10000F1DC(v6, a1 + 40);
  sub_100006848(v2, v6);
  return sub_10000F274(v6);
}

void sub_10000780C(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 CellularQualityStatus];
  sub_10000F1DC(v15, a3);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A408;
  v12[3] = &unk_100138EF8;
  v14 = 0;
  v12[4] = a1;
  v13[0] = off_1001395B0;
  v13[1] = objc_retainBlock(v12);
  v14 = v13;
  sub_10000A0C4(a1, a2, v11, v15, v13, a4);
  sub_100014860(v13);
  sub_10000F274(v15);
}

void sub_10000797C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_100014860(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_1000079D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100007B0C;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_10000780C(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100007AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100007B0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 264) - *(v2 + 256)) >> 3);
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,CellularAvailabilityComplete, cellAvailabilityLen:%{private}d}", buf, 0x18u);
  }

  *(v2 + 232) = 1;
  sub_10000F1DC(v6, a1 + 40);
  sub_100006848(v2, v6);
  return sub_10000F274(v6);
}

void sub_100007C38(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 CellularQualityStatus];
  sub_10000F1DC(v15, a3);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A638;
  v12[3] = &unk_100138EF8;
  v14 = 0;
  v12[4] = a1;
  v13[0] = off_1001395B0;
  v13[1] = objc_retainBlock(v12);
  v14 = v13;
  sub_10000A0C4(a1, a2, v11, v15, v13, a4);
  sub_100014860(v13);
  sub_10000F274(v15);
}

void sub_100007DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_100014860(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_100007DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100007F38;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_100007C38(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100007F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100007F38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 1464) - *(v2 + 1456)) >> 3);
    v5 = -858993459 * ((*(v2 + 1664) - *(v2 + 1656)) >> 3);
    v6 = -858993459 * ((*(v2 + 1264) - *(v2 + 1256)) >> 3);
    *buf = 68289795;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1025;
    v14 = v4;
    v15 = 1025;
    v16 = v5;
    v17 = 1025;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,CellularQualityComplete, ratLen:%{private}d, rrcLen:%{private}d, cellQualityLen:%{private}d}", buf, 0x24u);
  }

  *(v2 + 1632) = 1;
  *(v2 + 1432) = 1;
  *(v2 + 1232) = 1;
  sub_10000F1DC(v8, a1 + 40);
  sub_100006848(v2, v8);
  return sub_10000F274(v8);
}

void sub_1000080A8(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 CellularDataEnabled];
  sub_10000F1DC(v25, a3);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000AE58;
  v22[3] = &unk_100138EF8;
  v24 = 0;
  v22[4] = a1;
  v23[0] = off_1001397A0;
  v23[1] = objc_retainBlock(v22);
  v24 = v23;
  v12 = v11;
  if (a2)
  {
    v13 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v13 initWithStartDate:0 endDate:v14 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v16 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v16 initWithStartDate:v14 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v17 = v15;

  if (v17)
  {
    v18 = [v12 publisherWithOptions:v17];
    if (v18)
    {
      *buf = _NSConcreteStackBlock;
      *&v29 = 3321888768;
      *(&v29 + 1) = sub_100014FCC;
      v30 = &unk_100139120;
      v31 = a1;
      sub_10000F1DC(v32, v25);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3321888768;
      v26[2] = sub_1000151C4;
      v26[3] = &unk_100139760;
      v26[4] = a1;
      sub_100015468(v27, v23);
      v19 = [v18 sinkWithCompletion:buf receiveInput:v26];
      sub_100015638(v27);
      sub_10000F274(v32);
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v29) = 2082;
        *(&v29 + 2) = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", buf, 0x12u);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v29) = 2082;
      *(&v29 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", buf, 0x12u);
    }
  }

  sub_100015638(v23);
  sub_10000F274(v25);
}

void sub_100008460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_100015638(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_10000850C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100008648;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_1000080A8(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100008624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100008648(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 1064) - *(v2 + 1056)) >> 3);
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,CellularDataComplete, cellDataLen:%{private}d}", buf, 0x18u);
  }

  *(v2 + 1032) = 1;
  sub_10000F1DC(v6, a1 + 40);
  sub_100006848(v2, v6);
  return sub_10000F274(v6);
}

void sub_100008778(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Wireless];
  v11 = [v10 APSDInterfaceStatus];
  sub_10000F1DC(v25, a3);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000AABC;
  v22[3] = &unk_100138EF8;
  v24 = 0;
  v22[4] = a1;
  v23[0] = off_1001396A8;
  v23[1] = objc_retainBlock(v22);
  v24 = v23;
  v12 = v11;
  if (a2)
  {
    v13 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v13 initWithStartDate:0 endDate:v14 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v16 = [BMPublisherOptions alloc];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
    v15 = [v16 initWithStartDate:v14 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v17 = v15;

  if (v17)
  {
    v18 = [v12 publisherWithOptions:v17];
    if (v18)
    {
      *buf = _NSConcreteStackBlock;
      *&v29 = 3321888768;
      *(&v29 + 1) = sub_1000148E0;
      v30 = &unk_100139120;
      v31 = a1;
      sub_10000F1DC(v32, v25);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3321888768;
      v26[2] = sub_100014AD8;
      v26[3] = &unk_100139668;
      v26[4] = a1;
      sub_100014D7C(v27, v23);
      v19 = [v18 sinkWithCompletion:buf receiveInput:v26];
      sub_100014F4C(v27);
      sub_10000F274(v32);
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v29) = 2082;
        *(&v29 + 2) = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", buf, 0x12u);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v29) = 2082;
      *(&v29 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", buf, 0x12u);
    }
  }

  sub_100014F4C(v23);
  sub_10000F274(v25);
}

void sub_100008B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_100014F4C(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_100008BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100008D18;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_100008778(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100008CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100008D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = -858993459 * ((*(v2 + 1864) - *(v2 + 1856)) >> 3);
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,apsdConnectivityComplete, apsdLen:%{private}d}", buf, 0x18u);
  }

  *(v2 + 1832) = 1;
  sub_10000F1DC(v6, a1 + 40);
  sub_100006848(v2, v6);
  return sub_10000F274(v6);
}

uint64_t sub_100008E48(uint64_t a1, uint64_t a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 1832) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1840) = _Q0;
  *(a1 + 1984) = 0;
  sub_10000DBD8((a1 + 1856));
  sub_1000060C4(&__p, "apsdConnectivityStatus");
  std::string::operator=((a1 + 1992), &__p);
  v12 = Current - a3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_100008FF0;
  v15[3] = &unk_100138EC8;
  v15[4] = a1;
  *&v15[5] = v12;
  sub_10000F1DC(v16, a2);
  v18 = 0;
  v17[0] = off_100138F50;
  v17[1] = objc_retainBlock(v15);
  v18 = v17;
  sub_100008778(a1, 1, v17, v12);
  sub_10000F274(v17);
  return sub_10000F274(v16);
}

void sub_100008FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_10000F274(v15 - 88);
  sub_10000F274(v14 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_100008FF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10000912C;
  v4[3] = &unk_100138E98;
  v4[4] = v1;
  sub_10000F1DC(v5, a1 + 48);
  v7 = 0;
  v6[0] = off_100138F50;
  v6[1] = objc_retainBlock(v4);
  v7 = v6;
  sub_100008778(v1, 0, v6, v2);
  sub_10000F274(v6);
  return sub_10000F274(v5);
}

void sub_100009108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000F274(va);
  sub_10000F274(v10 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_10000912C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,fetch,apsdConnectivity}", v6, 0x12u);
  }

  *(v2 + 1832) = 1;
  v4 = *(a1 + 64);
  if (!v4)
  {
    sub_1000053C4();
  }

  return (*(*v4 + 48))(v4);
}

uint64_t sub_100009228(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_100009270(uint64_t a1)
{
  if (*(a1 + 2024) == 1)
  {
    v1 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,#warning,resetAlreadyTriggered}", buf, 0x12u);
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = SALogObjectGeneral;
    v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,#warning,resetWhileFetching}", buf, 0x12u);
      }

      *(a1 + 2024) = 1;
    }

    else
    {
      if (v5)
      {
        *buf = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,reset}", buf, 0x12u);
      }

      *(a1 + 32) = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v11 = _Q0;
      *(a1 + 40) = _Q0;
      *(a1 + 184) = 0;
      sub_10000DBD8((a1 + 56));
      *(a1 + 832) = 0;
      *(a1 + 840) = 0xBFF0000000000000;
      *(a1 + 848) = 0xBFF0000000000000;
      *(a1 + 984) = 0;
      sub_10000DBD8((a1 + 856));
      *(a1 + 432) = 0;
      *(a1 + 440) = 0xBFF0000000000000;
      *(a1 + 448) = 0xBFF0000000000000;
      *(a1 + 584) = 0;
      sub_10000DBD8((a1 + 456));
      *(a1 + 632) = 0;
      *(a1 + 640) = v11;
      *(a1 + 784) = 0;
      sub_10000DBD8((a1 + 656));
      *(a1 + 232) = 0;
      *(a1 + 240) = v11;
      *(a1 + 384) = 0;
      sub_10000DBD8((a1 + 256));
      *(a1 + 1232) = 0;
      *(a1 + 1240) = 0xBFF0000000000000;
      *(a1 + 1248) = 0xBFF0000000000000;
      *(a1 + 1384) = 0;
      sub_10000DBD8((a1 + 1256));
      *(a1 + 1432) = 0;
      *(a1 + 1440) = v11;
      *(a1 + 1584) = 0;
      sub_10000DBD8((a1 + 1456));
      *(a1 + 1632) = 0;
      *(a1 + 1640) = 0xBFF0000000000000;
      *(a1 + 1648) = 0xBFF0000000000000;
      *(a1 + 1784) = 0;
      sub_10000DBD8((a1 + 1656));
      *(a1 + 1032) = 0;
      *(a1 + 1040) = v11;
      *(a1 + 1184) = 0;
      sub_10000DBD8((a1 + 1056));
      *(a1 + 1832) = 0;
      *(a1 + 1840) = v11;
      *(a1 + 1984) = 0;
      sub_10000DBD8((a1 + 1856));
      *(a1 + 16) = 0;
      *(a1 + 2024) = 0;
    }
  }
}

void sub_100009504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    *buf = 68289539;
    *&buf[4] = 0;
    v16 = 2082;
    *__p = "";
    *&__p[8] = 2049;
    *&__p[10] = v7;
    *&__p[18] = 1025;
    *&__p[20] = [v8 starting];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,WakeOnWifiStatus, timestamp:%{private}0.1f, isStarting:%{private}hhd}", buf, 0x22u);
  }

  [v3 timestamp];
  v10 = v9;
  v11 = [v3 eventBody];
  v12 = [v11 starting];
  sub_1000060C4(v13, "{}");
  *buf = v10;
  LOBYTE(v16) = v12;
  if (SHIBYTE(v14) < 0)
  {
    sub_100004CEC(&__p[6], v13[0], v13[1]);
  }

  else
  {
    *&__p[6] = *v13;
    *&__p[22] = v14;
  }

  sub_10000972C(v4 + 624, buf);
  if ((__p[29] & 0x80000000) != 0)
  {
    operator delete(*&__p[6]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1000096B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000972C(uint64_t a1, uint64_t *a2)
{
  v21[0] = off_100138FE0;
  v21[1] = a1;
  v21[3] = v21;
  v20[0] = off_100139060;
  v20[1] = a1;
  v20[3] = v20;
  sub_1000104CC(v22, v21, v20);
  sub_10000F274(v20);
  sub_10000F274(v21);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v13[0] = 68289539;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,update, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", v13, 0x26u);
  }

  sub_10000F604(a1, a2);
  if ((*(a1 + 79) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 79))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64))
  {
LABEL_11:
    sub_10000F87C(a1);
  }

LABEL_12:
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 193) & 1) == 0)
  {
    *(a1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 16) = _Q0;
    *(a1 + 160) = 0;
    sub_10000DBD8((a1 + 32));
  }

  return sub_100011208(v22);
}

void sub_1000098E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_100009914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    v9 = [v8 SSID];
    v10 = [v9 UTF8String];
    v11 = [v3 eventBody];
    *buf = 68289795;
    *&buf[4] = 0;
    v19 = 2082;
    *__p = "";
    *&__p[8] = 2049;
    *&__p[10] = v7;
    *&__p[18] = 2081;
    *&__p[20] = v10;
    *&__p[28] = 1026;
    v21 = [v11 starting];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,WifiAssociatedStatus, timestamp:%{private}0.1f, SSID:%{private, location:escape_only}s, isStarting:%{public}hhd}", buf, 0x2Cu);
  }

  [v3 timestamp];
  v13 = v12;
  v14 = [v3 eventBody];
  v15 = [v14 starting];
  sub_1000060C4(v16, "{}");
  *buf = v13;
  LOBYTE(v19) = v15;
  if (SHIBYTE(v17) < 0)
  {
    sub_100004CEC(&__p[6], v16[0], v16[1]);
  }

  else
  {
    *&__p[6] = *v16;
    *&__p[22] = v17;
  }

  sub_10000972C(v4 + 24, buf);
  if ((__p[29] & 0x80000000) != 0)
  {
    operator delete(*&__p[6]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_100009B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100009BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    v9 = [v8 starting];
    v10 = [v3 eventBody];
    *buf = 68289795;
    *&buf[4] = 0;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2049;
    *&v22[12] = v7;
    *&v22[20] = 1025;
    *&v22[22] = v9;
    *&v22[26] = 1025;
    *&v22[28] = [v10 quality];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,WifiQualityStatus, timestamp:%{private}0.1f, isStarting:%{private}hhd, wifiQuality:%{private}d}", buf, 0x28u);
  }

  [v3 timestamp];
  v12 = v11;
  v13 = [v3 eventBody];
  v14 = [v13 quality];
  sub_1000060C4(__p, "{}");
  *buf = v12;
  *v22 = v14;
  if (SHIBYTE(v20) < 0)
  {
    sub_100004CEC(&v22[8], __p[0], __p[1]);
  }

  else
  {
    *&v22[8] = *__p;
    *&v22[24] = v20;
  }

  sub_100009EDC(v4 + 824, buf);
  if ((v22[31] & 0x80000000) != 0)
  {
    operator delete(*&v22[8]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  [v3 timestamp];
  v16 = v15;
  v17 = [v3 eventBody];
  v18 = [v17 isWiFiSwitchOn];
  sub_1000060C4(__p, "{}");
  *buf = v16;
  v22[0] = v18;
  if (SHIBYTE(v20) < 0)
  {
    sub_100004CEC(&v22[8], __p[0], __p[1]);
  }

  else
  {
    *&v22[8] = *__p;
    *&v22[24] = v20;
  }

  sub_10000972C(v4 + 424, buf);
  if ((v22[31] & 0x80000000) != 0)
  {
    operator delete(*&v22[8]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100009E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100009EDC(uint64_t a1, uint64_t *a2)
{
  v21[0] = off_100139350;
  v21[1] = a1;
  v21[3] = v21;
  v20[0] = off_1001393D0;
  v20[1] = a1;
  v20[3] = v20;
  sub_1000104CC(v22, v21, v20);
  sub_10000F274(v20);
  sub_10000F274(v21);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v13[0] = 68289539;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,update, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", v13, 0x26u);
  }

  sub_1000120F8(a1, a2);
  if ((*(a1 + 79) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 79))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64))
  {
LABEL_11:
    sub_100012370(a1);
  }

LABEL_12:
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 193) & 1) == 0)
  {
    *(a1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 16) = _Q0;
    *(a1 + 160) = 0;
    sub_10000DBD8((a1 + 32));
  }

  return sub_100011208(v22);
}

void sub_10000A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_10000A0C4(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a3;
  if (a2)
  {
    v12 = [BMPublisherOptions alloc];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:a6];
    v14 = [v12 initWithStartDate:0 endDate:v13 maxEvents:0 lastN:1 reversed:0];
  }

  else
  {
    v15 = [BMPublisherOptions alloc];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:a6];
    v14 = [v15 initWithStartDate:v13 endDate:0 maxEvents:0 lastN:0 reversed:0];
  }

  v16 = v14;

  if (v16)
  {
    v17 = [v11 publisherWithOptions:v16];
    if (v17)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3321888768;
      v23[2] = sub_1000141F4;
      v23[3] = &unk_100139120;
      v23[4] = a1;
      sub_10000F1DC(v24, a4);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3321888768;
      v21[2] = sub_1000143EC;
      v21[3] = &unk_100139570;
      v21[4] = a1;
      sub_100014690(v22, a5);
      v18 = [v17 sinkWithCompletion:v23 receiveInput:v21];
      sub_100014860(v22);
      sub_10000F274(v24);
    }

    else
    {
      v20 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        buf = 68289026;
        v26 = 2082;
        v27 = "";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noPublisher}", &buf, 0x12u);
      }
    }
  }

  else
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v26 = 2082;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saBiomeProd,invokeBiomeFailed,noOptions}", &buf, 0x12u);
    }
  }
}

void sub_10000A408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    *buf = 68289539;
    *&buf[4] = 0;
    v16 = 2082;
    *__p = "";
    *&__p[8] = 2049;
    *&__p[10] = v7;
    *&__p[18] = 1026;
    *&__p[20] = [v8 deviceRegistrationState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,CellularAvailabilityStatus, timestamp:%{private}0.1f, deviceRegistrationStatus:%{public}d}", buf, 0x22u);
  }

  [v3 timestamp];
  v10 = v9;
  v11 = [v3 eventBody];
  v12 = [v11 deviceRegistrationState];
  sub_1000060C4(v13, "{}");
  *buf = v10;
  LOBYTE(v16) = v12 == 1;
  if (SHIBYTE(v14) < 0)
  {
    sub_100004CEC(&__p[6], v13[0], v13[1]);
  }

  else
  {
    *&__p[6] = *v13;
    *&__p[22] = v14;
  }

  sub_10000972C(v4 + 224, buf);
  if ((__p[29] & 0x80000000) != 0)
  {
    operator delete(*&__p[6]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_10000A5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10000A638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    v9 = [v8 deviceRegistrationState];
    v10 = [v3 eventBody];
    v11 = [v10 quality];
    v12 = [v3 eventBody];
    v13 = [v12 rat];
    v14 = [v3 eventBody];
    *buf = 68290307;
    *&buf[4] = 0;
    *v30 = 2082;
    *&v30[2] = "";
    *&v30[10] = 2049;
    *&v30[12] = v7;
    *&v30[20] = 1026;
    *&v30[22] = v9;
    *&v30[26] = 1026;
    *&v30[28] = v11;
    v31 = 1026;
    v32 = v13;
    v33 = 1026;
    v34 = [v14 rrcStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,CellularQualityStatus, timestamp:%{private}0.1f, deviceRegistrationStatus:%{public}d, quality:%{public}d, RAT:%{public}d, RRC:%{public}d}", buf, 0x34u);
  }

  [v3 timestamp];
  v16 = v15;
  v17 = [v3 eventBody];
  v18 = [v17 quality];
  sub_1000060C4(__p, "{}");
  *buf = v16;
  *v30 = v18;
  if (SHIBYTE(v28) < 0)
  {
    sub_100004CEC(&v30[8], __p[0], __p[1]);
  }

  else
  {
    *&v30[8] = *__p;
    *&v30[24] = v28;
  }

  sub_100009EDC(v4 + 1224, buf);
  if ((v30[31] & 0x80000000) != 0)
  {
    operator delete(*&v30[8]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  [v3 timestamp];
  v20 = v19;
  v21 = [v3 eventBody];
  v22 = [v21 rat];
  sub_1000060C4(__p, "{}");
  *buf = v20;
  *v30 = v22;
  if (SHIBYTE(v28) < 0)
  {
    sub_100004CEC(&v30[8], __p[0], __p[1]);
  }

  else
  {
    *&v30[8] = *__p;
    *&v30[24] = v28;
  }

  sub_100009EDC(v4 + 1424, buf);
  if ((v30[31] & 0x80000000) != 0)
  {
    operator delete(*&v30[8]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  [v3 timestamp];
  v24 = v23;
  v25 = [v3 eventBody];
  v26 = [v25 rrcStatus];
  sub_1000060C4(__p, "{}");
  *buf = v24;
  *v30 = v26;
  if (SHIBYTE(v28) < 0)
  {
    sub_100004CEC(&v30[8], __p[0], __p[1]);
  }

  else
  {
    *&v30[8] = *__p;
    *&v30[24] = v28;
  }

  sub_100009EDC(v4 + 1624, buf);
  if ((v30[31] & 0x80000000) != 0)
  {
    operator delete(*&v30[8]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000A9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10000AABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    v9 = [v8 starting];
    v10 = [v3 eventBody];
    v11 = [v10 isAPSDOverCell];
    v12 = [v3 eventBody];
    *buf = 68290051;
    *v29 = 2082;
    *&buf[4] = 0;
    *&v29[2] = "";
    *&v29[10] = 2049;
    *&v29[12] = v7;
    *&v29[20] = 1025;
    *&v29[22] = v9;
    *&v29[26] = 1025;
    *&v29[28] = v11;
    v30 = 1025;
    v31 = [v12 isAPSDOverWiFi];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,apsdConnectivityStatus, timestamp:%{private}0.1f, starting:%{private}d, isAPSDOverCell:%{private}d, isAPSDOverWiFi:%{private}d}", buf, 0x2Eu);
  }

  v13 = [v3 eventBody];
  if ([v13 isAPSDOverCell])
  {
    v14 = [v3 eventBody];
    v15 = [v14 isAPSDOverWiFi];

    if (v15)
    {
      v16 = 2;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v17 = [v3 eventBody];
  if ([v17 isAPSDOverCell])
  {

    goto LABEL_10;
  }

  v18 = [v3 eventBody];
  v19 = [v18 isAPSDOverWiFi];

  if (v19)
  {
LABEL_10:
    v20 = [v3 eventBody];
    v21 = [v20 isAPSDOverCell];

    if (v21)
    {
      v16 = 3;
    }

    else
    {
      v22 = [v3 eventBody];
      v23 = [v22 isAPSDOverWiFi];

      if (v23)
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_16;
  }

  v16 = 1;
LABEL_16:
  [v3 timestamp];
  v25 = v24;
  sub_1000060C4(__p, "{}");
  *buf = v25;
  *v29 = v16;
  if (SHIBYTE(v27) < 0)
  {
    sub_100004CEC(&v29[8], __p[0], __p[1]);
  }

  else
  {
    *&v29[8] = *__p;
    *&v29[24] = v27;
  }

  sub_100009EDC(v4 + 1824, buf);
  if ((v29[31] & 0x80000000) != 0)
  {
    operator delete(*&v29[8]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000AE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 eventBody];
    *buf = 68289539;
    *&buf[4] = 0;
    v16 = 2082;
    *__p = "";
    *&__p[8] = 2049;
    *&__p[10] = v7;
    *&__p[18] = 1026;
    *&__p[20] = [v8 starting];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,CellularDataStatus, timestamp:%{private}0.1f, isStarting:%{public}hhd}", buf, 0x22u);
  }

  [v3 timestamp];
  v10 = v9;
  v11 = [v3 eventBody];
  v12 = [v11 starting];
  sub_1000060C4(v13, "{}");
  *buf = v10;
  LOBYTE(v16) = v12;
  if (SHIBYTE(v14) < 0)
  {
    sub_100004CEC(&__p[6], v13[0], v13[1]);
  }

  else
  {
    *&__p[6] = *v13;
    *&__p[22] = v14;
  }

  sub_10000972C(v4 + 1024, buf);
  if ((__p[29] & 0x80000000) != 0)
  {
    operator delete(*&__p[6]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_10000B00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000B080(uint64_t a1, double a2)
{
  LOWORD(result) = sub_10000B0AC(a1 + 24, a2);
  if ((result & 0x100) != 0)
  {
    return result;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_10000B0AC(uint64_t a1, double a2)
{
  v27[0] = off_100139830;
  v27[1] = a1;
  v27[3] = v27;
  v26[0] = off_1001398B0;
  v26[1] = a1;
  v26[3] = v26;
  sub_1000104CC(v28, v27, v26);
  sub_10000F274(v26);
  sub_10000F274(v27);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v18 = 68289539;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v5;
    v24 = 2081;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,findLatestValueBefore, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", &v18, 0x26u);
  }

  if (*(a1 + 16) > a2)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2081;
      v23 = v8;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,InvalidArgs, history:%{private, location:escape_only}s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v18, 0x1Cu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  if (v12 == v11 || (*(a1 + 8) & 1) == 0)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v15 = *v15;
      }

      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2081;
      v23 = v15;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,skipping,notReady, history:%{private, location:escape_only}s}";
      goto LABEL_21;
    }

LABEL_22:
    v14 = 0;
    v16 = 0;
    goto LABEL_23;
  }

  while (v11 != v12)
  {
    v13 = *(v11 - 40);
    v11 -= 40;
    if (v13 <= a2)
    {
      v14 = *(v11 + 8);
      goto LABEL_25;
    }
  }

  v14 = *(v12 + 8);
LABEL_25:
  v16 = 1;
LABEL_23:
  sub_100011208(v28);
  return v14 | (v16 << 8);
}

void sub_10000B358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B374(uint64_t a1, double a2)
{
  LOWORD(result) = sub_10000B0AC(a1 + 424, a2);
  if ((result & 0x100) != 0)
  {
    return result;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_10000B3A0(uint64_t a1, double a2)
{
  v4 = sub_10000B0AC(a1 + 224, a2);
  if ((v4 & 0x100) == 0)
  {
    return 3;
  }

  v6 = v4;
  v7 = sub_10000B0AC(a1 + 1024, a2);
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v8 = 0;
  }

  if ((v7 & 0x100) != 0)
  {
    return v8;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_10000B408(uint64_t a1, double a2, double a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_10000B47C(a1 + 24, &v5, a2, a3);
  v3 = sub_10006709C(&v5);
  sub_100015A38(&v5, v6[0]);
  return v3;
}

uint64_t sub_10000B47C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v23[0] = off_100139930;
  v23[1] = a1;
  v23[3] = v23;
  v22[0] = off_1001399B0;
  v22[1] = a1;
  v22[3] = v22;
  sub_1000104CC(v24, v23, v22);
  sub_10000F274(v22);
  sub_10000F274(v23);
  sub_100015A38(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 16) <= a3)
  {
    if (*(a1 + 32) == *(a1 + 40) || (*(a1 + 8) & 1) == 0)
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v14 = *v14;
        }

        v16 = 68289283;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2081;
        v21 = v14;
        v10 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValuesWithin,skipping,notReady, history:%{private, location:escape_only}s}";
        goto LABEL_22;
      }
    }

    else
    {
      LOWORD(v16) = sub_10000B0AC(a1, a3);
      if ((v16 & 0x100) != 0)
      {
        sub_100015E0C(a2, &v16);
      }

      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      while (v12 != v11)
      {
        if (*v12 >= a3 && *v12 <= a4)
        {
          sub_100015E0C(a2, (v12 + 8));
        }

        v12 += 40;
      }
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v9 = *v9;
      }

      v16 = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = v9;
      v10 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValuesWithin,outOfRangeArgs, history:%{private, location:escape_only}s}";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x1Cu);
    }
  }

  return sub_100011208(v24);
}

uint64_t sub_10000B710(uint64_t a1, double a2, double a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_10000B47C(a1 + 224, &v5, a2, a3);
  v3 = sub_10006709C(&v5);
  sub_100015A38(&v5, v6[0]);
  return v3;
}

void sub_10000B784(uint64_t a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  sub_10000B47C(a1 + 224, &v6, a3, a4);
  if (v8)
  {
    v5 = sub_10006709C(&v6);
    sub_1000060C4(a2, off_100139E20[v5]);
  }

  else
  {
    sub_1000060C4(a2, "NotAvailable");
  }

  sub_100015A38(&v6, v7);
}

uint64_t sub_10000B828(uint64_t a1, double a2, double a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_10000B47C(a1 + 1024, &v5, a2, a3);
  v3 = sub_10006709C(&v5);
  sub_100015A38(&v5, v6[0]);
  return v3;
}

uint64_t sub_10000B89C(uint64_t a1, double a2, double a3)
{
  result = (*(*a1 + 80))(a1);
  if (result)
  {
    v7 = result;
    result = (*(*a1 + 72))(a1, a2, a3);
    if (result)
    {
      if (v7 == 2 && result == 2)
      {
        return 3;
      }

      else if (result == 1 && v7 == 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_10000B950(uint64_t a1, double a2, double a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_10000B47C(a1 + 624, &v5, a2, a3);
  v3 = sub_10006709C(&v5);
  sub_100015A38(&v5, v6[0]);
  return v3;
}

uint64_t sub_10000B9C4(uint64_t a1, double a2, double a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2049;
    *&v22[12] = a2;
    v23 = 2049;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,wifiQualityWithinWindow, start:%{private}.2f, end:%{private}.2f}", buf, 0x26u);
  }

  *buf = 0;
  *v22 = 0;
  *&v22[8] = 0;
  sub_10000BC50(a1 + 824, buf, a2, a3);
  v7 = *buf;
  if (*buf == *v22)
  {
    v12 = SALogObjectGeneral;
    v11 = 0xFFFFFFFFLL;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      v20 = -1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,wifiQualityWithinWindow,empty history, quality:%{private}d}", v15, 0x18u);
    }
  }

  else
  {
    v14 = 0;
    v8 = sub_10000C34C(buf, &v14);
    v9 = SALogObjectGeneral;
    v10 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        *v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 1025;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,wifiQualityWithinWindow, quality:%{private}d}", v15, 0x18u);
      }

      v11 = v14;
    }

    else
    {
      if (v10)
      {
        *v15 = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,wifiQualityWithinWindow,invalid median conversion}", v15, 0x12u);
      }

      v11 = 0xFFFFFFFFLL;
    }
  }

  if (v7)
  {
    operator delete(v7);
  }

  return v11;
}

void sub_10000BC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000BC50(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v52[0] = off_100139A30;
  v52[1] = a1;
  v52[3] = v52;
  v51[0] = off_100139AB0;
  v51[1] = a1;
  v51[3] = v51;
  sub_1000104CC(v53, v52, v51);
  sub_10000F274(v51);
  sub_10000F274(v52);
  *(a2 + 8) = *a2;
  v8 = *(a1 + 16);
  if (v8 > a3)
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v10 = *v10;
      }

      *buf = 68289283;
      *v63 = 2082;
      *&v63[2] = "";
      v64 = 2081;
      v65 = v10;
      v11 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValTimestamp,outOfRangeArgs, history:%{private, location:escape_only}s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x1Cu);
      return sub_100011208(v53);
    }

    return sub_100011208(v53);
  }

  if (*(a1 + 32) != *(a1 + 40) && (*(a1 + 8) & 1) != 0)
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v13 = *v13;
      }

      v14 = *(a1 + 24);
      *buf = 68290051;
      *v63 = 2082;
      *&buf[4] = 0;
      *&v63[2] = "";
      v64 = 2081;
      v65 = v13;
      v66 = 2049;
      v67 = a3;
      v68 = 2049;
      v69 = v8;
      v70 = 2049;
      v71 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,findLatestEventBeforeInternal, debugName:%{private, location:escape_only}s, time:%{private}.2f, fStartTimeSeconds:%{private}.2f, fEndTimeSeconds:%{private}.2f}", buf, 0x3Au);
    }

    v61[0] = off_100139B30;
    v61[1] = a1;
    v61[3] = v61;
    v60[0] = off_100139BB0;
    v60[1] = a1;
    v60[3] = v60;
    sub_1000104CC(buf, v61, v60);
    sub_10000F274(v60);
    sub_10000F274(v61);
    if (*(a1 + 16) <= a3)
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      if (v20 != v21 && (*(a1 + 8) & 1) != 0)
      {
        while (v21 != v20)
        {
          v22 = *(v21 - 5);
          v21 -= 5;
          if (v22 <= a3)
          {
            v47 = *(v21 + 2);
            v46 = *v21;
            if (*(v21 + 39) < 0)
            {
              sub_100004CEC(__p, v21[2], v21[3]);
            }

            else
            {
              v23 = *(v21 + 1);
              v49 = v21[4];
              *__p = v23;
            }

            goto LABEL_70;
          }
        }

        v47 = *(v20 + 2);
        v46 = *v20;
        if (*(v20 + 39) < 0)
        {
          sub_100004CEC(__p, v20[2], v20[3]);
        }

        else
        {
          v45 = *(v20 + 1);
          v49 = v20[4];
          *__p = v45;
        }

LABEL_70:
        v25 = 1;
        goto LABEL_35;
      }

      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v24 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v24 = *v24;
        }

        *v54 = 68289283;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2081;
        v59 = v24;
        v17 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestEventBefore,skipping,notReady, history:%{private, location:escape_only}s}";
        goto LABEL_33;
      }
    }

    else
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v16 = *v16;
        }

        *v54 = 68289283;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2081;
        v59 = v16;
        v17 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestEventBefore,InvalidArgs, history:%{private, location:escape_only}s}";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, v54, 0x1Cu);
      }
    }

    v25 = 0;
    LOBYTE(v46) = 0;
LABEL_35:
    v50 = v25;
    sub_100011208(buf);
    if (v50 == 1)
    {
      *buf = v47;
      *v63 = v46;
      sub_1000160CC(a2, buf);
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    while (v26 != v27)
    {
      v28 = *v26;
      if (*v26 >= a3 && v28 <= a4)
      {
        *buf = *(v26 + 8);
        *v63 = v28;
        sub_1000160CC(a2, buf);
      }

      v26 += 40;
    }

    v30 = *a2;
    v31 = *(a2 + 8);
    if (*a2 == v31)
    {
      v35 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v36 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v36 = *v36;
        }

        *buf = 68289283;
        *v63 = 2082;
        *&v63[2] = "";
        v64 = 2081;
        v65 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,findAllValTimestamp,no val available, history:%{private, location:escape_only}s}", buf, 0x1Cu);
      }
    }

    else
    {
      v32 = v31 - 1;
      v33 = *(a2 + 16);
      if (v31 >= v33)
      {
        v37 = (v31 - v30) >> 4;
        v38 = v37 + 1;
        if ((v37 + 1) >> 60)
        {
          sub_10000509C();
        }

        v39 = v33 - v30;
        if (v39 >> 3 > v38)
        {
          v38 = v39 >> 3;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF0)
        {
          v40 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          sub_1000168A0(v40);
        }

        v41 = (16 * v37);
        *v41 = *v32;
        v34 = 16 * v37 + 16;
        v42 = *(a2 + 8) - *a2;
        v43 = v41 - v42;
        memcpy(v41 - v42, *a2, v42);
        v44 = *a2;
        *a2 = v43;
        *(a2 + 8) = v34;
        *(a2 + 16) = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v31 = *v32;
        v34 = (v31 + 1);
      }

      *(a2 + 8) = v34;
      *(*a2 + 8) = a3;
      *(v34 - 8) = a4;
    }

    if (v50 == 1 && SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    return sub_100011208(v53);
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v18 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v18 = *v18;
    }

    *buf = 68289283;
    *v63 = 2082;
    *&v63[2] = "";
    v64 = 2081;
    v65 = v18;
    v11 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValTimestamp,skipping,notReady, history:%{private, location:escape_only}s}";
    goto LABEL_21;
  }

  return sub_100011208(v53);
}

void sub_10000C2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100011208(v41 - 176);
  sub_100011208(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C34C(double **a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v4 == v5)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,findWeightedMedianOfEvents,empty events}", buf, 0x12u);
    }

    return 0;
  }

  else
  {
    if (v5 - v4 == 16)
    {
      v6 = *v4;
LABEL_9:
      *a2 = v6;
      return 1;
    }

    sub_10000DD28(v4, v5, 126 - 2 * __clz((v5 - v4) >> 4), 1);
    v10 = *a1;
    v9 = a1[1];
    if (*(v9 - 1) - (*a1)[1] < 2.22044605e-16)
    {
      v6 = *v10;
      goto LABEL_9;
    }

    if (v9 - v10 == 16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v15 = 0;
      v16 = 0;
      __p = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (v10[v12 + 1] != v10[v12 + 3])
        {
          sub_10000EE74(1uLL);
        }

        ++v13;
        v12 += 2;
      }

      while (((v9 - v10) >> 4) - 1 > v13);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      __p = 0;
      v15 = 0;
      v16 = 0;
    }

    v8 = SACommonUtils::weightedMedian(&v17, &__p, a2);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return v8;
}

void sub_10000C770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C7E0(uint64_t a1, double a2, double a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2049;
    *&v22[12] = a2;
    v23 = 2049;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularQualityWithinWindow, start:%{private}.2f, end:%{private}.2f}", buf, 0x26u);
  }

  *buf = 0;
  *v22 = 0;
  *&v22[8] = 0;
  sub_10000BC50(a1 + 1224, buf, a2, a3);
  v7 = *buf;
  if (*buf == *v22)
  {
    v12 = SALogObjectGeneral;
    v11 = 0xFFFFFFFFLL;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      v20 = -1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularQualityWithinWindow,empty history, quality:%{private}d}", v15, 0x18u);
    }
  }

  else
  {
    v14 = 0;
    v8 = sub_10000C34C(buf, &v14);
    v9 = SALogObjectGeneral;
    v10 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        *v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 1025;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularQualityWithinWindow, quality:%{private}d}", v15, 0x18u);
      }

      v11 = v14;
    }

    else
    {
      if (v10)
      {
        *v15 = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularQualityWithinWindow,invalid median conversion}", v15, 0x12u);
      }

      v11 = 0xFFFFFFFFLL;
    }
  }

  if (v7)
  {
    operator delete(v7);
  }

  return v11;
}

void sub_10000CA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000CA6C(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_10000BC50(a1 + 1424, &v20, a3, a4);
  v5 = v20;
  if (v20 == v21)
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28[0] = "Unknown";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRatWithinWindow,empty history, rat:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_1000060C4(a2, "Unknown");
  }

  else
  {
    v19 = 0;
    if (sub_10000C34C(&v20, &v19))
    {
      sub_1000060C4(a2, "Unknown");
      v6 = *(a2 + 23);
      if (v19 <= 2)
      {
        if (v19)
        {
          if (v19 == 1)
          {
            if (v6 < 0)
            {
              a2[1] = 3;
              v12 = *a2;
            }

            else
            {
              *(a2 + 23) = 3;
              v12 = a2;
            }

            *(v12 + 2) = 77;
            v14 = 21319;
LABEL_47:
            *v12 = v14;
            v13 = v12 + 3;
            goto LABEL_48;
          }

          if (v19 == 2)
          {
            if (v6 < 0)
            {
              a2[1] = 6;
              v7 = *a2;
            }

            else
            {
              *(a2 + 23) = 6;
              v7 = a2;
            }

            *(v7 + 2) = 30769;
            v16 = 1095582787;
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v19 <= 4)
        {
          if (v19 != 3)
          {
            if (v6 < 0)
            {
              a2[1] = 6;
              v7 = *a2;
            }

            else
            {
              *(a2 + 23) = 6;
              v7 = a2;
            }

            *(v7 + 2) = 16723;
            v16 = 1311593038;
LABEL_44:
            *v7 = v16;
            v13 = v7 + 6;
            goto LABEL_48;
          }

          if (v6 < 0)
          {
            a2[1] = 3;
            v12 = *a2;
          }

          else
          {
            *(a2 + 23) = 3;
            v12 = a2;
          }

          *(v12 + 2) = 69;
          v14 = 21580;
          goto LABEL_47;
        }

        if (v19 == 5)
        {
          if (v6 < 0)
          {
            a2[1] = 5;
            v10 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
            v10 = a2;
          }

          *(v10 + 4) = 65;
          v15 = 1395479118;
          goto LABEL_41;
        }

        if (v19 == 6)
        {
          if (v6 < 0)
          {
            a2[1] = 5;
            v10 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
            v10 = a2;
          }

          *(v10 + 4) = 114;
          v15 = 1701344335;
LABEL_41:
          *v10 = v15;
          v13 = v10 + 5;
          goto LABEL_48;
        }
      }

      if (v6 < 0)
      {
        a2[1] = 7;
        v11 = *a2;
      }

      else
      {
        *(a2 + 23) = 7;
        v11 = a2;
      }

      *(v11 + 3) = 1853321070;
      *v11 = 1852534357;
      v13 = v11 + 7;
LABEL_48:
      *v13 = 0;
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        *buf = 68289539;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 1025;
        LODWORD(v28[0]) = v19;
        WORD2(v28[0]) = 2081;
        *(v28 + 6) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRatWithinWindow, rat:%{private}d, ratStr:%{private, location:escape_only}s}", buf, 0x22u);
      }

      goto LABEL_53;
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRatWithinWindow,invalid median conversion}", buf, 0x12u);
    }

    sub_1000060C4(a2, "Unknown");
  }

LABEL_53:
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_10000CE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000CE94(uint64_t a1, double a2)
{
  v2 = sub_10000CF7C(a1 + 1424, a2);
  if (HIDWORD(v2))
  {
    if ((v2 - 1) <= 4)
    {
      return dword_1000DE964[(v2 - 1)];
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 68289026;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRAT,no RAT}", v5, 0x12u);
    }
  }

  return 4;
}

unint64_t sub_10000CF7C(uint64_t a1, double a2)
{
  v28[0] = off_100139C30;
  v28[1] = a1;
  v28[3] = v28;
  v27[0] = off_100139CB0;
  v27[1] = a1;
  v27[3] = v27;
  sub_1000104CC(v29, v28, v27);
  sub_10000F274(v27);
  sub_10000F274(v28);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v19 = 68289539;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2081;
    v24 = v5;
    v25 = 2081;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,findLatestValueBefore, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", &v19, 0x26u);
  }

  if (*(a1 + 16) > a2)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      v19 = 68289283;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2081;
      v24 = v8;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,InvalidArgs, history:%{private, location:escape_only}s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v19, 0x1Cu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  if (v12 == v11 || (*(a1 + 8) & 1) == 0)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v15 = *v15;
      }

      v19 = 68289283;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2081;
      v24 = v15;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,skipping,notReady, history:%{private, location:escape_only}s}";
      goto LABEL_21;
    }

LABEL_22:
    v16 = 0;
    LOBYTE(v14) = 0;
    v17 = 0;
    goto LABEL_23;
  }

  while (v11 != v12)
  {
    v13 = *(v11 - 40);
    v11 -= 40;
    if (v13 <= a2)
    {
      v14 = *(v11 + 8);
      goto LABEL_25;
    }
  }

  v14 = *(v12 + 8);
LABEL_25:
  v17 = v14 & 0xFFFFFF00;
  v16 = &_mh_execute_header;
LABEL_23:
  sub_100011208(v29);
  return v16 | v17 | v14;
}

void sub_10000D238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_10000D254(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_10000BC50(a1 + 1624, &v22, a3, a4);
  v5 = v22;
  if (v22 == v23)
  {
    v10 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30[0] = "Unknown";
    v11 = "{msg%{public}.0s:#saBiomeProd,cellularRrcWithinWindow,empty history, rrc:%{private, location:escape_only}s}";
    v12 = v10;
    v13 = 28;
    goto LABEL_11;
  }

  v21 = 0;
  v6 = sub_10000C34C(&v22, &v21);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if ((v6 & 1) == 0)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v11 = "{msg%{public}.0s:#saBiomeProd,cellularRrcWithinWindow,invalid median conversion}";
    v12 = v7;
    v13 = 18;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v11, buf, v13);
LABEL_12:
    v9 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8)
  {
    *buf = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 1025;
    LODWORD(v30[0]) = v21;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRrcWithinWindow, rrc:%{private}d}", buf, 0x18u);
  }

  v9 = v21;
  if (v5)
  {
LABEL_13:
    operator delete(v5);
  }

LABEL_14:
  sub_1000060C4(a2, "Unknown");
  v14 = *(a2 + 23);
  if (v9 == 2)
  {
    if (v14 < 0)
    {
      a2[1] = 9;
      v17 = *a2;
    }

    else
    {
      *(a2 + 23) = 9;
      v17 = a2;
    }

    *(v17 + 8) = 100;
    *v17 = *"Connected";
    v18 = v17 + 9;
  }

  else if (v9 == 1)
  {
    if (v14 < 0)
    {
      a2[1] = 4;
      v16 = *a2;
    }

    else
    {
      *(a2 + 23) = 4;
      v16 = a2;
    }

    *v16 = 1701602377;
    v18 = v16 + 1;
  }

  else
  {
    if (v14 < 0)
    {
      a2[1] = 7;
      v15 = *a2;
    }

    else
    {
      *(a2 + 23) = 7;
      v15 = a2;
    }

    *(v15 + 3) = 1853321070;
    *v15 = 1852534357;
    v18 = v15 + 7;
  }

  *v18 = 0;
  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 68289539;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 1025;
    LODWORD(v30[0]) = v9;
    WORD2(v30[0]) = 2081;
    *(v30 + 6) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,cellularRrcWithinWindow, rrc:%{private}d, rrcStr:%{private, location:escape_only}s}", buf, 0x22u);
  }
}

void sub_10000D58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

double sub_10000D5B0(uint64_t a1, double *a2)
{
  v3 = a1 + 1624;
  v4 = *a2;
  v26[0] = off_100139D30;
  v26[1] = a1 + 1624;
  v26[3] = v26;
  v25[0] = off_100139DB0;
  v25[1] = a1 + 1624;
  v25[3] = v25;
  sub_1000104CC(buf, v26, v25);
  sub_10000F274(v25);
  sub_10000F274(v26);
  if (*(a1 + 1656) == *(a1 + 1664))
  {
    v6 = SALogObjectGeneral;
    v7 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v19 = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v8 = "{msg%{public}.0s:#saEventHistory,findLastValueDuration,empty history}";
    goto LABEL_7;
  }

  v5 = sub_10000CF7C(v3, v4);
  if (!HIDWORD(v5))
  {
    v6 = SALogObjectGeneral;
    v7 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v19 = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v8 = "{msg%{public}.0s:#saEventHistory,findLastValueDuration,no event before timestamp}";
LABEL_7:
    v9 = v6;
    v10 = 18;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v8, &v19, v10);
    goto LABEL_17;
  }

  v11 = *(a1 + 1664);
  v12 = *(a1 + 1656);
  v7 = -1.0;
  if (v11 != v12)
  {
    v13 = *(a1 + 1664);
    do
    {
      v14 = *(v13 - 40);
      v13 -= 40;
      v15 = v14;
      if (v14 <= v4)
      {
        if (*(v11 - 32) != v5)
        {
          break;
        }

        v7 = v4 - v15;
      }

      v11 = v13;
    }

    while (v13 != v12);
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v19 = 68289283;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2049;
    v24 = v7;
    v8 = "{msg%{public}.0s:#saEventHistory,findLastValueDuration,, lastValueDuration:%{private}.2f}";
    v9 = v16;
    v10 = 28;
    goto LABEL_16;
  }

LABEL_17:
  sub_100011208(buf);
  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 2049;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saBiomeProd,timeSinceRrcChanged, timeSinceRrcChanged:%{private}.2f}", buf, 0x1Cu);
  }

  return v7 * 1000.0;
}

void sub_10000D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100011208(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_10000D8B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*a1 + 160))(a1) - 1;
  if (v3 > 3)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_100139E40[v3];
  }

  return sub_1000060C4(a2, v4);
}

const mach_header_64 *sub_10000D92C(uint64_t a1, double a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = -858993459 * ((*(a1 + 1864) - *(a1 + 1856)) >> 3);
    v7[0] = 68289283;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1025;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saBiomeProd,apsdConnectivityStatus, historyCount:%{private}d}", v7, 0x18u);
  }

  result = sub_10000CF7C(a1 + 1824, a2);
  if (result <= &_mh_execute_header)
  {
    return &_mh_execute_header;
  }

  return result;
}

void sub_10000DA38(uint64_t a1)
{
  sub_10000EEBC(a1);

  operator delete();
}

uint64_t sub_10000DA70(uint64_t a1)
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

uint64_t sub_10000DAF0(uint64_t a1)
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

void sub_10000DB84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000DBD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000DBD8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_10000DC28(uint64_t a1)
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

uint64_t sub_10000DCA8(uint64_t a1)
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

double *sub_10000DD28(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 < v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 4);
          *(a2 - 4) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 >= v92)
      {
        if (v93 < v90)
        {
          v140 = *(v8 + 4);
          v141 = *(v8 + 8);
          *(v8 + 4) = v141;
          *(v8 + 8) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 < v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 4) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 < v90)
        {
          *v8 = *(v8 + 8);
          *(v8 + 8) = v94;
          goto LABEL_187;
        }

        *v8 = *(v8 + 4);
        *(v8 + 4) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 < v92)
        {
          *(v8 + 4) = *(v8 + 8);
          *(v8 + 8) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v151 = *(a2 - 1);
      if (v151 >= v93)
      {
        return result;
      }

      v152 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 4);
      *(a2 - 4) = v152;
      v8[5] = v151;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v153 = v8[3];
      if (v137 >= v153)
      {
        return result;
      }

      v154 = *(v8 + 4);
      v155 = *(v8 + 8);
      *(v8 + 4) = v155;
      *(v8 + 8) = v154;
      v8[3] = v137;
      v8[5] = v153;
      v138 = v8[1];
      if (v137 >= v138)
      {
        return result;
      }

      v156 = *v8;
      *v8 = v155;
      *(v8 + 4) = v156;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return sub_10000E8E0(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 < v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = v8 + v103;
                *(v104 + 4) = *(v8 + v103);
                *(v104 + 3) = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 >= *(v104 - 1))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 2;
            v98 += 16;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 3;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 < v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 2) = *(v147 - 6);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 < *(v148 - 4));
            *(v147 - 2) = v146;
            *v147 = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] < v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 >= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] < v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 >= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 >= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 4);
          v123[1] = *(a2 - 1);
          *(a2 - 4) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 < v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 < v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 < v13)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 < v34)
          {
            v35 = *(v8 + 4);
            *(v8 + 4) = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 4);
        if (v30 < v28)
        {
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        *(v8 + 4) = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 < v29)
        {
          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v42 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 < v44)
          {
            v45 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 4);
            *(v10 + 4) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 8);
        if (v40 < v38)
        {
          *(v8 + 8) = *(a2 - 12);
          *(a2 - 12) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        *(v8 + 8) = *(v10 + 4);
        *(v10 + 4) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 < v39)
        {
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 >= v48)
      {
        v50 = *v10;
        if (v49 >= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 4);
          *v10 = v51;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 >= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 < v47)
        {
          *v27 = *(v10 + 4);
          *(v10 + 4) = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 < v48)
        {
          v70 = *(v10 + 4);
          *v10 = v70;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 < v15)
    {
      *v10 = *(a2 - 4);
      *(a2 - 4) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 < v16)
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v8[v56 + 3];
        v56 += 2;
      }

      while (v57 < v55);
      v58 = &v8[v56];
      v59 = a2;
      if (v56 == 2)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 < v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 >= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = *(v64 + 8);
          *(v64 + 8) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 < v55);
          do
          {
            v68 = *(v64 - 8);
            v64 -= 16;
          }

          while (v68 >= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = sub_10000EABC(v7, v8 - 2);
      result = sub_10000EABC(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = sub_10000DD28(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v55 >= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v55 >= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v55 < v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v55 >= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 < v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 >= v86)
  {
    if (v87 >= v85)
    {
      return result;
    }

    v136 = *(v8 + 4);
    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 >= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = *(v8 + 4);
    *(v8 + 4) = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 >= v85)
  {
    *v8 = *(v8 + 4);
    *(v8 + 4) = v88;
    v8[1] = v85;
    v8[3] = v86;
    v150 = *(a2 - 1);
    if (v150 >= v86)
    {
      return result;
    }

    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v88;
    v8[3] = v150;
  }

  else
  {
    *v8 = *(a2 - 4);
    *(a2 - 4) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

double *sub_10000E8E0(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_10000EABC(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 < v7)
      {
        v9 = *a1;
        if (v8 >= v6)
        {
          *a1 = *(a1 + 4);
          *(a1 + 4) = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 >= v7)
          {
            return 1;
          }

          *(a1 + 4) = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v22 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 >= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = *(a1 + 4);
      *(a1 + 4) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10000E8E0(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 >= v19)
    {
      if (v20 >= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 4);
      v30 = *(a1 + 8);
      *(a1 + 4) = v30;
      *(a1 + 8) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 >= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      *(a1 + 4) = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 >= v17)
      {
        *a1 = *(a1 + 4);
        *(a1 + 4) = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 >= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 4) = *(a1 + 8);
        *(a1 + 8) = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 >= v20)
    {
      return 1;
    }

    v43 = *(a1 + 8);
    *(a1 + 8) = *(a2 - 4);
    *(a2 - 4) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 >= v44)
    {
      return 1;
    }

    v45 = *(a1 + 4);
    v46 = *(a1 + 8);
    *(a1 + 4) = v46;
    *(a1 + 8) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 >= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    *(a1 + 4) = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 < v12)
  {
    v15 = *a1;
    if (v14 >= v10)
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 >= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 4) = *(a1 + 8);
      *(a1 + 8) = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v15;
    }

    goto LABEL_33;
  }

  if (v14 < v10)
  {
    v26 = *(a1 + 4);
    v27 = *(a1 + 8);
    *(a1 + 4) = v27;
    *(a1 + 8) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 < v12)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 4) = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 < v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 12) = *(a1 + v39 + 32);
        *(v40 + 7) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 >= *(v40 + 3))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void sub_10000EE74(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10000EEBC(uint64_t a1)
{
  *a1 = off_100138DE8;
  if (*(a1 + 2015) < 0)
  {
    operator delete(*(a1 + 1992));
  }

  sub_10000DA70(a1 + 1936);
  sub_10000DAF0(a1 + 1904);
  if (*(a1 + 1903) < 0)
  {
    operator delete(*(a1 + 1880));
  }

  v3 = (a1 + 1856);
  sub_10000DB84(&v3);

  if (*(a1 + 1815) < 0)
  {
    operator delete(*(a1 + 1792));
  }

  sub_10000DA70(a1 + 1736);
  sub_10000DAF0(a1 + 1704);
  if (*(a1 + 1703) < 0)
  {
    operator delete(*(a1 + 1680));
  }

  v3 = (a1 + 1656);
  sub_10000DB84(&v3);

  if (*(a1 + 1615) < 0)
  {
    operator delete(*(a1 + 1592));
  }

  sub_10000DA70(a1 + 1536);
  sub_10000DAF0(a1 + 1504);
  if (*(a1 + 1503) < 0)
  {
    operator delete(*(a1 + 1480));
  }

  v3 = (a1 + 1456);
  sub_10000DB84(&v3);

  if (*(a1 + 1415) < 0)
  {
    operator delete(*(a1 + 1392));
  }

  sub_10000DA70(a1 + 1336);
  sub_10000DAF0(a1 + 1304);
  if (*(a1 + 1303) < 0)
  {
    operator delete(*(a1 + 1280));
  }

  v3 = (a1 + 1256);
  sub_10000DB84(&v3);

  if (*(a1 + 1215) < 0)
  {
    operator delete(*(a1 + 1192));
  }

  sub_10000DC28(a1 + 1136);
  sub_10000DCA8(a1 + 1104);
  if (*(a1 + 1103) < 0)
  {
    operator delete(*(a1 + 1080));
  }

  v3 = (a1 + 1056);
  sub_10000DB84(&v3);

  if (*(a1 + 1015) < 0)
  {
    operator delete(*(a1 + 992));
  }

  sub_10000DA70(a1 + 936);
  sub_10000DAF0(a1 + 904);
  if (*(a1 + 903) < 0)
  {
    operator delete(*(a1 + 880));
  }

  v3 = (a1 + 856);
  sub_10000DB84(&v3);

  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  sub_10000DC28(a1 + 736);
  sub_10000DCA8(a1 + 704);
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = (a1 + 656);
  sub_10000DB84(&v3);

  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  sub_10000DC28(a1 + 536);
  sub_10000DCA8(a1 + 504);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v3 = (a1 + 456);
  sub_10000DB84(&v3);

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  sub_10000DC28(a1 + 336);
  sub_10000DCA8(a1 + 304);
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  v3 = (a1 + 256);
  sub_10000DB84(&v3);

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  sub_10000DC28(a1 + 136);
  sub_10000DCA8(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = (a1 + 56);
  sub_10000DB84(&v3);

  return a1;
}

uint64_t sub_10000F1DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000F274(uint64_t a1)
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

uint64_t sub_10000F2F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = xmmword_1000DD6E0;
  *(a1 + 160) = 0;
  sub_1000060C4((a1 + 168), "Unknown");
  *(a1 + 192) = 0;
  return a1;
}

void sub_10000F378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000DC28(v2 + 112);
  sub_10000DCA8(v2 + 80);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  sub_10000DB84(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10000F3B8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = xmmword_1000DD6E0;
  *(a1 + 160) = 0;
  sub_1000060C4((a1 + 168), "Unknown");
  *(a1 + 192) = 0;
  return a1;
}

void sub_10000F43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000DA70(v2 + 112);
  sub_10000DAF0(v2 + 80);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  sub_10000DB84(va);

  _Unwind_Resume(a1);
}

void sub_10000F4A8(uint64_t a1)
{

  operator delete();
}

id sub_10000F4FC(uint64_t a1, void *a2)
{
  *a2 = off_100138F50;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10000F544(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10000F564(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100138FC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000F5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_10000F604(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= 0.0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= *(a1 + 144))
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v9 = *v9;
        }

        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2081;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,maxHistoryLenReached, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
      }

      sub_100010758(&v20, (v7 + 40), v6, v7);
      v6 = v10;
      for (i = *(a1 + 40); i != v6; i -= 5)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 3));
        }
      }

      *(a1 + 40) = v6;
      *(a1 + 160) = 1;
      v7 = *(a1 + 32);
    }

    if (v6 != v7)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3);
      do
      {
        v13 = v12 >> 1;
        v14 = &v6[-5 * (v12 >> 1)];
        v16 = *(v14 - 5);
        v15 = v14 - 5;
        v12 += ~(v12 >> 1);
        if (*a2 >= v16)
        {
          v12 = v13;
        }

        else
        {
          v6 = v15;
        }
      }

      while (v12);
    }

    sub_1000105E4((a1 + 32), v6, a2);
    v17 = *(a1 + 16);
    v18 = *a2;
    if (v17 < 0.0 || v17 > v18)
    {
      *(a1 + 16) = v18;
    }

    if (*(a1 + 24) < v18)
    {
      *(a1 + 24) = v18;
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,updateWithInvalidArgs, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
    }
  }
}

void sub_10000F87C(uint64_t a1)
{
  v2 = *a1;
  if (*a1 && *(a1 + 9) == 1)
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      *buf = 68289283;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2081;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save,dispatched, debugName:%{private, location:escape_only}s}", buf, 0x1Cu);
      v2 = *a1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010DFC;
    block[3] = &unk_1001390D0;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {

    sub_100010E04(a1);
  }
}

uint64_t sub_10000FA74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100138FE0;
  a2[1] = v2;
  return result;
}

void sub_10000FAA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_10000FBBC(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10000FB70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10000FBBC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v3;
    v18 = 2081;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,load, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if ((*(a1 + 192) & 1) == 0)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v7;
    v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,deferLoadingTillFirstUnlock, filePath:%{private, location:escape_only}s}";
    goto LABEL_15;
  }

  v5 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      return;
    }

    v9 = *v5;
  }

  else if (!*(a1 + 79))
  {
    return;
  }

  sub_1000060C4(buf, "0003");
  v10 = sub_1000AC508();
  v11 = v10;
  if (SBYTE3(v17) < 0)
  {
    operator delete(*buf);
    if (v11)
    {
LABEL_20:
      operator new[]();
    }
  }

  else if (v10)
  {
    goto LABEL_20;
  }

  v12 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v12 = *v5;
  }

  if (sub_1000ABE8C(v12))
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = v5;
      v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,unabletToRemoveFile, filePath:%{private, location:escape_only}s}";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
    }
  }
}

void sub_1000101A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_1000AC484(&a30);
  operator delete[]();
}

uint64_t sub_1000102BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100010374(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139060;
  a2[1] = v2;
  return result;
}

__n128 sub_1000103A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100010480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000104CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000F1DC(a1, a3);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init}", v8, 0x12u);
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    sub_1000053C4();
  }

  (*(*v6 + 48))(v6);
  return a1;
}

unint64_t sub_1000105E4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    if (v13 > 0x666666666666666)
    {
      sub_10000509C();
    }

    v14 = a2 - v12;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v15 >= 0x333333333333333)
    {
      v17 = 0x666666666666666;
    }

    else
    {
      v17 = v16;
    }

    v23 = a1;
    if (v17)
    {
      sub_100010BCC(a1, v17);
    }

    v19 = 0;
    v20 = 8 * (v14 >> 3);
    v21 = v20;
    v22 = 0;
    sub_1000108DC(&v19, a3);
    v4 = sub_100010A6C(a1, &v19, v4);
    sub_100010D68(&v19);
  }

  else if (a2 == v6)
  {
    sub_1000107E4(a1, a3);
  }

  else
  {
    sub_100010854(a1, a2, v6, a2 + 40);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 5;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v11 = *v10;
    *(v4 + 8) = *(v10 + 8);
    *v4 = v11;
    std::string::operator=((v4 + 16), (v10 + 2));
  }

  return v4;
}

void sub_100010744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010D68(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100010758(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *(a4 + 8) = *(v5 + 8);
      *a4 = v7;
      if (*(a4 + 39) < 0)
      {
        operator delete(*(a4 + 16));
      }

      v8 = *(v5 + 1);
      *(a4 + 32) = v5[4];
      *(a4 + 16) = v8;
      *(v5 + 39) = 0;
      *(v5 + 16) = 0;
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_1000107E4(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *v3 = v4;
  if (*(a2 + 39) < 0)
  {
    result = sub_100004CEC((v3 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(v3 + 32) = a2[4];
    *(v3 + 16) = v5;
  }

  v2[1] = v3 + 40;
  return result;
}

uint64_t sub_100010854(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *v8 = v10;
      v11 = *(v9 + 16);
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 16) = v11;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
      v9 += 40;
      v8 += 40;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100010B28(&v13, a2, v7, v6);
}

void *sub_1000108DC(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x999999999999999ALL * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v16[4] = v3[4];
      sub_100010BCC(v13, v12);
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3) + 1 + ((0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -5 * (v6 >> 1);
    result = sub_100010758(v16, v5, v4, &v5[-5 * (v6 >> 1)]);
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  v14 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *v4 = v14;
  if (*(a2 + 39) < 0)
  {
    result = sub_100004CEC((v4 + 16), a2[2], a2[3]);
  }

  else
  {
    v15 = *(a2 + 1);
    *(v4 + 32) = a2[4];
    *(v4 + 16) = v15;
  }

  v3[2] += 40;
  return result;
}

uint64_t sub_100010A6C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_100010C24(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_100010C24(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_100010B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 40);
      *(v9 - 32) = *(a3 + v7 - 32);
      *(v9 - 40) = v10;
      v11 = a4 + v7 - 24;
      if (*(a4 + v7 - 1) < 0)
      {
        operator delete(*v11);
      }

      v7 -= 40;
      v12 = *(v8 - 24);
      *(v11 + 16) = *(v8 - 8);
      *v11 = v12;
      *(v8 - 1) = 0;
      *(v8 - 24) = 0;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_100010BCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_100010C24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }

    while (v5 != a3);
  }

  return sub_100010CE8(v10);
}

uint64_t sub_100010CE8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100010D20(a1);
  }

  return a1;
}

void sub_100010D20(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_100010D68(uint64_t a1)
{
  sub_100010DA0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100010DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_100010E04(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = v3;
    v20 = 2081;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (*(a1 + 192))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    sub_1000060C4(&__p, "0003");
    sub_1000ACC04(buf, v5, &__p);
    if (SBYTE3(v13) < 0)
    {
      operator delete(__p);
    }

    if (v22)
    {
      v6 = *(a1 + 152);
      operator new[]();
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v10 = *v10;
      }

      __p = 68289283;
      v12[0] = 2082;
      *&v12[1] = "";
      v12[5] = 2081;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,cannotOpenFileToSave, history:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }

    sub_1000ACF88(buf);
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,deferSavingTillFirstUnlock, history:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    *(a1 + 193) = 1;
  }
}

uint64_t sub_100011208(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,released}", v5, 0x12u);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3);
  sub_10000F274(a1);
  return a1;
}

void sub_100011300(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_10001130C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000113D0;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_1000113D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000114BC;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_1000114BC(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000114BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100011518(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100011618;
  v7[3] = &unk_100139158;
  sub_1000117BC(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_10001198C(v9);
}

void sub_100011618(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100011720;
  v3[3] = &unk_100139158;
  sub_1000117BC(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_100011720(v3);

  sub_10001198C(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_100011720(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_1000117BC(uint64_t a1, uint64_t a2)
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

void sub_100011880(uint64_t a1)
{

  operator delete();
}

id sub_1000118D4(uint64_t a1, void *a2)
{
  *a2 = off_1001391C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10001191C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100011940(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001198C(uint64_t a1)
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

uint64_t sub_100011A0C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100011AD0;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_100011AD0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100011BBC;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_100011BBC(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100011BBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100011C04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100011D04;
  v7[3] = &unk_100139250;
  sub_100011EA8(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_100012078(v9);
}

void sub_100011D04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100011E0C;
  v3[3] = &unk_100139250;
  sub_100011EA8(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_100011E0C(v3);

  sub_100012078(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_100011E0C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_100011EA8(uint64_t a1, uint64_t a2)
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

void sub_100011F6C(uint64_t a1)
{

  operator delete();
}

id sub_100011FC0(uint64_t a1, void *a2)
{
  *a2 = off_1001392C0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_100012008(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10001202C(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012078(uint64_t a1)
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

void sub_1000120F8(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= 0.0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= *(a1 + 144))
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v9 = *v9;
        }

        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2081;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,maxHistoryLenReached, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
      }

      sub_100013134(&v20, (v7 + 40), v6, v7);
      v6 = v10;
      for (i = *(a1 + 40); i != v6; i -= 5)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 3));
        }
      }

      *(a1 + 40) = v6;
      *(a1 + 160) = 1;
      v7 = *(a1 + 32);
    }

    if (v6 != v7)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3);
      do
      {
        v13 = v12 >> 1;
        v14 = &v6[-5 * (v12 >> 1)];
        v16 = *(v14 - 5);
        v15 = v14 - 5;
        v12 += ~(v12 >> 1);
        if (*a2 >= v16)
        {
          v12 = v13;
        }

        else
        {
          v6 = v15;
        }
      }

      while (v12);
    }

    sub_100012FC0((a1 + 32), v6, a2);
    v17 = *(a1 + 16);
    v18 = *a2;
    if (v17 < 0.0 || v17 > v18)
    {
      *(a1 + 16) = v18;
    }

    if (*(a1 + 24) < v18)
    {
      *(a1 + 24) = v18;
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,updateWithInvalidArgs, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
    }
  }
}

void sub_100012370(uint64_t a1)
{
  v2 = *a1;
  if (*a1 && *(a1 + 9) == 1)
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      *buf = 68289283;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2081;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save,dispatched, debugName:%{private, location:escape_only}s}", buf, 0x1Cu);
      v2 = *a1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000136FC;
    block[3] = &unk_1001390D0;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {

    sub_100013704(a1);
  }
}

uint64_t sub_100012568(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139350;
  a2[1] = v2;
  return result;
}

void sub_100012594(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100012664(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000126B0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v3;
    v18 = 2081;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,load, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if ((*(a1 + 192) & 1) == 0)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v7;
    v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,deferLoadingTillFirstUnlock, filePath:%{private, location:escape_only}s}";
    goto LABEL_15;
  }

  v5 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      return;
    }

    v9 = *v5;
  }

  else if (!*(a1 + 79))
  {
    return;
  }

  sub_1000060C4(buf, "0003");
  v10 = sub_1000AC508();
  v11 = v10;
  if (SBYTE3(v17) < 0)
  {
    operator delete(*buf);
    if (v11)
    {
LABEL_20:
      operator new[]();
    }
  }

  else if (v10)
  {
    goto LABEL_20;
  }

  v12 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v12 = *v5;
  }

  if (sub_1000ABE8C(v12))
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = v5;
      v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,unabletToRemoveFile, filePath:%{private, location:escape_only}s}";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
    }
  }
}

void sub_100012C98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_1000AC484(&a30);
  operator delete[]();
}

uint64_t sub_100012DB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100012E68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001393D0;
  a2[1] = v2;
  return result;
}

__n128 sub_100012E94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100012F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100012FC0(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    if (v13 > 0x666666666666666)
    {
      sub_10000509C();
    }

    v14 = a2 - v12;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v15 >= 0x333333333333333)
    {
      v17 = 0x666666666666666;
    }

    else
    {
      v17 = v16;
    }

    v23 = a1;
    if (v17)
    {
      sub_1000135A8(a1, v17);
    }

    v19 = 0;
    v20 = 8 * (v14 >> 3);
    v21 = v20;
    v22 = 0;
    sub_1000132B8(&v19, a3);
    v4 = sub_100013448(a1, &v19, v4);
    sub_100010D68(&v19);
  }

  else if (a2 == v6)
  {
    sub_1000131C0(a1, a3);
  }

  else
  {
    sub_100013230(a1, a2, v6, a2 + 40);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 5;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v11 = *v10;
    *(v4 + 8) = *(v10 + 2);
    *v4 = v11;
    std::string::operator=((v4 + 16), (v10 + 2));
  }

  return v4;
}

void sub_100013120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010D68(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100013134(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *(a4 + 8) = *(v5 + 2);
      *a4 = v7;
      if (*(a4 + 39) < 0)
      {
        operator delete(*(a4 + 16));
      }

      v8 = *(v5 + 1);
      *(a4 + 32) = v5[4];
      *(a4 + 16) = v8;
      *(v5 + 39) = 0;
      *(v5 + 16) = 0;
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_1000131C0(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 39) < 0)
  {
    result = sub_100004CEC((v3 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(v3 + 32) = a2[4];
    *(v3 + 16) = v5;
  }

  v2[1] = v3 + 40;
  return result;
}

uint64_t sub_100013230(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *v8 = v10;
      v11 = *(v9 + 16);
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 16) = v11;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
      v9 += 40;
      v8 += 40;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100013504(&v13, a2, v7, v6);
}

void *sub_1000132B8(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x999999999999999ALL * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v16[4] = v3[4];
      sub_1000135A8(v13, v12);
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3) + 1 + ((0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -5 * (v6 >> 1);
    result = sub_100013134(v16, v5, v4, &v5[-5 * (v6 >> 1)]);
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  v14 = *a2;
  *(v4 + 8) = *(a2 + 2);
  *v4 = v14;
  if (*(a2 + 39) < 0)
  {
    result = sub_100004CEC((v4 + 16), a2[2], a2[3]);
  }

  else
  {
    v15 = *(a2 + 1);
    *(v4 + 32) = a2[4];
    *(v4 + 16) = v15;
  }

  v3[2] += 40;
  return result;
}

uint64_t sub_100013448(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_100013600(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_100013600(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_100013504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 40);
      *(v9 - 32) = *(a3 + v7 - 32);
      *(v9 - 40) = v10;
      v11 = a4 + v7 - 24;
      if (*(a4 + v7 - 1) < 0)
      {
        operator delete(*v11);
      }

      v7 -= 40;
      v12 = *(v8 - 24);
      *(v11 + 16) = *(v8 - 8);
      *v11 = v12;
      *(v8 - 1) = 0;
      *(v8 - 24) = 0;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}