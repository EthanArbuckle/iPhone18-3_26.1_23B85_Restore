void sub_1000CCC34(unsigned int a1, unsigned int a2)
{
  v2 = a2;
  v3 = &qword_100BC9CB0[134 * a1];
  v4 = *(v3 + 76);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      *(v3 + 31) = 0;
      goto LABEL_7;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + 31) = v5;
LABEL_7:
  if (!sub_10000C240())
  {
    goto LABEL_22;
  }

  v13 = *(v3 + 76);
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v14 = "LE";
      goto LABEL_20;
    }

    if (v13 == 2)
    {
      v14 = "BT";
      goto LABEL_20;
    }
  }

  else
  {
    switch(v13)
    {
      case 3u:
        v14 = "WL";
        goto LABEL_20;
      case 0x10u:
        v14 = "USB";
        goto LABEL_20;
      case 0x11u:
        v14 = "AWDL";
        goto LABEL_20;
    }
  }

  v14 = "??";
LABEL_20:
  sub_10000AF54("Updating tech %s -> %s", v6, v7, v8, v9, v10, v11, v12, v14);
  v15 = sub_10000C050(0x56u);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
  }

LABEL_22:
  *(v3 + 76) = v2;
}

uint64_t sub_1000CCE28(uint64_t result)
{
  v1 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = &dword_100BC9CE4; *(i - 22) != result; i += 268)
    {
      if (!--v1)
      {
        return result;
      }
    }

    result = sub_10002242C(*i);
    *i = 0;
  }

  return result;
}

uint64_t sub_1000CCE84(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 99;
  v46 = 99;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  if (a1 && a2)
  {
    if (*(a2 + 2))
    {
      a1 = a2;
    }

    sub_1000CBBAC(a1, v49, &v46);
    v4 = v46;
  }

  v5 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v6 = 0;
    v7 = &qword_100BC9CC0;
    while (1)
    {
      v8 = &qword_100BC9CB0[134 * v6];
      if (*v8 == v3 || *v8 == a2)
      {
        break;
      }

      v10 = *(v8 + 10);
      v11 = v7;
      if (*(v8 + 10))
      {
        while (*v11 != v3 && *v11 != a2)
        {
          v11 += 2;
          if (!--v10)
          {
            goto LABEL_18;
          }
        }

        v13 = *(v8 + 4);
        *(v49 + v4) = v13;
      }

      else
      {
LABEL_18:
        v13 = *(v49 + v4);
      }

      ++v6;
      v7 += 134;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v6 == v5;
      }

      if (v14)
      {
        goto LABEL_27;
      }
    }

    *(v49 + v4) = *(v8 + 4);
  }

LABEL_27:
  v46 = v4 + 1;
  if (!sub_1000B8B5C(v3))
  {
    sub_1000ABD24(v3);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Moving channels from %p (0x%2x) to %p (0x%2x) with an exception:", v15, v16, v17, v18, v19, v20, v21, v3);
    v22 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10000C0FC();
      *buf = 136446210;
      v48 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v46)
  {
    for (i = 0; i < v46; ++i)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("\tCID:0x%4x", v25, v26, v27, v28, v29, v30, v31, *(v49 + i));
        v32 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = sub_10000C0FC();
          *buf = 136446210;
          v48 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v34 = v46;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_1000CD1E8(v3, a2, v49, v34);
  sub_1000CD5B8(v3);
  sub_1000CD5B8(a2);
  if (!*(a2 + 2))
  {
    if (!*(a2 + 144))
    {
      v36 = sub_10028ED44(a2);
      if (v36)
      {
        v37 = v36;
        if (sub_10000C240())
        {
          sub_10000AF54("TS setting LSTO error %!", v38, v39, v40, v41, v42, v43, v44, v37);
          v45 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    if (!*(a2 + 2))
    {
      *(a2 + 25) = *(v3 + 25);
      *(a2 + 28) = *(v3 + 28);
    }
  }

  return 0;
}

uint64_t sub_1000CD1E8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v43 = 0;
  i = 0;
  v8 = qword_100B60318;
  v9 = &_mh_execute_header;
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *(v8 + 24);
    if (v10 >= 0x40)
    {
      if (a4)
      {
        if (v10 == *a3)
        {
          v11 = 1;
        }

        else
        {
          v12 = 1;
          do
          {
            v13 = v12;
            if (a4 == v12)
            {
              break;
            }

            v14 = a3[v12++];
          }

          while (v10 != v14);
          v11 = v13 < a4;
        }
      }

      else
      {
        v11 = 0;
      }

      if (!sub_1000ABC7C(v10, &v43))
      {
        v15 = *v43 != 4 || v11;
        if (!v15 && *sub_1000B12AC(v43) == a1)
        {
          *sub_1000B12AC(v43) = a2;
          v16 = v9;
          if (*(v8 + 16) == 1)
          {
            v17 = *(v8 + 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = *v8;
          if (*v8)
          {
            if (sub_10000C248(*v8))
            {
              v19 = sub_1000B47B8(v18);
              for (i = v19; i; v19 = i)
              {
                v20 = sub_1000BC720(v19);
                if (*(v20 + 8) == a1)
                {
                  *(v20 + 8) = a2;
                }

                sub_1000BC828(&i);
              }
            }
          }

          v9 = v16;
          if (v17)
          {
            if (sub_10000C248(v17))
            {
              v21 = sub_1000B47B8(v17);
              for (i = v21; i; v21 = i)
              {
                v22 = sub_1000BC720(v21);
                if (*(v22 + 8) == a1)
                {
                  *(v22 + 8) = a2;
                }

                sub_1000BC828(&i);
              }
            }
          }

          sub_1000CD544(v43, a1, a2);
        }
      }

      if (sub_10000C240())
      {
        v23 = *(v8 + 24);
        sub_1000B12AC(v43);
        sub_10000AF54("CID:0x%04x cidExcluded:%d currentHandle:%p oldHandle:%p newHandle:%p", v24, v25, v26, v27, v28, v29, v30, v23);
        v31 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = sub_10000C0FC();
          *buf = 136446210;
          v46 = v32;
          _os_log_impl(v9, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v8 = *(v8 + 80);
  }

  while (v8 != qword_100B60318);
  v33 = sub_1000B47B8(qword_100B60328);
  for (i = v33; i; v33 = i)
  {
    v34 = sub_1000BC720(v33);
    if (a4)
    {
      v35 = *(v34 + 36);
      v36 = a3;
      v37 = a4;
      do
      {
        if (v35 >= 0x40 && v35 != *v36 && *(v34 + 8) == a1)
        {
          *(v34 + 8) = a2;
        }

        ++v36;
        --v37;
      }

      while (v37);
    }

    sub_1000BC828(&i);
  }

  result = sub_1000B47B8(qword_100B60330);
  for (i = result; i; result = i)
  {
    v39 = sub_1000BC720(result);
    if (a4)
    {
      v40 = *(v39 + 36);
      v41 = a3;
      v42 = a4;
      do
      {
        if (v40 >= 0x40 && v40 != *v41 && *(v39 + 8) == a1)
        {
          *(v39 + 8) = a2;
        }

        ++v41;
        --v42;
      }

      while (v42);
    }

    sub_1000BC828(&i);
  }

  return result;
}

uint64_t sub_1000CD544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(sub_1000B12AC(a1) + 128);
  if (v5)
  {
    v6 = *(v5 + 176);
    if (v6)
    {
      v7 = sub_1000B47B8(v6);
      for (i = v7; i; v7 = i)
      {
        v8 = sub_1000BC720(v7);
        if (*(v8 + 8) == a2)
        {
          *(v8 + 8) = a3;
        }

        sub_1000BC828(&i);
      }
    }
  }

  return 0;
}

uint64_t sub_1000CD5B8(uint64_t a1)
{
  if (!sub_1000B8B5C(a1) && !sub_1000ABD24(a1))
  {
    result = sub_1000B7994(a1);
    if (!result)
    {
      return result;
    }
  }

  v3 = sub_1000CD81C(a1, 1);
  if (v3 <= 0x2F)
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 2);
  if (!*(a1 + 2))
  {
    v5 = 160;
LABEL_12:
    v6 = *(a1 + v5);
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v4 == 8)
  {
    v5 = 64;
    goto LABEL_12;
  }

  if (v4 == 4)
  {
    v5 = 224;
    goto LABEL_12;
  }

LABEL_13:
  sub_1000D660C();
  v6 = 0;
LABEL_14:
  if (v3 == *(v6 + 12))
  {
    return 0;
  }

  v7 = *v6;
  if (!*(v6 + 14))
  {
    sub_10000C1E8(*v6);
    v18 = sub_100007618(v3, 0x4CCF5BE5uLL);
    *v6 = v18;
    if (v18)
    {
LABEL_35:
      result = 0;
      *(v6 + 12) = v3;
      return result;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate new reassembly buffer", v19, v20, v21, v22, v23, v24, v25, v38);
      v26 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v27 = sub_100007618(*(v6 + 12), 0x866073B7uLL);
    *v6 = v27;
    if (!v27)
    {
      sub_1000D660C();
    }

    return 106;
  }

  v8 = sub_100007618(v3, 0x18DB1FD9uLL);
  *v6 = v8;
  if (v8)
  {
    v9 = *(v6 + 14);
    if (v9 <= v3)
    {
      memmove(v8, v7, v9);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("The new MTU is smaller than the current data size we have in the buffer ... dropping the current data (curRecvCount == %d, newBufsize=%d)", v10, v11, v12, v13, v14, v15, v16, *(v6 + 14));
        v17 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *(v6 + 14) = 0;
      *(v6 + 16) = 0;
    }

    sub_10000C1E8(v7);
    goto LABEL_35;
  }

  *v6 = v7;
  v28 = *(v6 + 12);
  result = sub_10000C240();
  if (v3 >= v28)
  {
    if (result)
    {
      sub_10000AF54("No resources for larger reassembly buffer", v29, v30, v31, v32, v33, v34, v35, v38);
      v37 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }

  if (result)
  {
    sub_10000AF54("Could not allocate new reassembly buffer - continuing with existing buffer", v29, v30, v31, v32, v33, v34, v35, v38);
    v36 = sub_10000C050(0x2Fu);
    result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F7A0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CD81C(uint64_t a1, int a2)
{
  if (a1 && word_100B60268)
  {
    v4 = word_100B60268 + 1;
    v5 = 144 * word_100B60268 - 144;
    v6 = 48;
    while (1)
    {
      v7 = qword_100B60260;
      v8 = *(qword_100B60260 + v5);
      switch(v8)
      {
        case 4:
          goto LABEL_9;
        case 3:
          if (v6 < *sub_1000CD958((qword_100B60260 + v5)))
          {
            v6 = *sub_1000CD958((v7 + v5));
          }

          break;
        case 2:
LABEL_9:
          if (*(sub_1000B12AC(qword_100B60260 + v5) + 16) >= 3u && !*(sub_1000B12AC(v7 + v5) + 17) && *sub_1000B12AC(v7 + v5) == a1)
          {
            v9 = sub_1000B12AC(v7 + v5);
            if (a2)
            {
              if (v6 < *(v9 + 36))
              {
                v6 = *(sub_1000B12AC(v7 + v5) + 36);
              }
            }

            else if (v6 < *(v9 + 32))
            {
              v6 = *(sub_1000B12AC(v7 + v5) + 32);
            }
          }

          break;
      }

      --v4;
      v5 -= 144;
      if (v4 <= 1)
      {
        return v6;
      }
    }
  }

  LOWORD(v6) = 48;
  return v6;
}

uint64_t sub_1000CD958(unsigned int *a1)
{
  if (*a1 != 3)
  {
    v2 = sub_10000C240();
    if (v2)
    {
      sub_10000AF54("Invalid access: type %d, cid %d, psm %d", v3, v4, v5, v6, v7, v8, v9, *a1);
      v10 = sub_10000C050(0x2Fu);
      v2 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (v2)
      {
        sub_10080F604();
      }
    }

    if (*a1 != 3)
    {
      sub_1000D660C(v2);
    }
  }

  result = *(a1 + 15);
  if (!result)
  {
    sub_1000D660C(0);
    return *(a1 + 15);
  }

  return result;
}

uint64_t sub_1000CDA00(uint64_t result, int a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = sub_1000CDA54(result, a2);
    if (result)
    {

      return sub_1000D2538(v3, v2);
    }
  }

  return result;
}

BOOL sub_1000CDA54(uint64_t a1, int a2)
{
  if (!dword_100BC9C74)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  for (i = &qword_100BC9CC0; ; i += 134)
  {
    v6 = &qword_100BC9CB0[134 * v3];
    v7 = *(v6 + 10);
    v8 = i;
    if (*(v6 + 10))
    {
      break;
    }

LABEL_6:
    v4 = ++v3 < dword_100BC9C74;
    if (v3 == dword_100BC9C74)
    {
      return 0;
    }
  }

  while (*v8 != a1)
  {
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  --*(v6 + 10);
  *v8 = 0;
  sub_1000CCE84(a1, *v6);
  if (*(v6 + 10) && !v6[2])
  {
    v6[2] = v6[4];
    *(v6 + 24) = *(v6 + 40);
    v6[4] = 0;
  }

  if (sub_10000C240())
  {
    v9 = *(v6 + 76);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        v10 = "LE";
        goto LABEL_24;
      }

      if (v9 == 2)
      {
        v10 = "BT";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          v10 = "WL";
          goto LABEL_24;
        case 0x10u:
          v10 = "USB";
          goto LABEL_24;
        case 0x11u:
          v10 = "AWDL";
          goto LABEL_24;
      }
    }

    v10 = "??";
LABEL_24:
    sub_1000CC6B0(*(v6 + 12));
    sub_10000AF54("Common transport disconnection: tech (current %s updating %s), state %s, pipeID %d, reason %!", v11, v12, v13, v14, v15, v16, v17, v10);
    v18 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1000CCE28(*(v6 + 4));
  if (*(v6 + 76) == 2)
  {
    sub_1000CCE28(*(v6 + 4));
    sub_1000CCC34(v3, 1u);
    v20 = a2 == 705 || a2 == 723;
    sub_1000D2C0C(v3, 2, v20);
    v21 = *(v6 + 4);
    v22 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_39;
    }

    v23 = &dword_100BC9CE0;
    while (*(v23 - 20) != v21)
    {
      v23 += 268;
      if (!--v22)
      {
        goto LABEL_39;
      }
    }

    if (*v23 != 6)
    {
LABEL_39:
      sub_1000CBF60(v21, 6u);
      sub_1000D4200(*v6);
    }

    *(v6 + 223) = 0;
  }

  return v4;
}

double sub_1000CDD74(uint64_t a1)
{
  if (sub_10000EFCC())
  {
    for (i = 0; ; ++i)
    {
      v3 = off_100B53F78[i];
      if (!v3 || i > 4)
      {
        break;
      }

      if ((v3)(a1))
      {
        return result;
      }
    }
  }

  return sub_1000D24B8(a1);
}

const char *sub_1000CDDF4(int a1)
{
  if (a1 <= 1499)
  {
    if (a1 > 1200)
    {
      switch(a1)
      {
        case 1201:
          result = "OI_HCITRANS_CANNOT_CONNECT_TO_DEVICE";
          break;
        case 1203:
          result = "OI_HCITRANS_BUFFER_TOO_SMALL";
          break;
        case 1204:
          result = "OI_HCITRANS_NULL_DEVICE_HANDLE";
          break;
        case 1205:
          result = "OI_HCITRANS_IO_ERROR";
          break;
        case 1206:
          result = "OI_HCITRANS_DEVICE_NOT_READY";
          break;
        case 1207:
          result = "OI_HCITRANS_FUNCTION_NOT_SUPPORTED";
          break;
        case 1209:
          result = "OI_HCITRANS_ACCESS_DENIED";
          break;
        case 1210:
          result = "OI_HCITRANS_ACL_DATA_ERROR";
          break;
        case 1211:
          result = "OI_HCITRANS_SCO_DATA_ERROR";
          break;
        case 1212:
          result = "OI_HCITRANS_EVENT_DATA_ERROR";
          break;
        case 1214:
          result = "OI_HCITRANS_INTERNAL_ERROR";
          break;
        case 1215:
          result = "OI_HCITRANS_LINK_NOT_ACTIVE";
          break;
        case 1216:
          result = "OI_HCITRANS_INITIALIZING";
          break;
        case 1217:
          result = "OI_HCITRANS_H4BC_TIMEOUT";
          break;
        case 1218:
          result = "OI_HCITRANS_NO_RESOURCES";
          break;
        case 1219:
          result = "OI_HCITRANS_DRIVER_ERROR";
          break;
        case 1220:
          result = "OI_HCITRANS_DEVICE_FATAL_ERROR";
          break;
        case 1301:
          result = "OI_DEVMGR_NO_CONNECTION";
          break;
        case 1302:
          result = "OI_DEVMGR_CONNECTION_PENDING_READY";
          break;
        case 1305:
          result = "OI_DEVMGR_HARDWARE_ERROR";
          break;
        case 1307:
          result = "OI_DEVMGR_PENDING_CONNECT_LIST_FULL";
          break;
        case 1309:
          result = "OI_DEVMGR_CONNECTION_LIST_FULL";
          break;
        case 1310:
          result = "OI_DEVMGR_NO_SUCH_CONNECTION";
          break;
        case 1311:
          result = "OI_DEVMGR_INQUIRY_IN_PROGRESS";
          break;
        case 1312:
          result = "OI_DEVMGR_PERIODIC_INQUIRY_ACTIVE";
          break;
        case 1313:
          result = "OI_DEVMGR_NO_INQUIRIES_ACTIVE";
          break;
        case 1314:
          result = "OI_DEVMGR_DUPLICATE_CONNECTION";
          break;
        case 1316:
          result = "OI_DEVMGR_DUPLICATE_EVENT_CALLBACK";
          break;
        case 1317:
          result = "OI_DEVMGR_EVENT_CALLBACK_LIST_FULL";
          break;
        case 1318:
          result = "OI_DEVMGR_EVENT_CALLBACK_NOT_FOUND";
          break;
        case 1319:
          result = "OI_DEVMGR_BUSY";
          break;
        case 1320:
          result = "OI_DEVMGR_ENUM_UNEXPECTED_INQ_COMPLETE";
          break;
        case 1321:
          result = "OI_DEVMGR_ENUM_UNEXPECTED_INQ_RESULT";
          break;
        case 1322:
          result = "OI_DEVMGR_ENUM_DATABASE_FULL";
          break;
        case 1323:
          result = "OI_DEVMGR_ENUM_INQUIRIES_OVERLAP";
          break;
        case 1324:
          result = "OI_DEVMGR_UNKNOWN_LINK_TYPE";
          break;
        case 1325:
          result = "OI_DEVMGR_PARAM_IO_ACTIVE";
          break;
        case 1326:
          result = "OI_DEVMGR_UNKNOWN_IAC_LAP";
          break;
        case 1327:
          result = "OI_DEVMGR_SCO_ALREADY_REGISTERED";
          break;
        case 1328:
          result = "OI_DEVMGR_SCO_NOT_REGISTERED";
          break;
        case 1329:
          result = "OI_DEVMGR_SCO_WITHOUT_ACL";
          break;
        case 1330:
          result = "OI_DEVMGR_NO_SUPPORT";
          break;
        case 1331:
          result = "OI_DEVMGR_WRITE_POLICY_FAILED";
          break;
        case 1332:
          result = "OI_DEVMGR_NOT_IN_CENTRAL_MODE";
          break;
        case 1333:
          result = "OI_DEVMGR_POLICY_VIOLATION";
          break;
        case 1334:
          result = "OI_DEVMGR_BUSY_TIMEOUT";
          break;
        case 1335:
          result = "OI_DEVMGR_REENCRYPT_FAILED";
          break;
        case 1336:
          result = "OI_DEVMGR_ROLE_POLICY_CONFLICT";
          break;
        case 1337:
          result = "OI_DEVMGR_BAD_INTERVAL";
          break;
        case 1338:
          result = "OI_DEVMGR_INVALID_SCO_HANDLE";
          break;
        case 1339:
          result = "OI_DEVMGR_CONNECTION_OVERLAP";
          break;
        case 1340:
          result = "OI_DEVMGR_ORPHAN_SUBRATE_COMPLETE";
          break;
        case 1341:
          result = "OI_DEVMGR_EIR_RESPONSE_2_LARGE";
          break;
        case 1342:
          result = "OI_DEVMGR_GENTLY_CENTRAL_SKIP_CONN";
          break;
        case 1343:
          result = "OI_DEVMGR_REQUEST_INVALID_TYPE";
          break;
        case 1344:
          result = "OI_DEVMGR_REQUEST_CONN_DISCONNECTED";
          break;
        case 1345:
          result = "OI_DEVMGR_REQUEST_FINISH_BONDING";
          break;
        case 1346:
          result = "OI_DEVMGR_REQUEST_FINISH_NAME_REQ";
          break;
        case 1348:
          result = "OI_DEVMGR_DISCONNECT_UNCONDITIONAL";
          break;
        case 1349:
          result = "OI_DEVMGR_INVALID_HANDLE_LINK_INFO";
          break;
        case 1350:
          result = "OI_DEVMGR_INVALID_HANDLE_COUNTER";
          break;
        case 1351:
          result = "OI_DEVMGR_INVALID_HANDLE_LINK_QUAL";
          break;
        case 1352:
          result = "OI_DEVMGR_INVALID_HANDLE_RSSI";
          break;
        case 1353:
          result = "OI_DEVMGR_INVALID_HANDLE_AUTO_FLUSH";
          break;
        case 1354:
          result = "OI_DEVMGR_INVALID_HANDLE_TX_POWER";
          break;
        case 1355:
          result = "OI_DEVMGR_INVALID_HANDLE_MAX_POWER";
          break;
        case 1356:
          result = "OI_DEVMGR_INVALID_HANDLE_LSTO";
          break;
        case 1358:
          result = "OI_DEVMGR_STATUS_DEFAULT";
          break;
        case 1359:
          result = "OI_DEVMGR_NAME_REQUEST_IS_INVALID";
          break;
        case 1360:
          result = "OI_DEVMGR_SCO_NO_ESCO_SUPPORT";
          break;
        case 1361:
          result = "OI_DEVMGR_INVALID_ACL_STATE";
          break;
        case 1362:
          result = "OI_DEVMGR_REMOTENAMECANCEL_CB";
          break;
        case 1363:
          result = "OI_DEVMGR_INVALID_HANDLE_LINK_POL";
          break;
        case 1401:
          result = "OI_SECMGR_NO_POLICY";
          break;
        case 1402:
          result = "OI_SECMGR_INTERNAL_ERROR";
          break;
        case 1403:
          result = "OI_SECMGR_ORPHANED_CALLBACK";
          break;
        case 1404:
          result = "OI_SECMGR_BUSY";
          break;
        case 1405:
          result = "OI_SECMGR_DEVICE_NOT_TRUSTED";
          break;
        case 1407:
          result = "OI_SECMGR_DEVICE_ENCRYPT_FAIL";
          break;
        case 1408:
          result = "OI_SECMGR_DISCONNECTED_FAIL";
          break;
        case 1409:
          result = "OI_SECMGR_ACCESS_PENDING";
          break;
        case 1410:
          result = "OI_SECMGR_PIN_CODE_TOO_SHORT";
          break;
        case 1411:
          result = "OI_SECMGR_UNKNOWN_ENCRYPT_VALUE";
          break;
        case 1412:
          result = "OI_SECMGR_INVALID_POLICY";
          break;
        case 1413:
          result = "OI_SECMGR_AUTHORIZATION_FAILED";
          break;
        case 1414:
          result = "OI_SECMGR_ENCRYPTION_FAILED";
          break;
        case 1415:
          result = "OI_SECMGR_UNIT_KEY_UNSUPPORTED";
          break;
        case 1416:
          result = "OI_SECMGR_NOT_REGISTERED";
          break;
        case 1417:
          result = "OI_SECMGR_ILLEGAL_WRITE_SSP_MODE";
          break;
        case 1418:
          result = "OI_SECMGR_INVALID_SEC_LEVEL";
          break;
        case 1419:
          result = "OI_SECMGR_INSUFFICIENT_LINK_KEY";
          break;
        case 1420:
          result = "OI_SECMGR_INVALID_KEY_TYPE";
          break;
        case 1421:
          result = "OI_SECMGR_SSP_NOT_ENCRYPTED";
          break;
        case 1422:
          result = "OI_SECMGR_ORPHAN_EVENT";
          break;
        case 1423:
          result = "OI_SECMGR_NOT_BONDABLE";
          break;
        case 1424:
          result = "OI_SECMGR_INVALID_REMOTE_AUTH";
          break;
        default:
          return 0;
      }
    }

    else
    {
      switch(a1)
      {
        case 402:
          result = "OI_STATUS_PSM_ALREADY_REGISTERED";
          break;
        case 403:
          result = "OI_STATUS_INVALID_CID";
          break;
        case 404:
          result = "OI_STATUS_CID_NOT_FOUND";
          break;
        case 405:
        case 409:
        case 413:
        case 415:
        case 416:
        case 417:
        case 419:
        case 420:
        case 421:
        case 422:
        case 424:
        case 432:
        case 438:
        case 442:
        case 443:
        case 446:
        case 447:
        case 448:
        case 449:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 487:
        case 488:
        case 489:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 504:
        case 505:
        case 506:
        case 507:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 528:
        case 529:
        case 557:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 581:
        case 583:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 602:
        case 604:
        case 606:
        case 609:
        case 610:
        case 617:
        case 618:
        case 636:
        case 657:
        case 658:
        case 659:
        case 660:
        case 661:
        case 662:
        case 663:
        case 664:
        case 665:
        case 666:
        case 667:
        case 668:
        case 669:
        case 670:
        case 671:
        case 672:
        case 673:
        case 674:
        case 675:
        case 676:
        case 677:
        case 678:
        case 679:
        case 680:
        case 681:
        case 682:
        case 683:
        case 684:
        case 685:
        case 686:
        case 687:
        case 688:
        case 689:
        case 690:
        case 691:
        case 692:
        case 693:
        case 694:
        case 695:
        case 696:
        case 697:
        case 698:
        case 699:
        case 700:
        case 764:
        case 765:
        case 767:
        case 768:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 801:
        case 809:
        case 814:
        case 818:
        case 820:
        case 822:
        case 828:
        case 848:
        case 849:
        case 850:
        case 851:
        case 852:
        case 853:
        case 854:
        case 855:
        case 856:
        case 857:
        case 858:
        case 859:
        case 860:
        case 861:
        case 862:
        case 863:
        case 864:
        case 865:
        case 866:
        case 867:
        case 868:
        case 869:
        case 870:
        case 871:
        case 872:
        case 873:
        case 874:
        case 875:
        case 876:
        case 877:
        case 878:
        case 879:
        case 880:
        case 881:
        case 882:
        case 883:
        case 884:
        case 885:
        case 886:
        case 887:
        case 888:
        case 889:
        case 890:
        case 891:
        case 892:
        case 893:
        case 894:
        case 895:
        case 896:
        case 897:
        case 898:
        case 899:
        case 900:
        case 902:
        case 914:
        case 919:
        case 936:
        case 937:
        case 938:
        case 939:
        case 940:
        case 941:
        case 942:
        case 943:
        case 944:
        case 945:
        case 946:
        case 947:
        case 948:
        case 949:
        case 950:
        case 951:
        case 952:
        case 953:
        case 954:
        case 955:
        case 956:
        case 957:
        case 958:
        case 959:
        case 960:
        case 961:
        case 962:
        case 963:
        case 964:
        case 965:
        case 966:
        case 967:
        case 968:
        case 969:
        case 970:
        case 971:
        case 972:
        case 973:
        case 974:
        case 975:
        case 976:
        case 977:
        case 978:
        case 979:
        case 980:
        case 981:
        case 982:
        case 983:
        case 984:
        case 985:
        case 986:
        case 987:
        case 988:
        case 989:
        case 990:
        case 991:
        case 992:
        case 993:
        case 994:
        case 995:
        case 996:
        case 997:
        case 998:
        case 999:
        case 1000:
        case 1003:
        case 1004:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1011:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1017:
        case 1018:
        case 1019:
        case 1020:
        case 1024:
        case 1025:
        case 1026:
        case 1027:
        case 1028:
        case 1029:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1052:
        case 1053:
        case 1054:
        case 1055:
        case 1056:
        case 1057:
        case 1058:
        case 1059:
        case 1060:
        case 1061:
        case 1062:
        case 1063:
        case 1064:
        case 1068:
        case 1069:
        case 1070:
        case 1071:
        case 1072:
        case 1073:
        case 1074:
        case 1075:
        case 1076:
        case 1077:
        case 1078:
        case 1079:
        case 1080:
        case 1081:
        case 1082:
        case 1083:
        case 1084:
        case 1085:
        case 1086:
        case 1087:
        case 1088:
        case 1089:
        case 1090:
        case 1091:
        case 1092:
        case 1093:
        case 1094:
        case 1095:
        case 1096:
        case 1097:
        case 1098:
        case 1099:
        case 1100:
          return 0;
        case 406:
          result = "OI_STATUS_CHANNEL_NOT_FOUND";
          break;
        case 407:
          result = "OI_STATUS_PSM_NOT_FOUND";
          break;
        case 408:
          result = "OI_STATUS_INVALID_STATE";
          break;
        case 410:
          result = "OI_STATUS_WRITE_IN_PROGRESS";
          break;
        case 411:
          result = "OI_STATUS_INVALID_PACKET";
          break;
        case 412:
          result = "OI_STATUS_SEND_COMPLETE";
          break;
        case 414:
          result = "OI_STATUS_INVALID_HANDLE";
          break;
        case 418:
          result = "OI_STATUS_GROUP_FULL";
          break;
        case 423:
          result = "OI_STATUS_DEVICE_ALREADY_IN_GROUP";
          break;
        case 425:
          result = "OI_STATUS_DUPLICATE_GROUP";
          break;
        case 426:
          result = "OI_STATUS_EMPTY_GROUP";
          break;
        case 427:
          result = "OI_STATUS_PACKET_NOT_FOUND";
          break;
        case 428:
          result = "OI_STATUS_BUFFER_TOO_SMALL";
          break;
        case 429:
          result = "OI_STATUS_IDENTIFIER_NOT_FOUND";
          break;
        case 430:
          result = "OI_L2CAP_DISCONNECT_LOWER_LAYER";
          break;
        case 431:
          result = "OI_L2CAP_DISCONNECT_REMOTE_REQUEST";
          break;
        case 433:
          result = "OI_L2CAP_GROUP_ADD_CONNECT_FAIL";
          break;
        case 434:
          result = "OI_L2CAP_GROUP_REMOVE_FAILURE";
          break;
        case 435:
          result = "OI_L2CAP_DATA_WRITE_ERROR_LINK_TERM";
          break;
        case 436:
          result = "OI_L2CAP_DISCONNECT_LOCAL_REQUEST";
          break;
        case 437:
          result = "OI_L2CAP_CONNECT_TIMEOUT";
          break;
        case 439:
          result = "OI_L2CAP_DISCONNECT_TIMEOUT";
          break;
        case 440:
          result = "OI_L2CAP_PING_TIMEOUT";
          break;
        case 441:
          result = "OI_L2CAP_GET_INFO_TIMEOUT";
          break;
        case 444:
          result = "OI_L2CAP_INVALID_ADDRESS";
          break;
        case 445:
          result = "OI_L2CAP_CMD_REJECT_RCVD";
          break;
        case 450:
          result = "OI_L2CAP_CONNECT_BASE";
          break;
        case 451:
          result = "OI_L2CAP_CONNECT_PENDING";
          break;
        case 452:
          result = "OI_L2CAP_CONNECT_REFUSED_INVALID_PSM";
          break;
        case 453:
          result = "OI_L2CAP_CONNECT_REFUSED_SECURITY";
          break;
        case 454:
          result = "OI_L2CAP_CONNECT_REFUSED_NO_RESOURCES";
          break;
        case 460:
          result = "OI_L2CAP_CONFIG_BASE";
          break;
        case 461:
          result = "OI_L2CAP_CONFIG_FAIL_INVALID_PARAMETERS";
          break;
        case 462:
          result = "OI_L2CAP_CONFIG_FAIL_NO_REASON";
          break;
        case 463:
          result = "OI_L2CAP_CONFIG_FAIL_UNKNOWN_OPTIONS";
          break;
        case 464:
          result = "OI_L2CAP_CONFIG_FAIL_TIMEOUT";
          break;
        case 470:
          result = "OI_L2CAP_GET_INFO_BASE";
          break;
        case 471:
          result = "OI_L2CAP_GET_INFO_NOT_SUPPORTED";
          break;
        case 472:
          result = "OI_L2CAP_MTU_EXCEEDED";
          break;
        case 482:
          result = "OI_L2CAP_INVALID_PSM";
          break;
        case 483:
          result = "OI_L2CAP_INVALID_MTU";
          break;
        case 484:
          result = "OI_L2CAP_INVALID_FLUSHTO";
          break;
        case 485:
          result = "OI_L2CAP_DEQUEUE_ERT_ERROR";
          break;
        case 486:
          result = "OI_L2CAP_ZERO_LENGTH_RECV_PAYLOAD";
          break;
        case 490:
          result = "OI_L2CAP_INVALID_FLOW_CONTROL";
          break;
        case 500:
          result = "OI_L2CAP_QUEUE_LOCAL_NOT_READY";
          break;
        case 501:
          result = "OI_L2CAP_QUEUE_REMOTE_NOT_READY";
          break;
        case 502:
          result = "OI_L2CAP_QUEUE_FRAGMENTATION";
          break;
        case 503:
          result = "OI_L2CAP_QUEUE_SFRAME_HEADER_ERROR";
          break;
        case 508:
          result = "OI_L2CAP_QUEUE_ERTM_CID_ERROR";
          break;
        case 509:
          result = "OI_L2CAP_QUEUE_SUPERVISION_ERROR";
          break;
        case 510:
          result = "OI_L2CAP_QUEUE_RETRANS_ERROR";
          break;
        case 511:
          result = "OI_L2CAP_QUEUE_THREAD_CREATION_FAILED";
          break;
        case 530:
          result = "OI_L2CAP_ACCEPT_RESPOND_REJECT";
          break;
        case 531:
          result = "OI_L2CAP_CONMAN_DEFAULT";
          break;
        case 532:
          result = "OI_L2CAP_FIXCHAN_WRONG_TYPE";
          break;
        case 533:
          result = "OI_L2CAP_FLOW_SENT_INVALID_CHANNEL";
          break;
        case 534:
          result = "OI_L2CAP_FLOW_UNEXPECTED_STATE";
          break;
        case 535:
          result = "OI_L2CAP_FLOW_INIT_INVALID_CHAN";
          break;
        case 536:
          result = "OI_L2CAP_FLOW_RECV_INVALID_CHAN";
          break;
        case 537:
          result = "OI_L2CAP_QOS_POKE_INVALID_CHAN";
          break;
        case 538:
          result = "OI_L2CAP_ERTM_SENDSREJLIST_ERROR";
          break;
        case 539:
          result = "OI_L2CAP_ERTM_SENDSREJTAIL_ERROR";
          break;
        case 540:
          result = "OI_L2CAP_ERTM_RETRANS_IFRAME_ERROR";
          break;
        case 541:
          result = "OI_L2CAP_ERTM_RETRANS_IFRAME_COUNT_EXCEEDED";
          break;
        case 542:
          result = "OI_L2CAP_ERTM_RETRANS_REQ_IFRAME_ERROR";
          break;
        case 543:
          result = "OI_L2CAP_ERTM_RX_IFRAME_IN_RX_UNEXPECTED_STATE";
          break;
        case 544:
          result = "OI_L2CAP_ERTM_RX_IFRAME_IN_REJ_UNEXPECTED_STATE";
          break;
        case 545:
          result = "OI_L2CAP_ERTM_RX_IFRAME_IN_SREJ_UNEXPECTED_STATE";
          break;
        case 546:
          result = "OI_L2CAP_ERTM_RETRANS_BAD_LENGTH_RECVD_DATA";
          break;
        case 547:
          result = "OI_L2CAP_ERTM_RETRANS_BAD_SFRAME_RECVD_DATA";
          break;
        case 548:
          result = "OI_L2CAP_ERTM_RETRANS_BAD_IFRAME_RECVD_DATA";
          break;
        case 549:
          result = "OI_L2CAP_ERTM_RETRANS_ALLOC_FAIL_RECVD_DATA";
          break;
        case 550:
          result = "OI_L2CAP_ERTM_RECVDATA_UNEXPECTED_STATE";
          break;
        case 551:
          result = "OI_L2CAP_ERTM_LOCAL_BUSY_UNEXPECTED_STATE";
          break;
        case 552:
          result = "OI_L2CAP_ERTM_LOCAL_BUSY_CLEAR_UNEXPECTED_STATE";
          break;
        case 553:
          result = "OI_L2CAP_ERTM_SEQ_N_FBIT_UNEXPECTED_STATE";
          break;
        case 554:
          result = "OI_L2CAP_ERTM_FBIT_UNEXPECTED_STATE";
          break;
        case 555:
          result = "OI_L2CAP_ERTM_UNEXPECTED_RETRX_TIMER";
          break;
        case 556:
          result = "OI_L2CAP_ERTM_UNEXPECTED_MONITOR_TIMER";
          break;
        case 558:
          result = "OI_L2CAP_ERTM_TIMEOUT";
          break;
        case 559:
          result = "OI_L2CAP_SIGNALMAN_TIMEOUT";
          break;
        case 560:
          result = "OI_L2CAP_DISC_DLCI0";
          break;
        case 580:
          result = "OI_L2CAP_LE_BASE";
          break;
        case 582:
          result = "OI_L2CAP_LE_LE_PSM_NOT_SUPPORTED";
          break;
        case 584:
          result = "OI_L2CAP_LE_NO_RESOURCES";
          break;
        case 585:
          result = "OI_L2CAP_LE_INSUFFICIENT_AUTHENTICATION";
          break;
        case 586:
          result = "OI_L2CAP_LE_INSUFFICIENT_AUTHORIZATION";
          break;
        case 587:
          result = "OI_L2CAP_LE_INSUFFICIENT_ENC_KEY_SIZE";
          break;
        case 588:
          result = "OI_L2CAP_LE_INSUFFICIENT_ENCRYPTION";
          break;
        case 589:
          result = "OI_L2CAP_LE_INVALID_SOURCE_CID";
          break;
        case 590:
          result = "OI_L2CAP_LE_SOURCE_CID_ALREADY_REGISTERED";
          break;
        case 591:
          result = "OI_L2CAP_LE_UNACCEPTABLE_PARAMS";
          break;
        case 601:
          result = "OI_HCI_NO_SUCH_CONNECTION";
          break;
        case 603:
          result = "OI_HCI_CB_LIST_FULL";
          break;
        case 605:
          result = "OI_HCI_EVENT_UNDERRUN";
          break;
        case 607:
          result = "OI_HCI_UNKNOWN_EVENT_CODE";
          break;
        case 608:
          result = "OI_HCI_BAD_EVENT_PARM_LEN";
          break;
        case 611:
          result = "OI_HCI_CMD_QUEUE_FULL";
          break;
        case 612:
          result = "OI_HCI_SHORT_EVENT";
          break;
        case 613:
          result = "OI_HCI_TRANSMIT_NOT_READY";
          break;
        case 614:
          result = "OI_HCI_ORPHAN_SENT_EVENT";
          break;
        case 615:
          result = "OI_HCI_CMD_TABLE_ERROR";
          break;
        case 616:
          result = "OI_HCI_UNKNOWN_CMD_ID";
          break;
        case 619:
          result = "OI_HCI_UNEXPECTED_EVENT";
          break;
        case 620:
          result = "OI_HCI_EVENT_TABLE_ERROR";
          break;
        case 621:
          result = "OI_HCI_EXPECTED_EVENT_TIMEOUT";
          break;
        case 622:
          result = "OI_HCI_NO_CMD_DESC_FOR_OPCODE";
          break;
        case 623:
          result = "OI_HCI_INVALID_OPCODE_ERROR";
          break;
        case 624:
          result = "OI_HCI_FLOW_CONTROL_DISABLED";
          break;
        case 625:
          result = "OI_HCI_TX_COMPLETE";
          break;
        case 626:
          result = "OI_HCI_TX_ERROR";
          break;
        case 627:
          result = "OI_HCI_DEVICE_NOT_INITIALIZED";
          break;
        case 628:
          result = "OI_HCI_UNSUPPORTED_COMMAND";
          break;
        case 629:
          result = "OI_HCI_PASSTHROUGH_ERROR";
          break;
        case 630:
          result = "OI_HCI_PASSTHROUGH_ALREADY_SET";
          break;
        case 631:
          result = "OI_HCI_RESET_FAILURE";
          break;
        case 632:
          result = "OI_HCI_TRANSPORT_RESET";
          break;
        case 633:
          result = "OI_HCIERR_HCIIFC_INIT_FAILURE";
          break;
        case 634:
          result = "OI_HCI_EXPECTED_EVENT_CONN_RELEASED";
          break;
        case 635:
          result = "OI_HCI_EXPECTED_EVENT_ORPHANED";
          break;
        case 637:
          result = "OI_HCI_STATUS_DEFAULT";
          break;
        case 638:
          result = "OI_HCI_FAIL_MISSING_PARAMS";
          break;
        case 639:
          result = "OI_HCI_MISSING_LINKTYPE";
          break;
        case 640:
          result = "OI_HCI_EXPECTED_EVENT_NOT_FOUND";
          break;
        case 641:
          result = "OI_HCI_WRITE_COD_HW_WORKAROUND";
          break;
        case 642:
          result = "OI_HCI_HW_ERROR_CHIP_RX_INVALID";
          break;
        case 643:
          result = "OI_HCI_HW_ERROR_HOST_RX_INVALID";
          break;
        case 644:
          result = "OI_HCI_HW_ERROR_TIMEDOUT_INVALID";
          break;
        case 645:
          result = "OI_HCI_HW_ERROR_RX_INVALID_STATE";
          break;
        case 646:
          result = "OI_HCI_HW_ERROR_TIMEDOUT_INVALID_STATE";
          break;
        case 647:
          result = "OI_HCI_HW_ERROR_RX_INVALID_LENGTH";
          break;
        case 648:
          result = "OI_HCI_HW_ERROR_CODE_UNKNOWN";
          break;
        case 649:
          result = "OI_HCI_DUPLICATE_LM_HANDLE";
          break;
        case 650:
          result = "OI_HCI_HW_ERROR_NOT_INITIALIZED";
          break;
        case 651:
          result = "OI_HCI_EVENT_DATA_UNDERRUN";
          break;
        case 652:
          result = "OI_HCI_HW_ERROR_SPMI_TIMEOUT";
          break;
        case 653:
          result = "OI_HCI_HW_ERROR_DID_NOT_SLEEP";
          break;
        case 654:
          result = "OI_HCI_HW_ERROR_CMD_DISALLOWED";
          break;
        case 655:
          result = "OI_HCI_STACK_HALTED";
          break;
        case 656:
          result = "OI_HCI_RX_HANDLING_TOO_LONG";
          break;
        case 701:
          result = "OI_HCIERR_UNKNOWN_HCI_COMMAND";
          break;
        case 702:
          result = "OI_HCIERR_UNKNOWN_CONNECTION_IDENTIFIER";
          break;
        case 703:
          result = "OI_HCIERR_HARDWARE_FAILURE";
          break;
        case 704:
          result = "OI_HCIERR_PAGE_TIMEOUT";
          break;
        case 705:
          result = "OI_HCIERR_AUTHENTICATION_FAILURE";
          break;
        case 706:
          result = "OI_HCIERR_KEY_MISSING";
          break;
        case 707:
          result = "OI_HCIERR_MEMORY_CAPACITY_EXCEEDED";
          break;
        case 708:
          result = "OI_HCIERR_CONNECTION_TIMEOUT";
          break;
        case 709:
          result = "OI_HCIERR_MAX_NUM_OF_CONNECTIONS";
          break;
        case 710:
          result = "OI_HCIERR_MAX_NUM_OF_SCO_CONNECTIONS";
          break;
        case 711:
          result = "OI_HCIERR_ACL_CONNECTION_ALREADY_EXISTS";
          break;
        case 712:
          result = "OI_HCIERR_COMMAND_DISALLOWED";
          break;
        case 713:
          result = "OI_HCIERR_HOST_REJECTED_RESOURCES";
          break;
        case 714:
          result = "OI_HCIERR_HOST_REJECTED_SECURITY";
          break;
        case 715:
          result = "OI_HCIERR_HOST_REJECTED_PERSONAL_DEVICE";
          break;
        case 716:
          result = "OI_HCIERR_HOST_TIMEOUT";
          break;
        case 717:
          result = "OI_HCIERR_UNSUPPORTED";
          break;
        case 718:
          result = "OI_HCIERR_INVALID_PARAMETERS";
          break;
        case 719:
          result = "OI_HCIERR_OTHER_END_USER_DISCONNECT";
          break;
        case 720:
          result = "OI_HCIERR_OTHER_END_LOW_RESOURCES";
          break;
        case 721:
          result = "OI_HCIERR_OTHER_END_POWERING_OFF";
          break;
        case 722:
          result = "OI_HCIERR_CONNECTION_TERMINATED_LOCALLY";
          break;
        case 723:
          result = "OI_HCIERR_REPEATED_ATTEMPTS";
          break;
        case 724:
          result = "OI_HCIERR_PAIRING_NOT_ALLOWED";
          break;
        case 725:
          result = "OI_HCIERR_UNKNOWN_LMP_PDU";
          break;
        case 726:
          result = "OI_HCIERR_UNSUPPORTED_REMOTE_FEATURE";
          break;
        case 727:
          result = "OI_HCIERR_SCO_OFFSET_REJECTED";
          break;
        case 728:
          result = "OI_HCIERR_SCO_INTERVAL_REJECTED";
          break;
        case 729:
          result = "OI_HCIERR_SCO_AIR_MODE_REJECTED";
          break;
        case 730:
          result = "OI_HCIERR_INVALID_LMP_PARMS";
          break;
        case 731:
          result = "OI_HCIERR_UNSPECIFIED_ERROR";
          break;
        case 732:
          result = "OI_HCIERR_UNSUPPORTED_LMP_PARAMETERS";
          break;
        case 733:
          result = "OI_HCIERR_ROLE_CHANGE_NOT_ALLOWED";
          break;
        case 734:
          result = "OI_HCIERR_LMP_RESPONSE_TIMEOUT";
          break;
        case 735:
          result = "OI_HCIERR_LMP_ERROR_TRANS_COLLISION";
          break;
        case 736:
          result = "OI_HCIERR_LMP_PDU_NOT_ALLOWED";
          break;
        case 737:
          result = "OI_HCIERR_ENCRYPTION_MODE_NOT_ACCEPTABLE";
          break;
        case 738:
          result = "OI_HCIERR_UNIT_KEY_USED";
          break;
        case 739:
          result = "OI_HCIERR_QOS_NOT_SUPPORTED";
          break;
        case 740:
          result = "OI_HCIERR_INSTANT_PASSED";
          break;
        case 741:
          result = "OI_HCIERR_UNIT_KEY_PAIRING_UNSUPPORTED";
          break;
        case 742:
          result = "OI_HCIERR_DIFFERENT_TRANS_COLLISION";
          break;
        case 743:
          result = "OI_HCIERR_RESERVED_2B";
          break;
        case 744:
          result = "OI_HCIERR_QOS_UNACCEPTABLE_PARAMETER";
          break;
        case 745:
          result = "OI_HCIERR_QOS_REJECTED";
          break;
        case 746:
          result = "OI_HCIERR_CHANNEL_CLASSIFICATION_NOT_SUPPORTED";
          break;
        case 747:
          result = "OI_HCIERR_INSUFFICIENT_SECURITY";
          break;
        case 748:
          result = "OI_HCIERR_PARAMETER_OUT_OF_MANDATORY_RANGE";
          break;
        case 749:
          result = "OI_HCIERR_RESERVED_31";
          break;
        case 750:
          result = "OI_HCIERR_ROLE_SWITCH_PENDING";
          break;
        case 751:
          result = "OI_HCIERR_RESERVED_33";
          break;
        case 752:
          result = "OI_HCIERR_RESERVED_SLOT_VIOLATION";
          break;
        case 753:
          result = "OI_HCIERR_ROLE_SWITCH_FAILED";
          break;
        case 754:
          result = "OI_HCIERR_EIR_TOO_LARGE";
          break;
        case 755:
          result = "OI_HCIERR_SSP_NOT_SUPPORTED_BY_HOST";
          break;
        case 756:
          result = "OI_HCIERR_HOST_BUSY_PAIRING";
          break;
        case 757:
          result = "OI_HCIERR_CONNECTION_REJ_NO_SUITABLE_CHANNEL";
          break;
        case 758:
          result = "OI_HCIERR_CONTROLLER_BUSY";
          break;
        case 759:
          result = "OI_HCIERR_UNACCEPTABLE_CONNECTION_PARAMETERS";
          break;
        case 760:
          result = "OI_HCIERR_ADVERTISING_TIMEOUT";
          break;
        case 761:
          result = "OI_HCIERR_CONNECTION_TERMINATED_DUE_TO_MIC_FAILURE";
          break;
        case 762:
          result = "OI_HCIERR_CONNECTION_FAILED_TO_BE_ESTABLISHED";
          break;
        case 763:
          result = "OI_HCIERR_MAC_CONNECTION_FAILED";
          break;
        case 766:
          result = "OI_HCIERR_UNKNOWN_ADVERTISING_IDENTIFIER";
          break;
        case 769:
          result = "OI_HCIERR_UNKNOWN_ERROR";
          break;
        case 800:
          result = "OI_SDP_SPEC_ERROR";
          break;
        case 802:
          result = "OI_SDP_INVALID_SERVICE_RECORD_HANDLE";
          break;
        case 803:
          result = "OI_SDP_INVALID_REQUEST_SYNTAX";
          break;
        case 804:
          result = "OI_SDP_INVALID_PDU_SIZE";
          break;
        case 805:
          result = "OI_SDP_INVALID_CONTINUATION_STATE";
          break;
        case 806:
          result = "OI_SDP_INSUFFICIENT_RESOURCES";
          break;
        case 807:
          result = "OI_SDP_ERROR";
          break;
        case 808:
          result = "OI_SDP_CORRUPT_DATA_ELEMENT";
          break;
        case 810:
          result = "OI_SDP_SERVER_NOT_CONNECTED";
          break;
        case 811:
          result = "OI_SDP_ACCESS_DENIED";
          break;
        case 812:
          result = "OI_SDP_ATTRIBUTES_OUT_OF_ORDER";
          break;
        case 813:
          result = "OI_SDP_DEVICE_DOES_NOT_SUPPORT_SDP";
          break;
        case 815:
          result = "OI_SDP_NO_MORE_DATA";
          break;
        case 816:
          result = "OI_SDP_REQUEST_PARAMS_TOO_LONG";
          break;
        case 817:
          result = "OI_SDP_REQUEST_PENDING";
          break;
        case 819:
          result = "OI_SDP_SERVER_CONNECT_FAILED";
          break;
        case 821:
          result = "OI_SDP_SERVER_TOO_MANY_CONNECTIONS";
          break;
        case 823:
          result = "OI_SDP_NO_MATCHING_SERVICE_RECORD";
          break;
        case 824:
          result = "OI_SDP_PARTIAL_RESPONSE";
          break;
        case 825:
          result = "OI_SDP_ILLEGAL_ARGUMENT";
          break;
        case 826:
          result = "OI_SDP_ATTRIBUTE_NOT_FOUND";
          break;
        case 827:
          result = "OI_SDP_DATABASE_OUT_OF_RESOURCES";
          break;
        case 829:
          result = "OI_SDP_SHORT_PDU";
          break;
        case 830:
          result = "OI_SDP_TRANSACTION_ID_MISMATCH";
          break;
        case 831:
          result = "OI_SDP_UNEXPECTED_RESPONSE_PDU_ID";
          break;
        case 832:
          result = "OI_SDP_REQUEST_TIMEOUT";
          break;
        case 833:
          result = "OI_SDP_INVALID_RESPONSE_SYNTAX";
          break;
        case 834:
          result = "OI_SDP_CONNECTION_TIMEOUT";
          break;
        case 835:
          result = "OI_SDP_RESPONSE_DATA_ERROR";
          break;
        case 836:
          result = "OI_SDP_TOO_MANY_ATTRIBUTE_BYTES";
          break;
        case 837:
          result = "OI_SDP_TOO_MANY_SERVICE_RECORDS";
          break;
        case 838:
          result = "OI_SDP_INVALID_CONNECTION_ID";
          break;
        case 839:
          result = "OI_SDP_CANNOT_SET_ATTRIBUTE";
          break;
        case 840:
          result = "OI_SDP_BADLY_FORMED_ATTRIBUTE_VALUE";
          break;
        case 841:
          result = "OI_SDP_NO_ATTRIBUTE_LIST_TO_REMOVE";
          break;
        case 842:
          result = "OI_SDP_ATTRIBUTE_LIST_ALREADY_ADDED";
          break;
        case 843:
          result = "OI_SDP_DATA_ELEMENT_TRUNCATED";
          break;
        case 844:
          result = "OI_SDP_STATUS_DEFAULT";
          break;
        case 845:
          result = "OI_SDP_ACCEPT_INCOMING_REQUEST";
          break;
        case 846:
          result = "OI_SDP_REJECT_INCOMING_REQUEST";
          break;
        case 847:
          result = "OI_SDP_STALL_INCOMING_REQUEST";
          break;
        case 901:
          result = "OI_RFCOMM_WRITE_IN_PROGRESS";
          break;
        case 903:
          result = "OI_RFCOMM_INVALID_BAUDRATE";
          break;
        case 904:
          result = "OI_RFCOMM_INVALID_DATABIT";
          break;
        case 905:
          result = "OI_RFCOMM_INVALID_STOPBIT";
          break;
        case 906:
          result = "OI_RFCOMM_INVALID_PARITY";
          break;
        case 907:
          result = "OI_RFCOMM_INVALID_PARITYTYPE";
          break;
        case 908:
          result = "OI_RFCOMM_INVALID_FLOWCONTROL";
          break;
        case 909:
          result = "OI_RFCOMM_SESSION_EXISTS";
          break;
        case 910:
          result = "OI_RFCOMM_INVALID_CHANNEL";
          break;
        case 911:
          result = "OI_RFCOMM_DLCI_EXISTS";
          break;
        case 912:
          result = "OI_RFCOMM_LINK_NOT_FOUND";
          break;
        case 913:
          result = "OI_RFCOMM_REMOTE_REJECT";
          break;
        case 915:
          result = "OI_RFCOMM_TEST_IN_PROGRESS";
          break;
        case 916:
          result = "OI_RFCOMM_SESSION_NOT_FOUND";
          break;
        case 917:
          result = "OI_RFCOMM_INVALID_PACKET";
          break;
        case 918:
          result = "OI_RFCOMM_FRAMESIZE_EXCEEDED";
          break;
        case 920:
          result = "OI_RFCOMM_INVALID_DLCI";
          break;
        case 921:
          result = "OI_RFCOMM_SERVER_NOT_REGISTERED";
          break;
        case 922:
          result = "OI_RFCOMM_CREDIT_ERROR";
          break;
        case 923:
          result = "OI_RFCOMM_NO_CHANNEL_NUMBER";
          break;
        case 924:
          result = "OI_RFCOMM_QUERY_IN_PROGRESS";
          break;
        case 925:
          result = "OI_RFCOMM_SESSION_SHUTDOWN";
          break;
        case 926:
          result = "OI_RFCOMM_LOCAL_DEVICE_DISCONNECTED";
          break;
        case 927:
          result = "OI_RFCOMM_REMOTE_DEVICE_DISCONNECTED";
          break;
        case 928:
          result = "OI_RFCOMM_OUT_OF_SERVER_CHANNELS";
          break;
        case 929:
          result = "OI_RFCOMM_SESSION_REQ_REJECTED";
          break;
        case 930:
          result = "OI_RFCOMM_SESSION_SHUTDOWN_TIMER_EXPIRED";
          break;
        case 931:
          result = "OI_RFCOMM_SESSION_SHUTDOWN_FRAME_TIMER_EXPIRED";
          break;
        case 932:
          result = "OI_RFCOMM_SESSION_SHUTDOWN_SEND_CREDIT_FAILED";
          break;
        case 933:
          result = "OI_RFCOMM_LINK_DISC_UA_SEND_FAILED";
          break;
        case 934:
          result = "OI_RFCOMM_LINK_DISC_REMOTE_ERROR";
          break;
        case 935:
          result = "OI_RFCOMM_LINK_DISC_FAILED";
          break;
        case 1001:
          result = "OI_DISPATCH_INVALID_CB_HANDLE";
          break;
        case 1002:
          result = "OI_DISPATCH_TABLE_OVERFLOW";
          break;
        case 1010:
          result = "OI_DATAELEM_INVALID_TYPE_ERROR";
          break;
        case 1021:
          result = "OI_SUPPORT_STRCAT_ERROR";
          break;
        case 1022:
          result = "OI_SUPPORT_MUTEX_FAILED";
          break;
        case 1023:
          result = "OI_SUPPORT_CMDCHAIN_INITIATE_ERROR";
          break;
        case 1030:
          result = "OI_BYTESTREAM_INVALID_DATA_POINTER";
          break;
        case 1031:
          result = "OI_BYTESTREAM_PARSE_ERROR";
          break;
        case 1040:
          result = "OI_OS_INTF_ABS_TIME_FAIL";
          break;
        case 1041:
          result = "OI_OS_INTF_AES128_CREATE_ERROR";
          break;
        case 1042:
          result = "OI_OS_INTF_AES128_UPDATE_ERROR";
          break;
        case 1043:
          result = "OI_OS_INTF_AES128_SIZE_ERROR";
          break;
        case 1044:
          result = "OI_OS_INTF_SUBKEY_ERROR";
          break;
        case 1045:
          result = "OI_OS_INTF_MAC_SUBKEY_ERROR";
          break;
        case 1046:
          result = "OI_OS_INTF_MAC_BLOCKS_ERROR";
          break;
        case 1047:
          result = "OI_OS_INTF_MAC_XOR_ERROR";
          break;
        case 1048:
          result = "OI_OS_INTF_DHKEY_PUB_ERROR";
          break;
        case 1049:
          result = "OI_OS_INTF_DHKEY_PRIV_ERROR";
          break;
        case 1050:
          result = "OI_OS_INTF_DHKEY_COMPUTE_KEY_ERROR";
          break;
        case 1051:
          result = "OI_OS_INTF_READ_LOCAL_PUBLIC_ERROR";
          break;
        case 1065:
          result = "OI_PLTF_INIT_ERROR";
          break;
        case 1066:
          result = "OI_PLTF_DEV_NAME_ERROR";
          break;
        case 1067:
          result = "OI_PLTF_DEV_ADDR_ERROR";
          break;
        case 1101:
          result = "OI_TEST_UNKNOWN_TEST";
          break;
        case 1102:
          result = "OI_TEST_FAIL";
          break;
        default:
          switch(a1)
          {
            case 101:
              result = "OI_STATUS_INVALID_PARAMETERS";
              break;
            case 102:
              result = "OI_STATUS_NOT_IMPLEMENTED";
              break;
            case 103:
              result = "OI_STATUS_NOT_INITIALIZED";
              break;
            case 104:
              result = "OI_STATUS_NO_RESOURCES";
              break;
            case 105:
              result = "OI_STATUS_INTERNAL_ERROR";
              break;
            case 106:
              result = "OI_STATUS_OUT_OF_MEMORY";
              break;
            case 107:
              result = "OI_ILLEGAL_REENTRANT_CALL";
              break;
            case 108:
              result = "OI_STATUS_INITIALIZATION_FAILED";
              break;
            case 109:
              result = "OI_STATUS_INITIALIZATION_PENDING";
              break;
            case 110:
              result = "OI_STATUS_NO_SCO_SUPPORT";
              break;
            case 111:
              result = "OI_STATUS_OUT_OF_STATIC_MEMORY";
              break;
            case 112:
              result = "OI_TIMEOUT";
              break;
            case 113:
              result = "OI_OS_ERROR";
              break;
            case 114:
              result = "OI_FAIL";
              break;
            case 115:
              result = "OI_STRING_FORMAT_ERROR";
              break;
            case 116:
              result = "OI_STATUS_PENDING";
              break;
            case 117:
              result = "OI_STATUS_INVALID_COMMAND";
              break;
            case 118:
              result = "OI_BUSY_FAIL";
              break;
            case 119:
              result = "OI_STATUS_ALREADY_REGISTERED";
              break;
            case 120:
              result = "OI_STATUS_NOT_FOUND";
              break;
            case 121:
              result = "OI_STATUS_NOT_REGISTERED";
              break;
            case 122:
              result = "OI_STATUS_NOT_CONNECTED";
              break;
            case 123:
              result = "OI_CALLBACK_FUNCTION_REQUIRED";
              break;
            case 124:
              result = "OI_STATUS_MBUF_OVERFLOW";
              break;
            case 125:
              result = "OI_STATUS_MBUF_UNDERFLOW";
              break;
            case 126:
              result = "OI_STATUS_CONNECTION_EXISTS";
              break;
            case 127:
              result = "OI_STATUS_NOT_CONFIGURED";
              break;
            case 128:
              result = "OI_LOWER_STACK_ERROR";
              break;
            case 129:
              result = "OI_STATUS_RESET_IN_PROGRESS";
              break;
            case 130:
              result = "OI_STATUS_ACCESS_DENIED";
              break;
            case 131:
              result = "OI_STATUS_DATA_ERROR";
              break;
            case 132:
              result = "OI_STATUS_INVALID_ROLE";
              break;
            case 133:
              result = "OI_STATUS_ALREADY_CONNECTED";
              break;
            case 134:
              result = "OI_STATUS_PARSE_ERROR";
              break;
            case 135:
              result = "OI_STATUS_END_OF_FILE";
              break;
            case 136:
              result = "OI_STATUS_READ_ERROR";
              break;
            case 137:
              result = "OI_STATUS_WRITE_ERROR";
              break;
            case 138:
              result = "OI_STATUS_NEGOTIATION_FAILURE";
              break;
            case 139:
              result = "OI_STATUS_READ_IN_PROGRESS";
              break;
            case 140:
              result = "OI_STATUS_ALREADY_INITIALIZED";
              break;
            case 141:
              result = "OI_STATUS_STILL_CONNECTED";
              break;
            case 142:
              result = "OI_STATUS_MTU_EXCEEDED";
              break;
            case 143:
              result = "OI_STATUS_LINK_TERMINATED";
              break;
            case 144:
              result = "OI_STATUS_PIN_CODE_TOO_LONG";
              break;
            case 145:
              result = "OI_STATUS_STILL_REGISTERED";
              break;
            case 146:
              result = "OI_STATUS_SPEC_VIOLATION";
              break;
            case 147:
              result = "OI_STATUS_LE_NOT_SUPPORTED";
              break;
            case 148:
              result = "OI_STATUS_MUTEX_DESTROY_FAILED";
              break;
            case 149:
              result = "OI_STATUS_INVALID_LE_CONNECTION";
              break;
            case 150:
              result = "OI_STACKWRAPPER_TIMEOUT";
              break;
            case 151:
              result = "OI_CONDITIONAL_TIMEOUT";
              break;
            case 152:
              result = "OI_STATUS_UNSUPPORTED";
              break;
            case 153:
              result = "OI_STATUS_WATCH_TS_REMOTE_UNSUPPORTED";
              break;
            case 154:
              result = "OI_STATUS_CCECB_FAIL";
              break;
            case 155:
              result = "OI_STATUS_INVALID_LE_PERIODIC_SYNC";
              break;
            case 156:
              return 0;
            case 157:
              result = "OI_STATUS_LE_DUPLICATE_CONNECTIONS";
              break;
            case 158:
              result = "OI_STATUS_DUPLICATE_BD_ADDR";
              break;
            case 159:
              result = "OI_STATUS_FAST_LE_CONNECTION_FAILED";
              break;
            case 160:
              result = "OI_STATUS_OUTGOING_CONNECTION_DENIED";
              break;
            case 161:
              result = "OI_STATUS_INCOMPLETE_DATA";
              break;
            case 162:
              result = "OI_STATUS_INVALID_LENGTH";
              break;
            default:
              if (a1)
              {
                return 0;
              }

              result = "OI_OK";
              break;
          }

          break;
      }
    }

    return result;
  }

  if (a1 > 3569)
  {
    if (a1 <= 4299)
    {
      if (a1 <= 3999)
      {
        if (a1 <= 3601)
        {
          switch(a1)
          {
            case 3570:
              return "BT_AAP_DISCONNECT";
            case 3600:
              return "BT_VSC_SEND_INPROGRESS_ERROR";
            case 3601:
              return "BT_VSC_NOT_IMPLEMENTED_ERROR";
          }

          return 0;
        }

        switch(a1)
        {
          case 3700:
            result = "BD_DEBUG_DUMP";
            break;
          case 3701:
            result = "BT_ASSERT_FAILURE";
            break;
          case 3702:
            return 0;
          case 3703:
            result = "BT_CONTROLLER_CORE_DUMP";
            break;
          case 3704:
            result = "BT_CONTROLLER_CORE_DUMP_INPROGRESS";
            break;
          case 3705:
            result = "BD_ABORT_FAILURE";
            break;
          case 3706:
            result = "BD_COREDUMP_IDLE_TIMEOUT";
            break;
          case 3707:
            result = "BD_COREDUMP_TOO_LONG";
            break;
          case 3708:
            result = "BT_MAC_IN_DARK_SLEEP_MODE";
            break;
          case 3709:
            result = "BT_HCI_CMD_PENDING_BEFORE_DARK_SLEEP";
            break;
          case 3710:
            result = "BT_TRANS_NOT_READY_BEFORE_DARK_WAKE";
            break;
          case 3711:
            result = "BT_MAC_DARK_WAKE_TAKE_TOO_LONG";
            break;
          case 3712:
            result = "BT_FAILED_TO_START_MAC_USER";
            break;
          case 3713:
            result = "BT_FAILED_TO_CREATE_PCIE_ERROR_LISTENER";
            break;
          case 3714:
            result = "BT_FAILED_TO_CREATE_PCIE_TIMESYNC_LISTENER";
            break;
          case 3715:
            result = "BT_STACK_STOP_ERROR";
            break;
          case 3716:
            result = "BT_MISSED_HEART_BEAT_NOTIFICATION";
            break;
          default:
            if (a1 != 3602)
            {
              return 0;
            }

            result = "BT_VSC_STALL_ERROR";
            break;
        }
      }

      else
      {
        if (a1 > 4199)
        {
          switch(a1)
          {
            case 4200:
              return "BT_ATT_CLASSIC_MTU_REQ_ERROR";
            case 4201:
              return "BT_ATT_UNHANDLED_CLIENT_REQ_ERROR";
            case 4202:
              return "BT_ATT_SESSION_NOT_FOUND_ERROR";
          }

          return 0;
        }

        switch(a1)
        {
          case 4000:
            result = "LE_LENGTH_ALREADY_BEST_FIT";
            break;
          case 4001:
            result = "LE_ATT_WRITE_DATA_DROP_ERROR";
            break;
          case 4002:
            result = "LE_ATT_SENDPDU_INVALID_BEARER";
            break;
          case 4003:
            result = "LE_ATT_SENDPDU_INVALID_CONN";
            break;
          case 4004:
            result = "LE_ATT_STATUS_DEFAULT";
            break;
          case 4005:
            result = "LE_ATT_MTU_EXCH_ERROR";
            break;
          case 4006:
            result = "LE_ATT_RSP_FIND_INFO_ERROR";
            break;
          case 4007:
            result = "LE_ATT_RSP_FIND_INFO_UUID_ERROR";
            break;
          case 4008:
            result = "LE_ATT_RSP_READ_BY_TYPE_LEN_ERROR";
            break;
          case 4009:
            result = "LE_ATT_RSP_READ_BY_TYPE_ATRB_LEN_ERROR";
            break;
          case 4010:
            result = "LE_ATT_RSP_READ_BY_GROUP_LEN_ERROR";
            break;
          case 4011:
            result = "LE_ATT_RSP_READ_BY_GROUP_ATTRB_ERROR";
            break;
          case 4012:
            result = "LE_ATT_RSP_PREPARE_WRITE_ERROR";
            break;
          case 4013:
            result = "LE_ATT_INIT_FAIL";
            break;
          case 4014:
            result = "LE_ATT_DB_SET_CB_ERROR";
            break;
          case 4015:
            result = "LE_ATT_DB_UNSET_CB_ERROR";
            break;
          case 4016:
            result = "LE_ATT_REG_ATRB_MAX_HANDLE_ERROR";
            break;
          case 4017:
            result = "LE_ATT_REG_ATRB_INVALID_HANDLE_ERROR";
            break;
          case 4018:
            result = "LE_ATT_SEND_CHAR_VAL_UPDATE_ERROR";
            break;
          case 4019:
            result = "LE_ATT_SEND_CHAR_VAL_UPDATE_ALLOC_ERROR";
            break;
          case 4020:
            result = "LE_ATT_SEND_CHAR_VAL_UPDATE_SESS_ERROR";
            break;
          case 4021:
            result = "LE_ATT_WRITE_UNPACK_ERROR";
            break;
          case 4022:
            result = "LE_ATT_RSP_FIND_BY_TYPE_ERROR";
            break;
          case 4050:
            result = "LE_GAP_CALLBACK_MAX_ERROR";
            break;
          case 4051:
            result = "LE_GAP_GETCONNINT_INVALIDHANDLE";
            break;
          case 4052:
            result = "LE_GAP_GETADDR_INVALIDHANDLE";
            break;
          case 4053:
            result = "LE_GAP_ADDADDR_MAXCB_ERROR";
            break;
          case 4054:
            result = "LE_GAP_ROLE_ALREADY_SET_ERROR";
            break;
          case 4055:
            result = "LE_GAP_SET_DISCOVERABLE_STATE_ERROR";
            break;
          case 4056:
            result = "LE_GAP_PARSE_UUID_ERROR";
            break;
          case 4057:
            result = "LE_GAP_PARSE_ADSERVICE_ERROR";
            break;
          case 4058:
            result = "LE_GAP_PARSE_AD_RSP_ERROR";
            break;
          case 4059:
            result = "LE_GAP_PARSE_AD_RSP_SIZE_ERROR";
            break;
          case 4060:
            result = "LE_GAP_DISCOVERY_ALREADY_SCANNING";
            break;
          case 4061:
            result = "LE_GAP_START_ADVERTISING_ERROR";
            break;
          case 4062:
            result = "LE_GAP_INIT_ADVERTISING_WRONG_ADDR_ERROR";
            break;
          case 4063:
            result = "LE_GAP_DIRECT_CONNECTABLE_ERROR";
            break;
          case 4064:
            result = "LE_GAP_UNDIRECT_CONNECTABLE_ERROR";
            break;
          case 4065:
            result = "LE_GAP_AUTO_CONNECT_ROLE_ERROR";
            break;
          case 4066:
            result = "LE_GAP_AUTO_CONNECT_FILTER_ACCEPT_LIST_ERROR";
            break;
          case 4067:
            result = "LE_GAP_DIRECT_CONNECT_ERROR";
            break;
          case 4068:
            result = "LE_GAP_START_BONDING_ERROR";
            break;
          case 4069:
            result = "LE_GAP_UNKNOWN_RANDOM_ADDR_ERROR";
            break;
          case 4070:
            result = "LE_GAP_GEN_ADDR_ERROR";
            break;
          case 4071:
            result = "LE_GAP_SET_ADDR_ERROR";
            break;
          case 4072:
            result = "LE_GAP_REFRESH_ADDR_ERROR";
            break;
          case 4073:
            result = "LE_GAP_ADDRESS_REFRESH_IN_PROGRESS";
            break;
          case 4074:
            result = "LE_GAP_ADDRESS_REFRESH_TIMEOUT";
            break;
          case 4075:
            result = "LE_GAP_ADVERTISING_STATE_UNSETTLED";
            break;
          case 4100:
            result = "LE_GATT_SESSION_MTU_ERROR";
            break;
          case 4101:
            result = "LE_GATT_EXE_LONGCHARVALUE_RSP_ERROR";
            break;
          case 4102:
            result = "LE_GATT_WRITE_LONGCHARVALUE_RSP_ERROR";
            break;
          case 4103:
            result = "LE_GATT_ADD_CHAR_CB_ERROR";
            break;
          case 4104:
            result = "LE_GATT_ADD_CHAR_PROPERTIES_ERROR";
            break;
          case 4105:
            result = "LE_GATT_DB_REGISTERATION_ERROR";
            break;
          case 4106:
            result = "LE_GATT_DB_REGISTER_ATTRB_ERROR";
            break;
          case 4107:
            result = "LE_GATT_SENDCHAR_UPDATE_UUID_ERROR";
            break;
          case 4108:
            result = "LE_GATT_SENDCHAR_NOTIFY_ERROR";
            break;
          case 4109:
            result = "LE_GATT_SENDCHAR_INDICATE_ERROR";
            break;
          case 4120:
            result = "LE_SIGNALMAN_SEND_REJECTED";
            break;
          case 4121:
            result = "LE_SIGNALMAN_SEND_CONN_UPDATE";
            break;
          case 4122:
            result = "LE_SIGNALMAN_SEND_CHANN_RSP";
            break;
          case 4123:
            result = "LE_SIGNALMAN_SEND_CHANN_REQ";
            break;
          case 4124:
            result = "LE_SIGNALMAN_FLOW_ERROR";
            break;
          case 4125:
            result = "LE_SIGNALMAN_CMD_REJECT_ERROR";
            break;
          case 4126:
            result = "LE_SIGNALMAN_DISC_REQ_ERROR";
            break;
          case 4127:
            result = "LE_SIGNALMAN_DISC_RSP_ERROR";
            break;
          case 4151:
            result = "LE_FILTER_ACCEPT_LIST_ADDRESS_NOT_FOUND_ERROR";
            break;
          case 4152:
            result = "LE_FILTER_ACCEPT_LIST_DUPLICATE_ADDRESS_FOUND_ERROR";
            break;
          case 4170:
            result = "LE_CONNECTION_UPDATE_DUPLICATE";
            break;
          default:
            return 0;
        }
      }
    }

    else if (a1 > 4999)
    {
      if (a1 > 5089)
      {
        if (a1 <= 9499)
        {
          if (a1 > 5101)
          {
            switch(a1)
            {
              case 5102:
                return "BT_CL_SERVICE_UNREGISTERED_LOCALLY";
              case 5300:
                return "BT_LEA_ERROR_STALLED_CONNECTION";
              case 5403:
                return "OI_MAX_BM3_STATUS_VAL";
            }
          }

          else
          {
            switch(a1)
            {
              case 5090:
                return "BT_TR_PARSER_PRELUDE_INCOMPLETE";
              case 5100:
                return "BT_CL_SEND_PDU_INVALID_HANDLE";
              case 5101:
                return "BT_CL_PEER_REMOVED_SERVICE";
            }
          }
        }

        else
        {
          if (a1 <= 9502)
          {
            if (a1 == 9500)
            {
              return "BD_HCI_STALL_ERROR";
            }

            if (a1 == 9501)
            {
              return "BD_GATT_UPDATE_GAP_NAME_ERROR";
            }

            return "BD_TEST_ERROR";
          }

          if (a1 <= 9504)
          {
            if (a1 == 9503)
            {
              return "BD_PROFILE_FAILED_TO_STOP_ERROR";
            }

            else
            {
              return "BD_PROFILE_FAILED_TO_DEREGISTER_ERROR";
            }
          }

          if (a1 == 9505)
          {
            return "BD_PROFILE_FAILED_TO_CLEANUP_ERROR";
          }

          if (a1 == 0xFFFF)
          {
            return "OI_STATUS_NONE";
          }
        }

        return 0;
      }

      switch(a1)
      {
        case 5000:
          result = "BT_TS_TIMEOUT_UPGRADE_ERR";
          break;
        case 5001:
          result = "BT_TS_TIMEOUT_UPGRADING_ERR";
          break;
        case 5002:
          result = "BT_TS_TIMEOUT_UPGRADE_ENCRYPT_ERR";
          break;
        case 5003:
          result = "BT_TS_TIMEOUT_UPGRADE_FINAL_ERR";
          break;
        case 5004:
          result = "BT_TS_TIMEOUT_DOWNGRADE_STALL_ERR";
          break;
        case 5005:
          result = "BT_TS_TIMEOUT_DOWNGRADE_ERR";
          break;
        case 5006:
          result = "BT_TS_L2CAP_ERR";
          break;
        case 5007:
          result = "BT_TS_NO_ALTERNATE_TRANSPORT";
          break;
        case 5008:
          result = "BT_TS_FLUSH_NOT_SUPPORTED_ON_LE";
          break;
        case 5009:
          result = "BT_TS_LE_DISCONNECTED";
          break;
        case 5010:
          result = "BT_TS_UPGRADE_NOT_TRACKED_CENTRAL";
          break;
        case 5011:
          result = "BT_TS_UPGRADE_NOT_TRACKED_PERIPHERAL";
          break;
        case 5012:
          result = "BT_TS_UPGRADE_POLICY_ENF_FAILED";
          break;
        case 5013:
          result = "BT_TS_STATUS_DEFAULT";
          break;
        case 5014:
          result = "BT_TS_TIMEOUT";
          break;
        case 5015:
          result = "BT_TS_SWITCH_HW_ERROR";
          break;
        case 5016:
          result = "BT_TS_ERROR_INVALID_LMHANDLE";
          break;
        case 5017:
          result = "BT_TS_ERROR_LL_COLLISION_DETECTED_AFH";
          break;
        case 5018:
          result = "BT_TS_ERROR_LL_COLLISION_DETECTED_CON_UPDATE";
          break;
        case 5019:
          result = "BT_TS_ERROR_LL_COLLISION_REJECTED_AFH";
          break;
        case 5020:
          result = "BT_TS_ERROR_LL_COLLISION_REJECTED_CON_UPDATE";
          break;
        case 5050:
          result = "BT_TS_STATUS_SUCCESS";
          break;
        case 5051:
          result = "BT_TS_STATUS_ERROR_INTERNAL";
          break;
        case 5052:
          result = "BT_TS_STATUS_ERROR_ROLE";
          break;
        case 5053:
          result = "BT_TS_STATUS_ERROR_PDU";
          break;
        case 5054:
          result = "BT_TS_STATUS_ERROR_TRANSPORT";
          break;
        case 5055:
          result = "BT_TS_STATUS_ERROR_STATE";
          break;
        case 5056:
          result = "BT_TS_STATUS_ERROR_ENCRYPTION";
          break;
        case 5057:
          result = "BT_TS_STATUS_ERROR_CONTROLLER";
          break;
        default:
          return 0;
      }
    }

    else if (a1 <= 4543)
    {
      if (a1 > 4539)
      {
        if (a1 > 4541)
        {
          if (a1 == 4542)
          {
            return "BT_ATT_ERROR_APPLICATION_UNAVAILABLE";
          }

          else
          {
            return "BT_ATT_ERROR_RESPONSE_FULL";
          }
        }

        else if (a1 == 4540)
        {
          return "BT_ATT_ERROR_RESPONSE_PENDING";
        }

        else
        {
          return "BT_ATT_ERROR_RESPONSE_TIMEOUT_REACHED";
        }
      }

      else
      {
        switch(a1)
        {
          case 4300:
            result = "BT_ATT_STATUS_SUCCESS";
            break;
          case 4301:
            result = "BT_ATT_ERROR_INVALID_HANDLE";
            break;
          case 4302:
            result = "BT_ATT_ERROR_READ_NOT_PERMITTED";
            break;
          case 4303:
            result = "BT_ATT_ERROR_WRITE_NOT_PERMITTED";
            break;
          case 4304:
            result = "BT_ATT_ERROR_INVALID_PDU";
            break;
          case 4305:
            result = "BT_ATT_ERROR_INSUFFICIENT_AUTHENTICATION";
            break;
          case 4306:
            result = "BT_ATT_ERROR_REQUEST_NOT_SUPPORTED";
            break;
          case 4307:
            result = "BT_ATT_ERROR_INVALID_OFFSET";
            break;
          case 4308:
            result = "BT_ATT_ERROR_INSUFFICIENT_AUTHORIZATION";
            break;
          case 4309:
            result = "BT_ATT_ERROR_PREPARE_QUEUE_FULL";
            break;
          case 4310:
            result = "BT_ATT_ERROR_ATTRIBUTE_NOT_FOUND";
            break;
          case 4311:
            result = "BT_ATT_ERROR_ATTRIBUTE_NOT_LONG";
            break;
          case 4312:
            result = "BT_ATT_ERROR_INSUFFICIENT_ENCRYPTION_KEY_SIZE";
            break;
          case 4313:
            result = "BT_ATT_ERROR_INVALID_ATTRIBUTE_VALUE_LENGTH";
            break;
          case 4314:
            result = "BT_ATT_ERROR_UNLIKELY_ERROR";
            break;
          case 4315:
            result = "BT_ATT_ERROR_INSUFFICIENT_ENCRYPTION";
            break;
          case 4316:
            result = "BT_ATT_ERROR_UNSUPPORTED_GROUP_TYPEN";
            break;
          case 4317:
            result = "BT_ATT_ERROR_INSUFFICIENT_RESOURCES";
            break;
          default:
            return 0;
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 4800:
          result = "OI_SMP_ERROR_FAIL";
          break;
        case 4801:
          result = "OI_SMP_ERROR_ALREADY_ENCRYPTED";
          break;
        case 4802:
          result = "OI_SMP_ERROR_NOT_ENCRYPTED";
          break;
        case 4803:
          result = "OI_SMP_ERROR_NO_KEY";
          break;
        case 4804:
          result = "OI_SMP_ERROR_IN_PROGRESS";
          break;
        case 4805:
          result = "OI_SMP_ERROR_CONFIRM_VALUE_FAILED";
          break;
        case 4806:
          result = "OI_SMP_ERROR_NOT_IN_PAIRING_MODE";
          break;
        case 4807:
          result = "OI_SMP_ERROR_TIMEOUT";
          break;
        case 4808:
          result = "OI_SMP_ERROR_ALREADY_PAIRED";
          break;
        case 4809:
          result = "OI_SMP_ERROR_PASSKEY_ENTRY_FAILED";
          break;
        case 4810:
          result = "OI_SMP_ERROR_OOB_NOT_AVAILABLE";
          break;
        case 4811:
          result = "OI_SMP_ERROR_AUTH_REQUIREMENT";
          break;
        case 4812:
          result = "OI_SMP_ERROR_PAIRING_NOT_SUPPORTED";
          break;
        case 4813:
          result = "OI_SMP_ERROR_ENCYPRTION_KEY_SIZE";
          break;
        case 4814:
          result = "OI_SMP_ERROR_COMMAND_NOT_SUPPORTED";
          break;
        case 4815:
          result = "OI_SMP_ERROR_UNSPECIFIED_REASON";
          break;
        case 4816:
          result = "OI_SMP_ERROR_REPEATED_ATTEMPS";
          break;
        case 4817:
          result = "OI_SMP_ERROR_INVALID_PARAMETERS";
          break;
        case 4818:
          result = "OI_SMP_ERROR_DHKEY_CHECK_FAILED";
          break;
        case 4819:
          result = "OI_SMP_ERROR_NUM_COMPARISON_FAILED";
          break;
        case 4820:
          result = "OI_SMP_ERROR_INVALID_HANDLE";
          break;
        case 4821:
          result = "OI_SMP_ERROR_NOT_CENTRAL";
          break;
        case 4822:
          result = "OI_SMP_ERROR_NOT_PERIPHERAL";
          break;
        case 4823:
          result = "OI_SMP_ERROR_INVALID_PAIR_STATE";
          break;
        case 4824:
          result = "OI_SMP_ERROR_NO_CALLBACK";
          break;
        case 4825:
          result = "OI_SMP_ERROR_CRYPTO_FAILED";
          break;
        case 4826:
          result = "OI_SMP_ERROR_NO_ROOT_KEYS";
          break;
        case 4827:
          result = "OI_SMP_ERROR_TIMEOUT_USER_RSP";
          break;
        case 4828:
          result = "OI_SMP_ERROR_CRYPTO_IRK";
          break;
        case 4829:
          result = "OI_SMP_ERROR_CRYPTO";
          break;
        case 4830:
          result = "OI_SMP_ERROR_BREDR_PAIRING_IN_PROGRESS";
          break;
        case 4831:
          result = "OI_SMP_ERROR_CTKD_NA";
          break;
        case 4832:
          result = "LE_SECURITY_ERROR_COMPROMISED_DEVICE";
          break;
        case 4833:
          result = "LE_SECURITY_ERROR_OTHER_SIDE_UNPAIRED";
          break;
        case 4834:
          result = "LE_SECURITY_ERROR_ENCRYPTION_TIMEOUT";
          break;
        case 4835:
          result = "LE_SECURITY_ERROR_TOO_MANY_PAIRED_DEVICES";
          break;
        case 4836:
          result = "LE_SECURITY_ERROR_NEW_LOCAL_DEVICE_IDENTIFIER";
          break;
        case 4837:
          result = "LE_SECURITY_ERROR_PAIRING_NOT_ALLOWED";
          break;
        default:
          if (a1 == 4544)
          {
            result = "BT_ATT_ERROR_PREPARE_WRITE_INVALID";
          }

          else
          {
            if (a1 != 4545)
            {
              return 0;
            }

            result = "BT_ATT_ERROR_WRITE_REJECTED";
          }

          break;
      }
    }
  }

  else if (a1 > 2100)
  {
    if (a1 <= 3003)
    {
      if (a1 <= 2404)
      {
        if (a1 <= 2205)
        {
          if (a1 <= 2105)
          {
            if (a1 <= 2102)
            {
              if (a1 == 2101)
              {
                return "OI_NETIFC_UP_FAILED";
              }

              else
              {
                return "OI_NETIFC_COULD_NOT_CREATE_THREAD";
              }
            }

            else if (a1 == 2103)
            {
              return "OI_NETIFC_INITIALIZATION_FAILED";
            }

            else if (a1 == 2104)
            {
              return "OI_NETIFC_INTERFACE_ALREADY_UP";
            }

            else
            {
              return "OI_NETIFC_INTERFACE_NOT_UP";
            }
          }

          if (a1 > 2202)
          {
            if (a1 == 2203)
            {
              return "OI_PAN_INCOMPATIBLE_ROLES";
            }

            if (a1 == 2204)
            {
              return "OI_PAN_INVALID_ROLE";
            }

            return "OI_PAN_CONNECTION_IN_PROGRESS";
          }

          switch(a1)
          {
            case 2106:
              return "OI_NETIFC_PACKET_TOO_BIG";
            case 2201:
              return "OI_PAN_ROLE_ALREADY_REGISTERED";
            case 2202:
              return "OI_PAN_ROLE_NOT_ALLOWED";
          }
        }

        else if (a1 > 2304)
        {
          if (a1 > 2401)
          {
            if (a1 == 2402)
            {
              return "OI_FIFOQ_INVALID_Q";
            }

            if (a1 == 2403)
            {
              return "OI_FIFOQ_BUF_TOO_LARGE";
            }

            return "OI_FIFOQ_FULL";
          }

          switch(a1)
          {
            case 2305:
              return "OI_CODEC_SBC_CHECKSUM_MISMATCH";
            case 2306:
              return "OI_CODEC_SBC_PARTIAL_DECODE";
            case 2401:
              return "OI_FIFOQ_QUEUE_NOT_ALIGNED";
          }
        }

        else
        {
          if (a1 > 2301)
          {
            if (a1 == 2302)
            {
              return "OI_CODEC_SBC_NOT_ENOUGH_HEADER_DATA";
            }

            if (a1 == 2303)
            {
              return "OI_CODEC_SBC_NOT_ENOUGH_BODY_DATA";
            }

            return "OI_CODEC_SBC_NOT_ENOUGH_AUDIO_DATA";
          }

          switch(a1)
          {
            case 2206:
              return "OI_PAN_USER_ALREADY_CONNECTED";
            case 2207:
              return "OI_PAN_DEVICE_CONNECTED";
            case 2301:
              return "OI_CODEC_SBC_NO_SYNCWORD";
          }
        }
      }

      else if (a1 > 2706)
      {
        if (a1 > 2900)
        {
          if (a1 > 3000)
          {
            if (a1 == 3001)
            {
              return "OI_PBAP_REPOSITORY_NOT_SET";
            }

            if (a1 == 3002)
            {
              return "OI_PBAP_PHONEBOOK_NOT_SET";
            }

            return "OI_PBAP_SET_PATH_DONE_ERROR";
          }

          switch(a1)
          {
            case 2901:
              return "OI_AVDTP_CONNECTION_SEQ_ERROR";
            case 2902:
              return "OI_AVDTP_OUT_OF_RESOURCES";
            case 2903:
              return "OI_AVDTP_INVALID_STREAM_HANDLE";
          }
        }

        else if (a1 > 2801)
        {
          switch(a1)
          {
            case 2802:
              return "OI_BLST_ACKNOWLDGE_TIMEOUT";
            case 2803:
              return "OI_BLST_TX_NOT_READY";
            case 2804:
              return "OI_BLST_TX_BUSY";
          }
        }

        else
        {
          switch(a1)
          {
            case 2707:
              return "OI_AT_CME_ERROR";
            case 2708:
              return "OI_AT_CMS_ERROR";
            case 2801:
              return "OI_BLST_CHARACTER_TIMEOUT";
          }
        }
      }

      else
      {
        if (a1 > 2700)
        {
          if (a1 > 2703)
          {
            if (a1 == 2704)
            {
              return "OI_AT_NO_ANSWER";
            }

            else if (a1 == 2705)
            {
              return "OI_AT_DELAYED";
            }

            else
            {
              return "OI_AT_BLACKLISTED";
            }
          }

          else if (a1 == 2701)
          {
            return "OI_AT_ERROR";
          }

          else if (a1 == 2702)
          {
            return "OI_AT_NO_CARRIER";
          }

          else
          {
            return "OI_AT_BUSY";
          }
        }

        if (a1 > 2601)
        {
          switch(a1)
          {
            case 2602:
              return "OI_HID_DEVICE_SERVICE_NOT_STARTED";
            case 2603:
              return "OI_HID_CONTROL_DISC_IND";
            case 2604:
              return "OI_HID_TIMEOUT";
          }
        }

        else
        {
          switch(a1)
          {
            case 2405:
              return "OI_FIFOQ_NOT_ALLOCATED";
            case 2406:
              return "OI_FIFOQ_INVALID_DATA_PTR";
            case 2601:
              return "OI_HID_HOST_SERVICE_NOT_STARTED";
          }
        }
      }

      return 0;
    }

    if (a1 > 3401)
    {
      if (a1 > 3549)
      {
        if (a1 <= 3551)
        {
          if (a1 == 3550)
          {
            return "BT_MAGIC_PAIRING_IN_PROGRESS";
          }

          else
          {
            return "BT_MAGIC_PAIRING_NO_TABLE_FOUND";
          }
        }

        if (a1 == 3552)
        {
          return "BT_MAGIC_PAIRING_NO_HINT";
        }

        if (a1 == 3553)
        {
          return "BT_MAGIC_PAIRING_NOT_INPROGRESS";
        }

        return 0;
      }

      if (a1 <= 3449)
      {
        switch(a1)
        {
          case 3402:
            return "OI_PAN_INVALID_NET_IFC";
          case 3403:
            return "OI_PAN_USER_IFCREATE_ERROR";
          case 3404:
            return "OI_PAN_USER_IFWRITE_ERROR";
        }

        return 0;
      }

      switch(a1)
      {
        case 3450:
          result = "BT_MAP_CONNECT_MNS_MAX_CONN";
          break;
        case 3451:
          result = "BT_MAP_SERVER_CONN_IND_MAX_CLIENT";
          break;
        case 3452:
          result = "BT_MAP_SERVER_GET_IND_MAX_CLIENT";
          break;
        case 3453:
          result = "BT_MAP_SERVER_PUT_IND_MAX_CLIENT";
          break;
        case 3454:
          result = "BT_MAP_SERVER_DISC_MAX_CLIENT";
          break;
        case 3455:
          result = "BT_MAP_SERVER_ACCEPT_MAX_CLIENT";
          break;
        case 3456:
          result = "BT_MAP_SEND_MAX_CLIENT";
          break;
        case 3457:
          result = "BT_MAP_GETRESPONSE_MAX_CLIENT";
          break;
        case 3458:
          result = "BT_MAP_SEND_MSG_RESPONSE_ERROR";
          break;
        case 3459:
          result = "BT_MAP_SEND_MSG_MAX_CLIENT";
          break;
        case 3460:
          result = "BT_MAP_GET_FOLDER_MAX_CLIENT";
          break;
        case 3470:
          result = "BT_NETWORK_STATUS_DEFAULT";
          break;
        case 3471:
          result = "BT_NETWORK_IF_CREATE_ERROR";
          break;
        case 3472:
          result = "BT_NETWORK_ADD_HOST_ERROR";
          break;
        case 3473:
          result = "BT_NETWORK_MAX_CONN_ERROR";
          break;
        case 3474:
          result = "BT_NETWORK_IF_WRITE_ERROR";
          break;
        default:
          return 0;
      }
    }

    else
    {
      if (a1 <= 3299)
      {
        if (a1 <= 3101)
        {
          switch(a1)
          {
            case 3004:
              return "OI_PBAP_SERVER_SIZE_ERROR";
            case 3005:
              return "OI_PBAP_CLIENT_ADDR_ERROR";
            case 3101:
              return "OI_AADP_BAD_ENDPOINT";
          }
        }

        else if (a1 > 3200)
        {
          if (a1 == 3201)
          {
            return "OI_UNICODE_SOURCE_EXHAUSTED";
          }

          if (a1 == 3202)
          {
            return "OI_UNICODE_DESTINATION_EXHAUSTED";
          }
        }

        else
        {
          if (a1 == 3102)
          {
            return "OI_AADP_BAD_STATE";
          }

          if (a1 == 3200)
          {
            return "OI_UNICODE_INVALID_SOURCE";
          }
        }

        return 0;
      }

      if (a1 > 3389)
      {
        switch(a1)
        {
          case 3390:
            return "OI_BIPSRV_REJECT";
          case 3400:
            return "OI_PAN_CONSUMER_IF_WRITE_ERROR";
          case 3401:
            return "OI_PAN_STATUS_DEFAULT";
        }

        return 0;
      }

      switch(a1)
      {
        case 3300:
          result = "OI_AVRCP_TOO_MANY_CONNECTIONS";
          break;
        case 3301:
          result = "OI_AVRCP_NOT_IMPLEMENTED";
          break;
        case 3302:
          result = "OI_AVRCP_REJECTED";
          break;
        case 3303:
          result = "OI_AVRCP_INVALID_RESPONSE";
          break;
        case 3304:
          result = "OI_AVRCP_RESPONSE_PACKET_OVERFLOW";
          break;
        case 3305:
          result = "OI_AVRCP_RESPONSE_INVALID_PDU";
          break;
        case 3306:
          result = "OI_AVRCP_RESPONSE_INVALID_PARAMETER";
          break;
        case 3307:
          result = "OI_AVRCP_RESPONSE_PARAMETER_NOT_FOUND";
          break;
        case 3308:
          result = "OI_AVRCP_RESPONSE_INTERNAL_ERROR";
          break;
        case 3309:
          result = "OI_AVRCP_NO_REGISTERED_HANDLER_ERROR";
          break;
        case 3310:
          result = "OI_AVRCP_RECVIND_INVALID_PID_ERROR";
          break;
        case 3311:
          result = "OI_AVRCP_B_RECVIND_INVALID_PID_ERROR";
          break;
        case 3312:
          result = "OI_AVRCP_TIMEOUT";
          break;
        default:
          return 0;
      }
    }
  }

  else
  {
    if (a1 <= 1900)
    {
      if (a1 > 1603)
      {
        switch(a1)
        {
          case 1701:
            return "OI_OBEX_CONTINUE";
          case 1702:
            return "OI_OBEX_COMMAND_ERROR";
          case 1703:
            return "OI_OBEX_CONNECTION_TIMEOUT";
          case 1704:
            return "OI_OBEX_CONNECT_FAILED";
          case 1705:
            return "OI_OBEX_DISCONNECT_FAILED";
          case 1706:
            return "OI_OBEX_ERROR";
          case 1707:
            return "OI_OBEX_INCOMPLETE_PACKET";
          case 1708:
            return "OI_OBEX_LENGTH_REQUIRED";
          case 1709:
            return "OI_OBEX_NOT_CONNECTED";
          case 1710:
            return "OI_OBEX_NO_MORE_CONNECTIONS";
          case 1711:
            return "OI_OBEX_OPERATION_IN_PROGRESS";
          case 1712:
            return "OI_OBEX_PUT_RESPONSE_ERROR";
          case 1713:
            return "OI_OBEX_GET_RESPONSE_ERROR";
          case 1714:
            return "OI_OBEX_REQUIRED_HEADER_NOT_FOUND";
          case 1715:
            return "OI_OBEX_SERVICE_UNAVAILABLE";
          case 1716:
            return "OI_OBEX_TOO_MANY_HEADER_BYTES";
          case 1717:
            return "OI_OBEX_UNKNOWN_COMMAND";
          case 1718:
            return "OI_OBEX_UNSUPPORTED_VERSION";
          case 1719:
            return "OI_OBEX_CLIENT_ABORTED_COMMAND";
          case 1720:
            return "OI_OBEX_BAD_PACKET";
          case 1721:
            return "OI_OBEX_BAD_REQUEST";
          case 1722:
          case 1725:
          case 1726:
          case 1727:
          case 1728:
          case 1729:
          case 1730:
          case 1731:
          case 1732:
          case 1733:
          case 1734:
          case 1760:
          case 1761:
          case 1762:
          case 1763:
          case 1764:
          case 1765:
          case 1766:
          case 1767:
          case 1768:
          case 1769:
          case 1770:
          case 1771:
          case 1772:
          case 1773:
          case 1774:
          case 1775:
          case 1776:
          case 1777:
          case 1778:
          case 1779:
          case 1780:
          case 1781:
          case 1782:
          case 1783:
          case 1784:
          case 1785:
          case 1786:
          case 1787:
          case 1788:
          case 1789:
          case 1790:
          case 1791:
          case 1792:
          case 1793:
          case 1794:
          case 1795:
          case 1796:
          case 1797:
          case 1798:
          case 1799:
          case 1800:
            return 0;
          case 1723:
            return "OI_OBEX_OBJECT_OVERFLOW";
          case 1724:
            return "OI_OBEX_NOT_FOUND";
          case 1735:
            return "OI_OBEX_ACCESS_DENIED";
          case 1736:
            return "OI_OBEX_VALUE_NOT_ACCEPTABLE";
          case 1737:
            return "OI_OBEX_PACKET_OVERFLOW";
          case 1738:
            return "OI_OBEX_NO_SUCH_FOLDER";
          case 1739:
            return "OI_OBEX_NAME_REQUIRED";
          case 1740:
            return "OI_OBEX_PASSWORD_TOO_LONG";
          case 1741:
            return "OI_OBEX_PRECONDITION_FAILED";
          case 1742:
            return "OI_OBEX_UNAUTHORIZED";
          case 1743:
            return "OI_OBEX_NOT_IMPLEMENTED";
          case 1744:
            return "OI_OBEX_INVALID_AUTH_DIGEST";
          case 1745:
            return "OI_OBEX_INVALID_OPERATION";
          case 1746:
            return "OI_OBEX_DATABASE_FULL";
          case 1747:
            return "OI_OBEX_DATABASE_LOCKED";
          case 1748:
            return "OI_OBEX_INTERNAL_SERVER_ERROR";
          case 1749:
            return "OI_OBEX_UNSUPPORTED_MEDIA_TYPE";
          case 1750:
            return "OI_OBEX_PARTIAL_CONTENT";
          case 1751:
            return "OI_OBEX_METHOD_NOT_ALLOWED";
          case 1752:
            return "OI_OBEXSRV_INCOMPLETE_GET";
          case 1753:
            return "OI_OBEX_FOLDER_BROWSING_NOT_ALLOWED";
          case 1754:
            return "OI_OBEX_SERVER_FORCED_DISCONNECT";
          case 1755:
            return "OI_OBEX_OFS_ERROR";
          case 1756:
            return "OI_OBEX_FILEOP_ERROR";
          case 1757:
            return "OI_OBEX_USERID_TOO_LONG";
          case 1758:
            return "OI_OBEX_APPEND_PARSER_ERROR";
          case 1759:
            return "OI_OBEXSRV_REJECT";
          case 1801:
            return "OI_HANDSFREE_EVENT_REPORTING_DISABLED";
          case 1802:
            return "OI_HANDSFREE_NOT_CONNECTED";
          case 1803:
            return "OI_HANDSFREE_SERVICE_NOT_STARTED";
          case 1804:
            return "OI_HANDSFREE_AG_SERVICE_NOT_STARTED";
          case 1805:
            return "OI_HANDSFREE_COMMAND_IN_PROGRESS";
          case 1806:
            return "OI_HANDSFREE_AUDIO_ALREADY_CONNECTED";
          case 1807:
            return "OI_HANDSFREE_AUDIO_NOT_CONNECTED";
          case 1808:
            return "OI_HANDSFREE_FEATURE_NOT_SUPPORTED";
          case 1809:
            return "OI_HANDSFREE_CODEC_SELECTION_TIMEOUT";
          case 1810:
            return "OI_HANDSFREE_CODEC_SELECTION_FAILED";
          case 1811:
            return "OI_HANDSFREE_PARAMS_EXCEEDED";
          case 1812:
            return "OI_HANDSFREE_CODEC_NOT_SUPPORTED";
          case 1813:
            return "OI_HANDSFREE_INVALID_CODEC";
          case 1814:
            return "OI_HANDSFREE_AG_TIMEOUT";
          case 1815:
            return "OI_HANDSFREE_DISC_MAX_HFP_DEVICES";
          case 1816:
            return "OI_HANDSFREE_LOCAL_DISC_CTRL_MISMATCH";
          case 1817:
            return "OI_HANDSFREE_LOCAL_DISC_SCO_REG_FAIL";
          case 1818:
            return "OI_LOCAL_DEVICE_DISC";
          case 1819:
            return "OI_HANDSFREE_AUDIO_INPUT_CONFIG_FAILED";
          case 1820:
            return "OI_HANDSFREE_AUDIO_INPUT_CONFIG_TIMEOUT";
          default:
            if (a1 == 1604)
            {
              result = "OI_TCS_CALL_IN_PROGRESS";
            }

            else
            {
              if (a1 != 1605)
              {
                return 0;
              }

              result = "OI_TCS_NO_CALL_IN_PROGRESS";
            }

            break;
        }

        return result;
      }

      if (a1 > 1601)
      {
        if (a1 == 1602)
        {
          return "OI_TCS_INVALID_ELEMENT_TYPE";
        }

        else
        {
          return "OI_TCS_INVALID_PACKET";
        }
      }

      if (a1 == 1500)
      {
        return "OI_DEVMGR_POLICY_ACL_DISCONNECTED";
      }

      if (a1 == 1501)
      {
        return "OI_DEVMGR_POLICY_ENFORCEMENT_TIMEOUT";
      }

      return 0;
    }

    if (a1 <= 2000)
    {
      switch(a1)
      {
        case 1901:
          return "OI_HEADSET_SERVICE_NOT_STARTED";
        case 1902:
          return "OI_HEADSET_AG_SERVICE_NOT_STARTED";
        case 1903:
          return "OI_HEADSET_COMMAND_IN_PROGRESS";
      }

      return 0;
    }

    switch(a1)
    {
      case 2001:
        result = "OI_BNEP_INVALID_MTU";
        break;
      case 2002:
        result = "OI_BNEP_SETUP_TIMEOUT";
        break;
      case 2003:
        result = "OI_BNEP_SERVICE_NOT_REGISTERED";
        break;
      case 2004:
        result = "OI_BNEP_INVALID_HANDLE";
        break;
      case 2005:
        result = "OI_BNEP_RESPONSE_TIMEOUT";
        break;
      case 2006:
        result = "OI_BNEP_INVALID_CONNECTION";
        break;
      case 2007:
        result = "OI_BNEP_INVALID_FILTER";
        break;
      case 2008:
        result = "OI_BNEP_CONNECTION_EXISTS";
        break;
      case 2009:
        result = "OI_BNEP_NOT_INITIALIZED";
        break;
      case 2010:
        result = "OI_BNEP_CONNECT_BASE";
        break;
      case 2011:
        result = "OI_BNEP_CONNECT_FAILED_INVALID_DEST_UUID";
        break;
      case 2012:
        result = "OI_BNEP_CONNECT_FAILED_INVALID_SOURCE_UUID";
        break;
      case 2013:
        result = "OI_BNEP_CONNECT_FAILED_INVALID_UUID_SIZE";
        break;
      case 2014:
        result = "OI_BNEP_CONNECT_FAILED_NOT_ALLOWED";
        break;
      case 2020:
        result = "OI_BNEP_FILTER_NET_BASE";
        break;
      case 2021:
        result = "OI_BNEP_FILTER_NET_UNSUPPORTED_REQUEST";
        break;
      case 2022:
        result = "OI_BNEP_FILTER_NET_FAILED_INVALID_PROTOCOL_TYPE";
        break;
      case 2023:
        result = "OI_BNEP_FILTER_NET_FAILED_MAX_LIMIT_REACHED";
        break;
      case 2024:
        result = "OI_BNEP_FILTER_NET_FAILED_SECURITY";
        break;
      case 2030:
        result = "OI_BNEP_FILTER_MULTI_BASE";
        break;
      case 2031:
        result = "OI_BNEP_FILTER_MULTI_UNSUPPORTED_REQUEST";
        break;
      case 2032:
        result = "OI_BNEP_FILTER_MULTI_FAILED_INVALID_ADDRESS";
        break;
      case 2033:
        result = "OI_BNEP_FILTER_MULTI_FAILED_MAX_LIMIT_REACHED";
        break;
      case 2034:
        result = "OI_BNEP_FILTER_MULTI_FAILED_SECURITY";
        break;
      case 2040:
        result = "OI_BNEP_LOCAL_DEVICE_MUST_BE_CENTRAL";
        break;
      case 2041:
        result = "OI_BNEP_PACKET_FILTERED_OUT";
        break;
      case 2042:
        result = "OI_BNEP_NO_PACKET_FOUND";
        break;
      case 2043:
        result = "OI_BNEP_TIMEOUT";
        break;
      default:
        return 0;
    }
  }

  return result;
}

double sub_1000D24B8(unsigned int a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1 != 0xFFFF)
    {
      v2 = &unk_100B6D1DD;
      byte_100B6D1E5 = 0;
      do
      {
        v2[7] = a0123456789_0[v1 % 0xA];
        --v2;
        v3 = v1 > 9;
        v1 /= 0xAu;
      }

      while (v3);
      result = 5.76777859e-153;
      *v2 = 0x2053555441545320;
    }
  }

  return result;
}

uint64_t sub_1000D2538(uint64_t a1, int a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!sub_1000B8B5C(a1))
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("OI_LP_DisconnectReq %d already released, ignoring disconnect request", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x2Cu);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_30;
  }

  v4 = *(a1 + 54);
  if (v4 <= 2)
  {
    if (v4 - 1 < 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_LP_DisconnectReq, connection state ST_CONNECT_IN_PROGRESS", v14, v15, v16, v17, v18, v19, v20, v47);
        v21 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 1310;
    }

    if (*(a1 + 54))
    {
LABEL_27:
      sub_1000D660C();
      return 105;
    }

    goto LABEL_21;
  }

  if (v4 - 3 < 3)
  {
LABEL_21:
    if (*(a1 + 148) >= 1)
    {
      sub_1000D27D8(a1);
      if (*(a1 + 148))
      {
        return 0;
      }

      v38 = *(a1 + 324);
      if (!*(a1 + 324))
      {
        v38 = *(qword_100BCDFC8 + 2);
      }

      return sub_1000D28AC(a1, v38, a2);
    }

    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("OI_LP_DisconnectReq %: reference count == 0 ignoring disconnect request", v22, v23, v24, v25, v26, v27, v28, a1 + 48);
    v29 = sub_10000C050(0x2Cu);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_30:
    sub_1000E09C0();
    return 0;
  }

  if (v4 == 6)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("OI_LP_DisconnectReq, disconnect already in progress", v30, v31, v32, v33, v34, v35, v36, v47);
    v37 = sub_10000C050(0x2Cu);
    result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v4 != 7)
  {
    goto LABEL_27;
  }

  if (*(a1 + 148) < 1)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("OI_LP_DisconnectReq %: reference count == 0 ignoring disconnect request", v39, v40, v41, v42, v43, v44, v45, a1 + 48);
    v46 = sub_10000C050(0x2Cu);
    result = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_30;
  }

  sub_1000D27D8(a1);
  result = 0;
  if (a2 != 68 && !*(a1 + 148))
  {
    sub_1000E4FBC(a1, 0);
    sub_1000E53AC(a1);
    sub_1000E12C4(a1);
    return 0;
  }

  return result;
}

void sub_1000D27D8(uint64_t a1)
{
  v2 = *(a1 + 148);
  if (v2 < 255)
  {
    if (v2)
    {
      atomic_fetch_add_explicit((a1 + 148), 0xFFFFFFFF, memory_order_relaxed);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Device attempted to decrement when reference count is already zero", v11, v12, v13, v14, v15, v16, v17, v19);
      v18 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Reached max connection retain count. Not decrementing ref count", v3, v4, v5, v6, v7, v8, v9, v19);
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    if (*(a1 + 148) <= 254)
    {
      sub_1000D660C();
    }
  }
}

uint64_t sub_1000D28AC(uint64_t a1, int a2, char a3)
{
  v6 = (a1 + 72);
  if (sub_10002260C(*(a1 + 72)))
  {
    sub_1000D660C();
  }

  v27 = 0;
  v28[0] = 0;
  if (sub_1000B8B5C(a1))
  {
    v26 = a1;
    LOBYTE(v27) = a3;
    v28[1] = &v26;
    LOWORD(v28[0]) = 16;
    if (a2)
    {
      if (byte_100B5F4B9)
      {
        v7 = 0;
      }

      else
      {
        v7 = a2;
      }

      v8 = sub_10002195C(sub_1000D5ED4, v28, v7, v6);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed", v9, v10, v11, v12, v13, v14, v15, v26);
          v16 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }
      }
    }

    else
    {
      sub_1000D5ED4(v28);
      return 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("post disconnect timeout when connection is already gone", v17, v18, v19, v20, v21, v22, v23, v26);
      v24 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 114;
  }

  return v8;
}

void sub_1000D29F4(uint64_t a1, int a2)
{
  v4 = sub_1000B7E7C(a1);
  if (v4 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not update flush, peer lookup was invalid", v28, v29, v30, v31, v32, v33, v34, v36);
      v35 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = *(&xmmword_100B5A1A0 + v4);
    if (*(v6 + 75) == 1 && *(v6 + 16))
    {
      v7 = 0;
      v8 = 64;
      do
      {
        v9 = *(v6 + 8);
        if (v9 && *(v9 + v8) && *(v9 + v8 - 10) == 13)
        {
          if (a2)
          {
            v10 = sub_100232034(a1, 200);
            if (v10)
            {
              v11 = v10;
              if (sub_10000C240())
              {
                sub_10000AF54("Flush status failed with %!", v12, v13, v14, v15, v16, v17, v18, v11);
                v19 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  sub_10081010C();
                }
              }
            }

            else
            {
              *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v5) + 8) + v8)) + 38) = 200;
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("We downgraded while servicing a reserved priority pipe", v20, v21, v22, v23, v24, v25, v26, v36);
              v27 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_10081010C();
              }
            }

            *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v5) + 8) + v8)) + 38) = -1;
          }
        }

        ++v7;
        v6 = *(&xmmword_100B5A1A0 + v5);
        v8 += 88;
      }

      while (v7 < *(v6 + 16));
    }
  }
}

void sub_1000D2C0C(unsigned int a1, int a2, char a3)
{
  v51 = 0;
  v5 = &qword_100BC9CB0[134 * a1];
  sub_1000D4354(&v51);
  v6 = SWORD2(v51) + 1000 * v51;
  v7 = *(v5 + 106) + 1000 * *(v5 + 52);
  if (v6 == v7)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 8 * *(v5 + 23) / (v6 - v7);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Done with upgraded connection, %d total bytes sent in %d seconds (%d kbps)", v9, v10, v11, v12, v13, v14, v15, *(v5 + 23));
    v16 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1000D303C(v5, (*(v5 + 20) != 1) | (2 * (*(v5 + 21) != 1)), a2);
  if (*(v5 + 10))
  {
    v18 = 0;
    v19 = &qword_100BC9CB0[134 * a1 + 3];
    while (*v19 == 1 || !*(v19 - 1) || !sub_10000C240())
    {
LABEL_25:
      ++v18;
      v19 += 2;
      if (v18 >= *(v5 + 10))
      {
        goto LABEL_26;
      }
    }

    v27 = *v19;
    if (v27 <= 2)
    {
      v28 = "LE";
      if (v27 == 1)
      {
        goto LABEL_23;
      }

      if (v27 == 2)
      {
        v28 = "BT";
        goto LABEL_23;
      }
    }

    else
    {
      switch(v27)
      {
        case 3u:
          v28 = "WL";
          goto LABEL_23;
        case 0x10u:
          v28 = "USB";
          goto LABEL_23;
        case 0x11u:
          v28 = "AWDL";
          goto LABEL_23;
      }
    }

    v28 = "??";
LABEL_23:
    sub_10000AF54("Af ter downgrade, tech %s still available\n", v20, v21, v22, v23, v24, v25, v26, v28);
    v29 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }

    goto LABEL_25;
  }

LABEL_26:
  if (a2 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Detected error in upgrade, past tech is LE", v31, v32, v33, v34, v35, v36, v37, v49);
      v38 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else if (off_100BC9C80 && (a3 & 1) == 0)
  {
    off_100BC9C80(*v5, 1, v8);
    goto LABEL_36;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Skipping scalable pipe downCb due to upgrade error %x", v40, v41, v42, v43, v44, v45, v46, off_100BC9C80);
    v47 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_36:
  v53 = 0u;
  v54 = 0u;
  LOBYTE(v53) = 1;
  WORD1(v53) = 4;
  DWORD2(v53) = 1;
  LOBYTE(v54) = 1;
  WORD1(v54) = 4;
  DWORD2(v54) = v8;
  memcpy(buf, "state", sizeof(buf));
  sub_1000CC0B0("Magnet Operation", buf, &v53, 2u);
}

void sub_1000D303C(uint64_t a1, uint64_t a2, int a3)
{
  v48 = 0;
  sub_1000D4354(&v48);
  v6 = *(a1 + 156) + 1000 * *(a1 + 152);
  if (v6)
  {
    v7 = 1000 * v48;
    v8 = SWORD2(v48);
    v9 = 1000 * v48 - v6 + SWORD2(v48);
    *(a1 + 152) = 0;
    *(a1 + 156) = 0;
    v10 = v9 / 0x3E8;
    v11 = v9 % 0x3E8;
  }

  else
  {
    LOWORD(v11) = 0;
    v10 = 0;
    v8 = SWORD2(v48);
    v7 = 1000 * v48;
  }

  v12 = v7 + v8;
  v13 = *(a1 + 212) + 1000 * *(a1 + 208);
  v14 = v12 - v13;
  if (v12 == v13)
  {
    v15 = -1;
  }

  else
  {
    v15 = 8 * *(a1 + 92) / v14;
  }

  v16 = *(a1 + 77);
  v17 = sub_10000C240();
  if (v16 <= a3)
  {
    if (!v17)
    {
      goto LABEL_47;
    }

    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v26 = "LE";
        goto LABEL_45;
      }

      if (a3 == 2)
      {
        v26 = "BT";
        goto LABEL_45;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          v26 = "WL";
          goto LABEL_45;
        case 16:
          v26 = "USB";
          goto LABEL_45;
        case 17:
          v26 = "AWDL";
          goto LABEL_45;
      }
    }

    v26 = "??";
LABEL_45:
    sub_10000AF54("Transport downgrade (%s -> %s): duration %d ms, Tx[ %d kbps, %d B]", v18, v19, v20, v21, v22, v23, v24, v26);
    v37 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (!v17)
  {
    goto LABEL_36;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v25 = "LE";
      goto LABEL_34;
    }

    if (a3 == 2)
    {
      v25 = "BT";
      goto LABEL_34;
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v25 = "WL";
        goto LABEL_34;
      case 16:
        v25 = "USB";
        goto LABEL_34;
      case 17:
        v25 = "AWDL";
        goto LABEL_34;
    }
  }

  v25 = "??";
LABEL_34:
  sub_10000AF54("Transport upgrade (%s -> %s): duration %d ms, Tx[ %d kbps, %d B] upgrade time %d ms, retries %d", v18, v19, v20, v21, v22, v23, v24, v25);
  v27 = sub_10000C050(0x56u);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = sub_10000C0FC();
    *buf = 136446210;
    v50 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
  }

LABEL_36:
  if (*(a1 + 446) != 1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_47;
    }

    sub_10000AF54("No action pending on upgrade", v30, v31, v32, v33, v34, v35, v36, v47);
    v37 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

LABEL_46:
    v46 = sub_10000C0FC();
    *buf = 136446210;
    v50 = v46;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    goto LABEL_47;
  }

  v29 = sub_1000B78F0(a1);
  if (sub_1000B8B5C(v29))
  {
    sub_100230D4C(*(a1 + 447) != 0);
    *(a1 + 446) = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid connection handle.", v38, v39, v40, v41, v42, v43, v44, v47);
    v45 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

LABEL_47:
  if (1000 * v10 + v11 >= 0x1F5)
  {
    sub_1000D660C();
  }

  if (off_100BC9C98)
  {
    off_100BC9C98(a2, a3, *(a1 + 208), v48, v14 / 0x3E8uLL, (v15 / 8), *(a1 + 92) / 0x3E8uLL, v10 | (v11 << 32));
  }

  if (a3 != 1)
  {
    *(a1 + 204) += v14 / 0x3E8;
  }

  *(a1 + 212) = WORD2(v48);
  *(a1 + 208) = v48;
  *(a1 + 92) = 0;
}

void sub_1000D3678(void *a1, NSObject *a2)
{
  v4 = (*(*a1 + 32))(a1);

  dispatch_async_f(a2, a1, v4);
}

const char *sub_1000D36DC(int a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return "Invalid Transport";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "Bluetooth Classic";
      }

      return "Unknown";
    }

    return "Bluetooth LE";
  }

  else if (a1 > 16)
  {
    if (a1 != 17)
    {
      if (a1 == 18)
      {
        return "NAN";
      }

      return "Unknown";
    }

    return "AWDL";
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 16)
      {
        return "USB";
      }

      return "Unknown";
    }

    return "WL";
  }
}

uint64_t sub_1000D3780(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = *(a1 + 10);
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = *(a1 + 20);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = *(a1 + 40);

  return sub_1000D37E4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000D37E4(unsigned int a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, unint64_t a8)
{
  v21 = a4;
  v22 = a3;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = a1;
  v11 = a5;
  v12 = a7;
  v13 = 1000 * a8 + ((a8 >> 16) >> 16);
  sub_1000D38CC(&v16, 16);
  *(&v16 + 1) = v10;
  LOBYTE(v17) = a2;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  *(&v18 + 1) = v11;
  LODWORD(v19) = a6;
  *(&v19 + 1) = v12;
  v20 = v13;
  *(&v17 + 1) = sub_1000B6B74(&v22);
  *&v18 = sub_1000B6B74(&v21);
  result = sub_10000F034();
  if (result)
  {
    v15 = sub_10000F034();
    return (*(*v15 + 40))(v15, &v16);
  }

  return result;
}

void sub_1000D38E8(id a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  sub_1000D43B4(qword_100B540E8);

  sub_1000D3934(0);
}

void sub_1000D3940(uint64_t a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 127) < 0)
    {
      sub_100008904(__p, *(a1 + 104), *(a1 + 112));
    }

    else
    {
      *__p = *(a1 + 104);
      *&v12 = *(a1 + 120);
    }

    if (SBYTE7(v12) < 0)
    {
      v4 = __p[1];
      operator delete(__p[0]);
      if (!v4)
      {
        return;
      }
    }

    else if (!BYTE7(v12))
    {
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(a1 + 400);
    v7 = Current;
    if ((*(a1 + 164) & 1) == 0)
    {
      v7 = *(a1 + 140);
    }

    if (v6 < v7)
    {
      v6 = v7;
    }

    if (v6 >= Current + -7200.0)
    {
      v12 = 0u;
      v13 = 0u;
      *__p = 0u;
      sub_1007938A0(a1, __p);
      v8 = sub_100799860(*(a2 + 8), a2, __p);
      if (v8 != a2)
      {
        v10 = *v8;
        v9 = *(v8 + 8);
        v10[1] = v9;
        *v9 = v10;
        --*(a2 + 16);
        sub_100798878(a2, v8);
      }

      sub_100799900();
    }
  }
}

void sub_1000D3B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100798814(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D3BB8(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2)
  {
    *(a1 + 592) = v2;
    operator delete(v2);
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  sub_10004B61C(a1 + 176, *(a1 + 184));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return a1;
}

void sub_1000D3CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1000D3DA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D3F68;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_1000D3E70(uint64_t a1, void *a2)
{
  v3 = a2;
  *uu2 = 0;
  v6 = 0;
  sub_10004DFB4(uu2, v3);
  if (a1 + 112 != sub_10004E34C(a1 + 104, uu2))
  {
    sub_1000AEAB0((a1 + 104), uu2);
    v4 = sub_10004E34C(a1 + 152, uu2);
    if ((a1 + 160) != v4)
    {
      sub_10002717C((a1 + 152), v4);
      operator delete(v4);
    }

    sub_1007B5230(a1 + 128, uu2);
  }
}

void sub_1000D3F68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device %{public}@ evicted", &v15, 0xCu);
  }

  v5 = *(v2 + 224);
  v6 = (v2 + 232);
  if (v5 != (v2 + 232))
  {
    do
    {
      v8 = v5[4];
      v7 = v5[5];
      v9 = (*(*v7 + 16))(v7);
      v10 = sub_10000EE80();
      v11 = (*(*v10 + 56))(v10, v8);
      if (!v9 && v11 == 32)
      {
        sub_1000D40E0(v7, *(a1 + 32));
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v6);
  }
}

void sub_1000D40E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_10083BF40();
  }

  if (v3)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      if (*(v4 - 64) >= 1 && *(a1 + 362) << 16 == 0x10000)
      {
        v6 = @"kCBMsgArgDeviceUUID";
        v7 = v3;
        v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
        sub_100052C08(a1, 143, v5);
      }
    }
  }
}

uint64_t sub_1000D4200(unsigned __int16 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Unstalling lmhandle 0x%4x", v2, v3, v4, v5, v6, v7, v8, *a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return sub_1000CBE7C(a1, 0, 0, 0);
}

uint64_t sub_1000D42DC(_DWORD *a1, __darwin_suseconds_t *a2)
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  v6 = 0;
  result = gettimeofday(&v7, &v6);
  if (!result)
  {
    if (a1)
    {
      if (HIDWORD(v6))
      {
        v5 = 3600;
      }

      else
      {
        v5 = 0;
      }

      *a1 = LODWORD(v7.tv_sec) - 60 * v6 + v5;
    }

    if (a2)
    {
      *a2 = v7.tv_usec;
    }
  }

  return result;
}

uint64_t sub_1000D4354(uint64_t a1)
{
  v4 = 0;
  result = sub_1000D42DC(&v4 + 1, &v4);
  v3 = v4;
  *a1 = HIDWORD(v4);
  *(a1 + 4) = ((274877907 * v3) >> 38) + ((274877907 * v3) >> 63);
  return result;
}

uint64_t sub_1000D43B4(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v7 = 136446210, v8 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v7, 0xCu), (v1 = *(a1 + 216)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 216) = 0;
  }

  else
  {
    v5 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "fUpgradeAssertion was NULL when trying to deassert", &v7, 2u);
    }
  }

  return sub_1000D3934(0);
}

uint64_t sub_1000D4514(uint64_t a1)
{
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  sub_100008760(&v48);
  *(&v49[-1] + *(v48 - 24) + 8) |= 4u;
  v2 = sub_100063D0C();
  v3 = v2;
  strlen([v2 UTF8String]);
  sub_100007774(&v48);

  if (*(a1 + 24) && *(a1 + 22))
  {
    v4 = sub_100007774(&v48);
    v5 = sub_100063D0C();
    v6 = v5;
    strlen([v5 UTF8String]);
    v7 = sub_100007774(v4);
    sub_100007774(v7);
  }

  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 112))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(a1 + 127))
  {
LABEL_8:
    v8 = sub_100007774(&v48);
    sub_100007774(v8);
    v9 = sub_100007774(&v48);
    v10 = sub_100007774(v9);
    v11 = sub_100007774(v10);
    sub_100007774(v11);
  }

LABEL_9:
  CFAbsoluteTimeGetCurrent();
  if (*(a1 + 400) != 0.0)
  {
    v12 = sub_100007774(&v48);
    *(v12 + *(*v12 - 24) + 16) = 2;
    v13 = std::ostream::operator<<();
    sub_100007774(v13);
  }

  v47 = 0;
  sub_1000D42DC(&v47, 0);
  if (*(a1 + 140))
  {
    v14 = sub_100007774(&v48);
    *(v14 + *(*v14 - 24) + 16) = 2;
    v15 = std::ostream::operator<<();
    sub_100007774(v15);
  }

  if (*(a1 + 98) == 1)
  {
    sub_100007774(&v48);
  }

  if (*(a1 + 160) == 1)
  {
    sub_100007774(&v48);
  }

  if (*(a1 + 236) == 1)
  {
    sub_100007774(&v48);
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 216))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*(a1 + 231))
  {
LABEL_23:
    v16 = sub_100007774(&v48);
    sub_100007774(v16);
  }

LABEL_24:
  if (*(a1 + 354))
  {
    sub_100007774(&v48);
    std::ostream::operator<<();
  }

  if (*(a1 + 234) == 1)
  {
    sub_100007774(&v48);
  }

  if (*(a1 + 56))
  {
    v17 = sub_100007774(&v48);
    sub_10004D9B0();
    v18 = sub_100007774(v17);
    sub_100007774(v18);
    if (v46 < 0)
    {
      operator delete(__p);
    }
  }

  v19 = sub_100007774(&v48);
  sub_1000D4E98(a1);
  sub_100007774(v19);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 528))
  {
    v20 = sub_100007774(&v48);
    LOBYTE(__p) = *(a1 + 528);
    v21 = sub_100007774(v20);
    v22 = sub_100007774(v21);
    v23 = [NSString stringWithFormat:@"%@", *(a1 + 520)];
    v24 = v23;
    strlen([v23 UTF8String]);
    v25 = sub_100007774(v22);
    sub_100007774(v25);
    std::ostream::operator<<();
  }

  v26 = sub_100007774(&v48);
  sub_100007774(v26);
  sub_100007774(&v48);
  v27 = std::ostream::operator<<();
  sub_100007774(v27);
  if (*(a1 + 608) == 1)
  {
    sub_100007774(&v48);
  }

  v28 = *(a1 + 584);
  v29 = *(a1 + 592);
  if (v28 != v29)
  {
    v30 = -127;
    do
    {
      v32 = *v28++;
      v31 = v32;
      if (v30 <= v32)
      {
        v30 = v31;
      }
    }

    while (v28 != v29);
    if (v30 >= -126)
    {
      sub_100007774(&v48);
      v33 = std::ostream::operator<<();
      sub_100007774(v33);
    }
  }

  v34 = sub_1000C7A04(a1);
  if ([v34 count])
  {
    sub_100007774(&v48);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v41 objects:v63 count:16];
    if (v36)
    {
      v37 = *v42;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(v35);
          }

          strlen([*(*(&v41 + 1) + 8 * i) UTF8String]);
          v39 = sub_100007774(&v48);
          sub_100007774(v39);
        }

        v36 = [v35 countByEnumeratingWithState:&v41 objects:v63 count:16];
      }

      while (v36);
    }

    sub_100007774(&v48);
  }

  std::stringbuf::str();

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[1]);
  }

  std::locale::~locale(v49);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1000D4E98(id *a1)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  sub_100008760(&v17);
  sub_100007774(&v17);
  std::stringbuf::str();
  v2 = v16;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v2 = v15;
    operator delete(__p);
  }

  if (a1[34])
  {
    v3 = sub_100007774(&v17);
    strlen([a1[34] UTF8String]);
    sub_100007774(v3);
  }

  if (a1[35])
  {
    v4 = sub_100007774(&v17);
    strlen([a1[35] UTF8String]);
    sub_100007774(v4);
  }

  if (a1[36])
  {
    v5 = sub_100007774(&v17);
    strlen([a1[36] UTF8String]);
    sub_100007774(v5);
  }

  if (a1[37])
  {
    v6 = sub_100007774(&v17);
    strlen([a1[37] UTF8String]);
    sub_100007774(v6);
  }

  if (a1[38])
  {
    v7 = sub_100007774(&v17);
    strlen([a1[38] UTF8String]);
    sub_100007774(v7);
  }

  if (a1[39])
  {
    v8 = sub_100007774(&v17);
    strlen([a1[39] UTF8String]);
    sub_100007774(v8);
  }

  if (a1[40])
  {
    v9 = sub_100007774(&v17);
    sub_1007785DC(v9, a1[40], 10);
    sub_100007774(v9);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[42])
  {
    v10 = sub_100007774(&v17);
    sub_1007785DC(v10, a1[42], 10);
    sub_100007774(v10);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[43])
  {
    v11 = sub_100007774(&v17);
    sub_1007785DC(v11, a1[43], 10);
    sub_100007774(v11);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[41])
  {
    v12 = sub_100007774(&v17);
    sub_1007785DC(v12, a1[41], 10);
    sub_100007774(v12);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if ((v16 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    if (v15 != v2)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v2 == v16)
  {
LABEL_31:
    sub_100007774(&v17);
  }

LABEL_32:
  std::stringbuf::str();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000D53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a16);
  _Unwind_Resume(a1);
}

void sub_1000D5424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D54FC;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_1000D54FC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 2064);
  v3 = (v1 + 2072);
  if (v2 != (v1 + 2072))
  {
    do
    {
      v5 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        sub_100018384(v2[4], __p);
        v6 = v12 >= 0 ? __p : __p[0];
        v7 = *(a1 + 32);
        *buf = 136446466;
        v14 = v6;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "session %{public}s device %{public}@ invalidated", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1000D3E70(v2[5], *(a1 + 32));
      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }
}

void sub_1000D5668()
{
  sub_10003F730();
  if (v5 >= 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = *v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "LeDeviceManager::persistDevice - could not find device for UUID %s", v3, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1000D56D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a3;
  v7 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v8 = &word_100BC9CB8;
    while (*v8 != a1)
    {
      v8 += 536;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v8 - 1);
    if (!a2)
    {
      return;
    }
  }

  else
  {
LABEL_5:
    v9 = 0;
    if (!a2)
    {
      return;
    }
  }

  if (a3 < 2 || !v9)
  {
    return;
  }

  if (a3 - 2 != a2[1])
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Wrong packet : %@", v11, v12, v13, v14, v15, v16, v17, a2);
    v18 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_24:
    sub_1000E09C0();
    return;
  }

  if (a5 && off_100BC9CA8)
  {
    off_100BC9CA8(v9, a1, a3);
  }

  v10 = *a2;
  if (v10 <= 0x12)
  {
    if (*a2 > 0xFu)
    {
      switch(v10)
      {
        case 0x10u:

          sub_100235580(v9, a2 + 2, v5 - 2);
          return;
        case 0x11u:

          sub_100235068(v9, a2 + 2, v5 - 2);
          return;
        case 0x12u:

          sub_100235C60(v9, a2 + 2, v5 - 2);
          return;
      }
    }

    else
    {
      switch(v10)
      {
        case 1u:

          sub_100233F3C(v9, a2 + 2, (v5 - 2));
          return;
        case 2u:

          sub_100234880(v9, a2 + 2, v5 - 2);
          return;
        case 5u:

          sub_100234E50(v9, a2 + 2);
          return;
      }
    }

LABEL_71:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Unknown PDU opcode %d, dataSize %d", v28, v29, v30, v31, v32, v33, v34, *a2);
    v35 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_24;
  }

  if (*a2 <= 0x20u)
  {
    switch(v10)
    {
      case 0x13u:

        sub_100235F34(v9, a2 + 2, v5 - 2);
        return;
      case 0x14u:

        sub_100236178(v9, a2 + 2, v5 - 2);
        return;
      case 0x20u:

        sub_1002365A8(v9);
        return;
    }

    goto LABEL_71;
  }

  if (*a2 > 0xFDu)
  {
    if (v10 != 255)
    {
      sub_100236BF8(a2[2]);
    }

    if (sub_10000C240())
    {
      v19 = sub_100236CAC(a2[2]);
      sub_100233F18(a2[3]);
      sub_10000AF54("Got TS error with message %s %s", v20, v21, v22, v23, v24, v25, v26, v19);
      v27 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (v10 != 33)
    {
      if (v10 == 34)
      {

        sub_10023693C(v9);
        return;
      }

      goto LABEL_71;
    }

    sub_1000CC7D0(v9);
  }
}

void sub_1000D5AF4(uint64_t a1, int a2, int a3)
{
  v6 = sub_1000D5BF0(a1);
  v7 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = sub_1000D36DC(a2);
    v11 = 1024;
    v12 = a3;
    v13 = 2048;
    v14 = a1;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scalable pipe transport has been downgraded to %{public}s - average transmit throughput was %ukbps, handle %p p:0x%4x", &v9, 0x22u);
  }

  v8 = sub_100007EE8();
  sub_10000CA94(v8, &stru_100AEDA20);
}

uint64_t sub_1000D5BF0(uint64_t a1)
{
  v1 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    return 0xFFFFLL;
  }

  for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
  {
    if (!--v1)
    {
      return 0xFFFFLL;
    }
  }

  return *i;
}

uint64_t sub_1000D5C70(uint64_t a1)
{
  v2 = &xmmword_100B66160 + 1;
  do
  {
    v3 = *v2;
    v2 = (*v2 + 24);
  }

  while (v3 != a1 && v3 != 0);
  if (v3)
  {
    return *(a1 + 8);
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Couldn't find active session %p!", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x44u);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D5D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 232);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_1000D5D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

BOOL sub_1000D5E38(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 8))
  {
    a1 = (sub_1000D660C)();
  }

  if ((*v1 & 1) == 0)
  {
    sub_1000D660C(a1);
  }

  v2 = sub_100007618(*(v1 + 2) + 32, 0xCFEE246EuLL);
  v3 = v2;
  if (v2)
  {
    if (*(v1 + 4))
    {
      v4 = 0;
      do
      {
        v2[v4] = *(*(v1 + 8) + v4);
        ++v4;
      }

      while (v4 < *(v1 + 4));
    }

    sub_10000C1E8(*(v1 + 8));
    *(v1 + 8) = v3;
    *(v1 + 2) += 32;
  }

  return v3 != 0;
}

void sub_1000D5ED4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!sub_1000B8B5C(*v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("disconnectTimeoutCb - connection is already gone", v19, v20, v21, v22, v23, v24, v25, v43);
    v26 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_1000E09C0();
    return;
  }

  if (*(*v1 + 148))
  {
    return;
  }

  if (!sub_1000D60EC(*(*v1 + 54)))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("disconnectTimeoutCb - connection state no longer connected", v27, v28, v29, v30, v31, v32, v33, v43);
    v34 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_12;
  }

  if (sub_1000D60AC(*v1) && (byte_100B5F4B9 & 1) == 0)
  {
    if (sub_1000D28AC(*v1, *(qword_100BCDFC8 + 2), *(v1 + 8)))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("postDisconnectTimeout failed", v35, v36, v37, v38, v39, v40, v41, v43);
        v42 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    sub_1000DE35C(*v1);
    v2 = *v1;
    v10 = sub_1000D6178(5u, v3, v4, v5, v6, v7, v8, v9, *v1);
    if (sub_1000D6410(v2, v10))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_Disconnect failed (%d)", v11, v12, v13, v14, v15, v16, v17, **v1);
        v18 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_9:
          sub_100814348();
        }
      }
    }

    else
    {
      *(*v1 + 54) = 6;
    }
  }
}

BOOL sub_1000D60AC(uint64_t a1)
{
  if (dword_100B6B644 < 2)
  {
    return 0;
  }

  return *(a1 + 48) == dword_100B6B650 && *(a1 + 52) == word_100B6B654;
}

uint64_t sub_1000D60EC(uint64_t a1)
{
  if (a1 >= 8)
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("unknown connection state %d", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0x39u >> a1;
  }

  return v2 & 1;
}

uint64_t sub_1000D6178(unsigned __int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = 0;
  v25 = -1;
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  if (sub_100004790())
  {
    return 0;
  }

  if (dword_100BCE0C0 != 2)
  {
    return 627;
  }

  if (sub_100018C6C())
  {
    return 3704;
  }

  v23[0] = 0;
  v23[1] = 0;
  v20 = 0;
  v21 = 0;
  v19[0] = 0;
  *(v19 + 3) = 0;
  v18 = 0;
  v24 = &a9;
  v11 = sub_10001EE38(a1);
  if (!v11)
  {
    return 616;
  }

  v12 = v11;
  v13 = *(v11 + 2);
  if ((v13 & 0xC000) != 0 || (*(&xmmword_100BCE0E0 + (v13 >> 8)) & v13) == 0)
  {
    return 628;
  }

  if (!v11[17])
  {
    sub_1000D660C();
  }

  if (*(v12 + 16))
  {
    result = sub_100018C78(v24, v12, v23, v19, &v25, 0, &v18);
  }

  else
  {
    result = sub_100093830(v24, v12, v23, &v22, &v20, v19, &v18);
  }

  if (!result)
  {
    v14 = *(v12 + 2);
    if (v14 == 1064 || v14 == 1031)
    {
      v15 = v22;
      if (!v22)
      {
        sub_1000D660C();
        v15 = v22;
      }

      v20 = *(v15 + 48);
      v21 = *(v15 + 52);
    }

    v16 = *(v12 + 19);
    if (v16 <= 7)
    {
      if (v16 == 6 && !v22)
      {
        sub_1000D660C();
      }
    }

    else if (v16 == 8)
    {
      v17 = *(v12 + 2);
      if (v17 != 8205 && v17 != 8259 && v17 != 8325)
      {
        sub_1000D660C();
      }
    }

    else if (v16 == 9 && *(v12 + 2) != 8292)
    {
      sub_1000D660C();
    }

    return sub_10001EFEC(v23[0]);
  }

  return result;
}

uint64_t sub_1000D6418()
{
  if (qword_100BC7028 != -1)
  {
    sub_100862DE0();
  }

  return qword_100BC7018;
}

uint64_t sub_1000D6450(int a1)
{
  if (qword_100BC7028 != -1)
  {
    sub_100862DE0();
  }

  return qword_100BC7008[a1];
}

void sub_1000D64D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D6554;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_1000D6554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 > *(v2 + 520))
  {
    *(v2 + 520) = v1;
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 520);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Set fNumberOfAOPBTPrecisionFindingKeys to: %02lu", &v5, 0xCu);
    }
  }
}

void sub_1000D660C()
{
  v0 = qword_100B6D180;
  if (qword_100B6D180 || (v3 = 0, sub_1002972C0(&qword_100B6D180, &v3), (v0 = qword_100B6D180) != 0))
  {
    v1 = *(v0 + 96);
    if (v1)
    {
      v2 = v1(0);
      if (v2)
      {
        if (v2 != 102)
        {
          sub_100304AF8("Calling HciDriver_t::triggerCapture failed with status %!", v2);
        }
      }
    }
  }

  else
  {
    sub_100304AF8("BT driver not ready yet!, skipping");
  }
}

uint64_t sub_1000D6698(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 22)
  {
    if (dword_100B50FA0 <= 30)
    {
      if (dword_100B50FA0 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_10080ABB0();
      }
    }

    v3 = 1;
  }

  else
  {
    if (dword_100B50FA0 <= 30)
    {
      if (dword_100B50FA0 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_1000DBB68();
      }
    }

    v3 = 0;
  }

  atomic_store(v3, (*(v2 + 32) + 88));
  return result;
}

BOOL sub_1000D6740(unsigned __int8 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_10004E15C(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 20;
    v4 += 20;
  }

  while (v2 != v3);
  return result;
}

_BYTE *sub_1000D67B4@<X0>(const unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(v4, 0, sizeof(v4));
  uuid_unparse_upper(a1, v4);
  return sub_100007E30(a2, v4);
}

void sub_1000D6828(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSessionID");
  uuid = xpc_dictionary_get_uuid(v4, "kCBMsgArgUUID");
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832784();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1000D6938(uint64, uuid, &value);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

uint64_t sub_1000D6938(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = [[NSUUID alloc] initWithUUIDBytes:a2];
  if (qword_100B508D0 != -1)
  {
    sub_10083FB40();
  }

  v6 = sub_100046458(off_100B508C8, v5, 0);
  if (v6)
  {
    v7 = (v6 & 0xFF000000000000) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v8 = sub_1000504C8(off_100B508E8, v6, 0);
  if (v8)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v9 = sub_10056A4C4(off_100B508E8, a1, v8);
    *a3 = v9;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
LABEL_16:
    v10 = 8;
  }

  return v10;
}

uint64_t sub_1000D6A58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = 1;
  if (v1 != v2)
  {
    while (1)
    {
      v4 = v1;
      while (*(v4 + 8) != result)
      {
        v4 += 104;
        if (v4 == v2)
        {
          return result;
        }
      }

      if (v4 == v2)
      {
        break;
      }

      result = (result + 1);
    }
  }

  return result;
}

void sub_1000D6A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1000D8BC0(a4, v8);
      v8 += 104;
      a4 += 104;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1006EF168(a1, v6);
      v6 += 104;
    }
  }
}

char *sub_1000D6B20@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_100008904(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

uint64_t sub_1000D6B48(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    objc_storeStrong(location, *v5);
    v7 = *(v5 + 8);
    *(location + 4) = *(v5 + 16);
    location[1] = v7;
    sub_1000DA184(location + 1, v5 + 24);
    std::string::operator=((location + 10), (v5 + 80));
    location += 13;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

void sub_1000D6BD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000DA2B4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000D6C38(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2))
    {
      v4 = (v4 + sub_1000E2140(v5, 12));
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_7:
    v8 = v2;
    operator delete(v2);
  }

LABEL_8:
  sub_1000088CC(v10);
  return v4;
}

void sub_1000D6CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

void sub_1000D6D2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_1000C7698();
}

std::string *sub_1000D6D88@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(a2, "[ ");
  for (i = *a1; i != a1[1]; i += 104)
  {
    if (i != *a1)
    {
      std::string::append(a2, ", ");
    }

    sub_1000DA754(i, __p);
    if ((v9 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(a2, v5, v6);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return std::string::append(a2, " ]");
}

void sub_1000D6E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_1000DA2A8(&v8);
  if (qword_100B54080 != -1)
  {
    sub_10081D360();
  }

  if (sub_1000D895C(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081D388();
    }
  }

  else
  {
    v4 = sub_1000D8B24(&v8, v3);
    if (v9 == v4)
    {
      *(a1 + 500) = 0;
    }

    else
    {
      v5 = *(v4 + 4);
      *(a1 + 500) = v5;
      v6 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        if ((v5 - 1) > 6)
        {
          v7 = "unknown";
        }

        else
        {
          v7 = off_100AED3A8[v5 - 1];
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Call status is now %s", buf, 0xCu);
      }
    }
  }

  *buf = &v8;
  sub_1000D6BD4(buf);
}

void sub_1000D7054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000D6BD4(&a13);

  _Unwind_Resume(a1);
}

void sub_1000D7088(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_1000DA2A8(&v11);
  memset(v10, 0, sizeof(v10));
  sub_1000DA2A8(v10);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1000D895C(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E634();
    }
  }

  else
  {
    sub_1000D72E4(a1 + 360, &v8);
    sub_1000D8984(v10, v8, v9, 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3));
    v14 = &v8;
    sub_1000D6BD4(&v14);
    if ((sub_1000D9854(a1 + 360, &v11) & 1) == 0)
    {
      if (sub_1000DA424(v10, &v11))
      {
        sub_1000D7348(a1, &v11, v3);
      }

      else
      {
        v4 = sub_1000D8B24(&v11, v3);
        v5 = v4;
        if (v12 != v4 && *(v4 + 4) == 5)
        {
          sub_1000DAA18(__dst);
          if (*(v5 + 103) < 0)
          {
            sub_100008904(&__p, v5[10], v5[11]);
          }

          else
          {
            __p = *(v5 + 10);
          }

          sub_1003202D8(a1 + 360, __dst, &__p, 1);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_1000D8E64(__dst);
        }
      }
    }
  }

  v8 = v10;
  sub_1000D6BD4(&v8);
  v10[0] = &v11;
  sub_1000D6BD4(v10);
}

void sub_1000D7258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D8E64(&a15);
  a22 = v23 - 88;
  sub_1000D6BD4(&a22);
  *(v23 - 88) = v23 - 64;
  sub_1000D6BD4((v23 - 88));

  _Unwind_Resume(a1);
}

uint64_t sub_1000D72E4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  sub_1000DA9C4(a2);
  return sub_1000088CC(v4);
}

void sub_1000D7348(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v71[0] = 0;
  v71[1] = 0;
  sub_100007F88(v71, a1 + 760);
  v70 = 0;
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  sub_1000D6A54(v68);
  memset(&__src, 0, sizeof(__src));
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  sub_1000DA2A8(&v60);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_1000DAA8C(a1 + 360, &v57);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_1000DA2A8(&v54);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  sub_1000DAAFC(off_100B54078);
  for (i = *a2; i != a2[1]; i += 13)
  {
    v7 = *i;
    v8 = sub_1000D8B24(&v57, v7);

    v9 = *i;
    v10 = sub_1000D8B24(&v54, v9);

    if (v58 == v8 && v55 == v10)
    {
      sub_1000D90A8(&v60, i);
    }
  }

  v11 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(&v57, v74);
    if (SBYTE3(v78) >= 0)
    {
      v12 = v74;
    }

    else
    {
      v12 = *v74;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call(s) in A2DP Expanse: %s", buf, 0xCu);
    if (SBYTE3(v78) < 0)
    {
      operator delete(*v74);
    }

    v11 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(&v54, v74);
    if (SBYTE3(v78) >= 0)
    {
      v13 = v74;
    }

    else
    {
      v13 = *v74;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call(s) in Screening: %s", buf, 0xCu);
    if (SBYTE3(v78) < 0)
    {
      operator delete(*v74);
    }

    v11 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(a2, v74);
    if (SBYTE3(v78) >= 0)
    {
      v14 = v74;
    }

    else
    {
      v14 = *v74;
    }

    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current Call(s): %s", buf, 0xCu);
    if (SBYTE3(v78) < 0)
    {
      operator delete(*v74);
    }

    v11 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(&v60, v74);
    v15 = SBYTE3(v78) >= 0 ? v74 : *v74;
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Filtered Call(s): %s", buf, 0xCu);
    if (SBYTE3(v78) < 0)
    {
      operator delete(*v74);
    }
  }

  sub_1000D8154(a1, &v60, &v66 + 1, &v63, &v66, &v70, &v65, &v64, v68, &__src);
  v16 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(&v60, v74);
    if (SBYTE3(v78) >= 0)
    {
      v17 = v74;
    }

    else
    {
      v17 = *v74;
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating call status for call(s): %s", buf, 0xCu);
    if (SBYTE3(v78) < 0)
    {
      operator delete(*v74);
    }

    v16 = qword_100BCE8F8;
  }

  v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  v19 = v63;
  if (!v18)
  {
    goto LABEL_61;
  }

  v38 = v5;
  if (v66)
  {
    v20 = "yes";
  }

  else
  {
    v20 = "no";
  }

  sub_1000DAB24(&v64, buf);
  v21 = v73;
  v22 = *buf;
  sub_1000DAB54(&v65, __p);
  v23 = buf;
  if (v21 < 0)
  {
    v23 = v22;
  }

  if (v53 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v70)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  if (HIBYTE(v66))
  {
    v26 = "yes";
  }

  else
  {
    v26 = "no";
  }

  *v74 = 136447490;
  *&v74[4] = v20;
  v75 = 1024;
  v76 = v19;
  v77 = 2082;
  v78 = v23;
  v79 = 2082;
  v80 = v24;
  v81 = 2082;
  v82 = v25;
  v83 = 2082;
  v84 = v26;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "callPresent: %{public}s, callState: %d, callSetup: %{public}s, heldStatus: %{public}s, heldChanged: %{public}s, visualVoicemail: %{public}s", v74, 0x3Au);
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v38;
  if (v73 < 0)
  {
    operator delete(*buf);
    if (v19)
    {
      goto LABEL_65;
    }
  }

  else
  {
LABEL_61:
    if (v19)
    {
      goto LABEL_65;
    }
  }

  if ((v66 & 1) == 0)
  {
    v27 = HIBYTE(v66);
    goto LABEL_66;
  }

LABEL_65:
  v27 = 1;
LABEL_66:
  if (qword_100B541D0 != -1)
  {
    sub_10084D328();
  }

  sub_1000D9244(off_100B541C8, v27 & 1);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v28 = sub_1000D6C38(off_100B508E8);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v29 = sub_1000DABBC(off_100B508E8);
  v30 = v66;
  if (v66)
  {
    if (!v64 && v28 && !v29)
    {
      if (qword_100B50DB8 != -1)
      {
        sub_10084D350();
      }

      v31 = 4;
LABEL_89:
      sub_1000DAE4C(off_100B50DB0, v31, 3u);
    }
  }

  else
  {
    if ((v64 - 1) > 1)
    {
      if (v64)
      {
        goto LABEL_90;
      }

      if (qword_100B50DB8 != -1)
      {
        sub_10084D350();
      }

      v31 = 3;
      goto LABEL_89;
    }

    if (v28 && !v29)
    {
      if (qword_100B50DB8 != -1)
      {
        sub_10084D350();
      }

      v31 = 5;
      goto LABEL_89;
    }
  }

LABEL_90:
  sub_1000DAD04(a1 + 360, v65);
  sub_1000DACBC(a1 + 360, v64);
  sub_1000DA9C4(v51);
  sub_1000DAD0C(a1 + 360, v51);
  *v74 = v51;
  sub_1000D6BD4(v74);
  if (v30 != sub_1000DB470(a1 + 360))
  {
    if (sub_1000DB468(a1 + 360))
    {
      sub_100320270(a1 + 360, 1);
    }

    sub_1000D88F8(v50, a1 + 824);
    sub_1005E14A0(a1, v50, v30);
    sub_10000CEDC(v50, v50[1]);
    sub_100320214(a1 + 360, v30);
  }

  if (sub_1000DB468(a1 + 360))
  {
    sub_100320260(a1 + 360, 0);
    sub_100320214(a1 + 360, v30);
    if ((v64 - 1) <= 2)
    {
      sub_100320278(a1 + 360, 1);
      operator new();
    }

    sub_10000801C(v71);
    j__usleep(0x1D4C0u);
    sub_100007FB8(v71);
    sub_100320270(a1 + 360, 0);
  }

  else if (HIBYTE(v66) == 1)
  {
    sub_100320214(a1 + 360, 1);
    sub_100320260(a1 + 360, 1);
    LOBYTE(v19) = v19 & 0xFE;
    v63 = v19;
    v64 = 0;
    sub_1000DACBC(a1 + 360, 0);
    sub_1000D88F8(v49, a1 + 824);
    sub_1005E1684(a1, v49, sub_1005E1864);
    sub_10000CEDC(v49, v49[1]);
  }

  v32 = sub_1000DAD9C(a1 + 360, 1);
  v33 = (v19 & 4) == 0 && v32;
  if (v33 || ((v34 = sub_1000DAD9C(a1 + 360, 2), (v19 & 8) == 0) ? (v35 = v34) : (v35 = 0), v35))
  {
    sub_100320288(a1 + 360);
  }

  else
  {
    sub_1000DAD94(a1 + 360, 0);
  }

  v74[0] = 0;
  sub_1000216B4(v74);
  sub_1000D885C((v30 | HIBYTE(v66)) & 1, v64, v65);
  sub_100022214(v74);
  if ((v19 & 4) != 0)
  {
    sub_1000D88F8(v48, a1 + 824);
    sub_1005E1BB8(a1, v48, v64 | (v65 << 8) | 0x10000);
    sub_10000CEDC(v48, v48[1]);
    if ((v30 & 1) == 0 && !sub_100320330(a1 + 360))
    {
      sub_1000DAA18(v47);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&v46, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
      }

      else
      {
        v46 = __src;
      }

      sub_1003202D8(a1 + 360, v47, &v46, 1);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      sub_1000D8E64(v47);
      sub_1005E1DA4(a1);
    }
  }

  else
  {
    if ((v19 & 8) != 0)
    {
      if (sub_100320330(a1 + 360))
      {
        goto LABEL_135;
      }

      sub_1000DAA18(v45);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__dst, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __src;
      }

      sub_1003202D8(a1 + 360, v45, &__dst, 2);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_1000D8E64(v45);
      sub_1005E1F90(a1);
      sub_1000D88F8(v43, a1 + 824);
      v36 = v43;
      sub_1005E1BB8(a1, v43, v64 | (v65 << 8));
      goto LABEL_130;
    }

    if (v19)
    {
      sub_1000D88F8(v42, a1 + 824);
      v36 = v42;
      sub_1000D9440(a1, v42, (v70 << 16) | ((-991146299 * ((v61 - v60) >> 3) == 1) << 24) | (v65 << 8) | v64);
      goto LABEL_130;
    }

    if ((v19 & 2) != 0)
    {
      sub_1000D88F8(v41, a1 + 824);
      v36 = v41;
      sub_1005E1BB8(a1, v41, v64 | (v65 << 8) | ((-991146299 * ((v61 - v60) >> 3) == 1) << 16));
      goto LABEL_130;
    }

    if (v30 && !v64)
    {
      sub_1000D88F8(v40, a1 + 824);
      v36 = v40;
      sub_1000D9440(a1, v40, (v65 << 8) | (v70 << 16) | v64 | 0x1000000);
LABEL_130:
      sub_10000CEDC(v36, v36[1]);
      goto LABEL_135;
    }

    if (!v30 && !v64)
    {
      sub_1000D88F8(v39, a1 + 824);
      v36 = v39;
      sub_1000DB284(a1, v39, v64);
      goto LABEL_130;
    }
  }

LABEL_135:
  v37 = sub_10002249C(v74);
  *v74 = &v54;
  sub_1000D6BD4(v37);
  *v74 = &v57;
  sub_1000D6BD4(v74);
  *v74 = &v60;
  sub_1000D6BD4(v74);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  sub_1000D8E64(v68);
  sub_1000088CC(v71);
}

void sub_1000D7F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_10000CEDC(&a12, a13);
  sub_10002249C((v70 - 176));
  *(v70 - 176) = &a63;
  sub_1000D6BD4((v70 - 176));
  *(v70 - 176) = &a66;
  sub_1000D6BD4((v70 - 176));
  *(v70 - 176) = &a69;
  sub_1000D6BD4((v70 - 176));
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  sub_1000D8E64(&STACK[0x220]);
  sub_1000088CC(v70 - 224);

  _Unwind_Resume(a1);
}

void sub_1000D8154(uint64_t a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, BOOL *a5, _BYTE *a6, int *a7, int *a8, std::string *a9, std::string *a10)
{
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_1000D72E4(a1 + 360, &v55);
  v60[0] = 0;
  v60[1] = 0;
  v12 = [[NSUUID alloc] initWithUUIDBytes:v60];
  *a4 = 0;
  v13 = *a2;
  if (*a2 != a2[1])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *v13;
      if ([v17 isEqual:v12])
      {
        v18 = *(v13 + 16) == 7;

        if (!v18)
        {
          v19 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA754(v13, __p);
            v20 = __p;
            if (v54 < 0)
            {
              v20 = __p[0];
            }

            *buf = 136315138;
            v59 = v20;
            v21 = v19;
            v22 = "Invalid call status - empty identifier is reserved for virtual calls: %s";
LABEL_61:
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
            if (v54 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_63;
          }

          goto LABEL_63;
        }
      }

      else
      {
      }

      v23 = *(v13 + 16);
      if (v23 <= 3)
      {
        switch(v23)
        {
          case 1:
            v27 = *v13;
            v28 = sub_1000D8B24(&v55, v27);

            ++v16;
            if (v56 == v28 || *(v28 + 4) != 2)
            {
              goto LABEL_63;
            }

LABEL_45:
            *a6 = 1;
            goto LABEL_63;
          case 2:
            v33 = *v13;
            v34 = sub_1000D8B24(&v55, v33);

            ++v15;
            if (v56 == v34 || *(v34 + 4) != 1)
            {
              goto LABEL_63;
            }

            if (sub_1003203F8(a1 + 360))
            {
              sub_1000D6C30(a1 + 360, 0);
              v46 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
              {
                LOWORD(__p[0]) = 0;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "We're actually dialing a call and putting another one on hold. This is TC_AG_TWC_BV_05_I!", __p, 2u);
              }

              goto LABEL_80;
            }

            goto LABEL_45;
          case 3:
            ++v14;
            if (*(v13 + 12) == 1)
            {
              *a4 |= 1u;
              sub_1000D6C30(a1 + 360, 0);
            }

            else
            {
              v40 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                sub_1000DA754(v13, __p);
                v41 = __p;
                if (v54 < 0)
                {
                  v41 = __p[0];
                }

                *buf = 136315138;
                v59 = v41;
                v21 = v40;
                v22 = "Invalid call status - dialed calls should be outgoing only: %s";
                goto LABEL_61;
              }
            }

            goto LABEL_63;
        }

LABEL_30:
        v29 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v13, __p);
          v30 = __p;
          if (v54 < 0)
          {
            v30 = __p[0];
          }

          *buf = 136315138;
          v59 = v30;
          v21 = v29;
          v22 = "Invalid call status - unknown type: %s";
          goto LABEL_61;
        }

        goto LABEL_63;
      }

      if (v23 > 5)
      {
        if (v23 == 6)
        {
          if ((*(v13 + 12) & 1) == 0)
          {
            v37 = 8;
LABEL_52:
            *a4 |= v37;
            sub_1000DA184(a9, v13 + 24);
            std::string::operator=(a10, (v13 + 80));
            goto LABEL_63;
          }

          v31 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA754(v13, __p);
            v32 = __p;
            if (v54 < 0)
            {
              v32 = __p[0];
            }

            *buf = 136315138;
            v59 = v32;
            v21 = v31;
            v22 = "Invalid call status - waiting calls should be incoming only: %s";
            goto LABEL_61;
          }
        }

        else
        {
          if (v23 != 7)
          {
            goto LABEL_30;
          }

          if (*(v13 + 12) == 1)
          {
            *a3 = 1;
            v26 = *a4 | 1;
LABEL_36:
            *a4 = v26;
            goto LABEL_63;
          }

          v38 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA754(v13, __p);
            v39 = __p;
            if (v54 < 0)
            {
              v39 = __p[0];
            }

            *buf = 136315138;
            v59 = v39;
            v21 = v38;
            v22 = "Invalid call status - visualVoicemail calls should be outgoing only: %s";
            goto LABEL_61;
          }
        }
      }

      else if (v23 == 4)
      {
        ++v14;
        if (*(v13 + 12) == 1)
        {
          v26 = *a4 | 2;
          goto LABEL_36;
        }

        v35 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v13, __p);
          v36 = __p;
          if (v54 < 0)
          {
            v36 = __p[0];
          }

          *buf = 136315138;
          v59 = v36;
          v21 = v35;
          v22 = "Invalid call status - alerting calls should be outgoing only: %s";
          goto LABEL_61;
        }
      }

      else
      {
        if (*(v13 + 12) != 1)
        {
          v37 = 4;
          goto LABEL_52;
        }

        v24 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v13, __p);
          v25 = __p;
          if (v54 < 0)
          {
            v25 = __p[0];
          }

          *buf = 136315138;
          v59 = v25;
          v21 = v24;
          v22 = "Invalid call status - found incoming call tagged as outgoing: %s";
          goto LABEL_61;
        }
      }

LABEL_63:
      v13 += 104;
      if (v13 == a2[1])
      {
        v42 = v16 > 0;
        if (v14 > 0 || v16 > 0)
        {
          v44 = 1;
        }

        else
        {
          v44 = 2;
        }

        if (v15 > 0)
        {
          v42 = 1;
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_74;
      }
    }
  }

  v44 = 0;
  v42 = 0;
LABEL_74:
  *a7 = v44;
  *a5 = v42;
  if ((*a4 & 0xC) != 0)
  {
    v45 = 1;
  }

  else if ((*a4 & 1) != 0 || *a3 == 1)
  {
    v45 = 2;
  }

  else
  {
    if ((*a4 & 2) == 0)
    {
      goto LABEL_80;
    }

    v45 = 3;
  }

  *a8 = v45;
LABEL_80:

  __p[0] = &v55;
  sub_1000D6BD4(__p);
}

void sub_1000D87CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, char a22)
{
  a19 = &a22;
  sub_1000D6BD4(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8844(uint64_t a1)
{
  v1 = *(a1 + 32);
  atomic_store(*(a1 + 40), (v1 + 545));
  return sub_1000D92C8(v1);
}

uint64_t sub_1000D885C(char a1, unsigned int a2, unsigned int a3)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  result = 101;
  if (a2 <= 4 && a3 <= 2)
  {
    result = 0;
    v7 = qword_100B5EE08;
    *(qword_100B5EE08 + 1642) = a1;
    *(v7 + 1643) = a2;
    *(v7 + 1644) = a3;
  }

  return result;
}

void *sub_1000D88F8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000DB478(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1000D8984(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1000DA268(a1);
    if (a4 <= 0x276276276276276)
    {
      v8 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v9 = 0x276276276276276;
      }

      else
      {
        v9 = v8;
      }

      sub_1000DA9C8(a1, v9);
    }

    sub_1000C7698();
  }

  v10 = a1[1] - v7;
  if (0x4EC4EC4EC4EC4EC5 * (v10 >> 3) >= a4)
  {
    sub_1000D6B48(&v17, a2, a3, v7);
    sub_1000DA2B4(a1, v15);
  }

  else
  {
    v11 = a2 + v10;
    sub_1000D6B48(&v16, a2, a2 + v10, v7);
    if (v11 == a3)
    {
      v12 = a1[1];
    }

    else
    {
      v12 = a1[1];
      v13 = v12;
      do
      {
        v14 = sub_1000D8BC0(v13, v11);
        v11 += 104;
        v13 = v14 + 104;
        v12 += 104;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

id *sub_1000D8B24(id **a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v4 = *a1;
    while (1)
    {
      v5 = *v4;
      v6 = [v3 isEqual:v5];

      if (v6)
      {
        break;
      }

      v4 += 13;
      if (v4 == a1[1])
      {
        v4 = a1[1];
        break;
      }
    }
  }

  return v4;
}

uint64_t sub_1000D8BC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_1000DAA18((a1 + 24));
  if (*(a2 + 103) < 0)
  {
    sub_100008904((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v4 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v4;
  }

  return a1;
}

void sub_1000D8C38(_Unwind_Exception *a1)
{
  sub_1000D8E64(v1 + 3);

  _Unwind_Resume(a1);
}

void **sub_1000D8C5C(void **a1)
{
  sub_1000DA70C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1000D8C90(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a1 != a2)
  {
    sub_1000D8984(a1, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }

  return a1;
}

void sub_1000D8CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D6BD4(va);
  _Unwind_Resume(a1);
}

void sub_1000D8D10(std::string *__str)
{
  if ((__str[1].__r_.__value_.__s.__data_[0] & 0x70) == 0x10)
  {
    sub_100007E30(&__p, "+");
    v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v2 >= 0)
    {
      v3 = __str;
    }

    else
    {
      v3 = __str->__r_.__value_.__r.__words[0];
    }

    if (v2 >= 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    v5 = std::string::append(&__p, v3, size);
    v6 = v5->__r_.__value_.__r.__words[0];
    v11[0] = v5->__r_.__value_.__l.__size_;
    *(v11 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (__str[2].__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__str[1].__r_.__value_.__l.__size_);
    }

    v8 = v11[0];
    __str[1].__r_.__value_.__l.__size_ = v6;
    __str[1].__r_.__value_.__r.__words[2] = v8;
    *(&__str[1].__r_.__value_.__r.__words[2] + 7) = *(v11 + 7);
    __str[2].__r_.__value_.__s.__data_[7] = v7;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = (__str + 32);

    std::string::operator=(v9, __str);
  }
}

void sub_1000D8E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000D8E68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v21 = v6 + 1;
  v22 = v5;
  __chkstk_darwin();
  v8 = &v18 - v7;
  bzero(&v18 - v7, v6 + 1);
  v19 = v6 + 1;
  v20 = v8;
  v9 = iconv_open("UTF-8//IGNORE", "UTF-8");
  if (v9 == -1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083D100();
    }
  }

  else
  {
    v10 = v9;
    v11 = iconv(v9, &v22, &v21, &v20, &v19);
    if (iconv_close(v10))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10083CF70();
      }
    }

    else
    {
      if (v11 != -1)
      {
        return sub_100007E30(a2, v8);
      }

      if (*__error() == 92 || *__error() == 22)
      {
        v13 = (v22 - v5);
        if (v22 - v5 >= 0 && v13 <= v6)
        {
          std::string::copy(a1, v8, v22 - v5, 0);
          v13[v8] = 0;
          return sub_100007E30(a2, v8);
        }

        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10083D0BC(v14);
        }
      }

      else
      {
        v15 = *__error();
        v16 = qword_100BCE8D8;
        v17 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
        if (v15 == 7)
        {
          if (v17)
          {
            sub_10083D078(v16);
          }
        }

        else if (v17)
        {
          sub_10083CFF4();
        }
      }
    }
  }

  v8 = "";
  return sub_100007E30(a2, v8);
}

uint64_t sub_1000D90A8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1000D90FC(a1, a2);
  }

  else
  {
    sub_1000D8BC0(a1[1], a2);
    result = v3 + 104;
    a1[1] = v3 + 104;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1000D90FC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1000C7698();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000D6D2C(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  sub_1000D8BC0(104 * v2, a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = 104 * v2 + *a1 - v7;
  sub_1000D6A9C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000D8C5C(&v13);
  return v12;
}

void sub_1000D9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D8C5C(va);
  _Unwind_Resume(a1);
}

void sub_1000D9244(uint64_t a1, char a2)
{
  v4 = sub_1000DAB84();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D8844;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1000D92C8(uint64_t result)
{
  v1 = atomic_load((result + 545));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    result = sub_1000C0348(*(result + 552));
    if (result)
    {
      v3 = *(v2 + 352);
      if (v3)
      {
        v4 = *(v2 + 552);
        v5 = v2 + 352;
        do
        {
          v6 = *(v3 + 32);
          v7 = v6 >= v4;
          v8 = v6 < v4;
          if (v7)
          {
            v5 = v3;
          }

          v3 = *(v3 + 8 * v8);
        }

        while (v3);
        if (v5 != v2 + 352 && v4 >= *(v5 + 32))
        {
          v9 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v4, __p);
            if (v12 >= 0)
            {
              v10 = __p;
            }

            else
            {
              v10 = __p[0];
            }

            *buf = 136446210;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "An AVRCP Play command was pending for device %{public}s, sending to MediaRemote", buf, 0xCu);
            if (v12 < 0)
            {
              operator delete(__p[0]);
            }

            v4 = *(v2 + 552);
          }

          result = (*(**(*(v5 + 40) + 8) + 8))(*(*(v5 + 40) + 8), v4, 501);
        }
      }

      *(v2 + 552) = 0;
    }
  }

  return result;
}

void sub_1000D9440(uint64_t a1, void *a2, int a3)
{
  v17 = a3;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EAA6C(&v17, v3, v5[5]);
LABEL_16:
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

void sub_1000D9624(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

unint64_t sub_1000D96F0(uint64_t a1, uint64_t a2)
{
  result = [*a1 isEqual:*a2];
  if (result)
  {
    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13) || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    result = sub_1000DA1D4((a1 + 24), (a2 + 24));
    if (result)
    {
      result = sub_1000DA948((a1 + 80), (a2 + 80));
      if (result)
      {
        if (*(a1 + 14) == *(a2 + 14))
        {
          return *(a1 + 15) == *(a2 + 15);
        }

        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000D97AC(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v3 = *a2;
  v5 = *a1;
  v4 = a1[1];
  if (-991146299 * ((a2[1] - *a2) >> 3) != -991146299 * ((v4 - *a1) >> 3))
  {
    return 0;
  }

  if (v5 == v4)
  {
    return 1;
  }

  do
  {
    result = sub_1000D96F0(v5, v3);
    if (!result)
    {
      break;
    }

    v5 += 104;
    v3 += 104;
  }

  while (v5 != a1[1]);
  return result;
}

unint64_t sub_1000D9854(uint64_t a1, uint64_t *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1);
  v4 = (a1 + 64);
  v5 = sub_1000D97AC((a1 + 64), a2);
  v6 = v5;
  if (v4 == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    sub_1000D8984(v4, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }

  sub_1000088CC(v9);
  return v6;
}

void *sub_1000D9900(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    sub_100008904(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    __dst[6] = *(a2 + 6);
    *(__dst + 2) = v5;
  }

  return __dst;
}

void sub_1000D9980(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D999C()
{
  if (qword_100B6EFF8 != -1)
  {
    sub_100843E90();
  }

  return qword_100B6EFF0;
}

void sub_1000D9FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49)
{
  a49 = &a32;
  sub_1000D6BD4(&a49);
  a49 = &a35;
  sub_1000D6BD4(&a49);

  _Unwind_Resume(a1);
}

uint64_t sub_1000DA114(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1000D6A54(a1 + 24);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;

  return a1;
}

std::string *sub_1000DA184(std::string *this, uint64_t a2)
{
  if (a2 != this)
  {
    std::string::operator=(this, a2);
    this[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    std::string::operator=((this + 32), (a2 + 32));
  }

  return this;
}

BOOL sub_1000DA1D4(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_1000DA268(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000DA2B4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_1000DA2A8(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1000DA2B4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    sub_1000D8E64(i - 80);
  }

  *(a1 + 8) = a2;
}

void sub_1000DA320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'call status changed' notification to telephony listeners", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D6EA4;
  v6[3] = &unk_100B09A10;
  v7 = v3;
  v5 = v3;
  sub_1000D9624(a1 + 24, v6);
}

BOOL sub_1000DA424(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  v3 = *a2;
  v5 = *a1;
  v4 = a1[1];
  if (-991146299 * ((a2[1] - *a2) >> 3) != -991146299 * ((v4 - *a1) >> 3))
  {
    return 1;
  }

  if (v5 == v4)
  {
    return 0;
  }

  do
  {
    result = sub_1006EF0CC(v5, v3);
    if (result)
    {
      break;
    }

    v5 += 104;
    v3 += 104;
  }

  while (v5 != a1[1]);
  return result;
}

std::string *sub_1000DA4D4(std::string *a1, _BYTE *a2)
{
  v4 = sub_100007E30(a1, "");
  v4[1].__r_.__value_.__s.__data_[0] = -127;
  v4[1].__r_.__value_.__l.__size_ = 0;
  v4[1].__r_.__value_.__r.__words[2] = 0;
  v4[2].__r_.__value_.__r.__words[0] = 0;
  sub_1000DA558(v4, a2);
  sub_1000D8D10(a1);
  return a1;
}

void sub_1000DA534(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  sub_100865A24(v1);
  _Unwind_Resume(a1);
}

void sub_1000DA558(std::string *this, _BYTE *a2)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v3 = a2;
  if (*a2 == 43)
  {
    this[1].__r_.__value_.__s.__data_[0] = -111;
    v3 = a2 + 1;
  }

  else
  {
    if (!*a2)
    {
LABEL_4:
      std::string::assign(this, "");
      this[1].__r_.__value_.__s.__data_[0] = -127;
      return;
    }

    this[1].__r_.__value_.__s.__data_[0] = -127;
  }

  std::string::assign(this, "");
  LOBYTE(v4) = *v3;
  if (*v3)
  {
    v5 = v3 + 1;
    do
    {
      if ((v4 & 0x80) != 0)
      {
        if (!__maskrune(v4, 0x100uLL))
        {
LABEL_14:
          if ((_DefaultRuneLocale.__runetype[v4] & 0x400) == 0 && (v4 > 0x3Fu || ((1 << v4) & 0x88001C0800000000) == 0))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v4] & 0x100) == 0)
      {
        goto LABEL_14;
      }

      v6 = __toupper(v4);
      if (v6 > 0x4Fu)
      {
        if (v6 < 0x57u)
        {
          v7 = 56;
        }

        else
        {
          v7 = 57;
        }

        if (v6 >= 0x54u)
        {
          LOBYTE(v4) = v7;
        }

        else
        {
          LOBYTE(v4) = 55;
        }
      }

      else
      {
        v4 = (((86 * (v6 - 65)) >> 15) & 1) + ((86 * (v6 - 65)) >> 8) + 50;
      }

LABEL_24:
      std::string::push_back(this, v4);
LABEL_25:
      v8 = *v5++;
      LOBYTE(v4) = v8;
    }

    while (v8);
  }
}

uint64_t sub_1000DA6C8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000DA70C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 104;
    sub_1006EF168(v4, i - 104);
  }
}

_BYTE *sub_1000DA754@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__str = 0u;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = __p;
  sub_1000D6B20((a1 + 24), __p);
  if (v22 < 0)
  {
    v6 = __p[0];
  }

  v7 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v7 = *v7;
  }

  v8 = *(a1 + 16) - 1;
  if (v8 > 6)
  {
    v9 = "unknown";
  }

  else
  {
    v9 = off_100B010A0[v8];
  }

  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *(a1 + 15);
  v13 = [*a1 UUIDString];
  v14 = v13;
  v15 = [v13 UTF8String];
  v16 = "";
  v17 = " (CallScreening)";
  if (!v12)
  {
    v17 = "";
  }

  v18 = " (Expanse)";
  if (!v11)
  {
    v18 = "";
  }

  if (v10)
  {
    v16 = ", conf";
  }

  v19 = "Incoming from";
  if (v5)
  {
    v19 = "Outgoing to";
  }

  snprintf(__str, 0x100uLL, "[#%d: %s %s %s (%s%s%s%s ID:%s)]", v4, v19, v6, v7, v9, v16, v18, v17, v15);

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100007E30(a2, __str);
}

void sub_1000DA918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000DA948(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_1000DA9C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1000D6D2C(a1, a2);
  }

  sub_1000C7698();
}

_BYTE *sub_1000DAA28(_BYTE *a1)
{
  v2 = sub_100007E30(a1, "");
  v2[24] = -127;
  sub_100007E30(v2 + 32, "");
  return a1;
}

void sub_1000DAA70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DAA8C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  sub_1000DA9C4(a2);
  return sub_1000088CC(v4);
}

_BYTE *sub_1000DAB24@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 3)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_100AEB2E0[v4];
  }

  return sub_100007E30(a2, v5);
}

_BYTE *sub_1000DAB54@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 2)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_100AEB2C8[v4];
  }

  return sub_100007E30(a2, v5);
}

uint64_t sub_1000DAB84()
{
  if (qword_100B6F008 != -1)
  {
    sub_100843EA4();
  }

  return qword_100B6F000;
}

uint64_t sub_1000DABBC(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000E2140(v5, 12))
    {
      v4 = (v4 + sub_1000C0348(v5));
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_8:
    v8 = v2;
    operator delete(v2);
  }

LABEL_9:
  sub_1000088CC(v10);
  return v4;
}

void sub_1000DAC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DACBC(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 140) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1000DAD0C(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 64) != a2)
  {
    sub_1000D8984((a1 + 64), *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }

  return sub_1000088CC(v5);
}

void sub_1000DADAC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 608) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1000DAE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1000DAE4C(uint64_t a1, int a2, unsigned int a3)
{
  v22 = a3;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 528);
  v20 = 0;
  *buf = &v22;
  *(sub_1000DB17C(a1 + 592, &v22) + 8) = a2;
  v5 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    if (v22 > 3)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_100B00348[v22];
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Event %s is requesting to set Device Connectability Speed Scenario to %d", buf, 0x12u);
  }

  v23 = 0;
  sub_1000216B4(&v23);
  v7 = sub_1000DB24C(&v20);
  sub_100022214(&v23);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084B138();
    }
  }

  else
  {
    v8 = *(a1 + 592);
    v9 = (a1 + 600);
    v10 = a2;
    if (v8 != v9)
    {
      v10 = a2;
      do
      {
        if (*(v8 + 8) > v10)
        {
          v10 = *(v8 + 8);
        }

        v11 = v8[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != v9);
    }

    v14 = v20;
    v15 = qword_100BCE8F0;
    v16 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
    if (v14 == v10)
    {
      if (v16)
      {
        if (v22 > 3)
        {
          v17 = "unknown";
        }

        else
        {
          v17 = off_100B00348[v22];
        }

        *buf = 67109890;
        *&buf[4] = a2;
        *&buf[8] = 2080;
        *&buf[10] = v17;
        v25 = 1024;
        v26 = v10;
        v27 = 1024;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Did not set Device Connectability Speed Scenario to %d for event %s. fastestScenario: %d, Current Scenario: %d", buf, 0x1Eu);
      }
    }

    else
    {
      if (v16)
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting Device Connectability Speed Scenario: %d", buf, 8u);
      }

      sub_1000618AC(&v23);
      v18 = sub_100242F3C(sub_1005C9B54, v10);
      sub_100022214(&v23);
      if (v18 && os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
      {
        sub_10084B1AC();
      }
    }
  }

  sub_10002249C(&v23);
  return sub_1000088CC(v21);
}

void sub_1000DB14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000DB17C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000DB24C(_DWORD *a1)
{
  if (byte_100B5F760)
  {
    return 118;
  }

  if (!a1)
  {
    return 0;
  }

  result = 0;
  *a1 = dword_100B5F758;
  return result;
}

void sub_1000DB284(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v17 = a3;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EAFB4(&v17, v3, v5[5]);
LABEL_16:
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

uint64_t sub_1000DB478(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005EA344(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1000DB500(void *a1, _DWORD *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(a1);
    result = 0;
    *a2 = value;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820A10(a1);
    }

    return 3;
  }

  return result;
}

void sub_1000DB5D8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000DB664((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000DB664(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}