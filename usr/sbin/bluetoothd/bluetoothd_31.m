void sub_10022E154()
{
  if (sub_100243344() < 4)
  {

    sub_1003043EC(off_100AE7DA8);
  }

  else
  {
    v5 = sub_10024E040(sub_10022E628, 1, &unk_1008A3F20, v0, v1, v2, v3, v4);
    if (v5)
    {
      v6 = v5;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_WriteEIR", v7, v8, v9, v10, v11, v12, v13, v15);
        v14 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }

      sub_1003044D0(off_100AE7DA8, v6);
    }
  }
}

void sub_10022E21C()
{
  v0 = sub_10002223C();
  if (v0)
  {
    v1 = v0;
    sub_100304AF8("OI_LinkKeyStorage_Init failed %!\n", v0);
LABEL_7:

    sub_1003044D0(off_100AE7DA8, v1);
    return;
  }

  v2 = sub_1002FD254(&off_100AE7DD8);
  if (v2)
  {
    v1 = v2;
    sub_100304AF8("OI_SECMGR_RegisterESE failed %!\n", v2);
    goto LABEL_7;
  }

  v3 = sub_1002FD4B8(&off_100AE7E50);
  if (v3)
  {
    v1 = v3;
    sub_100304AF8("OI_SECMGR_RegisterSecurityDB failed %!\n", v3);
    goto LABEL_7;
  }

  sub_1002FCD94(1);

  sub_1003043EC(off_100AE7DA8);
}

void sub_10022E2F0(uint64_t a1)
{
  if ((a1 - 701) <= 0x44)
  {
    sub_100304AF8("writeStaticSettingsCb: ignoring HCI error %!\n", a1);
LABEL_8:

    sub_1003043EC(off_100AE7DA8);
    return;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeStaticSettingsCb", v2, v3, v4, v5, v6, v7, v8, v10);
    v9 = sub_10000C050(0x4Eu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  sub_1003044D0(off_100AE7DA8, a1);
}

void sub_10022E3B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (sub_10000C240())
    {
      sub_10000AF54("readNameCb", v3, v4, v5, v6, v7, v8, v9, v36);
      v10 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

LABEL_5:
    sub_1003044D0(off_100AE7DA8, v2);
    return;
  }

  if (*a2)
  {
    sub_100304AF8("Local device name is: %s\n", a2);
    v12 = *a2;
    byte_100B5F390 = *(a2 + 8);
    qword_100B5F388 = v12;
    byte_100B5F391 = 0;

    sub_1003043EC(off_100AE7DA8);
  }

  else
  {
    sub_100304AF8("Device has no name\n");
    v39 = 0;
    v38 = 0;
    if (sub_100243324(&v38))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DEVMGR_GetCachedLocalBdAddr", v18, v19, v13, v14, v15, v16, v17, v36);
        v20 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }
    }

    sub_100304ACC(&qword_100B5F388, 10, "APPLE %2x", v13, v14, v15, v16, v17, HIBYTE(v39));
    sub_100304AF8("Writing device name as %s\n", &qword_100B5F388);
    v27 = sub_10024DDD0(sub_10022E598, &qword_100B5F388, v21, v22, v23, v24, v25, v26);
    if (v27)
    {
      v2 = v27;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_ChangeLocalName", v28, v29, v30, v31, v32, v33, v34, v37);
        v35 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }

      goto LABEL_5;
    }
  }
}

void sub_10022E598(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeNameCb", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, a1);
  }

  else
  {

    sub_1003043EC(off_100AE7DA8);
  }
}

void sub_10022E628(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeEirCb", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, a1);
  }

  else
  {

    sub_1003043EC(off_100AE7DA8);
  }
}

void sub_10022E6D8(uint64_t a1)
{
  sub_100304AF8("pinCodeHandler, providing pin code %s for %:\n", off_100B522E8, a1);
  strlen(off_100B522E8);
  v2 = off_100B522E8;

  sub_1002FFB74(1, a1, v2);
}

void sub_10022E744(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerUserConfirmRequest\n");

  sub_1002FE3C8(1, a1);
}

void sub_10022E788(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerPassKeyRequest\n");

  sub_1002FE734(1, a1);
}

void sub_10022E7E8(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerOOBRequest\n");

  sub_1002FEE28(0, a1, 0, 0, 0, 0);
}

uint64_t sub_10022E868(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return 2 * (sub_100238000(v3) - 4096 > 2);
}

unint64_t sub_10022E8A0()
{
  *buffer = 0;
  v0 = getenv("BT_BAUDRATE");
  if (v0)
  {
    return strtoul(v0, 0, 0);
  }

  v2 = IOServiceNameMatching("bluetooth");
  if (!v2)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"transport-speed", kCFAllocatorDefault, 1u);
  if (v5)
  {
    v6 = v5;
    v8.location = 0;
    v8.length = 4;
    CFDataGetBytes(v5, v8, buffer);
    CFRelease(v6);
    sub_100304AF8("DeviceTree speed = %d\n", *buffer);
  }

  IOObjectRelease(v4);
  result = *buffer;
  if (*buffer >> 9 <= 0xE0u)
  {
    return 0;
  }

  return result;
}

void sub_10022E988(id a1)
{
  if (sub_10022EC1C("marconi-bt"))
  {
    sub_10022EC1C("bluetooth");
  }

  bzero(__str, 0x400uLL);
  v7 = 1024;
  if (!sysctlbyname("kern.bootargs", __str, &v7, 0, 0))
  {
    v1 = strtok(__str, " ");
    if (v1)
    {
      v2 = v1;
      do
      {
        if (strstr(v2, "bt-transport-override"))
        {
          v3 = strchr(v2, 61);
          v4 = strtol(v3 + 1, 0, 10);
          v5 = v4;
          if (v4 < 0xC)
          {
            sub_100304AF8("transport override from boot-arg: %llu", v4);
            dword_100B52308 = v5;
          }

          else
          {
            sub_100304AF8("transport override from boot-arg is invalid: %llu");
          }
        }

        else if (strstr(v2, "bt_pcie_srs"))
        {
          v6 = strchr(v2, 61);
          if ((strtol(v6 + 1, 0, 10) - 1) <= 1)
          {
            dword_100B52308 = 8;
            sub_100304AF8("Found SRS\n");
          }
        }

        v2 = strtok(0, " ");
      }

      while (v2);
    }
  }
}

CFDictionaryRef sub_10022EB48(const void **keys, const void **values, int a3)
{
  v4 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, a3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFAutorelease(v4);
  *keys = @"IOPropertyMatch";
  return CFDictionaryCreate(kCFAllocatorDefault, keys, &v6, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

uint64_t sub_10022EC1C(const char *a1)
{
  v1 = IOServiceNameMatching(a1);
  if (v1)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      v4 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"transport-encoding", kCFAllocatorDefault, 1u);
      if (v4)
      {
        v5 = v4;
        v7.location = 0;
        v7.length = 4;
        CFDataGetBytes(v4, v7, &dword_100B52308);
        CFRelease(v5);
        IOObjectRelease(v3);
        sub_100304AF8("DeviceTree transport = 0x%08x\n", dword_100B52308);
        return 0;
      }

      IOObjectRelease(v3);
    }
  }

  return 1;
}

void sub_10022ECE8(int a1, uint64_t a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = 0;
    v6 = qword_100BC9CB0;
    do
    {
      if (*v6 && **v6 == a1)
      {
        if (a2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Transport switch error %d with lm %x, contiguous %d, leRSSI %d, connTO %d:%d", v7, v8, v9, v10, v11, v12, v13, a2);
            v14 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10081427C();
            }
          }

          v15 = ++*(v6 + 224);
          if (v15 > 8)
          {
            if (off_100BC9CA0)
            {
              off_100BC9CA0(*v6, 81, 297, 165);
            }

            sub_1001BAA68(5015, "TS Switch HW Error");
          }
        }

        else
        {
          if (*(v6 + 224))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Successful TS, clearing contiguous TS failures", v16, v17, v18, v19, v20, v21, v22, v25);
              v23 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = sub_10000C0FC();
                *buf = 136446210;
                v27 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          *(v6 + 224) = 0;
        }

        v2 = dword_100BC9C74;
      }

      ++v5;
      v6 += 134;
    }

    while (v5 < v2);
  }
}

uint64_t sub_10022EEF4(char a1, __int128 *a2)
{
  v59[0] = *off_100AE7ED0;
  v59[1] = *off_100AE7EE0;
  v60 = 0;
  sub_10029F8C8(sub_10022ECE8);
  v4 = sub_100197C9C("com.apple.BT.TS", 0xFuLL, 2, 10, 1, 0, 1, 1, v59);
  if (v4)
  {
    v5 = v4;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Failed to register TS service.", v6, v7, v8, v9, v10, v11, v12, v56);
    v13 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1002DB89C(off_100AE7EF8);
  if (v14)
  {
    v5 = v14;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Failed to register TS security.", v15, v16, v17, v18, v19, v20, v21, v56);
    v22 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1000E09C0();
LABEL_9:
    bzero(qword_100BC9CB0, 0x4300uLL);
    dword_100BC9C74 = 0;
    v24 = a2[1];
    v23 = a2[2];
    v25 = *a2;
    off_100BC9CA8 = *(a2 + 6);
    *&xmmword_100BC9C88 = v24;
    *&off_100BC9C98 = v23;
    *&qword_100BC9C78 = v25;
    return v5;
  }

  bzero(qword_100BC9CB0, 0x4300uLL);
  dword_100BC9C74 = 0;
  v28 = a2[1];
  v27 = a2[2];
  v29 = *a2;
  off_100BC9CA8 = *(a2 + 6);
  *&xmmword_100BC9C88 = v28;
  *&off_100BC9C98 = v27;
  *&qword_100BC9C78 = v29;
  v58 = 0;
  if (a1)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v57 = 0;
  if ((a1 & 2) != 0 && !sub_100307990(&v58, &v57) && v58 && v57)
  {
    v31 = sub_100007618((v57 << 6) + 128, 0x10800401DCC41E5uLL);
    qword_100BC9C68 = v31;
    byte_100BC9C70 = v30 + v57;
    if (v57)
    {
      v46 = 0;
      v47 = v30 << 6;
      v48 = 80;
      do
      {
        v49 = v58;
        if (!*(v58 + v48 - 32))
        {
          sub_1000D660C();
          v49 = v58;
        }

        if (!*(v49 + v48 - 16))
        {
          sub_1000D660C();
          v49 = v58;
        }

        if (!*(v49 + v48 - 8))
        {
          sub_1000D660C();
          v49 = v58;
        }

        v50 = qword_100BC9C68 + v47;
        *v50 = v30 + v57;
        v51 = v49 + v48;
        *(v50 + 1) = *(v51 - 76);
        v52 = *(v51 - 68);
        *(v50 + 4) = *(v51 - 72);
        *(v50 + 8) = v52;
        v53 = *(v51 - 60);
        *(v50 + 10) = *(v51 - 64);
        *(v50 + 12) = *(v51 - 56);
        v54 = *(v51 - 52);
        *(v50 + 16) = v53;
        *(v50 + 20) = v54;
        *(v50 + 24) = *(v51 - 40);
        *(qword_100BC9C68 + v47 + 32) = *(v58 + v48 - 32);
        *(qword_100BC9C68 + v47 + 40) = *(v58 + v48 - 16);
        *(qword_100BC9C68 + v47 + 48) = *(v58 + v48 - 8);
        *(qword_100BC9C68 + v47 + 56) = *(v58 + v48 - 24);
        v55 = v58;
        if (*(v58 + v48 - 56) == 1 && !*(v58 + v48 - 24))
        {
          sub_1000D660C();
          *(qword_100BC9C68 + v47 + 12) = 0;
          v55 = v58;
        }

        sub_10025818C(*(qword_100BC9C68 + v47), *(v55 + v48 - 48), *(v55 + v48 - 46), *(v55 + v48));
        (*(v58 + v48 - 40))(*(v58 + v48 - 76));
        ++v46;
        v47 += 64;
        v48 += 88;
      }

      while (v46 < v57);
      v31 = qword_100BC9C68;
    }
  }

  else
  {
    v31 = sub_100007618(v30 << 6, 0x10800401DCC41E5uLL);
    qword_100BC9C68 = v31;
    byte_100BC9C70 = v30;
  }

  if (!v31)
  {
    return 106;
  }

  *v31 = 257;
  v31[2] = 1;
  v31[12] = 0;
  v32 = sub_1002C3A7C();
  v33 = sub_1002C3A7C();
  v34 = sub_1002C0F2C(v32, v33, 0x1D4Cu, 0x1Eu, 1, 1);
  *(qword_100BC9C68 + 4) = v34;
  if (!v34)
  {
    if (sub_10000C240())
    {
      v35 = sub_1002C3A7C();
      sub_10000AF54("Calculated tput is zero for data length %d and ce %d us", v36, v37, v38, v39, v40, v41, v42, v35);
      v43 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v44 = qword_100BC9C68;
  *(qword_100BC9C68 + 8) = 1179678;
  *(v44 + 16) = 0xFFFFFC1800000000;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 0u;
  *(v44 + 56) = 0;
  if (a1)
  {
    *(v44 + 64) = 514;
    *(v44 + 66) = 1;
    *(v44 + 76) = 0;
    *(v44 + 68) = 0x64000400000708;
    v45 = dword_100B52310;
    *(v44 + 80) = 300;
    *(v44 + 84) = v45;
    *(v44 + 88) = 0uLL;
    *(v44 + 104) = 0uLL;
    *(v44 + 120) = 0;
  }

  return 0;
}

void sub_10022F3E8(__int128 *a1, uint64_t a2, void *a3, int a4)
{
  if (a4 == 15 && *a3 == 0x6C7070612E6D6F63 && *(a3 + 7) == 0x53542E54422E656CLL)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Pipe 0x%4x is available for %p (lm 0x%4x) with priority %d", v7, v8, v9, v10, v11, v12, v13, a2);
      v14 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v51 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v15 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_28;
    }

    v16 = &word_100BC9CB8;
    v17 = dword_100BC9C74;
    while (*(v16 - 1) != a1)
    {
      v16 += 536;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    if (*v16 != -1)
    {
      sub_1000D660C();
      v15 = dword_100BC9C74;
    }

    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_17:
    v18 = v15;
    v19 = &word_100BC9CB8;
    while (*(v19 - 1) != a1)
    {
      v19 += 536;
      if (!--v18)
      {
        goto LABEL_28;
      }
    }

    if (*v19 != -1)
    {
      if (off_100BC9CA0)
      {
        off_100BC9CA0(a1, 81, 3210, 133);
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Already have a TS pipe fot his handle !!!", v20, v21, v22, v23, v24, v25, v26, v49);
        v27 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
LABEL_28:
      v28 = &qword_100BC9CB0[134 * v15];
      bzero(v28, 0x430uLL);
      *v28 = a1;
      *(v28 + 4) = a2;
      *(v28 + 12) = 1;
      sub_1000CCC34(v15, 1u);
      v29 = &qword_100BC9CB0[134 * dword_100BC9C74];
      *(v29 + 77) = 0;
      v29[10] = 0x100000001;
      *(v29 + 29) = 0;
      *(v29 + 47) = -30;
      sub_1000D4354((v29 + 24));
      v30 = &qword_100BC9CB0[134 * dword_100BC9C74];
      *(v30 + 40) = *(v30 + 48);
      *(v30 + 82) = *(v30 + 98);
      sub_1000D4354((v30 + 26));
      sub_100194C6C(dword_100BC9C74);
      BYTE5(qword_100BC9CB0[134 * dword_100BC9C74 + 55]) = sub_100196770(a1);
      if (sub_10000C240())
      {
        sub_10000AF54("Storing pipe start %d:%d with tsTimeoutRequired %d", v31, v32, v33, v34, v35, v36, v37, LODWORD(qword_100BC9CB0[134 * dword_100BC9C74 + 24]));
        v38 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = sub_10000C0FC();
          *buf = 136446210;
          v51 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      ++dword_100BC9C74;
      if (sub_1000CC63C(a1))
      {
        sub_1000CBF60(a2, 2u);
        if (sub_100084230() && sub_100084230() <= 0x7CF && sub_100084230() > 0xE || sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F)
        {
          sub_1002A87BC(a1, 1, 1);
        }

        if (sub_1000B6E74(a1))
        {
          sub_100232C94(a1);
        }
      }

      if (sub_100198764() && sub_10019496C(a1, 1) && sub_10000C240())
      {
        sub_10000AF54("Force upgrade TS not ready E", v40, v41, v42, v43, v44, v45, v46, v49);
        v47 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = sub_10000C0FC();
          *buf = 136446210;
          v51 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

void sub_10022F82C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("pipe 0x%4x is gone, remaining peers %d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BC9C74)
  {
    v10 = 0;
    while (1)
    {
      v11 = &qword_100BC9CB0[134 * v10];
      if (*(v11 + 4) == a1)
      {
        break;
      }

      if (++v10 == dword_100BC9C74)
      {
        return;
      }
    }

    v38 = 0;
    sub_1000D4354(&v38);
    if (sub_10000C240())
    {
      sub_10000AF54("Done with connection, %d total bytes sent in %d seconds (%d kbps)", v12, v13, v14, v15, v16, v17, v18, *(v11 + 23));
      v19 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(&xmmword_100BC9C88 + 1))
    {
      (*(&xmmword_100BC9C88 + 1))(*(v11 + 56), 0, v11[24], v38);
    }

    v21 = *v11;
    if (*(v11 + 10))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = &v11[2 * v22 + 2];
        v25 = *v24;
        if (*v24)
        {
          if (sub_1000B8B5C(*v24))
          {
            sub_1000D2538(v25, 19);
          }

          else if (*(v25 + 2) == 8)
          {
            v26 = byte_100BC9C70;
            if (byte_100BC9C70)
            {
              v27 = (qword_100BC9C68 + 48);
              while (*(v27 - 47) != *(v24 + 8))
              {
                v27 += 8;
                if (!--v26)
                {
                  goto LABEL_26;
                }
              }

              (*v27)(*v25);
            }
          }

LABEL_26:
          v23 = 1;
        }

        ++v22;
      }

      while (v22 < *(v11 + 10));
      if (v23)
      {
        goto LABEL_37;
      }
    }

    if (*(v11 + 12) != 8 || !sub_1000B6E74(v21))
    {
      goto LABEL_37;
    }

    if (v21[48])
    {
      if (v21[55] != 1 || v21[56])
      {
        goto LABEL_37;
      }

      v34 = 57;
    }

    else
    {
      v34 = 49;
    }

    sub_10024DE6C(0, &v21[v34], v28, v29, v30, v31, v32, v33);
LABEL_37:
    v35 = *(v11 + 13);
    if (v35)
    {
      sub_10002242C(v35);
    }

    if (sub_10002260C(*(v11 + 110)))
    {
      sub_10002242C(*(v11 + 110));
    }

    v36 = v11[8];
    if (v36)
    {
      sub_10000C1E8(v36);
      v11[8] = 0;
      *(v11 + 18) = 0;
    }

    v40[0] = xmmword_1008A4088;
    v40[1] = unk_1008A4098;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, v40, 2u);
    v37 = &qword_100BC9CB0[134 * --dword_100BC9C74];
    memcpy(v11, v37, 0x430uLL);
    bzero(v37, 0x430uLL);
  }
}

void sub_10022FBFC(int a1, int a2)
{
  v2 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    for (i = (qword_100BC9C68 + 2); *(i - 1) != a1; i += 64)
    {
      if (!--v2)
      {
        return;
      }
    }

    v4 = *i;
    *i = a2;
    if (v4 != a2 && dword_100BC9C74 != 0)
    {
      v6 = 0;
      v7 = *(i - 2);
      v8 = qword_100BC9CB0;
      do
      {
        sub_100233080(*v8, v7);
        ++v6;
        v8 += 134;
      }

      while (v6 < dword_100BC9C74);
    }
  }
}

void sub_10022FCA4(int a1, int a2, int a3)
{
  v3 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    for (i = (qword_100BC9C68 + 8); *(i - 7) != a1; i += 32)
    {
      if (!--v3)
      {
        return;
      }
    }

    if (*(i - 1) == a2)
    {
      v5 = *i;
      *(i - 1) = a2;
      *i = a3;
      if (v5 == a3)
      {
        return;
      }
    }

    else
    {
      *(i - 1) = a2;
      *i = a3;
    }

    if (dword_100BC9C74)
    {
      v6 = 0;
      v7 = *(i - 8);
      v8 = qword_100BC9CB0;
      do
      {
        sub_100233080(*v8, v7);
        ++v6;
        v8 += 134;
      }

      while (v6 < dword_100BC9C74);
    }
  }
}

uint64_t sub_10022FD68()
{
  sub_1002DB960(off_100AE7EF8);
  sub_1001987C4("com.apple.BT.TS", 0xFu, 2, 10);
  bzero(qword_100BC9CB0, 0x4300uLL);
  dword_100BC9C74 = 0;
  v0 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    v1 = 0;
    v2 = 0;
    v3 = qword_100BC9C68;
    do
    {
      v4 = *(v3 + v1 + 32);
      if (v4)
      {
        v4(*(v3 + v1));
        v3 = qword_100BC9C68;
        v0 = byte_100BC9C70;
      }

      ++v2;
      v1 += 64;
    }

    while (v2 < v0);
    if (v0)
    {
      sub_10000C1E8(qword_100BC9C68);
    }
  }

  qword_100BC9C68 = 0;
  byte_100BC9C70 = 0;

  return sub_100304754();
}

uint64_t sub_10022FE34(unsigned __int16 *a1, int a2, int a3)
{
  if (sub_1000CC63C(a1))
  {
    if (sub_1000B6E74(a1))
    {

      return sub_10022FF14(a1, a2, a3);
    }

    else
    {

      return sub_100230478(a1, a2, a3);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send upgrade", v7, v8, v9, v10, v11, v12, v13, v15);
      v14 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }
}

uint64_t sub_10022FF14(unsigned __int16 *a1, int a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    return 414;
  }

  for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
  {
    if (!--v3)
    {
      return 414;
    }
  }

  v8 = *i;
  __len = 0;
  if (v8 == 0xFFFF)
  {
    return 414;
  }

  if ((sub_1000CC63C(a1) & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send caps changed", v13, v14, v15, v16, v17, v18, v19, v59);
      v20 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }

  v9 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_30;
  }

  v10 = &dword_100BC9CE0;
  while (*(v10 - 20) != v8)
  {
    v10 += 268;
    if (!--v9)
    {
      goto LABEL_30;
    }
  }

  if (*v10 != 6)
  {
LABEL_30:
    if (sub_10000C240())
    {
      v30 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v31 = &dword_100BC9CE0;
        while (*(v31 - 20) != v8)
        {
          v31 += 268;
          if (!--v30)
          {
            goto LABEL_35;
          }
        }

        v32 = *v31;
      }

      else
      {
LABEL_35:
        v32 = 0;
      }

      v33 = sub_1000CC6B0(v32);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v34, v35, v36, v37, v38, v39, v40, v33);
      v41 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (!byte_100BC9C70)
  {
LABEL_24:
    if (!sub_10000C240())
    {
      return 120;
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v29 = "LE";
        goto LABEL_70;
      }

      if (a2 == 2)
      {
        v29 = "BT";
        goto LABEL_70;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          v29 = "WL";
          goto LABEL_70;
        case 16:
          v29 = "USB";
          goto LABEL_70;
        case 17:
          v29 = "AWDL";
          goto LABEL_70;
      }
    }

    v29 = "??";
LABEL_70:
    sub_10000AF54("Could not find transport tech %s.", v22, v23, v24, v25, v26, v27, v28, v29);
    v55 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 120;
  }

  v21 = 0;
  while (*(qword_100BC9C68 + v21 + 1) != a2)
  {
    v21 += 64;
    if (byte_100BC9C70 << 6 == v21)
    {
      goto LABEL_24;
    }
  }

  if (*(qword_100BC9C68 + v21 + 12) == 1)
  {
    v42 = (*(qword_100BC9C68 + v21 + 56))(&__len);
  }

  else
  {
    v42 = 0;
  }

  sub_1000CB7DC(a1);
  v43 = sub_100007618(__len + 3, 0x6341E462uLL);
  if (!v43)
  {
    if (v42)
    {
      sub_10000C1E8(v42);
    }

    return 106;
  }

  v44 = v43;
  *v43 = 17;
  v43[1] = __len + 1;
  v43[2] = *(qword_100BC9C68 + v21);
  if (v42 && __len)
  {
    memmove(v43 + 3, v42, __len);
LABEL_54:
    sub_10000C1E8(v42);
    goto LABEL_55;
  }

  if (v42)
  {
    goto LABEL_54;
  }

LABEL_55:
  sub_1000CBF60(v8, 7u);
  if (dword_100BC9C74)
  {
    v45 = 0;
    while (1)
    {
      v46 = &qword_100BC9CB0[134 * v45];
      if (*v46 == a1)
      {
        break;
      }

      if (dword_100BC9C74 <= ++v45)
      {
        goto LABEL_61;
      }
    }

    *(v46 + 77) = a2;
  }

LABEL_61:
  if (a1)
  {
    v47 = *a1;
  }

  else
  {
    v47 = 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Sending UPGRADE for lmhandle 0x%4x pipe:0x%4X to %s", v48, v49, v50, v51, v52, v53, v54, v47);
    v56 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = sub_10000C0FC();
      *__len_2 = 136446210;
      *&__len_2[4] = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %{public}s", __len_2, 0xCu);
    }
  }

  v58 = sub_1000B7BFC(0, a1, v8, v44, (__len + 3), 0);
  if (v58 == 412)
  {
    v11 = 0;
  }

  else
  {
    v11 = v58;
  }

  if (!v11)
  {
    v62 = 0u;
    v63 = 0u;
    LOBYTE(v62) = 1;
    WORD1(v62) = 4;
    DWORD2(v62) = 8;
    LOBYTE(v63) = 1;
    WORD1(v63) = 4;
    DWORD2(v63) = a2 | (a3 << 8);
    memcpy(__len_2, "state", sizeof(__len_2));
    sub_1000CC0B0("Magnet Operation", __len_2, &v62, 2u);
    sub_1000CC6D4(v8, 0x3A98u);
  }

  sub_10000C1E8(v44);
  return v11;
}

uint64_t sub_100230478(unsigned __int16 *a1, int a2, int a3)
{
  v35 = 0;
  v34 = 272;
  LODWORD(v3) = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    return 120;
  }

  v6 = 0;
  v7 = &dword_100BC9CE0;
  while (1)
  {
    v8 = &qword_100BC9CB0[134 * v6];
    if (*v8 == a1)
    {
      break;
    }

LABEL_4:
    if (v3 <= ++v6)
    {
      return 120;
    }
  }

  v3 = v3;
  while (*(v7 - 20) != *(v8 + 4))
  {
    v7 += 268;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  if (*v7 != 6)
  {
LABEL_19:
    if (sub_10000C240())
    {
      v20 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v21 = &dword_100BC9CE0;
        while (*(v21 - 20) != *(v8 + 4))
        {
          v21 += 268;
          if (!--v20)
          {
            goto LABEL_24;
          }
        }

        v22 = *v21;
      }

      else
      {
LABEL_24:
        v22 = 0;
      }

      v24 = sub_1000CC6B0(v22);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v25, v26, v27, v28, v29, v30, v31, v24);
      v32 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Sending UPGRADE_REQ for lmhandle 0x%4x tech %s", v9, v10, v11, v12, v13, v14, v15, *a1);
    v16 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v37 = 0u;
  v38 = 0u;
  LOBYTE(v37) = 1;
  WORD1(v37) = 4;
  DWORD2(v37) = 7;
  LOBYTE(v38) = 1;
  WORD1(v38) = 4;
  DWORD2(v38) = a3;
  memcpy(buf, "state", sizeof(buf));
  sub_1000CC0B0("Magnet Operation", buf, &v37, 2u);
  v18 = byte_100BC9C70;
  if (!byte_100BC9C70)
  {
LABEL_18:
    LODWORD(v3) = dword_100BC9C74;
    v7 = &dword_100BC9CE0;
    goto LABEL_4;
  }

  v19 = (qword_100BC9C68 + 1);
  while (*v19 != a2)
  {
    v19 += 64;
    if (!--v18)
    {
      goto LABEL_18;
    }
  }

  v35 = *(v19 - 1);
  LODWORD(result) = sub_1000B7BFC(0, a1, *(v8 + 4), &v34, 3, 0);
  if (result == 412)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1002307C0(unsigned __int16 *a1, char a2, int a3)
{
  result = sub_1000CB010(a1, a3);
  if (!result)
  {
    v6 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a1; i += 134)
      {
        if (!--v6)
        {
          return result;
        }
      }

      *(i + 77) = a2;
    }
  }

  return result;
}

void sub_100230828(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("PhyStatsEnabled with error %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_10023089C(uint64_t result, int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = qword_100BC9CB0; *i != result; i += 134)
    {
      if (!--v2)
      {
        return result;
      }
    }

    *(i + 47) = a2;
  }

  return result;
}

uint64_t sub_1002308D4(unsigned int a1)
{
  if (dword_100BC9C74 <= a1)
  {
    return 0;
  }

  else
  {
    return HIDWORD(qword_100BC9CB0[134 * a1 + 23]);
  }
}

void sub_100230904(uint64_t a1, int a2, int a3)
{
  if (!dword_100BC9C74)
  {
    return;
  }

  v6 = 0;
  for (i = qword_100BC9CB0; ; i += 134)
  {
    if (*i != a1)
    {
      goto LABEL_9;
    }

    v8 = *(i + 76);
    if (v8 == 2)
    {
      break;
    }

    if (v8 == 1)
    {
      if (*(a1 + 144) == 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      v19 = 460;
      v20 = 456;
      v21 = 452;
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      v9 = sub_1000CC6B0(*(i + 76));
      sub_10000AF54("Unexpected transport : %s. Don't collect stats", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10081427C();
      }
    }

LABEL_9:
    if (++v6 >= dword_100BC9C74)
    {
      return;
    }
  }

  if (sub_10019943C(a1))
  {
    v18 = 4;
  }

  else
  {
    v18 = 3;
  }

  v19 = 680;
  v20 = 676;
  v21 = 672;
LABEL_19:
  *(i + v21) = v18;
  *(i + v20) += a2;
  *(i + v19) += a3;
}

void sub_100230A88(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *__dst, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, void *a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (dword_100BC9C74)
  {
    v23 = 0;
    v24 = &byte_100BCA0D7;
    v45 = a2;
    v46 = a3;
    do
    {
      *a1 = *(v24 - 611);
      *a2 = *(v24 - 607);
      *a3 = *(v24 - 603);
      *a4 = *(v24 - 595);
      *a5 = *(v24 - 599);
      v25 = *(v24 - 593);
      v26 = *(v24 - 561);
      *(a7 + 16) = *(v24 - 577);
      *(a7 + 32) = v26;
      *a7 = v25;
      v27 = *(v24 - 545);
      v28 = *(v24 - 529);
      v29 = *(v24 - 513);
      *(a7 + 96) = *(v24 - 497);
      *(a7 + 64) = v28;
      *(a7 + 80) = v29;
      *(a7 + 48) = v27;
      v31 = *(v24 - 429);
      v30 = *(v24 - 413);
      v32 = *(v24 - 445);
      *(a8 + 96) = *(v24 - 397);
      *(a8 + 64) = v31;
      *(a8 + 80) = v30;
      *(a8 + 48) = v32;
      v33 = *(v24 - 493);
      v34 = *(v24 - 461);
      *(a8 + 16) = *(v24 - 477);
      *(a8 + 32) = v34;
      *a8 = v33;
      memcpy(__dst, v24 - 171, 4 * *(v24 - 1));
      *a9 = *(v24 - 391);
      *a10 = *(v24 - 387);
      *a11 = *(v24 - 383);
      *a12 = *(v24 - 375);
      *a13 = *(v24 - 379);
      v36 = *(v24 - 357);
      v35 = *(v24 - 341);
      *a15 = *(v24 - 373);
      *(a15 + 16) = v36;
      *(a15 + 32) = v35;
      v38 = *(v24 - 309);
      v37 = *(v24 - 293);
      v39 = *(v24 - 325);
      *(a15 + 96) = *(v24 - 277);
      *(a15 + 64) = v38;
      *(a15 + 80) = v37;
      *(a15 + 48) = v39;
      v40 = *(v24 - 241);
      v41 = *(v24 - 273);
      *(a16 + 16) = *(v24 - 257);
      *(a16 + 32) = v40;
      *a16 = v41;
      v42 = *(v24 - 209);
      v43 = *(v24 - 193);
      v44 = *(v24 - 225);
      *(a16 + 96) = *(v24 - 177);
      *(a16 + 64) = v42;
      *(a16 + 80) = v43;
      *(a16 + 48) = v44;
      memcpy(a14, v24 - 91, 4 * *v24);
      *a17 = *(v24 - 11);
      bzero(v24 - 611, 0x264uLL);
      a2 = v45;
      a3 = v46;
      ++v23;
      v24 += 1072;
    }

    while (v23 < dword_100BC9C74);
  }
}

void sub_100230CD8(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("SetBidirectionalMaxPowerMode completed with error %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_100230D4C(int a1)
{
  result = sub_100084230();
  if (result >= 0x7D0)
  {
    result = sub_100084230();
    if (result <= 0xF9F)
    {
      if (sub_10000C240())
      {
        v10 = "Disabling";
        if (a1)
        {
          v10 = "Enabling";
        }

        sub_10000AF54("%s bidirectional max power mode for handle 0x%x", v3, v4, v5, v6, v7, v8, v9, v10);
        v11 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v13 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return sub_1002A8D5C();
    }
  }

  return result;
}

void sub_100230E6C()
{
  sub_100304AF8("Transport Switch: lNbTsPeers %d\n", dword_100BC9C74);
  if (!dword_100BC9C74)
  {
LABEL_66:
    v25 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = "No Transport Switching.\n";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    return;
  }

  v0 = 0;
  v1 = "BT";
  do
  {
    v2 = v1;
    v3 = &qword_100BC9CB0[134 * v0];
    v4 = *v3;
    if (*v3)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v3 + 14);
    v7 = *(v3 + 4);
    v8 = *(v3 + 10);
    v9 = sub_1000CC6B0(*(v3 + 12));
    v10 = *(v3 + 76);
    if (v10 <= 2)
    {
      v11 = "LE";
      if (v10 == 1)
      {
        goto LABEL_17;
      }

      if (v10 == 2)
      {
        v11 = v2;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v10)
      {
        case 3u:
          v11 = "WL";
          goto LABEL_17;
        case 0x10u:
          v11 = "USB";
          goto LABEL_17;
        case 0x11u:
          v11 = "AWDL";
          goto LABEL_17;
      }
    }

    v11 = "??";
LABEL_17:
    v12 = *(v3 + 77);
    if (v12 <= 2)
    {
      v13 = "LE";
      if (v12 == 1)
      {
        goto LABEL_28;
      }

      if (v12 == 2)
      {
        v13 = v2;
        goto LABEL_28;
      }
    }

    else
    {
      switch(v12)
      {
        case 3u:
          v13 = "WL";
          goto LABEL_28;
        case 0x10u:
          v13 = "USB";
          goto LABEL_28;
        case 0x11u:
          v13 = "AWDL";
          goto LABEL_28;
      }
    }

    v13 = "??";
LABEL_28:
    v14 = *(v3 + 20);
    if (v14 <= 2)
    {
      v15 = "LE";
      if (v14 == 1)
      {
        goto LABEL_39;
      }

      if (v14 == 2)
      {
        v15 = v2;
        goto LABEL_39;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v15 = "WL";
          goto LABEL_39;
        case 16:
          v15 = "USB";
          goto LABEL_39;
        case 17:
          v15 = "AWDL";
          goto LABEL_39;
      }
    }

    v15 = "??";
LABEL_39:
    v16 = *(v3 + 21);
    if (v16 <= 2)
    {
      v17 = "LE";
      if (v16 == 1)
      {
        goto LABEL_50;
      }

      if (v16 == 2)
      {
        v17 = v2;
        goto LABEL_50;
      }
    }

    else
    {
      switch(v16)
      {
        case 3:
          v17 = "WL";
          goto LABEL_50;
        case 16:
          v17 = "USB";
          goto LABEL_50;
        case 17:
          v17 = "AWDL";
          goto LABEL_50;
      }
    }

    v17 = "??";
LABEL_50:
    sub_100304AF8(">> Peer %d: version %d, connectionHandle=%p, lm=0x%4x, pipeID=0x%4x, nbTransportHandles=%d, state=%s, nbCaps=%d, currenTech=%s, updateTech=%s, localReq=%s, remoteReq=%s, leRSSI=%d\n", v0, v6, v4, v5, v7, v8, v9, *(v3 + 18), v11, v13, v15, v17, *(v3 + 47));
    sub_100304AF8("messageTimer=0x%x, samplingConfirmCount=%d, totalBytesQueued=%d, bytesSentOnTransport=%d, chipFull=%d, weightedLength=%d\n", *(v3 + 13), *(v3 + 78), *(v3 + 22), *(v3 + 23), *(v3 + 24), *(v3 + 25));
    sub_100304AF8("weightedInterPacketGap=%d, numOfEwmaSamples=%d, transportSelectReason=0x%x, calculatedTransportIndex=%d, actionToBeConfirm=%d, prevTSAction=%d, upgradeCount=%d\n", *(v3 + 26), *(v3 + 27), *(v3 + 28), *(v3 + 29), *(v3 + 30), *(v3 + 31), *(v3 + 50));
    sub_100304AF8("timeSpentUpgraded=%d, overrideIncomingRate=%d, overrideOutgoingRate=%d, overridePacketRate=%d, forceClassic=%d, bidirectionalMaxPowerModeAction=%d, bidirectionalMaxPowerModeActionPending=%d\n", *(v3 + 56), *(v3 + 444), *(v3 + 51), *(v3 + 54), *(v3 + 55), *(v3 + 447), *(v3 + 446));
    v1 = v2;
    if (*(v3 + 18))
    {
      v18 = 0;
      for (i = 0; i < *(v3 + 18); ++i)
      {
        v20 = v3[8];
        v21 = *(v20 + v18 + 1);
        if (v21 <= 2)
        {
          v22 = "LE";
          if (v21 != 1)
          {
            if (v21 != 2)
            {
LABEL_62:
              v22 = "??";
              goto LABEL_63;
            }

            v22 = v2;
          }
        }

        else
        {
          switch(v21)
          {
            case 3u:
              v22 = "WL";
              break;
            case 0x10u:
              v22 = "USB";
              break;
            case 0x11u:
              v22 = "AWDL";
              break;
            default:
              goto LABEL_62;
          }
        }

LABEL_63:
        v23 = *(v20 + v18);
        v24 = v20 + v18;
        sub_100304AF8("Cap %d is {id=%d, tech=%s, usable=%d, tput=%d, latency=%d, power=%d, extra=%d, common=%d}", i, v23, v22, *(v24 + 2), *(v24 + 4), *(v24 + 8), *(v24 + 10), *(v24 + 12), *(v24 + 13));
        v18 += 64;
      }
    }

    ++v0;
  }

  while (v0 < dword_100BC9C74);
  if (!dword_100BC9C74)
  {
    goto LABEL_66;
  }
}

uint64_t sub_10023130C(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _BYTE *a7, void *a8, void *a9)
{
  v18 = 0;
  result = sub_1000D4354(&v18);
  if (a1)
  {
    *a1 = dword_100BC9C74 != 0;
  }

  if (dword_100BC9C74)
  {
    if (a2)
    {
      *a2 = dword_100BC9D70;
    }

    if (a3)
    {
      *a3 = v18;
    }

    if (a4)
    {
      *a4 = dword_100BC9D78;
    }

    if (a5)
    {
      *a5 = dword_100BC9D7C;
    }

    if (a9)
    {
      *a9 = qword_100BC9CB0[0];
    }

    if (a6)
    {
      *a6 = dword_100BC9CE0;
    }

    if (a7)
    {
      *a7 = byte_100BC9CFC;
    }

    if (a8)
    {
      *a8 = 1000 * (v18 - dword_100BC9D80) - word_100BC9D84 + SWORD2(v18);
    }
  }

  return result;
}

uint64_t sub_10023143C(int a1)
{
  if (!dword_100BC9C74)
  {
    return 0;
  }

  v1 = 0;
  for (i = &qword_100BC9CC0; ; i += 134)
  {
    v3 = &qword_100BC9CB0[134 * v1];
    if (*(v3 + 4) == a1)
    {
      v4 = *(v3 + 10);
      v5 = i;
      if (*(v3 + 10))
      {
        break;
      }
    }

LABEL_7:
    if (++v1 == dword_100BC9C74)
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = *v5;
    if (*v5)
    {
      return v6;
    }

    v5 += 2;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1002314B8(unsigned __int16 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Force disconnecting this channel %p", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (dword_100BC9C74)
  {
    v10 = 0;
    v11 = &qword_100BC9CC0;
    while (1)
    {
      v12 = &qword_100BC9CB0[134 * v10];
      if (*v12 == a1)
      {
        break;
      }

      v13 = *(v12 + 10);
      v14 = v11;
      if (*(v12 + 10))
      {
        while (*v14 != a1)
        {
          v14 += 2;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting peer %d", v24, v25, v26, v27, v28, v29, v30, *(v12 + 4));
          v31 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }

        return sub_1002CDF48(*v12);
      }

LABEL_10:
      ++v10;
      v11 += 134;
      if (v10 == dword_100BC9C74)
      {
        goto LABEL_11;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting peer %d", v32, v33, v34, v35, v36, v37, v38, *(v12 + 4));
      v39 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        sub_1000E09C0();
      }
    }

    return sub_1002CDF48(*v12);
  }

  else
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown lmhandle 0x%4x", v15, v16, v17, v18, v19, v20, v21, *a1);
      v22 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }
}

void sub_100231674(uint64_t a1, int *a2, uint64_t a3)
{
  v35 = 0;
  v36 = *a2;
  v37 = *(a2 + 2);
  v5 = sub_1000E5EA8(&v35);
  if (a1 && sub_10000C240() && (sub_10000AF54("TS connection completed with status %! with lmhandle 0x%4x (0x%x)", v6, v7, v8, v9, v10, v11, v12, a1), v13 = sub_10000C050(0x56u), os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (v5)
    {
LABEL_5:
      if (a3)
      {
        v14 = sub_1002FCEB8(a3);
        if (!a1 && *(v5 + 70))
        {
          v15 = dword_100BC9C74;
          if (!dword_100BC9C74)
          {
            goto LABEL_20;
          }

          v16 = &qword_100BC9CD0;
          while (*(v16 - 4) != v5)
          {
            v16 += 134;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          if (*(v16 - 2) != a3 && *v16 != a3)
          {
LABEL_20:
            if (!sub_10023189C(v5, a3, a1, v14))
            {
              sub_10023B994(a3);
            }

            return;
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("TS connection complete, classicHandle is invalid", v17, v18, v19, v20, v21, v22, v23, v34);
          v24 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v14 = 0;
      }

      sub_10023189C(v5, a3, a1, v14);
      return;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ACL connection complete, not a TS handle", v25, v26, v27, v28, v29, v30, v31, v34);
    v32 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = sub_10000C0FC();
      *buf = 136446210;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_10023189C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1 && !a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No LE connection for this new connection.", v8, v9, v10, v11, v12, v13, v14, v113);
      v15 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 5009;
  }

  if (!a1 && a3)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("BT connection failed and LE is gone anyways - dropping the message.", v17, v18, v19, v20, v21, v22, v23, v113);
    v24 = sub_10000C050(0x56u);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

LABEL_35:
    *buf = 136446210;
    v115 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    return 0;
  }

  if (dword_100BC9C74)
  {
    v25 = 0;
    v26 = qword_100BC9CB0;
    while (*v26 != a1)
    {
      ++v25;
      v26 += 134;
      if (dword_100BC9C74 == v25)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    LODWORD(v25) = 16;
  }

  if (v25 >= dword_100BC9C74)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Ignoring connection complete - connected a device from an LE but we weren't tracking it.", v46, v47, v48, v49, v50, v51, v52, v113);
    v24 = sub_10000C050(0x56u);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (a1 && a3)
  {
    if (off_100BC9CA0)
    {
      off_100BC9CA0(a1, 81, 1647, a3);
    }

    if (sub_1000B6E74(a1))
    {
      sub_1000D4200(a1);
      if (a3 == 708)
      {
        v70 = &qword_100BC9CB0[134 * v25];
        if (*(v70 + 445) == 1)
        {
          sub_1000D4354((v70 + 20));
          if (sub_10000C240())
          {
            sub_10000AF54("TS Connection timeout timestamped at %d:%d. Connection start %d:%d", v71, v72, v73, v74, v75, v76, v77, *(v70 + 40));
            v78 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (a3 == 717)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Controller returning transport switch with error %!, retry. Current count %d, version 0x%x", v27, v28, v29, v30, v31, v32, v33, 717);
          v34 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v35 = &qword_100BC9CB0[134 * v25];
        if (*(v35 + 79) > 7u)
        {
          if (!sub_10000C240())
          {
            goto LABEL_94;
          }

          sub_10000AF54("Error count exceeds threshold %d and RSSI was %d", v105, v106, v107, v108, v109, v110, v111, 8);
          v112 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v36 = sub_10023324C(a1);
          if (!v36)
          {
            goto LABEL_94;
          }

          v37 = v36;
          if (!sub_10000C240())
          {
            goto LABEL_94;
          }

          sub_10000AF54("Upgrade retry failed with status %!", v38, v39, v40, v41, v42, v43, v44, v37);
          v45 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        sub_10080F604();
LABEL_94:
        result = 0;
        ++*(v35 + 79);
        return result;
      }

      v79 = a1;
      v80 = 4;
LABEL_61:
      sub_1002334C8(v79, v80);
      return 0;
    }

    v35 = &qword_100BC9CB0[134 * v25];
    if (*(v35 + 79) <= 7u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Peripheral connection complete with status %!, retry %d is under limit. Version 0x%x", v60, v61, v62, v63, v64, v65, v66, a3);
        v67 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v115 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      goto LABEL_94;
    }

    v68 = a1;
    v69 = 4;
    goto LABEL_55;
  }

  if (!a1 || a3)
  {
    sub_1000D660C();
  }

  v53 = &qword_100BC9CB0[134 * v25];
  *(v53 + 79) = 0;
  v54 = sub_1000B6E74(a1);
  v55 = *(v53 + 4);
  v56 = dword_100BC9C74;
  if (v54)
  {
    if (!dword_100BC9C74)
    {
      goto LABEL_65;
    }

    v57 = &dword_100BC9CE0;
    while (*(v57 - 20) != v55)
    {
      v57 += 268;
      if (!--v56)
      {
        goto LABEL_65;
      }
    }

    if (*v57 != 8)
    {
LABEL_65:
      if (sub_10000C240())
      {
        sub_10000AF54("Got an upgrade we were not tracking !", v81, v82, v83, v84, v85, v86, v87, v113);
        v88 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 5010;
    }
  }

  else
  {
    if (!dword_100BC9C74)
    {
      goto LABEL_87;
    }

    v58 = &dword_100BC9CE0;
    v59 = dword_100BC9C74;
    while (*(v58 - 20) != v55)
    {
      v58 += 268;
      if (!--v59)
      {
        goto LABEL_70;
      }
    }

    if (*v58 == 8)
    {
      goto LABEL_75;
    }

LABEL_70:
    v89 = &dword_100BC9CE0;
    while (*(v89 - 20) != v55)
    {
      v89 += 268;
      if (!--v56)
      {
        goto LABEL_87;
      }
    }

    if (*v89 != 10)
    {
LABEL_87:
      if (sub_10000C240())
      {
        sub_10000AF54("Got an upgrade we were not tracking !", v97, v98, v99, v100, v101, v102, v103, v113);
        v104 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 5011;
    }
  }

LABEL_75:
  v90 = *(v53 + 10);
  if (v90)
  {
    v91 = *(v53 + 10);
    v92 = v53 + 2;
    while (*v92 != a2)
    {
      v92 += 2;
      if (!--v91)
      {
        do
        {
          v93 = &v53[2 * v91 + 2];
          if (*v93 == a2)
          {
            *v93 = 0;
            if (!v91)
            {
              *v93 = v53[4];
              *(v93 + 8) = *(v53 + 40);
              v53[4] = 0;
            }

            LODWORD(v91) = 0;
            *(v53 + 10) = --v90;
          }

          LODWORD(v91) = v91 + 1;
        }

        while (v91 < v90);
        goto LABEL_84;
      }
    }

    goto LABEL_99;
  }

LABEL_84:
  v94 = v53 + 2;
  v53[2 * v90 + 2] = a2;
  if (*(a2 + 2) == 8)
  {
    v95 = &v94[2 * v90];
    v96 = 17;
  }

  else
  {
    if (*(a2 + 2))
    {
      sub_1000D660C();
      v90 = *(v53 + 10);
      goto LABEL_98;
    }

    v95 = &v94[2 * v90];
    v96 = 2;
  }

  *(v95 + 8) = v96;
LABEL_98:
  *(v53 + 10) = v90 + 1;
LABEL_99:
  sub_1000D303C(v53, 0, 1);
  sub_1000CB7DC(a2);
  if (!*(a2 + 2) && !sub_1000B6E74(a1))
  {
    *(a2 + 196) = 1;
  }

  if (!sub_1000CC63C(a1) || (a4 & 1) != 0)
  {
    if (sub_1000B6E74(a1))
    {
      sub_1000CCE84(a1, a2);
      v79 = a1;
      v80 = 0;
      goto LABEL_61;
    }

    v68 = a1;
    v69 = 0;
LABEL_55:
    sub_10023362C(v68, v69);
    return 0;
  }

  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  sub_1000CBF60(*(v53 + 4), 9u);
  result = sub_1000B6E74(a1);
  if (result)
  {
    result = sub_100300CD8(sub_100233A34, a2 + 48, 1048579, &unk_1008A4078, *(v53 + 4), 0);
    if (result)
    {
      sub_1002334C8(a1, 4u);
      return 5012;
    }
  }

  return result;
}

uint64_t sub_100232034(uint64_t a1, int a2)
{
  if (byte_100B5230C != 1 || !dword_100BC9C74)
  {
    return 101;
  }

  LODWORD(v2) = 0;
  while (1)
  {
    if (a1)
    {
      v3 = &qword_100BC9CB0[134 * v2];
      if (*v3 == a1)
      {
        if (*(v3 + 76) != 2)
        {
          return 5008;
        }

        if (v2 < *(v3 + 10))
        {
          break;
        }
      }
    }

LABEL_12:
    LODWORD(v2) = v2 + 1;
    if (v2 >= dword_100BC9C74)
    {
      return 101;
    }
  }

  v2 = v2;
  while (*(v3 + 24) != 2 || !v3[2])
  {
    ++v2;
    v4 = *(v3 + 1082);
    v3 += 134;
    if (v2 >= v4)
    {
      goto LABEL_12;
    }
  }

  v7 = (858993460 * (8 * a2)) >> 32;
  v5 = sub_100018960(85, 0);
  if (sub_10000C240())
  {
    sub_10000AF54("TS setting flush timeout to %d ms with status %!", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v5;
}

uint64_t sub_1002321C0(unsigned __int16 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Lmhandle 0x%4x drained", v2, v3, v4, v5, v6, v7, v8, *a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002592C4(0, 0, 0);
  return sub_100194DC0();
}

uint64_t sub_10023229C(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v6 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v7 = &word_100BC9CB8;
    while (*(v7 - 1) != a1)
    {
      v7 += 536;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
  }

  else
  {
LABEL_5:
    v8 = 0xFFFFLL;
  }

  v33 = 289;
  v34 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending DOWNGRADE_CFM to 0x%x", v9, v10, v11, v12, v13, v14, v15, *a1);
    v16 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v17 = sub_1000B7BFC(0, a1, v8, &v33, 3, 0);
  if (v17 == 412)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if (!a2 && !v18 && dword_100BC9C74)
  {
    v19 = 0;
    for (i = &byte_100BC9CFC; *(i - 76) != a1; i += 1072)
    {
      if (dword_100BC9C74 == ++v19)
      {
        return v18;
      }
    }

    sub_1000CBF60(*(i - 34), 6u);
    v21 = *i;
    sub_1000CCC34(v19, 1u);
    sub_1000CCE84(a3, a1);
    sub_1000D29F4(a1, 0);
    sub_1000D4200(a1);
    sub_1000D2C0C(v19, v21, 0);
    if (i[1] != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Requesting transport upgrade since this downgrade was triggered by a upgrade to different alternate transport", v22, v23, v24, v25, v26, v27, v28, v32);
        v29 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = sub_10000C0FC();
          *buf = 136446210;
          v36 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_100230478(a1, i[1], *(i + 9));
    }
  }

  return v18;
}

void sub_1002324F8(unsigned __int16 *a1)
{
  if (dword_100BC9C74)
  {
    v2 = 0;
    for (i = &dword_100BC9CE0; *(i - 6) != a1; i += 268)
    {
      if (dword_100BC9C74 == ++v2)
      {
        return;
      }
    }

    if (*(i - 38))
    {
      v4 = 0;
      v5 = 0;
      v6 = i - 6;
      while (1)
      {
        if (sub_10000C240())
        {
          v14 = *i == 6 ? " " : "not ";
          sub_10000AF54("New channel created while TS is %sIdle, state:%d index [%d, %d], transport [tech:%d, currentInUseTech:%d]", v7, v8, v9, v10, v11, v12, v13, v14);
          v15 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = sub_10000C0FC();
            *buf = 136446210;
            v40 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v17 = *v6;
        v18 = *(i + 28);
        if (v17 != v18)
        {
          if (v17 <= v18 || (*i - 7) > 3)
          {
            goto LABEL_22;
          }

          if (sub_10000C240())
          {
            v26 = *(v6 - 1);
            if (v26)
            {
              v26 = *v26;
            }

            sub_10000AF54("Updating lmhandle 0x%x -> 0x%x during encryption pending state", v19, v20, v21, v22, v23, v24, v25, v26);
            v27 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = sub_10000C0FC();
              *buf = 136446210;
              v40 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }

        v5 = *(v6 - 1);
LABEL_22:
        ++v4;
        v6 += 4;
        if (v4 >= *(i - 38))
        {
          goto LABEL_27;
        }
      }
    }

    v5 = 0;
LABEL_27:
    if (*i >= 7)
    {
      sub_1000CB7DC(a1);
    }

    if (v5 && v5 != a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Faster tech available at the time of channel creation.  Moving channels\n", v29, v30, v31, v32, v33, v34, v35, v38);
        v36 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_10000C0FC();
          *buf = 136446210;
          v40 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1000CCE84(a1, v5);
    }
  }
}

uint64_t sub_1002327CC(uint64_t a1, void *a2, int *a3)
{
  result = sub_1000B77E0(a1, a3);
  if (!result)
  {
    v6 = sub_100007618(*a3, 0x746AD4CAuLL);
    *a2 = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return 106;
    }
  }

  return result;
}

void sub_100232830(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("TS_LE_EncryptionCompleteCb completed with error %! with connectionHandle= %p ", v5, v6, v7, v8, v9, v10, v11, a2);
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a1)
  {
    if (a3)
    {
      v13 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
        {
          if (!--v13)
          {
            return;
          }
        }

        v15 = *i;
        if (v15 != 0xFFFF)
        {
          v16 = sub_1002DF928((a1 + 48));
          v17 = sub_10000C240();
          if (v16)
          {
            if (v17)
            {
              sub_10000AF54("Got encrypted but pairing is still in progress, waiting for pairing completion", v18, v19, v20, v21, v22, v23, v24, v40);
              v25 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v42 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          else
          {
            if (v17)
            {
              v26 = dword_100BC9C74;
              if (dword_100BC9C74)
              {
                v27 = &dword_100BC9CE0;
                while (*(v27 - 20) != v15)
                {
                  v27 += 268;
                  if (!--v26)
                  {
                    goto LABEL_22;
                  }
                }

                v28 = *v27;
              }

              else
              {
LABEL_22:
                v28 = 0;
              }

              v29 = sub_1000CC6B0(v28);
              sub_10000AF54("Encryption complete, pipe state is %s", v30, v31, v32, v33, v34, v35, v36, v29);
              v37 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v42 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v38 = dword_100BC9C74;
            if (dword_100BC9C74)
            {
              for (j = &dword_100BC9CE0; *(j - 20) != v15; j += 268)
              {
                if (!--v38)
                {
                  return;
                }
              }

              if (*j == 1)
              {
                sub_1000CBF60(v15, 2u);
                if (sub_1000B6E74(a1))
                {
                  sub_100232C94(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100232A94(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("TS_LE_PairingCompleteCb completed with error %! with address=%: publicAddress=%: ", v5, v6, v7, v8, v9, v10, v11, a3);
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v13 = sub_1000E5EA8(a1);
  if (v13)
  {
    v14 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v15 = v13;
      for (i = &word_100BC9CB8; *(i - 1) != v13; i += 536)
      {
        if (!--v14)
        {
          return;
        }
      }

      v17 = *i;
      if (v17 != 0xFFFF)
      {
        if (sub_10000C240())
        {
          v18 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v19 = &dword_100BC9CE0;
            while (*(v19 - 20) != v17)
            {
              v19 += 268;
              if (!--v18)
              {
                goto LABEL_17;
              }
            }

            v20 = *v19;
          }

          else
          {
LABEL_17:
            v20 = 0;
          }

          v21 = sub_1000CC6B0(v20);
          sub_10000AF54("Got paired, pipe state is %s", v22, v23, v24, v25, v26, v27, v28, v21);
          v29 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v33 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v30 = dword_100BC9C74;
        if (dword_100BC9C74)
        {
          for (j = &dword_100BC9CE0; *(j - 20) != v17; j += 268)
          {
            if (!--v30)
            {
              return;
            }
          }

          if (*j == 1)
          {
            sub_1000CBF60(v17, 2u);
            if (sub_1000B6E74(v15))
            {
              sub_100232C94(v15);
            }
          }
        }
      }
    }
  }
}

void sub_100232C94(__int128 *a1)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v3 = &word_100BC9CB8;
    while (*(v3 - 1) != a1)
    {
      v3 += 536;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *v3;
  }

  else
  {
LABEL_5:
    v4 = 0xFFFFLL;
  }

  if (sub_1000CC63C(a1))
  {
    v5 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v6 = &dword_100BC9CE0;
      while (*(v6 - 20) != v4)
      {
        v6 += 268;
        if (!--v5)
        {
          goto LABEL_22;
        }
      }

      if (*v6 == 2)
      {
        v15 = 13 * byte_100BC9C70;
        v16 = sub_100007618(v15 + 7, 0x2603B3BuLL);
        if (v16)
        {
          v17 = v16;
          *v16 = 1;
          v16[1] = v15 + 5;
          *(v16 + 2) = 2;
          sub_100232F6C((v16 + 6));
          sub_1000CBF60(v4, 3u);
          if (sub_10000C240())
          {
            sub_10000AF54("Sending VERSION_IND to lmhandle 0x%4x for pipe 0x%4x", v18, v19, v20, v21, v22, v23, v24, *a1);
            v25 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v48 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1000B7BFC(0, a1, v4, v17, v15 + 7, 0);
          sub_10000C1E8(v17);
          return;
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Failed to allocate %d bytes (%d transports)", v38, v39, v40, v41, v42, v43, v44, v15 + 7);
        v45 = sub_10000C050(0x56u);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_30:
        sub_1000E09C0();
        return;
      }
    }

LABEL_22:
    if (sub_10000C240())
    {
      v26 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v27 = &dword_100BC9CE0;
        while (*(v27 - 20) != v4)
        {
          v27 += 268;
          if (!--v26)
          {
            goto LABEL_27;
          }
        }

        v28 = *v27;
      }

      else
      {
LABEL_27:
        v28 = 0;
      }

      v29 = sub_1000CC6B0(v28);
      sub_10000AF54("VERSION should only be send when in ENCRYPTED state. Current state is %s", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Link is not encrypted, can't send version", v7, v8, v9, v10, v11, v12, v13, v46);
    v14 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100232F6C(uint64_t result)
{
  v1 = byte_100BC9C70;
  *result = byte_100BC9C70;
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = result + 6;
  LODWORD(result) = 1;
  do
  {
    *(v4 - 5) = 12;
    *(v4 - 4) = *(qword_100BC9C68 + v2);
    *(v4 - 3) = *(qword_100BC9C68 + v2 + 1);
    *(v4 - 2) = *(qword_100BC9C68 + v2 + 2);
    *(v4 - 1) = *(qword_100BC9C68 + v2 + 12);
    *v4 = *(qword_100BC9C68 + v2 + 4);
    *(v4 + 2) = *(qword_100BC9C68 + v2 + 6);
    *(v4 + 3) = *(qword_100BC9C68 + v2 + 7);
    *(v4 + 4) = *(qword_100BC9C68 + v2 + 8);
    *(v4 + 5) = *(qword_100BC9C68 + v2 + 9);
    *(v4 + 6) = *(qword_100BC9C68 + v2 + 10);
    *(v4 + 7) = *(qword_100BC9C68 + v2 + 11);
    ++v3;
    v2 += 64;
    v4 += 13;
    result = (result + 13);
  }

  while (v3 < byte_100BC9C70);
  return result;
}

void sub_100233080(__int128 *a1, int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
    {
      if (!--v2)
      {
        return;
      }
    }

    v6 = *i;
    if (v6 != 0xFFFF)
    {
      if (sub_1000CC63C(a1))
      {
        if (byte_100BC9C70)
        {
          v7 = 0;
          while (*(qword_100BC9C68 + v7) != a2)
          {
            v7 += 64;
            if (byte_100BC9C70 << 6 == v7)
            {
              return;
            }
          }

          v16 = sub_100007618(0xAuLL, 0xEEC5A5ABuLL);
          if (v16)
          {
            v17 = v16;
            *v16 = 2053;
            *(v16 + 2) = a2;
            *(v16 + 3) = *(qword_100BC9C68 + v7 + 2);
            v16[2] = *(qword_100BC9C68 + v7 + 4);
            *(v16 + 6) = *(qword_100BC9C68 + v7 + 6);
            *(v16 + 7) = *(qword_100BC9C68 + v7 + 7);
            v18 = qword_100BC9C68 + v7;
            *(v16 + 8) = *(qword_100BC9C68 + v7 + 8);
            *(v16 + 9) = *(v18 + 9);
            sub_1000B7BFC(0, a1, v6, v16, 0xAuLL, 0);

            sub_10000C1E8(v17);
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Link is not encrypted, can't send cpas changed", v8, v9, v10, v11, v12, v13, v14, v19);
        v15 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_10023324C(uint64_t a1)
{
  if (sub_1000B8B5C(a1))
  {
    if (!sub_10000C240())
    {
      return 1;
    }

    sub_10000AF54("Already connected to classic", v2, v3, v4, v5, v6, v7, v8, v41);
    v9 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 1;
    }

    sub_10000AF54("Invalid LE handle", v11, v12, v13, v14, v15, v16, v17, v41);
    v18 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

LABEL_12:
    sub_1000E09C0();
    return 1;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 55) != 1 || *(a1 + 56))
    {
      return 1;
    }

    v10 = 57;
  }

  else
  {
    v10 = 49;
  }

  v20 = a1 + v10;
  v43 = *v20;
  v44 = *(v20 + 4);
  if (sub_100084230() > 0xE)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_10024DE3C(sub_100233E10);
    if (v21)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Read RSSI failed with status %!", v22, v23, v24, v25, v26, v27, v28, v21);
        v29 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  sub_1000CB7DC(a1);
  v30 = sub_1000E1FE8(&v43);
  v31 = sub_1000B6E74(a1);
  if (!v30)
  {
    if (!v31)
    {
LABEL_29:
      if (!v21)
      {
        return 0;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to start upgrade %!.", v33, v34, v35, v36, v37, v38, v39, v21);
        v40 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000D4200(a1);
      return 4;
    }

LABEL_28:
    v21 = sub_10023B6AC(sub_100231674, &v43);
    goto LABEL_29;
  }

  if (v31)
  {
    goto LABEL_28;
  }

  result = 0;
  v32 = *(v30 + 54);
  if (v32 <= 5 && ((1 << v32) & 0x39) != 0)
  {
    v42[1] = &v43;
    v42[0] = 6;
    sub_10023B994(v30);
    sub_1000228C0(sub_100233EB4, v42, 0);
    return 0;
  }

  return result;
}

uint64_t sub_1002334C8(__int128 *a1, unsigned int a2)
{
  v4 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = &word_100BC9CB8;
    while (*(v5 - 1) != a1)
    {
      v5 += 536;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_5:
    v6 = 0xFFFFLL;
  }

  v17 = 275;
  v18 = a2;
  if (a1)
  {
    v7 = *a1;
  }

  else
  {
    v7 = 0;
  }

  if (sub_10000C240())
  {
    sub_100233F18(a2);
    sub_10000AF54("Sending UPGRADE_COMPLETE to lmhandle 0x%4x p:%0x%4X with %s", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = sub_1000B7BFC(0, a1, v6, &v17, 3uLL, 0);
  if (result == 412 || !result)
  {
    return sub_1000CC6D4(v6, 0x3A98u);
  }

  return result;
}

void sub_10023362C(unsigned __int16 *a1, unsigned int a2)
{
  if (!dword_100BC9C74)
  {
    LODWORD(v6) = 0xFFFF;
LABEL_17:
    if (sub_10000C240())
    {
      v12 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v13 = &dword_100BC9CE0;
        while (*(v13 - 20) != v6)
        {
          v13 += 268;
          if (!--v12)
          {
            goto LABEL_22;
          }
        }

        v14 = *v13;
      }

      else
      {
LABEL_22:
        v14 = 0;
      }

      v15 = sub_1000CC6B0(v14);
      sub_10000AF54("Not sending UPGRADE_COMPLETE_CFM, since the state is %s", v16, v17, v18, v19, v20, v21, v22, v15);
      v23 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return;
  }

  v4 = &word_100BC9CB8;
  v5 = dword_100BC9C74;
  while (*(v4 - 1) != a1)
  {
    v4 += 536;
    if (!--v5)
    {
      v6 = 0xFFFFLL;
      goto LABEL_8;
    }
  }

  v6 = *v4;
LABEL_8:
  v35 = 276;
  v36 = a2;
  v7 = &dword_100BC9CE0;
  v8 = dword_100BC9C74;
  while (*(v7 - 20) != v6)
  {
    v7 += 268;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (*v7 != 10)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  while (qword_100BC9CB0[v9] != a1)
  {
    ++v10;
    v9 += 134;
    if (134 * dword_100BC9C74 == v9)
    {
      v11 = 0;
      goto LABEL_32;
    }
  }

  v24 = &qword_100BC9CB0[v9];
  v6 = LOWORD(qword_100BC9CB0[v9 + 1]);
  sub_1000CBF60(LOWORD(qword_100BC9CB0[v9 + 1]), 6u);
  sub_1000CCC34(v10, *(v24 + 77));
  *(v24 + 77) = 1;
  sub_1000D29F4(a1, 1);
  sub_1000D4200(a1);
  ++*(v24 + 50);
  ++*(v24 + 526);
  sub_100016250((v24 + 16));
  v11 = sub_1000B78F0(v24);
  if (!sub_1000B8B5C(v11) && !sub_1000C0E08(v11) && !sub_1000ABD24(v11) && !sub_1000B7994(v11))
  {
LABEL_32:
    v25 = 1;
    if (a1)
    {
LABEL_33:
      v26 = *a1;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (a2)
  {
    sub_1000D2538(v11, 19);
    goto LABEL_32;
  }

  sub_1000CCE84(a1, v11);
  sub_1000D4200(v11);
  if (*(v11 + 2))
  {
    v25 = 17;
  }

  else
  {
    v25 = 2;
  }

  if (a1)
  {
    goto LABEL_33;
  }

LABEL_38:
  v26 = 0;
LABEL_39:
  if (sub_10000C240())
  {
    sub_100233F18(a2);
    sub_10000AF54("Sending UPGRADE_COMPLETE_CFM to lmhandle 0x%4x p:%0x%4X with %s", v27, v28, v29, v30, v31, v32, v33, v26);
    v34 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1000B7BFC(0, a1, v6, &v35, 3uLL, 0);
  if (!a2 && qword_100BC9C78)
  {
    if (sub_1000B8B5C(v11))
    {
      if (!v11)
      {
        sub_1000D660C();
      }

      (qword_100BC9C78)(a1, v25, v11 + 48, *(v11 + 278));
    }

    else
    {
      (qword_100BC9C78)(a1, v25, 0, 0);
    }
  }

  v38 = 0u;
  v39 = 0u;
  LOBYTE(v38) = 1;
  WORD1(v38) = 4;
  DWORD2(v38) = 9;
  LOBYTE(v39) = 1;
  WORD1(v39) = 4;
  DWORD2(v39) = a2;
  memcpy(buf, "state", sizeof(buf));
  sub_1000CC0B0("Magnet Operation", buf, &v38, 2u);
}

void sub_100233A34(uint64_t a1, __int16 a2)
{
  if (!dword_100BC9C74)
  {
    goto LABEL_30;
  }

  v3 = 0;
  v4 = &word_100BC9CB8;
  while (*v4 != a2)
  {
    ++v3;
    v4 += 536;
    if (dword_100BC9C74 == v3)
    {
      goto LABEL_30;
    }
  }

  v5 = *(v4 - 1);
  if (!v5)
  {
LABEL_30:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("No more connection handle for this pipeID", v22, v23, v24, v25, v26, v27, v28, v54);
    v29 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_32;
  }

  v6 = &qword_100BC9CB0[134 * v3];
  if (*(v6 + 12) != 9)
  {
    sub_1000D660C();
    if (*(v6 + 12) != 9)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Got an encryption complete although we were not pending an encryption", v30, v31, v32, v33, v34, v35, v36, v54);
      v37 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_32:
      sub_1000E09C0();
      return;
    }
  }

  if ((sub_1000CC63C(v5) & 1) == 0)
  {
    sub_1000D660C();
  }

  if (*(v6 + 10) || (sub_1000D660C(), *(v6 + 10)))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = &qword_100BC9CB0[134 * v3 + 2];
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 2);
      if ((*(*v10 + 2) == 0) == (*(v10 + 8) != 2))
      {
        sub_1000D660C();
        v11 = *v10;
        v12 = *(*v10 + 2);
      }

      v13 = v12 == 0;
      if (sub_1000B8B5C(v11))
      {
        v8 = *v10;
      }

      v9 |= v13;
      ++v7;
      v10 += 2;
    }

    while (v7 < *(v6 + 10));
    if (v8)
    {
      if (v9)
      {
        if (a1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Error from security callback %!", v14, v15, v16, v17, v18, v19, v20, a1);
            v21 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v56 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (off_100BC9CA0)
          {
            off_100BC9CA0(v5, 81, 2023, a1);
          }
        }

        if (sub_1002FCEB8(v8))
        {
          if (sub_1000B6E74(v5))
          {
            sub_1000CCE84(v5, v8);
            sub_1002334C8(v5, 0);
          }

          else
          {
            sub_10023362C(v5, 0);
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to encrypt : %!", v46, v47, v48, v49, v50, v51, v52, a1);
            v53 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_1000CBF60(v3, 8u);
          if (sub_1000B6E74(v5))
          {
            sub_1000D2538(v8, 5);
            sub_1002334C8(v5, 6u);
            sub_10019518C(v5);
          }
        }

        return;
      }
    }

    else
    {
      sub_1000D660C();
      if (v9)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  sub_1000D660C();
LABEL_41:
  if (off_100BC9CA0)
  {
    off_100BC9CA0(v5, 81, 2015, a1);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No classic connection for this handle...", v38, v39, v40, v41, v42, v43, v44, v54);
    v45 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100233E10(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read RSSI CB failed with status %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v12 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a2; i += 134)
      {
        if (!--v12)
        {
          return;
        }
      }

      *(i + 47) = a3;
    }
  }
}

uint64_t sub_100233EB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  v3 = sub_1000E1FE8(&v5);
  if (v3)
  {
    sub_100231674(0, &v5, v3);
  }

  return sub_1000D2538(v3, 19);
}

const char *sub_100233F18(unsigned int a1)
{
  if (a1 > 8)
  {
    return "ERROR_Unknown";
  }

  else
  {
    return off_100AE7F78[a1];
  }
}

void sub_100233F3C(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v152 = 0;
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v7 = &word_100BC9CB8;
    while (*(v7 - 1) != a1)
    {
      v7 += 536;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    if (*v7 != -1)
    {
      if (sub_1000B6E74(a1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("VERSION_IND not supposed to get a version from the peripheral.", v8, v9, v10, v11, v12, v13, v14, v150);
          v15 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v16 = a1;
        v17 = 2;
LABEL_53:
        sub_100236DDC(v16, 1, v17);
        return;
      }

      v26 = dword_100BC9C74;
      if (!dword_100BC9C74)
      {
        goto LABEL_26;
      }

      v27 = &word_100BC9CB8;
      v28 = dword_100BC9C74;
      while (*(v27 - 1) != a1)
      {
        v27 += 536;
        if (!--v28)
        {
          v29 = 0xFFFF;
          goto LABEL_21;
        }
      }

      v29 = *v27;
LABEL_21:
      v30 = &dword_100BC9CE0;
      while (*(v30 - 20) != v29)
      {
        v30 += 268;
        if (!--v26)
        {
          goto LABEL_26;
        }
      }

      if (*v30 != 2)
      {
LABEL_26:
        if (sub_10000C240())
        {
          v31 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v32 = &word_100BC9CB8;
            v33 = dword_100BC9C74;
            while (*(v32 - 1) != a1)
            {
              v32 += 536;
              if (!--v33)
              {
                v34 = 0xFFFF;
                goto LABEL_33;
              }
            }

            v34 = *v32;
LABEL_33:
            v35 = &dword_100BC9CE0;
            while (*(v35 - 20) != v34)
            {
              v35 += 268;
              if (!--v31)
              {
                goto LABEL_36;
              }
            }

            v36 = *v35;
          }

          else
          {
LABEL_36:
            v36 = 0;
          }

          v37 = sub_1000CC6B0(v36);
          sub_10000AF54("VERSION_IND as peripheral but the current state is %s", v38, v39, v40, v41, v42, v43, v44, v37);
          v45 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v46 = (a3 - 4);
      if (a3 < 4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("VERSION_IND bad length for version PDU : %d", v67, v68, v69, v70, v71, v72, v73, a3);
          v74 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v16 = a1;
        v17 = 1;
        goto LABEL_53;
      }

      v47 = *a2;
      v48 = v47 | (a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24);
      if (sub_10000C240())
      {
        sub_10000AF54("Received VERSION_IND for lmhandle 0x%4x version %d", v49, v50, v51, v52, v53, v54, v55, *a1);
        v56 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v153 = 0;
      v57 = sub_100236E5C(a2 + 4, v46, &v153, &v152);
      if (v57)
      {
        v58 = v57;
        if (sub_10000C240())
        {
          sub_10000AF54("Parsing error with status %!", v59, v60, v61, v62, v63, v64, v65, v58);
          v66 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v16 = a1;
        v17 = v58;
        goto LABEL_53;
      }

      v75 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v76 = &dword_100BC9CF8;
        while (*(v76 - 9) != a1)
        {
          v76 += 268;
          if (!--v75)
          {
            goto LABEL_63;
          }
        }

        v77 = *(v76 - 1);
        if (v77)
        {
          sub_10000C1E8(v77);
        }

        *(v76 - 1) = v153;
        *v76 = v152;
        *(v76 - 4) = v48;
      }

LABEL_63:
      v151 = v48;
      sub_100194E7C(a1);
      if (xmmword_100BC9C88)
      {
        xmmword_100BC9C88(a1, v47, *(a1 + 26), *(a1 + 37) == 2);
      }

      v78 = dword_100BC9C74;
      if (!dword_100BC9C74)
      {
        goto LABEL_77;
      }

      v79 = &word_100BC9CB8;
      while (*(v79 - 1) != a1)
      {
        v79 += 536;
        if (!--v78)
        {
          goto LABEL_77;
        }
      }

      v80 = *v79;
      if (v80 == 0xFFFF)
      {
LABEL_77:
        if (sub_10000C240())
        {
          sub_10000AF54("Not tracking this device.", v83, v84, v85, v86, v87, v88, v89, v150);
          v90 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }
        }
      }

      else if (sub_1000CC63C(a1))
      {
        v81 = dword_100BC9C74;
        if (!dword_100BC9C74)
        {
          goto LABEL_114;
        }

        v82 = &dword_100BC9CE0;
        while (*(v82 - 20) != v80)
        {
          v82 += 268;
          if (!--v81)
          {
            goto LABEL_114;
          }
        }

        if (*v82 != 2)
        {
LABEL_114:
          if (!sub_10000C240())
          {
            goto LABEL_80;
          }

          v130 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v131 = &dword_100BC9CE0;
            while (*(v131 - 20) != v80)
            {
              v131 += 268;
              if (!--v130)
              {
                goto LABEL_119;
              }
            }

            v132 = *v131;
          }

          else
          {
LABEL_119:
            v132 = 0;
          }

          v133 = sub_1000CC6B0(v132);
          sub_10000AF54("Caps response should only be send when in ENCRYPTED state. Current state is %s", v134, v135, v136, v137, v138, v139, v140, v133);
          v141 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        sub_1000CBF60(v80, 6u);
        v117 = 13 * byte_100BC9C70;
        v118 = sub_100007618(v117 + 7, 0xA9A8C58CuLL);
        if (v118)
        {
          v119 = v118;
          *v118 = 2;
          v118[1] = v117 + 5;
          *(v118 + 2) = 2;
          if (v117 + 1 != sub_100232F6C((v118 + 6)))
          {
            sub_1000D660C();
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Sending CAPS_IND on lmhandle 0x%4x to version %d", v120, v121, v122, v123, v124, v125, v126, *a1);
            v127 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              v128 = sub_10000C0FC();
              *buf = 136446210;
              *&buf[4] = v128;
              _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v129 = sub_1000B7BFC(0, a1, v80, v119, v117 + 7, 0);
          sub_10000C1E8(v119);
          if (!v129 || v129 == 412)
          {
            goto LABEL_100;
          }

          goto LABEL_80;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Failed to allocate %d bytes (%d transports)", v142, v143, v144, v145, v146, v147, v148, v117 + 7);
          v149 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
LABEL_79:
            sub_1000E09C0();
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Link is not encrypted, can't send caps", v109, v110, v111, v112, v113, v114, v115, v150);
        v116 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }
      }

LABEL_80:
      sub_100236DDC(a1, 1, 1);
      v91 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v92 = 0;
        do
        {
          v93 = &qword_100BC9CB0[134 * v92];
          if (*v93 == a1)
          {
            *&v155 = 0;
            sub_1000D4354(&v155);
            v94 = SWORD2(v155) + 1000 * v155;
            v95 = *(v93 + 98) + 1000 * *(v93 + 48);
            if (v94 == v95)
            {
              v96 = 0xFFFFFFFFLL;
            }

            else
            {
              v96 = 8 * *(v93 + 23) / (v94 - v95);
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Done with connection, %d total bytes sent in %d seconds (%d kbps)", v97, v98, v99, v100, v101, v102, v103, *(v93 + 23));
              v104 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                v105 = sub_10000C0FC();
                *buf = 136446210;
                *&buf[4] = v105;
                _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if (off_100BC9C80)
            {
              off_100BC9C80(a1, 1, v96);
            }

            v106 = *(v93 + 13);
            if (v106)
            {
              sub_10002242C(v106);
            }

            v107 = v93[8];
            if (v107)
            {
              sub_10000C1E8(v107);
              v93[8] = 0;
              *(v93 + 18) = 0;
            }

            v108 = dword_100BC9C74;
            v91 = --dword_100BC9C74;
            if (v108 != 1)
            {
              memcpy(&qword_100BC9CB0[134 * (v108 - 2)], v93, 0x430uLL);
            }

            bzero(&qword_100BC9CB0[134 * v91], 0x430uLL);
            v92 = 0;
          }

          else
          {
            ++v92;
          }
        }

        while (v92 < v91);
      }

LABEL_100:
      v155 = 0u;
      v156 = 0u;
      LOBYTE(v155) = 1;
      WORD1(v155) = 4;
      DWORD2(v155) = 2;
      LOBYTE(v156) = 1;
      WORD1(v156) = 4;
      DWORD2(v156) = v151;
      memcpy(buf, "state", sizeof(buf));
      sub_1000CC0B0("Magnet Operation", buf, &v155, 2u);
      return;
    }
  }

LABEL_12:
  if (sub_10000C240())
  {
    sub_10000AF54("VERSION_IND not tracking this device.", v18, v19, v20, v21, v22, v23, v24, v150);
    v25 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100234880(unsigned __int16 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v93 = 0;
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_13;
    }
  }

  if (*v7 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("CAPS_IND not tracking this device.", v12, v13, v14, v15, v16, v17, v18, v92);
      v19 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (!sub_1000B6E74(a1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("CAPS_IND not supposed to get a caps from the central.", v20, v21, v22, v23, v24, v25, v26, v92);
        v27 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v28 = a1;
      v29 = 2;
      goto LABEL_59;
    }

    v8 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_26;
    }

    v9 = &word_100BC9CB8;
    v10 = dword_100BC9C74;
    while (*(v9 - 1) != a1)
    {
      v9 += 536;
      if (!--v10)
      {
        v11 = 0xFFFF;
        goto LABEL_21;
      }
    }

    v11 = *v9;
LABEL_21:
    v30 = &dword_100BC9CE0;
    while (*(v30 - 20) != v11)
    {
      v30 += 268;
      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    if (*v30 != 3)
    {
LABEL_26:
      if (sub_10000C240())
      {
        v31 = dword_100BC9C74;
        if (dword_100BC9C74)
        {
          v32 = &word_100BC9CB8;
          v33 = dword_100BC9C74;
          while (*(v32 - 1) != a1)
          {
            v32 += 536;
            if (!--v33)
            {
              v34 = 0xFFFF;
              goto LABEL_33;
            }
          }

          v34 = *v32;
LABEL_33:
          v35 = &dword_100BC9CE0;
          while (*(v35 - 20) != v34)
          {
            v35 += 268;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

          v36 = *v35;
        }

        else
        {
LABEL_36:
          v36 = 0;
        }

        v37 = sub_1000CC6B0(v36);
        sub_10000AF54("CAPS_IND as central but the current state is %s", v38, v39, v40, v41, v42, v43, v44, v37);
        v45 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v46 = a3 - 4;
    if (a3 <= 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Wrong size for caps.", v47, v48, v49, v50, v51, v52, v53, v92);
        v54 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v28 = a1;
      v29 = 3;
LABEL_59:
      sub_100236DDC(v28, 2, v29);
      return;
    }

    v55 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v56 = &word_100BC9CB8;
      while (*(v56 - 1) != a1)
      {
        v56 += 536;
        if (!--v55)
        {
          goto LABEL_49;
        }
      }

      v57 = *v56;
    }

    else
    {
LABEL_49:
      v57 = 0xFFFF;
    }

    sub_1000CBF60(v57, 4u);
    v58 = *a2;
    v59 = v58 | (a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24);
    if (sub_10000C240())
    {
      sub_10000AF54("Received CAPS_IND for lmhandle 0x%4x with version %d", v60, v61, v62, v63, v64, v65, v66, *a1);
      v67 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v94 = 0;
    v68 = sub_100236E5C(a2 + 4, v46, &v94, &v93);
    if (v68)
    {
      v69 = v68;
      if (sub_10000C240())
      {
        sub_10000AF54("CAPS_IND parser error %!", v70, v71, v72, v73, v74, v75, v76, v69);
        v77 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v28 = a1;
      v29 = v69;
      goto LABEL_59;
    }

    if (dword_100BC9C74)
    {
      v78 = 0;
      while (1)
      {
        v79 = &qword_100BC9CB0[134 * v78];
        if (*v79 == a1)
        {
          break;
        }

        if (dword_100BC9C74 <= ++v78)
        {
          goto LABEL_74;
        }
      }

      v80 = v79[8];
      if (v80)
      {
        sub_10000C1E8(v80);
      }

      v79[8] = v94;
      *(v79 + 18) = v93;
      *(v79 + 14) = v59;
      if (sub_100084230() == 15 && *(v79 + 14) <= 1u)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invoking TS WAR", v81, v82, v83, v84, v85, v86, v87, v92);
          v88 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002A2F84(a1, sub_1002370B4);
      }
    }

LABEL_74:
    sub_100194E7C(a1);
    sub_100194FFC(a1);
    v89 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v90 = &word_100BC9CB8;
      while (*(v90 - 1) != a1)
      {
        v90 += 536;
        if (!--v89)
        {
          goto LABEL_78;
        }
      }

      v91 = *v90;
    }

    else
    {
LABEL_78:
      v91 = 0xFFFF;
    }

    sub_1000CBF60(v91, 6u);
    if (xmmword_100BC9C88)
    {
      xmmword_100BC9C88(a1, v58, *(a1 + 26), *(a1 + 37) == 2);
    }

    v96 = 0u;
    v97 = 0u;
    LOBYTE(v96) = 1;
    WORD1(v96) = 4;
    DWORD2(v96) = 3;
    LOBYTE(v97) = 1;
    WORD1(v97) = 4;
    DWORD2(v97) = v59;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, &v96, 2u);
  }
}

void sub_100234E50(uint64_t a1, unsigned __int8 *a2)
{
  v2 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v2)
    {
      goto LABEL_13;
    }
  }

  if (*v5 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Not tracking this device.", v8, v9, v10, v11, v12, v13, v14, *v31);
      v15 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (sub_1000B6E74(a1))
  {
    if (dword_100BC9C74)
    {
      v6 = 0;
      while (1)
      {
        v7 = &qword_100BC9CB0[134 * v6];
        if (*v7 == a1)
        {
          break;
        }

        if (dword_100BC9C74 <= ++v6)
        {
          return;
        }
      }

      v24 = *(v7 + 18);
      if (v24)
      {
        v25 = 0;
        v26 = v7[8];
        while (*(v26 + (v25 << 6)) != *a2)
        {
          if (v24 <= ++v25)
          {
            return;
          }
        }

        v27 = v26 + (v25 << 6);
        *(v27 + 2) = a2[1] != 0;
        v28 = a2[2];
        *(v27 + 4) = v28;
        v29 = v28 | (a2[3] << 8);
        *(v27 + 4) = v29;
        v30 = v29 | (a2[4] << 16);
        *(v27 + 4) = v30;
        *(v27 + 4) = v30 | (a2[5] << 24);
        *(v27 + 8) = a2[6];
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("CAPS_CHANGED_IND not supposed to get a caps info response from the central.", v16, v17, v18, v19, v20, v21, v22, *v31);
    v23 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 136446210;
      *&v31[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", v31, 0xCu);
    }
  }
}

void sub_100235068(__int128 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_12;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_12;
    }
  }

  if (*v7 == -1)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE not tracking this device.", v16, v17, v18, v19, v20, v21, v22, v74);
      v23 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE not supposed to get a upgrade from the peripheral.", v8, v9, v10, v11, v12, v13, v14, v74);
      v15 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_100236DDC(a1, 17, 2);
  }

  else
  {
    if (a3)
    {
      v26 = *a2;
      v24 = a2 + 1;
      v25 = v26;
      v27 = a3 - 1;
      if (a3 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

      v29 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v30 = 0;
        v31 = qword_100BC9CB0;
        while (*v31 != a1)
        {
          ++v30;
          v31 += 134;
          if (dword_100BC9C74 == v30)
          {
            v32 = 0;
            v33 = 4;
            LODWORD(v30) = dword_100BC9C74;
            goto LABEL_44;
          }
        }

        v45 = &dword_100BC9CE0;
        while (*(v45 - 20) != *(v31 + 4))
        {
          v45 += 268;
          if (!--v29)
          {
            goto LABEL_40;
          }
        }

        if (*v45 != 6)
        {
LABEL_40:
          if (sub_10000C240())
          {
            v48 = sub_1000CC6B0(*(v31 + 12));
            sub_10000AF54("UPGRADE upgrade should only be received when in IDLE state. Current state is %s", v49, v50, v51, v52, v53, v54, v55, v48);
            v56 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v32 = 1;
          v33 = 5;
          goto LABEL_44;
        }

        v46 = *(v31 + 18);
        if (v46)
        {
          v47 = (v31[8] + 1);
          while (*(v47 - 1) != v25)
          {
            v47 += 64;
            if (!--v46)
            {
              goto LABEL_39;
            }
          }

          v32 = *v47;
        }

        else
        {
LABEL_39:
          v32 = 0;
        }

        if (sub_100194E4C(v30, 1u))
        {
          sub_1000CBF60(*(v31 + 4), 8u);
          *(v31 + 77) = v32;
          goto LABEL_29;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("RSSI is not sufficient for upgrade rssi=%d", v66, v67, v68, v69, v70, v71, v72, *(v31 + 47));
          v73 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v32 = 1;
        v33 = 8;
      }

      else
      {
        LODWORD(v30) = 0;
        v32 = 0;
LABEL_29:
        v33 = 4;
      }

LABEL_44:
      if (sub_10000C240())
      {
        sub_10000AF54("Received UPGRADE for lmhandle 0x%4x to transport ID %d (tech %s)", v57, v58, v59, v60, v61, v62, v63, *a1);
        v64 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v76 = 0u;
      v77 = 0u;
      LOBYTE(v76) = 1;
      WORD1(v76) = 4;
      DWORD2(v76) = 4;
      LOBYTE(v77) = 1;
      WORD1(v77) = 4;
      DWORD2(v77) = v32;
      memcpy(buf, "state", sizeof(buf));
      sub_1000CC0B0("Magnet Operation", buf, &v76, 2u);
      if (v32 == 1 || (v32 != 2 ? (v65 = sub_100237368(v32, a1, v28, v27, 0)) : (v65 = sub_10023324C(a1)), v33 = v65, v65))
      {
        BYTE5(qword_100BC9CB0[134 * v30 + 9]) = 0;
      }

      else
      {
        sub_1000D4354(&qword_100BC9CB0[134 * v30 + 19]);
      }

      v43 = v33;
      v42 = a1;
      v44 = v32;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("UPGRADE wrong size for upgrade req.", v34, v35, v36, v37, v38, v39, v40, v74);
        v41 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v42 = a1;
      v43 = 3;
      v44 = 0;
    }

    sub_100237128(v42, v43, v44);
  }
}

void sub_100235580(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_14;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_14;
    }
  }

  if (*v7 == -1)
  {
LABEL_14:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ not tracking this device.", v11, v12, v13, v14, v15, v16, v17, v95);
      v18 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (!sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ not supposed to get a upgrade req from the central.", v19, v20, v21, v22, v23, v24, v25, v95);
      v26 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v98 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v27 = a1;
    v28 = 2;
    goto LABEL_52;
  }

  if (!a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ wrong size for upgrade req.", v29, v30, v31, v32, v33, v34, v35, v95);
      v36 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v27 = a1;
    v28 = 3;
    goto LABEL_52;
  }

  if (!dword_100BC9C74)
  {
    LODWORD(v8) = 0;
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = &qword_100BC9CF0;
  while (*(v9 - 8) != a1)
  {
    ++v8;
    v9 += 134;
    if (dword_100BC9C74 == v8)
    {
      v10 = 0;
      LODWORD(v8) = dword_100BC9C74;
      goto LABEL_31;
    }
  }

  v37 = *(v9 + 2);
  if (!v37)
  {
    goto LABEL_30;
  }

  v38 = (*v9 + 1);
  while (*(v38 - 1) != *a2)
  {
    v38 += 64;
    if (!--v37)
    {
      goto LABEL_30;
    }
  }

  v10 = *v38;
LABEL_31:
  if (!sub_10000C240())
  {
    goto LABEL_47;
  }

  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      v46 = "LE";
      goto LABEL_45;
    }

    if (v10 == 2)
    {
      v46 = "BT";
      goto LABEL_45;
    }
  }

  else
  {
    switch(v10)
    {
      case 3:
        v46 = "WL";
        goto LABEL_45;
      case 16:
        v46 = "USB";
        goto LABEL_45;
      case 17:
        v46 = "AWDL";
        goto LABEL_45;
    }
  }

  v46 = "??";
LABEL_45:
  sub_10000AF54("Received UPGRADE_REQ to tech %s (2) from lmhandle 0x%4x", v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = sub_10000C050(0x56u);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v98 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
  }

LABEL_47:
  if (!v10)
  {
    v27 = a1;
    v28 = 4;
LABEL_52:
    sub_100236DDC(v27, 16, v28);
    return;
  }

  v48 = &qword_100BC9CB0[134 * v8];
  *(v48 + 21) = v10;
  if (v10 == *(v48 + 76))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ lmhandle 0x%4x already using tech %s", v49, v50, v51, v52, v53, v54, v55, *a1);
      v66 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_76:
        v84 = sub_10000C0FC();
        *buf = 136446210;
        v98 = v84;
        goto LABEL_77;
      }
    }
  }

  else
  {
    v56 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_68;
    }

    v57 = &dword_100BC9CE0;
    while (*(v57 - 20) != *(v48 + 4))
    {
      v57 += 268;
      if (!--v56)
      {
        goto LABEL_68;
      }
    }

    if (*v57 == 6)
    {
      if (*(v48 + 40) == *(v48 + 48) || *(v48 + 82) == *(v48 + 98))
      {
        v58 = 0;
      }

      else
      {
        v96 = 0;
        sub_1000D4354(&v96);
        v85 = (1000 * (v96 - *(v48 + 40)) - *(v48 + 82) + SWORD2(v96));
        v58 = v85 >> 2 < 0x465;
        if (v85 >> 2 >= 0x465)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("TS connection timeout detected %d mseconds ago, allow remote transport switch request", v86, v87, v88, v89, v90, v91, v92, v85);
            v93 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = sub_10000C0FC();
              *buf = 136446210;
              v98 = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          *(v48 + 40) = *(v48 + 48);
          *(v48 + 82) = *(v48 + 98);
        }
      }

      if (v10 == 2 && v58 | !sub_100194E4C(v8, 1u))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received UPGRADE_REQ to tech BT but RSSI was not sufficient or uncertainty was %d, ignoring", v59, v60, v61, v62, v63, v64, v65, v58);
          v66 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = sub_10000C0FC();
            *buf = 136446210;
            v98 = v67;
LABEL_77:
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received UPGRADE_REQ to tech BT. RSSI:  %d: %d", v75, v76, v77, v78, v79, v80, v81, *(v48 + 47));
          v82 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v83 = sub_10000C0FC();
            *buf = 136446210;
            v98 = v83;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_10022FF14(a1, v10, 32);
      }
    }

    else
    {
LABEL_68:
      if (sub_10000C240())
      {
        sub_10000AF54("UPGRADE_REQ got a request when already switching (state %d) !", v68, v69, v70, v71, v72, v73, v74, *(v48 + 12));
        v66 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_76;
        }
      }
    }
  }
}

void sub_100235C60(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_10;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_10;
    }
  }

  if (*v7 == -1)
  {
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_CFM not tracking this device.", v9, v10, v11, v12, v13, v14, v15, v39);
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (sub_1000B6E74(a1))
    {
      if (a3)
      {
        v8 = *a2;
      }

      else
      {
        v8 = 0;
      }

      v25 = a3 - 1;
      if (a3 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = (a2 + 1);
      }

      if (sub_10000C240())
      {
        v27 = *a1;
        sub_100233F18(v8);
        sub_10000AF54("Received UPGRADE_CFM from lmhandle 0x%4x with %s", v28, v29, v30, v31, v32, v33, v34, v27);
        v35 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v41 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (dword_100BC9C74)
      {
        v36 = 0;
        v37 = qword_100BC9CB0;
        while (*v37 != a1)
        {
          ++v36;
          v37 += 134;
          if (dword_100BC9C74 == v36)
          {
            v38 = 0;
            LODWORD(v36) = dword_100BC9C74;
            goto LABEL_30;
          }
        }

        sub_1000CCE28(*(v37 + 4));
        if (v8)
        {
          *(v37 + 77) = 1;
          sub_1000CBF60(*(v37 + 4), 6u);
          sub_1000D4200(a1);
          return;
        }

        sub_1000CBF60(*(v37 + 4), 8u);
        v38 = *(v37 + 77);
        if (v38 == 2)
        {
          if (!sub_10023324C(a1))
          {
            goto LABEL_36;
          }

          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v36) = 0;
        v38 = 0;
      }

LABEL_30:
      if (!sub_100237368(v38, a1, v26, v25, 1))
      {
LABEL_36:
        sub_1000D4354(&qword_100BC9CB0[134 * v36 + 19]);
        return;
      }

LABEL_31:
      sub_1002334C8(a1, 1u);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_CFM not supposed to get a upgrade CFM from the central.", v17, v18, v19, v20, v21, v22, v23, v39);
      v24 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v41 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }
}

void sub_100235F34(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_9;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  if (*v5 == -1)
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_COMPLETE not tracking this device.", v7, v8, v9, v10, v11, v12, v13, v35);
      v14 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (a3)
    {
      v6 = *a2;
    }

    else
    {
      v6 = 0;
    }

    if (sub_10000C240())
    {
      v15 = *a1;
      sub_100233F18(v6);
      sub_10000AF54("Received UPGRADE_COMPLETE from lmhandle 0x%4x with %s", v16, v17, v18, v19, v20, v21, v22, v15);
      v23 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v37 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v24 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a1; i += 134)
      {
        if (!--v24)
        {
          return;
        }
      }

      sub_1000CCE28(*(i + 4));
      sub_1000CBF60(*(i + 4), 0xAu);
      if (v6)
      {
        *(i + 77) = 1;
        sub_1000B78F0(i);
LABEL_25:
        sub_10023362C(a1, v6);
        return;
      }

      if (sub_1000B78F0(i))
      {
        goto LABEL_25;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Received UPGRADE_COMPLETE but the transport isn't up yet. Waiting until transport is up.", v26, v27, v28, v29, v30, v31, v32, v35);
        v33 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = sub_10000C0FC();
          *buf = 136446210;
          v37 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

void sub_100236178(unsigned __int16 *a1, _BYTE *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v3)
    {
      goto LABEL_13;
    }
  }

  if (*v5 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_COMPLETE_CFM not tracking this device.", v17, v18, v19, v20, v21, v22, v23, v58);
      v24 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (a3 && (v6 = *a2, *a2))
    {
      if (sub_10000C240())
      {
        v7 = *a1;
        sub_100233F18(v6);
        sub_10000AF54("Received UPGRADE_COMPLETE_CFM from lmhandle 0x%4x with %s", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v16 = 0;
    }

    else
    {
      if (sub_10000C240())
      {
        v25 = *a1;
        sub_100233F18(0);
        sub_10000AF54("Received UPGRADE_COMPLETE_CFM from lmhandle 0x%4x with %s", v26, v27, v28, v29, v30, v31, v32, v25);
        v33 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v6 = 0;
      v16 = 1;
    }

    if (dword_100BC9C74)
    {
      v34 = 0;
      v35 = 0;
      while (qword_100BC9CB0[v34] != a1)
      {
        ++v35;
        v34 += 134;
        if (134 * dword_100BC9C74 == v34)
        {
          return;
        }
      }

      v36 = &qword_100BC9CB0[v34];
      sub_1000CCE28(LOWORD(qword_100BC9CB0[v34 + 1]));
      sub_1000CBF60(*(v36 + 4), 6u);
      sub_1000D4200(a1);
      sub_1000CCC34(v35, *(v36 + 77));
      *(v36 + 77) = 1;
      ++*(v36 + 50);
      ++*(v36 + 526);
      sub_100016250((v36 + 16));
      v37 = sub_1000B78F0(v36);
      if (v6 == 4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting upgraded connection due to remote transport error", v38, v39, v40, v41, v42, v43, v44, v58);
          v45 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1000D2538(v37, 19);
        goto LABEL_52;
      }

      sub_1000D29F4(a1, 1);
      if (v37)
      {
        sub_1000D4200(v37);
        if (*(v37 + 2))
        {
          v46 = 17;
        }

        else
        {
          v46 = 2;
        }

        if (qword_100BC9C78)
        {
          v47 = v16;
        }

        else
        {
          v47 = 0;
        }

        if (v47 != 1)
        {
          goto LABEL_52;
        }

        if (sub_1000B8B5C(v37))
        {
          (qword_100BC9C78)(a1, v46, v37 + 48, *(v37 + 278));
LABEL_52:
          v60 = 0u;
          v61 = 0u;
          LOBYTE(v60) = 1;
          WORD1(v60) = 4;
          DWORD2(v60) = 5;
          LOBYTE(v61) = 1;
          WORD1(v61) = 4;
          DWORD2(v61) = v6;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v60, 2u);
          return;
        }
      }

      else
      {
        if (qword_100BC9C78)
        {
          v48 = v16;
        }

        else
        {
          v48 = 0;
        }

        if ((v48 & 1) == 0)
        {
          goto LABEL_52;
        }

        v46 = 1;
      }

      if (sub_10000C240())
      {
        v56 = "Invalid";
        if (!v37)
        {
          v56 = "Empty";
        }

        sub_10000AF54("%s alternate handle for Peer %d, connectionHandle=%p, pipeID=0x%4x", v49, v50, v51, v52, v53, v54, v55, v56);
        v57 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      (qword_100BC9C78)(a1, v46, 0, 0);
      goto LABEL_52;
    }
  }
}

uint64_t sub_1002365A8(__int128 *a1)
{
  if (sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE not supposed to get a downgrade from the peripheral.", v2, v3, v4, v5, v6, v7, v8, v55);
      v9 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = a1;
    v11 = 2;
    return sub_100236DDC(v10, 32, v11);
  }

  v12 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_23;
  }

  v13 = qword_100BC9CB0;
  while (*v13 != a1)
  {
    v13 += 134;
    if (!--v12)
    {
      goto LABEL_23;
    }
  }

  v14 = *(v13 + 4);
  if (*(v13 + 10))
  {
    v15 = v13[2];
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE no alternate handle to downgrade from.", v16, v17, v18, v19, v20, v21, v22, v55);
      v23 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v15 = 0;
  }

  if (v14 == 0xFFFF)
  {
LABEL_23:
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE invalid handle for downgrade", v26, v27, v28, v29, v30, v31, v32, v55);
      v33 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v10 = a1;
    v11 = 1;
    return sub_100236DDC(v10, 32, v11);
  }

  v24 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_35;
  }

  v25 = &dword_100BC9CE0;
  while (*(v25 - 20) != v14)
  {
    v25 += 268;
    if (!--v24)
    {
      goto LABEL_35;
    }
  }

  if (*v25 == 6)
  {
    if ((sub_1000B8B5C(v15) || sub_1000C0E08(v15) || sub_1000ABD24(v15) || sub_1000B7994(v15)) && sub_1000CBF58(v15))
    {
      sub_1000CB7DC(v15);
      sub_1000CBF60(v14, 0xBu);
      return sub_1002592C4(1, v15, sub_1002321C0);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Received DOWNGRADE from lmhandle 0x%4x", v47, v48, v49, v50, v51, v52, v53, *a1);
      v54 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v57[0] = xmmword_1008A40A8;
    v57[1] = unk_1008A40B8;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, v57, 2u);
    v44 = a1;
    v45 = 0;
    v46 = v15;
  }

  else
  {
LABEL_35:
    if (sub_10000C240())
    {
      v35 = sub_1000CC6B0(*(v13 + 12));
      sub_10000AF54("DOWNGRADE can't downgrade state isn't IDLE it's %s", v36, v37, v38, v39, v40, v41, v42, v35);
      v43 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v44 = a1;
    v45 = 5;
    v46 = 0;
  }

  return sub_10023229C(v44, v45, v46);
}

void sub_10023693C(unsigned __int16 *a1)
{
  if (sub_1000B6E74(a1))
  {
    v2 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v3 = 0;
      v4 = qword_100BC9CB0;
      while (*v4 != a1)
      {
        ++v3;
        v4 += 134;
        if (dword_100BC9C74 == v3)
        {
          v5 = 0;
          v3 = dword_100BC9C74;
          goto LABEL_22;
        }
      }

      *(v4 + 21) = 1;
      v14 = &dword_100BC9CE0;
      while (*(v14 - 20) != *(v4 + 4))
      {
        v14 += 268;
        if (!--v2)
        {
          goto LABEL_18;
        }
      }

      if (*v14 == 6)
      {
        v5 = *(v4 + 29) == 0;
        goto LABEL_22;
      }

LABEL_18:
      if (sub_10000C240())
      {
        v15 = sub_1000CC6B0(*(v4 + 12));
        sub_10000AF54("DOWNGRADE_REQ not downgrading, state is %s", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v35 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v5 = 0;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

LABEL_22:
    if (sub_10000C240())
    {
      sub_10000AF54("Received DOWNGRADE_REQ from peer %d, %s", v24, v25, v26, v27, v28, v29, v30, v3);
      v31 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_10000C0FC();
        *buf = 136446210;
        v35 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v5)
    {
      sub_1000CB3A0(a1, 32);
    }

    else if (v3 == dword_100BC9C74)
    {
      sub_1000D660C();
    }

    else
    {
      sub_100194DDC(3, 0, v3);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE_REQ not supposed to get a downgrade request from the central.", v6, v7, v8, v9, v10, v11, v12, v33);
      v13 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v35 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_100236DDC(a1, 34, 2);
  }
}

void sub_100236BF8(unsigned int a1)
{
  if (sub_10000C240())
  {
    v2 = sub_100233F18(a1);
    sub_10000AF54("Remote side sent fatal %s", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = sub_10000C0FC();
      v13 = 1024;
      v14 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    }
  }

  sub_1001BAA68(a1 + 5050, "TS Remote Error");
}

const char *sub_100236CAC(int a1)
{
  if (a1 > 18)
  {
    if (a1 <= 32)
    {
      switch(a1)
      {
        case 19:
          return "UPGRADE_COMPLETE";
        case 20:
          return "COMPLETE_CFM";
        case 32:
          return "DOWNGRADE";
      }
    }

    else if (a1 > 253)
    {
      if (a1 == 254)
      {
        return "FATAL_ERROR";
      }

      if (a1 == 255)
      {
        return "ERROR";
      }
    }

    else
    {
      if (a1 == 33)
      {
        return "DOWNGRADE_CFM";
      }

      if (a1 == 34)
      {
        return "DOWNGRADE_REQ";
      }
    }

    return "Unknown";
  }

  if (a1 <= 15)
  {
    switch(a1)
    {
      case 1:
        return "VERSION_IND";
      case 2:
        return "CAPS_IND";
      case 5:
        return "CAPS_CHANGED_IND";
    }

    return "Unknown";
  }

  if (a1 == 16)
  {
    return "UPGRADE_REQ";
  }

  if (a1 == 17)
  {
    return "UPGRADE";
  }

  return "UPGRADE_CFM";
}

uint64_t sub_100236DDC(__int128 *a1, char a2, char a3)
{
  v7 = 767;
  v8 = a2;
  v9 = a3;
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v4 = &word_100BC9CB8;
    while (*(v4 - 1) != a1)
    {
      v4 += 536;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v5 = *v4;
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFLL;
  }

  return sub_1000B7BFC(0, a1, v5, &v7, 4uLL, 0);
}

uint64_t sub_100236E5C(_BYTE *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  *a4 = 0;
  *a3 = 0;
  v4 = *a1;
  if (!*a1)
  {
    return 3;
  }

  if (13 * v4 > a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid size, got %d, expected %d", v6, v7, v8, v9, v10, v11, v12, a2);
      v13 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 3;
  }

  v18 = sub_100007618(*a1 << 6, 0x10800401DCC41E5uLL);
  result = 1;
  if (v18)
  {
    v19 = 0;
    v20 = qword_100BC9C68 + 16;
    v21 = 1;
    while (1)
    {
      v22 = a1[v21];
      if (v21 + v22 > a2)
      {
        break;
      }

      v23 = &v18[64 * v19];
      *v23 = a1[(v21 + 1)];
      v24 = a1[(v21 + 2)];
      v23[1] = v24;
      v23[2] = a1[(v21 + 3)] != 0;
      v23[12] = a1[(v21 + 4)] != 0;
      v25 = a1[(v21 + 5)];
      *(v23 + 1) = v25;
      v26 = v25 | (a1[(v21 + 6)] << 8);
      *(v23 + 1) = v26;
      v27 = v26 | (a1[(v21 + 7)] << 16);
      *(v23 + 1) = v27;
      *(v23 + 1) = v27 | (a1[(v21 + 8)] << 24);
      LOWORD(v27) = a1[(v21 + 9)];
      *(v23 + 4) = v27;
      *(v23 + 4) = v27 | (a1[(v21 + 10)] << 8);
      LOWORD(v27) = a1[(v21 + 11)];
      *(v23 + 5) = v27;
      *(v23 + 5) = v27 | (a1[(v21 + 12)] << 8);
      v28 = byte_100BC9C70;
      v29 = v20;
      if (byte_100BC9C70)
      {
        while (*(v29 - 15) != v24)
        {
          v29 += 8;
          if (!--v28)
          {
            goto LABEL_15;
          }
        }

        v23[13] = 1;
        *(v23 + 2) = *v29;
      }

LABEL_15:
      v21 = (v21 + 1 + v22);
      if (++v19 == v4)
      {
        goto LABEL_20;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("pos(%d) + transportSize(%d) > dataSize(%d)", v30, v31, v32, v33, v34, v35, v36, v21);
      v37 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_20:
    result = 0;
    *a3 = v18;
    *a4 = v4;
  }

  return result;
}

void sub_1002370B4(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("_writeLeRemotePublicAddressCB:  %d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100237128(__int128 *a1, unsigned int a2, int a3)
{
  v5 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v6 = &word_100BC9CB8;
    while (*(v6 - 1) != a1)
    {
      v6 += 536;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v7 = *v6;
  }

  else
  {
LABEL_5:
    v7 = 0xFFFFLL;
  }

  __len[0] = 0;
  if (a2)
  {
    sub_1000CBF60(v7, 6u);
LABEL_9:
    v8 = 0;
    v9 = 3;
    goto LABEL_10;
  }

  v12 = byte_100BC9C70;
  if (!byte_100BC9C70)
  {
    goto LABEL_9;
  }

  v13 = qword_100BC9C68;
  v9 = 3;
  while (*(v13 + 1) != a3)
  {
    v13 += 64;
    if (!--v12)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (*(v13 + 12) != 1)
  {
    goto LABEL_9;
  }

  v8 = (*(v13 + 56))(__len);
  v9 = __len[0] + 3;
LABEL_10:
  v10 = sub_100007618(v9, 0x99480D8FuLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 18;
    v10[1] = LOBYTE(__len[0]) + 1;
    v10[2] = a2;
    if (v8 && __len[0])
    {
      memmove(v10 + 3, v8, __len[0]);
    }

    else if (!v8)
    {
      goto LABEL_23;
    }

    sub_10000C1E8(v8);
LABEL_23:
    v14 = *a1;
    if (sub_10000C240())
    {
      sub_100233F18(a2);
      sub_10000AF54("Sending UPGRADE_CFM to lmhandle 0x%4x p:0x%4x with %s", v15, v16, v17, v18, v19, v20, v21, v14);
      v22 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10000C0FC();
        *&__len[1] = 136446210;
        *&__len[3] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", &__len[1], 0xCu);
      }
    }

    v24 = sub_1000B7BFC(0, a1, v7, v11, (__len[0] + 3), 0);
    if (v24 == 412 || !v24)
    {
      sub_1000CC6D4(v7, 0x61A8u);
    }

    v8 = v11;
    goto LABEL_30;
  }

  if (v8)
  {
LABEL_30:
    sub_10000C1E8(v8);
  }
}

uint64_t sub_100237368(int a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CB7DC(a2);
  v10 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    v11 = (qword_100BC9C68 + 40);
    while (*(v11 - 39) != a1)
    {
      v11 += 8;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    if (*v11 && !(*v11)(a2, a5, a3, a4, sub_10023743C, sub_100237570))
    {
      return 0;
    }
  }

LABEL_8:
  sub_1000D4200(a2);
  return 4;
}

void sub_10023743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!sub_1000ABD24(a1))
  {
    v5 = 0;
  }

  if (sub_1000ABB80(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error : collision between external transport LMHandle and exiting connection : %d already in use", v6, v7, v8, v9, v10, v11, v12, a2);
      v13 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (sub_1000ABB80(a2))
    {
      sub_1000D660C();
    }
  }

  else
  {
    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v15 = sub_10025645C(v5);
      v14 = v15;
      if (v15)
      {
        *v15 = a2;
        v15[60] = 0;
        v16 = byte_100BC9C70;
        if (byte_100BC9C70)
        {
          v17 = (qword_100BC9C68 + 1);
          while (*v17 != 17)
          {
            v17 += 64;
            if (!--v16)
            {
              goto LABEL_12;
            }
          }

          *(v15 + 14) = *(v17 - 1);
        }
      }
    }

LABEL_12:

    sub_10023189C(v5, v14, a3, 1);
  }
}

void sub_100237570(int a1)
{
  v1 = sub_1000ABB80(a1);
  if (v1)
  {
    v2 = v1;
    sub_1000CDA54(v1, 0);

    sub_1000E12C4(v2);
  }

  else
  {

    sub_1000D660C();
  }
}

void sub_1002375D0(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v3 = &dword_100BC9CE0;
    while (*(v3 - 20) != v1)
    {
      v3 += 268;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *v3;
    v6 = *v3 + 4993;
    if (v4 - 7 >= 6)
    {
      v5 = 5014;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
    v5 = 5014;
  }

  if (sub_10000C240())
  {
    v7 = sub_1000CC6B0(v4);
    sub_10000AF54("Critical timeout elapsed during %s - disconnecting device, due to error %! on pipe ID 0x%2x", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v16 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v17 = &word_100BC9CB8;
    while (*v17 != v1)
    {
      v17 += 536;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    v18 = *(v17 - 1);
  }

  else
  {
LABEL_16:
    v18 = 0;
  }

  if (off_100BC9CA0)
  {
    off_100BC9CA0(v18, 81, 1273, v5);
  }

  if (v18 && sub_1000ABD24(v18))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting device %x", v19, v20, v21, v22, v23, v24, v25, v18);
      v26 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002CDF48(v18);
  }
}

uint64_t sub_100237758(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(void), void (*a4)(uint64_t, const char *))
{
  off_100BCDFB0 = 0;
  sub_10030511C();
  sub_100304588();
  if (a3)
  {
    v8 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Invoking customization callback\n";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    a3();
  }

  if (sub_1003047F4())
  {
    v9 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Support code initialization failed\n";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }
  }

  v10 = sub_1003045A0(0x30u);
  v11 = sub_1001BBB30(v10);
  if (v11)
  {
    v24 = v11;
    v25 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Memory Manager initialization failed\n";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    sub_1000C52F4(v24);
    goto LABEL_40;
  }

  sub_100304C58(0, a2);
  if ((sub_1001C3A3C(0) & 1) == 0)
  {
    v12 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Sniffer initialization failed\n";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }
  }

  v13 = sub_10023B4D0(0);
  if (v13)
  {
LABEL_40:
    v15 = v13;
    v26 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 136446210;
    v28 = "Device Manager initialization failed\n";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    goto LABEL_47;
  }

  v14 = sub_10022DC98();
  v15 = v14;
  if (!a1 && v14 == 109)
  {
    do
    {
      sub_10000C198();
      sub_1001BAECC(100);
      sub_1000031B0();
      v16 = sub_10022DD38();
    }

    while (v16 == 109);
    v15 = v16;
  }

  if (v15)
  {
    v17 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Transport layer initialization failed\n";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    if (a4)
    {
      v18 = "Transport layer initialization failed";
LABEL_35:
      a4(v15, v18);
      return v15;
    }

    goto LABEL_47;
  }

  v19 = sub_10024D21C(0);
  if (v19)
  {
    v15 = v19;
    v26 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 136446210;
    v28 = "OI_HCIAPI_Init_Vars failed\n";
    goto LABEL_46;
  }

  v20 = sub_10029F820();
  if (v20)
  {
    v15 = v20;
    v26 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "BT VSC init failed\n";
      goto LABEL_46;
    }

LABEL_47:
    sub_1000C52F4(v15);
    goto LABEL_48;
  }

  if (a1)
  {
    off_100BCDFB0 = a1;
    v15 = sub_10024D5C8(sub_100237BF0);
    if (!v15)
    {
      return v15;
    }

LABEL_32:
    v22 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "HCI initialization failed\n";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    v18 = "HCI initialization failed";
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_48:
    sub_1001BAA68(v15, v18);
  }

  for (i = sub_10024D5C8(0); ; i = sub_10024D680())
  {
    v15 = i;
    if (i != 109)
    {
      break;
    }

    sub_10000C198();
    sub_1001BAECC(10);
    sub_1000031B0();
  }

  if (i)
  {
    goto LABEL_32;
  }

  sub_100237BF0(0);
  return v15;
}

void sub_100237BF0(NSObject *a1)
{
  if (a1)
  {
    v6 = a1;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "HCI initialization failed\n";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
    goto LABEL_23;
  }

  v1 = sub_1003059D4(0);
  if (v1)
  {
    v6 = v1;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "Policy Manager initialization failed\n";
    goto LABEL_22;
  }

  v2 = sub_100296410(0);
  if (v2)
  {
    v6 = v2;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "L2CAP initialization failed\n";
    goto LABEL_22;
  }

  v3 = sub_1002FC9C4();
  if (v3)
  {
    v6 = v3;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "Security Manager initialization failed\n";
    goto LABEL_22;
  }

  v4 = sub_1002D2784();
  if (v4)
  {
    v6 = v4;
    v5 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "LE GAP initialization failed\n";
      goto LABEL_22;
    }

LABEL_23:
    sub_1000C52F4(v6);
LABEL_24:
    if (v7)
    {
      v8 = 136446210;
      v9 = "SDP Server initialization failed\n";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
    }

    sub_1000C52F4(v5);
  }

  v5 = sub_1002FA134(0);
  v6 = sub_10000C050(0x5Cu);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    goto LABEL_24;
  }

  if (v7)
  {
    v8 = 136446210;
    v9 = "Stack initialization complete\n";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  if (off_100BCDFB0)
  {
    off_100BCDFB0(0);
  }
}

uint64_t sub_100237EAC()
{
  sub_10022DD58();
  sub_1002D2D48();
  sub_10029F06C();
  sub_100259790();
  sub_10022DD48();
  sub_1001BBB94();
  return 0;
}

BOOL sub_100237EDC(int a1, void *a2)
{
  HIDWORD(v6) = 0x100000;
  if (!a2)
  {
    sub_1000D660C();
  }

  LODWORD(v6) = a1;
  return *a2 == v6 && a2[1] == 0xFB349B5F80000080;
}

BOOL sub_100237F64(uint64_t a1, uint64_t a2)
{
  if (*a1 != 3 || *a2 != 3)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  if (v2 == 2)
  {
LABEL_6:
    v3 = *(a1 + 8);
    if (*(a2 + 2) == 16)
    {
      return sub_100237EDC(v3, *(a2 + 8));
    }

    return v3 == *(a2 + 8);
  }

  if (v2 != 16)
  {
    if (v2 == 4)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a2 + 2) != 16)
  {
    return sub_100237EDC(*(a2 + 8), *(a1 + 8));
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v7 = *v4;
  v6 = v4[1];
  v9 = *v5;
  v8 = v5[1];
  return v7 == v9 && v6 == v8;
}

uint64_t sub_100238000(uint64_t a1)
{
  v4 = xmmword_1008A3890;
  if (*a1 != 3)
  {
    return 0;
  }

  v1 = *(a1 + 2);
  if (v1 == 2)
  {
    return *(a1 + 8);
  }

  if (v1 != 16)
  {
    if (v1 == 4)
    {
      return *(a1 + 8);
    }

    return 0;
  }

  v3 = *(a1 + 8);
  LODWORD(v4) = *v3;
  if (*v3 == v4)
  {
    return *v3;
  }

  else
  {
    return 0;
  }
}

const char *sub_1002380B8(uint64_t a1)
{
  if (*a1 != 3)
  {
    sub_1000D660C();
  }

  if (*(a1 + 2) == 16)
  {
    v2 = *(a1 + 8);

    return sub_100302240(v2);
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_10030253C(v4);
  }
}

uint64_t sub_100238128(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = a2;
  if (*a2 == 32)
  {
    v4 = *(a2 + 1);
  }

  sub_1000BE324(a1, a3);
  sub_100062468(a1, "<");
  v6 = *(a1 + 4);
  switch(*v4)
  {
    case 0u:
      v7 = "null";
      goto LABEL_11;
    case 1u:
      v10 = "uint";
      goto LABEL_16;
    case 2u:
      v10 = "sint";
      goto LABEL_16;
    case 3u:
      v10 = "uuid";
LABEL_16:
      sub_100062468(a1, v10);
      sub_100307718(a1, 8 * *(v4 + 1));
      break;
    case 4u:
      v8 = "text";
      goto LABEL_21;
    case 5u:
      if (v4[8])
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

LABEL_11:
      sub_100062468(a1, v7);
      v9 = "/>\n";
      goto LABEL_67;
    case 6u:
      v8 = "seq";
      goto LABEL_21;
    case 7u:
      v8 = "alt";
      goto LABEL_21;
    case 8u:
      v8 = "url";
      goto LABEL_21;
    case 0x11u:
      v8 = "bdaddr";
      goto LABEL_21;
    case 0x12u:
      v8 = "rawbytes";
      goto LABEL_21;
    case 0x13u:
      v8 = "status";
      goto LABEL_21;
    case 0x14u:
      v8 = "text16";
LABEL_21:
      sub_100062468(a1, v8);
      break;
    default:
      break;
  }

  v11 = *(a1 + 4);
  sub_1002385E0(a1, v4);
  sub_100062468(a1, ">");
  v12 = *v4;
  if (v12 > 7)
  {
    if (*v4 > 0x11u)
    {
      switch(v12)
      {
        case 0x12u:
          sub_100238754(a1, *(v4 + 1), *(v4 + 1), (a3 + 4));
          break;
        case 0x13u:
LABEL_55:
          sub_100307718(a1, *(v4 + 2));
          goto LABEL_66;
        case 0x14u:
          sub_100238684(a1, *(v4 + 1), *(v4 + 1), (a3 + 4));
          break;
        default:
LABEL_56:
          sub_100062468(a1, "!!!Corrupt Data Element!!!");
          goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (v12 != 8)
    {
      if (v12 == 17)
      {
        for (i = 0; i != 6; ++i)
        {
          if (i)
          {
            sub_100062468(a1, ":");
          }

          sub_1000623D8(a1, *(*(v4 + 1) + i), 2);
        }

        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (*v4 <= 3u)
    {
      if (v12 - 1 < 2)
      {
        if (*(v4 + 1) >= 5u)
        {
          sub_100062468(a1, "0x");
          v13 = *(v4 + 1);
          if (*(v4 + 1) == 8)
          {
            sub_1000623D8(a1, *v13, 8);
            v14 = *(*(v4 + 1) + 4);
          }

          else
          {
            sub_1000623D8(a1, *v13, 8);
            sub_1000623D8(a1, *(*(v4 + 1) + 4), 8);
            sub_1000623D8(a1, *(*(v4 + 1) + 8), 8);
            v14 = *(*(v4 + 1) + 12);
          }

          v19 = a1;
          v18 = 8;
          goto LABEL_65;
        }

        if (v12 == 1)
        {
          sub_100062468(a1, "0x");
          v14 = *(v4 + 2);
          v17 = *(v4 + 1);
LABEL_54:
          v18 = 2 * v17;
          v19 = a1;
LABEL_65:
          sub_1000623D8(v19, v14, v18);
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      if (v12 == 3)
      {
        sub_100062468(a1, "0x");
        v17 = *(v4 + 1);
        if (v17 > 4)
        {
          sub_1000623D8(a1, **(v4 + 1), 8);
          sub_100062468(a1, ",");
          for (j = 0; j != 12; ++j)
          {
            sub_1000623D8(a1, *(*(v4 + 1) + j + 4), 2);
            if (j == 5 || (j & 0xD) == 1)
            {
              sub_100062468(a1, ",");
            }
          }

          goto LABEL_66;
        }

        v14 = *(v4 + 2);
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v12 - 6 < 2)
    {
      sub_100062468(a1, "\n");
      if (*(v4 + 1))
      {
        v15 = 0;
        do
        {
          sub_100238128(a1, *(v4 + 1) + 16 * v15++, (a3 + 4));
        }

        while (*(v4 + 1) > v15);
      }

LABEL_51:
      sub_1000BE324(a1, a3);
      goto LABEL_66;
    }

    if (v12 != 4)
    {
      goto LABEL_56;
    }
  }

  sub_100307498(a1, *(v4 + 1), *(v4 + 1));
LABEL_66:
  sub_100062468(a1, "</");
  sub_100307498(a1, (*(a1 + 8) + v6), (v11 - v6));
  sub_100062468(a1, ">");
  v9 = "\n";
LABEL_67:

  return sub_100062468(a1, v9);
}

uint64_t sub_1002385E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 3)
  {
    if (*(a2 + 1) > 4u)
    {
      return 0;
    }

    v4 = sub_10030253C(*(a2 + 2));
  }

  else
  {
    if (v3 != 19)
    {
      return 0;
    }

    sub_1000CDD74(*(a2 + 2));
  }

  v5 = v4;
  if (v4)
  {
    sub_100062468(a1, " id=");
    sub_100062468(a1, v5);
    sub_100062468(a1, "");
    sub_100062468(a1, "\t");
    return 1;
  }

  return 0;
}

uint64_t sub_100238684(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_100062468(a1, "\n");
  sub_1000BE324(a1, a4);
  if (a3)
  {
    v8 = 0;
    do
    {
      if (v8 && (v8 & 0xF) == 0)
      {
        sub_100062468(a1, "\n");
        sub_1000BE324(a1, a4);
      }

      sub_1000623D8(a1, *(a2 + 2 * v8), 4);
      sub_1000BE324(a1, 1);
      ++v8;
    }

    while (a3 != v8);
  }

  return sub_100062468(a1, "\n");
}

uint64_t sub_100238754(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_100062468(a1, "\n");
  sub_1000BE324(a1, a4);
  if (a3)
  {
    v8 = 0;
    do
    {
      if (v8 && (v8 & 0x1F) == 0)
      {
        sub_100062468(a1, "\n");
        sub_1000BE324(a1, a4);
      }

      sub_1000623D8(a1, *(a2 + v8), 2);
      sub_1000BE324(a1, 1);
      ++v8;
    }

    while (a3 != v8);
  }

  return sub_100062468(a1, "\n");
}

uint64_t sub_100238824(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_100062468(a1, "|");
  if (*a2 == 32)
  {
    a2 = *(a2 + 1);
  }

  sub_1000BE324(a1, a3);
  v6 = "null";
  switch(*a2)
  {
    case 0u:
      goto LABEL_69;
    case 1u:
      v7 = "uint";
      goto LABEL_14;
    case 2u:
      v7 = "sint";
      goto LABEL_14;
    case 3u:
      v7 = "uuid";
LABEL_14:
      sub_100062468(a1, v7);
      sub_100307718(a1, 8 * *(a2 + 1));
      break;
    case 4u:
      v8 = "text";
      goto LABEL_19;
    case 5u:
      if (a2[8])
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      goto LABEL_69;
    case 6u:
      v8 = "seq";
      goto LABEL_19;
    case 7u:
      v8 = "alt";
      goto LABEL_19;
    case 8u:
      v8 = "url";
      goto LABEL_19;
    case 0x11u:
      v8 = "bdaddr";
      goto LABEL_19;
    case 0x12u:
      v8 = "rawbytes";
      goto LABEL_19;
    case 0x13u:
      v8 = "status";
      goto LABEL_19;
    case 0x14u:
      v8 = "text16";
LABEL_19:
      sub_100062468(a1, v8);
      break;
    default:
      break;
  }

  sub_1000BE324(a1, 3);
  v9 = sub_1002385E0(a1, a2);
  if (v9)
  {
    sub_100062468(a1, "(");
  }

  v10 = *a2;
  if (v10 > 7)
  {
    if (*a2 > 0x11u)
    {
      switch(v10)
      {
        case 0x12u:
          sub_100238754(a1, *(a2 + 1), *(a2 + 1), (a3 + 4));
          break;
        case 0x13u:
LABEL_55:
          sub_100307718(a1, *(a2 + 2));
          goto LABEL_66;
        case 0x14u:
          sub_100238684(a1, *(a2 + 1), *(a2 + 1), (a3 + 4));
          break;
        default:
LABEL_56:
          sub_100062468(a1, "!!!Corrupt Data Element!!!");
          goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (v10 != 8)
    {
      if (v10 == 17)
      {
        for (i = 0; i != 6; ++i)
        {
          if (i)
          {
            sub_100062468(a1, ":");
          }

          sub_1000623D8(a1, *(*(a2 + 1) + i), 2);
        }

        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (*a2 <= 3u)
    {
      if (v10 - 1 < 2)
      {
        if (*(a2 + 1) >= 5u)
        {
          sub_100062468(a1, "0x");
          v11 = *(a2 + 1);
          if (*(a2 + 1) == 8)
          {
            sub_1000623D8(a1, *v11, 8);
            v12 = *(*(a2 + 1) + 4);
          }

          else
          {
            sub_1000623D8(a1, *v11, 8);
            sub_1000623D8(a1, *(*(a2 + 1) + 4), 8);
            sub_1000623D8(a1, *(*(a2 + 1) + 8), 8);
            v12 = *(*(a2 + 1) + 12);
          }

          v17 = a1;
          v16 = 8;
          goto LABEL_65;
        }

        if (v10 == 1)
        {
          sub_100062468(a1, "0x");
          v12 = *(a2 + 2);
          v15 = *(a2 + 1);
LABEL_54:
          v16 = 2 * v15;
          v17 = a1;
LABEL_65:
          sub_1000623D8(v17, v12, v16);
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      if (v10 == 3)
      {
        sub_100062468(a1, "0x");
        v15 = *(a2 + 1);
        if (v15 > 4)
        {
          sub_1000623D8(a1, **(a2 + 1), 8);
          sub_100062468(a1, ",");
          for (j = 0; j != 12; ++j)
          {
            sub_1000623D8(a1, *(*(a2 + 1) + j + 4), 2);
            if (j == 5 || (j & 0xD) == 1)
            {
              sub_100062468(a1, ",");
            }
          }

          goto LABEL_66;
        }

        v12 = *(a2 + 2);
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v10 - 6 < 2)
    {
      sub_100062468(a1, "\n");
      if (*(a2 + 1))
      {
        v13 = 0;
        do
        {
          sub_100238824(a1, *(a2 + 1) + 16 * v13++, (a3 + 4), 0);
        }

        while (*(a2 + 1) > v13);
      }

LABEL_51:
      sub_1000BE324(a1, a3);
      goto LABEL_66;
    }

    if (v10 != 4)
    {
      goto LABEL_56;
    }
  }

  sub_100307498(a1, *(a2 + 1), *(a2 + 1));
LABEL_66:
  if (v9)
  {
    sub_100062468(a1, ")");
  }

  v6 = "\n";
LABEL_69:

  return sub_100062468(a1, v6);
}

void sub_100238CA8(unsigned __int8 *a1, char *__s)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = strlen(__s);
  sub_100307404(v8, (v4 + 1));
  sub_100062468(v8, "\n");
  v5 = strlen(__s);
  sub_100307498(v8, __s, v5);
  sub_100238824(v8, a1, 5);
  v6 = sub_10000C050(0x5Cu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100307920(v8);
    *buf = 136446210;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  sub_10030745C(v8);
}

uint64_t sub_100238DB8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  ptr = xmmword_1008A43D8;
  v85 = 0;
  LOWORD(ptr) = 0;
  v4 = *(a1 + 10);
  v5 = *(a1 + 12);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    p_ptr = &ptr;
LABEL_3:
    if (a2)
    {
      sub_1000D660C();
    }

    goto LABEL_5;
  }

  p_ptr = &ptr;
  while (1)
  {
    v12 = *a3;
    if (v12 == 32)
    {
      a3 = *(a3 + 1);
      v12 = *a3;
    }

    v13 = *(a3 + 1);
    if (v12 <= 5)
    {
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          if (v13 == 4)
          {
            if (*(a3 + 2) >= 0x10000u)
            {
              LODWORD(v13) = 4;
            }

            else
            {
              LODWORD(v13) = 2;
            }
          }
        }

        else if (v12 == 4)
        {
          goto LABEL_48;
        }
      }

      else if ((v12 - 1) >= 2)
      {
        if (!v12)
        {
          if (a2)
          {
            a2 = (a2 - 1);
          }

          else
          {
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_178:
              v80 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_180:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 174, v80);
            }

            if (v4 <= v5)
            {
              goto LABEL_178;
            }

            if (*(a1 + 14) != 2)
            {
              v80 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
              goto LABEL_180;
            }

            a2 = 0;
            v45 = *a1;
            *(a1 + 12) = v5 + 1;
            *(v45 + v5) = 0;
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

LABEL_56:
      if (a2 > v13)
      {
        a2 = (a2 + ~v13);
        goto LABEL_123;
      }

      if (v13 > 3)
      {
        if (v13 != 4)
        {
          if (v13 == 8)
          {
            if (a2)
            {
              v40 = (a2 - 1);
            }

            else
            {
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_189:
                v83 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_191:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 222, v83);
              }

              if (v4 <= v5)
              {
                goto LABEL_189;
              }

              if (*(a1 + 14) != 2)
              {
                v83 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_191;
              }

              v40 = 0;
              v46 = *a1;
              *(a1 + 12) = v5 + 1;
              *(v46 + v5) = (8 * v12) | 3;
            }

            v47 = sub_100239930(a1, v40, **(a3 + 1));
            v48 = *(*(a3 + 1) + 4);
          }

          else
          {
            if (v13 != 16)
            {
              goto LABEL_74;
            }

            if (a2)
            {
              v31 = (a2 - 1);
            }

            else
            {
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_185:
                v82 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_187:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 234, v82);
              }

              if (v4 <= v5)
              {
                goto LABEL_185;
              }

              if (*(a1 + 14) != 2)
              {
                v82 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_187;
              }

              v31 = 0;
              v49 = *a1;
              *(a1 + 12) = v5 + 1;
              *(v49 + v5) = (8 * v12) | 4;
              v12 = *a3;
            }

            v50 = *(a3 + 1);
            if (v12 == 3)
            {
              v51 = sub_100239930(a1, v31, *v50);
              if (v51 == -1)
              {
                goto LABEL_5;
              }

              v52 = v51;
              v53 = *(a1 + 12);
              LOWORD(v54) = *(a1 + 10) - v53;
              v55 = *a1;
              v56 = *(a3 + 1);
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
                v57 = 0;
              }

              else
              {
                v57 = *(a1 + 10) - v53;
              }

              v62 = (12 - v52);
              v63 = v54;
              if (v62 >= v54)
              {
                v54 = v54;
              }

              else
              {
                v54 = (12 - v52);
              }

              if (v57 < v54)
              {
                v81 = "ByteStream_NumReadBytesAvail(*ByteStream) >= ((((size) > (bytesAllowed)) ? (bytesAllowed) : (size)))";
LABEL_183:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 246, v81);
              }

              if (*(a1 + 14) != 2)
              {
                v81 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_183;
              }

              memmove((v55 + v53), (v56 + v52 + 4), v54);
              *(a1 + 12) += v54;
              if (v62 > v63)
              {
                goto LABEL_5;
              }

LABEL_83:
              a2 = 0;
              goto LABEL_123;
            }

            v58 = sub_100239930(a1, v31, *v50);
            v59 = sub_100239930(a1, v58, *(*(a3 + 1) + 4));
            v47 = sub_100239930(a1, v59, *(*(a3 + 1) + 8));
            v48 = *(*(a3 + 1) + 12);
          }

          v60 = sub_100239930(a1, v47, v48);
          if (v60 == -1)
          {
            goto LABEL_5;
          }

          a2 = v60;
          goto LABEL_123;
        }

        if (v6 < 5u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_154:
          v74 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_156:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 215, v74);
        }

        if (v4 <= v5)
        {
          goto LABEL_154;
        }

        if (*(a1 + 14) != 2)
        {
          v74 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_156;
        }

        v38 = *a1;
        *(a1 + 12) = v5 + 1;
        *(v38 + v5) = (8 * v12) | 2;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_158:
          v75 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 4";
LABEL_160:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 216, v75);
        }

        v39 = *(a1 + 12);
        if (*(a1 + 10) - v39 <= 3)
        {
          goto LABEL_158;
        }

        if (*(a1 + 14) != 2)
        {
          v75 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_160;
        }

        *(*a1 + v39 + 3) = *(a3 + 2);
        *(*a1 + *(a1 + 12) + 2) = BYTE1(*(a3 + 2));
        *(*a1 + *(a1 + 12) + 1) = *(a3 + 5);
        *(*a1 + *(a1 + 12)) = a3[11];
        v34 = *(a1 + 12) + 4;
LABEL_92:
        *(a1 + 12) = v34;
        goto LABEL_123;
      }

      if (v13 == 1)
      {
        if (v6 < 2u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_170:
          v78 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_172:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 201, v78);
        }

        if (v4 <= v5)
        {
          goto LABEL_170;
        }

        if (*(a1 + 14) != 2)
        {
          v78 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_172;
        }

        v41 = *a1;
        *(a1 + 12) = v5 + 1;
        *(v41 + v5) = 8 * v12;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_174:
          v79 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_176:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 202, v79);
        }

        v42 = *(a1 + 12);
        if (*(a1 + 10) <= v42)
        {
          goto LABEL_174;
        }

        if (*(a1 + 14) != 2)
        {
          v79 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_176;
        }

        v43 = *(a3 + 2);
        v44 = *a1;
        *(a1 + 12) = v42 + 1;
        *(v44 + v42) = v43;
        goto LABEL_123;
      }

      if (v13 == 2)
      {
        if (v6 < 3u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_162:
          v76 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_164:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 208, v76);
        }

        if (v4 <= v5)
        {
          goto LABEL_162;
        }

        if (*(a1 + 14) != 2)
        {
          v76 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_164;
        }

        v32 = *a1;
        *(a1 + 12) = v5 + 1;
        *(v32 + v5) = (8 * v12) | 1;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_166:
          v77 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
LABEL_168:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 209, v77);
        }

        v33 = *(a1 + 12);
        if (*(a1 + 10) - v33 <= 1)
        {
          goto LABEL_166;
        }

        if (*(a1 + 14) != 2)
        {
          v77 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_168;
        }

        *(*a1 + v33 + 1) = *(a3 + 2);
        *(*a1 + *(a1 + 12)) = BYTE1(*(a3 + 2));
        v34 = *(a1 + 12) + 2;
        goto LABEL_92;
      }

LABEL_74:
      sub_1000D660C();
      goto LABEL_123;
    }

    if (v12 > 16)
    {
      if ((v12 - 17) < 2)
      {
        goto LABEL_48;
      }

      if (v12 != 19)
      {
        if (v12 == 20)
        {
          v14 = sub_100239A2C(a1, a2, 2 * v13, 20);
          if (v14 == -1)
          {
            goto LABEL_5;
          }

          a2 = v14;
          if (v13)
          {
            v15 = 0;
            v16 = *(a1 + 12);
            v17 = *(a1 + 10) - v16;
            while (1)
            {
              if (a2)
              {
                a2 = (a2 - 2);
              }

              else
              {
                if (v17 < 2u)
                {
                  goto LABEL_5;
                }

                if (*(a1 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_147:
                  v72 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
LABEL_149:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 301, v72);
                }

                if (*(a1 + 10) - v16 <= 1)
                {
                  goto LABEL_147;
                }

                if (*(a1 + 14) != 2)
                {
                  v72 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_149;
                }

                a2 = 0;
                *(*a1 + v16 + 1) = *(*(a3 + 1) + v15);
                *(*a1 + *(a1 + 12)) = *(*(a3 + 1) + v15 + 1);
                v16 = *(a1 + 12) + 2;
                *(a1 + 12) = v16;
                v17 -= 2;
              }

              v15 += 2;
              if (2 * v13 == v15)
              {
                goto LABEL_123;
              }
            }
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

      goto LABEL_56;
    }

    if ((v12 - 6) >= 2)
    {
      break;
    }

    v18 = sub_100239CA8(a3);
    if (!v18)
    {
      goto LABEL_5;
    }

    v19 = v18 - 2;
    if (((v18 - 2) & 0xFF00) != 0)
    {
      v19 = v18 - 3;
    }

    v20 = v19;
    v21 = sub_100239A2C(a1, a2, v19, *a3);
    if (v21 == -1)
    {
      goto LABEL_5;
    }

    a2 = v21;
    if (v21 >= v20)
    {
      a2 = v21 - v20;
      goto LABEL_123;
    }

    if (!*(a3 + 1) || !*(a3 + 1))
    {
      goto LABEL_123;
    }

    v22 = sub_100007618(0x18uLL, 0x1060040EB5A7A7CuLL);
    if (!v22)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("MarshalElement: %!", v64, v65, v66, v67, v68, v69, v70, 106);
        v71 = sub_10000C050(0x2Bu);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_100813FF0();
        }
      }

LABEL_5:
      if (p_ptr != &ptr)
      {
        do
        {
          v8 = *(p_ptr + 2);
          sub_10000C1E8(p_ptr);
          p_ptr = v8;
        }

        while (v8 != &ptr);
      }

      return 0xFFFFFFFFLL;
    }

    *(p_ptr + 1) = a3;
    *(v22 + 2) = p_ptr;
    v23 = *(a3 + 1);
    *v22 = v23;
    a3 = *(a3 + 1);
    p_ptr = v22;
LABEL_131:
    *p_ptr = v23 - 1;
    v4 = *(a1 + 10);
    v5 = *(a1 + 12);
    v6 = v4 - v5;
    if (v4 == v5)
    {
      goto LABEL_3;
    }
  }

  if (v12 != 8)
  {
    goto LABEL_74;
  }

LABEL_48:
  v24 = sub_100239A2C(a1, a2, *(a3 + 1), v12);
  if (v24 == -1)
  {
    goto LABEL_5;
  }

  v25 = v24;
  a2 = v24 - v13;
  if (v24 < v13)
  {
    v26 = *(a1 + 12);
    LOWORD(v27) = *(a1 + 10) - v26;
    v28 = *a1;
    v29 = *(a3 + 1);
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 10) - v26;
    }

    v35 = v13 - v25;
    v36 = (v13 - v25);
    v37 = v27;
    if (v27 >= v35)
    {
      v27 = v36;
    }

    else
    {
      v27 = v27;
    }

    if (v30 < v27)
    {
      v73 = "ByteStream_NumReadBytesAvail(*ByteStream) >= ((((size) > (bytesAllowed)) ? (bytesAllowed) : (size)))";
    }

    else
    {
      if (*(a1 + 14) == 2)
      {
        memmove((v28 + v26), (v29 + v25), v27);
        *(a1 + 12) += v27;
        if (v37 < v36)
        {
          goto LABEL_5;
        }

        goto LABEL_83;
      }

      v73 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 278, v73);
  }

LABEL_123:
  if (p_ptr != &ptr)
  {
    if (*p_ptr)
    {
      a3 += 16;
    }

    else
    {
      while (1)
      {
        v61 = p_ptr;
        p_ptr = *(p_ptr + 2);
        sub_10000C1E8(v61);
        if (p_ptr == &ptr)
        {
          break;
        }

        if (*p_ptr)
        {
          a3 = (*(p_ptr + 1) + 16);
          break;
        }
      }
    }
  }

  if (p_ptr != &ptr)
  {
    v23 = *p_ptr;
    goto LABEL_131;
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1000D660C();
  }

  return a2;
}

uint64_t sub_100239930(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 != -1)
  {
    if (a2 >= 4)
    {
      return (a2 - 4);
    }

    v3 = *(a1 + 12);
    v4 = *(a1 + 10) - v3;
    if ((v4 & 0xFFFC) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
    }

    else if (v4 > 3)
    {
      if (*(a1 + 14) == 2)
      {
        *(*a1 + v3 + 3) = a3;
        *(*a1 + *(a1 + 12) + 2) = BYTE1(a3);
        *(*a1 + *(a1 + 12) + 1) = BYTE2(a3);
        *(*a1 + *(a1 + 12)) = HIBYTE(a3);
        *(a1 + 12) += 4;
        return a2;
      }

      v6 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_14:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 119, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 4";
    goto LABEL_14;
  }

  return a2;
}

uint64_t sub_100239A2C(uint64_t *a1, int a2, unsigned int a3, char a4)
{
  if (a3 > 0xFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 6);
  v7 = *(a1 + 5) - v6;
  if (a3 < 0x100)
  {
    if ((v7 & 0xFFFE) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2)
    {
      v4 = (a2 - 2);
      if (a2 - 2 >= 0)
      {
        return v4;
      }

      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
    }

    else if (v7 > 0)
    {
      if (*(a1 + 14) == 2)
      {
        v8 = *a1;
        *(a1 + 6) = v6 + 1;
        *(v8 + v6) = (8 * a4) | 5;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
        }

        else
        {
          v9 = *(a1 + 6);
          if (*(a1 + 5) > v9)
          {
            if (*(a1 + 14) == 2)
            {
              v4 = 0;
              v10 = *a1;
              *(a1 + 6) = v9 + 1;
              *(v10 + v9) = a3;
              return v4;
            }

            v14 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 92, v14);
          }
        }

        v14 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
        goto LABEL_34;
      }

      v13 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 91, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
    goto LABEL_30;
  }

  if ((*(a1 + 5) - v6) >= 3u)
  {
    if (a2)
    {
      v4 = (a2 - 3);
      if (a2 - 3 >= 0)
      {
        return v4;
      }

      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
    }

    else if (v7 > 0)
    {
      if (*(a1 + 14) == 2)
      {
        v11 = *a1;
        *(a1 + 6) = v6 + 1;
        *(v11 + v6) = (8 * a4) | 6;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
        }

        else
        {
          v12 = *(a1 + 6);
          if (*(a1 + 5) - v12 > 1)
          {
            if (*(a1 + 14) == 2)
            {
              v4 = 0;
              *(*a1 + v12 + 1) = a3;
              *(*a1 + *(a1 + 6)) = BYTE1(a3);
              *(a1 + 6) += 2;
              return v4;
            }

            v16 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 79, v16);
          }
        }

        v16 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
        goto LABEL_42;
      }

      v15 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 78, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
    goto LABEL_38;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100239CA8(unsigned __int8 *a1)
{
  ptr = xmmword_1008A43D8;
  v27 = 0;
  v2 = 1;
  for (i = &ptr; ; v2 = *i)
  {
    *i = v2 - 1;
    v4 = *(i + 1) + 1;
    *(i + 1) = v4;
    v5 = *a1;
    if (v5 == 32)
    {
      a1 = *(a1 + 1);
      v5 = *a1;
    }

    v6 = *(a1 + 1);
    if (v5 <= 5)
    {
      if (v5 <= 2)
      {
        if ((v5 - 1) < 2)
        {
          goto LABEL_32;
        }

        if (!v5)
        {
          goto LABEL_34;
        }

LABEL_45:
        sub_1000D660C();
        goto LABEL_34;
      }

      if (v5 == 3)
      {
        if (v6 == 4)
        {
          if (*(a1 + 2) >= 0x10000u)
          {
            LOWORD(v6) = 4;
          }

          else
          {
            LOWORD(v6) = 2;
          }
        }
      }

      else if (v5 == 4)
      {
LABEL_23:
        v7 = v6 + v4;
LABEL_24:
        if (v6 <= 0xFF)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        v10 = v7 + v9;
LABEL_33:
        *(i + 1) = v10;
        goto LABEL_34;
      }

LABEL_32:
      v10 = v6 + v4;
      goto LABEL_33;
    }

    if (v5 > 16)
    {
      if ((v5 - 17) < 2)
      {
        goto LABEL_23;
      }

      if (v5 == 19)
      {
        goto LABEL_32;
      }

      if (v5 == 20)
      {
        v7 = v4 + 2 * v6;
        goto LABEL_24;
      }

      goto LABEL_45;
    }

    if ((v5 - 6) >= 2)
    {
      if (v5 == 8)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }

    if (*(a1 + 1) && *(a1 + 1))
    {
      break;
    }

LABEL_34:
    if (i != &ptr)
    {
      if (*i)
      {
        a1 += 16;
      }

      else
      {
        while (1)
        {
          v11 = i;
          v12 = *(i + 1);
          v13 = v12 <= 0xFF ? 1 : 2;
          v14 = v13 + v12;
          *(i + 1) = v14;
          i = *(i + 2);
          *(i + 1) += v14;
          sub_10000C1E8(v11);
          if (i == &ptr)
          {
            break;
          }

          if (*i)
          {
            a1 = (*(i + 1) + 16);
            break;
          }
        }
      }
    }

    if (i == &ptr)
    {
      return WORD1(ptr);
    }

LABEL_44:
    ;
  }

  v8 = sub_100007618(0x18uLL, 0x1060040EB5A7A7CuLL);
  if (v8)
  {
    *(i + 1) = a1;
    *(v8 + 2) = i;
    *v8 = *(a1 + 1);
    a1 = *(a1 + 1);
    i = v8;
    goto LABEL_44;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_DataElement_MarshalledSize: %!", v16, v17, v18, v19, v20, v21, v22, 106);
    v23 = sub_10000C050(0x2Bu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_10000C0FC();
      *buf = 136446466;
      v29 = v25;
      v30 = 1024;
      v31 = 106;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    }
  }

  if (i != &ptr)
  {
    do
    {
      v24 = *(i + 2);
      sub_10000C1E8(i);
      i = v24;
    }

    while (v24 != &ptr);
  }

  return 0;
}

BOOL sub_100239FBC(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  v4 = sub_100238DB8(a1, *a2, a3);
  if (v4 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return v4 != -1;
}

uint64_t sub_100239FF8(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 782, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *(a1 + 12);
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_8:
    *(a1 + 15) = 1;
    result = 843;
    goto LABEL_9;
  }

  if (*(a1 + 10) <= v4)
  {
    goto LABEL_8;
  }

  v6 = *a1;
  *(a1 + 12) = v4 + 1;
  v7 = *(v6 + v4);
  *a2 = v7 >> 3;
  if (a3)
  {
    if (v7 >= 8)
    {
      v10 = sub_10023A120(a1, v7 & 7);
      *a3 = v10;
      v8 = v10 - v4 + *(a1 + 12);
      if (v8 >= 0x10000)
      {
        return 808;
      }
    }

    else
    {
      LOWORD(v8) = 1;
    }

    *a3 = v8;
  }

  if (*(a1 + 15))
  {
    result = 843;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  if (v4 > *(a1 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 806, "(size_t)(pos) <= (size_t)((*ByteStream).__size)");
  }

  *(a1 + 12) = v4;
  return result;
}

uint64_t sub_10023A120(uint64_t *a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        return 16;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 589, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (!*(a1 + 15))
      {
        v8 = *(a1 + 6);
        if (*(a1 + 5) > v8)
        {
          v9 = *a1;
          *(a1 + 6) = v8 + 1;
          return *(v9 + v8);
        }

LABEL_24:
        result = 0;
        *(a1 + 15) = 1;
        return result;
      }

LABEL_23:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 596, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        goto LABEL_23;
      }

      v6 = *(a1 + 6);
      if (*(a1 + 5) - v6 < 2)
      {
        goto LABEL_24;
      }

      result = bswap32(*(*a1 + v6)) >> 16;
      v7 = v6 + 2;
    }

    else
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 603, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 6);
      if (*(a1 + 5) - v10 < 4)
      {
        goto LABEL_24;
      }

      result = bswap32(*(*a1 + v10 + 2)) >> 16;
      v7 = v10 + 4;
    }

    *(a1 + 6) = v7;
    return result;
  }

  if (a2 == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a2 <= 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10023A2F0(uint64_t a1, _WORD *a2, _WORD *a3)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 818, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
LABEL_10:
    *(a1 + 15) = 1;
    return 843;
  }

  v4 = *(a1 + 12);
  if (*(a1 + 10) <= v4)
  {
    goto LABEL_10;
  }

  v5 = *a1;
  *(a1 + 12) = v4 + 1;
  v6 = *(v5 + v4);
  if ((v6 & 0xF0) != 0x30)
  {
    return 808;
  }

  v7 = v6 & 7;
  if ((v7 - 5) > 2)
  {
    return 808;
  }

  *a2 = 0x500030002uLL >> (16 * (v7 - 5));
  *a3 = sub_10023A120(a1, v7);
  if (*(a1 + 15))
  {
    return 843;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10023A3E8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = "UnmarshalListElement corrupt data element";
  v7 = a2;
  while (2)
  {
    while (2)
    {
      if (*v7 == 33)
      {
        v7 = *(v7 + 8);
        goto LABEL_173;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 873, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
        goto LABEL_187;
      }

      v8 = *(a1 + 10);
      v9 = *(a1 + 12);
      if (v8 <= v9)
      {
LABEL_187:
        *(a1 + 15) = 1;
        return 808;
      }

      v10 = *a1;
      v11 = v9 + 1;
      *(a1 + 12) = v9 + 1;
      v12 = *(v10 + v9);
      v13 = v12 >> 3;
      *v7 = *(v10 + v9) >> 3;
      if (!v12)
      {
        *(v7 + 2) = 0;
        goto LABEL_173;
      }

      if ((a3 & 1) == 0 && (v13 - 21) >= 0xFFFFFFFC)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Reserved BHAPI Desc Rxed, discarded: %2x\n", v96, v97, v98, v99, v100, v101, v102, v12);
          v103 = sub_10000C050(0x2Bu);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_199;
          }
        }

        return 808;
      }

      v14 = v12 & 7;
      if (v12 >> 3 <= 3)
      {
        if ((v13 - 1) < 2)
        {
          goto LABEL_27;
        }

        if (v13)
        {
          if (v13 == 3)
          {
            v15 = (v12 & 7) == 0 || v14 == 3;
            if (v15)
            {
              return 808;
            }

            goto LABEL_27;
          }

          goto LABEL_197;
        }

LABEL_57:
        if ((v12 & 7) != 0)
        {
          return 808;
        }

LABEL_58:
        if (v8 <= v11)
        {
          v26 = 0;
          *(a1 + 15) = 1;
        }

        else
        {
          *(a1 + 12) = v9 + 2;
          v26 = *(v10 + v11);
        }

        *(v7 + 8) = v26;
        *(v7 + 2) = 1;
        goto LABEL_172;
      }

      if (v13 > 0x14)
      {
        goto LABEL_197;
      }

      if (((1 << v13) & 0x1601D0) == 0)
      {
        if (v13 != 5)
        {
          if (v13 == 19)
          {
LABEL_27:
            if (v14 > 4)
            {
              return 808;
            }

            goto LABEL_28;
          }

LABEL_197:
          if (sub_10000C240())
          {
            sub_10000AF54("Reserved Elem Desc Rxed, discarded: %2x\n", v112, v113, v114, v115, v116, v117, v118, v12);
            v119 = sub_10000C050(0x2Bu);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_199;
            }
          }

          return 808;
        }

        goto LABEL_57;
      }

      if (v14 < 5)
      {
        return 808;
      }

LABEL_28:
      if ((v12 & 7u) <= 2)
      {
        if ((v12 & 7) != 0)
        {
          v16 = v8 - v11;
          if (v14 == 1)
          {
            if (v16 < 2)
            {
              v17 = 0;
              *(a1 + 15) = 1;
            }

            else
            {
              v17 = __rev16(*(v10 + v11));
              *(a1 + 12) = v9 + 3;
            }

            *(v7 + 8) = v17;
            *(v7 + 2) = 2;
          }

          else
          {
            if (v16 < 4)
            {
              v27 = 0;
              *(a1 + 15) = 1;
            }

            else
            {
              v27 = bswap32(*(v10 + v11));
              *(a1 + 12) = v9 + 5;
            }

            *(v7 + 8) = v27;
            *(v7 + 2) = 4;
          }

          goto LABEL_172;
        }

        goto LABEL_58;
      }

      if (v14 - 5 >= 3)
      {
        if (v14 == 3)
        {
          v24 = sub_100007618(8uLL, 0x100004000313F17uLL);
          *(v7 + 8) = v24;
          if (!v24)
          {
            return 106;
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 988, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
            v25 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v25 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 989, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }
          }

          else
          {
            v58 = *(a1 + 12);
            if (*(a1 + 10) - v58 > 3)
            {
              *v24 = bswap32(*(*a1 + v58));
              *(a1 + 12) = v58 + 4;
              if (*(a1 + 10) - (v58 + 4) >= 4)
              {
                *(*(v7 + 8) + 4) = bswap32(*(*a1 + (v58 + 4)));
                *(a1 + 12) = v58 + 8;
LABEL_148:
                v82 = 8;
LABEL_171:
                *(v7 + 2) = v82;
                goto LABEL_172;
              }

LABEL_147:
              *(a1 + 15) = 1;
              goto LABEL_148;
            }

            *(a1 + 15) = 1;
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
          goto LABEL_147;
        }

        v39 = sub_100007618(0x10uLL, 0x1000040451B5BE8uLL);
        *(v7 + 8) = v39;
        if (v13 == 3)
        {
          if (!v39)
          {
            return 106;
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 998, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
            v40 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v40 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 999, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_168;
          }

          v74 = *(a1 + 12);
          if (*(a1 + 10) - v74 > 3)
          {
            v75 = *a1;
            *v39 = bswap32(*(*a1 + v74));
            v76 = v74 + 4;
            *(a1 + 12) = v74 + 4;
            if (*(a1 + 10) - (v74 + 4) >= 0xC)
            {
              v77 = 0;
              v78 = *(v7 + 8);
              v79 = v75 + v76;
              do
              {
                *(v78 + 4 + v77) = *(v79 + v77);
                ++v77;
              }

              while (v77 != 12);
              v80 = *(a1 + 12) + 12;
              goto LABEL_139;
            }

            goto LABEL_169;
          }

          *(a1 + 15) = 1;
          goto LABEL_168;
        }

        if (!v39)
        {
          return 106;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1006, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
          v49 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v49 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1007, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }
        }

        else
        {
          v81 = *(a1 + 12);
          if (*(a1 + 10) - v81 > 3)
          {
            *v39 = bswap32(*(*a1 + v81));
            *(a1 + 12) = v81 + 4;
            if (*(a1 + 10) - (v81 + 4) > 3)
            {
              *(*(v7 + 8) + 4) = bswap32(*(*a1 + (v81 + 4)));
              *(a1 + 12) = v81 + 8;
              if (*(a1 + 10) - (v81 + 8) > 3)
              {
                *(*(v7 + 8) + 8) = bswap32(*(*a1 + (v81 + 8)));
                *(a1 + 12) = v81 + 12;
                if (*(a1 + 10) - (v81 + 12) >= 4)
                {
                  *(*(v7 + 8) + 12) = bswap32(*(*a1 + (v81 + 12)));
                  v80 = v81 + 16;
LABEL_139:
                  *(a1 + 12) = v80;
LABEL_170:
                  v82 = 16;
                  goto LABEL_171;
                }

LABEL_169:
                *(a1 + 15) = 1;
                goto LABEL_170;
              }

              *(a1 + 15) = 1;
LABEL_168:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
              goto LABEL_169;
            }

            *(a1 + 15) = 1;
LABEL_167:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
            v93 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v93 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1009, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_168;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
        v92 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v92 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1008, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_167;
      }

      v18 = 808;
      if (v13 <= 7)
      {
        if ((v13 - 6) >= 2)
        {
          if (v13 != 4)
          {
            return v18;
          }

LABEL_90:
          v50 = sub_10023A120(a1, v14);
          *(v7 + 2) = v50;
          if (*(a1 + 15))
          {
            return v18;
          }

          v51 = sub_100007618(v50 + 2, 0x100004077774924uLL);
          *(v7 + 8) = v51;
          if (v51)
          {
            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 694, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            v52 = v51;
            v53 = *a1;
            v54 = *(a1 + 12);
            v55 = *(v7 + 2);
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
              v56 = 0;
            }

            else
            {
              v56 = *(a1 + 10) - v54;
            }

            v57 = *(v7 + 2);
            if (v56 >= v57)
            {
              if (v55)
              {
                v71 = (v53 + v54);
                v72 = &v52[v55];
                do
                {
                  v73 = *v71++;
                  *v52++ = v73;
                }

                while (v52 < v72);
                v57 = *(v7 + 2);
              }

              *(a1 + 12) += v57;
            }

            else
            {
              *(a1 + 15) = 1;
            }

            *(*(v7 + 8) + v57) = 0;
            *(*(v7 + 8) + *(v7 + 2) + 1) = 0;
            if (!*(a1 + 15))
            {
              goto LABEL_173;
            }

            return 808;
          }

          return 106;
        }

        v28 = sub_10023A120(a1, v14);
        if (*(a1 + 15))
        {
          if (sub_10000C240())
          {
            v36 = v6;
            sub_10000AF54(v6, v29, v30, v31, v32, v33, v34, v35, v120);
            v37 = sub_10000C050(0x2Bu);
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
LABEL_68:
              v38 = 0;
              v6 = v36;
              goto LABEL_179;
            }

LABEL_185:
            v94 = sub_10000C0FC();
            *buf = 136446466;
            v123 = v94;
            v124 = 1024;
            v125 = 808;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            goto LABEL_68;
          }

          v38 = 0;
        }

        else
        {
          *(v7 + 2) = 0;
          *(v7 + 8) = 0;
          if (v28)
          {
            v59 = *(a1 + 12);
            v121 = v28;
            v60 = v59 + v28;
            if (v59 >= (v59 + v28))
            {
              v61 = 0;
              v63 = *(a1 + 12);
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = *(a1 + 12);
              do
              {
                if (*(a1 + 15))
                {
                  break;
                }

                if (*(a1 + 14) != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 645, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
                }

                if (*(a1 + 10) <= v63)
                {
                  *(a1 + 15) = 1;
                }

                else
                {
                  v64 = *a1;
                  v65 = v63++;
                  *(a1 + 12) = v63;
                  v62 = *(v64 + v65);
                }

                if (v62)
                {
                  v66 = sub_10023A120(a1, v62 & 7);
                  if (*(a1 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
                    v67 = 0;
                  }

                  else
                  {
                    v67 = *(a1 + 10) - *(a1 + 12);
                  }

                  if (v67 >= v66)
                  {
                    v63 = *(a1 + 12) + v66;
                    *(a1 + 12) = v63;
                  }

                  else
                  {
                    *(a1 + 15) = 1;
                    v63 = *(a1 + 12);
                  }
                }

                ++v61;
              }

              while (v63 < v60);
            }

            v6 = "UnmarshalListElement corrupt data element";
            if (v63 != v60)
            {
              *(a1 + 15) = 1;
            }

            if (v59 > *(a1 + 10))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 665, "(size_t)(startPos) <= (size_t)((*ByteStream).__size)");
            }

            *(a1 + 12) = v59;
            if (*(a1 + 15) || !v61)
            {
              if (sub_10000C240())
              {
                v36 = "UnmarshalListElement corrupt data element";
                sub_10000AF54("UnmarshalListElement corrupt data element", v85, v86, v87, v88, v89, v90, v91, v120);
                v37 = sub_10000C050(0x2Bu);
                v18 = 808;
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_68;
                }

                goto LABEL_185;
              }

              v38 = 0;
              v18 = 808;
            }

            else
            {
              v83 = sub_1001BBBD8(16 * v61 + 16, 0x10F2040C8FBA5E1uLL);
              if (v83)
              {
                v18 = 0;
                v84 = &v83[16 * v61];
                *v84 = 33;
                *(v84 + 1) = v121;
                *(v84 + 1) = v7;
                *(v7 + 2) = v61;
                *(v7 + 8) = v83;
                v38 = 1;
              }

              else
              {
                v38 = 0;
                v18 = 106;
              }
            }
          }

          else
          {
            v18 = 0;
            v38 = 1;
          }
        }

LABEL_179:
        if (*(v7 + 2))
        {
          v7 = *(v7 + 8);
          if (v38)
          {
            continue;
          }
        }

        else if (v38)
        {
          goto LABEL_172;
        }

        return v18;
      }

      break;
    }

    if ((v13 - 17) < 2)
    {
      v41 = sub_10023A120(a1, v14);
      *(v7 + 2) = v41;
      if (*(a1 + 15))
      {
        return v18;
      }

      v42 = sub_100007618(v41, 0x100004077774924uLL);
      *(v7 + 8) = v42;
      if (!v42)
      {
        return 106;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 762, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      v43 = v42;
      v44 = *a1;
      v45 = *(a1 + 12);
      v46 = *(v7 + 2);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
        v47 = 0;
      }

      else
      {
        v47 = *(a1 + 10) - v45;
      }

      v48 = *(v7 + 2);
      if (v47 >= v48)
      {
        if (v46)
        {
          v68 = (v44 + v45);
          v69 = &v43[v46];
          do
          {
            v70 = *v68++;
            *v43++ = v70;
          }

          while (v43 < v69);
          LOWORD(v48) = *(v7 + 2);
        }

        *(a1 + 12) += v48;
        if (!*(a1 + 15))
        {
          goto LABEL_173;
        }

        return 808;
      }

      goto LABEL_187;
    }

    if (v13 == 8)
    {
      goto LABEL_90;
    }

    if (v13 != 20)
    {
      return v18;
    }

    v19 = sub_10023A120(a1, v14) >> 1;
    *(v7 + 2) = v19;
    if (*(a1 + 15))
    {
      return v18;
    }

    v20 = sub_100007618(2 * (v19 + 2), 0x1000040BDFB0063uLL);
    *(v7 + 8) = v20;
    if (!v20)
    {
      return 106;
    }

    if (!*(v7 + 2))
    {
      v23 = 0;
      if (*(a1 + 15))
      {
        return 808;
      }

      goto LABEL_150;
    }

    v21 = 0;
    do
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 733, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c");
      }

      else if (*(a1 + 10) - *(a1 + 12) >= 2)
      {
        v22 = 0;
        *(*(v7 + 8) + 2 * v21) = bswap32(*(*a1 + *(a1 + 12))) >> 16;
        *(a1 + 12) += 2;
        goto LABEL_48;
      }

      v22 = 1;
      *(a1 + 15) = 1;
LABEL_48:
      ++v21;
      v23 = *(v7 + 2);
    }

    while (v21 < v23);
    if (v22)
    {
      return 808;
    }

LABEL_150:
    *(*(v7 + 8) + 2 * v23) = 0;
LABEL_172:
    if (*(a1 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unmarshal error", v104, v105, v106, v107, v108, v109, v110, v120);
        v111 = sub_10000C050(0x2Bu);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
LABEL_199:
          sub_1008142C8();
        }
      }

      return 808;
    }

LABEL_173:
    v15 = v7 == a2;
    v7 += 16;
    if (!v15)
    {
      continue;
    }

    return 0;
  }
}